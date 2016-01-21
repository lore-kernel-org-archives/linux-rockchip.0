From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH v4 04/21] usb: dwc2: host: Set host_perio_tx_fifo_size to 304
 for rk3066
Date: Wed, 20 Jan 2016 21:04:15 -0800
Message-ID: <1453352672-27890-5-git-send-email-dianders@chromium.org>
References: <1453352672-27890-1-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1453352672-27890-1-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
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
Cc: gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Looking at rk3288, there are two dwc2 ports.  One has 960
total_fifo_size and the other 972.

We're currently assigning 528 + 128 + 256 = 912.  That means we're
wasting 48 words on one port and 60 words on the other.  Since we have
one settings block for both ports, let's just eat the 48 words that we
know we have and assign them to what's probably the most
latency-senstive part of the system: periodic transfers.

Presumably other rk3288 parts using the rk3066 settings also have these
extra 48 words as well.

Note: ideally we'd adjust dwc2_calculate_dynamic_fifo() to handle this
more dynamically, but until that's done hardcoding things here seems OK.

NOTE: no known use cases are improved by this patch, but in my stressful
USB tests I certainly see my periodic FIFO filling up both before and
after this change.  Presumably there are some USB configurations where
the periodic FIFO would have been filled before where it no longer is.

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
Changes in v4:
- Set host_perio_tx_fifo_size to 304 for rk3066 new for v4.

Changes in v3: None
Changes in v2: None

 drivers/usb/dwc2/platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platform.c
index b6d7666e715c..afdcdeee266d 100644
--- a/drivers/usb/dwc2/platform.c
+++ b/drivers/usb/dwc2/platform.c
@@ -128,7 +128,7 @@ static const struct dwc2_core_params params_rk3066 = {
 	.en_multiple_tx_fifo		= -1,
 	.host_rx_fifo_size		= 528,	/* 528 DWORDs */
 	.host_nperio_tx_fifo_size	= 128,	/* 128 DWORDs */
-	.host_perio_tx_fifo_size	= 256,	/* 256 DWORDs */
+	.host_perio_tx_fifo_size	= 304,	/* 304 DWORDs */
 	.max_transfer_size		= -1,
 	.max_packet_count		= -1,
 	.host_channels			= -1,
-- 
2.7.0.rc3.207.g0ac5344
