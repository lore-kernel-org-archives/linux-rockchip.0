Return-Path: <SRS0=2Xhb=GY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 227F2C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 09:31:54 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 516B62395A
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jan 2021 09:31:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 516B62395A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=theobroma-systems.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oCdld9NuraC/q0OegQoMSSLMGBGQJLBivIFS9cXxoso=; b=WEDyPjvAk/L+iQdzXAJia4ez0
	6bTEKWbMshoEmWE+HufzYpgdEhIx2gqxeta1yJbeUF61elfoUS0DRIab+M0+062fbprb++FPWxKMr
	9xHdVSfQtmg2U6VhKUncVzBh1CuxWwwOzENonDeEO6gDl9ZmTBkN2AAOn/k1OSdaA3xE29/KODIH7
	KBVSjtDzEw2vTXg08VdjGGyMlqlFp2FJaooqeIQQP7NQY6gxuctRM1i1JVFSfKMRWYz/o68T0pC/h
	9wnxhIXBr8K9Axkj9aUIeL42yIYYeN41Q8nRFvMbo3hzt29JESB/Xgh9BIrBFZGzUPVyzdKd/9SzN
	Eu1GmD6uA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l2WJd-0006b5-KD; Thu, 21 Jan 2021 09:31:45 +0000
Received: from vegas.theobroma-systems.com ([144.76.126.164]
 helo=mail.theobroma-systems.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l2WJa-0006aQ-Py
 for linux-rockchip@lists.infradead.org; Thu, 21 Jan 2021 09:31:43 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]:40726
 helo=diego.localnet) by mail.theobroma-systems.com with esmtpsa
 (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256) (Exim 4.80)
 (envelope-from <heiko.stuebner@theobroma-systems.com>)
 id 1l2WJK-0007TV-8r; Thu, 21 Jan 2021 10:31:26 +0100
From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
To: linux-media@vger.kernel.org,
 Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Subject: Re: [PATCH v7 2/5] media: rkisp1: stats: remove a wrong cast to u8
Date: Thu, 21 Jan 2021 10:31:25 +0100
Message-ID: <1736090.BzM5BlMlMQ@diego>
Organization: Theobroma Systems
In-Reply-To: <20210120164446.1220-3-dafna.hirschfeld@collabora.com>
References: <20210120164446.1220-1-dafna.hirschfeld@collabora.com>
 <20210120164446.1220-3-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210121_043142_956035_F0B1EB90 
X-CRM114-Status: GOOD (  13.94  )
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
Cc: mchehab@kernel.org, dafna.hirschfeld@collabora.com, dafna3@gmail.com,
 tfiga@chromium.org, hverkuil@xs4all.nl, linux-rockchip@lists.infradead.org,
 helen.koike@collabora.com, laurent.pinchart@ideasonboard.com,
 sakari.ailus@linux.intel.com, kernel@collabora.com, ezequiel@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Mittwoch, 20. Januar 2021, 17:44:43 CET schrieb Dafna Hirschfeld:
> hist_bins is an array of type __u32. Each entry represent
> a 20 bit fixed point value as documented inline.
> The cast to u8 when setting the values is wrong. Remove it.
> 
> Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> index 3ddab8fa8f2d..4cdb180fa64d 100644
> --- a/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> +++ b/drivers/media/platform/rockchip/rkisp1/rkisp1-stats.c
> @@ -235,8 +235,7 @@ static void rkisp1_stats_get_hst_meas(struct rkisp1_stats *stats,
>  	pbuf->meas_type |= RKISP1_CIF_ISP_STAT_HIST;
>  	for (i = 0; i < RKISP1_CIF_ISP_HIST_BIN_N_MAX; i++)
>  		pbuf->params.hist.hist_bins[i] =
> -			(u8)rkisp1_read(rkisp1,
> -					RKISP1_CIF_ISP_HIST_BIN_0 + i * 4);
> +			rkisp1_read(rkisp1, RKISP1_CIF_ISP_HIST_BIN_0 + i * 4);
>  }
>  
>  static void rkisp1_stats_get_bls_meas(struct rkisp1_stats *stats,
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
