Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B775C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Mar 2022 05:12:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QyHfECvEdaSS69sLgKq3ZtEt/bFVhCmDrAEd3QrvxiM=; b=Vu0MN6NUjYtEzJ
	FQn/T6UrmnaekaHmLWHMCrpVDFfSdeIiyITLXUKYiAC8mTN0u4Qmw6+Df9j8S0XHgDGZckzHXU3D3
	nhv3Z6iETesq7Z570dc02Fc3yhR+MmeZ04vojuXAMuUP2vn0Xrvy5skE0BxzFbQff5YAI9hrfM/h6
	FUUmPwI1vLUQMOzK3FrdBcANDr7tCI7SQBZg8vVhBxavEIyT+8EK5tqKJ/PaFqCly1nrLq4kwWPZh
	BDGGnQegJHaaMZKvUlWDaX4drTX1TMeXTTey+L/PtOGjjB8sO9eYA2Ik63GwujFjAg68dwS64NlG4
	WgPMN73LiDhDmM7aVLOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWWoo-00A1rm-OI; Tue, 22 Mar 2022 05:12:30 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWWol-00A1rO-GC
 for linux-rockchip@lists.infradead.org; Tue, 22 Mar 2022 05:12:29 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id D54EB5C00DE;
 Tue, 22 Mar 2022 01:12:26 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Tue, 22 Mar 2022 01:12:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.com; h=
 cc:cc:content-type:date:date:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to; s=fm3; bh=35YBVFixNrOZ0+UvsviWqtjpC2NVfLmOGOZS0e
 oaqg0=; b=h0aSSbZ+Sjmxh9QwVxSxfDhnnQ0G0KvblkxDzp/Ww3+3EThq6eNFiq
 ypguPf4khJ7SmjiBzsFhjBHPlX222azQG2G7aeZm9QWBGTDaRIQPJOwDvCgqvctm
 SgrE24/FruQa5Q+cAH6u3HJkZrxem40dMvCUihGx8oW5qpTFX++GwoddYnuF27H+
 CEzLQFVlmT5gprfeAsCYCoccosS8LzOKOof8HNbiENpoX+IWxmex/7TmAnYJiM5s
 H+Rc9KNdzsgJkkkm0DFIi6OMfvz0T6gmTkqlrLLftlOHR3zpiUFWckCqysRopF2F
 GyeTYVNKx+D8AOY8jbqT+PP1T+QoLAxw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=35YBVFixNrOZ0+Uvs
 viWqtjpC2NVfLmOGOZS0eoaqg0=; b=Vg07STGJ7DQ2WyQSQWXnJhd4LSS/2IQ0q
 +8dVs3HZmgs23MI9TFSoeFE84xLlHfLg9I1+YqP0cFXJJjfNkMWk3wIJhyRYr5gs
 Jt5ahFUfDgzYzCjXHE2z7mhtgDrNlW0HmefnVz+4Wts6qamXNfKWpulqWVFcvXUu
 G2z4HlkH9dOwRjXMxr/5WhTjUzcOcQNTof+v1mUHTirTuGlI3NklwCzLEirnbWsE
 IvPaP5Zo499LPZnM7/3M3QnoKOj5U+JgMczCGa5T21gO0paGsX7l/LnM253i+dRd
 3Z+5LRjoQu7L+vBOOyDvYCfgo2Uw+cd8BCCwzXkGPcomu+riAC0+w==
X-ME-Sender: <xms:ulo5YpbU16Hm0ySz1n70upjvlRKdinNGGwbRs2HhNEm7ECSEDqi2Jw>
 <xme:ulo5YgZkIihHAGMkDIYamL_oSPM9Bz83qwR8IG1WfZLryShic0-_Mr77bK7fxNh3V
 wrPIu946gaH5vZEpYc>
X-ME-Received: <xmr:ulo5Yr9Sal1g8IK3e9jlb5qwMknO3tYCtmo1wS5sK562NMENh1YVfESy-h_RS-F2f4OqRFCoyZ5TC7c6aW2lNbIP>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudeggedgjeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttdejnecuhfhrohhmpeffrghfnhgr
 ucfjihhrshgthhhfvghlugcuoegurghfnhgrsehfrghsthhmrghilhdrtghomheqnecugg
 ftrfgrthhtvghrnhepffelvddujefgieetvdelveetudeukeektdejvdegvdfgudelteff
 ueejvdevkeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
 homhepuggrfhhnrgesfhgrshhtmhgrihhlrdgtohhm
