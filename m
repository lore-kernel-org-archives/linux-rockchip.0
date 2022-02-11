Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 779E3C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Feb 2022 14:04:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XJ13M4m7FZOTGbss0zgsj6fxPSbTMt/m5ccPJVPqdcM=; b=d69b3YFoLMknsZ
	mdBib/3HrV1sSHVfhwk79zmmeCNoXH7ZXKcjfxUv+pz5zzPX7u/zq7Hx/QJl1x7JcEbL6U1SqtIva
	Ex3frdxz90A68Lzztjk960LyDu2QXBeijcsjbss+M6tai+H+s3bBtrcFTqQXJBrfDw/VOlX5D4JzS
	vdOlpVYhZqROqOryL8yfwiCEF7uOYWqEitnjTJ4YY1P48DafgOTmExZDwesLJ+LXMViH7nAVVRxJL
	SWZQT35CfbYGmUmAep3fea0NM09INyfI3LGwbkh69tTFqe/MGhbHcIJsP34jQcNgotwZt4+1HFyyr
	G5/wpWd1tw9ofV23Shmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nIWXJ-007UTd-Mw; Fri, 11 Feb 2022 14:04:33 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nIWXG-007USq-8L
 for linux-rockchip@lists.infradead.org; Fri, 11 Feb 2022 14:04:32 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id CB60A93;
 Fri, 11 Feb 2022 15:04:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1644588265;
 bh=G7v4VH4NSA/4hFb2xuvgbssVxOidHhEAC29790OLbvo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Uwo4GlcGfBalq9RRm/kWCMApMkCh4hTVHUVR+JfQDlg70LkndMU2+LrQr7Y09dbZh
 AzdWW5C9Zya5VcINKilVkvoQpf6x9rSyg1qB6JayMqT+MpcBJ5a7jTxSnFEXhKx496
 zdgVLFN2dmXSBDxaZkafKJordJhcLCAmECNzCh4A=
Date: Fri, 11 Feb 2022 16:04:20 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: dafna.hirschfeld@collabora.com, helen.koike@collabora.com,
 linux-media@vger.kernel.org, mchehab@kernel.org, hverkuil@xs4all.nl,
 linux-rockchip@lists.infradead.org, ezequiel@collabora.com,
 christoph.muellner@theobroma-systems.com,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Subject: Re: [PATCH 1/2] media: rockchip: rkisp1: carry ip version information
Message-ID: <YgZs5CrQwJ2jYEXR@pendragon.ideasonboard.com>
References: <20210111234011.3642481-1-heiko@sntech.de>
 <20210111234011.3642481-2-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210111234011.3642481-2-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220211_060430_540963_59B153E1 
