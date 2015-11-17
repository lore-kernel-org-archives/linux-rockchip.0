From: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v3 6/8] usb: dwc2: host: Assume all devices are on one
 single_tt hub
Date: Tue, 17 Nov 2015 13:22:55 -0800
Message-ID: <CAD=FV=UiGNb=aysw2NGPH-bOkCFvXcovNZOWzUdzR4t4AmVD-A@mail.gmail.com>
References: <1447721484-22548-1-git-send-email-dianders@chromium.org>
	<1447721484-22548-7-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1447721484-22548-7-git-send-email-dianders@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: John Youn <John.Youn@synopsys.com>, Felipe Balbi <balbi@ti.com>
Cc: Yunzhi Li <lyz@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Julius Werner <jwerner@chromium.org>, "Herrero, Gregory" <gregory.herrero@intel.com>, "Kaukab, Yousaf" <yousaf.kaukab@intel.com>, Dinh Nguyen <dinguyen@opensource.altera.com>, Alan Stern <stern@rowland.harvard.edu>, Ming Lei <ming.lei@canonical.com>, Douglas Anderson <dianders@chromium.org>, John Youn <johnyoun@synopsys.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Mon, Nov 16, 2015 at 4:51 PM, Douglas Anderson <dianders@chromium.org> wrote:
> Until we have logic to determine which devices share the same TT let's
> add logic to assume that all devices on a given dwc2 controller are on
> one single_tt hub.  This is better than the previous code that assumed
> that all devices were on one multi_tt hub, since single_tt hubs
> appear (in my experience) to be much more common and any schedule that
> would work on a single_tt hub will also work on a multi_tt hub.  This
> will prevent more than 8 total low/full speed devices to be on the bus
> at one time, but that's a reasonable restriction until we've made things
> smarter.
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
> Changes in v3:
> - Assuming single_tt is new for v3; not terribly well tested (yet).
>
> Changes in v2: None
>
>  drivers/usb/dwc2/core.h      |  1 +
>  drivers/usb/dwc2/hcd_queue.c | 40 +++++++++++++++++++++++++++++++++++++++-
>  2 files changed, 40 insertions(+), 1 deletion(-)

Just as a FYI I managed to make this a little better with
<http://crosreview.com/312981>, but not posting that yet because
Julius has pointed out some things offline that I could be doing
better (actually schedule the low speed bus properly).  I'll hopefully
post something more soon...

-Doug
