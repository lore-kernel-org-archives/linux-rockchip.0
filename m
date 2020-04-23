From: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: [PATCH v2 3/4] media: rockchip: rga: Add support for the PX30 compatible
Date: Thu, 23 Apr 2020 22:09:36 +0200
Message-ID: <20200423200937.1039257-4-paul.kocialkowski@bootlin.com>
References: <20200423200937.1039257-1-paul.kocialkowski@bootlin.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200423200937.1039257-1-paul.kocialkowski@bootlin.com>
Sender: linux-kernel-owner@vger.kernel.org
To: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: Ezequiel Garcia <ezequiel@collabora.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hansverk@cisco.com>, justin.swartz@risingedge.co.za, Johan Jonker <jbx6244@gmail.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Paul Kocialkowski <paul.kocialkowski@bootlin.com>
List-Id: linux-rockchip.vger.kernel.org

The PX30 SoC has a RGA block, so add the associated compatible to
support it.

Signed-off-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
---
 drivers/media/platform/rockchip/rga/rga.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index 9d122429706e..4fb4615662b7 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -955,6 +955,9 @@ static const struct dev_pm_ops rga_pm = {
 };
 
 static const struct of_device_id rockchip_rga_match[] = {
+	{
+		.compatible = "rockchip,px30-rga",
+	},
 	{
 		.compatible = "rockchip,rk3288-rga",
 	},
-- 
2.26.0
