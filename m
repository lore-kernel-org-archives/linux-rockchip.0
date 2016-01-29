From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH v6 03/22] usb: dwc2: host: Set host_rx_fifo_size to 525 for
 rk3066
Date: Thu, 28 Jan 2016 18:19:54 -0800
Message-ID: <1454034013-24657-4-git-send-email-dianders@chromium.org>
References: <1454034013-24657-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1454034013-24657-1-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, balbi-l0cyMroinI0@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, stefan.wahren-eS4NqCHxEME@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org, linux-rpi-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

As documented in dwc2_calculate_dynamic_fifo(), host_rx_fifo_size should
really be:
 2 * ((Largest Packet size / 4) + 1 + 1) + n
 with n = number of host channel.

We have 9 host channels, so
 2 * ((1024/4) + 2) + 9 = 516 + 9 = 525

We've got 960 / 972 total_fifo_size on rk3288 (and presumably on
rk3066) and 525 + 128 + 256 = 909 so we're still under on both ports
even when we increment by 5.

In the future, it would be nice if dwc2_calculate_dynamic_fifo() could
handle the "too small" FIFO case and come up with something more
dynamically.  When we do that we can figure out how to allocate the
extra 48 / 60 bytes of FIFO that we're currently wasting.

NOTE: no known bugs are fixed by this patch, but it seems like a simple
fix and ought to fix someone.

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Reviewed-by: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Tested-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
---
Changes in v6:
- Back to 525 dwords, not 528.
- Add Kever's Reviewed-by.
- Add Heiko's Tested-by.

Changes in v5: None
Changes in v4:
- Set host_rx_fifo_size to 528 for rk3066 new for v4.

Changes in v3: None
Changes in v2: None

 drivers/usb/dwc2/platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platform.c
index 5008a467ce06..b277e521a311 100644
--- a/drivers/usb/dwc2/platform.c
+++ b/drivers/usb/dwc2/platform.c
@@ -126,7 +126,7 @@ static const struct dwc2_core_params params_rk3066 = {
 	.speed				= -1,
 	.enable_dynamic_fifo		= 1,
 	.en_multiple_tx_fifo		= -1,
-	.host_rx_fifo_size		= 520,	/* 520 DWORDs */
+	.host_rx_fifo_size		= 525,	/* 525 DWORDs */
 	.host_nperio_tx_fifo_size	= 128,	/* 128 DWORDs */
 	.host_perio_tx_fifo_size	= 256,	/* 256 DWORDs */
 	.max_transfer_size		= -1,
-- 
2.7.0.rc3.207.g0ac5344
