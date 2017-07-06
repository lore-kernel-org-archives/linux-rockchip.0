From: "Gustavo A. R. Silva" <garsilva@embeddedor.com>
Subject: [PATCH] drm/rockchip: fix NULL check on devm_kzalloc() return value
Date: Thu, 6 Jul 2017 16:58:33 -0500
Message-ID: <20170706215833.GA25411@embeddedgus>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Yao <mark.yao@rock-chips.com>, David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, "Gustavo A. R. Silva" <garsilva@embeddedor.com>
List-Id: linux-rockchip.vger.kernel.org

The right variable to check here is port, not dp.

This issue was detected using Coccinelle and the following semantic patch:

@@
expression x;
identifier fld;
@@

* x = devm_kzalloc(...);
  ... when != x == NULL
  x->fld

Signed-off-by: Gustavo A. R. Silva <garsilva@embeddedor.com>
---
 drivers/gpu/drm/rockchip/cdn-dp-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index 14fa1f8..9b0b058 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -1195,7 +1195,7 @@ static int cdn_dp_probe(struct platform_device *pdev)
 			continue;
 
 		port = devm_kzalloc(dev, sizeof(*port), GFP_KERNEL);
-		if (!dp)
+		if (!port)
 			return -ENOMEM;
 
 		port->extcon = extcon;
-- 
2.5.0
