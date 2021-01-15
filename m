Return-Path: <SRS0=MHCR=GS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 830F1C433E0
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jan 2021 14:13:33 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C7EF622248
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jan 2021 14:13:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C7EF622248
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6mAJuJVpGbVM+A8qgZOGK9F8a51zPF8zMAJkHRZ9BWI=; b=2U7WeT7QhxjQX1RveobQuWQqX
	jNejy71q+mpidmpYpgsqgT9m3Cn1NGg+25mlwE5xpXDpa2r6MuzUxaiYAF5bMz/1qKzJaF3q+QUQx
	VowbTzaY0iU8Bt77u2B25vJWrgvzmiJrrO+vVAZKkUObNql4MVsRRse+9e2UkuSocFI4z9jFMT321
	9ssUkUlP4RVVn+Eek7ov004rLVTKRAV8OEmjDqi0I3Cm+wR0qJg4XueUKPYrVnhDWXoCO1qysjJMt
	Pu0LqbZMkq2fTCb8QRsN0pufKr4PSpSpjaN8ndiw/Bu3zAt9XLwUln+7p6BbfS1JZkwOG+q7I4zg6
	tpyJ6TjsQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l0Pqy-0005Hc-2q; Fri, 15 Jan 2021 14:13:28 +0000
Received: from lb3-smtp-cloud9.xs4all.net ([194.109.24.30])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l0Pqv-0005Gr-Sw
 for linux-rockchip@lists.infradead.org; Fri, 15 Jan 2021 14:13:26 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id 0PqqlMrmmaiWp0PqtlUiPU; Fri, 15 Jan 2021 15:13:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1610720004; bh=9oope7zNh1CuVkpeJD32rKjLh1gP5K2FYAuwFHbIudc=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=AozRbgN49abPQpxlLGnOQtF80+l+lwIZnjxsryGbP4cEB5Rp4mAZqI935DzEOxexa
 77epRYWE3qyh8USOM7vDeB0OAzwcv7oEvELIw1lsjohRtLvGkgvY+usnQ8BxpB+Rhh
 jNWyufB35e+Ciq+PEUFqbDDWmFRzg11oEOuqWC+fflc0ZWAmH6QlvZRtzrzMoO/map
 Jb8qY4mHJdqaFSxS84UWc3sma6NM10ELgYQu5gOKxPHt12JaXoUWnJqXfsxaPyLtWQ
 9T96Wzp5U0YcDV7WEhL9V+4o90867EX0RYbXWzAcnkIxrkFIVypZSTduC2rL2rL2qJ
 hFf17rLaq5ciQ==
Subject: Re: [PATCH v3 2/2] media: rockchip: rkisp1: extend uapi array sizes
To: Heiko Stuebner <heiko@sntech.de>, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, linux-media@vger.kernel.org, mchehab@kernel.org,
 Laurent.pinchart@ideasonboard.com
References: <20210115112351.208011-1-heiko@sntech.de>
 <20210115112351.208011-3-heiko@sntech.de>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <d62d1fa3-1e0e-61e2-cbe0-ab9d46fce70e@xs4all.nl>
Date: Fri, 15 Jan 2021 15:13:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210115112351.208011-3-heiko@sntech.de>
Content-Language: en-US
X-CMAE-Envelope: MS4xfLqzTMtk/C/+Lho+vvyLxiVwxfc6vyY8Uw4j6LkUvHRoiQCJ+eTBB1Uz12VuIHimX7UxONT5n+MsS3OakZi6NuyHSDrU6gRA745JN6nUdn+xhULGpMLC
 sxj6+EgkkFOgT5ba3l4oqDVKFb+BRvCDPnPjSDB2KG70SbjiYWa0WX//HTQcxgG1rWB4Z8XAH6xGxwgU5D8TQyTP4eDUXM2gKlBH61v6mw3Aw1lU5tZLYRD1
 Coaafk0kLbnq48qL2pDQUrDE/Y53RC2JjJriEeohGHuFEF+vaJfFtjrmwMiu/3G6vEoGCWurXA2KwNPaj/oS5sTu57IVl4jybca+OZGxV+FdTJf5VE6YjqQ3
 PrH2GwAwTdR8DHa+9FKrGabo6oW6AMoyusEdQK9+ICmjijP3Cey1F9DbQba9/O2GMoc79z/ynSuSuJfSR9+85Urm/p++VSVZ8b9GBKP3u1c7bX73jA/snSfI
 Cjk+Xxmqkw/HSUlvaBVwghgiziSix6TcaR1kdxm6iUmdqUd1O25BagBK0MTd9CY5S0S5kDONdtY2OuSB3I+QyDXOxv8D1sDvNiUg3M1myZ4g1Sttoid/Ktk9
 XqZKri8Yhqt2EXp4l6aiCAaw
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210115_091326_046557_55BDAF36 
X-CRM114-Status: GOOD (  25.87  )
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
 linux-rockchip@lists.infradead.org, tfiga@chromium.org, ezequiel@collabora.com,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 15/01/2021 12:23, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> Later variants of the rkisp1 block use more entries in some arrays:
