Return-Path: <SRS0=P5PH=D3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E529C4363A
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2020 17:13:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DA3522222D
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2020 17:13:32 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="IqFk07qb"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DA3522222D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1NuM/nxVIUgK248kDrufeHd8Br+TFiZzjASK2IYelbI=; b=IqFk07qbcViyxUCftbKKHOcoT
	A/7PU7lzBDvXM6Nyd3bgmE0rUkmqTv4w/SUzjSMUMm5OdBNBMEKDLn+li76l+6u1R1bYZ5EfqbDr9
	zGt+1adGnz+5CrqGICSqTFNA28Q5LQbmIpXZQrdZAiUMXmw/es5KosgCyE/FLWt06Kn5vPAaNYIDk
	rRt1o+BUCBZMUISSJ4yEjuQ44FFXPPKZ/8vvsLpirWxcGsz2zF8fhq4ZGVSsLJUwtxZgu0utf1mAX
	qakQr9K0XG0WM1K938V0P5Nf2xLGVAS40bYxoR/JYsiHGPEUti7hxFREL3f20wGP9dBq3E1dMnefO
	D+KZols8g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kUvCS-0004RS-Mo; Tue, 20 Oct 2020 17:13:28 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUvCQ-0004Q0-5N
 for linux-rockchip@lists.infradead.org; Tue, 20 Oct 2020 17:13:27 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 5141E1F44F72
Subject: Re: [PATCH 3/4] media: staging: rkisp1: params: remove unnecessary
 parentheses
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20201019205956.6980-1-dafna.hirschfeld@collabora.com>
 <20201019205956.6980-4-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <757aa5f5-b63d-1ca9-c694-b91737f34bd8@collabora.com>
