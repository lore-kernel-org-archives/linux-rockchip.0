From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v2 3/4] media: staging: rkisp1: rsz: set output format to
 YUV422 if cap format is YUV444
Date: Wed, 27 May 2020 01:09:09 +0200
Message-ID: <CAHD77HkjjWMOcX3oLnzdMuzZM-_NSydStnzLLcHEFRenL23d-A@mail.gmail.com>
References: <20200515142952.20163-1-dafna.hirschfeld@collabora.com> <20200515142952.20163-4-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200515142952.20163-4-dafna.hirschfeld@collabora.com>
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Cc: Linux Media Mailing List <linux-media@vger.kernel.org>, Helen Koike <helen.koike@collabora.com>, Ezequiel Garcia <ezequiel@collabora.com>, Hans Verkuil <hverkuil@xs4all.nl>, kernel@collabora.com, Dafna Hirschfeld <dafna3@gmail.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Mauro Carvalho Chehab <mchehab@kernel.org>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>
List-Id: linux-rockchip.vger.kernel.org

On Fri, May 15, 2020 at 4:30 PM Dafna Hirschfeld
<dafna.hirschfeld@collabora.com> wrote:
>
> If the capture format is YUV444M then the memory input format
> should be YUV422, so the resizer should not change the default
> hdiv, vdiv in that case.
>
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-resizer.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/media/rkisp1/rkisp1-resizer.c b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> index 04a29af8cc92..5f9740ddd558 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-resizer.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-resizer.c
> @@ -394,10 +394,11 @@ static void rkisp1_rsz_config(struct rkisp1_resizer *rsz,
>          * (4:2:2 -> 4:2:0 for example). So the width/height of the CbCr
>          * streams should be set according to the pixel format in the capture.
>          * The resizer always gets the input as YUV422. If the capture format
> -        * is RGB then the memory input (the resizer output) should be YUV422
> -        * so we use the hdiv, vdiv of the YUV422 info in this case.
> +        * is RGB or YUV444 then the memory input (the resizer output) should
> +        * be YUV422 so we use the hdiv, vdiv of the YUV422 info in this case.
>          */
> -       if (v4l2_is_format_yuv(cap->pix.info)) {
> +       if (v4l2_is_format_yuv(cap->pix.info) &&
> +           cap->pix.info->format != V4L2_PIX_FMT_YUV444M) {
>                 src_c.width = cap->pix.info->hdiv;
>                 src_c.height = cap->pix.info->vdiv;

As pointed out in another thread, this should have been the original
size divided by the divisor and not just the latter alone.

It seems a bit suspicious to me that we don't need to upscale the
chroma planes here, because it would mean that the MI itself would be
doing some horizontal pixel doubling. The hardware documentation
doesn't really explain this, though.

Have you been able to validate that the setting without upscaling
indeed produces correct output?

Best regards,
Tomasz
