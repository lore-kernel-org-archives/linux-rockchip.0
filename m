From: Julia Lawall <Julia.Lawall@lip6.fr>
Subject: [PATCH] media: rockchip/rga: constify v4l2_m2m_ops structure
Date: Sat, 27 Oct 2018 14:30:32 +0200
Message-ID: <1540643432-25969-1-git-send-email-Julia.Lawall@lip6.fr>
Return-path: <linux-kernel-owner@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Jacob chen <jacob2.chen@rock-chips.com>
Cc: kernel-janitors@vger.kernel.org, Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

The v4l2_m2m_ops structure can be const as it is only passed to
v4l2_m2m_init whose parameter is const.

Done with the help of Coccinelle.

Signed-off-by: Julia Lawall <Julia.Lawall@lip6.fr>

---
 drivers/media/platform/rockchip/rga/rga.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 9cc9db083870..dc63c44929de 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -97,7 +97,7 @@ static irqreturn_t rga_isr(int irq, void *prv)
 	return IRQ_HANDLED;
 }
 
-static struct v4l2_m2m_ops rga_m2m_ops = {
+static const struct v4l2_m2m_ops rga_m2m_ops = {
 	.device_run = device_run,
 };
 
