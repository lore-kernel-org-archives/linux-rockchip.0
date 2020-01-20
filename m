From: Justin Swartz <justin.swartz@risingedge.co.za>
Subject: [PATCH 1/4] media: rockchip/rga: add rk3228-rga to
 rockchip_rga_match[]
Date: Mon, 20 Jan 2020 19:41:54 +0000
Message-ID: <20200120194158.25357-1-justin.swartz@risingedge.co.za>
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
To: Jacob Chen <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@collabora.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, Justin Swartz <justin.swartz@risingedge.co.za>, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Add an entry to the rockchip_rga_match array for "rockchip,rk3228-rga"

Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
---
 drivers/media/platform/rockchip/rga/rga.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
index e9ff12b6b..268116cd5 100644
--- a/drivers/media/platform/rockchip/rga/rga.c
+++ b/drivers/media/platform/rockchip/rga/rga.c
@@ -956,6 +956,9 @@ static const struct dev_pm_ops rga_pm = {
 
 static const struct of_device_id rockchip_rga_match[] = {
 	{
+		.compatible = "rockchip,rk3228-rga",
+	},
+	{
 		.compatible = "rockchip,rk3288-rga",
 	},
 	{
-- 
2.11.0
