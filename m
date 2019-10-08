From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v2 for 5.4 3/4] media: hantro: Fix motion vectors usage condition
Date: Tue, 8 Oct 2019 19:26:39 +0900
Message-ID: <CAAFQd5AqYsUJeM5tzOY3WNFRZu74k6Yst3TpxcfB61zZtaHJDA@mail.gmail.com>
References: <20191007174505.10681-1-ezequiel@collabora.com>
 <20191007174505.10681-4-ezequiel@collabora.com> <HE1PR06MB4011204B3FC2DAABB4BD1BACAC9B0@HE1PR06MB4011.eurprd06.prod.outlook.com>
 <CAAFQd5BEPO3nicr1PzRNWoVEzsvKvv5AkqoMVh2AG7qST+bZdA@mail.gmail.com> <HE1PR06MB40111D7287970183CF6D0DD1AC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <HE1PR06MB40111D7287970183CF6D0DD1AC9A0@HE1PR06MB4011.eurprd06.prod.outlook.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Ezequiel Garcia <ezequiel@collabora.com>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "kernel@collabora.com" <kernel@collabora.com>, Nicolas Dufresne <nicolas.dufresne@collabora.com>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>, Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>, Boris Brezillon <boris.brezillon@collabora.com>, Alexandre Courbot <acourbot@chromium.org>, "fbuergisser@chromium.org" <fbuergisser@chromium.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Douglas Anderson <dianders@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, Oct 8, 2019 at 3:23 PM Jonas Karlman <jonas@kwiboo.se> wrote:
>
> On 2019-10-08 05:29, Tomasz Figa wrote:
> > Hi Jonas,
> >
> > On Tue, Oct 8, 2019 at 3:33 AM Jonas Karlman <jonas@kwiboo.se> wrote:
> >> On 2019-10-07 19:45, Ezequiel Garcia wrote:
> >>> From: Francois Buergisser <fbuergisser@chromium.org>
> >>>
> >>> The setting of the motion vectors usage and the setting of motion
> >>> vectors address are currently done under different conditions.
> >>>
> >>> When decoding pre-recorded videos, this results of leaving the motion
> >>> vectors address unset, resulting in faulty memory accesses. Fix it
> >>> by using the same condition everywhere, which matches the profiles
> >>> that support motion vectors.
> >> This does not fully match hantro sdk:
> >>
> >>   enable direct MV writing and POC tables for high/main streams.
> >>   enable it also for any "baseline" stream which have main/high tools enabled.
> >>
> >>   (sps->profile_idc > 66 && sps->constrained_set0_flag == 0) ||
> >>   sps->frame_mbs_only_flag != 1 ||
> >>   sps->chroma_format_idc != 1 ||
> >>   sps->scaling_matrix_present_flag != 0 ||
> >>   pps->entropy_coding_mode_flag != 0 ||
> >>   pps->weighted_pred_flag != 0 ||
> >>   pps->weighted_bi_pred_idc != 0 ||
> >>   pps->transform8x8_flag != 0 ||
> >>   pps->scaling_matrix_present_flag != 0
> > Thanks for double checking this. I can confirm that it's what Hantro
> > SDK does indeed.
> >
> > However, would a stream with sps->profile_idc <= 66 and those other
> > conditions met be still a compliant stream?
>
> You are correct, if a non-compliant video is having decoding problems it should probably be handled
> on userspace side (by not reporting baseline profile) and not in kernel.
> All my video samples that was having the issue fixed in this patch are now decoded correctly.
>
> >
> >> Above check is used when DIR_MV_BASE should be written.
> >> And WRITE_MVS_E is set to nal_ref_idc != 0 when above is true.
> >>
> >> I think it may be safer to always set DIR_MV_BASE and keep the existing nal_ref_idc check for WRITE_MVS_E.
> > That might have a performance penalty or some other side effects,
> > though. Otherwise Hantro SDK wouldn't have enable it conditionally.
> >
> >> (That is what I did in my "media: hantro: H264 fixes and improvements" series, v2 is incoming)
> >> Or have you found any video that is having issues in such case?
> > We've been running the code with sps->profile_idc > 66 in production
> > for 4 years and haven't seen any reports of a stream that wasn't
> > decoded correctly.
> >
> > If we decide to go with a different behavior, I'd suggest thoroughly
> > verifying the behavior on a big number of streams, including some
> > performance measurements.
>
> I agree, I would however suggest to change the if statement to the following (or similar)
> as that should be the optimal for performance reasons and match the hantro sdk.
>
> if (sps->profile_idc > 66 && dec_param->nal_ref_idc)

Sorry for my ignorance, but could you elaborate on this? What's the
meaning of nal_ref_idc? I don't see it being checked in the Hantro SDK
condition you mentioned earlier.

>
> Regards,
> Jonas
>
> >
> > Best regards,
> > Tomasz
> >
> >> Regards,
> >> Jonas
> >>
> >>> Fixes: dea0a82f3d22 ("media: hantro: Add support for H264 decoding on G1")
> >>> Signed-off-by: Francois Buergisser <fbuergisser@chromium.org>
> >>> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> >>> ---
> >>> v2:
> >>> * New patch.
> >>>
> >>>  drivers/staging/media/hantro/hantro_g1_h264_dec.c | 2 +-
> >>>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>>
> >>> diff --git a/drivers/staging/media/hantro/hantro_g1_h264_dec.c b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> >>> index 7ab534936843..c92460407613 100644
> >>> --- a/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> >>> +++ b/drivers/staging/media/hantro/hantro_g1_h264_dec.c
> >>> @@ -35,7 +35,7 @@ static void set_params(struct hantro_ctx *ctx)
> >>>       if (sps->flags & V4L2_H264_SPS_FLAG_MB_ADAPTIVE_FRAME_FIELD)
> >>>               reg |= G1_REG_DEC_CTRL0_SEQ_MBAFF_E;
> >>>       reg |= G1_REG_DEC_CTRL0_PICORD_COUNT_E;
> >>> -     if (dec_param->nal_ref_idc)
> >>> +     if (sps->profile_idc > 66)
> >>>               reg |= G1_REG_DEC_CTRL0_WRITE_MVS_E;
> >>>
> >>>       if (!(sps->flags & V4L2_H264_SPS_FLAG_FRAME_MBS_ONLY) &&
>
