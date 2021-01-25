Return-Path: <SRS0=VpfD=G4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23AC2C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 23:57:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 42CFE22597
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 23:57:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 42CFE22597
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qO3v8qXZaKw5m04pcFTaVd2y80QXRnKBWcwcUrO/nl8=; b=SdVby5aLpv6cShqH7GVUgXIJV
	F/sVRayXIMTHrrWRihGsrFWxQz9aakjFIrCF9CnqPpihT4TPumG1m9fKi2PkH42KQ+XhrkIZBYCqb
	xjB068J4hBpwLcaqyxVLMAvVzU/kO0eNsDxRYQpsyrsBWYmfBa3iNGpjck/46r/xFA0XLwS6H09vv
	3ss5ni6dTXBbIqwEhzpi7EQl91b36fGK863ycH3s4ECffjrZCE4ym0W1eq19HbXov6L/n1+zTd9Za
	6IjeUc4b3duXtpLgmj5NRTHOCJHQ+m0bMfo59V5Ouyzy3htFfhT1bkQuMqRqCu2ioQB48z6hsZgbV
	IAuX+F+BA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l4Bje-0000SM-1J; Mon, 25 Jan 2021 23:57:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l4Bij-00006w-Jq; Mon, 25 Jan 2021 23:56:35 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l4Bii-00066j-Bi; Tue, 26 Jan 2021 00:56:32 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Disable display for NanoPi R2S
Date: Tue, 26 Jan 2021 00:56:24 +0100
Message-Id: <161161878916.2050283.8556304510422835089.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <c4553dfad1ad6792c4f22454c135ff55de77e2d6.1611186099.git.robin.murphy@arm.com>
References: <c4553dfad1ad6792c4f22454c135ff55de77e2d6.1611186099.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210125_185633_708043_C42A0F29 
X-CRM114-Status: GOOD (  14.24  )
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
Cc: linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 20 Jan 2021 23:41:39 +0000, Robin Murphy wrote:
> NanoPi R2S is headless, so rightly does not enable any of the display
> interface hardware, which currently provokes an obnoxious error in the
> boot log from the fake DRM device failing to find anything to bind to.
> It probably isn't *too* hard to obviate the fake device shenanigans
> entirely with a bit of driver reshuffling, but for now let's just
> disable it here to shut up the spurious error.

Applied, thanks!

[1/1] arm64: dts: rockchip: Disable display for NanoPi R2S
      commit: 74532de460ec664e5a725507d1b59aa9e4d40776

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
