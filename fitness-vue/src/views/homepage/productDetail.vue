<script setup>

</script>

<template>
  <div>
    <el-page-header @back="goBack" :content="productParamName"></el-page-header>
    <el-row class="productRow">
      <el-col :span="10" class="productColImg">
        <el-image
          style="width: 70%; height: 70%;"
          fit="fill"
          :src="requireProductImage(productDetail.productPicUrl)"
          :preview-src-list="[requireProductImage(productDetail.productPicUrl)]"
        ></el-image>
        <h3>Category: <el-tag :style="getCategoryClass(productDetail.productCategory)">{{ productDetail.productCategory}}</el-tag></h3>
      </el-col>
      <el-col :span="14" class="productColInfo">
        <el-card>
          <h1>{{ productDetail.productName }}</h1>
          <p>{{ productDetail.productDescription }}</p>
          <h2>{{ formattedPrice(getAdjustedPrice(productDetail.productPrice, this.orderForm.size)) }} </h2>
        </el-card>
        <el-row>
          <el-form ref="orderForm" :model="orderForm">
          </el-form>
          <el-input-number v-model="orderForm.num" @change="handleChange" :min="1" :max="10" label="ProductNum"></el-input-number>
          <el-button type="primary" @click="addToCart">Add to Cart</el-button>
        </el-row>

      </el-col>
    </el-row>

  </div>

</template>

<style scoped>
.productRow {
  padding: 20px;
}
.productColImg {
  justify-content: center;
  align-items: center;
}

.productColInfo > :first-child {
  background: #f3f3f3;
}

/* .el-icon-coffee-small{
  font-size: 10px;
}

.el-icon-coffee-medium{
  font-size: 12px;
}

.el-icon-coffee-large{
  font-size: 14px;
} */
</style>

<script>
import { getProductDetail } from "../../api/productMenu";
import {addCart} from "../../api/cart";
import homepage from './homepage.vue';
export default {
  data() {
    return {
      productParamName: "",
      productDetail: {
        productId: "",
        productName: "",
        productDescription: "",
        productCategory: "",
        productPicURL: "",
        productPrice: "",
        productRate: 0,
      },
      cartForm: {
        productId: "",
        productNum: "",
        userId: "",
        productName: "",
      },
      orderForm: {
        num: 0,
      },
      categoryColors: {
        "Equipments": "color: #fff; background-color: #ff3333;",
        "Lady Clothes": "color: #fff; background-color: #ffaa33;",
        "Gentleman Clothes": "color: #fff; background-color: #55aa00;",
        "Food": "color: #fff; background-color: #d28eff;",
      },
    };
  },
  computed: {

  },
  created() {
    this.productParamName = this.$route.params.productId;
    this.getProduct();
  },
  methods: {
    goBack() {
      this.$router.back();
    },
    getProduct() {
      getProductDetail("", this.productParamName)
        .then((res) => {
          if (res.data.code === 200) {
            this.productDetail = res.data.data;
            //TODO: following value should get from backend
            this.productDetail.productRate = 4.5;
          } else {
            this.$message.error(res.data.message);
          }
        })
        .catch((err) => {
          console.log(err);
        });
    },
    requireProductImage(productPicUrl) {
      try {
        // Try to require the image
        return require(`../../assets/img/products/${productPicUrl}.jpg`);
      } catch (e) {
        // If it fails, return the default image
        return require("../../assets/img/default.jpg");
      }
    },
    handleChange(val) {
      console.log(val);
    },
    getCategoryClass(category) {
      return this.categoryColors[category];
    },
    addToCart(){
      if (this.isLoggedIn()) {
        this.cartForm.userId = this.$store.state.user.id;
        this.cartForm.productId = this.productDetail.productId;
        this.cartForm.productNum = this.orderForm.num;
        // this.cartForm.productSize = this.orderForm.size;
        this.cartForm.productName = this.productDetail.productName;
        addCart(this.cartForm)
          .then((res) => {
            if (res.data.code === 200) {
              this.callGetCartNumber();
              this.$message({
                showClose: true,
                message: 'Add to cart successfully.',
                center: true,
                type: 'success'
              });
            } else {
              this.$message.error(res.data.message);
            }
          })
          .catch((err) => {
            console.log(err);
          });
      } else {
        this.$router.push({
          path: '/login',
          query: {
            redirect: this.$route.fullPath
          }
        });
        this.$message({
          type: 'info',
          message: 'Please login first.'
        });
      }
    },
    isLoggedIn() {
      // Check if the user is logged in
      if(!this.$store.state.token || this.$store.state.user === undefined || this.$store.state.user === ''
        || this.$store.state.isStaff === undefined || this.$store.state.isStaff === true ) {
        return false;
      } else {
        return true;
      }
    },
    callGetCartNumber() {
      homepage.methods.getCartNumber.call(this);
    },
    formattedPrice(price) {
      return '$'+parseFloat(price).toFixed(2);
    },
    getAdjustedPrice(price, size) {
      let adjustedPrice = parseFloat(price);
      // if (size === 'M') {
      //   adjustedPrice += 2;
      // } else if (size === 'L') {
      //   adjustedPrice += 4;
      // }
      return adjustedPrice;
    },
  }
}
</script>
