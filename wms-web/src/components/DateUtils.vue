<template>
  <div class="time-container">
    <div class="date-section">
      今天是：<span class="date">{{ nowTime }}</span>
    </div>
    <div class="time-section">
      <span class="hour">{{time.hour}}</span>
      <span class="split">:</span>
      <span class="minutes">{{time.minitus}}</span>
      <span class="split">:</span>
      <span class="seconds">{{time.seconds}}</span>
    </div>
  </div>
</template>

<script>
// 保持原有 script 内容不变
export default {
  name: "DateUtils",
  props: ["s"],
  data() {
    return {
      time: {
        hour: "",
        minitus: "",
        seconds: ""
      },
      nowTime: "",
      week: [
        "星期天", "星期一", "星期二", "星期三",
        "星期四", "星期五", "星期六"
      ]
    };
  },
  mounted() {
    this.dateTime();
  },
  methods: {
    dateTime() {
      this.timeFormate();
      setTimeout(() => {
        this.dateTime();
      }, 1000);
    },
    timeFormate() {
      const newtime = new Date();
      this.time.hour = this.getIncrease(newtime.getHours(), 2);
      this.time.minitus = this.getIncrease(newtime.getMinutes(), 2);
      this.time.seconds = this.getIncrease(newtime.getSeconds(), 2);
      this.nowTime =
          this.getIncrease(newtime.getFullYear(), 4) + "年" +
          this.getIncrease(newtime.getMonth() + 1, 2) + "月" +
          this.getIncrease(newtime.getDate(), 2) + "日 " +
          this.week[newtime.getDay()];
    },
    getIncrease(num, digit) {
      return ("0".repeat(digit) + num).slice(-digit);
    }
  }
}
</script>

<style scoped>
.time-container {
  padding: 15px;
  font-size: 18px;
  line-height: 1.4;
  /* 新增居中样式 */
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  min-height: 10vh; /* 垂直居中整个容器 */
  text-align: center; /* 文字居中 */
}

.date-section {
  margin-bottom: 8px;
}

.date {
  font-weight: 500;
}

.time-section {
  display: inline-flex;
  align-items: center;
  background: #f5f5f5;
  padding: 6px 12px;
  border-radius: 4px;
}

.split {
  animation: shark 1s step-end infinite;
  margin: 0 2px;
}

.hour,
.minutes,
.seconds {
  font-family: monospace;
  min-width: 1.2em;
}

@keyframes shark {
  0%, 100% { opacity: 1; }
  50% { opacity: 0; }
}
</style>