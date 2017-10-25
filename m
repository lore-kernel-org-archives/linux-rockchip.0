From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] usb: dwc2: host: Don't retry NAKed transactions right away
Date: Wed, 25 Oct 2017 16:01:43 -0700
Message-ID: <CAD=FV=UJC5d+uH7FiHvfLWZ7p1e5A5iiFMGPF6DFo0DjcY2Kxg@mail.gmail.com>
References: <20171025210857.13443-1-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20171025210857.13443-1-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: John Youn <johnyoun@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Stefan Wahren <stefan.wahren@i2se.com>, Alexandru M Stan <amstan@chromium.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Johan Hovold <johan@kernel.org>, Eric Anholt <eric@anholt.net>, Matthias Kaehlcke <mka@chromium.org>, linux-rpi-kernel@lists.infradead.org, Julius Werner <jwerner@chromium.org>, Douglas Anderson <dianders@chromium.org>, linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Wed, Oct 25, 2017 at 2:08 PM, Douglas Anderson <dianders@chromium.org> wrote:
> On rk3288-veyron devices on Chrome OS it was found that plugging in an
> Arduino-based USB device could cause the system to lockup, especially
> if the CPU Frequency was at one of the slower operating points (like
> 100 MHz / 200 MHz).
>
> Upon tracing, I found that the following was happening:
> * The USB device (full speed) was connected to a high speed hub and
>   then to the rk3288.  Thus, we were dealing with split transactions,
>   which is all handled in software on dwc2.
> * Userspace was initiating a BULK IN transfer
> * When we sent the SSPLIT (to start the split transaction), we got an
>   ACK.  Good.  Then we issued the CSPLIT.
> * When we sent the CSPLIT, we got back a NAK.  We immediately (from
>   the interrupt handler) started to retry and sent another SSPLIT.
> * The device kept NAKing our CSPLIT, so we kept ping-ponging between
>   sending a SSPLIT and a CSPLIT, each time sending from the interrupt
>   handler.
> * The handling of the interrupts was (because of the low CPU speed and
>   the inefficiency of the dwc2 interrupt handler) was actually taking
>   _longer_ than it took the other side to send the ACK/NAK.  Thus we
>   were _always_ in the USB interrupt routine.
> * The fact that USB interrupts were always going off was preventing
>   other things from happening in the system.  This included preventing
>   the system from being able to transition to a higher CPU frequency.
>
> As I understand it, there is no requirement to retry super quickly
> after a NAK, we just have to retry sometime in the future.  Thus one
> solution to the above is to just add a delay between getting a NAK and
> retrying the transmission.  If this delay is sufficiently long to get
> out of the interrupt routine then the rest of the system will be able
> to make forward progress.  Even a 25 us delay would probably be
> enough, but we'll be extra conservative and try to delay 1 ms (the
> exact amount depends on HZ and the accuracy of the jiffy and how close
> the current jiffy is to ticking, but could be as much as 20 ms or as
> little as 1 ms).
>
> Presumably adding a delay like this could impact the USB throughput,
> so we only add the delay with repeated NAKs.
>
> NOTE: Upon further testing of a pl2303 serial adapter, I found that
> this fix may help with problems there.  Specifically I found that the
> pl2303 serial adapters tend to respond with a NAK when they have
> nothing to say and thus we end with this same sequence.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>
>  drivers/usb/dwc2/core.h      |  1 +
>  drivers/usb/dwc2/hcd.c       |  7 ++++
>  drivers/usb/dwc2/hcd.h       |  9 +++++
>  drivers/usb/dwc2/hcd_intr.c  | 12 +++++++
>  drivers/usb/dwc2/hcd_queue.c | 81 +++++++++++++++++++++++++++++++++++++++++---
>  5 files changed, 106 insertions(+), 4 deletions(-)

One note is that I got some review feedback on the Chrome OS gerrit at
<http://crosreview.com/737520>.  I'll plan to spin with that feedback
tomorrow unless I hear otherwise.  Thanks!  :)

-Doug
