From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH v6 01/22] usb: dwc2: rockchip: Make the max_transfer_size automatic
Date: Thu, 28 Jan 2016 18:19:52 -0800
Message-ID: <1454034013-24657-2-git-send-email-dianders@chromium.org>
References: <1454034013-24657-1-git-send-email-dianders@chromium.org>
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1454034013-24657-1-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, balbi-l0cyMroinI0@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org
Cc: william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, stefan.wahren-eS4NqCHxEME@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rpi-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org, stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org, ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Previously we needed to set the max_transfer_size to explicitly be 65535
because the old driver would detect that our hardware could support much
bigger transfers and then would try to do them.  This wouldn't work
since the DMA alignment code couldn't support it.

Later in commit e8f8c14d9da7 ("usb: dwc2: clip max_transfer_size to
65535") upstream added support for clipping this automatically.  Since
that commit it has been OK to just use "-1" (default), but nobody
bothered to change it.

Let's change it to default now for two reasons:
- It's nice to use autodetected params.
- If we can remove the 65535 limit, we can transfer more!

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Acked-by: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Tested-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
---
Changes in v6: None
Changes in v5: None
Changes in v4:
- Add John's Acks from <https://patchwork.kernel.org/patch/7631551>

Changes in v3: None
Changes in v2: None

 drivers/usb/dwc2/platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/dwc2/platform.c b/drivers/usb/dwc2/platform.c
index 510f787434b3..5008a467ce06 100644
--- a/drivers/usb/dwc2/platform.c
+++ b/drivers/usb/dwc2/platform.c
@@ -129,7 +129,7 @@ static const struct dwc2_core_params params_rk3066 = {
 	.host_rx_fifo_size		= 520,	/* 520 DWORDs */
 	.host_nperio_tx_fifo_size	= 128,	/* 128 DWORDs */
 	.host_perio_tx_fifo_size	= 256,	/* 256 DWORDs */
-	.max_transfer_size		= 65535,
+	.max_transfer_size		= -1,
 	.max_packet_count		= -1,
 	.host_channels			= -1,
 	.phy_type			= -1,
-- 
2.7.0.rc3.207.g0ac5344

--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
