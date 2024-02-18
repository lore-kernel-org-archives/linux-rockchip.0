Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5BA8C48BF6
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Feb 2024 20:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XSQr/nDwRSnXsrR68t7Bbtv2ueFhTIGnsWS9efwUiGI=; b=gT4cIL5IP2cQzz
	kRpX7FzfIhqsH/S/+1EEWi+Ypo3fcpBV3OTNw2aEtYTcgbDQgcrGxZCv8Z3Vnkd7MTgVTrNrn+y1G
	jy0aYeBdzAalzpma156NhFzOnEgLzy+0GifHvmtD/uHMdcfDgJbayjYTWPogVfHy7tWCxwx401iHC
	lmHHSa94kPjmvOvl7CpHvvGOXvqnGFEWcKCfyFfDJDUttuVxHx9dytiRXplSe7uqayCmMGK2d6/TX
	D0CIb7eRZhAezbc+CGl1UlY3UjuDMjx31q0jrApiCFDNIPn2cLR+s4/z98nLB0rjjmIaieOwvnvgg
	T9yf3P2IMH7w+kUe0T8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbnNu-00000008MT4-3Vzy;
	Sun, 18 Feb 2024 20:03:34 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rbnNr-00000008MSO-1XQy;
	Sun, 18 Feb 2024 20:03:32 +0000
Received: from pendragon.ideasonboard.com (89-27-53-110.bb.dnainternet.fi [89.27.53.110])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 1F8DA480;
	Sun, 18 Feb 2024 21:03:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1708286604;
	bh=JnI/Ip1IUz1CZLShdqDD8S7P8/cWRGr9iAqd/oacm9E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Q1uVIakWL2QqPIJ6Q7NbTJjViVxGNVlezGMLmQ+pLM7+DVERsHvbOJ/520gcz0QUu
	 9b0Cgp2vi6W1epFTSOjW7hCOVemeG0KsIuoNClDjEwKE9oAZ8I3WeMM2K0RWWTxWrG
	 ruwSpSymm4he9EnhFE7cWZaDfcbg5+1FOLYHRC6w=
Date: Sun, 18 Feb 2024 22:03:33 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, kieran.bingham@ideasonboard.com,
	tomi.valkeinen@ideasonboard.com, umang.jain@ideasonboard.com,
	aford173@gmail.com, Rob Herring <robh@kernel.org>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v12 12/12] media: rkisp1: Add match data for i.MX8MP ISP
Message-ID: <20240218200333.GL7120@pendragon.ideasonboard.com>
References: <20240216095458.2919694-1-paul.elder@ideasonboard.com>
 <20240216095458.2919694-13-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240216095458.2919694-13-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240218_120331_573150_28CDA239 
X-CRM114-Status: GOOD (  17.73  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Hi Paul,

Thank you for the patch.

On Fri, Feb 16, 2024 at 06:54:58PM +0900, Paul Elder wrote:
> Add match data to the rkisp1 driver to match the i.MX8MP ISP.
> 
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Tested-by: Adam Ford <aford173@gmail.com>
> Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

> ---
> Changes in v12:
> - move out adding the version enum
> ---
>  .../platform/rockchip/rkisp1/rkisp1-dev.c     | 24 +++++++++++++++++++
>  1 file changed, 24 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index 54a62487a4e8..a6b47f0af467 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -533,6 +533,26 @@ static const struct rkisp1_info rk3399_isp_info = {
>  		  | RKISP1_FEATURE_DUAL_CROP,
>  };
>  
> +static const char * const imx8mp_isp_clks[] = {
> +	"isp",
> +	"hclk",
> +	"aclk",
> +};
> +
> +static const struct rkisp1_isr_data imx8mp_isp_isrs[] = {
> +	{ NULL, rkisp1_isr, BIT(RKISP1_IRQ_ISP) | BIT(RKISP1_IRQ_MI) },
> +};
> +
> +static const struct rkisp1_info imx8mp_isp_info = {
> +	.clks = imx8mp_isp_clks,
> +	.clk_size = ARRAY_SIZE(imx8mp_isp_clks),
> +	.isrs = imx8mp_isp_isrs,
> +	.isr_size = ARRAY_SIZE(imx8mp_isp_isrs),
> +	.isp_ver = RKISP1_V_IMX8MP,
> +	.features = RKISP1_FEATURE_MAIN_STRIDE
> +		  | RKISP1_FEATURE_DMA_34BIT,
> +};
> +
>  static const struct of_device_id rkisp1_of_match[] = {
>  	{
>  		.compatible = "rockchip,px30-cif-isp",
> @@ -542,6 +562,10 @@ static const struct of_device_id rkisp1_of_match[] = {
>  		.compatible = "rockchip,rk3399-cif-isp",
>  		.data = &rk3399_isp_info,
>  	},
> +	{
> +		.compatible = "fsl,imx8mp-isp",
> +		.data = &imx8mp_isp_info,
> +	},
>  	{},
>  };
>  MODULE_DEVICE_TABLE(of, rkisp1_of_match);

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