Date: Tue, 20 Oct 2020 14:13:18 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20201019205956.6980-4-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201020_131326_400173_424D7130 
X-CRM114-Status: GOOD (  14.58  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: mchehab@kernel.org, dafna3@gmail.com, tfiga@chromium.org,
 hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 laurent.pinchart@ideasonboard.com, sakari.ailus@linux.intel.com,
 kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



On 10/19/20 5:59 PM, Dafna Hirschfeld wrote:
> There are several 'if' expression where double
> parentheses is used when one is enough.
> Remove the extra parentheses.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  drivers/staging/media/rkisp1/rkisp1-params.c | 32 ++++++++++----------
>  1 file changed, 16 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
> index 4ac401bc2164..a2df6b50c109 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-params.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-params.c
> @@ -891,7 +891,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>  	if ((module_en_update & RKISP1_CIF_ISP_MODULE_DPCC) ||
>  	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_DPCC)) {
>  		/*update dpc config */
> -		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_DPCC))
> +		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_DPCC)
>  			rkisp1_dpcc_config(params,
>  					   &new_params->others.dpcc_config);
>  
> @@ -910,7 +910,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>  	if ((module_en_update & RKISP1_CIF_ISP_MODULE_BLS) ||
>  	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_BLS)) {
>  		/* update bls config */
> -		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_BLS))
> +		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_BLS)
>  			rkisp1_bls_config(params,
>  					  &new_params->others.bls_config);
>  
> @@ -929,7 +929,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>  	if ((module_en_update & RKISP1_CIF_ISP_MODULE_SDG) ||
>  	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_SDG)) {
>  		/* update sdg config */
> -		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_SDG))
> +		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_SDG)
>  			rkisp1_sdg_config(params,
>  					  &new_params->others.sdg_config);
>  
> @@ -948,7 +948,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>  	if ((module_en_update & RKISP1_CIF_ISP_MODULE_LSC) ||
>  	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_LSC)) {
>  		/* update lsc config */
> -		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_LSC))
> +		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_LSC)
>  			rkisp1_lsc_config(params,
>  					  &new_params->others.lsc_config);
>  
> @@ -967,7 +967,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>  	if ((module_en_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN) ||
>  	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN)) {
>  		/* update awb gains */
> -		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN))
> +		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN)
>  			rkisp1_awb_gain_config(params,
>  					&new_params->others.awb_gain_config);
>  
> @@ -986,7 +986,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>  	if ((module_en_update & RKISP1_CIF_ISP_MODULE_BDM) ||
>  	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_BDM)) {
>  		/* update bdm config */
> -		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_BDM))
> +		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_BDM)
>  			rkisp1_bdm_config(params,
>  					  &new_params->others.bdm_config);
>  
> @@ -1005,7 +1005,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>  	if ((module_en_update & RKISP1_CIF_ISP_MODULE_FLT) ||
>  	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_FLT)) {
>  		/* update filter config */
> -		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_FLT))
> +		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_FLT)
>  			rkisp1_flt_config(params,
>  					  &new_params->others.flt_config);
>  
> @@ -1024,7 +1024,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>  	if ((module_en_update & RKISP1_CIF_ISP_MODULE_CTK) ||
>  	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_CTK)) {
>  		/* update ctk config */
> -		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_CTK))
> +		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_CTK)
>  			rkisp1_ctk_config(params,
>  					  &new_params->others.ctk_config);
>  
> @@ -1036,7 +1036,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>  	if ((module_en_update & RKISP1_CIF_ISP_MODULE_GOC) ||
>  	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_GOC)) {
>  		/* update goc config */
> -		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_GOC))
> +		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_GOC)
>  			rkisp1_goc_config(params,
>  					  &new_params->others.goc_config);
>  
> @@ -1055,7 +1055,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>  	if ((module_en_update & RKISP1_CIF_ISP_MODULE_CPROC) ||
>  	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_CPROC)) {
>  		/* update cproc config */
> -		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_CPROC)) {
> +		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_CPROC) {
>  			rkisp1_cproc_config(params,
>  					    &new_params->others.cproc_config);
>  		}
> @@ -1075,7 +1075,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>  	if ((module_en_update & RKISP1_CIF_ISP_MODULE_IE) ||
>  	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_IE)) {
>  		/* update ie config */
> -		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_IE))
> +		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_IE)
>  			rkisp1_ie_config(params,
>  					 &new_params->others.ie_config);
>  
> @@ -1087,7 +1087,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>  	if ((module_en_update & RKISP1_CIF_ISP_MODULE_DPF) ||
>  	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_DPF)) {
>  		/* update dpf  config */
> -		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_DPF))
> +		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_DPF)
>  			rkisp1_dpf_config(params,
>  					  &new_params->others.dpf_config);
>  
> @@ -1123,7 +1123,7 @@ static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
>  	if ((module_en_update & RKISP1_CIF_ISP_MODULE_AWB) ||
>  	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB)) {
>  		/* update awb config */
> -		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB))
> +		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB)
>  			rkisp1_awb_meas_config(params,
>  					&new_params->meas.awb_meas_config);
>  
> @@ -1136,7 +1136,7 @@ static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
>  	if ((module_en_update & RKISP1_CIF_ISP_MODULE_AFC) ||
>  	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_AFC)) {
>  		/* update afc config */
> -		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_AFC))
> +		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AFC)
>  			rkisp1_afm_config(params,
>  					  &new_params->meas.afc_config);
>  
> @@ -1155,7 +1155,7 @@ static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
>  	if ((module_en_update & RKISP1_CIF_ISP_MODULE_HST) ||
>  	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_HST)) {
>  		/* update hst config */
> -		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_HST))
> +		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_HST)
>  			rkisp1_hst_config(params,
>  					  &new_params->meas.hst_config);
>  
> @@ -1168,7 +1168,7 @@ static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
>  	if ((module_en_update & RKISP1_CIF_ISP_MODULE_AEC) ||
>  	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_AEC)) {
>  		/* update aec config */
> -		if ((module_cfg_update & RKISP1_CIF_ISP_MODULE_AEC))
> +		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AEC)
>  			rkisp1_aec_config(params,
>  					  &new_params->meas.aec_config);
>  
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
