Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC2A0C4828D
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 13:52:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DN3BD7ZZK4S5FDxSomnw+WBJ0rI6e5n48RZdI/Wh91Q=; b=XwR1PLhAMPRrch
	mhSFea2Ypa7VVDvdNxOOddjqyCchcMhJyEheEH7X+xmQ5T/EaNcOW7tnOBzLZfCCRAk26v3TCpj1l
	c7Kyv18IYBo7G1u8Pq7lqUANZHQ3/UeV27K5Zh2d5bWUNPAMBHdtf4S6rsKjLDiHkXHUvOMLDjrBT
	LfgWs9RIrM1SS/ht711bAkDs1A65nNcuMLGwlQUsw8DOOzYFljacDqwTtwFlrS7y9phgHwDYpXmWo
	nh2zmlAn/B3F9HCe+IThgE5fDiUPWAWhOzYNp/F1FBh621E8Jq2rBGigzG5wtNOj0CmAS/jhMhxD2
	9AQvkuhpZboX1Wncc0Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVXUj-00000008BBw-39kE;
	Thu, 01 Feb 2024 13:52:45 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVXUd-00000008B8M-2ElC;
	Thu, 01 Feb 2024 13:52:41 +0000
Received: from pendragon.ideasonboard.com (unknown [94.107.229.70])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id 79909613C;
	Thu,  1 Feb 2024 14:51:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1706795474;
	bh=ebmTHicMZOC5G/O7XY0VPUZ32gErFhOhfjjwyQcH3aQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=UD9a8fj3OvrZ5BeNaUdR2+AZQXSSCY7pfmfYLmE55moZqqNph9JgP8Gmn+b0M2Ngw
	 emvh68QZD96AbHtCoqkYXrFjP94ELxMj/vXZuyHumLBdyPSbJns7bqsME9R3cgPzvq
	 9ZHRS3U/4WrGrwVr+jip+mS55c08kjBzRdFJ5haI=
Date: Thu, 1 Feb 2024 15:52:32 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Paul Elder <paul.elder@ideasonboard.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, kieran.bingham@ideasonboard.com,
	tomi.valkeinen@ideasonboard.com, umang.jain@ideasonboard.com,
	aford173@gmail.com,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dafna Hirschfeld <dafna@fastmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v6 04/11] media: rkisp1: Support devices lacking dual crop
Message-ID: <20240201135232.GB5344@pendragon.ideasonboard.com>
References: <20240111114831.656736-1-paul.elder@ideasonboard.com>
 <20240111114831.656736-5-paul.elder@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240111114831.656736-5-paul.elder@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_055239_922636_A25E4E5F 
X-CRM114-Status: GOOD (  27.74  )
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

On Thu, Jan 11, 2024 at 08:48:24PM +0900, Paul Elder wrote:
> Some versions of the ISP supported by the rkisp1 driver, such as the ISP
> in the i.MX8MP, lack the dual crop registers and don't support cropping
> at the resizer input. They instead rely on cropping in the Image
> Stabilization module, at the output of the ISP, to modify the resizer
> input size and implement digital zoom.
> 
> Support those ISP versions by addind a dual crop feature flag, and

s/addind/adding/

> mapping the resizer input crop rectangle to either the resizer dual crop
> module or the image stabilization module.

The implementation doesn't match the commit message. You only disable
dual-crop here, you don't handle the image stabilization module. I'm
fine with that, I think adding IS support belongs to a separate patch,
but what this patch is missing is disabling the ability to set a crop
rectangle on the resizer input when dual-crop is not supported.

> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Signed-off-by: Paul Elder <paul.elder@ideasonboard.com>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Tested-by: Adam Ford <aford173@gmail.com>
> Reviewed-by: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-common.h  | 2 ++
>  drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c     | 6 ++++--
>  drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c | 6 ++++--
>  3 files changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> index f7c251f79aa9..219d4a2547aa 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> @@ -112,6 +112,7 @@ enum rkisp1_isp_pad {
>   * @RKISP1_FEATURE_MIPI_CSI2: The ISP has an internal MIPI CSI-2 receiver
>   * @RKISP1_FEATURE_MAIN_STRIDE: The ISP supports configurable stride on the main path
>   * @RKISP1_FEATURE_SELF_PATH: The ISP has a self path
> + * @RKISP1_FEATURE_DUAL_CROP: The ISP has the dual crop block at the resizer input
>   *
>   * The ISP features are stored in a bitmask in &rkisp1_info.features and allow
>   * the driver to implement support for features present in some ISP versions
> @@ -121,6 +122,7 @@ enum rkisp1_feature {
>  	RKISP1_FEATURE_MIPI_CSI2 = BIT(0),
>  	RKISP1_FEATURE_MAIN_STRIDE = BIT(1),
>  	RKISP1_FEATURE_SELF_PATH = BIT(2),
> +	RKISP1_FEATURE_DUAL_CROP = BIT(3),
>  };
>  
>  #define rkisp1_has_feature(rkisp1, feature) \
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> index f48a21985b18..2e40c376cab5 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-dev.c
> @@ -507,7 +507,8 @@ static const struct rkisp1_info px30_isp_info = {
>  	.isr_size = ARRAY_SIZE(px30_isp_isrs),
>  	.isp_ver = RKISP1_V12,
>  	.features = RKISP1_FEATURE_MIPI_CSI2
> -		  | RKISP1_FEATURE_SELF_PATH,
> +		  | RKISP1_FEATURE_SELF_PATH
> +		  | RKISP1_FEATURE_DUAL_CROP,
>  };
>  
>  static const char * const rk3399_isp_clks[] = {
> @@ -527,7 +528,8 @@ static const struct rkisp1_info rk3399_isp_info = {
>  	.isr_size = ARRAY_SIZE(rk3399_isp_isrs),
>  	.isp_ver = RKISP1_V10,
>  	.features = RKISP1_FEATURE_MIPI_CSI2
> -		  | RKISP1_FEATURE_SELF_PATH,
> +		  | RKISP1_FEATURE_SELF_PATH
> +		  | RKISP1_FEATURE_DUAL_CROP,
>  };
>  
>  static const struct of_device_id rkisp1_of_match[] = {
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> index dd77a31e6014..de2eb2c97cc4 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-resizer.c
> @@ -635,7 +635,8 @@ static int rkisp1_rsz_s_stream(struct v4l2_subdev *sd, int enable)
>  	struct v4l2_subdev_state *sd_state;
>  
>  	if (!enable) {
> -		rkisp1_dcrop_disable(rsz, RKISP1_SHADOW_REGS_ASYNC);
> +		if (rkisp1_has_feature(rkisp1, DUAL_CROP))
> +			rkisp1_dcrop_disable(rsz, RKISP1_SHADOW_REGS_ASYNC);
>  		rkisp1_rsz_disable(rsz, RKISP1_SHADOW_REGS_ASYNC);
>  		return 0;
>  	}
> @@ -646,7 +647,8 @@ static int rkisp1_rsz_s_stream(struct v4l2_subdev *sd, int enable)
>  	sd_state = v4l2_subdev_lock_and_get_active_state(sd);
>  
>  	rkisp1_rsz_config(rsz, sd_state, when);
> -	rkisp1_dcrop_config(rsz, sd_state);
> +	if (rkisp1_has_feature(rkisp1, DUAL_CROP))
> +		rkisp1_dcrop_config(rsz, sd_state);
>  
>  	v4l2_subdev_unlock_state(sd_state);
>  

-- 
Regards,

Laurent Pinchart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
