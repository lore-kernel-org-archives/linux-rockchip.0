From: David Wu <david.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH 2/8] configs: rockchip: Enable the ROCKCHIP_SARADC config
Date: Wed, 13 Sep 2017 18:09:33 +0800
Message-ID: <1505297379-12638-3-git-send-email-david.wu@rock-chips.com>
References: <1505297379-12638-1-git-send-email-david.wu@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1505297379-12638-1-git-send-email-david.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org, zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, p.marczak-Sze3O3UU22JBDgjK7y7TUQ@public.gmane.org, David Wu <david.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, andy.yan-TNX95d0MmH7DzftRWevZcw@public.gmane.org, chenjh-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Except for 3036 and 3228 Socs, which don't support Saradc,
enable the ROCKCHIP_SARADC config at the other Socs' defconfig.

Signed-off-by: David Wu <david.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 configs/evb-rk3288_defconfig      | 2 ++
 configs/evb-rk3328_defconfig      | 2 ++
 configs/evb-rk3399_defconfig      | 2 ++
 configs/evb-rv1108_defconfig      | 2 ++
 configs/fennec-rk3288_defconfig   | 2 ++
 configs/firefly-rk3288_defconfig  | 2 ++
 configs/firefly-rk3399_defconfig  | 2 ++
 configs/lion-rk3368_defconfig     | 2 ++
 configs/miqi-rk3288_defconfig     | 2 ++
 configs/phycore-rk3288_defconfig  | 2 ++
 configs/popmetal-rk3288_defconfig | 2 ++
 configs/puma-rk3399_defconfig     | 2 ++
 configs/sheep-rk3368_defconfig    | 2 ++
 configs/tinker-rk3288_defconfig   | 2 ++
 14 files changed, 28 insertions(+)

diff --git a/configs/evb-rk3288_defconfig b/configs/evb-rk3288_defconfig
index 5294ba9..f09b769 100644
--- a/configs/evb-rk3288_defconfig
+++ b/configs/evb-rk3288_defconfig
@@ -37,6 +37,8 @@ CONFIG_REGMAP=y
 CONFIG_SPL_REGMAP=y
 CONFIG_SYSCON=y
 CONFIG_SPL_SYSCON=y
+CONFIG_ADC=y
+CONFIG_SARADC_ROCKCHIP=y
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
 CONFIG_ROCKCHIP_GPIO=y
diff --git a/configs/evb-rk3328_defconfig b/configs/evb-rk3328_defconfig
index 7bec001..b44b029 100644
--- a/configs/evb-rk3328_defconfig
+++ b/configs/evb-rk3328_defconfig
@@ -20,6 +20,8 @@ CONFIG_CMD_TIME=y
 CONFIG_ENV_IS_IN_MMC=y
 CONFIG_REGMAP=y
 CONFIG_SYSCON=y
+CONFIG_ADC=y
+CONFIG_SARADC_ROCKCHIP=y
 CONFIG_CLK=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_MMC_DW=y
diff --git a/configs/evb-rk3399_defconfig b/configs/evb-rk3399_defconfig
index 7a0bd4a..6d0d1a0 100644
--- a/configs/evb-rk3399_defconfig
+++ b/configs/evb-rk3399_defconfig
@@ -30,6 +30,8 @@ CONFIG_REGMAP=y
 CONFIG_SPL_REGMAP=y
 CONFIG_SYSCON=y
 CONFIG_SPL_SYSCON=y
+CONFIG_ADC=y
+CONFIG_SARADC_ROCKCHIP=y
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
 CONFIG_ROCKCHIP_GPIO=y
diff --git a/configs/evb-rv1108_defconfig b/configs/evb-rv1108_defconfig
index ab4276a..3278104 100644
--- a/configs/evb-rv1108_defconfig
+++ b/configs/evb-rv1108_defconfig
@@ -13,6 +13,8 @@ CONFIG_CMD_TIME=y
 CONFIG_NET_RANDOM_ETHADDR=y
 CONFIG_REGMAP=y
 CONFIG_SYSCON=y
+CONFIG_ADC=y
+CONFIG_SARADC_ROCKCHIP=y
 CONFIG_CLK=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
diff --git a/configs/fennec-rk3288_defconfig b/configs/fennec-rk3288_defconfig
index 96a07de..913849e 100644
--- a/configs/fennec-rk3288_defconfig
+++ b/configs/fennec-rk3288_defconfig
@@ -40,6 +40,8 @@ CONFIG_SPL_REGMAP=y
 CONFIG_SYSCON=y
 CONFIG_SPL_SYSCON=y
 # CONFIG_SPL_SIMPLE_BUS is not set
+CONFIG_ADC=y
+CONFIG_SARADC_ROCKCHIP=y
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
 CONFIG_ROCKCHIP_GPIO=y
diff --git a/configs/firefly-rk3288_defconfig b/configs/firefly-rk3288_defconfig
index 82da601..75f8cdb 100644
--- a/configs/firefly-rk3288_defconfig
+++ b/configs/firefly-rk3288_defconfig
@@ -40,6 +40,8 @@ CONFIG_SPL_REGMAP=y
 CONFIG_SYSCON=y
 CONFIG_SPL_SYSCON=y
 # CONFIG_SPL_SIMPLE_BUS is not set
