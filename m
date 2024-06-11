Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21051C41513
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jun 2024 12:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QFsSZ2GWyvKcROP1IqruBcvGik1BhXBQjaly/+c0YA0=; b=YZYFx6+9rUwZnb
	KTzCXa4LVqYjAeuxjoJJLmzZwBsi/X+U0Zt1irDWQnzTWwoe6k8g4xy3fKPa/P+SwpVou2kkmLETE
	haUpHhOdwzZgpJNSKUQQZxCSPkuX9MBCotZwVLRhu72CCdgYbt26qrXSLFYEgeiGZwTSoCJKb4xEY
	zVvcGXUB+9ZP4iOTmBzW/PmU3N+Dwbguucjetainq/rsGSdC4/tosp5auXVtWGj4cXNzBvmuOZt58
	SWnh+BGmTq8ZiJSVxsRtPdFQAIgguxYMqmCd03+4fMocRmICnJvbLKAjt8seDVdYAZ8jraXmrzOYo
	wFXHf2WCRaSNakTgChGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH117-00000008szP-0zb8;
	Tue, 11 Jun 2024 12:54:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sH114-00000008syG-07O2
	for linux-rockchip@lists.infradead.org;
	Tue, 11 Jun 2024 12:54:23 +0000
Received: from i53875be5.versanet.de ([83.135.91.229] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sH10g-00071m-Sm; Tue, 11 Jun 2024 14:53:58 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 kever.yang@rock-chips.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH] Revert "arm64: dts: rockchip: remove redundant cd-gpios from
 rk3588 sdmmc nodes"
Date: Tue, 11 Jun 2024 14:53:57 +0200
Message-ID: <2131536.VsPgYW4pTa@diego>
In-Reply-To: <20240611120645.457-1-naoki@radxa.com>
References: <20240611120645.457-1-naoki@radxa.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240611_055422_184126_9AE89E40 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 11. Juni 2024, 14:06:44 CEST schrieb FUKAUMI Naoki:
> This reverts commit d859ad305ed19d9a77d8c8ecd22459b73da36ba6.
> 
> inserting and removing microSD card is not detected since this commit.
> tested on rock-5a and rock-5b.
> 
> Fixes: d859ad305ed1 ("arm64: dts: rockchip: remove redundant cd-gpios from rk3588 sdmmc nodes")
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

This is probably the same thing as 5 years ago on rk3399
https://lore.kernel.org/all/0608599d485117a9d99f5fb274fbb1b55f6ba9f7.1547466003.git.robin.murphy@arm.com/

So we'll go back to cd-gpios for now.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
