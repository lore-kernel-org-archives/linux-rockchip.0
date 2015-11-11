From: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH 1/4] nvmem: sunxi: trivial: fix code style
Date: Wed, 11 Nov 2015 15:34:28 +0800
Message-ID: <1447227272-1728-2-git-send-email-wxt@rock-chips.com>
References: <1447227272-1728-1-git-send-email-wxt@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1447227272-1728-1-git-send-email-wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Srinivas Kandagatla <srinivas.kandagatla-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
Cc: Jiri Kosina <trivial-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Chen-Yu Tsai <wens-jdAy2FN1RRM@public.gmane.org>, Maxime Ripard <maxime.ripard-wi1+55ScJUtKEb57/3fJTNBPR1lH4CV8@public.gmane.org>, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

this pacthset try to fix the code style for sunxi.

Signed-off-by: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---

 drivers/nvmem/sunxi_sid.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/nvmem/sunxi_sid.c b/drivers/nvmem/sunxi_sid.c
index cfa3b85..bc88b40 100644
--- a/drivers/nvmem/sunxi_sid.c
+++ b/drivers/nvmem/sunxi_sid.c
@@ -13,10 +13,8 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
  */
 
-
 #include <linux/device.h>
 #include <linux/io.h>
 #include <linux/module.h>
@@ -27,7 +25,6 @@
 #include <linux/slab.h>
 #include <linux/random.h>
 
-
 static struct nvmem_config econfig = {
 	.name = "sunxi-sid",
 	.read_only = true,
@@ -55,8 +52,8 @@ static u8 sunxi_sid_read_byte(const struct sunxi_sid *sid,
 }
 
 static int sunxi_sid_read(void *context,
-			    const void *reg, size_t reg_size,
-			    void *val, size_t val_size)
+			  const void *reg, size_t reg_size,
+			  void *val, size_t val_size)
 {
 	struct sunxi_sid *sid = context;
 	unsigned int offset = *(u32 *)reg;
@@ -130,7 +127,7 @@ static int sunxi_sid_probe(struct platform_device *pdev)
 	if (IS_ERR(nvmem))
 		return PTR_ERR(nvmem);
 
-	randomness = kzalloc(sizeof(u8) * size, GFP_KERNEL);
+	randomness = kzalloc(sizeof(u8) * (size), GFP_KERNEL);
 	if (!randomness) {
 		ret = -EINVAL;
 		goto err_unreg_nvmem;
-- 
1.9.1
