Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6D3CBC3DA6D
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 May 2025 10:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hywe9lxFU9miHPoiKuFDo0ldqWHMwvFakDHV2CxwJAY=; b=YPnReVUw37hjsA
	uX4NbI+K/9ImpwhORl36NAzTvNIH6+/8f3bf7pSvv4im96pk/Uz7V5rG4SzYrgBP/xiaTYg4zaTFy
	1/2AMDOPDQBLjG7SLoNKrwPTpsjZC3zyEreXMt52kEbug68bNZq/CJQ/9ZzExR+9HZoI2jNNQc6Ig
	GjEagzmQVBVA5fv8M1Sl7bhNqRBfl+D3F9CBH2cbu5Mxn/1lwTASenMt0nCdBofbLSR2sCxlA/laq
	XFYiaeBVCy68c5Xmv9b+igynb/5LVDuosQICqNtUlJj1Widz6WUxaDVQVEPXJXjf2XSyJMzaHimBy
	k7I4vZMRXRWz/ZzKvciA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHK7q-0000000CKLV-0kKr;
	Tue, 20 May 2025 10:23:10 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHJmj-0000000CH6b-16Jt;
	Tue, 20 May 2025 10:01:22 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c04:7a30:290:8105:3706:5628])
	by smtp.qiye.163.com (Hmail) with ESMTP id 15b89590f;
	Tue, 20 May 2025 18:01:06 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Yao Zi <ziyao@disroot.org>,
	Rob Herring <robh@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-spi@vger.kernel.org
Subject: [PATCH 0/2] arm64: dts: rockchip: Add spi nodes for RK3528
Date: Tue, 20 May 2025 18:01:00 +0800
Message-Id: <20250520100102.1226725-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCQkkeVk4eTUxPQkgZHRkfGFYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlJT0seQUgZSEFJGEtPQUwaSEtBSUJLQUNKS05BSExLTUFOTUlDWVdZFhoPEh
	UdFFlBWU9LSFVKS0lPT09LVUpLS1VLWQY+
X-HM-Tid: 0a96ed23c4c403a2kunm0a9e35a49faac
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ogg6SQw4CDEwNho5PQg*Ni9N
	IgkwCVFVSlVKTE9MTEhOSU1MT0lNVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS09BTBpIS0FJQktBQ0pLTkFITEtNQU5NSUNZV1kIAVlBSk9NTDcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_030121_463486_D04A5ADB 
X-CRM114-Status: UNSURE (   6.10  )
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

There are 2 SPI controllers on the RK3528 SoC, describe it.
Tested using st7789v chip with spi-cpha and spi-cpol properties.

[   10.831306] fb_st7789v spi0.0: fbtft_property_value: buswidth = 8
[   11.042915] graphics fb0: fb_st7789v frame buffer, 240x320, 150 KiB
 video memory, 4 KiB buffer memory, fps=20, spi0.0 at 15 MHz

Chukun Pan (2):
  spi: dt-bindings: Add rk3528-spi compatible
  arm64: dts: rockchip: Add spi nodes for RK3528

 .../devicetree/bindings/spi/spi-rockchip.yaml |  1 +
 arch/arm64/boot/dts/rockchip/rk3528.dtsi      | 28 +++++++++++++++++++
 2 files changed, 29 insertions(+)

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
