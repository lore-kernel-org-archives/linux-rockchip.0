From: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: [PATCH v6 11/22] usb: dwc2: host: There's not really a TT for the
 root hub
Date: Thu, 28 Jan 2016 18:20:02 -0800
Message-ID: <1454034013-24657-12-git-send-email-dianders@chromium.org>
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

I find that when I plug a full speed (NOT high speed) hub into a dwc2
port and then I plug a bunch of devices into that full speed hub that
dwc2 goes bat guano crazy.  Specifically, it just spews errors like this
in the console:
  usb usb1: clear tt 1 (9043) error -22

The specific test case I used looks like this:
/:  Bus 01.Port 1: Dev 1, Class=root_hub, Driver=dwc2/1p, 480M
    |__ Port 1: Dev 17, If 0, Class=Hub, Driver=hub/4p, 12M
        |__ Port 2: Dev 19, If 0, ..., Driver=usbhid, 1.5M
        |__ Port 4: Dev 20, If 0, ..., Driver=usbhid, 12M
        |__ Port 4: Dev 20, If 1, ..., Driver=usbhid, 12M
        |__ Port 4: Dev 20, If 2, ..., Driver=usbhid, 12M

Showing VID/PID:
 Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
 Bus 001 Device 017: ID 03eb:3301 Atmel Corp. at43301 4-Port Hub
 Bus 001 Device 020: ID 045e:0745 Microsoft Corp. Nano Transceiver ...
 Bus 001 Device 019: ID 046d:c404 Logitech, Inc. TrackMan Wheel

I spent a bunch of time trying to figure out why there are errors to
begin with.  I believe that the issue may be a hardware issue where the
transceiver sometimes accidentally sends a PREAMBLE packet if you send a
packet to a full speed device right after one to a low speed device.
Luckily the USB driver retries and the second time things work OK.

In any case, things kinda seem work despite the errors, except for the
"clear tt" spew mucking up my console.  Chalk it up for a win for
retries and robust protocols.

So getting back to the "clear tt" problem, it appears that we get those
because there's not actually a TT here to clear.  It's my understanding
that when dwc2 operates in low speed or full speed mode that there's no
real TT out there.  That makes all these attempts to "clear the TT"
somewhat meaningless and also causes the spew in the log.

Let's just skip all the useless TT clears.  Eventually we should root
cause the errors, but even if we do this is still a proper fix and is
likely to avoid the "clear tt" error in the future.

Note that hooking up a Full Speed USB Audio Device (Jabra 510) to this
same hub with the keyboard / trackball shows that even audio works over
this janky connection.  As a point to note, this particular change (skip
bogus TT clears) compared to just commenting out the dev_err() in
hub_tt_work() actually produces better audio.

Note: don't ask me where I got a full speed USB hub or whether the
massive amount of dust that accumulated on it while it was in my junk
box affected its funtionality.  Just smile and nod.

Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
---
Changes in v6:
- There's not really a TT for the root hub new for v6

Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None

 drivers/usb/dwc2/hcd_intr.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/usb/dwc2/hcd_intr.c b/drivers/usb/dwc2/hcd_intr.c
index 5d25a5ec9736..fe44870f84eb 100644
--- a/drivers/usb/dwc2/hcd_intr.c
+++ b/drivers/usb/dwc2/hcd_intr.c
@@ -87,6 +87,7 @@ static void dwc2_hc_handle_tt_clear(struct dwc2_hsotg *hsotg,
 				    struct dwc2_host_chan *chan,
 				    struct dwc2_qtd *qtd)
 {
+	struct usb_device *root_hub = dwc2_hsotg_to_hcd(hsotg)->self.root_hub;
 	struct urb *usb_urb;
 
 	if (!chan->qh)
@@ -102,6 +103,15 @@ static void dwc2_hc_handle_tt_clear(struct dwc2_hsotg *hsotg,
 	if (!usb_urb || !usb_urb->dev || !usb_urb->dev->tt)
 		return;
 
+	/*
+	 * The root hub doesn't really have a TT, but Linux thinks it
+	 * does because how could you have a "high speed hub" that
+	 * directly talks directly to low speed devices without a TT?
+	 * It's all lies.  Lies, I tell you.
+	 */
+	if (usb_urb->dev->tt->hub == root_hub)
+		return;
+
 	if (qtd->urb->status != -EPIPE && qtd->urb->status != -EREMOTEIO) {
 		chan->qh->tt_buffer_dirty = 1;
 		if (usb_hub_clear_tt_buffer(usb_urb))
-- 
2.7.0.rc3.207.g0ac5344
