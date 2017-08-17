From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH v2 3/5] rockchip: rk322x: pinctrl: using compatible name same
 with dts
Date: Thu, 17 Aug 2017 15:17:35 +0800
Message-ID: <1502954257-7256-4-git-send-email-kever.yang@rock-chips.com>
References: <1502954257-7256-1-git-send-email-kever.yang@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1502954257-7256-1-git-send-email-kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Simon Glass <sjg-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Philipp Tomsich <philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

The dts from kernel is using rk3228-pinctrl as compatible name,
need to sync with it to make the driver work.

Signed-off-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

Changes in v2:
- split this patch in two patches

 drivers/pinctrl/rockchip/pinctrl_rk322x.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pinctrl/rockchip/pinctrl_rk322x.c b/drivers/pinctrl/rockchip/pinctrl_rk322x.c
index 7aaf4b5..d9f8614 100644
--- a/drivers/pinctrl/rockchip/pinctrl_rk322x.c
+++ b/drivers/pinctrl/rockchip/pinctrl_rk322x.c
@@ -279,12 +279,12 @@ static int rk322x_pinctrl_probe(struct udevice *dev)
 }
 
 static const struct udevice_id rk322x_pinctrl_ids[] = {
-	{ .compatible = "rockchip,rk322x-pinctrl" },
+	{ .compatible = "rockchip,rk3228-pinctrl" },
 	{ }
 };
 
-U_BOOT_DRIVER(pinctrl_rk322x) = {
-	.name		= "pinctrl_rk322x",
+U_BOOT_DRIVER(pinctrl_rk3228) = {
+	.name		= "pinctrl_rk3228",
 	.id		= UCLASS_PINCTRL,
 	.of_match	= rk322x_pinctrl_ids,
 	.priv_auto_alloc_size = sizeof(struct rk322x_pinctrl_priv),
-- 
1.9.1
