Return-Path: <SRS0=scLn=JI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3432C433ED
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 18:55:26 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2A29B61003
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 18:55:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2A29B61003
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KRe/zkjuOW+oPg4HQnikr2MMl4Bw2A7XHLgzDw5GwkQ=; b=JIPGQgjvGf6n2Jt0ZoHA/SCYO
	xXCaydFeMw1G571iMCKUA4L/fNKRRpDJ4qZ03Ww8i3h8TtWlaWhpH4QVUWoZcV/0V529U2/mvFJ8u
	zV2bPV990pI183xJ0Bqzu3IgRdKtUtGEuwRPNtDKyaRh+UPlY83KeJpozxAqTPZ79PIFd7RxmCNRY
	y8GUAa2TTOIYWSGZhKHBufDTMHL+yIB5d4nHp/bMEL7Xe7Dlw9q5qDLtmubLNqdidalG9webVGZJT
	FWSNGPW2lsXTSwjKyoBeeOXn4VcfS3wsICudJu/bHFUAuet0YU1S08cuBgQfw+RBGyirv6xQkzJmX
	lyeshviLg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVfEt-004wZj-FQ; Sun, 11 Apr 2021 18:55:19 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVfEq-004wZP-CW; Sun, 11 Apr 2021 18:55:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=qulurcJJ56KgNE6ZVOoAG8ugcI7yChvoBMA22rR4rYc=; b=eRsHXLTSWiVeQpYUUBXGG1KBEW
 Jbai3Z0xI1ZmSA4UVt2xAapWAT3z6H2sIPVsosiUv1sKFkNP7j6jrjMMB3PkGhHR1RTGxSNVT0e8A
 ZKQHQ+HKTs7TQWdmc4oZY0Ct+8v1QEwv/qlw4Tr+aj7ikwlV9kBeF0EY7SMxKAMWPhJH7tizf48Kq
 VDst0elmOImmUsLS845KYVE9k6jxIuRgUqcjm47DTQFPUncC3vsdl42yOCUHj9cSsmOcF5MQ6nsdi
 J0tiYm1nEPQvz40Iouz1lhYsCrKyGPBQCKRu1GNKmWp2/Jdvl8TtO193xUttR/KdNYdA6vekMzg2N
 cB38jTsw==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVfEn-005elc-Qk; Sun, 11 Apr 2021 18:55:14 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lVfEk-00065O-DX; Sun, 11 Apr 2021 20:55:10 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: robin.murphy@arm.com, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, arnd@kernel.org,
 linux-arm-kernel@lists.infradead.org, jbx6244@gmail.com,
 jagan@amarulasolutions.com,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Subject: Re: [PATCH 1/7] ARM: dts: rockchip: move rk322x mmcx aliases to board
 dts files
Date: Sun, 11 Apr 2021 20:55:08 +0200
Message-Id: <161816730063.114996.16784124163737635566.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210324122235.1059292-1-heiko@sntech.de>
References: <20210324122235.1059292-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210411_115513_885861_D1F5BEAD 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 24 Mar 2021 13:22:29 +0100, Heiko Stuebner wrote:
> As suggested by Arnd Bergmann, mmc-aliases are supposed to be
> board-specific, so move the newly added general aliases to
> the board-level on rk322x-based boards.

Applied, thanks!

[1/7] ARM: dts: rockchip: move rk322x mmcx aliases to board dts files
      commit: 23a52b0dfebf8b9ae44829c561c3d82d8b9c48e3
[2/7] ARM: dts: rockchip: move rv1108 mmcx aliases to board dts files
      commit: e89db2b4c706b9ca1293e7025ef5e8730b5d1b5b
[3/7] arm64: dts: rockchip: move mmc aliases to board dts on px30
      commit: 78b8513b763c121d0ac5ed8fef3188ea065913bb
[4/7] arm64: dts: rockchip: move mmc aliases to board dts on rk3308
      commit: 3f6c22987c0bdfb42b497e346d77b6cdaed55de3
[5/7] arm64: dts: rockchip: move mmc aliases to board dts on rk3328
      commit: 28869aa53506a12d98f6e5ff54b051400be1c2bf
[6/7] arm64: dts: rockchip: move mmc aliases to board dts on rk3368
      commit: 751a78a8bd25ac2634baa19f6f918912360fba93
[7/7] arm64: dts: rockchip: move mmc aliases to board dts on rk3399
      commit: 5dcbe7e3862dfc89d219f37a9ed5e53944fa13c2

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
