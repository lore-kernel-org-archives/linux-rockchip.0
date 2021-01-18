Return-Path: <SRS0=qa0x=GV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2B7C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 18:04:12 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4CCFB22BEA
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Jan 2021 18:04:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4CCFB22BEA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=k70KBQ+U2QpZ1pTMrAXes41yXlYym/Mkv6vhNvN17gg=; b=JFuA9ivmVu0Yfz77aKLHvPLC5
	p+m+E1wrfy/EqtEsNT+5VE/rYpqTVpxlPwwYfnGm7+wouXPmCBUVoJBt0F6pF+39e7XbU3l8jKILd
	CHtVA+Gm8V4BYmiCpa+NEdmzvYDKNb8EeZmGxVt1R6b8iAMm+ILWKdCtdnuWy2nlTZodj4RZ6UgnY
	ORPn/fm45rouYZNBsRqHGr4TidBXKdk0S2G5AtRpMxQVqguHwJRHUoILrcDfQmIMUhL0HnK04o8zp
	s1+g7OsW+xPIOkUMj3wbwkTSVxnmrsAgR40wHUIShYrXjw9+oREXcUf1YhSO+CayMLsu6BsWi2XN+
	M9DaIYF7Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l1Yso-0005hN-Mx; Mon, 18 Jan 2021 18:04:06 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l1Ysl-0005g5-NN
 for linux-rockchip@lists.infradead.org; Mon, 18 Jan 2021 18:04:04 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: koike) with ESMTPSA id 696F01F44834
Subject: Re: [PATCH v6 1/4] media: rockchip: rkisp1: fix comment about number
 of histogram sub-windows
To: Heiko Stuebner <heiko@sntech.de>, dafna.hirschfeld@collabora.com,
 linux-media@vger.kernel.org, mchehab@kernel.org,
 Laurent.pinchart@ideasonboard.com, hverkuil@xs4all.nl
References: <20210118110448.275389-1-heiko@sntech.de>
 <20210118110448.275389-2-heiko@sntech.de>
From: Helen Koike <helen.koike@collabora.com>
Message-ID: <ce91ca03-211c-0c27-1204-4bafc815ffca@collabora.com>
Date: Mon, 18 Jan 2021 15:03:51 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20210118110448.275389-2-heiko@sntech.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210118_130403_858982_0DFDFDC4 
X-CRM114-Status: GOOD (  16.84  )
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



On 1/18/21 8:04 AM, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> The histogram data is divided into 16 sub-windows, not 25.
> See RKISP1_CIF_ISP_HIST_BIN_N_MAX being defined as 16 for reference
> and this also matches the datasheet.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Acked-by: Helen Koike <helen.koike@collabora.com>

> ---
>  include/uapi/linux/rkisp1-config.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/uapi/linux/rkisp1-config.h b/include/uapi/linux/rkisp1-config.h
> index 6e449e784260..ba443771cc0b 100644
> --- a/include/uapi/linux/rkisp1-config.h
> +++ b/include/uapi/linux/rkisp1-config.h
> @@ -846,7 +846,7 @@ struct rkisp1_cif_isp_af_stat {
>   *
>   * @hist_bins: measured bin counters
>   *
> - * Measurement window divided into 25 sub-windows, set
> + * Measurement window divided into 16 sub-windows, set
>   * with ISP_HIST_XXX
>   */
>  struct rkisp1_cif_isp_hist_stat {
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
