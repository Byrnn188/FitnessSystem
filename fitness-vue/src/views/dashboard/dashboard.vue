<template>
  <el-container class="home-container">

    <el-header style="margin-right: 15px; width: 100%">
      <span class="nav-logo">Gym Zone</span>
      <span class="head-title">Fitness Center Application - Dashboard</span>
      <span class="user-title">{{ this.$store.state.user.userName }}</span>
      <el-button type="danger" class="logout-btn" @click="logout">Logout</el-button>
      <el-avatar
        style="float: right;"
      > {{ this.$store.state.user.userName }} </el-avatar>

    </el-header>
    <el-container>

      <el-aside width="13%">
        <el-menu
          :default-active="$route.path"
          router
          text-color="black"
          active-text-color="red"
        >
          <el-menu-item
            v-for="(item, i) in navList"
            :key="i"
            :index="item.name"
          >
            <i :class="item.icon"></i>
            {{ item.title }}
          </el-menu-item>
        </el-menu>
      </el-aside>
      <el-main>

        <router-view></router-view>
      </el-main>
    </el-container>
  </el-container>
</template>

<script>
export default {
  name: "Home",
  data() {
    return {
      navList: [
        // { name: "/dashboard/index", title: "Home", icon: "el-icon-s-home" },
        { name: "/dashboard/user", title: "User Management",icon:"el-icon-s-custom" },
        { name: "/dashboard/product", title: "Product Management",icon:"el-icon-milk-tea" },
        { name: "/dashboard/order", title: "Order Management",icon:"el-icon-s-order" },
        { name: "/dashboard/course", title: "Course Management",icon:"el-icon-menu" },
        { name: "/dashboard/diet", title: "Diet Management",icon:"el-icon-dish" },
      ],
    };
  },
  methods: {
    logout() {
      this.$router.push({path: '/loginstaff'});
      this.$store.commit('REMOVE_INFO');
      this.$message({
        showClose: true,
        message: 'Logout successfully.',
        center: true,
        type: 'success'
      });
    }
  }
};
</script>

<style scoped>
.nav-logo {
  position: absolute;
  padding-top: -1%;
  left: 2%;
  font-size: 40px;
}

.head-title {
  position: absolute;
  padding-top: 20px;
  left: 15%;
  font-size: 20px;
  font-weight: bold;
}

.user-title {
  position: absolute;
  padding-top: 10px;
  right: 12%;
  font-size: 15px;
  font-weight: bold;
}

.logout-btn {
  margin-left: 10px;
  float: right;
}


</style>

