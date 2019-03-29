From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Subject: Re: [PATCH] media: staging: use strscpy() instead of strlcpy()
Date: Fri, 29 Mar 2019 16:30:31 +0100
Message-ID: <b76b3f81-e9c9-cc13-0b34-ce149fa7b213@xs4all.nl>
References: <e5ba9c47436888e9cc4c0cda6ca61ade31e703c0.1553873376.git.mchehab+samsung@kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <driverdev-devel-bounces@linuxdriverproject.org>
In-Reply-To: <e5ba9c47436888e9cc4c0cda6ca61ade31e703c0.1553873376.git.mchehab+samsung@kernel.org>
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
Cc: devel@driverdev.osuosl.org, YueHaibing <yuehaibing@huawei.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, Ezequiel Garcia <ezequiel@collabora.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sascha Hauer <s.hauer@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>, Mauro Carvalho Chehab <mchehab@infradead.org>, linux-rockchip@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>, Steve Longerbeam <slongerbeam@gmail.com>, Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org, Linux Media Mailing List <linux-media@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On 3/29/19 4:29 PM, Mauro Carvalho Chehab wrote:
> There are a few left overs at staging with were still using the
> deprecated strlcpy() function.
> 
> Signed-off-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>

Reviewed-by: Hans Verkuil <hverkuil-cisco@xs4all.nl>

Thanks!

	Hans

> ---
>  drivers/staging/media/imx/imx-media-dev-common.c      | 4 ++--
>  drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/media/imx/imx-media-dev-common.c b/drivers/staging/media/imx/imx-media-dev-common.c
> index 910594125889..6cd93419b81d 100644
> --- a/drivers/staging/media/imx/imx-media-dev-common.c
> +++ b/drivers/staging/media/imx/imx-media-dev-common.c
> @@ -30,7 +30,7 @@ struct imx_media_dev *imx_media_dev_init(struct device *dev)
>  
>  	dev_set_drvdata(dev, imxmd);
>  
> -	strlcpy(imxmd->md.model, "imx-media", sizeof(imxmd->md.model));
> +	strscpy(imxmd->md.model, "imx-media", sizeof(imxmd->md.model));
>  	imxmd->md.ops = &imx_media_md_ops;
>  	imxmd->md.dev = dev;
>  
> @@ -38,7 +38,7 @@ struct imx_media_dev *imx_media_dev_init(struct device *dev)
>  
>  	imxmd->v4l2_dev.mdev = &imxmd->md;
>  	imxmd->v4l2_dev.notify = imx_media_notify;
> -	strlcpy(imxmd->v4l2_dev.name, "imx-media",
> +	strscpy(imxmd->v4l2_dev.name, "imx-media",
>  		sizeof(imxmd->v4l2_dev.name));
>  
>  	media_device_init(&imxmd->md);
> diff --git a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
> index 57611464ad07..58721c46fba4 100644
> --- a/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
> +++ b/drivers/staging/media/rockchip/vpu/rockchip_vpu_drv.c
> @@ -462,7 +462,7 @@ static int rockchip_vpu_probe(struct platform_device *pdev)
>  	}
>  
>  	vpu->mdev.dev = vpu->dev;
> -	strlcpy(vpu->mdev.model, DRIVER_NAME, sizeof(vpu->mdev.model));
> +	strscpy(vpu->mdev.model, DRIVER_NAME, sizeof(vpu->mdev.model));
>  	media_device_init(&vpu->mdev);
>  	vpu->v4l2_dev.mdev = &vpu->mdev;
>  
> 
