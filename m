Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F2AAC54EBC
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 15:09:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xxgjJE9Pf+SAHTWK9aRISmMib6DFHcBcWj47eZ6eCuc=; b=o7HC7K8lgWRDCH
	kGSD1MVM5B099ZdvTrFr2/72aHrL4SyaEPuprd4INaH7uczE+jBEBenoVCye/KrvwuQel9s6bx+Oh
	qo6+Fu3xd0CsYrxGcs5RTvLYqljrEpVingRe9UcGfbTmWFN9MXPCrhRLy6v452JnZ9Olu7s9GCMLr
	hqW6wmBy5RH7vUwOBDScwgerGJ0M0TNfQl/q3UD3Zhef/sg0l5yf+4hGyoQ2lQ87gWJHC42+NUpx0
	dTKgegth0JWkvI4s0XzzOOd/ir2slVmt96jPNLZzLGN2rJeI5ZwySewt+h84UZdEEkB7+Tb+1ozY5
	2ks57Vx217LzbcZRf5yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGFf-007V7Q-U9; Tue, 10 Jan 2023 15:09:23 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGFO-007V3H-Nk
	for linux-rockchip@lists.infradead.org; Tue, 10 Jan 2023 15:09:08 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1pFGFL-0005Qm-Pj; Tue, 10 Jan 2023 16:09:03 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Marc Zyngier <maz@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-kernel@vger.kernel.org,
	Linus Walleij <linus.walleij@linaro.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCHv8 0/7] Initial rk3588 DT
Date: Tue, 10 Jan 2023 16:09:01 +0100
Message-Id: <167336332945.2556072.3953350646920815870.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20230109155801.51642-1-sebastian.reichel@collabora.com>
References: <20230109155801.51642-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_070906_804108_EE6EA913 
X-CRM114-Status: UNSURE (   9.43  )
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

On Mon, 9 Jan 2023 16:57:54 +0100, Sebastian Reichel wrote:
> This adds initial rk3588(s) DT including three different board
> devicetrees. All required driver changes have been merged into
> Linus tree already. To avoid warnings from
> 
> $ make CHECK_DTBS=y rockchip/rk3588-evb1-v10.dtb \
>   rockchip/rk3588-rock-5b.dtb rockchip/rk3588s-rock-5a.dtb
> 
> [...]

Applied, thanks!

[1/7] dt-bindings: soc: rockchip: add initial rk3588 syscon compatibles
      commit: 1d8d24f725b4bd2c8900ce338e522351cb42b34d
[2/7] arm64: dts: rockchip: Add rk3588 pinctrl data
      commit: d68a97d501f882cb8326d63f972fd6582a6411f0
[3/7] arm64: dts: rockchip: Add base DT for rk3588 SoC
      commit: 9fb232e9911f37416228468e6d1760c5ed82a4c8
[4/7] dt-bindings: arm: rockchip: add initial rk3588 boards
      commit: 4e522fea0798fce61e45d7a2e2ec7ab91fe31b79
[5/7] arm64: dts: rockchip: Add rk3588-evb1 board
      commit: 4159826f7c3d87b63f2e7e5b56d8a823542b5fff
[6/7] arm64: dts: rockchip: Add rock-5a board
      commit: a4a8f1afb36057765792349318ae848b9680c2b9
[7/7] arm64: dts: rockchip: Add rock-5b board
      commit: 6fb2d15497867da9a67687735e51d1add0a1486e

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