> 
> RKISP1_CIF_ISP_AE_MEAN_MAX                 25 -> 81
> RKISP1_CIF_ISP_HIST_BIN_N_MAX              16 -> 32
> RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES       17 -> 34
> RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE 28 -> 81
> 
> and we can still extend the uapi during the 5.11-rc cycle, so do that
> now to be on the safe side.
> 
> V10 and V11 only need the smaller sizes, while V12 and V13 needed
> the larger sizes.
> 
> When adding the bigger sizes make sure, values filled from hardware
> values and transmitted to userspace don't leak kernel data by zeroing
> them beforehand.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>  .../platform/rockchip/rkisp1/rkisp1-params.c  |  2 +-
>  .../platform/rockchip/rkisp1/rkisp1-stats.c   | 12 +++++--
>  include/uapi/linux/rkisp1-config.h            | 36 ++++++++++++++++---
>  3 files changed, 42 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> index 6af4d551ffb5..fa47fe2a02d0 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-params.c
> @@ -391,7 +391,7 @@ static void rkisp1_goc_config(struct rkisp1_params *params,
>  				RKISP1_CIF_ISP_CTRL_ISP_GAMMA_OUT_ENA);
>  	rkisp1_write(params->rkisp1, arg->mode, RKISP1_CIF_ISP_GAMMA_OUT_MODE);
>  
> -	for (i = 0; i < RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES; i++)
> +	for (i = 0; i < RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES_V10; i++)
>  		rkisp1_write(params->rkisp1, arg->gamma_y[i],
>  			     RKISP1_CIF_ISP_GAMMA_OUT_Y_0 + i * 4);
>  }
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> index 3ddab8fa8f2d..a26de388ca13 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> @@ -202,8 +202,12 @@ static void rkisp1_stats_get_aec_meas(struct rkisp1_stats *stats,
>  	struct rkisp1_device *rkisp1 = stats->rkisp1;
>  	unsigned int i;
>  
> +	/* the global max can be bigger than the version-specific one */
> +	memset(pbuf->params.ae.exp_mean, 0, RKISP1_CIF_ISP_AE_MEAN_MAX *
> +					    sizeof(*pbuf->params.ae.exp_mean));
> +
>  	pbuf->meas_type |= RKISP1_CIF_ISP_STAT_AUTOEXP;
> -	for (i = 0; i < RKISP1_CIF_ISP_AE_MEAN_MAX; i++)
> +	for (i = 0; i < RKISP1_CIF_ISP_AE_MEAN_MAX_V10; i++)
>  		pbuf->params.ae.exp_mean[i] =
>  			(u8)rkisp1_read(rkisp1,
>  					RKISP1_CIF_ISP_EXP_MEAN_00 + i * 4);
> @@ -232,8 +236,12 @@ static void rkisp1_stats_get_hst_meas(struct rkisp1_stats *stats,
>  	struct rkisp1_device *rkisp1 = stats->rkisp1;
>  	unsigned int i;
>  
> +	/* the global max can be bigger then the version-specific one */
> +	memset(pbuf->params.hist.hist_bins, 0, RKISP1_CIF_ISP_HIST_BIN_N_MAX *
> +					       sizeof(*pbuf->params.hist.hist_bins));
> +
>  	pbuf->meas_type |= RKISP1_CIF_ISP_STAT_HIST;
> -	for (i = 0; i < RKISP1_CIF_ISP_HIST_BIN_N_MAX; i++)
> +	for (i = 0; i < RKISP1_CIF_ISP_HIST_BIN_N_MAX_V10; i++)
>  		pbuf->params.hist.hist_bins[i] =
>  			(u8)rkisp1_read(rkisp1,
>  					RKISP1_CIF_ISP_HIST_BIN_0 + i * 4);
> diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
> index bad46aadf838..aa4ace7264d3 100644
> --- a/include/uapi/linux/rkisp1-config.h
> +++ b/include/uapi/linux/rkisp1-config.h
> @@ -49,8 +49,14 @@
>  #define RKISP1_CIF_ISP_CTK_COEFF_MAX            0x100
>  #define RKISP1_CIF_ISP_CTK_OFFSET_MAX           0x800
>  
> -#define RKISP1_CIF_ISP_AE_MEAN_MAX              25
> -#define RKISP1_CIF_ISP_HIST_BIN_N_MAX           16
> +#define RKISP1_CIF_ISP_AE_MEAN_MAX_V10		25
> +#define RKISP1_CIF_ISP_AE_MEAN_MAX_V12		81
> +#define RKISP1_CIF_ISP_AE_MEAN_MAX		RKISP1_CIF_ISP_AE_MEAN_MAX_V12
> +
> +#define RKISP1_CIF_ISP_HIST_BIN_N_MAX_V10	16
> +#define RKISP1_CIF_ISP_HIST_BIN_N_MAX_V12	32
> +#define RKISP1_CIF_ISP_HIST_BIN_N_MAX		RKISP1_CIF_ISP_HIST_BIN_N_MAX_V12
> +
>  #define RKISP1_CIF_ISP_AFM_MAX_WINDOWS          3
>  #define RKISP1_CIF_ISP_DEGAMMA_CURVE_SIZE       17
>  
> @@ -86,7 +92,9 @@
>   * Gamma out
>   */
>  /* Maximum number of color samples supported */
> -#define RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES       17
> +#define RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES_V10   17
> +#define RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES_V12   34
> +#define RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES       RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES_V12
>  
>  /*
>   * Lens shade correction
> @@ -103,7 +111,9 @@
>   * Histogram calculation
>   */
>  /* Last 3 values unused. */
> -#define RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE 28
> +#define RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE_V10 28
> +#define RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE_V12 81
> +#define RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE     RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE_V12
>  
>  /*
>   * Defect Pixel Cluster Correction
> @@ -517,6 +527,10 @@ enum rkisp1_cif_isp_goc_mode {
>   *
>   * @mode: goc mode (from enum rkisp1_cif_isp_goc_mode)
>   * @gamma_y: gamma out curve y-axis for all color components
> + *
> + * The number of entries is dependent on the hw_revision,
> + * see RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES_V10 vs _V12 and the
> + * global maximum is the bigger of the two.

This is too vague. How about this:

"The number of entries of @gamma_y depends on the hardware revision
as is reported by the hw_revision field of the struct media_device_info
that is returned by ioctl MEDIA_IOC_DEVICE_INFO.

Versions <= V11 have RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES_V10
entries, versions >= V12 have RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES_V12
entries. RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES is equal to the maximum
of the two."

Similar text is needed elsewhere in this header as well were applicable.

Remember that this is a non-obvious difference, so more precise documentation
than normally is needed.

>   */
>  struct rkisp1_cif_isp_goc_config {
>  	__u32 mode;
> @@ -531,6 +545,10 @@ struct rkisp1_cif_isp_goc_config {
>   *			  skipped
>   * @meas_window: coordinates of the measure window
>   * @hist_weight: weighting factor for sub-windows
> + *
> + * The number of entries of weighting factors is dependent on the hw_revision,
> + * see RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE_V10 vs _V12 and the
> + * global maximum is the bigger of the two.
>   */
>  struct rkisp1_cif_isp_hst_config {
>  	__u32 mode;
> @@ -818,7 +836,11 @@ struct rkisp1_cif_isp_bls_meas_val {
>   * @exp_mean: Mean luminance value of block xx
>   * @bls_val:  BLS measured values
>   *
> - * Image is divided into 5x5 blocks.
> + * The number of entries is dependent on the hw_revision,
> + * see RKISP1_CIF_ISP_AE_MEAN_MAX_V10 vs _V12 and the
> + * global maximum is the bigger of the two.
> + *
> + * Image is divided into 5x5 blocks on V10 and 9x9 blocks on V12.
>   */
>  struct rkisp1_cif_isp_ae_stat {
>  	__u8 exp_mean[RKISP1_CIF_ISP_AE_MEAN_MAX];
> @@ -855,6 +877,10 @@ struct rkisp1_cif_isp_af_stat {
>   *
>   * Measurement window divided into 25 sub-windows, set

This is 25 for V10/11 and 81 for V12/13.

>   * with ISP_HIST_XXX
> + *
> + * The number of entries is dependent on the hw_revision,
> + * see RKISP1_CIF_ISP_HIST_BIN_N_MAX_V10 vs _V12 and the
> + * global maximum is the bigger of the two.
>   */
>  struct rkisp1_cif_isp_hist_stat {
>  	__u16 hist_bins[RKISP1_CIF_ISP_HIST_BIN_N_MAX];
> 

Regards,

	Hans

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
