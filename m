Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D50F0C25B79
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 May 2024 22:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5sj6E/9QqsSy6H014QsOp7MWXyjq/oMk29x1L1SOb7I=; b=sZC/5Dm/orNHob
	9aAM+VQMpKetxsXXh9YzYfYS938ctytgt6ybPvtgfqqYQ/AAV3XcuqN8PLJWeB58+X3lttpn7aFF4
	8cHsbbhpjUdgZZS9rkH0rNSndk7/4pN8g+zwHdNIkXtSOvdy2ae4sB1HtsdbEENl5kjN8qJ6q4m7q
	Cvb9xc2jSSPYW10JbxhJTsvHkB8Gxqqz48DDxDKRHzE/D+MdORUnIzTa/Au75B2QANunNiQERR3V2
	gZLd3S1Fd3nE7S2lXt05SrxjiyBT/DxoiV/BXezpLfcSY8zcQRr6Jg5umOpza4iKK9jLwoPSM6drV
	fEcLWWKUEfDUhgfCJdQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBj3J-0000000GVvR-3Ghc;
	Mon, 27 May 2024 22:42:49 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBj2v-0000000GVj1-3f3s;
	Mon, 27 May 2024 22:42:27 +0000
Received: from i5e86193d.versanet.de ([94.134.25.61] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sBj2r-0005Os-QB; Tue, 28 May 2024 00:42:21 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 0/2] arm64: dts: rockchip: Add Radxa ZERO 3W/3E
Date: Tue, 28 May 2024 00:42:18 +0200
Message-Id: <171684956150.1783037.13006696175237396238.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240521202810.1225636-1-jonas@kwiboo.se>
References: <20240521202810.1225636-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_154225_944890_6207CA20 
X-CRM114-Status: GOOD (  10.84  )
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

On Tue, 21 May 2024 20:28:03 +0000, Jonas Karlman wrote:
> This series adds initial support for the Radxa ZERO 3W/3E boards.
> 
> The Radxa ZERO 3W/3E is an ultra-small, high-performance single board
> computer based on the Rockchip RK3566, with a compact form factor and
> rich interfaces.
> 
> Schematic for ZERO 3W and ZERO 3E can be found at:
> https://dl.radxa.com/zero3/docs/hw/3w/radxa_zero_3w_v1110_schematic.pdf
> https://dl.radxa.com/zero3/docs/hw/3e/radxa_zero_3e_v1200_schematic.pdf
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: Add Radxa ZERO 3W/3E
      commit: ad986e45ada999d67bb47ec8a0316fc931927c21
[2/2] arm64: dts: rockchip: Add Radxa ZERO 3W/3E
      commit: 1a5c8d307c83c808a32686ed51afb4bac2092d39

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
