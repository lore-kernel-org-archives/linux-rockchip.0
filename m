Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 567EFC47DD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Feb 2024 13:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x/a7gbHeHAoCa/jb2Wrna35eb2WsoERGz/H0a/JZnj4=; b=x9j4CqtnIFN3C4
	FkI+bDNmFvmpt0gH0uNuSbeQLjjPuzo+AhKPOXn5S8x6h1pvEyGcsBEQm5eiweM6a3Zda6/IS+6W5
	z4DiiaLLju+igRpbxvdjiWREOgGSBOPBv0cYWD3syGcRKTRUrvjnCxy2OXar+oZmspVoak2fkp+zk
	EVqWmL7gwfh7TlH/8Viv0LlnWAqpm5m4w7myeTIwlmYurA5CKtVFRBidP+J4SZydMCViu89jMmguB
	dNTRI/O7eaYB+4iAS3PhfHvtEv8gn4nejpqmcKe3MvWg+RWOnwpCD/MGYiX4u9g6mCYEPW1Qh9fLV
	Qfeys1+A5flEguLNhlKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfJaA-00000009N6c-47nc;
	Wed, 28 Feb 2024 13:02:46 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfJa8-00000009N5i-0uqA;
	Wed, 28 Feb 2024 13:02:45 +0000
Received: from i53875b6c.versanet.de ([83.135.91.108] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rfJZz-00020N-IA; Wed, 28 Feb 2024 14:02:35 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	quentin.schulz@theobroma-systems.com,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org
Subject: Re: [PATCH 0/4] Add support for Theobroma-Systems Tiger SoM
Date: Wed, 28 Feb 2024 14:02:32 +0100
Message-Id: <170912529797.972844.5992915941484107870.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240227164659.705271-1-heiko@sntech.de>
References: <20240227164659.705271-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_050244_274045_2B422696 
X-CRM114-Status: GOOD (  13.01  )
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

On Tue, 27 Feb 2024 17:46:55 +0100, Heiko Stuebner wrote:
> This adds support for the rk3588-based Tiger system-on-module from
> Theobroma Systems and includes support for the combination with
> the Haikou-baseboard.
> 
> Included is also a fix for the rk3588's i2s nodes to remove a
> yet-unsupported devicetree property that slipped in.
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: rockchip: drop rockchip,trcm-sync-tx-only from rk3588 i2s
      commit: a8037ceb89649659831e86a87a9329d1bb43c735
[2/4] dt-bindings: arm: rockchip: Add Theobroma-Systems RK3588 Q7 with baseboard
      commit: c0263538c5ad8abd2053da6931e21878fa4ae58e
[3/4] arm64: dts: rockchip: add RK3588-Q7 (Tiger) SoM
      commit: 6173ef24b35b703078da8b714ba913bd78ee4d3d
[4/4] arm64: dts: rockchip: add Haikou baseboard with RK3588-Q7 SoM
      commit: f95d0903d0a5778822861411d441265b02ff3b31

Moved two status instances to the bottom of the list, where they belong.


Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
