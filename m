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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04A52C388F7
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2020 17:13:31 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6EF622222D
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2020 17:13:30 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="WtWnVOlq"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6EF622222D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F/+1wwYppy5/t7vfkeAYC7fO7TU+jPXCsCuccMiCh8E=; b=WtWnVOlq81nMACl/WgfVvmT9Z
	UCYkCstYCsb5Ic2ky3/bOMUPvXp7WPAc17bNUPPAM5/u63t7jF4Pt1C+bpQj38QE4mJWBA93b0luK
	yQTRA4cXIFuFFXIRhS7QFGqsuHsHKbN8bmU6a5fm6w1bS1QyVfpnF27FMFUKgxmfuQU9t4PNi7u1f
	2N1SA24l4nkwwooFO7DO7HAE/J0tv2+F4tsRD6XZWY+W128jH9DcOkG0k1JPdbDyq7LWRb84ZJRDm
	JPpFN4bg01Ixkp5MNb1jdheW18TttwiftxuKqgoG0fhAmOH4bH2X3mWa80Hw9i2UjUbd74wPecCdP
	GRbGaVGAA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kUvCP-0004Q7-PZ; Tue, 20 Oct 2020 17:13:25 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUvCN-0004P3-Bj
 for linux-rockchip@lists.infradead.org; Tue, 20 Oct 2020 17:13:24 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id EFEA91F44F56
Subject: Re: [PATCH 2/4] media: staging: rkisp1: params: remove unnecessary
 "!!"
To: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>,
 linux-media@vger.kernel.org
References: <20201019205956.6980-1-dafna.hirschfeld@collabora.com>
 <20201019205956.6980-3-dafna.hirschfeld@collabora.com>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <e228b9ca-58a6-b70d-ff8d-d0e73f09d276@collabora.com>
Date: Tue, 20 Oct 2020 14:13:15 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <20201019205956.6980-3-dafna.hirschfeld@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201020_131323_587846_A1E8EACC 
X-CRM114-Status: GOOD (  15.08  )
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
> There are several 'if' conditions of the form:
> 
> if (!!(module_ens & SOME_FLAG))
> 
> Those can be replaced with:
> 
> if (module_ens & SOME_FLAG)
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

Thanks
Helen

