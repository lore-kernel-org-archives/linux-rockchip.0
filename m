Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A390C4828D
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zCk4m9lEX5ixfiysipHUx5cRO4JPvqQkl0d1zkirSe0=; b=jqNGdfGH3qj8Q7
	qkQbvJZMtmib4bPeY98O9p8nJBWFZYU0LYX2Wodf9GdyJklmr1GtJLqEqSDSf9kXUtm5IPbXCFn2N
	AEDzu02N4Ne6BDPwAAVckevh7kxofpvSftq//zIuEVIJ2PeCcRVt3aCHXN+VTQla47Qe+yjqGac8t
	i4mdo0WnytRyackA4kSFYvZVdRKWQX4YEzWQVi54oN1adZp4hlbcITnty+FWuzfuvdByAEaX2nfTS
	HEe+P5WR9C4YCIDUfdl5B7Q2TItpx8t6VwJ17LVu79V1ByclrwVfx0ggtH+JSd3tvRECf6qDBYj83
	l2X77f8ONsDOM6oKZRsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVXXi-00000008BxN-1JXW;
	Thu, 01 Feb 2024 13:55:50 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVXXe-00000008BwC-1jgR;
	Thu, 01 Feb 2024 13:55:47 +0000
Received: from pendragon.ideasonboard.com (unknown [94.107.229.70])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 75E50613C;
	Thu,  1 Feb 2024 14:54:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1706795665;
	bh=yVe0wPpau/Jkc9Yz0tzUYbm/lq5PZI3a41O+7qw+lzM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Lh8owA6nHqGwJmgfCmd3MCj45ldbG6crq2p1W+wARpdvMJ3ZrhqPsbl9QbRBFRJeg
	 v4SqfKhBdvKNBYVe9+vMqCSnY6SuQlDulTFFcBODPx5F9BmyE2vqhseZs5Z/UrzYv7
	 cn4m/IR7kLvoWeMXYSfbckgGjk63cmIMQX32UGx8=
Date: Thu, 1 Feb 2024 15:55:44 +0200
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
Subject: Re: [PATCH v6 06/11] media: rkisp1: Add match data for i.MX8MP ISP
Message-ID: <20240201135544.GC5344@pendragon.ideasonboard.com>
References: <20240111114831.656736-1-paul.elder@ideasonboard.com>
 <20240111114831.656736-7-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240111114831.656736-7-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_055546_692707_7F682907 
X-CRM114-Status: GOOD (  21.15  )
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

On Thu, Jan 11, 2024 at 08:48:26PM +0900, Paul Elder wrote:
> Add match data to the rkisp1 driver to match the i.MX8MP ISP.

This patch, or at least the part that adds the compatible entry, should
move to the end of the series, after the other patches that enable the
features needed by the i.MX8MP.

> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Tested-by: Adam Ford <aford173@gmail.com>
> Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> ---
>  .../platform/rockchip/rkisp1/rkisp1-dev.c     | 23 +++++++++++++++++++
>  include/uapi/linux/rkisp1-config.h            |  2 ++
>  2 files changed, 25 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index 2e40c376cab5..e4aac0234178 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -532,6 +532,25 @@ static const struct rkisp1_info rk3399_isp_info = {
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
> +	.isp_ver = IMX8MP_V10,
> +	.features = RKISP1_FEATURE_MAIN_STRIDE,
> +};
> +
>  static const struct of_device_id rkisp1_of_match[] = {
>  	{
>  		.compatible = "rockchip,px30-cif-isp",
> @@ -541,6 +560,10 @@ static const struct of_device_id rkisp1_of_match[] = {
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
> diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
> index 730673ecc63d..f602442c2018 100644
> --- a/include/uapi/linux/rkisp1-config.h
> +++ b/include/uapi/linux/rkisp1-config.h
> @@ -179,12 +179,14 @@
>   * @RKISP1_V11: declared in the original vendor code, but not used
>   * @RKISP1_V12: used at least in rk3326 and px30
>   * @RKISP1_V13: used at least in rk1808
> + * @IMX8MP_V10: used in at least imx8mp
>   */
>  enum rkisp1_cif_isp_version {
>  	RKISP1_V10 = 10,
>  	RKISP1_V11,
>  	RKISP1_V12,
>  	RKISP1_V13,
> +	IMX8MP_V10,

This is prone to namespace clashes, especially in the userspace API. I
prefer keeping the RKISP1_ prefix. Furthermore, there's no "V10" for the
i.MX8MP. You can name the version RKISP1_V_IMX8MP. I dislike it very
much but have no better alternative to propose without more information
from VSI.

>  };
>  
>  enum rkisp1_cif_isp_histogram_mode {

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
