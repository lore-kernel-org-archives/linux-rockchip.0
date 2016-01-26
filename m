From: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [Bug] usb: dwc2: Add functions to set and clear force mode
Date: Tue, 26 Jan 2016 08:05:44 -0800
Message-ID: <CAD=FV=Xk4v=1QMYG9XmXh6hJLKU6i_wVakOArF1du-Z_4_+Neg@mail.gmail.com>
References: <56A7603C.1000409@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <56A7603C.1000409-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: John Youn <johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

On Tue, Jan 26, 2016 at 4:02 AM, Caesar Wang <wxt-TNX95d0MmH7DzftRWevZcw@public.gmane.org> wrote:
> Hi  John, Felipe
>
>
> I'm no familiar with usb stuff.
> then I found this patch will break usb working for rk3036 SoCs, maybe more
> SoCs.
> Says, U disk can't work on usb host.
>
> The failure log:
>
>    32.645481] usb usb2-port1: connect-debounce failed
>
>
> Tested by following branch:
> https://github.com/Caesar-github/rockchip/tree/kylin/next   (kernel:
> 4.5-rc1)
>
> Revert "usb: dwc2: Add functions to set and clear force mode" will work for
> it.
>
>
> Maybe, someone have some suggestions or ideas?

Can you check if this series helps you?

http://marc.info/?l=linux-usb&m=145255851516121&w=2

I know USB on mainline was failing pretty badly for me for rk3288
until I applied those patches, though I didn't debug it further than
just applying those patches.

-Doug
