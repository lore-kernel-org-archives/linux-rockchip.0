From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: Re: [PATCH] media: rockchip/vpu: fix a few alignments
Date: Wed, 5 Dec 2018 19:48:25 +0100
Message-ID: <45972676-265a-51ce-c9eb-ff49f8eab5bb@xs4all.nl>
References: <bcebf81255a71b34541bc00bcb505e815193f0be.1544035391.git.mchehab+samsung@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <driverdev-devel-bounces@linuxdriverproject.org>
In-Reply-To: <bcebf81255a71b34541bc00bcb505e815193f0be.1544035391.git.mchehab+samsung@kernel.org>
Content-Language: en-US
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>,
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>,
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Cc: devel@driverdev.osuosl.org, Heiko Stuebner <heiko@sntech.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Mauro Carvalho Chehab <mchehab@infradead.org>, linux-rockchip@lists.infradead.org, Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org, Linux Media Mailing List <linux-media@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On 12/05/2018 07:43 PM, Mauro Carvalho Chehab wrote:
> As reported by checkpatch.pl, some function calls have a wrong
> alignment.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> ---
>  drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c | 4 ++--
>  drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c b/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c
> index 8919151e1631..e27c10855de5 100644
> --- a/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c
> +++ b/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c
> @@ -106,8 +106,8 @@ void rk3288_vpu_jpeg_enc_run(struct rockchip_vpu_ctx *ctx)
>  	rk3288_vpu_set_src_img_ctrl(vpu, ctx);
>  	rk3288_vpu_jpeg_enc_set_buffers(vpu, ctx, src_buf);
>  	rk3288_vpu_jpeg_enc_set_qtable(vpu,
> -		rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 0),
> -		rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 1));
> +				       rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 0),
> +				       rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 1));

But now you get warnings because this is > 80 columns.

I think the 'cure' is worse than the disease.

I see this is already merged, but I don't think this patch improves readability,
which is more important than a checkpatch warning IMHO.

Regards,

	Hans

>  
>  	reg = VEPU_REG_AXI_CTRL_OUTPUT_SWAP16
>  		| VEPU_REG_AXI_CTRL_INPUT_SWAP16
> diff --git a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
> index 8afa2162bf9f..5f75e4d11d76 100644
> --- a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
> +++ b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
> @@ -137,8 +137,8 @@ void rk3399_vpu_jpeg_enc_run(struct rockchip_vpu_ctx *ctx)
>  	rk3399_vpu_set_src_img_ctrl(vpu, ctx);
>  	rk3399_vpu_jpeg_enc_set_buffers(vpu, ctx, src_buf);
>  	rk3399_vpu_jpeg_enc_set_qtable(vpu,
> -			rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 0),
> -			rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 1));
> +				       rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 0),
> +				       rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 1));
>  
>  	reg = VEPU_REG_OUTPUT_SWAP32
>  		| VEPU_REG_OUTPUT_SWAP16
> 