X-CRM114-Status: GOOD (  30.23  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Heiko,

Reviving a bit of an older thread.

On Tue, Jan 12, 2021 at 12:40:10AM +0100, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The IP block evolved from its rk3288/rk3399 base and the vendor
> designates them with a numerical version. rk3399 for example
> is designated V10 probably meaning V1.0.
> 
> There doesn't seem to be an actual version register we could read that
> information from, so allow the match_data to carry that information
> for future differentiation.
> 
> Also carry that information in the hw_revision field of the media-
> controller API, so that userspace also has access to that.
> 
> The added versions are:
> - V10: at least rk3288 + rk3399
> - V11: seemingly unused as of now, but probably appeared in some soc
> - V12: at least rk3326 + px30
> - V13: at least rk1808
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

The ISP has a version register, which is read at streamon time and
printed in a dev_dbg() message. On RK3399 it reads as 0x30153017, and I
was wondering what values are returned for other SoCs. Would you be able
to test on the other platforms you have access to ?

> ---
> changes since rfc:
> - move rkisp1_version enum into uapo
> - show version in media-api hw_revision
> 
>  .../platform/rockchip/rkisp1/rkisp1-common.h  |  1 +
>  .../platform/rockchip/rkisp1/rkisp1-dev.c     | 22 +++++++++++--------
>  include/uapi/linux/rkisp1-config.h            |  7 ++++++
>  3 files changed, 21 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> index 038c303a8aed..bad1bd468f2f 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> @@ -354,6 +354,7 @@ struct rkisp1_device {
>  	void __iomem *base_addr;
>  	int irq;
>  	struct device *dev;
> +	enum rkisp1_cif_isp_version isp_ver;
>  	unsigned int clk_size;
>  	struct clk_bulk_data clks[RKISP1_MAX_BUS_CLK];
>  	struct v4l2_device v4l2_dev;
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index 68da1eed753d..f594d7cd03d0 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -104,6 +104,7 @@
>  struct rkisp1_match_data {
>  	const char * const *clks;
>  	unsigned int size;
> +	enum rkisp1_cif_isp_version isp_ver;
>  };
>  
>  /* ----------------------------------------------------------------------------
> @@ -411,15 +412,16 @@ static const char * const rk3399_isp_clks[] = {
>  	"hclk",
>  };
>  
> -static const struct rkisp1_match_data rk3399_isp_clk_data = {
> +static const struct rkisp1_match_data rk3399_isp_match_data = {
>  	.clks = rk3399_isp_clks,
>  	.size = ARRAY_SIZE(rk3399_isp_clks),
> +	.isp_ver = RKISP1_V10,
>  };
>  
>  static const struct of_device_id rkisp1_of_match[] = {
>  	{
>  		.compatible = "rockchip,rk3399-cif-isp",
> -		.data = &rk3399_isp_clk_data,
> +		.data = &rk3399_isp_match_data,
>  	},
>  	{},
>  };
> @@ -457,15 +459,15 @@ static void rkisp1_debug_init(struct rkisp1_device *rkisp1)
>  
>  static int rkisp1_probe(struct platform_device *pdev)
>  {
> -	const struct rkisp1_match_data *clk_data;
> +	const struct rkisp1_match_data *match_data;
>  	struct device *dev = &pdev->dev;
>  	struct rkisp1_device *rkisp1;
>  	struct v4l2_device *v4l2_dev;
>  	unsigned int i;
>  	int ret, irq;
>  
> -	clk_data = of_device_get_match_data(&pdev->dev);
> -	if (!clk_data)
> +	match_data = of_device_get_match_data(&pdev->dev);
> +	if (!match_data)
>  		return -ENODEV;
>  
>  	rkisp1 = devm_kzalloc(dev, sizeof(*rkisp1), GFP_KERNEL);
> @@ -494,15 +496,17 @@ static int rkisp1_probe(struct platform_device *pdev)
>  
>  	rkisp1->irq = irq;
>  
> -	for (i = 0; i < clk_data->size; i++)
> -		rkisp1->clks[i].id = clk_data->clks[i];
> -	ret = devm_clk_bulk_get(dev, clk_data->size, rkisp1->clks);
> +	for (i = 0; i < match_data->size; i++)
> +		rkisp1->clks[i].id = match_data->clks[i];
> +	ret = devm_clk_bulk_get(dev, match_data->size, rkisp1->clks);
>  	if (ret)
>  		return ret;
> -	rkisp1->clk_size = clk_data->size;
> +	rkisp1->clk_size = match_data->size;
> +	rkisp1->isp_ver = match_data->isp_ver;
>  
>  	pm_runtime_enable(&pdev->dev);
>  
> +	rkisp1->media_dev.hw_revision = rkisp1->isp_ver;
>  	strscpy(rkisp1->media_dev.model, RKISP1_DRIVER_NAME,
>  		sizeof(rkisp1->media_dev.model));
>  	rkisp1->media_dev.dev = &pdev->dev;
> diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
> index 6e449e784260..bad46aadf838 100644
> --- a/include/uapi/linux/rkisp1-config.h
> +++ b/include/uapi/linux/rkisp1-config.h
> @@ -124,6 +124,13 @@
>  #define RKISP1_CIF_ISP_STAT_AFM           (1U << 2)
>  #define RKISP1_CIF_ISP_STAT_HIST          (1U << 3)
>  
> +enum rkisp1_cif_isp_version {
> +	RKISP1_V10 = 0,
> +	RKISP1_V11,
> +	RKISP1_V12,
> +	RKISP1_V13,
> +};
> +
>  enum rkisp1_cif_isp_histogram_mode {
>  	RKISP1_CIF_ISP_HISTOGRAM_MODE_DISABLE,
>  	RKISP1_CIF_ISP_HISTOGRAM_MODE_RGB_COMBINED,

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
