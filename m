From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 2/3] media: staging: rkisp1: rsz: change (hv)div only if
 capture format is YUV
Date: Sun, 5 Apr 2020 20:29:52 +0300
Message-ID: <20200405172952.GI5846@pendragon.ideasonboard.com>
References: <20200328105606.13660-1-dafna.hirschfeld@collabora.com>
 <20200328105606.13660-3-dafna.hirschfeld@collabora.com>
 <7445ddcb-75f5-7792-0807-47c0b0d0d54a@collabora.com>
 <711657f5-005b-fafd-6063-f8c8b61905e7@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Return-path: <linux-media-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <711657f5-005b-fafd-6063-f8c8b61905e7@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: Helen Koike <helen.koike@collabora.com>, linux-media@vger.kernel.org, ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org
List-Id: linux-rockchip.vger.kernel.org

Hi Dafna,

On Sat, Apr 04, 2020 at 02:09:20PM +0200, Dafna Hirschfeld wrote:
> On 30.03.20 22:04, Helen Koike wrote:
> > On 3/28/20 7:56 AM, Dafna Hirschfeld wrote:
> >> RGB formats in selfpath should receive input format as YUV422.
> >> The resizer input format is always YUV422 and therefore
> >> if the capture format is RGB, the resizer should not change
> >> the YUV rations.
> >>
> >> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> >> ---
> >>   drivers/staging/media/rkisp1/rkisp1-resizer.c | 14 ++++++++++++--
> >>   1 file changed, 12 insertions(+), 2 deletions(-)
> >>
> >> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> >> index 8704267a066f..5721eee29ecb 100644
> >> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> >> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> >> @@ -389,8 +389,18 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
> >>   			&rsz->rkisp1->capture_devs[rsz->id];
> >>   		const struct v4l2_format_info *pixfmt_info = cap->pix.info;
> >>   
> >> -		hdiv = pixfmt_info->hdiv;
> >> -		vdiv = pixfmt_info->vdiv;
> >> +		/*
> >> +		 * The resizer always get the input as YUV422
> >> +		 * If the capture encoding is also YUV, then the resizer should
> >> +		 * change the 4:2:2 sampling to the sampling of the capture
> >> +		 * format (4:2:2 -> 4:2:0 for example).
> >> +		 * If the capture format is RGB then the memory input should
> >> +		 * be YUV422 so we don't change the default hdiv, vdiv
> >> +		 */
> >> +		if (v4l2_is_format_yuv(pixfmt_info)) {
> > 
> > Can't this be moved with && in the outer if statement block?
> 
> Actually the outer statement is not needed at all and can be removed
> since the code return if rsz->fmt_type is RKISP1_FMT_BAYER but
> the resizer format is either bayer or yuv so there is no
> need for the "if (rsz->fmt_type == RKISP1_FMT_YUV)"

This sounds reasonable.

> >> +			hdiv = pixfmt_info->hdiv;
> >> +			vdiv = pixfmt_info->vdiv;
> >> +		}
> >>   	}
> >>   	src_c.width = src_y.width / hdiv;
> >>   	src_c.height = src_y.height / vdiv;
> >>

-- 
Regards,

Laurent Pinchart
