Return-Path: <SRS0=7Imz=HH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9BFFC433DB
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Feb 2021 14:05:34 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 41C1B64FC4
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Feb 2021 14:05:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 41C1B64FC4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vl0HNNCemCSJ02wBRCKFoa/Doe77eepvVfeSHGaQJXQ=; b=OwHG1ybSgWN2ms0CCJdrbG+qr
	a3s9lCZSKSn2LqdVnAI+K2zZQWAz3AHruOT7H4bL/rK3jAlyX4rIKWNzY9Q9gJJxF4cQhD7nE1+yk
	oO8AjIae6T9vHJztPmsaL/yqclukHav7eP3LWl0WZ9t4s/I3qbdw4vbfaOD0T7XFiQjyHbSYLvJzy
	vBAXUWnP0F5fLacrACzGmBpHvyPw8FGelfsa4/0PCp0qVNX94O/cXmUq7Icxv8j5Uw7xxw3cYoKe5
	8NPF20o3putOAl3r6KVZSJZbrfnlIZzj8t68z0LE/n+OzpSxkcJlsh1SRBo/IxmCW+nODPPTFXS2z
	Qs5qAybCQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l81jl-0000XI-1p; Fri, 05 Feb 2021 14:05:29 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l81ji-0000WA-4C
 for linux-rockchip@lists.infradead.org; Fri, 05 Feb 2021 14:05:27 +0000
