From: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v2 1/4] media: staging: rkisp1: rsz: supported formats are
 the isp's src formats, not sink formats
Date: Wed, 10 Jun 2020 21:28:00 +0200
Message-ID: <CAAFQd5BMHX_kTr4CWnjB=Lbdzmg+8uFEeW5qVKitMQZ8EkZf5g@mail.gmail.com>
References: <20200609152825.24772-1-dafna.hirschfeld@collabora.com>
 <20200609152825.24772-2-dafna.hirschfeld@collabora.com>
 <20200610171511.GD201868@chromium.org>
 <bf42a283-7aa5-330e-8a50-8bf7680cbd1f@collabora.com>
 <bb5576b1-7bfb-7911-004c-8fa1b4e1603c@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <bb5576b1-7bfb-7911-004c-8fa1b4e1603c-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane-mx.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Dafna Hirschfeld <dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: Mauro Carvalho Chehab <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Dafna Hirschfeld <dafna3-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Hans Verkuil <hverkuil-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, Sakari Ailus <sakari.ailus-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Linux Media Mailing List <linux-media-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Jun 10, 2020 at 9:00 PM Dafna Hirschfeld
<dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
>
>
>
> On 10.06.20 20:36, Dafna Hirschfeld wrote:
> >
> >
> > On 10.06.20 19:15, Tomasz Figa wrote:
> >> Hi Dafna,
> >>
> >> On Tue, Jun 09, 2020 at 05:28:22PM +0200, Dafna Hirschfeld wrote:
> >>> The rkisp1_resizer's enum callback 'rkisp1_rsz_enum_mbus_code'
> >>> calls the enum callback of the 'rkisp1_isp' on it's video sink pad.
> >>> This is a bug, the resizer should support the same formats
> >>> supported by the 'rkisp1_isp' on the source pad (not the sink pad).
> >>>
> >>> Fixes: 56e3b29f9f6b "media: staging: rkisp1: add streaming paths"
> >>>
> >>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> >>> Acked-by: Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> >>> ---
> >>>   drivers/staging/media/rkisp1/rkisp1-resizer.c | 4 ++--
> >>>   1 file changed, 2 insertions(+), 2 deletions(-)
> >>>
> >>
> >> Thank you for the patch. Please see my comments inline.
> >>
> >>> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> >>> index d049374413dc..d64c064bdb1d 100644
> >>> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> >>> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> >>> @@ -437,8 +437,8 @@ static int rkisp1_rsz_enum_mbus_code(struct v4l2_subdev *sd,
> >>>       u32 pad = code->pad;
> >>>       int ret;
> >>> -    /* supported mbus codes are the same in isp sink pad */
> >>> -    code->pad = RKISP1_ISP_PAD_SINK_VIDEO;
> >>> +    /* supported mbus codes are the same in isp video src pad */
> >>> +    code->pad = RKISP1_ISP_PAD_SOURCE_VIDEO;
> >>>       ret = v4l2_subdev_call(&rsz->rkisp1->isp.sd, pad, enum_mbus_code,
> >>>                      &dummy_cfg, code);
> >>
> >> Actually, is this really the true? AFAIR the ISP itself can only output
> >> either Bayer or YUV 4:2:2. The resizer can take YUV 4:2:2 at its input
> >> and output YUV 4:4:4, 4:2:2 and 4:2:0. Bayer capture is handled with
> >> resizer bypass mode. We haven't tested that, but if implemented, it
> >> should probably be done by exposing a link between the ISP entity and a
> >> video node directly, without the resizer involved.
> >>
> >> WDYT?
> >
> > We can also implement it that way. Only the mainpath needs
> > a direct link from the isp since selfpath does not support bayer formats.
> > It makes it easier on userspace for bayer formats since it does not have to
> > configure the resizer.
> > On the other hand if the format is YUV it has the option
> > to either use the the resizer or not.
> >
> > Thanks,
> > Dafna
>
> Anyway, this is a two line bug fix, so I think this patch can first be
> accepted and then if we choose to change the topology this can be done
> in a separate patchset.

Makes sense. Feel free to add my Reviewed-by.

Best regards,
Tomasz
