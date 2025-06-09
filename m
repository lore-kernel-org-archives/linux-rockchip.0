Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 70DAAC5B552
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Jun 2025 10:45:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/MyZLM9G1S4p4Ps2NOET1xMH4Wc7cwPtH2aSMoNx6O8=; b=b8uCvwPT4DFxLX
	gECU7wQGzKNYHMlm9NMDd3W8uBPaianyEChmY14TGH1+QMhD6gtLhRtBuoiNVHrhe4pRCM3Xy+l2Z
	tO3+e6B84v9vJS6Rbb1/6opXNklI2G0xM3e6hKjRjS5Z92nPlDSu5uKQN0R4doORmjxwrZwqYX7hd
	H35rB1i0OYgC7qqspB047VNH4fQ0CzurA2jEXd+thvxrl1VR3wZ3RxWzK/+L4+wvzPpRQaVedezfB
	OcqeE10jq0ZVJMvi6zHNAUQxlEkszHDgEltuQQR+9P1D/tOiowKqHjtY26FiqnZv66QLHfI6VepaG
	7zcwQNm8b+AIIB6oQWLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOa0c-00000003wOc-3ZTh;
	Mon, 09 Jun 2025 10:45:42 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOZfJ-00000003tWg-22ej;
	Mon, 09 Jun 2025 10:23:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=ZZM08u/ZwFdSTLKGSi2Lr532AuxtYKdqYqXMoYpFYrU=; b=PycMHKuUPgOEgJCKL6ls2H7MMb
	rFe3QS4Z21notXgNism+v5+qdJPdizCMa7FofzODGvhHdB4XbpNzdu91gnZHJRQs5frKHloSmm0I3
	pQwDwQJnfpMhsKklchVEZ21asy4okOXYqAz9mO9cEa+3PQeWKynJhCRxjZFRW8zX5m+aKJ7Ctkwke
	aJN/Wqxjk6d3atC2mbVGNrGH4Sh8yk/WRj2/ALmsGgSj4jqU5xbXMahdMuJv1k+D7kH/oy+PAikgN
	bOvoKteO7rEn/zCTDmrIsbPTGPQnDqEFM07tgNIbMJKElXbliYBcVfvmbPAHL+CShMMfqOCDH8kkx
	MaG929PA==;
Received: from i53875b1c.versanet.de ([83.135.91.28] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uOZfF-0006Av-R4; Mon, 09 Jun 2025 12:23:37 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	kernel@collabora.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 0/4] Add RADXA ROCK 5T support
Date: Mon,  9 Jun 2025 12:23:05 +0200
Message-ID: <174946455542.762051.4819735721903497474.b4-ty@sntech.de>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250520-add-rock5t-v2-0-1f1971850a20@collabora.com>
References: <20250520-add-rock5t-v2-0-1f1971850a20@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250609_032341_546231_31CC9026 
X-CRM114-Status: GOOD (  10.34  )
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


On Tue, 20 May 2025 20:50:07 +0200, Nicolas Frattaroli wrote:
> The ROCK 5T is quite similar to the ROCK 5B+ and the ROCK 5B, so to
> share as much DT boilerplate between them as we can, this series
> reorganises things a bit and then adds the ROCK 5T .dts.
> 
> 

Applied, thanks!

[1/4] dt-bindings: arm: rockchip: add RADXA ROCK 5T
      commit: ecf7114f818148df10f4e13b5e1087de2f5d687e
[2/4] arm64: dts: rockchip: rename rk3588-rock-5b.dtsi
      commit: 8b76abf78321ea3361c01e849c8dc3a6793c05d6
[3/4] arm64: dts: rockchip: move common ROCK 5B/+ nodes into own tree
      commit: 988035f152709549a095b12fcdcb3cf26cbad63f
[4/4] arm64: dts: rockchip: add ROCK 5T device tree
      commit: 0ea651de9b79a17cbe410a69399877805c136b76

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