X-ME-Proxy: <xmx:ulo5YnpBlHsLB4KlcLRopN3AnSuK1NYQT3NzY5ZcwjMEwPgkG5q0QA>
 <xmx:ulo5YkpBrzVglzAbfBMtLhL-io-0ja8cvkT5bSEL3HyPGmRhkKTQlw>
 <xmx:ulo5YtTkZS2xkQ56RPUIMqcqbboismskpkVHP_yXgfb2SYTepdWroA>
 <xmx:ulo5Ytl1X_4VbJ7Jo77iUN_eM5xFEysIL6z-yPCMuuZH5_IN796pdw>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 22 Mar 2022 01:12:25 -0400 (EDT)
Date: Tue, 22 Mar 2022 07:12:23 +0200
From: Dafna Hirschfeld <dafna@fastmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Paul Elder <paul.elder@ideasonboard.com>,
 Tomasz Figa <tfiga@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 09/17] media: rkisp1: regs: Rename CCL, ICCL and IRCL
 registers with VI_ prefix
Message-ID: <20220322051223.bszb4r72uk7scxpy@guri>
References: <20220319163100.3083-1-laurent.pinchart@ideasonboard.com>
 <20220319163100.3083-10-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220319163100.3083-10-laurent.pinchart@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_221227_646217_6513165C 
X-CRM114-Status: GOOD (  16.06  )
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

On 19.03.2022 18:30, Laurent Pinchart wrote:
> The documentation names the CCL, ICCL and IRCL registers with a VI_
> prefix, like the VI_ID and VI_DPCL registers. Fix the macro names
> accordingly.
> 
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

Reviewed-by: Dafna Hirschfeld <dafna@fastmail.com>