Received: from [IPv6:2003:c7:cf1c:ce00:c5f9:7f5:ebcd:ea47]
 (p200300c7cf1cce00c5f907f5ebcdea47.dip0.t-ipconnect.de
 [IPv6:2003:c7:cf1c:ce00:c5f9:7f5:ebcd:ea47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: dafna)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id CF60F1F466F8;
 Fri,  5 Feb 2021 14:05:24 +0000 (GMT)
Subject: Re: [PATCH RFC 08/11] media: rockchip: rkisp1: make some isp-param
 functions variable
To: Heiko Stuebner <heiko@sntech.de>, ezequiel@collabora.com,
 helen.koike@collabora.com, Laurent.pinchart@ideasonboard.com
References: <20210108193311.3423236-1-heiko@sntech.de>
 <20210108193311.3423236-9-heiko@sntech.de>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <7c06bf28-2629-1f8d-1e55-d86ad792d6bf@collabora.com>
Date: Fri, 5 Feb 2021 15:05:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210108193311.3423236-9-heiko@sntech.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210205_090526_428289_B96D6DC8 
X-CRM114-Status: GOOD (  27.59  )
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
Cc: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 linux-rockchip@lists.infradead.org, mchehab@kernel.org,
 linux-media@vger.kernel.org, christoph.muellner@theobroma-systems.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org



Am 08.01.21 um 20:33 schrieb Heiko Stuebner:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The isp block evolved in subsequent socs, so some functions
> will behave differently on newer variants.
> 
> Therefore make it possible to override the needed params functions.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>   .../platform/rockchip/rkisp1/rkisp1-common.h  | 30 ++++++++
>   .../platform/rockchip/rkisp1/rkisp1-params.c  | 76 ++++++++++++-------
>   2 files changed, 77 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> index 7678eabc9ffc..4034a05ef9d2 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-common.h
> @@ -258,11 +258,39 @@ struct rkisp1_stats {
>   	struct v4l2_format vdev_fmt;
>   };
>   
> +struct rkisp1_params;
> +struct rkisp1_params_ops {

could you add a short inline doc of this stuct?

> +	void (*lsc_matrix_config)(struct rkisp1_params *params,
> +				  const struct rkisp1_cif_isp_lsc_config *pconfig);
> +	void (*goc_config)(struct rkisp1_params *params,
> +			   const struct rkisp1_cif_isp_goc_config *arg);
> +	void (*awb_meas_config)(struct rkisp1_params *params,
> +				const struct rkisp1_cif_isp_awb_meas_config *arg);
> +	void (*awb_meas_enable)(struct rkisp1_params *params,
> +				const struct rkisp1_cif_isp_awb_meas_config *arg,
> +				bool en);
> +	void (*awb_gain_config)(struct rkisp1_params *params,
> +				const struct rkisp1_cif_isp_awb_gain_config *arg);
> +	void (*aec_config)(struct rkisp1_params *params,
> +			   const struct rkisp1_cif_isp_aec_config *arg);
> +	void (*hst_config)(struct rkisp1_params *params,
> +			   const struct rkisp1_cif_isp_hst_config *arg);
> +	void (*hst_enable)(struct rkisp1_params *params,
> +			   const struct rkisp1_cif_isp_hst_config *arg, bool en);
> +	void (*afm_config)(struct rkisp1_params *params,
> +			   const struct rkisp1_cif_isp_afc_config *arg);
> +};
> +
> +struct rkisp1_params_config {
> +	const int gamma_out_max_samples;
> +};
> +
>   /*
>    * struct rkisp1_params - ISP input parameters device
>    *
>    * @vnode:		video node
>    * @rkisp1:		pointer to the rkisp1 device
> + * @ops:		pointer to the variant-specific operations

maybe change the doc here to "version-specific operations according to rkisp1_cif_isp_version"

>    * @config_lock:	locks the buffer list 'params'
>    * @params:		queue of rkisp1_buffer
>    * @vdev_fmt:		v4l2_format of the metadata format
> @@ -272,6 +300,8 @@ struct rkisp1_stats {
>   struct rkisp1_params {
>   	struct rkisp1_vdev_node vnode;
>   	struct rkisp1_device *rkisp1;
> +	struct rkisp1_params_ops *ops;
> +	struct rkisp1_params_config *config;

I think the field 'config' is not needed, see my comment in patch 10/11

>   
>   	spinlock_t config_lock; /* locks the buffers list 'params' */
>   	struct list_head params;
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> index 6af4d551ffb5..008584caaad0 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> @@ -185,8 +185,8 @@ static void rkisp1_bls_config(struct rkisp1_params *params,
>   
>   /* ISP LS correction interface function */
>   static void
> -rkisp1_lsc_correct_matrix_config(struct rkisp1_params *params,
> -				 const struct rkisp1_cif_isp_lsc_config *pconfig)
> +rkisp1_lsc_matrix_config(struct rkisp1_params *params,
> +			 const struct rkisp1_cif_isp_lsc_config *pconfig)

This is just a renaming of the function , I don't think this is needed

Thanks,
Dafna

>   {
>   	unsigned int isp_lsc_status, sram_addr, isp_lsc_table_sel, i, j, data;
>   
> @@ -265,7 +265,7 @@ static void rkisp1_lsc_config(struct rkisp1_params *params,
>   	lsc_ctrl = rkisp1_read(params->rkisp1, RKISP1_CIF_ISP_LSC_CTRL);
>   	rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_LSC_CTRL,
>   				RKISP1_CIF_ISP_LSC_CTRL_ENA);
> -	rkisp1_lsc_correct_matrix_config(params, arg);
> +	params->ops->lsc_matrix_config(params, arg);
>   
>   	for (i = 0; i < RKISP1_CIF_ISP_LSC_SECTORS_TBL_SIZE / 2; i++) {
>   		/* program x size tables */
> @@ -391,7 +391,7 @@ static void rkisp1_goc_config(struct rkisp1_params *params,
>   				RKISP1_CIF_ISP_CTRL_ISP_GAMMA_OUT_ENA);
>   	rkisp1_write(params->rkisp1, arg->mode, RKISP1_CIF_ISP_GAMMA_OUT_MODE);
>   
> -	for (i = 0; i < RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES; i++)
> +	for (i = 0; i < params->config->gamma_out_max_samples; i++)
>   		rkisp1_write(params->rkisp1, arg->gamma_y[i],
>   			     RKISP1_CIF_ISP_GAMMA_OUT_Y_0 + i * 4);
>   }
> @@ -968,8 +968,8 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>   	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN)) {
>   		/* update awb gains */
>   		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN)
> -			rkisp1_awb_gain_config(params,
> -					       &new_params->others.awb_gain_config);
> +			params->ops->awb_gain_config(params,
> +						     &new_params->others.awb_gain_config);
>   
>   		if (module_en_update & RKISP1_CIF_ISP_MODULE_AWB_GAIN) {
>   			if (module_ens & RKISP1_CIF_ISP_MODULE_AWB_GAIN)
> @@ -1037,8 +1037,8 @@ rkisp1_isp_isr_other_config(struct rkisp1_params *params,
>   	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_GOC)) {
>   		/* update goc config */
>   		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_GOC)
> -			rkisp1_goc_config(params,
> -					  &new_params->others.goc_config);
> +			params->ops->goc_config(params,
> +						&new_params->others.goc_config);
>   
>   		if (module_en_update & RKISP1_CIF_ISP_MODULE_GOC) {
>   			if (module_ens & RKISP1_CIF_ISP_MODULE_GOC)
> @@ -1124,20 +1124,20 @@ static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
>   	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB)) {
>   		/* update awb config */
>   		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AWB)
> -			rkisp1_awb_meas_config(params,
> -					       &new_params->meas.awb_meas_config);
> +			params->ops->awb_meas_config(params,
> +						     &new_params->meas.awb_meas_config);
>   
>   		if (module_en_update & RKISP1_CIF_ISP_MODULE_AWB)
> -			rkisp1_awb_meas_enable(params,
> -					       &new_params->meas.awb_meas_config,
> -					       !!(module_ens & RKISP1_CIF_ISP_MODULE_AWB));
> +			params->ops->awb_meas_enable(params,
> +						     &new_params->meas.awb_meas_config,
> +						     !!(module_ens & RKISP1_CIF_ISP_MODULE_AWB));
>   	}
>   
>   	if ((module_en_update & RKISP1_CIF_ISP_MODULE_AFC) ||
>   	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_AFC)) {
>   		/* update afc config */
>   		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AFC)
> -			rkisp1_afm_config(params,
> +			params->ops->afm_config(params,
>   					  &new_params->meas.afc_config);
>   
>   		if (module_en_update & RKISP1_CIF_ISP_MODULE_AFC) {
> @@ -1156,21 +1156,21 @@ static void rkisp1_isp_isr_meas_config(struct rkisp1_params *params,
>   	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_HST)) {
>   		/* update hst config */
>   		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_HST)
> -			rkisp1_hst_config(params,
> -					  &new_params->meas.hst_config);
> +			params->ops->hst_config(params,
> +						&new_params->meas.hst_config);
>   
>   		if (module_en_update & RKISP1_CIF_ISP_MODULE_HST)
> -			rkisp1_hst_enable(params,
> -					  &new_params->meas.hst_config,
> -					  !!(module_ens & RKISP1_CIF_ISP_MODULE_HST));
> +			params->ops->hst_enable(params,
> +						&new_params->meas.hst_config,
> +						!!(module_ens & RKISP1_CIF_ISP_MODULE_HST));
>   	}
>   
>   	if ((module_en_update & RKISP1_CIF_ISP_MODULE_AEC) ||
>   	    (module_cfg_update & RKISP1_CIF_ISP_MODULE_AEC)) {
>   		/* update aec config */
>   		if (module_cfg_update & RKISP1_CIF_ISP_MODULE_AEC)
> -			rkisp1_aec_config(params,
> -					  &new_params->meas.aec_config);
> +			params->ops->aec_config(params,
> +						&new_params->meas.aec_config);
>   
>   		if (module_en_update & RKISP1_CIF_ISP_MODULE_AEC) {
>   			if (module_ens & RKISP1_CIF_ISP_MODULE_AEC)
> @@ -1272,20 +1272,20 @@ static void rkisp1_params_config_parameter(struct rkisp1_params *params)
>   {
>   	struct rkisp1_cif_isp_hst_config hst = rkisp1_hst_params_default_config;
>   
> -	rkisp1_awb_meas_config(params, &rkisp1_awb_params_default_config);
> -	rkisp1_awb_meas_enable(params, &rkisp1_awb_params_default_config,
> -			       true);
> +	params->ops->awb_meas_config(params, &rkisp1_awb_params_default_config);
> +	params->ops->awb_meas_enable(params, &rkisp1_awb_params_default_config,
> +				     true);
>   
> -	rkisp1_aec_config(params, &rkisp1_aec_params_default_config);
> +	params->ops->aec_config(params, &rkisp1_aec_params_default_config);
>   	rkisp1_param_set_bits(params, RKISP1_CIF_ISP_EXP_CTRL,
>   			      RKISP1_CIF_ISP_EXP_ENA);
>   
> -	rkisp1_afm_config(params, &rkisp1_afc_params_default_config);
> +	params->ops->afm_config(params, &rkisp1_afc_params_default_config);
>   	rkisp1_param_set_bits(params, RKISP1_CIF_ISP_AFM_CTRL,
>   			      RKISP1_CIF_ISP_AFM_ENA);
>   
>   	memset(hst.hist_weight, 0x01, sizeof(hst.hist_weight));
> -	rkisp1_hst_config(params, &hst);
> +	params->ops->hst_config(params, &hst);
>   	rkisp1_param_set_bits(params, RKISP1_CIF_ISP_HIST_PROP,
>   			      ~RKISP1_CIF_ISP_HIST_PROP_MODE_MASK |
>   			      rkisp1_hst_params_default_config.mode);
> @@ -1330,7 +1330,7 @@ void rkisp1_params_disable(struct rkisp1_params *params)
>   				RKISP1_CIF_ISP_DEMOSAIC_BYPASS);
>   	rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_FILT_MODE,
>   				RKISP1_CIF_ISP_FLT_ENA);
> -	rkisp1_awb_meas_enable(params, NULL, false);
> +	params->ops->awb_meas_enable(params, NULL, false);
>   	rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_CTRL,
>   				RKISP1_CIF_ISP_CTRL_ISP_AWB_ENA);
>   	rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_EXP_CTRL,
> @@ -1338,7 +1338,7 @@ void rkisp1_params_disable(struct rkisp1_params *params)
>   	rkisp1_ctk_enable(params, false);
>   	rkisp1_param_clear_bits(params, RKISP1_CIF_C_PROC_CTRL,
>   				RKISP1_CIF_C_PROC_CTR_ENABLE);
> -	rkisp1_hst_enable(params, NULL, false);
> +	params->ops->hst_enable(params, NULL, false);
>   	rkisp1_param_clear_bits(params, RKISP1_CIF_ISP_AFM_CTRL,
>   				RKISP1_CIF_ISP_AFM_ENA);
>   	rkisp1_ie_enable(params, false);
> @@ -1346,6 +1346,22 @@ void rkisp1_params_disable(struct rkisp1_params *params)
>   				RKISP1_CIF_ISP_DPF_MODE_EN);
>   }
>   
> +static struct rkisp1_params_ops rkisp1_params_ops = {
> +	.lsc_matrix_config = rkisp1_lsc_matrix_config,
> +	.goc_config = rkisp1_goc_config,
> +	.awb_meas_config = rkisp1_awb_meas_config,
> +	.awb_meas_enable = rkisp1_awb_meas_enable,
> +	.awb_gain_config = rkisp1_awb_gain_config,
> +	.aec_config = rkisp1_aec_config,
> +	.hst_config = rkisp1_hst_config,
> +	.hst_enable = rkisp1_hst_enable,
> +	.afm_config = rkisp1_afm_config,
> +};
> +
> +static struct rkisp1_params_config rkisp1_params_config = {
> +	.gamma_out_max_samples = 17,
> +};> +
>   static int rkisp1_params_enum_fmt_meta_out(struct file *file, void *priv,
>   					   struct v4l2_fmtdesc *f)
>   {
> @@ -1512,6 +1528,8 @@ static void rkisp1_init_params(struct rkisp1_params *params)
>   		V4L2_META_FMT_RK_ISP1_PARAMS;
>   	params->vdev_fmt.fmt.meta.buffersize =
>   		sizeof(struct rkisp1_params_cfg);
> +	params->ops = &rkisp1_params_ops;
> +	params->config = &rkisp1_params_config;
>   }
>   
>   int rkisp1_params_register(struct rkisp1_device *rkisp1)
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
