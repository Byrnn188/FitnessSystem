<script setup>

</script>

<template>
  <el-col>
    <el-row>
      <el-carousel :interval="4000" type="card" height="360px">
        <el-carousel-item v-for="item in 6" :key="item" class="carousel-item">
          <img :src="require(`@/assets/img/banners/${item}.jpg`)">
        </el-carousel-item>
      </el-carousel>
    </el-row>

    <el-row class="homeRow">
      <el-col :span="12" class="homeColImg">
        <el-image
          :src="requireProductImage('logo')"
        >
        </el-image>
      </el-col>
      <el-col :span="12">
        <h2 class="Title">Fitness Center</h2>
        <p>Welcome to our Fitness Center!<br/>
          With state-of-the-art equipment, expert trainers, and a variety of dynamic classes, we cater to all fitness levels. 
          Whether you're looking to build strength, improve endurance, or simply de-stress, we have everything you need to reach your goals. 
         <br/> <br/> Join our supportive community and embark on a journey to a healthier, happier you. Your fitness journey starts here!
          </p>
      </el-col>
    </el-row>
  </el-col>
</template>

<style scoped>
.el-carousel__item h3 {
  color: #475669;
  font-size: 14px;
  opacity: 0.75;
  line-height: 200px;
  margin: 0;
}

.el-carousel__item:nth-child(2n) {
  background-color: #fbfbfb;
}

.el-carousel__item:nth-child(2n+1) {
  background-color: #ffffff;
}
.homeRow {
  padding: 20px;
  height: 400px;
  background-color: #ffffff;
}

.homeColImg {
  justify-content: center;
  align-items: center;
 margin-top: -6%;
}

.Title{
  font-family: "cooper black";
  color: #333333;
  font-size: 250%;

}
.carousel-item img {
  object-fit: cover;
  width: 100%;
  height: 100%;
}
</style>

<script>
export default {
  methods: {
    requireProductImage(picUrl) {
      try {
        // Try to require the image
        return require(`../../assets/img/banners/${picUrl}.png`);
      } catch (e) {
        // If it fails, return the default image
        return require("../../assets/img/default.jpg");
      }
    },
  }
}
</script>
