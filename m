Return-Path: <SRS0=P5PH=D3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E7317C4363A
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2020 17:21:42 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1C75A2222D
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2020 17:21:41 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="MfP47t1C"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1C75A2222D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/iO+AJgoxETHpjwSTz8VlUuVGe8eEUhfjsMLfQo3YoA=; b=MfP47t1CaqVJyp1YmZwxUMrf1
	lorjQ6+jhniFIccHj+GTTGY/4mklRVwczaXVv5BxaedcXF3aOdUhboYt6d1QOmwpgpZIGhD4CYtLZ
	YuwHuOZ8ZM6IMlA99+W2rTsm9BPnMOdVk8uJci6zS1KaNjh0ExY3dU2So1TuMgGmXqB175SJZs3L3
	vmhzl8CaSNzOPS3jcLgb+x+rD6GvIRgbR201KxvqEpISs6UzLpaYO37HKhlF2LNYzEaN98affZNJ2
	yZGKPv63Mf9T2A8kNPXmF7pzUbOdq4HJt6nr7VPOqNcFeWh+dO+qLxxxK7rfR1Xf1npGzjXvheld0
	WRgdi2Sbw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kUvKJ-00056D-VQ; Tue, 20 Oct 2020 17:21:36 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kUvKI-00055m-56
 for linux-rockchip@lists.infradead.org; Tue, 20 Oct 2020 17:21:35 +0000
Received: from [IPv6:2003:c7:cf43:5b00:28a3:2f4e:277d:2227]
 (p200300c7cf435b0028a32f4e277d2227.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf43:5b00:28a3:2f4e:277d:2227])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id DA3C91F45294;
 Tue, 20 Oct 2020 18:21:32 +0100 (BST)
Subject: Re: [PATCH 4/4] media: staging: rkisp1: params: remove extra 'if'
 conditions
To: Helen Koike <helen.koike@collabora.com>, linux-media@vger.kernel.org
References: <20201019205956.6980-1-dafna.hirschfeld@collabora.com>
 <20201019205956.6980-5-dafna.hirschfeld@collabora.com>
 <d99172ee-6117-ad75-9e78-8dd1c13fa905@collabora.com>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <d7101ed0-23a6-a3d6-7392-ac05f8ffb09f@collabora.com>
