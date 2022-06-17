Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52097C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 23:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RFVHMZQR0wg/F3w0QwxrdtPG4b9pe1ewH5xieXrgVi8=; b=MeacpycAVRoAsr
	Y9zfOKDMVOCG0nfy7aaD6UAo9Tlnj/tox14VBKDF8aIDtvnzX85aQnfTSih1NqjX6xOQb76XhDMZB
	WPAeVNb47z7t/wldfDg7nl48Ns3K5EjoZ7fVWrIkAgol83TdXF7/1k65v6FaKHcyUlbmW4a1TtqyK
	//vcFgCRW5XhMvBPQi68UQB+wLLI3vzCjbmZpNuhCFswuzFn5gfxF0m7+BXUDRQf0YxHor6m/0kni
	GiXrx4CZoRE0geNEm/PJXjd8+wnNJ1njmlHiUU0iiPlAGPLUvsu2zaQJ1v9sM5LB0TMW2qBV2kQGR
	v0dRu1sHy3BsDQFHARKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2LMS-009cyW-0G; Fri, 17 Jun 2022 23:26:44 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o2LMJ-009cvl-Up
	for linux-rockchip@lists.infradead.org; Fri, 17 Jun 2022 23:26:37 +0000
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id E0B2B383;
	Sat, 18 Jun 2022 01:26:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1655508394;
	bh=o+r2KdCWEcp02NRnDAXWwerltH9tsnM+Z0GU1n+UE4o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FRbXAr7k9iwTVFHwaz8onrtAUWPjGYDGN1ZkU458DNspYwU9rVJLNYglUWH54vJLN
	 d0CRm8Osz7fCqXVx/hG3QnWIyjxLnEsR2vkki1oL88ATy4rxUVz/TMLd2DRuODhMSA
	 PuGk9mpnejj/+5xE8VaYfKkd7Q1BLL5x84GoTnEE=
Date: Sat, 18 Jun 2022 02:26:22 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, dafna@fastmail.com, heiko@sntech.de,
	jeanmichel.hautbois@ideasonboard.com, jacopo@jmondi.org,
	djrscally@gmail.com, helen.koike@collabora.com,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 48/55] media: rkisp1: Add match data for i.MX8MP ISP
Message-ID: <Yq0NnksDldH1PDfp@pendragon.ideasonboard.com>
References: <20220614191127.3420492-1-paul.elder@ideasonboard.com>
 <20220614191127.3420492-49-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220614191127.3420492-49-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_162636_173733_2FEE8920 
X-CRM114-Status: GOOD (  18.31  )
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

On Wed, Jun 15, 2022 at 04:11:20AM +0900, Paul Elder wrote:
> Add match data to the rkisp1 driver to match the i.MX8MP ISP.
> 
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> ---
>  .../platform/rockchip/rkisp1/rkisp1-dev.c     | 22 +++++++++++++++++++
>  include/uapi/linux/rkisp1-config.h            |  3 +++
>  2 files changed, 25 insertions(+)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index 62fa2bd275fe..3a0115bdcee5 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -486,6 +486,24 @@ static const struct rkisp1_info rk3399_isp_info = {
>  	.features = RKISP1_FEATURE_MIPI_CSI2,
>  };
>  
> +static const char * const imx8mp_isp_clks[] = {
> +	"isp",
> +	"hclk",
> +	"aclk",
> +};
> +
> +static const struct rkisp1_isr_data imx8mp_isp_isrs[] = {
> +	{ NULL, rkisp1_isr },
> +};
> +
> +static const struct rkisp1_info imx8mp_isp_info = {
> +	.clks = imx8mp_isp_clks,
> +	.clk_size = ARRAY_SIZE(imx8mp_isp_clks),
> +	.isrs = imx8mp_isp_isrs,
> +	.isr_size = ARRAY_SIZE(imx8mp_isp_isrs),
> +	.isp_ver = IMX8MP_V10,
> +};
> +
>  static const struct of_device_id rkisp1_of_match[] = {
>  	{
>  		.compatible = "rockchip,px30-cif-isp",
> @@ -495,6 +513,10 @@ static const struct of_device_id rkisp1_of_match[] = {
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
> index 583ca0d9a79d..40677d47825c 100644
> --- a/include/uapi/linux/rkisp1-config.h
> +++ b/include/uapi/linux/rkisp1-config.h
> @@ -140,12 +140,15 @@
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
> +	/* TODO Choose a better version for this */
> +	IMX8MP_V10,

Time to address this ? :-)

Does anyone know where the current versioning scheme come from ?

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
