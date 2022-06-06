Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF565C43334
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jun 2022 08:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iWHfHeXGFowtf3ECAA0eJy91cru5h1Hz6YRC4duUIVE=; b=lc3xodrSqkCcN6
	eJuSWaDf5eaFJ9/X9REjyeT3mx8NV8jSdp25Pd65MFrWe950moq4DGWQupOES+fMY2zib52xvaTSf
	wGbK7KHet4HKp/SyQCfn8i3h+uB0arkEai7DwVCuKB1dikgMIkdwq6wnoDCTv4YwseB7CYYeLVuHL
	qZFrUa+8GWxB8mulOk9xB6Y03U0pz6zTmr/c2mkYtyUbUDmYHM8gm5uYNYkTaPg2amX+08P+10wIi
	1ynAwdX3yUZXT08R0cUkwjpHrjxZYTyywmrMYjsWeDgg2FM6Sxt+NUD1bawOZQTqIVDJGW7K/VvHE
	lEC8ixlYg94a4J5m/Row==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ny84f-0007Gp-6W; Mon, 06 Jun 2022 08:26:57 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ny84L-0007Bx-NK; Mon, 06 Jun 2022 08:26:39 +0000
Received: from beast.luon.net (simons.connected.by.freedominter.net [45.83.240.172])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sjoerd)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id E38EC6602048;
	Mon,  6 Jun 2022 09:26:31 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1654503992;
	bh=OpqSiLRbiQXWwWFspItgtW+FJ7vOxddMc4NNBEhlLKk=;
	h=From:To:Cc:Subject:Date:From;
	b=FReCM5JG/Ym/gkPXMQG7+WKfJBXbkpPRNlSmQst7nZL4vcU/Zo2quJ3SS4It1LIJX
	 ZNk1Ds98Y9carv9X3A/ANw62wYxh/VS6i2m9nyuyyXDaXOICFSHIAtsAJ2pkbIAZ66
	 Swu9VUA100igoLlCcy2Korw3d0znXk/TaInQ8WWfGd6kQqpvyp7CdHy/7QKFGZSK2h
	 Vpi18Ob45re0tapRkdx64jNjB0y8aB1g4aGDWPxEzdy4Lpav0f+RAXeiRq76qp+FQW
	 lROCSx+N2WU6/sczgnNx0MS4tLREBosHnHQev/IT46ZM4kHGAdVUA5RSvi2q730fom
	 DGCQRwM+ob40A==
Received: by beast.luon.net (Postfix, from userid 1000)
	id 86303404D08B; Mon,  6 Jun 2022 10:26:29 +0200 (CEST)
From: Sjoerd Simons <sjoerd@collabora.com>
To: linux-rockchip@lists.infradead.org
Cc: kernel@collabora.com,
	Akash Gajjar <akash@openedev.com>,
	Alex Bee <knaerzche@gmail.com>,
	Chen-Yu Tsai <wenst@chromium.org>,
	Frank Wunderlich <frank-w@public-files.de>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Levin Du <djw@t-chip.com.cn>,
	Liang Chen <cl@rock-chips.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Peter Geis <pgwipeout@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Add support for Radxa ROCK Pi S
Date: Mon,  6 Jun 2022 10:26:26 +0200
Message-Id: <20220606082629.79682-1-sjoerd@collabora.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220606_012638_014108_95102CAF 
X-CRM114-Status: GOOD (  12.17  )
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


This adds a device-tree for the Radxa Rock Pi S; The first patch was
originally submitted a few years back but seems to have stalled. I've
adjusted it to sort the device nodes and drop duplication of dtsi
properties. The second patch adds support for a bunch of additional
peripherals.


Akash Gajjar (1):
  arm64: dts: rockchip: add ROCK Pi S DTS support

Sjoerd Simons (1):
  arm64: dts: rockchip: rock-pi-s add more peripherals

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3308-rock-pi-s.dts    | 256 ++++++++++++++++++
 3 files changed, 262 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts

-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