Date: Tue, 20 Oct 2020 19:21:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <d99172ee-6117-ad75-9e78-8dd1c13fa905@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201020_132134_384536_78C0D76F 
X-CRM114-Status: GOOD (  24.83  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

Am 20.10.20 um 19:13 schrieb Helen Koike:
> Hi Dafna,
> 
> On 10/19/20 5:59 PM, Dafna Hirschfeld wrote:
>> There is a repeating code pattern:
>>
>> if (a || b) {
>> 	if (a)
>> 		...
>> 	if (b)
>> 		...
>> }
>>
>> In this pattern, the first 'if' is redundant.
>> The code can be replaced with:
>>
>> if (a)
>> 	...
>> if (b)
>> 	...
>>
>> In addition, the patch corrects alignment issues
>> reported by checkpatch.
>> This solves the TODO item
>> "Fix checkpatch errors."
>>
>> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
>> ---
>>   drivers/staging/media/rkisp1/TODO            |   1 -
>>   drivers/staging/media/rkisp1/rkisp1-params.c | 420 ++++++++-----------
>>   2 files changed, 175 insertions(+), 246 deletions(-)
>>
>> diff --git a/drivers/staging/media/rkisp1/TODO b/drivers/staging/media/rkisp1/TODO
>> index e7c8398fc2ce..647ab482d032 100644
>> --- a/drivers/staging/media/rkisp1/TODO
>> +++ b/drivers/staging/media/rkisp1/TODO
>> @@ -1,5 +1,4 @@
>>   * Fix pad format size for statistics and parameters entities.
>> -* Fix checkpatch errors.
>>   * Add uapi docs. Remember to add documentation of how quantization is handled.
>>   * streaming paths (mainpath and selfpath) check if the other path is streaming
>>   in several places of the code, review this, specially that it doesn't seem it
>> diff --git a/drivers/staging/media/rkisp1/rkisp1-params.c b/drivers/staging/media/rkisp1/rkisp1-params.c
>> index a2df6b50c109..c8585b6ee918 100644
>> --- a/drivers/staging/media/rkisp1/rkisp1-params.c
>> +++ b/drivers/staging/media/rkisp1/rkisp1-params.c
>> @@ -186,7 +186,7 @@ static void rkisp1_bls_config(struct rkisp1_params *params,
>>   /* ISP LS correction interface function */
>>   static void
>>   rkisp1_lsc_correct_matrix_config(struct rkisp1_params *params,
>> -				const struct rkisp1_cif_isp_lsc_config *pconfig)
>> +				 const struct rkisp1_cif_isp_lsc_config *pconfig)
> 
> I think this should be part of the alignment patch.
> 
>>   {
>>   	unsigned int isp_lsc_status, sram_addr, isp_lsc_table_sel, i, j, data;
>>   
>> @@ -434,7 +434,7 @@ static void rkisp1_ctk_enable(struct rkisp1_params *params, bool en)
>>   
>>   /* ISP White Balance Mode */
>>   static void rkisp1_awb_meas_config(struct rkisp1_params *params,
>> -			const struct rkisp1_cif_isp_awb_meas_config *arg)
>> +				   const struct rkisp1_cif_isp_awb_meas_config *arg)
> 
> This too.
> 
>>   {
>>   	u32 reg_val = 0;
>>   	/* based on the mode,configure the awb module */
>> @@ -888,226 +888,171 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>>   	module_cfg_update = new_params->module_cfg_update;
>>   	module_ens = new_params->module_ens;
>>   
>> -	if ((module_en_update & RKISP1_CIF_ISP_MODULE_DPCC) ||
>> -	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_DPCC)) {
>> -		/*update dpc config */
>> -		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_DPCC)
>> -			rkisp1_dpcc_config(params,
>> -					   &new_params->others.dpcc_config);
>> -
>> -		if (module_en_update & RKISP1_CIF_ISP_MODULE_DPCC) {
>> -			if (module_ens & RKISP1_CIF_ISP_MODULE_DPCC)
>> -				rkisp1_param_set_bits(params,
>> -						      RKISP1_CIF_ISP_DPCC_MODE,
>> -						      RKISP1_CIF_ISP_DPCC_ENA);
>> -			else
>> -				rkisp1_param_clear_bits(params,
>> +	/*update dpc config */
>> +	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_DPCC)
>> +		rkisp1_dpcc_config(params,
>> +				   &new_params->others.dpcc_config);
>> +
>> +	if (module_en_update & RKISP1_CIF_ISP_MODULE_DPCC) {
>> +		if (module_ens & RKISP1_CIF_ISP_MODULE_DPCC)
>> +			rkisp1_param_set_bits(params,
>> +					      RKISP1_CIF_ISP_DPCC_MODE,
>> +					      RKISP1_CIF_ISP_DPCC_ENA);
>> +		else
>> +			rkisp1_param_clear_bits(params,
>>   						RKISP1_CIF_ISP_DPCC_MODE,
>>   						RKISP1_CIF_ISP_DPCC_ENA);
>> -		}
>>   	}
>>   
>> -	if ((module_en_update & RKISP1_CIF_ISP_MODULE_BLS) ||
>> -	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_BLS)) {
>> -		/* update bls config */
>> -		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_BLS)
>> -			rkisp1_bls_config(params,
>> -					  &new_params->others.bls_config);
>> -
>> -		if (module_en_update & RKISP1_CIF_ISP_MODULE_BLS) {
>> -			if (module_ens & RKISP1_CIF_ISP_MODULE_BLS)
>> -				rkisp1_param_set_bits(params,
>> -						      RKISP1_CIF_ISP_BLS_CTRL,
>> -						      RKISP1_CIF_ISP_BLS_ENA);
>> -			else
>> -				rkisp1_param_clear_bits(params,
>> -							RKISP1_CIF_ISP_BLS_CTRL,
>> -							RKISP1_CIF_ISP_BLS_ENA);
>> -		}
>> +	/* update bls config */
>> +	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_BLS)
>> +		rkisp1_bls_config(params,
>> +				  &new_params->others.bls_config);
>> +
>> +	if (module_en_update & RKISP1_CIF_ISP_MODULE_BLS) {
>> +		if (module_ens & RKISP1_CIF_ISP_MODULE_BLS)
>> +			rkisp1_param_set_bits(params,
>> +					      RKISP1_CIF_ISP_BLS_CTRL,
>> +					      RKISP1_CIF_ISP_BLS_ENA);
>> +		else
>> +			rkisp1_param_clear_bits(params,
>> +						RKISP1_CIF_ISP_BLS_CTRL,
>> +						RKISP1_CIF_ISP_BLS_ENA);
>>   	}
>>   
>> -	if ((module_en_update & RKISP1_CIF_ISP_MODULE_SDG) ||
>> -	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_SDG)) {
>> -		/* update sdg config */
>> -		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_SDG)
>> -			rkisp1_sdg_config(params,
>> -					  &new_params->others.sdg_config);
>> -
>> -		if (module_en_update & RKISP1_CIF_ISP_MODULE_SDG) {
>> -			if (module_ens & RKISP1_CIF_ISP_MODULE_SDG)
>> -				rkisp1_param_set_bits(params,
>> -					RKISP1_CIF_ISP_CTRL,
>> -					RKISP1_CIF_ISP_CTRL_ISP_GAMMA_IN_ENA);
>> -			else
>> -				rkisp1_param_clear_bits(params,
>> -					RKISP1_CIF_ISP_CTRL,
>> -					RKISP1_CIF_ISP_CTRL_ISP_GAMMA_IN_ENA);
>> -		}
>> +	/* update sdg config */
>> +	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_SDG)
>> +		rkisp1_sdg_config(params,
>> +				  &new_params->others.sdg_config);
>> +
>> +	if (module_en_update & RKISP1_CIF_ISP_MODULE_SDG) {
>> +		if (module_ens & RKISP1_CIF_ISP_MODULE_SDG)
>> +			rkisp1_param_set_bits(params, RKISP1_CIF_ISP_CTRL,
>> +					      RKISP1_CIF_ISP_CTRL_ISP_GAMMA_IN_ENA);
>> +		else
>> +			rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_CTRL,
>> +						RKISP1_CIF_ISP_CTRL_ISP_GAMMA_IN_ENA);
>>   	}
>>   
>> -	if ((module_en_update & RKISP1_CIF_ISP_MODULE_LSC) ||
>> -	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_LSC)) {
>> -		/* update lsc config */
>> -		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_LSC)
>> -			rkisp1_lsc_config(params,
>> -					  &new_params->others.lsc_config);
>> -
>> -		if (module_en_update & RKISP1_CIF_ISP_MODULE_LSC) {
>> -			if (module_ens & RKISP1_CIF_ISP_MODULE_LSC)
>> -				rkisp1_param_set_bits(params,
>> -						RKISP1_CIF_ISP_LSC_CTRL,
>> -						RKISP1_CIF_ISP_LSC_CTRL_ENA);
>> -			else
>> -				rkisp1_param_clear_bits(params,
>> -						RKISP1_CIF_ISP_LSC_CTRL,
>> +	/* update lsc config */
>> +	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_LSC)
>> +		rkisp1_lsc_config(params,
>> +				  &new_params->others.lsc_config);
>> +
>> +	if (module_en_update & RKISP1_CIF_ISP_MODULE_LSC) {
>> +		if (module_ens & RKISP1_CIF_ISP_MODULE_LSC)
>> +			rkisp1_param_set_bits(params, RKISP1_CIF_ISP_LSC_CTRL,
>> +					      RKISP1_CIF_ISP_LSC_CTRL_ENA);
>> +		else
>> +			rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_LSC_CTRL,
>>   						RKISP1_CIF_ISP_LSC_CTRL_ENA);
>> -		}
>>   	}
>>   
>> -	if ((module_en_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN) ||
>> -	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN)) {
>> -		/* update awb gains */
>> -		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN)
>> -			rkisp1_awb_gain_config(params,
>> -					&new_params->others.awb_gain_config);
>> -
>> -		if (module_en_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN) {
>> -			if (module_ens & RKISP1_CIF_ISP_MODULE_AWB_GAIN)
>> -				rkisp1_param_set_bits(params,
>> -					RKISP1_CIF_ISP_CTRL,
>> -					RKISP1_CIF_ISP_CTRL_ISP_AWB_ENA);
>> -			else
>> -				rkisp1_param_clear_bits(params,
>> -					RKISP1_CIF_ISP_CTRL,
>> -					RKISP1_CIF_ISP_CTRL_ISP_AWB_ENA);
>> -		}
>> +	/* update awb gains */
>> +	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN)
>> +		rkisp1_awb_gain_config(params, &new_params->others.awb_gain_config);
>> +
>> +	if (module_en_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN) {
>> +		if (module_ens & RKISP1_CIF_ISP_MODULE_AWB_GAIN)
>> +			rkisp1_param_set_bits(params, RKISP1_CIF_ISP_CTRL,
>> +					      RKISP1_CIF_ISP_CTRL_ISP_AWB_ENA);
>> +		else
>> +			rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_CTRL,
>> +						RKISP1_CIF_ISP_CTRL_ISP_AWB_ENA);
>>   	}
>>   
>> -	if ((module_en_update & RKISP1_CIF_ISP_MODULE_BDM) ||
>> -	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_BDM)) {
>> -		/* update bdm config */
>> -		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_BDM)
>> -			rkisp1_bdm_config(params,
>> -					  &new_params->others.bdm_config);
>> -
>> -		if (module_en_update & RKISP1_CIF_ISP_MODULE_BDM) {
>> -			if (module_ens & RKISP1_CIF_ISP_MODULE_BDM)
>> -				rkisp1_param_set_bits(params,
>> -						RKISP1_CIF_ISP_DEMOSAIC,
>> -						RKISP1_CIF_ISP_DEMOSAIC_BYPASS);
>> -			else
>> -				rkisp1_param_clear_bits(params,
>> -						RKISP1_CIF_ISP_DEMOSAIC,
>> +	/* update bdm config */
>> +	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_BDM)
>> +		rkisp1_bdm_config(params,
>> +				  &new_params->others.bdm_config);
>> +
>> +	if (module_en_update & RKISP1_CIF_ISP_MODULE_BDM) {
>> +		if (module_ens & RKISP1_CIF_ISP_MODULE_BDM)
>> +			rkisp1_param_set_bits(params, RKISP1_CIF_ISP_DEMOSAIC,
>> +					      RKISP1_CIF_ISP_DEMOSAIC_BYPASS);
>> +		else
>> +			rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_DEMOSAIC,
>>   						RKISP1_CIF_ISP_DEMOSAIC_BYPASS);
>> -		}
>>   	}
>>   
>> -	if ((module_en_update & RKISP1_CIF_ISP_MODULE_FLT) ||
>> -	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_FLT)) {
>> -		/* update filter config */
>> -		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_FLT)
>> -			rkisp1_flt_config(params,
>> -					  &new_params->others.flt_config);
>> -
>> -		if (module_en_update & RKISP1_CIF_ISP_MODULE_FLT) {
>> -			if (module_ens & RKISP1_CIF_ISP_MODULE_FLT)
>> -				rkisp1_param_set_bits(params,
>> -						      RKISP1_CIF_ISP_FILT_MODE,
>> -						      RKISP1_CIF_ISP_FLT_ENA);
>> -			else
>> -				rkisp1_param_clear_bits(params,
>> -						RKISP1_CIF_ISP_FILT_MODE,
>> +	/* update filter config */
>> +	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_FLT)
>> +		rkisp1_flt_config(params,
>> +				  &new_params->others.flt_config);
>> +
>> +	if (module_en_update & RKISP1_CIF_ISP_MODULE_FLT) {
>> +		if (module_ens & RKISP1_CIF_ISP_MODULE_FLT)
>> +			rkisp1_param_set_bits(params,
>> +					      RKISP1_CIF_ISP_FILT_MODE,
>> +					      RKISP1_CIF_ISP_FLT_ENA);
>> +		else
>> +			rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_FILT_MODE,
>>   						RKISP1_CIF_ISP_FLT_ENA);
>> -		}
>>   	}
>>   
>> -	if ((module_en_update & RKISP1_CIF_ISP_MODULE_CTK) ||
>> -	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_CTK)) {
>> -		/* update ctk config */
>> -		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_CTK)
>> -			rkisp1_ctk_config(params,
>> -					  &new_params->others.ctk_config);
>> +	/* update ctk config */
>> +	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_CTK)
>> +		rkisp1_ctk_config(params,
>> +				  &new_params->others.ctk_config);
>>   
>> -		if (module_en_update & RKISP1_CIF_ISP_MODULE_CTK)
>> -			rkisp1_ctk_enable(params,
>> -				!!(module_ens & RKISP1_CIF_ISP_MODULE_CTK));
>> -	}
>> +	if (module_en_update & RKISP1_CIF_ISP_MODULE_CTK)
>> +		rkisp1_ctk_enable(params, !!(module_ens & RKISP1_CIF_ISP_MODULE_CTK));
>>   
>> -	if ((module_en_update & RKISP1_CIF_ISP_MODULE_GOC) ||
>> -	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_GOC)) {
>> -		/* update goc config */
>> -		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_GOC)
>> -			rkisp1_goc_config(params,
>> -					  &new_params->others.goc_config);
>> -
>> -		if (module_en_update & RKISP1_CIF_ISP_MODULE_GOC) {
>> -			if (module_ens & RKISP1_CIF_ISP_MODULE_GOC)
>> -				rkisp1_param_set_bits(params,
>> -					RKISP1_CIF_ISP_CTRL,
>> -					RKISP1_CIF_ISP_CTRL_ISP_GAMMA_OUT_ENA);
>> -			else
>> -				rkisp1_param_clear_bits(params,
>> -					RKISP1_CIF_ISP_CTRL,
>> -					RKISP1_CIF_ISP_CTRL_ISP_GAMMA_OUT_ENA);
>> -		}
>> +	/* update goc config */
>> +	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_GOC)
>> +		rkisp1_goc_config(params,
>> +				  &new_params->others.goc_config);
>> +
>> +	if (module_en_update & RKISP1_CIF_ISP_MODULE_GOC) {
>> +		if (module_ens & RKISP1_CIF_ISP_MODULE_GOC)
>> +			rkisp1_param_set_bits(params, RKISP1_CIF_ISP_CTRL,
>> +					      RKISP1_CIF_ISP_CTRL_ISP_GAMMA_OUT_ENA);
>> +		else
>> +			rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_CTRL,
>> +						RKISP1_CIF_ISP_CTRL_ISP_GAMMA_OUT_ENA);
>>   	}
>>   
>> -	if ((module_en_update & RKISP1_CIF_ISP_MODULE_CPROC) ||
>> -	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_CPROC)) {
>> -		/* update cproc config */
>> -		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_CPROC) {
>> -			rkisp1_cproc_config(params,
>> -					    &new_params->others.cproc_config);
>> -		}
>> +	/* update cproc config */
>> +	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_CPROC) {
>> +		rkisp1_cproc_config(params,
>> +				    &new_params->others.cproc_config);
>> +	}
> 
> No need for the curly braces.
> 
>>   
>> -		if (module_en_update & RKISP1_CIF_ISP_MODULE_CPROC) {
>> -			if (module_ens & RKISP1_CIF_ISP_MODULE_CPROC)
>> -				rkisp1_param_set_bits(params,
>> -						RKISP1_CIF_C_PROC_CTRL,
>> -						RKISP1_CIF_C_PROC_CTR_ENABLE);
>> -			else
>> -				rkisp1_param_clear_bits(params,
>> -						RKISP1_CIF_C_PROC_CTRL,
>> +	if (module_en_update & RKISP1_CIF_ISP_MODULE_CPROC) {
>> +		if (module_ens & RKISP1_CIF_ISP_MODULE_CPROC)
>> +			rkisp1_param_set_bits(params, RKISP1_CIF_C_PROC_CTRL,
>> +					      RKISP1_CIF_C_PROC_CTR_ENABLE);
>> +		else
>> +			rkisp1_param_clear_bits(params, RKISP1_CIF_C_PROC_CTRL,
>>   						RKISP1_CIF_C_PROC_CTR_ENABLE);
>> -		}
>>   	}
>>   
>> -	if ((module_en_update & RKISP1_CIF_ISP_MODULE_IE) ||
>> -	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_IE)) {
>> -		/* update ie config */
>> -		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_IE)
>> -			rkisp1_ie_config(params,
>> -					 &new_params->others.ie_config);
>> +	/* update ie config */
>> +	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_IE)
>> +		rkisp1_ie_config(params,
>> +				 &new_params->others.ie_config);
>>   
>> -		if (module_en_update & RKISP1_CIF_ISP_MODULE_IE)
>> -			rkisp1_ie_enable(params,
>> -				!!(module_ens & RKISP1_CIF_ISP_MODULE_IE));
>> -	}
>> +	if (module_en_update & RKISP1_CIF_ISP_MODULE_IE)
>> +		rkisp1_ie_enable(params, !!(module_ens & RKISP1_CIF_ISP_MODULE_IE));
>> +
>> +	/* update dpf  config */
> 
> Could you remove this extra space between "dpf" and "config" ?

