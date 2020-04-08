From: Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH] media: staging: rkisp1: avoid unused variable warning
Date: Wed,  8 Apr 2020 17:52:44 +0200
Message-ID: <20200408155325.2077345-1-arnd@arndb.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane-mx.org@lists.infradead.org
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Helen Koike <helen.koike@collabora.com>
Cc: devel@driverdev.osuosl.org, Eddie Cai <eddie.cai.linux@gmail.com>, Jacob Chen <cc@rock-chips.com>, Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, Heiko Stuebner <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Ezequiel Garcia <ezequiel@collabora.com>, Jacob Chen <jacob2.chen@rock-chips.com>, Jeffy Chen <jeffy.chen@rock-chips.com>, Yichong Zhong <zyc@rock-chips.com>, linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Allon Huang <allon.huang@rock-chips.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-rockchip@lists.infradead.org, Shunqian Zheng <zhengsq@rock-chips.com>, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

When compile-testing with CONFIG_OF disabled, we get a warning
about an unused variable, and about inconsistent Kconfig dependencies:

WARNING: unmet direct dependencies detected for PHY_ROCKCHIP_DPHY_RX0
  Depends on [n]: STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=m] && (ARCH_ROCKCHIP [=n] || COMPILE_TEST [=y]) && OF [=n]
  Selected by [m]:
  - VIDEO_ROCKCHIP_ISP1 [=m] && STAGING [=y] && STAGING_MEDIA [=y] && MEDIA_SUPPORT [=m] && VIDEO_V4L2 [=m] && VIDEO_V4L2_SUBDEV_API [=y] && (ARCH_ROCKCHIP [=n] || COMPILE_TEST [=y])

drivers/staging/media/rkisp1/rkisp1-dev.c: In function 'rkisp1_probe':
drivers/staging/media/rkisp1/rkisp1-dev.c:457:22: error: unused variable 'node' [-Werror=unused-variable]
  457 |  struct device_node *node = pdev->dev.of_node;

Simply open-coding the pointer dereference in the only place
the variable is used avoids the warning in all configurations,
so we can allow compile-testing as well.

Fixes: d65dd85281fb ("media: staging: rkisp1: add Rockchip ISP1 base driver")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig | 2 +-
 drivers/staging/media/rkisp1/rkisp1-dev.c           | 3 +--
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig b/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig
index bd0147624de1..dd5d4d741bdd 100644
--- a/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig
+++ b/drivers/staging/media/phy-rockchip-dphy-rx0/Kconfig
@@ -2,7 +2,7 @@
 
 config PHY_ROCKCHIP_DPHY_RX0
 	tristate "Rockchip MIPI Synopsys DPHY RX0 driver"
-	depends on (ARCH_ROCKCHIP || COMPILE_TEST) && OF
+	depends on (ARCH_ROCKCHIP && OF) || COMPILE_TEST
 	select GENERIC_PHY_MIPI_DPHY
 	select GENERIC_PHY
 	help
diff --git a/drivers/staging/media/rkisp1/rkisp1-dev.c b/drivers/staging/media/rkisp1/rkisp1-dev.c
index b1b3c058e957..5e7e797aad71 100644
--- a/drivers/staging/media/rkisp1/rkisp1-dev.c
+++ b/drivers/staging/media/rkisp1/rkisp1-dev.c
@@ -454,7 +454,6 @@ static void rkisp1_debug_init(struct rkisp1_device *rkisp1)
 
 static int rkisp1_probe(struct platform_device *pdev)
 {
-	struct device_node *node = pdev->dev.of_node;
 	const struct rkisp1_match_data *clk_data;
 	const struct of_device_id *match;
 	struct device *dev = &pdev->dev;
@@ -463,7 +462,7 @@ static int rkisp1_probe(struct platform_device *pdev)
 	unsigned int i;
 	int ret, irq;
 
-	match = of_match_node(rkisp1_of_match, node);
+	match = of_match_node(rkisp1_of_match, pdev->dev.of_node);
 	rkisp1 = devm_kzalloc(dev, sizeof(*rkisp1), GFP_KERNEL);
 	if (!rkisp1)
 		return -ENOMEM;
-- 
2.26.0
