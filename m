Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 000FCC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Dec 2023 00:06:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QC7SHCQZVMpu63hMuoiYzW6JmQL3A38MkcKp91eOY0c=; b=qxhT627415DbXp
	O4X2JkhhJSGivnqQFLLpqEY7J3I1yeEGGiwBtxcgNarl+PvggGakHZOZrpe+iYZgVvdsSp6dRJDP3
	IW4OUyajl1NEyhuRBUfq7uK8UDyJGyNtlcSZOEiCpvqLXT0Z9ySbzsnBn7rLj3eRP2sc0m8j0GfqL
	ktIo9zWVXQtryZWifaoVAACSAnhDaGMacicyw2h54IGxPs3YXCzqjnJARRjG87QpUOzL4iqX9wzc0
	vqexve0Ll4K8fxT5TVsgMteRtVE0aWikSzg6t3i7yxuQCCcmh6m7QJOentc7IeRC+uS+E730QNbgY
	3U4yAwsg2ANiUsJeMU3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAIx7-005qbL-2h;
	Tue, 05 Dec 2023 00:06:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAIww-005qX0-28;
	Tue, 05 Dec 2023 00:06:09 +0000
Received: from i53875b61.versanet.de ([83.135.91.97] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rAIwu-0001qb-BG; Tue, 05 Dec 2023 01:06:04 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Tim Lunn <tim@feathertop.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	Andi Shyti <andi.shyti@kernel.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	linux-i2c@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: (subset) [PATCH v3 0/8] Add support for Sonoff iHost RV1126 Smart Home Gateway
Date: Tue,  5 Dec 2023 01:06:01 +0100
Message-Id: <170173468934.501889.1733383840975468730.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231203124004.2676174-1-tim@feathertop.org>
References: <20231203124004.2676174-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_160606_924141_F0F4CADC 
X-CRM114-Status: GOOD (  10.93  )
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

On Sun, 3 Dec 2023 23:39:56 +1100, Tim Lunn wrote:
> Sonoff iHost is gateway device designed to provide a Smart Home Hub,
> most notably it includes builtin radios for Wifi, BT and Zigbee, which
> make it suitable SBC for use with many of the open home automation
> platforms. It is availabe in two versions, first is based on
> Rockchip RV1126 and 4GB DDR4 RAM. There is a second version based off
> the RV1109 dual core SoC and 2GB RAM.
> 
> [...]

Applied, thanks!

[1/8] ARM: dts: rockchip: rv1126: Add alternate UART pins
      commit: 86fd29b0329c95d4136a5dcef555287a0be8a038
[2/8] ARM: dts: rockchip: rv1126: Serial aliases
      commit: 30250a587bddb5265bceb9f8397c459f5cc04e0c
[4/8] ARM: dts: rockchip: rv1126: Add i2c2 nodes
      commit: 655ff5d45dc9de5e67c839af4baf47eaffed348f
[5/8] ARM: dts: rockchip: rv1126: Split up rgmii1 pinctrl
      commit: d3bab19c83c7ce24e89d9f08f09e596c39b14658
[6/8] ARM: dts: rockchip: Add rv1109 SoC
      commit: bd6f1b13b972caebf54be1fb3bc2eb9f47de9d63
[7/8] ARM: dts: Add Sonoff iHost Smart Home Hub
      commit: 0f385eea8157bcb36d30d9f96105251465bc6684
[8/8] dt-bindings: arm: rockchip: Add Sonoff iHost
      commit: 98feed126e7dcae617af3b0e76f50160806e3233

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
