From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] drm/rockchip: shutdown drm subsystem on shutdown
Date: Tue, 07 Aug 2018 18:07:31 +0200
Message-ID: <2811200.LoPo4gnUJc@phil>
References: <5B20F5F0.9090101@rock-chips.com> <1787688.I5Ssat59ga@phil>
 <CAAMcf8D8Vwgi-Amqt8ou9LbDrsRTePjCvwDXWo1JUTGTxLyn_w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAAMcf8D8Vwgi-Amqt8ou9LbDrsRTePjCvwDXWo1JUTGTxLyn_w-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Marc Zyngier <marc.zyngier-5wv7dgnIgG8@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, JeffyChen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Am Dienstag, 7. August 2018, 18:05:13 CEST schrieb Vicente Bergas:
> Hi Heiko, Jeffy, Marc,
> 
> On Tue, Aug 7, 2018 at 2:44 PM, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org> wrote:
> > Hi Vicente,
> >
> > Am Sonntag, 5. August 2018, 16:09:11 CEST schrieb Vicente Bergas:
> >> As explained by Robin Murphy:
> >> > the IOMMU shutdown disables paging, so if the VOP is still
> >> > scanning out then that will result in whatever IOVAs it was using now going
> >> > straight out onto the bus as physical addresses.
> >>
> >> Suggested-by: JeffyChen <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> >> Suggested-by: Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>
> >> Signed-off-by: Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> >> ---
> >>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 9 +++++++++
> >>  1 file changed, 9 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> >> index f814d37b1db2..00a06768edb2 100644
> >> --- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> >> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
> >> @@ -442,6 +442,14 @@ static int rockchip_drm_platform_remove(struct platform_device *pdev)
> >>       return 0;
> >>  }
> >>
> >> +static void rockchip_drm_platform_shutdown(struct platform_device *pdev)
> >> +{
> >> +     struct drm_device *drm = platform_get_drvdata(pdev);
> >> +
> >> +     if (drm)
> >> +             drm_atomic_helper_shutdown(drm);
> >
> > I tend to side with Marc's more drastic approach, especially as this one
> > should also nicely unbind the encoders used. Are you ok with us going
> > with Marc's patch or do you have concerns?
> 
> The patch i posted comes from Jeffy, as is, no modifications.
> So, if he has no concerns about it, then it is also fine for me.
> 
> >
> > Providing a Tested-by tag would also be great ;-)
> 
> OK, i'll reply to his patch with a Tested-by tag, but i was only
> aware of this issue affecting hdmi on power-off, so, the only testing
> performed was checking only this. I have done no kexec-related test.
> 
> Only one issue related to this: Marc, how can i reply to your patch
> if i was not a recipient?

You can also just post it here. Together with Sandy I'm carrying the
drm-maintainer hat, so I'm probably the one that applies either one
of the patches and can pick up a tag from here as well :-D


Heiko