> ---
>  .../platform/rockchip/rkisp1/rkisp1-isp.c     | 19 +++---
>  .../platform/rockchip/rkisp1/rkisp1-params.c  |  8 +--
>  .../platform/rockchip/rkisp1/rkisp1-regs.h    | 60 +++++++++----------
>  3 files changed, 44 insertions(+), 43 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> index f84e53b60ee1..e8abb57fb728 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-isp.c
> @@ -523,20 +523,21 @@ static void rkisp1_isp_stop(struct rkisp1_device *rkisp1)
>  	readx_poll_timeout(readl, rkisp1->base_addr + RKISP1_CIF_ISP_RIS,
>  			   val, val & RKISP1_CIF_ISP_OFF, 20, 100);
>  	rkisp1_write(rkisp1,
> -		     RKISP1_CIF_IRCL_MIPI_SW_RST | RKISP1_CIF_IRCL_ISP_SW_RST,
> -		     RKISP1_CIF_IRCL);
> -	rkisp1_write(rkisp1, 0x0, RKISP1_CIF_IRCL);
> +		     RKISP1_CIF_VI_IRCL_MIPI_SW_RST |
> +		     RKISP1_CIF_VI_IRCL_ISP_SW_RST,
> +		     RKISP1_CIF_VI_IRCL);
> +	rkisp1_write(rkisp1, 0x0, RKISP1_CIF_VI_IRCL);
>  }
>  
>  static void rkisp1_config_clk(struct rkisp1_device *rkisp1)
>  {
> -	u32 val = RKISP1_CIF_ICCL_ISP_CLK | RKISP1_CIF_ICCL_CP_CLK |
> -		  RKISP1_CIF_ICCL_MRSZ_CLK | RKISP1_CIF_ICCL_SRSZ_CLK |
> -		  RKISP1_CIF_ICCL_JPEG_CLK | RKISP1_CIF_ICCL_MI_CLK |
> -		  RKISP1_CIF_ICCL_IE_CLK | RKISP1_CIF_ICCL_MIPI_CLK |
> -		  RKISP1_CIF_ICCL_DCROP_CLK;
> +	u32 val = RKISP1_CIF_VI_ICCL_ISP_CLK | RKISP1_CIF_VI_ICCL_CP_CLK |
> +		  RKISP1_CIF_VI_ICCL_MRSZ_CLK | RKISP1_CIF_VI_ICCL_SRSZ_CLK |
> +		  RKISP1_CIF_VI_ICCL_JPEG_CLK | RKISP1_CIF_VI_ICCL_MI_CLK |
> +		  RKISP1_CIF_VI_ICCL_IE_CLK | RKISP1_CIF_VI_ICCL_MIPI_CLK |
> +		  RKISP1_CIF_VI_ICCL_DCROP_CLK;
>  
> -	rkisp1_write(rkisp1, val, RKISP1_CIF_ICCL);
> +	rkisp1_write(rkisp1, val, RKISP1_CIF_VI_ICCL);
>  
>  	/* ensure sp and mp can run at the same time in V12 */
>  	if (rkisp1->media_dev.hw_revision == RKISP1_V12) {
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> index d41823c861ca..7a172d47d475 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> @@ -1058,8 +1058,8 @@ static void rkisp1_ie_config(struct rkisp1_params *params,
>  static void rkisp1_ie_enable(struct rkisp1_params *params, bool en)
>  {
>  	if (en) {
> -		rkisp1_param_set_bits(params, RKISP1_CIF_ICCL,
> -				      RKISP1_CIF_ICCL_IE_CLK);
> +		rkisp1_param_set_bits(params, RKISP1_CIF_VI_ICCL,
> +				      RKISP1_CIF_VI_ICCL_IE_CLK);
>  		rkisp1_write(params->rkisp1, RKISP1_CIF_IMG_EFF_CTRL_ENABLE,
>  			     RKISP1_CIF_IMG_EFF_CTRL);
>  		rkisp1_param_set_bits(params, RKISP1_CIF_IMG_EFF_CTRL,
> @@ -1067,8 +1067,8 @@ static void rkisp1_ie_enable(struct rkisp1_params *params, bool en)
>  	} else {
>  		rkisp1_param_clear_bits(params, RKISP1_CIF_IMG_EFF_CTRL,
>  					RKISP1_CIF_IMG_EFF_CTRL_ENABLE);
> -		rkisp1_param_clear_bits(params, RKISP1_CIF_ICCL,
> -					RKISP1_CIF_ICCL_IE_CLK);
> +		rkisp1_param_clear_bits(params, RKISP1_CIF_VI_ICCL,
> +					RKISP1_CIF_VI_ICCL_IE_CLK);
>  	}
>  }
>  
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> index 9e786de23480..4e2b73227e61 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-regs.h
> @@ -210,7 +210,7 @@
>  #define RKISP1_CIF_MI_XTD_FMT_CTRL_SP_CB_CR_SWAP	BIT(1)
>  #define RKISP1_CIF_MI_XTD_FMT_CTRL_DMA_CB_CR_SWAP	BIT(2)
>  
> -/* CCL */
> +/* VI_CCL */
>  #define RKISP1_CIF_CCL_CIF_CLK_DIS			BIT(2)
>  /* VI_ISP_CLK_CTRL */
>  #define RKISP1_CIF_CLK_CTRL_ISP_RAW			BIT(0)
> @@ -241,32 +241,32 @@
>  #define RKISP1_CIF_CLK_CTRL_RSZS			BIT(25)
>  #define RKISP1_CIF_CLK_CTRL_MIPI			BIT(26)
>  #define RKISP1_CIF_CLK_CTRL_MARVINMI			BIT(27)
> -/* ICCL */
> -#define RKISP1_CIF_ICCL_ISP_CLK				BIT(0)
> -#define RKISP1_CIF_ICCL_CP_CLK				BIT(1)
> -#define RKISP1_CIF_ICCL_RES_2				BIT(2)
> -#define RKISP1_CIF_ICCL_MRSZ_CLK			BIT(3)
> -#define RKISP1_CIF_ICCL_SRSZ_CLK			BIT(4)
> -#define RKISP1_CIF_ICCL_JPEG_CLK			BIT(5)
> -#define RKISP1_CIF_ICCL_MI_CLK				BIT(6)
> -#define RKISP1_CIF_ICCL_RES_7				BIT(7)
> -#define RKISP1_CIF_ICCL_IE_CLK				BIT(8)
> -#define RKISP1_CIF_ICCL_SIMP_CLK			BIT(9)
> -#define RKISP1_CIF_ICCL_SMIA_CLK			BIT(10)
> -#define RKISP1_CIF_ICCL_MIPI_CLK			BIT(11)
> -#define RKISP1_CIF_ICCL_DCROP_CLK			BIT(12)
> -/* IRCL */
> -#define RKISP1_CIF_IRCL_ISP_SW_RST			BIT(0)
> -#define RKISP1_CIF_IRCL_CP_SW_RST			BIT(1)
> -#define RKISP1_CIF_IRCL_YCS_SW_RST			BIT(2)
> -#define RKISP1_CIF_IRCL_MRSZ_SW_RST			BIT(3)
> -#define RKISP1_CIF_IRCL_SRSZ_SW_RST			BIT(4)
> -#define RKISP1_CIF_IRCL_JPEG_SW_RST			BIT(5)
> -#define RKISP1_CIF_IRCL_MI_SW_RST			BIT(6)
> -#define RKISP1_CIF_IRCL_CIF_SW_RST			BIT(7)
> -#define RKISP1_CIF_IRCL_IE_SW_RST			BIT(8)
> -#define RKISP1_CIF_IRCL_SI_SW_RST			BIT(9)
> -#define RKISP1_CIF_IRCL_MIPI_SW_RST			BIT(11)
> +/* VI_ICCL */
> +#define RKISP1_CIF_VI_ICCL_ISP_CLK			BIT(0)
> +#define RKISP1_CIF_VI_ICCL_CP_CLK			BIT(1)
> +#define RKISP1_CIF_VI_ICCL_RES_2			BIT(2)
> +#define RKISP1_CIF_VI_ICCL_MRSZ_CLK			BIT(3)
> +#define RKISP1_CIF_VI_ICCL_SRSZ_CLK			BIT(4)
> +#define RKISP1_CIF_VI_ICCL_JPEG_CLK			BIT(5)
> +#define RKISP1_CIF_VI_ICCL_MI_CLK			BIT(6)
> +#define RKISP1_CIF_VI_ICCL_RES_7			BIT(7)
> +#define RKISP1_CIF_VI_ICCL_IE_CLK			BIT(8)
> +#define RKISP1_CIF_VI_ICCL_SIMP_CLK			BIT(9)
> +#define RKISP1_CIF_VI_ICCL_SMIA_CLK			BIT(10)
> +#define RKISP1_CIF_VI_ICCL_MIPI_CLK			BIT(11)
> +#define RKISP1_CIF_VI_ICCL_DCROP_CLK			BIT(12)
> +/* VI_IRCL */
> +#define RKISP1_CIF_VI_IRCL_ISP_SW_RST			BIT(0)
> +#define RKISP1_CIF_VI_IRCL_CP_SW_RST			BIT(1)
> +#define RKISP1_CIF_VI_IRCL_YCS_SW_RST			BIT(2)
> +#define RKISP1_CIF_VI_IRCL_MRSZ_SW_RST			BIT(3)
> +#define RKISP1_CIF_VI_IRCL_SRSZ_SW_RST			BIT(4)
> +#define RKISP1_CIF_VI_IRCL_JPEG_SW_RST			BIT(5)
> +#define RKISP1_CIF_VI_IRCL_MI_SW_RST			BIT(6)
> +#define RKISP1_CIF_VI_IRCL_CIF_SW_RST			BIT(7)
> +#define RKISP1_CIF_VI_IRCL_IE_SW_RST			BIT(8)
> +#define RKISP1_CIF_VI_IRCL_SI_SW_RST			BIT(9)
> +#define RKISP1_CIF_VI_IRCL_MIPI_SW_RST			BIT(11)
>  
>  /* C_PROC_CTR */
>  #define RKISP1_CIF_C_PROC_CTR_ENABLE			BIT(0)
> @@ -687,11 +687,11 @@
>  /*                            CIF Registers                            */
>  /* =================================================================== */
>  #define RKISP1_CIF_CTRL_BASE			0x00000000
> -#define RKISP1_CIF_CCL				(RKISP1_CIF_CTRL_BASE + 0x00000000)
> +#define RKISP1_CIF_VI_CCL			(RKISP1_CIF_CTRL_BASE + 0x00000000)
>  #define RKISP1_CIF_VI_ID			(RKISP1_CIF_CTRL_BASE + 0x00000008)
>  #define RKISP1_CIF_VI_ISP_CLK_CTRL_V12		(RKISP1_CIF_CTRL_BASE + 0x0000000C)
> -#define RKISP1_CIF_ICCL				(RKISP1_CIF_CTRL_BASE + 0x00000010)
> -#define RKISP1_CIF_IRCL				(RKISP1_CIF_CTRL_BASE + 0x00000014)
> +#define RKISP1_CIF_VI_ICCL			(RKISP1_CIF_CTRL_BASE + 0x00000010)
> +#define RKISP1_CIF_VI_IRCL			(RKISP1_CIF_CTRL_BASE + 0x00000014)
>  #define RKISP1_CIF_VI_DPCL			(RKISP1_CIF_CTRL_BASE + 0x00000018)
>  
>  #define RKISP1_CIF_IMG_EFF_BASE			0x00000200
> -- 
> Regards,
> 
> Laurent Pinchart
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
