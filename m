From: Ezequiel Garcia <ezequiel@collabora.com>
Subject: Re: [PATCH 1/4] media: rockchip/rga: add rk3228-rga to
 rockchip_rga_match[]
Date: Tue, 21 Jan 2020 07:45:01 -0300
Message-ID: <241033bf82fc7e955dd20c0084bfd4f6fc9fc75b.camel@collabora.com>
References: <20200120194158.25357-1-justin.swartz@risingedge.co.za>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
Return-path: <linux-media-owner@vger.kernel.org>
In-Reply-To: <20200120194158.25357-1-justin.swartz@risingedge.co.za>
Sender: linux-media-owner@vger.kernel.org
To: Justin Swartz <justin.swartz@risingedge.co.za>, Jacob Chen <jacob-chen@iotwrt.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

On Mon, 2020-01-20 at 19:41 +0000, Justin Swartz wrote:
> Add an entry to the rockchip_rga_match array for "rockchip,rk3228-rga"
> 
> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
> ---
>  drivers/media/platform/rockchip/rga/rga.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rga/rga.c b/drivers/media/platform/rockchip/rga/rga.c
> index e9ff12b6b..268116cd5 100644
> --- a/drivers/media/platform/rockchip/rga/rga.c
> +++ b/drivers/media/platform/rockchip/rga/rga.c
> @@ -956,6 +956,9 @@ static const struct dev_pm_ops rga_pm = {
>  
>  static const struct of_device_id rockchip_rga_match[] = {
>  	{
> +		.compatible = "rockchip,rk3228-rga",
> +	},

Unless you need to tune something in the driver
specifically for rk3228, then you don't need a
new compatible string.

As the name implies, it's just a "compatible",
so you may simply declare your rga dts node as
compatible to "rockchip,rk3288-rga".

(Of course, this means we shouldn't have added
the rk3399 compatible string.)

Regards,
Ezequiel
