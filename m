Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EABD6C2D0CD
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 08:56:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D+syTcS6EVpJ+WChNODU9j784RcmbhRW95YiFP1zqMM=; b=niON1DXX2Km7ri
	mZU8RFYys1tDyKurOEisw6eL0dhUoS5bq3G3ISznxZHE1/zId92H1O6G7uEaJNcfOtxLVbFL1jW1/
	jbMWNrbe9Cst+v8MrtiaJ1AQi4GlokBmDvq4bMZZU0fkA4OufVw7pyZ/pLGyjoaFQLnFSr1/OhtOm
	HybhbukGaHCrRdkkjmdvvNZc6pe6Bk28Lxqfn0x/FD9I6ARfdyJ2sg7x7uE/J+RX6JtwrZ5nvmyOc
	17vNC+l9UEQXuLVSCgs5+rg6HgNPvZv1qjwbW0D1gov7qcZsBfgd8d5W/1taK1zpZMluAY4zkWfFX
	YjzE/BgZ+3sgeEPpj1gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGwIW-00000008Rcw-2v2G;
	Mon, 19 May 2025 08:56:36 +0000
Received: from smtpbg150.qq.com ([18.132.163.193])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGwIR-00000008RYe-3BfJ
	for linux-rockchip@lists.infradead.org;
	Mon, 19 May 2025 08:56:35 +0000
X-QQ-mid: esmtpsz19t1747644978tb41e14ad
X-QQ-Originating-IP: eDuQ10kV/w2x2ssHfOTwlUZRzAh8CxixkPLa9o2Ye5M=
Received: from localhost.localdomain ( [182.245.65.180])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 19 May 2025 16:56:15 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 4209043980013137046
EX-QQ-RecipientCnt: 16
From: Hsun Lai <i@chainsx.cn>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: [PATCH v3 0/3] Add support for Sakura Pi RK3308B
Date: Mon, 19 May 2025 16:56:11 +0800
Message-Id: <20250519085614.2245892-1-i@chainsx.cn>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpsz:chainsx.cn:qybglogicsvrsz:qybglogicsvrsz3a-0
X-QQ-XMAILINFO: NRLj+a+1JRyJwAcdLQLhLRHUgoSxhXpjish0FvCJYAt3oabgW+b4ekcD
	3F581BJiliV2j+okYFX3LI5LdnLEe5iktfqATml1nbjhIIMB4R17mrksKdiAQftVRU5kwK8
	Zbzd5olG84Rb/c1u7EXBiwciUFKhmww24C9WaghW/ZYXqy1MHuGHC3SPNw32jgbV/HrZkty
	LnH6/0WP/GdHeSt74FOecS9hf91KXRnfVfTAC0ZWja7WoyrOs6QOF+N3k1OyriqVnaDL2y1
	GProgtmPk2z1VhJ1vv7l46MLDCatJPCSChiASbLIUMEiGFvGhPOg4JSI6U1Vvvd586fo3s4
	BcnfaEoithSSffdAFPZLgCS+nShRyCaT0prafQMX9eFIuRbBa3ICCyPGGnMTeEjvHgBDBsV
	37B4u638//7JB7crP+Ko4p6oJlhhWvuyBY6Egw7K98suepQsDlIUkb2PHeL88tRF4nmyr0i
	0rxv3utGS+OEwVj9lmPwEbzj/fNQ2njVS9KybZPrkhHGzp4VDKGByZreq1XLSCpf1wvsiap
	ZhjuyZceaIhwDzNZky30rBXRgIMAxyQ+zH3znQtgM/9WcmxwVKjUA9E5nr4OgaA0RRcPG0t
	gIWa46d/1T2lCJQEIBAwzFU8NGJpPl2cAu5CWEC81tMJwv0YGCXsdqs6L8mFg4MVAIyolFj
	07K7YZOKlJOEvyEFJHpudIRrSTiNWRHnfbX1p3Vipp8O1s40ZNqLnHVtZSnEwES+JHDI7Sr
	0b+OVEgsrnm2F6Ss4DTlZG7eI4FWT/UbsaRm21uZkl0tS2hM7aUe+alqjQlMm9hd0xSQmqm
	KGcNGZpuUYQ7lKO4seSme3v/DZy9QFVdifA/sUxpmTmcTDT8DOlsfD93cOKnvlI7Xqjr4zG
	D6JFEbQnxgM4T2NXbTB53NDIyCMrBwpAZwPtTapuha6fKx2WrLqA+JvjVZuFqmZKU7LxDmv
	gScVYyd8QBPkij/8hLvgjLSZOFIKZxhh9989QA25CRCa/QKcFeOXJPDaP/kfZUPdgRPkAS+
	keFxCxj6pnWSHnOjxi
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_015632_332464_44E719D6 
X-CRM114-Status: UNSURE (   9.30  )
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
Cc: andrew@lunn.ch, inindev@gmail.com, heiko@sntech.de, jonas@kwiboo.se, quentin.schulz@cherry.de, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, krzysztof.kozlowski@linaro.org, devicetree@vger.kernel.org, i@chainsx.cn, sfr@canb.auug.org.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This series add support for Sakura Pi RK3308B.

Info of device can be found at:
https://docs.sakurapi.org/article/sakurapi-rk3308b/introduce

Changes in v3:
- Remove empty i2c controller (Heiko Stuebner, v1)
- Remove unused spi nodes (Heiko Stuebner, v1)
- Sort nodes alphabetically (Heiko Stuebner, v1)
- Put status as last property (Heiko Stuebner, v1)

Changes in v2:
- Update the names of the regulators (Heiko Stuebner, v1)

Changes in v1:
- Add support for Sakura Pi RK3308B
- Patch 2: Acked-by: Conor Dooley <conor.dooley@microchip.com>

Hsun Lai (3):
  dt-bindings: vendor-prefixes: Add SakuraPi prefix
  dt-bindings: arm: rockchip: Add Sakura Pi RK3308B
  arm64: dts: rockchip: add DTs for Sakura Pi RK3308B

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3308-sakurapi-rk3308b.dts  | 274 ++++++++++++++++++
 4 files changed, 282 insertions(+)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3308-sakurapi-rk3308b.dts

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
