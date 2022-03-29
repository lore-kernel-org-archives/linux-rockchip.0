Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6218AC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 15:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=myt64b/GKyOUIfSjbW9auHvYox3hyTQbsuy70ZO0pVg=; b=20FPwKEXfxIdzSXI/csIeh1/Yg
	/LDtFbLNIo84v5PB0eFdDvyPDMaGAeaAz4bV7WPrBA6zyvPS9bZtAYPxoDA66yIpHbK4ZzVHFuo5i
	O7kiBQX2Cz4yufI0rGlnW6ci34kHuZqASNbdONkLRUWR8zQXzPPTjiogbvRfbCHIUORQGR4J9an6Z
	7+TzU2xYN0tNrLe2Rf+BDf6XIc6aLfQ3iTr6CRtGukr1tdoE2ojycqfsuJm2xeoG0CBTVIyfWJ50S
	S9MoScy8DhmHE08pWsBDgTrX/kVfFMYBifL+Wp8P0OSconA1tlEgdRG8gmnAIyD07XLANhGWtxqUc
	x1BmzvyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZDZN-00Cci0-U1; Tue, 29 Mar 2022 15:15:41 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZDZK-00Cch1-Sz
 for linux-rockchip@lists.infradead.org; Tue, 29 Mar 2022 15:15:40 +0000
Received: from localhost (unknown [IPv6:2a02:3030:a:f397:f6bc:b726:2678:839f])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 (Authenticated sender: sebastianfricke)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 2E3511F440E4;
 Tue, 29 Mar 2022 16:15:37 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1648566937;
 bh=tRIkjtG4pbdks1OvKABedOH6x5n2i89uoA1nszYYfVM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=M5O08sppqnofl1fgk7tEZZI+RkzIHj6AjKB49ryVMp2dQuY7iyTSLLk++5VxhgKHp
 gghpl6LO0jvK0jo/KfCeY6CGjK03oXQHF3ilp2xFvTWAnyoKVGhVYL7PlIdosLetah
 ia53bS63TZgxZv+Gc6PGZmz5UeK3Qpvt1ndDy5Va4c69ihkFT5rQ4AZITESGcoH6hJ
 COA+O951XSCJvcMqU6t7viNgvs2oTsvlfbgrkdTyYJuRzPIRE9iRTRM+DVAPCYjgoJ
 DxvGdNrBeXT3911sMqT9Sjc/9rPnTtFY6ytbOO7GbjQ44PrRkR4c44t6+nZPwFfZED
 uz7oheTxATbUg==
Date: Tue, 29 Mar 2022 17:15:33 +0200
From: Sebastian Fricke <sebastian.fricke@collabora.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 kernel@collabora.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 12/24] media: rkvdec: Stop overclocking the decoder
Message-ID: <20220329151533.2pl2mkuwdhqg7qhy@basti-XPS-13-9310>
References: <20220328195936.82552-1-nicolas.dufresne@collabora.com>
 <20220328195936.82552-13-nicolas.dufresne@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220328195936.82552-13-nicolas.dufresne@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_081539_097398_489FB364 
X-CRM114-Status: GOOD (  12.44  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hey Nicolas,

On 28.03.2022 15:59, Nicolas Dufresne wrote:
>While this overclock hack seems to works on some implementation (some

s/implementation/implementations/

>ChromeBooks, RockPi4) it is also causing instability on other

s/causing/causes/

>implementation (notably LibreComputer Renegade, but saw more reports in

s/implementation/implementations/

s/but saw more reports/but there were more reports/

>the LibreELEC project, were this is already removed). While performance is

s/were this is/where this is/

>indeed affectied (tested with GStreamer), 4K playback still works as long

s/affectied/affected/

>as you don't operate in lock step and keep at least 1 frame ahead of time

s/lock step/lock step mode/

>in the decode queue.
>
>After discussion with ChromeOS members, it would seem that their
>implementation indeed synchronously decode each frames, so this hack was

s/decode each frames/decodes each frame/

>simply compensating for their code being less efficienti. This hack

s/efficienti/efficient/

>should in my opinion have stayed downstream and I'm removing it to ensure

s/This hack should in my opinion have stayed downstream/
   In my opinion, this hack should not have been included upstream/

>stability across all RK3399 variants.
>
>Signed-off-by: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Reviewed-by: Sebastian Fricke <sebastian.fricke@collabora.com>

Greetings,
Sebastian

>---
> drivers/staging/media/rkvdec/rkvdec.c | 6 ------
> 1 file changed, 6 deletions(-)
>
>diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/rkvdec/rkvdec.c
>index c0cf3488f970..2df8cf4883e2 100644
>--- a/drivers/staging/media/rkvdec/rkvdec.c
>+++ b/drivers/staging/media/rkvdec/rkvdec.c
>@@ -1027,12 +1027,6 @@ static int rkvdec_probe(struct platform_device *pdev)
> 	if (ret)
> 		return ret;
>
>-	/*
>-	 * Bump ACLK to max. possible freq. (500 MHz) to improve performance
>-	 * When 4k video playback.
>-	 */
>-	clk_set_rate(rkvdec->clocks[0].clk, 500 * 1000 * 1000);
>-
> 	rkvdec->regs = devm_platform_ioremap_resource(pdev, 0);
> 	if (IS_ERR(rkvdec->regs))
> 		return PTR_ERR(rkvdec->regs);
>-- 
>2.34.1
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