> ---
>  drivers/staging/media/rkisp1/rkisp1-params.c | 24 ++++++++++----------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
> index 986d293201e6..4ac401bc2164 100644
> --- a/drivers/staging/media/rkisp1/rkisp1-params.c
> +++ b/drivers/staging/media/rkisp1/rkisp1-params.c
> @@ -896,7 +896,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>  					   &new_params->others.dpcc_config);
>  
>  		if (module_en_update & RKISP1_CIF_ISP_MODULE_DPCC) {
> -			if (!!(module_ens & RKISP1_CIF_ISP_MODULE_DPCC))
> +			if (module_ens & RKISP1_CIF_ISP_MODULE_DPCC)
>  				rkisp1_param_set_bits(params,
>  						      RKISP1_CIF_ISP_DPCC_MODE,
>  						      RKISP1_CIF_ISP_DPCC_ENA);
> @@ -915,7 +915,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>  					  &new_params->others.bls_config);
>  
>  		if (module_en_update & RKISP1_CIF_ISP_MODULE_BLS) {
> -			if (!!(module_ens & RKISP1_CIF_ISP_MODULE_BLS))
> +			if (module_ens & RKISP1_CIF_ISP_MODULE_BLS)
>  				rkisp1_param_set_bits(params,
>  						      RKISP1_CIF_ISP_BLS_CTRL,
>  						      RKISP1_CIF_ISP_BLS_ENA);
> @@ -934,7 +934,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>  					  &new_params->others.sdg_config);
>  
>  		if (module_en_update & RKISP1_CIF_ISP_MODULE_SDG) {
> -			if (!!(module_ens & RKISP1_CIF_ISP_MODULE_SDG))
> +			if (module_ens & RKISP1_CIF_ISP_MODULE_SDG)
>  				rkisp1_param_set_bits(params,
>  					RKISP1_CIF_ISP_CTRL,
>  					RKISP1_CIF_ISP_CTRL_ISP_GAMMA_IN_ENA);
> @@ -953,7 +953,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>  					  &new_params->others.lsc_config);
>  
>  		if (module_en_update & RKISP1_CIF_ISP_MODULE_LSC) {
> -			if (!!(module_ens & RKISP1_CIF_ISP_MODULE_LSC))
> +			if (module_ens & RKISP1_CIF_ISP_MODULE_LSC)
>  				rkisp1_param_set_bits(params,
>  						RKISP1_CIF_ISP_LSC_CTRL,
>  						RKISP1_CIF_ISP_LSC_CTRL_ENA);
> @@ -972,7 +972,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>  					&new_params->others.awb_gain_config);
>  
>  		if (module_en_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN) {
> -			if (!!(module_ens & RKISP1_CIF_ISP_MODULE_AWB_GAIN))
> +			if (module_ens & RKISP1_CIF_ISP_MODULE_AWB_GAIN)
>  				rkisp1_param_set_bits(params,
>  					RKISP1_CIF_ISP_CTRL,
>  					RKISP1_CIF_ISP_CTRL_ISP_AWB_ENA);
> @@ -991,7 +991,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>  					  &new_params->others.bdm_config);
>  
>  		if (module_en_update & RKISP1_CIF_ISP_MODULE_BDM) {
> -			if (!!(module_ens & RKISP1_CIF_ISP_MODULE_BDM))
> +			if (module_ens & RKISP1_CIF_ISP_MODULE_BDM)
>  				rkisp1_param_set_bits(params,
>  						RKISP1_CIF_ISP_DEMOSAIC,
>  						RKISP1_CIF_ISP_DEMOSAIC_BYPASS);
> @@ -1010,7 +1010,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>  					  &new_params->others.flt_config);
>  
>  		if (module_en_update & RKISP1_CIF_ISP_MODULE_FLT) {
> -			if (!!(module_ens & RKISP1_CIF_ISP_MODULE_FLT))
> +			if (module_ens & RKISP1_CIF_ISP_MODULE_FLT)
>  				rkisp1_param_set_bits(params,
>  						      RKISP1_CIF_ISP_FILT_MODE,
>  						      RKISP1_CIF_ISP_FLT_ENA);
> @@ -1041,7 +1041,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>  					  &new_params->others.goc_config);
>  
>  		if (module_en_update & RKISP1_CIF_ISP_MODULE_GOC) {
> -			if (!!(module_ens & RKISP1_CIF_ISP_MODULE_GOC))
> +			if (module_ens & RKISP1_CIF_ISP_MODULE_GOC)
>  				rkisp1_param_set_bits(params,
>  					RKISP1_CIF_ISP_CTRL,
>  					RKISP1_CIF_ISP_CTRL_ISP_GAMMA_OUT_ENA);
> @@ -1061,7 +1061,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>  		}
>  
>  		if (module_en_update & RKISP1_CIF_ISP_MODULE_CPROC) {
> -			if (!!(module_ens & RKISP1_CIF_ISP_MODULE_CPROC))
> +			if (module_ens & RKISP1_CIF_ISP_MODULE_CPROC)
>  				rkisp1_param_set_bits(params,
>  						RKISP1_CIF_C_PROC_CTRL,
>  						RKISP1_CIF_C_PROC_CTR_ENABLE);
> @@ -1092,7 +1092,7 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>  					  &new_params->others.dpf_config);
>  
>  		if (module_en_update & RKISP1_CIF_ISP_MODULE_DPF) {
> -			if (!!(module_ens & RKISP1_CIF_ISP_MODULE_DPF))
> +			if (module_ens & RKISP1_CIF_ISP_MODULE_DPF)
>  				rkisp1_param_set_bits(params,
>  						   RKISP1_CIF_ISP_DPF_MODE,
>  						   RKISP1_CIF_ISP_DPF_MODE_EN);
> @@ -1141,7 +1141,7 @@ static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
>  					  &new_params->meas.afc_config);
>  
>  		if (module_en_update & RKISP1_CIF_ISP_MODULE_AFC) {
> -			if (!!(module_ens & RKISP1_CIF_ISP_MODULE_AFC))
> +			if (module_ens & RKISP1_CIF_ISP_MODULE_AFC)
>  				rkisp1_param_set_bits(params,
>  						      RKISP1_CIF_ISP_AFM_CTRL,
>  						      RKISP1_CIF_ISP_AFM_ENA);
> @@ -1173,7 +1173,7 @@ static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
>  					  &new_params->meas.aec_config);
>  
>  		if (module_en_update & RKISP1_CIF_ISP_MODULE_AEC) {
> -			if (!!(module_ens & RKISP1_CIF_ISP_MODULE_AEC))
> +			if (module_ens & RKISP1_CIF_ISP_MODULE_AEC)
>  				rkisp1_param_set_bits(params,
>  						      RKISP1_CIF_ISP_EXP_CTRL,
>  						      RKISP1_CIF_ISP_EXP_ENA);
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
