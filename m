Return-Path: <SRS0=BK9L=MJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 18235C636CA
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jul 2021 21:52:35 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 82617610A5
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jul 2021 21:52:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 82617610A5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DCjssSaNMcCYqP0aTybJARaBTxrEFa2KMP45KxWpeOE=; b=Fzcor+ixPx1wUj
	L2bNCVcHv0t9u6BeQaNxZm6NTUOm+kmGRcaZUo/DeWfdiqzI6cSn+n25P2dEOcS5f4DKW6Ts9nJ5Z
	D6XMhOrxTtdq+MlFaZ32if+F+nJiOsCeIcfFI9qhVAUbLP6H5FxnYvNdlmF2yKNdwKueMGUcQUu48
	kgYBl7qc1o8gFRrKyAMFt7Wovys56AcEdltb6eeLZSv2h9CU3e8o3zgya9US2gq1eZvtH3RJM+xYg
	klfoccnKCtsqUV0ShRjwDfWcInrOPV6HHnpdAwhveLLHU9e9pb0jimA7N1yyjgK2vBXOpgEuWX4Fq
	Y/kXUR+1LNUlwWQB56dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m4sEY-0074iE-VH; Sat, 17 Jul 2021 21:52:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m4sEL-0074fF-Ls; Sat, 17 Jul 2021 21:52:19 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m4sEI-0006yf-7X; Sat, 17 Jul 2021 23:52:14 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Alex Bee <knaerzche@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v2 0/5] Updates for Radxa ROCK Pi 4
Date: Sat, 17 Jul 2021 23:52:10 +0200
Message-Id: <162655869103.853863.7477122882144074913.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210618181256.27992-1-knaerzche@gmail.com>
References: <20210618181256.27992-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210717_145217_752388_301E0EE8 
X-CRM114-Status: GOOD (  12.64  )
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

On Fri, 18 Jun 2021 20:12:51 +0200, Alex Bee wrote:
> This series adds support for 2 new revisions of Radxa's ROCK Pi 4,
> namely ROCK Pi 4A+ and ROCK Pi 4B+. While most things are in common
> with the previous 4A and 4B revisions, they have OP1 revision of
> the SoC and eMMC soldered on board.
> Patch 4 and 5 add SPDIF and anlog Codec to the common device tree,
> since they are in place in previous revisions as well.
> It superseeds
> https://lore.kernel.org/linux-rockchip/d4e4e06e-6ddd-4707-232d-b829c1d646e6@gmail.com/
> 
> [...]

Applied, thanks!

[1/5] dt-bindings: Add doc for ROCK Pi 4 A+ and B+
      commit: 0a777f84fd94aba8bd7282d9616e9160ac8ba757
[2/5] arm64: dts: rockchip: Add RK3399 ROCK Pi 4A+ board
      commit: 7ce2bc0f8295afd794264e503a4c8cabd09e8b38
[3/5] arm64: dts: rockchip: Add RK3399 ROCK Pi 4B+ board
      commit: fb094a9957b4500b6988b0927ef408636bff966b
[4/5] arm64: dts: rockchip: add ES8316 codec for ROCK Pi 4
      commit: 9e595375ddf8c71bdd23df2a6769518116dbc6bf
[5/5] arm64: dts: rockchip: add SPDIF node for ROCK Pi 4
      commit: 30910d85c20d929ee1e618bfd86e0fc2f510739f

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
