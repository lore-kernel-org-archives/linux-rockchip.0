Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 396C9C46CA3
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 10:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hAJnFULEw4HTxaG5keqvy+5C5EzzuXV6t/Dy5Akp5U0=; b=hVIFhtmNkb0lbT
	DpixmN56IWuIhfeNWs0xMuCiWday9ejpF9o57zsUX4+jSaAExPge8qS82mpgXWwvtZfMmreosOM4S
	uAm/YL1se4mtaEFMcDRulweMxFL+pJERcGuEy6BiTbK+B1CKq7hvrZp90DJx+5ey3n5kbQAvON9oO
	51OxQtjzCCpHeBL8HKAd9CHQWTMSE4u+dF7xn4R3ITjExZA8Ks5/jJZdkJtbprB65xb5kR2kGIAjS
	pWlC94WV3KrubEQC8sZ5yLp9LwHTdAX+ZgfWVUoyNSfy4ViNb34OXYodCZ6UTXNHmSlqXvAXBawns
	LN8wLzsXT78Bd5EZCWdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vRw-004wT3-0r;
	Tue, 28 Nov 2023 10:36:16 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vRt-004wRV-06;
	Tue, 28 Nov 2023 10:36:14 +0000
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7vRr-0003E0-50; Tue, 28 Nov 2023 11:36:11 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	kernel@collabora.com,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v1 1/2] arm64: dts: rockchip: add USB3 host to rock-5b
Date: Tue, 28 Nov 2023 11:36:09 +0100
Message-Id: <170116776016.2189213.11963461092677000892.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231106155934.80838-1-sebastian.reichel@collabora.com>
References: <20231106155934.80838-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_023613_067284_5D971FCE 
X-CRM114-Status: GOOD (  10.51  )
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

On Mon, 6 Nov 2023 16:54:31 +0100, Sebastian Reichel wrote:
> Enable USB3 host controller for the Radxa ROCK 5 Model B. This adds
> USB3 for the upper USB3 port (the one further away from the PCB).
> 
> The lower USB3 and the USB-C ports use the RK3588 USB TypeC host
> controller, which use a different PHY without upstream support.
> 
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: rockchip: add USB3 host to rock-5b
      commit: 3585766438c4c24dcc6cc93e26e9eccccce50a13
[2/2] arm64: dts: rockchip: add USB3 host to rock-5a
      commit: bbda1bf9586f0f0745ab1097df6975a9354a03ff

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
