Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88DDAC25B5C
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 May 2024 11:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PF4lv7PlQaxBu343QncbwTKNPBb4cRKf/ykHEFWme7E=; b=k/N/8KADX6bGUK
	mL8Mbujf0m9X+o2L+6QahP//h+iusyovDi6mVbyhna4uPpfO14gHVPDkTsOtIzVmEZkOoSJ2xSNEb
	ZtqAsMIZVsct3SKT3VrDsKcJDd8ZocezUwNCjDGvR79fGupy+/BEg8DdKnjeXa3+k9k9U93/dK7Xc
	B5/QGSST/vdAgtT/ww/lbzLpbcLhfzueL/9nWlvLrz8MtbGeUmY61xKt5+EI6IA9kgQ3Nb/RGdnhn
	+ee2mebFfJb7tO0IyKolTeg8shesRJlY5XdcCtBbj+FTEWboODz4znQ/sSef8hVn8k8TssmlMg6m2
	bgxKV/dt9DaeEFaw4H6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2rFb-0000000GHSX-2y42;
	Fri, 03 May 2024 11:38:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2rFU-0000000GHLh-3OlL;
	Fri, 03 May 2024 11:38:47 +0000
Received: from [213.70.33.226] (helo=phil.sntech)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s2rFO-0000Tc-1q; Fri, 03 May 2024 13:38:38 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 0/2] arm64: dts: rockchip: Add Radxa ROCK 3C
Date: Fri,  3 May 2024 13:38:19 +0200
Message-Id: <171473602992.3469033.3176474743011728197.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240428123618.72170-1-amadeus@jmu.edu.cn>
References: <20240428123618.72170-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_043844_901382_649D1C87 
X-CRM114-Status: UNSURE (   9.46  )
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

On Sun, 28 Apr 2024 20:36:16 +0800, Chukun Pan wrote:
> Changes in v2:
>   Collected Acked-by.
>   Drop cd-gpios for sdhci.
>   Add mmc-hs200-1_8v to eMMC.
>   Correct the spi max frequency.
>   Update model name and compatible.
>   Update regulator according to the schematic.
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: add Radxa ROCK 3C
      commit: c0c153e341d2a82241bf0a0b78117ceeb29be3eb
[2/2] arm64: dts: rockchip: Add Radxa ROCK 3C
      commit: ee219017ddb50be14c60d3cbe3e51ac0b2008d40

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
