Return-Path: <SRS0=bvFq=GM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E18C6C433E0
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jan 2021 20:12:34 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 96F5223A9C
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jan 2021 20:12:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 96F5223A9C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l1f2D9RHNzxEeqXsrPhPkVCpzZQU7mdmvD509kskWRg=; b=UR0qoOfoEi69SoZ3hdxzCw32m
	pu4zt/hKdWD/7uIU1SOt5plspBnqiW0t8yIBUk+wUkn4JAyj8Cs7exsgW+bsJUlVtcrpip1kLrXAH
	7lfvWcMxmZ6Kj9nZ+sVi6EIIVlIuFrPJQV2bdH4YN40lZ2nvO1mQhmGSAqhYh8EbsVWpoOaV1K1PJ
	/Lzr8WF5ejK3+dk1RhQb8B8iVOpNRI+mehz4ZliRDbJzQDq1tL/qKtGHPWuJZVr4Qb2ZV4lAJ/vNF
	jHllSREBgPs4ssUU6uswNFznr/6NNKCDQlkRnNloKMFYgEndrGA3bm3AfvOt45QbOI4bygWMryyTr
	uIu3NBL1w==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kyKb2-0005vU-6Z; Sat, 09 Jan 2021 20:12:24 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kyKaz-0005uw-HN
 for linux-rockchip@lists.infradead.org; Sat, 09 Jan 2021 20:12:22 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id F06ED1F456CE
Subject: Re: [PATCH RFC 05/11] media: rockchip: rkisp1: extend uapi array sizes
To: Heiko Stuebner <heiko@sntech.de>, ezequiel@collabora.com,
 helen.koike@collabora.com, Laurent.pinchart@ideasonboard.com
References: <20210108193311.3423236-1-heiko@sntech.de>
 <20210108193311.3423236-6-heiko@sntech.de>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <42dd91aa-34a6-501c-33ba-5dee0dcf45f1@collabora.com>
Date: Sat, 9 Jan 2021 21:12:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210108193311.3423236-6-heiko@sntech.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210109_151221_717082_B8E51EB0 
X-CRM114-Status: GOOD (  18.28  )
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
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>   include/uapi/linux/rkisp1-config.h | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
> index 6e449e784260..31a88bb65e03 100644
> --- a/include/uapi/linux/rkisp1-config.h
> +++ b/include/uapi/linux/rkisp1-config.h
> @@ -49,8 +49,8 @@
>   #define RKISP1_CIF_ISP_CTK_COEFF_MAX            0x100
>   #define RKISP1_CIF_ISP_CTK_OFFSET_MAX           0x800
>   
> -#define RKISP1_CIF_ISP_AE_MEAN_MAX              25
> -#define RKISP1_CIF_ISP_HIST_BIN_N_MAX           16
> +#define RKISP1_CIF_ISP_AE_MEAN_MAX              81
> +#define RKISP1_CIF_ISP_HIST_BIN_N_MAX           32
>   #define RKISP1_CIF_ISP_AFM_MAX_WINDOWS          3
>   #define RKISP1_CIF_ISP_DEGAMMA_CURVE_SIZE       17
>   
> @@ -86,7 +86,7 @@
>    * Gamma out
>    */
>   /* Maximum number of color samples supported */
> -#define RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES       17
> +#define RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES       34
>   
>   /*
>    * Lens shade correction
> @@ -103,7 +103,7 @@
>    * Histogram calculation
>    */
>   /* Last 3 values unused. */
> -#define RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE 28
> +#define RKISP1_CIF_ISP_HISTOGRAM_WEIGHT_GRIDS_SIZE 81
>   

Hi,
We should have 3 defines for each of the changes,
to keep the values per version and then set the
array size to be the bigger of the two.
For example:


#define RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES_V10       17
#define RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES_v12       34
#define RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES       RKISP1_CIF_ISP_GAMMA_OUT_MAX_SAMPLES_V12

Thanks,
Dafna

>   /*
>    * Defect Pixel Cluster Correction
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
