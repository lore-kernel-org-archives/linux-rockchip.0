Return-Path: <SRS0=BMHt=GP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 645C3C433E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Jan 2021 08:39:57 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E457A22E00
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Jan 2021 08:39:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E457A22E00
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=xs4all.nl
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uDZTS09xGjhGRJTghjeaowKTkX0D4Uwe5B4xT2TduWo=; b=iUIlGAynUGRh0qKKxGHe9G+6s
	Y4LCQH2WgHMPHef/VI19DGc6ZnJN/c6G9JUjf+mhiebG6M31Ktt5f8rlpvlrtwvsVi4SEs+m2D6k4
	EmA1+RShU74ZXCW8HXKVBMkQ9kuJWp8NbtJHQO2P7vieB7AxB0FT749C2sTV7NIbJ0Kbwdn6ufpoz
	wyTpn2HIhUL34m+tHUiyDnII4uV2Fj0RroFygpcjBKMd99NQquJXnkFK6i2QcKMnLlZj3Yib7/ut2
	J2SFx1Pw+0XQGG8Qt1VyfcuUVpyvZjPhhkkG81k0cnTd20myJNtaetniWq0Q8xUV6zY/OoNhZjHi+
	DONSkClZw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kzFDV-0007Y0-G3; Tue, 12 Jan 2021 08:39:53 +0000
Received: from lb1-smtp-cloud9.xs4all.net ([194.109.24.22])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kzFDR-0007VF-0J
 for linux-rockchip@lists.infradead.org; Tue, 12 Jan 2021 08:39:50 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud9.xs4all.net with ESMTPA
 id zFDLkD6lqVfyLzFDPkokAT; Tue, 12 Jan 2021 09:39:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
 t=1610440787; bh=FdBTg4bvKMCp/5QvVRUbGTnol3lQOX22OVY4xA9vV5E=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=K+9QkmzV5ydsxeojyQBcTdX+98Xa8J/r4hpZXEeGaZt2zYJMk6tjbrRnUc1wlQVL4
 3FD6rq7b7we1asiL3L/pYg638Dd+1TyxxQBJUHIYDmdVDPOps3IIbwLVJECmN9lb4G
 ALJk6GBpM81+6PiqubBWBHng0KYZoRNp/S+NiykSkkreV6W0CqOOFLlw2PHZY5Xvvp
 4C/CaH/dte8DRQv9WiBBsEjwJuQrkkEYVeZzujoiSVsmlDeX3g2vuHTmqDj30Ynf7J
 nltABD/jhAMb6a46rUffiX3JNZRJOPgu2R0TejvmzD6GP0xXxuwNYA+H5j+8PeUJmV
 Ye4k7A/8TohVw==
Subject: Re: [PATCH 2/2] media: rockchip: rkisp1: extend uapi array sizes
To: Heiko Stuebner <heiko@sntech.de>, dafna.hirschfeld@collabora.com,
 helen.koike@collabora.com, linux-media@vger.kernel.org, mchehab@kernel.org,
 Laurent.pinchart@ideasonboard.com
References: <20210111234011.3642481-1-heiko@sntech.de>
 <20210111234011.3642481-3-heiko@sntech.de>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <72de44bf-11a5-9ef1-9402-6ca51ac6b98d@xs4all.nl>
Date: Tue, 12 Jan 2021 09:39:43 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20210111234011.3642481-3-heiko@sntech.de>
Content-Language: en-US
X-CMAE-Envelope: MS4xfEutXqwpEh3IakRXSoRf1E04q3Ul3OKFOJLnQ+PkvUDw5Uui3LTPQSOqw2r++Pztuwu9nS7AChTlMHH65NMwg0oeX/2I41P2FtqxEWThmeEMdBj2V8bd
 xj6kXXYrVElUZU2SmFAqk1Rcp7v5SXdrol2KtvIiv+PF24d2fTcxrYXTd/pDNMkljl3ZDEqI2pbqOV1TtsOBTUIdms7CB7TH2jcrz4ZIqiezg6zomPN2VqYa
 vPjVPFKSTsUN+8FlvlkYqQJIFLhwYCvVMyul8wRbNwcWS1FqUvO073O2jn2zb+BPKGBn6xlM/Swf2kyMjUA+WG3+Y6xSxcOLEZJKKfT9m67VxIWI2rbDuWEa
 x8vSu5o9bcZfSIsCAiTPIu9+wSSL2Nc0NR3mKzN60fs72HFBm+lFWMQG+KTa9Cs1TDXkBROQq0CXuEICYapY8ZKBtmbW23yqumc/whoCFYkUQ5jZt7d8SOoH
 /AJaLjcRib3v6hBbEIArxFPtz4Ai2IKUIEXhjwsQ7pKv2uvaUTcx9TmZoaAVvoCEEp1LGgF7VcGfi8TiZp4dejqenumK7Dt/s4mIfccxAUn3a3RaIuzPLxlo
 kU8=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210112_033949_196122_32D70803 
X-CRM114-Status: GOOD (  20.34  )
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
 linux-rockchip@lists.infradead.org, ezequiel@collabora.com,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 12/01/2021 00:40, Heiko Stuebner wrote:
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
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
> changes since rfc:
> - introduce constants for versions and make max use the biggest
> 
>  include/uapi/linux/rkisp1-config.h | 18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)
> 
> diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
> index bad46aadf838..20d24656a8b7 100644
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
> 

You must update the documentation in this header for the relevant
structs as well, including a mention that this depends on hw_revision.

What happens to the unused parts of these arrays on a V10/V11 SoC?
Are they zeroed? Please check that no kernel memory contents is leaked
in the unused parts.

Regards,

	Hans

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