I think it is better to add your suggestions on a separate
patch so not to overload the patch.

> 
> 
> I'm glad to see a level of identation gone.

:-)

Thanks,
Dafna

> 
> With these changes
> 
> Acked-by: Helen Koike <helen.koike@collabora.com>
> 
> Thanks
> Helen
> 
>> +	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_DPF)
>> +		rkisp1_dpf_config(params,
>> +				  &new_params->others.dpf_config);
>>   
>> -	if ((module_en_update & RKISP1_CIF_ISP_MODULE_DPF) ||
>> -	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_DPF)) {
>> -		/* update dpf  config */
>> -		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_DPF)
>> -			rkisp1_dpf_config(params,
>> -					  &new_params->others.dpf_config);
>> -
>> -		if (module_en_update & RKISP1_CIF_ISP_MODULE_DPF) {
>> -			if (module_ens & RKISP1_CIF_ISP_MODULE_DPF)
>> -				rkisp1_param_set_bits(params,
>> -						   RKISP1_CIF_ISP_DPF_MODE,
>> -						   RKISP1_CIF_ISP_DPF_MODE_EN);
>> -			else
>> -				rkisp1_param_clear_bits(params,
>> -						RKISP1_CIF_ISP_DPF_MODE,
>> +	if (module_en_update & RKISP1_CIF_ISP_MODULE_DPF) {
>> +		if (module_ens & RKISP1_CIF_ISP_MODULE_DPF)
>> +			rkisp1_param_set_bits(params, RKISP1_CIF_ISP_DPF_MODE,
>> +					      RKISP1_CIF_ISP_DPF_MODE_EN);
>> +		else
>> +			rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_DPF_MODE,
>>   						RKISP1_CIF_ISP_DPF_MODE_EN);
>> -		}
>>   	}
>>   
>>   	if ((module_en_update & RKISP1_CIF_ISP_MODULE_DPF_STRENGTH) ||
>>   	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_DPF_STRENGTH)) {
>>   		/* update dpf strength config */
>> -		rkisp1_dpf_strength_config(params,
>> -				&new_params->others.dpf_strength_config);
>> +		rkisp1_dpf_strength_config(params, &new_params->others.dpf_strength_config);
>>   	}
>>   }
>>   
>> @@ -1120,68 +1065,53 @@ static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
>>   	module_cfg_update = new_params->module_cfg_update;
>>   	module_ens = new_params->module_ens;
>>   
>> -	if ((module_en_update & RKISP1_CIF_ISP_MODULE_AWB) ||
>> -	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB)) {
>> -		/* update awb config */
>> -		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB)
>> -			rkisp1_awb_meas_config(params,
>> -					&new_params->meas.awb_meas_config);
>> -
>> -		if (module_en_update & RKISP1_CIF_ISP_MODULE_AWB)
>> -			rkisp1_awb_meas_enable(params,
>> -				&new_params->meas.awb_meas_config,
>> -				!!(module_ens & RKISP1_CIF_ISP_MODULE_AWB));
>> -	}
>> +	/* update awb config */
>> +	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB)
>> +		rkisp1_awb_meas_config(params, &new_params->meas.awb_meas_config);
>>   
>> -	if ((module_en_update & RKISP1_CIF_ISP_MODULE_AFC) ||
>> -	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_AFC)) {
>> -		/* update afc config */
>> -		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AFC)
>> -			rkisp1_afm_config(params,
>> -					  &new_params->meas.afc_config);
>> -
>> -		if (module_en_update & RKISP1_CIF_ISP_MODULE_AFC) {
>> -			if (module_ens & RKISP1_CIF_ISP_MODULE_AFC)
>> -				rkisp1_param_set_bits(params,
>> -						      RKISP1_CIF_ISP_AFM_CTRL,
>> -						      RKISP1_CIF_ISP_AFM_ENA);
>> -			else
>> -				rkisp1_param_clear_bits(params,
>> -							RKISP1_CIF_ISP_AFM_CTRL,
>> -							RKISP1_CIF_ISP_AFM_ENA);
>> -		}
>> -	}
>> +	if (module_en_update & RKISP1_CIF_ISP_MODULE_AWB)
>> +		rkisp1_awb_meas_enable(params, &new_params->meas.awb_meas_config,
>> +				       !!(module_ens & RKISP1_CIF_ISP_MODULE_AWB));
>> +
>> +	/* update afc config */
>> +	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AFC)
>> +		rkisp1_afm_config(params,
>> +				  &new_params->meas.afc_config);
>>   
>> -	if ((module_en_update & RKISP1_CIF_ISP_MODULE_HST) ||
>> -	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_HST)) {
>> -		/* update hst config */
>> -		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_HST)
>> -			rkisp1_hst_config(params,
>> -					  &new_params->meas.hst_config);
>> -
>> -		if (module_en_update & RKISP1_CIF_ISP_MODULE_HST)
>> -			rkisp1_hst_enable(params,
>> -				&new_params->meas.hst_config,
>> -				!!(module_ens & RKISP1_CIF_ISP_MODULE_HST));
>> +	if (module_en_update & RKISP1_CIF_ISP_MODULE_AFC) {
>> +		if (module_ens & RKISP1_CIF_ISP_MODULE_AFC)
>> +			rkisp1_param_set_bits(params,
>> +					      RKISP1_CIF_ISP_AFM_CTRL,
>> +					      RKISP1_CIF_ISP_AFM_ENA);
>> +		else
>> +			rkisp1_param_clear_bits(params,
>> +						RKISP1_CIF_ISP_AFM_CTRL,
>> +						RKISP1_CIF_ISP_AFM_ENA);
>>   	}
>>   
>> -	if ((module_en_update & RKISP1_CIF_ISP_MODULE_AEC) ||
>> -	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_AEC)) {
>> -		/* update aec config */
>> -		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AEC)
>> -			rkisp1_aec_config(params,
>> -					  &new_params->meas.aec_config);
>> -
>> -		if (module_en_update & RKISP1_CIF_ISP_MODULE_AEC) {
>> -			if (module_ens & RKISP1_CIF_ISP_MODULE_AEC)
>> -				rkisp1_param_set_bits(params,
>> -						      RKISP1_CIF_ISP_EXP_CTRL,
>> -						      RKISP1_CIF_ISP_EXP_ENA);
>> -			else
>> -				rkisp1_param_clear_bits(params,
>> -							RKISP1_CIF_ISP_EXP_CTRL,
>> -							RKISP1_CIF_ISP_EXP_ENA);
>> -		}
>> +	/* update hst config */
>> +	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_HST)
>> +		rkisp1_hst_config(params,
>> +				  &new_params->meas.hst_config);
>> +
>> +	if (module_en_update & RKISP1_CIF_ISP_MODULE_HST)
>> +		rkisp1_hst_enable(params, &new_params->meas.hst_config,
>> +				  !!(module_ens & RKISP1_CIF_ISP_MODULE_HST));
>> +
>> +	/* update aec config */
>> +	if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AEC)
>> +		rkisp1_aec_config(params,
>> +				  &new_params->meas.aec_config);
>> +
>> +	if (module_en_update & RKISP1_CIF_ISP_MODULE_AEC) {
>> +		if (module_ens & RKISP1_CIF_ISP_MODULE_AEC)
>> +			rkisp1_param_set_bits(params,
>> +					      RKISP1_CIF_ISP_EXP_CTRL,
>> +					      RKISP1_CIF_ISP_EXP_ENA);
>> +		else
>> +			rkisp1_param_clear_bits(params,
>> +						RKISP1_CIF_ISP_EXP_CTRL,
>> +						RKISP1_CIF_ISP_EXP_ENA);
>>   	}
>>   }
>>   
>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
