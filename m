From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH 3/5] CHROMIUM: usb: dwc2: Avoid double-reset at boot time
Date: Thu, 8 Oct 2015 10:34:49 -0700
Message-ID: <CAD=FV=VYhxNzUS5U6xM1DBvqQEO2gXmBuWqvK4M2qCg-dbY7YQ@mail.gmail.com>
References: <1444265321-16768-1-git-send-email-dianders@chromium.org>
 <1444265321-16768-4-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1444265321-16768-4-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, Greg Kroah-Hartman <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Yunzhi Li <lyz-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Wed, Oct 7, 2015 at 5:48 PM, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> wrote:
> In (usb: dwc2: reset dwc2 core before dwc2_get_hwparams()) we added an
> extra reset to the probe path for the dwc2 USB controllers.  This
> allowed proper detection of parameters even if the firmware had already
> used the USB part.
>
> Unfortunately, this extra reset is quite slow and is affecting boot
> speed.  We can avoid the double-reset by skipping the extra reset that
> would happen just after the one we added.  Logic that explains why this
> is safe:
>
> * As of the CL mentioned above, we now always call dwc2_core_reset() in
>   dwc2_driver_probe() before dwc2_hcd_init().
>
> * The only caller of dwc2_hcd_init() is dwc2_driver_probe(), so we're
>   guaranteed that dwc2_core_reset() was called before dwc2_hdc_init().
>
> * dwc2_hdc_init() is the only caller that passes an irq other than -1 to
>   dwc2_core_init().  Thus if dwc2_core_init() is called with an irq
>   other than -1 we're guaranteed that dwc2_core_reset was called before
>   dwc2_core_init().
>
> ...this allows us to remove the dwc2_core_reset() in dwc2_core_init() if
> irq is not < 0.
>
> Note that since "irq" wasn't used in the function dwc2_core_init()
> anyway and since select_phy was always set at exactly the same times we
> could avoid the reset, we remove "irq" and rename "select_phy" to
> "initial_setup" and adjust the callers accordingly.
>
> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> ---
>  drivers/usb/dwc2/core.c | 29 ++++++++++++++++++-----------
>  drivers/usb/dwc2/core.h |  2 +-
>  drivers/usb/dwc2/hcd.c  |  6 +++---
>  3 files changed, 22 insertions(+), 15 deletions(-)

Obviously I stupidly forgot to remove the "CHROMIUM" prefix on this
patch.  :(  Sorry about that.  I can repost if necessary...

-Doug
