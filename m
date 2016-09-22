From: Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: [PATCH] regmap: fix up the regmap lock error
Date: Thu, 22 Sep 2016 18:17:45 +0800
Message-ID: <1474539465-12487-1-git-send-email-zhangqing@rock-chips.com>
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
To: nikita.yoush-M4DtvfQ/ZS1MRgGoP+s0PdBPR1lH4CV8@public.gmane.org, cphealy-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, xxx-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, jay.xu-TNX95d0MmH7DzftRWevZcw@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

fix up the:
Regmap lock is taken in regmap_update_bits_base() and then
regcache_drop_region() tries to take it again.
which added in commit 815806e39bf6
("regmap: drop cache if the bus transfer error")

Backtrace:
[<8068ab7c>] (__schedule) from [<8068b1c4>] (schedule+0xb8/0xd0)
[<8068b10c>] (schedule) from [<8068b61c>] (schedule_preempt_disabled+0x20/0x2c)
[<8068b5fc>] (schedule_preempt_disabled) from [<8068cd18>] (__mutex_lock_slowpath+0xf8/0x180)
[<8068cc20>] (__mutex_lock_slowpath) from [<8068cde0>] (mutex_lock+0x40/0x58)
[<8068cda0>] (mutex_lock) from [<8047c440>] (regmap_lock_mutex+0x18/0x1c)
[<8047c428>] (regmap_lock_mutex) from [<8047fedc>] (regcache_drop_region+0x44/0x144)
[<8047fe98>] (regcache_drop_region) from [<8047f0a4>] (_regmap_raw_write+0x65c/0x7f0)
[<8047ea48>] (_regmap_raw_write) from [<8047f2b8>] (_regmap_bus_raw_write+0x80/0x98)
[<8047f238>] (_regmap_bus_raw_write) from [<8047dea4>] (_regmap_write+0x11c/0x16c)
[<8047dd88>] (_regmap_write) from [<8047dfa4>] (_regmap_update_bits+0xb0/0xd4)
[<8047def4>] (_regmap_update_bits) from [<8047f460>] (regmap_update_bits_base+0x60/0x84)
[<8047f400>] (regmap_update_bits_base) from [<805acecc>] (snd_soc_component_update_bits+0x40/0x5c)
[<805ace8c>] (snd_soc_component_update_bits) from [<805adec0>] (snd_soc_put_volsw+0x9c/0xf8)
[<805ade24>] (snd_soc_put_volsw) from [<8058b070>] (snd_ctl_ioctl+0x75c/0xbe8)
[<8058a914>] (snd_ctl_ioctl) from [<80209d04>] (vfs_ioctl+0x30/0x44)
[<80209cd4>] (vfs_ioctl) from [<8020a5ec>] (do_vfs_ioctl+0x7b0/0x884)
[<80209e3c>] (do_vfs_ioctl) from [<8020a704>] (SyS_ioctl+0x44/0x6c)
[<8020a6c0>] (SyS_ioctl) from [<80107900>] (ret_fast_syscall+0x0/0x3c)

Signed-off-by: Elaine Zhang <zhangqing-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
---
 drivers/base/regmap/regmap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/base/regmap/regmap.c b/drivers/base/regmap/regmap.c
index 369a4c3c933e..cf848a61e64b 100644
--- a/drivers/base/regmap/regmap.c
+++ b/drivers/base/regmap/regmap.c
@@ -1498,7 +1498,7 @@ int _regmap_raw_write(struct regmap *map, unsigned int reg,
 
 		kfree(buf);
 	} else if (ret != 0 && !map->cache_bypass && map->format.parse_val) {
-		regcache_drop_region(map, reg, reg + 1);
+		map->cache_ops->drop(map, reg, reg + 1);
 	}
 
 	trace_regmap_hw_write_done(map, reg, val_len / map->format.val_bytes);
-- 
1.9.1
