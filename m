From: Amr Bekhit <amr-X1kpDkasp4NBDgjK7y7TUQ@public.gmane.org>
Subject: [PATCH] rockchip_rk3288_efuse_read: Fix segfault in
 rockchip_rk3288_efuse_read by using readl instead of readb when reading
 REG_EFUSE_DOUT.
Date: Sat, 5 Oct 2019 10:50:44 +0300
Message-ID: <CAHmAUHKD90eibgj3JmHaJNduhrOQZUZBZixtZE+dWxR2L6Bq1Q@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

When trying to read the efuse of the RK3188 a segfault is raised when
the following line is called in rockchip_rk3288_efuse_read:

*buf++ = readb(efuse->base + REG_EFUSE_DOUT);

It appears that the problem here might be the use of readb, which I
suspect is triggering an unaligned access. Changing this to readl
resolves the issue (as is done in rockchip_rk3399_efuse_read).

From 9923a6889aa325faf842a6757c9f9bd0f0195acb Mon Sep 17 00:00:00 2001
From: Amr Bekhit <amr-X1kpDkasp4NBDgjK7y7TUQ@public.gmane.org>
Date: Sat, 5 Oct 2019 10:45:17 +0300
Subject: [PATCH] Fix segfault in rockchip_rk3288_efuse_read by using readl
 instead of readb when reading REG_EFUSE_DOUT.

Signed-off-by: Amr Bekhit <amr-X1kpDkasp4NBDgjK7y7TUQ@public.gmane.org>
---
 drivers/nvmem/rockchip-efuse.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvmem/rockchip-efuse.c b/drivers/nvmem/rockchip-efuse.c
index e4579de5d014..f680a80d81cf 100644
--- a/drivers/nvmem/rockchip-efuse.c
+++ b/drivers/nvmem/rockchip-efuse.c
@@ -78,7 +78,7 @@ static int rockchip_rk3288_efuse_read(void *context,
unsigned int offset,
  writel(readl(efuse->base + REG_EFUSE_CTRL) |
       RK3288_STROBE, efuse->base + REG_EFUSE_CTRL);
  udelay(1);
- *buf++ = readb(efuse->base + REG_EFUSE_DOUT);
+ *buf++ = readl(efuse->base + REG_EFUSE_DOUT);
  writel(readl(efuse->base + REG_EFUSE_CTRL) &
         (~RK3288_STROBE), efuse->base + REG_EFUSE_CTRL);
  udelay(1);
-- 
2.20.1
