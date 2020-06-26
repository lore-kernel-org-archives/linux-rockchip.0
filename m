From: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH 1/3] media: staging: rkisp1: params: don't reference the
 vb2 buffer after calling vb2_buffer_done
Date: Fri, 26 Jun 2020 14:02:58 -0300
Message-ID: <59a3687f-b372-8a6f-ba1a-6768d45da993@collabora.com>
References: <20200625174257.22216-1-dafna.hirschfeld@collabora.com>
 <20200625174257.22216-2-dafna.hirschfeld@collabora.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200625174257.22216-2-dafna.hirschfeld@collabora.com>
Content-Language: en-US
Sender: linux-media-owner@vger.kernel.org
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>, linux-media@vger.kernel.org, laurent.pinchart@ideasonboard.com
Cc: ezequiel@collabora.com, hverkuil@xs4all.nl, kernel@collabora.com, dafna3@gmail.com, sakari.ailus@linux.intel.com, linux-rockchip@lists.infradead.org, mchehab@kernel.org, tfiga@chromium.org
List-Id: linux-rockchip.vger.kernel.org

Hi Dafna,

Thanks for your patch.

On 6/25/20 2:42 PM, Dafna Hirschfeld wrote:
> The driver should not reference the buffer pointer of vb2_buffer
> after calling 'vb2_buffer_done' on that buffer since the call passes
> the buffer to userspace.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
> ---
>  drivers/staging/media/rkisp1/rkisp1-params.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
> index 797e79de659c..762c2259b807 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-params.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-params.c
> @@ -1457,9 +1457,9 @@ static void rkisp1_params_vb2_buf_queue(struct vb2_buffer *vb)
>  		new_params = (struct rkisp1_params_cfg *)
>  			(vb2_plane_vaddr(vb, 0));
>  		vbuf->sequence = frame_sequence;
> -		vb2_buffer_done(&params_buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
>  		params->is_first_params = false;
>  		params->cur_params = *new_params;

Maybe we can remove this new_params variable entirely, and just copy directly to params->cur_params in the begining of the if statement, what do yo think?

With or without this change

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> +		vb2_buffer_done(&params_buf->vb.vb2_buf, VB2_BUF_STATE_DONE);
>  		return;>  	}
>  
> 
