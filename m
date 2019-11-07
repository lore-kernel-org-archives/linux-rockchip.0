From: Tomasz Figa <tfiga-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Subject: Re: [PATCH v9 1/4] media: videodev2.h, v4l2-ioctl: add rkisp1 meta
 buffer format
Date: Thu, 7 Nov 2019 12:08:27 +0900
Message-ID: <CAAFQd5AtZ+MiAWVDVkE3PLj-TuwjZd=zg9ozE6P_6bNW_o0oBg@mail.gmail.com>
References: <20191106120132.6876-1-helen.koike@collabora.com>
 <20191106120132.6876-2-helen.koike@collabora.com>
 <9102bcf8-0279-7972-daff-b15aaf98804d@cisco.com>
 <28cff7ab-ef56-791e-0342-571f64cb9807@collabora.com>
 <b1a8fa60a3c8922c364a18b0583dab55660f2fb4.camel@collabora.com>
 <c3b03fc7-100d-4c16-f561-b26969d13fea@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <c3b03fc7-100d-4c16-f561-b26969d13fea-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
Cc: "eddie.cai.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org" <eddie.cai.linux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org" <kernel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, "heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org" <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, "gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org" <gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org>, "jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org" <jeffy.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "zyc-TNX95d0MmH7DzftRWevZcw@public.gmane.org" <zyc-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jacob Chen <jacob2.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "Hans Verkuil (hansverk)" <hansverk-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, "linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org" <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, "hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org" <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>, "laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org" <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>, "sakari.ailus-VuQAYsv1563Yd54FQh9/CA@public.gmane.org" <sakari.ailus-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, "zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org" <zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, "mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org" <mchehab-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Ezequiel Garcia <ezequiel-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, linux-arm-kernel-IAPFreCvJWNGWvitb5QawA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, Nov 7, 2019 at 8:26 AM Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org> wrote:
>
>
>
> On 11/6/19 11:44 AM, Ezequiel Garcia wrote:
> > Hi Hans, Helen:
> >
> > On Wed, 2019-11-06 at 09:30 -0300, Helen Koike wrote:
> >>
> >> On 11/6/19 10:22 AM, Hans Verkuil (hansverk) wrote:
> >>> On 11/6/19 1:01 PM, Helen Koike wrote:
> >>>> From: Shunqian Zheng <zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> >>>>
> >>>> Add the Rockchip ISP1 specific processing parameter format
> >>>> V4L2_META_FMT_RK_ISP1_PARAMS and metadata format
> >>>> V4L2_META_FMT_RK_ISP1_STAT_3A for 3A.
> >>>>
> >>>> Signed-off-by: Shunqian Zheng <zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> >>>> Signed-off-by: Jacob Chen <jacob2.chen-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> >>>> Acked-by: Hans Verkuil <hans.verkuil-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>
> >>>
> >>> I acked this? It is missing documentation for these new formats.
> >>
> >> I think so https://www.spinics.net/lists/linux-rockchip/msg18999.html :)
> >>
> >> I'll update the docs and the fixes you pointed below.
> >>
> >> Thanks.
> >> Helen
> >>
> >>>> [refactored for upstream]
> >>>> Signed-off-by: Helen Koike <helen.koike-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>
> >>>> Reviewed-by: Laurent Pinchart <laurent.pinchart-ryLnwIuWjnjg/C1BVhZhaw@public.gmane.org>
> >>>>
> >>>> ---
> >>>>
> >>>> Changes in v9:
> >>>> - Add reviewed-by tag from Laurent
> >>>>
> >>>> Changes in v8: None
> >>>> Changes in v7:
> >>>> - s/IPU3/RK_ISP1
> >>>>
> >>>>  drivers/media/v4l2-core/v4l2-ioctl.c | 2 ++
> >>>>  include/uapi/linux/videodev2.h       | 4 ++++
> >>>>  2 files changed, 6 insertions(+)
> >>>>
> >>>> diff --git a/drivers/media/v4l2-core/v4l2-ioctl.c b/drivers/media/v4l2-core/v4l2-ioctl.c
> >>>> index 315ac12c3e0a..ade990554caf 100644
> >>>> --- a/drivers/media/v4l2-core/v4l2-ioctl.c
> >>>> +++ b/drivers/media/v4l2-core/v4l2-ioctl.c
> >>>> @@ -1341,6 +1341,8 @@ static void v4l_fill_fmtdesc(struct v4l2_fmtdesc *fmt)
> >>>>    case V4L2_META_FMT_UVC:         descr = "UVC Payload Header Metadata"; break;
> >>>>    case V4L2_META_FMT_D4XX:        descr = "Intel D4xx UVC Metadata"; break;
> >>>>    case V4L2_META_FMT_VIVID:       descr = "Vivid Metadata"; break;
> >>>> +  case V4L2_META_FMT_RK_ISP1_PARAMS:      descr = "Rockchip ISP1 3A params"; break;
> >>>
> >>> params -> Params
> >>>
> >>>> +  case V4L2_META_FMT_RK_ISP1_STAT_3A:     descr = "Rockchip ISP1 3A statistics"; break;
> >>>
> >>> statistics -> Statistics
> >>>
> >>>>
> >>>>    default:
> >>>>            /* Compressed formats */
> >>>> diff --git a/include/uapi/linux/videodev2.h b/include/uapi/linux/videodev2.h
> >>>> index f98bbcced8ff..56798b09cd85 100644
> >>>> --- a/include/uapi/linux/videodev2.h
> >>>> +++ b/include/uapi/linux/videodev2.h
> >
> > Can we avoid touching videodev2.h, as we did for the stateless codec pixfmts?
>
> I think it should be part of the uapi, as it is the metadata format used in the video output device.
> I propose to leave it inside drivers/staging/media/rkisp1/uapi/rkisp1-config.h while the driver is in staging,
> then we expose it later with a better documentation too. Make sense?

Makes sense, as it's also what we've done for ipu3, +/- a slightly
different path:
https://elixir.bootlin.com/linux/latest/source/drivers/staging/media/ipu3/include/intel-ipu3.h#L12

We could possibly move the header to include/rockchip-isp1.h to be consistent.

Best regards,
Tomasz

>
> Thanks,
> Helen
>
> >
> > Thanks,
> > Ezequiel
> >
> >>>> @@ -762,6 +762,10 @@ struct v4l2_pix_format {
> >>>>  #define V4L2_META_FMT_D4XX        v4l2_fourcc('D', '4', 'X', 'X') /* D4XX Payload Header metadata */
> >>>>  #define V4L2_META_FMT_VIVID         v4l2_fourcc('V', 'I', 'V', 'D') /* Vivid Metadata */
> >>>>
> >>>> +/* Vendor specific - used for RK_ISP1 camera sub-system */
> >>>> +#define V4L2_META_FMT_RK_ISP1_PARAMS      v4l2_fourcc('R', 'K', '1', 'P') /* Rockchip ISP1 params */
> >>>> +#define V4L2_META_FMT_RK_ISP1_STAT_3A     v4l2_fourcc('R', 'K', '1', 'S') /* Rockchip ISP1 3A statistics */
> >>>> +
> >>>>  /* priv field value to indicates that subsequent fields are valid. */
> >>>>  #define V4L2_PIX_FMT_PRIV_MAGIC           0xfeedcafe
> >>>>
> >>>>
> >>>
> >>> Regards,
> >>>
> >>>     Hans
> >>>
> >
> >
