From: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH v3 1/3] media: rkvdec: Fix .buf_prepare
Date: Tue, 5 May 2020 15:56:02 +0200
Message-ID: <CAAFQd5AWZFoPk2YTp2k8M7LvJshxw46-z+wK2VoM9EzB2CqiFA@mail.gmail.com>
References: <20200505134110.3435-1-ezequiel@collabora.com> <20200505134110.3435-2-ezequiel@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200505134110.3435-2-ezequiel@collabora.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: Linux Media Mailing List <linux-media@vger.kernel.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, kernel@collabora.com, Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, Hans Verkuil <hverkuil@xs4all.nl>, Alexandre Courbot <acourbot@chromium.org>, Jeffrey Kardatzke <jkardatzke@chromium.org>, Gustavo Padovan <gustavo.padovan@collabora.com>
List-Id: linux-rockchip.vger.kernel.org

Hi Ezequiel,

On Tue, May 5, 2020 at 3:41 PM Ezequiel Garcia <ezequiel@collabora.com> wrote:
>
> The driver should only set the payload on .buf_prepare
> if the buffer is CAPTURE type, or if an OUTPUT buffer
> has a zeroed payload.

Thanks for the patch. Just one question below.

Where does the requirement to set OUTPUT buffer bytesused to sizeimage
if the original bytesused is 0 come from?

Best regards,
Tomasz

>
> Fix it.
>
> Fixes: cd33c830448ba ("media: rkvdec: Add the rkvdec driver")
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  drivers/staging/media/rkvdec/rkvdec.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
> index 225eeca73356..4df2a248ab96 100644
> --- a/drivers/staging/media/rkvdec/rkvdec.c
> +++ b/drivers/staging/media/rkvdec/rkvdec.c
> @@ -456,7 +456,15 @@ static int rkvdec_buf_prepare(struct vb2_buffer *vb)
>                 if (vb2_plane_size(vb, i) < sizeimage)
>                         return -EINVAL;
>         }
> -       vb2_set_plane_payload(vb, 0, f->fmt.pix_mp.plane_fmt[0].sizeimage);
> +
> +       /*
> +        * Buffer's bytesused is written by the driver for CAPTURE buffers,
> +        * or if the application passed zero bytesused on an OUTPUT buffer.
> +        */
> +       if (!V4L2_TYPE_IS_OUTPUT(vq->type) ||
> +           (V4L2_TYPE_IS_OUTPUT(vq->type) && !vb2_get_plane_payload(vb, 0)))
> +               vb2_set_plane_payload(vb, 0,
> +                                     f->fmt.pix_mp.plane_fmt[0].sizeimage);
>         return 0;
>  }
>
> --
> 2.26.0.rc2
>
