Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3A5C4727C
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 07:22:13 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B773521548
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 07:22:12 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="sOP8B1Cs"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B773521548
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=97ro/AXK6dzseiLMWoHoVep5zKtAL3g0MkE/iAMecfQ=; b=sOP8B1CsTj9rDxzvuoWloFHF8
	GvUir8I4DRLxIm4dwFKxXSQAT+NjJC0cfcjc0AHUgZjVEYBriMBSPXyhOCJd3mdvyTh2BMCIYDJlY
	YKdAsljCWs4tsOlNBK4lEd8De/EuzOZkvz93Q3+f6CinRvn9jeZShk/X11IKtgAiqVsF9QNymrHzU
	Ln3z8M1JCunBPj1Z7bhIZU7eeOBWXRkDugJncDQuW9vGrCloH2J35dsKuNVr8W+ukKj03CmFRmXFz
	eQhFzahSuiUIn2bhPAzj/n4EVxvdtjVz2UJUj0/gUTmD4DAvMB7LjZh3HZGJyXmU5PBdMhQ8EPXRl
	zBSIzZ2CA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKccn-0004qu-JP; Tue, 22 Sep 2020 07:22:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKccd-0004pJ-1t; Tue, 22 Sep 2020 07:21:59 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kKccZ-0006mh-IB; Tue, 22 Sep 2020 09:21:51 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH] phy: rockchip-dphy-rx0: Include linux/delay.h
Date: Tue, 22 Sep 2020 09:21:50 +0200
Message-ID: <28085307.etP1RCWPPi@diego>
In-Reply-To: <20200921225618.52529-1-tfiga@chromium.org>
References: <20200921225618.52529-1-tfiga@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_032155_147078_4C11698A 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
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
Cc: Helen Koike <helen.koike@collabora.com>, Tomasz Figa <tfiga@chromium.org>,
 linux-rockchip@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 22. September 2020, 00:56:18 CEST schrieb Tomasz Figa:
> Fix an implicit declaration of usleep_range():
> 
> drivers/phy/rockchip/phy-rockchip-dphy-rx0.c: In function 'rk_dphy_enable':
> drivers/phy/rockchip/phy-rockchip-dphy-rx0.c:203:2: error: implicit declaration of function 'usleep_range' [-Werror=implicit-function-declaration]
> 
> Fixes: 32abcc4491c62 ("media: staging: phy-rockchip-dphy-rx0: add Rockchip MIPI Synopsys DPHY RX0 driver")
> Signed-off-by: Tomasz Figa <tfiga@chromium.org>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
