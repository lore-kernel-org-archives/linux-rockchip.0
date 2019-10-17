From: Peter Geis <pgwipeout-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: rk3328 USB3 controller
Date: Thu, 17 Oct 2019 13:11:20 -0400
Message-ID: <CAMdYzYomC-2zg6J68Y6wPyZxfkd7N5aOEbPTmQfMie596QVZRA@mail.gmail.com>
References: <CAMdYzYp9xdtb6eiUs-Tiq4jJ-jr31LTzng2o-qAbOfu_63zXVg@mail.gmail.com>
 <65610976-8cb9-c0cd-d4a7-b8951b836fd7@arm.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <65610976-8cb9-c0cd-d4a7-b8951b836fd7-5wv7dgnIgG8@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, Oct 17, 2019 at 12:35 PM Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org> wrote:
>
> On 16/10/2019 19:54, Peter Geis wrote:
> > Good Afternoon,
> >
> > Is there a particular reason why the USB3 controller on the rk3328 has
> > not been enabled?
> > It's enabled on the TeamFirefly source [0].
> > I pulled it in to my device tree and have been using a USB3 SSD as my
> > boot device for over a year now.
>
> IIRC, the issue is that it's effectively *only* usable for a boot device
> (or possibly with a fixed hub), since without the phy driver, as soon as
> the initial device is unplugged the controller can no longer detect
> anything being plugged in again.
>
> Robin.

Well that's the behavior I was seeing, but I've just pulled the driver
in and with very little tweaking it builds and loads fine.
Need to conduct usability testing but it should be good to go.

>
> >
> > If I were to submit the patch, would y'all be open to pulling it in?
> >
> > [0] https://github.com/FireflyTeam/kernel/blob/roc-rk3328-cc/arch/arm64/boot/dts/rockchip/rk3328.dtsi
> >
> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip
> >
