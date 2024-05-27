Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A399C25B79
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 May 2024 22:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=apV5RtqSCtCKKeQAOZitbYfddO5plzEzhFtnmIwexrU=; b=Sgh7M0kLkyofV2
	RKBTyKLRNePTfTYs/Ei0zWxnAeiLxrb0IE8qRc7p0fJUieD2bxXFRIIkRJtxT1iZnkSM56iL89PPR
	bbsYMEkq8Kk0eZ7dO1/HBvycGTXRGOo1xvWxLh2hHS53mkO5VcAoxd46QqVXDw19oNpbBgBEqRGLT
	hVEXgSr0oaXq6x3YyW/KAEJGe5UueRNJhSrf7lVEqdZdEblTLUItU4kjkZZHECrJBc4p/bBOOZTdC
	6+KfMxVSlBSc+WCYIJth08VnjpwhUKxxGI58cC2qw8Wpslo/9jsrsVlCQTZNr50+qhtRklZ+fMov5
	g6yjJoIr8nUGx1YuSPSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBj30-0000000GVlH-0xXE;
	Mon, 27 May 2024 22:42:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBj2v-0000000GVj0-2vbN;
	Mon, 27 May 2024 22:42:26 +0000
Received: from i5e86193d.versanet.de ([94.134.25.61] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sBj2q-0005Os-U1; Tue, 28 May 2024 00:42:20 +0200
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
Subject: Re: (subset) [PATCH 00/13] rockchip: Fixes and improvements for ROCK Pi S
Date: Tue, 28 May 2024 00:42:16 +0200
Message-Id: <171684956152.1783037.15483261423757153532.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240521211029.1236094-1-jonas@kwiboo.se>
References: <20240521211029.1236094-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_154225_761562_384E4576 
X-CRM114-Status: UNSURE (   9.45  )
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

On Tue, 21 May 2024 21:10:03 +0000, Jonas Karlman wrote:
> This series include fixes for DT schema validation, fixes and improve
> support for onboard features of the Radxa ROCK Pi S board.
> 
> Patch 1-2 fixes DT schema validation of ethernet and audio codec.
> 
> Patch 3 fixes use of onboard SD NAND and eMMC.
> 
> [...]

Applied, thanks!

[02/13] arm64: dts: rockchip: rk3308: Fix codec@ff560000 reset-names
        commit: cb1622df6a28e3eac34a8b95feba2dd2dc6cd887
[03/13] arm64: dts: rockchip: rk3308-rock-pi-s: Fix SD NAND and eMMC init
        commit: 1fb98c855ccd7bc7f50c7a9626fbb8440454760b
[04/13] arm64: dts: rockchip: rk3308-rock-pi-s: Add sdmmc related properties
        commit: fc0daeccc384233eadfa9d5ddbd00159653c6bdc
[05/13] arm64: dts: rockchip: rk3308-rock-pi-s: Add pinctrl for UART0
        commit: 7affb86ef62581e3475ce3e0a7640da1f2ee29f8
[06/13] arm64: dts: rockchip: rk3308-rock-pi-s: Rename LED related pinctrl nodes
        commit: d2a52f678883fe4bc00bca89366b1ba504750abf
[07/13] arm64: dts: rockchip: rk3308-rock-pi-s: Add mdio and ethernet-phy nodes
        commit: 4b64ed510ed946a4e4ca6d51d6512bf5361f6a04
[08/13] arm64: dts: rockchip: Add OTP device node for RK3308
        commit: 36d3bbc8cdbef2f83391f7708888265ac4c37a99
[09/13] dt-bindings: power: rockchip: Document RK3308 IO voltage domains
        commit: 579e5b476307797b3a1260bec544dbbabcce1de5
[10/13] soc: rockchip: io-domain: Add RK3308 IO voltage domains
        commit: 0536fa6e6fa3e48f4ca11855b586c277be524fbe
[11/13] arm64: dts: rockchip: Add RK3308 IO voltage domains
        commit: d1829ba469d5743734e37d59fece73e3668ab084
[12/13] arm64: dts: rockchip: rk3308-rock-pi-s: Enable the io-domains node
        commit: 100b3bdee6035192f6d4a1847970fe004bb505fb
[13/13] arm64: dts: rockchip: rk3308-rock-pi-s: Update WIFi/BT related nodes
        commit: 12c3ec878cbe3709782e85b88124abecc3bb8617

I've split this up slightly.
Some patches for 6.10 as fixes, and the rest for 6.11 .
Edited patch7 (for 6.11) to apply without patch6 (6.10)
That disappears during a merge of those branches.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
