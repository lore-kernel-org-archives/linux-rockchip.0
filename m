From: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Subject: Re: [PATCH] media: rockchip/vpu: fix a few alignments
Date: Wed, 5 Dec 2018 17:41:50 -0200
Message-ID: <20181205174150.00ed1912@coco.lan>
References: <bcebf81255a71b34541bc00bcb505e815193f0be.1544035391.git.mchehab+samsung@kernel.org>
 <45972676-265a-51ce-c9eb-ff49f8eab5bb@xs4all.nl>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <45972676-265a-51ce-c9eb-ff49f8eab5bb@xs4all.nl>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc: devel@driverdev.osuosl.org, Heiko Stuebner <heiko@sntech.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Mauro Carvalho Chehab <mchehab@infradead.org>, linux-rockchip@lists.infradead.org, Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org, Linux Media Mailing List <linux-media@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

Em Wed, 5 Dec 2018 19:48:25 +0100
Hans Verkuil <hverkuil-cisco@xs4all.nl> escreveu:

> On 12/05/2018 07:43 PM, Mauro Carvalho Chehab wrote:
> > As reported by checkpatch.pl, some function calls have a wrong
> > alignment.
> > 
> > Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
> > ---
> >  drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c | 4 ++--
> >  drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c | 4 ++--
> >  2 files changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c b/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c
> > index 8919151e1631..e27c10855de5 100644
> > --- a/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c
> > +++ b/drivers/staging/media/rockchip/vpu/rk3288_vpu_hw_jpeg_enc.c
> > @@ -106,8 +106,8 @@ void rk3288_vpu_jpeg_enc_run(struct rockchip_vpu_ctx *ctx)
> >  	rk3288_vpu_set_src_img_ctrl(vpu, ctx);
> >  	rk3288_vpu_jpeg_enc_set_buffers(vpu, ctx, src_buf);
> >  	rk3288_vpu_jpeg_enc_set_qtable(vpu,
> > -		rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 0),
> > -		rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 1));
> > +				       rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 0),
> > +				       rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 1));  
> 
> But now you get warnings because this is > 80 columns.
> 
> I think the 'cure' is worse than the disease.
> 
> I see this is already merged, but I don't think this patch improves readability,
> which is more important than a checkpatch warning IMHO.

IMHO, it is a way more readable if things got aligned. Very very few
people nowadays (if any) write patches directly at a 80 columns console.

Btw, speaking about 80 cols, usually your commit messages are longer
than that (the limit is actually 80 cols - 4). I keep fixing the
corresponding checkpatch.pl warnings from your patches
(when I have time) :-)

> 
> Regards,
> 
> 	Hans
> 
> >  
> >  	reg = VEPU_REG_AXI_CTRL_OUTPUT_SWAP16
> >  		| VEPU_REG_AXI_CTRL_INPUT_SWAP16
> > diff --git a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
> > index 8afa2162bf9f..5f75e4d11d76 100644
> > --- a/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
> > +++ b/drivers/staging/media/rockchip/vpu/rk3399_vpu_hw_jpeg_enc.c
> > @@ -137,8 +137,8 @@ void rk3399_vpu_jpeg_enc_run(struct rockchip_vpu_ctx *ctx)
> >  	rk3399_vpu_set_src_img_ctrl(vpu, ctx);
> >  	rk3399_vpu_jpeg_enc_set_buffers(vpu, ctx, src_buf);
> >  	rk3399_vpu_jpeg_enc_set_qtable(vpu,
> > -			rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 0),
> > -			rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 1));
> > +				       rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 0),
> > +				       rockchip_vpu_jpeg_get_qtable(&jpeg_ctx, 1));
> >  
> >  	reg = VEPU_REG_OUTPUT_SWAP32
> >  		| VEPU_REG_OUTPUT_SWAP16
> >   
> 



Thanks,
Mauro