+CONFIG_ADC=y
+CONFIG_SARADC_ROCKCHIP=y
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
 CONFIG_ROCKCHIP_GPIO=y
diff --git a/configs/firefly-rk3399_defconfig b/configs/firefly-rk3399_defconfig
index 94b9209..e9e4324 100644
--- a/configs/firefly-rk3399_defconfig
+++ b/configs/firefly-rk3399_defconfig
@@ -30,6 +30,8 @@ CONFIG_REGMAP=y
 CONFIG_SPL_REGMAP=y
 CONFIG_SYSCON=y
 CONFIG_SPL_SYSCON=y
+CONFIG_ADC=y
+CONFIG_SARADC_ROCKCHIP=y
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
 CONFIG_ROCKCHIP_GPIO=y
diff --git a/configs/lion-rk3368_defconfig b/configs/lion-rk3368_defconfig
index 45a12a8..5ef6d4b 100644
--- a/configs/lion-rk3368_defconfig
+++ b/configs/lion-rk3368_defconfig
@@ -52,6 +52,8 @@ CONFIG_TPL_REGMAP=y
 CONFIG_SYSCON=y
 CONFIG_SPL_SYSCON=y
 CONFIG_TPL_SYSCON=y
+CONFIG_ADC=y
+CONFIG_SARADC_ROCKCHIP=y
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
 CONFIG_TPL_CLK=y
diff --git a/configs/miqi-rk3288_defconfig b/configs/miqi-rk3288_defconfig
index b0437e1..7825467 100644
--- a/configs/miqi-rk3288_defconfig
+++ b/configs/miqi-rk3288_defconfig
@@ -40,6 +40,8 @@ CONFIG_SPL_REGMAP=y
 CONFIG_SYSCON=y
 CONFIG_SPL_SYSCON=y
 # CONFIG_SPL_SIMPLE_BUS is not set
+CONFIG_ADC=y
+CONFIG_SARADC_ROCKCHIP=y
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
 CONFIG_ROCKCHIP_GPIO=y
diff --git a/configs/phycore-rk3288_defconfig b/configs/phycore-rk3288_defconfig
index 93ee353..911600d 100644
--- a/configs/phycore-rk3288_defconfig
+++ b/configs/phycore-rk3288_defconfig
@@ -42,6 +42,8 @@ CONFIG_SPL_REGMAP=y
 CONFIG_SYSCON=y
 CONFIG_SPL_SYSCON=y
 # CONFIG_SPL_SIMPLE_BUS is not set
+CONFIG_ADC=y
+CONFIG_SARADC_ROCKCHIP=y
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
 CONFIG_ROCKCHIP_GPIO=y
diff --git a/configs/popmetal-rk3288_defconfig b/configs/popmetal-rk3288_defconfig
index 5e99f9c..9f5d78d 100644
--- a/configs/popmetal-rk3288_defconfig
+++ b/configs/popmetal-rk3288_defconfig
@@ -40,6 +40,8 @@ CONFIG_SPL_REGMAP=y
 CONFIG_SYSCON=y
 CONFIG_SPL_SYSCON=y
 # CONFIG_SPL_SIMPLE_BUS is not set
+CONFIG_ADC=y
+CONFIG_SARADC_ROCKCHIP=y
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
 CONFIG_ROCKCHIP_GPIO=y
diff --git a/configs/puma-rk3399_defconfig b/configs/puma-rk3399_defconfig
index 1badf80..7929a69 100644
--- a/configs/puma-rk3399_defconfig
+++ b/configs/puma-rk3399_defconfig
@@ -41,6 +41,8 @@ CONFIG_REGMAP=y
 CONFIG_SPL_REGMAP=y
 CONFIG_SYSCON=y
 CONFIG_SPL_SYSCON=y
+CONFIG_ADC=y
+CONFIG_SARADC_ROCKCHIP=y
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
 CONFIG_ROCKCHIP_GPIO=y
diff --git a/configs/sheep-rk3368_defconfig b/configs/sheep-rk3368_defconfig
index b862a14..d4877d3 100644
--- a/configs/sheep-rk3368_defconfig
+++ b/configs/sheep-rk3368_defconfig
@@ -10,6 +10,8 @@ CONFIG_ANDROID_BOOT_IMAGE=y
 CONFIG_CMD_MMC=y
 CONFIG_REGMAP=y
 CONFIG_SYSCON=y
+CONFIG_ADC=y
+CONFIG_SARADC_ROCKCHIP=y
 CONFIG_CLK=y
 CONFIG_MMC_DW=y
 CONFIG_MMC_DW_ROCKCHIP=y
diff --git a/configs/tinker-rk3288_defconfig b/configs/tinker-rk3288_defconfig
index 00e2d81..e7eba10 100644
--- a/configs/tinker-rk3288_defconfig
+++ b/configs/tinker-rk3288_defconfig
@@ -41,6 +41,8 @@ CONFIG_SPL_REGMAP=y
 CONFIG_SYSCON=y
 CONFIG_SPL_SYSCON=y
 # CONFIG_SPL_SIMPLE_BUS is not set
+CONFIG_ADC=y
+CONFIG_SARADC_ROCKCHIP=y
 CONFIG_CLK=y
 CONFIG_SPL_CLK=y
 CONFIG_ROCKCHIP_GPIO=y
-- 
2.7.4
