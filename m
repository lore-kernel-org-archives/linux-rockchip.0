Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7EDCC0015E
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jul 2023 14:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DERWeuwfSfY6D+u5GHsWy+QCqykv4/jvVCKYc2qrnPA=; b=Ys9baeboJA/sHV
	BMdGk6dfkiLFZl3ysYf5sr1CTWfPVEpN/XBhpV4WNcj5e8oLTCJvbArDWPXOaMf325Z9jYoebXOnF
	v5oW3WvGiQsB/eBBawC131vojvY+U4LtoSNh/YyNoMUPEXRuULK+fU8cwN1rQuxuxPTUMMUDNfKW7
	eq9kRKJhd62Usor5jfMZ/gM4J11DsLqA8QayrzkL5hRSAk0/Rx3hP6tfAYQvXqU0bgN6szxo0Cmrf
	+3Kc7N9rJa3XmPBlLzZrm0mf/0p1N1bpwzdjPN1AUV1l+TC3e0E8a1MGEBv8YDok3MsJqsidnm2EH
	nRYsRuYJD8Z61EeRWK3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qH3DG-00G525-1K;
	Wed, 05 Jul 2023 14:10:34 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qH3DC-00G4zk-0b;
	Wed, 05 Jul 2023 14:10:31 +0000
Received: from obbardc-t14.home (unknown [IPv6:2a00:23c8:b70a:ae01:7599:ed26:1798:f430])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id F2C3B6601F5E;
	Wed,  5 Jul 2023 15:10:26 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1688566227;
	bh=y0Ghe9koICkN/RpJzROtFUmgT0UnN61Nopi/vdGHi5c=;
	h=From:To:Cc:Subject:Date:From;
	b=BxqEg2BidsL4JQgj2HaFCORG8pylLXX+9b3F5qjWGa2cl12kvYjrjKSA2lOr1AvWD
	 3koGNDg/GI01yi4W59UQsAjhheQWQJtflBVgRQfvDxHFRwFCLEvuoOOMox6KIwIsiD
	 qgs3ghfsR0ACx+IoaW+jibfqmmQEk23pxcjC3jmqAvucncUqra5WEO16/Og7RW385s
	 /EfDNY6VZ2hQ9/dU/No9gTc3HFBAb7aaFVOXOLzQKK0Gh6kWiMNgliMat37E3GtJrR
	 PMBKTwtLYm0PmpczSxqKShGsj4B8ZBGPlPolhsHKnK6M0Ldg18DX2dUc9gqdNxPKG4
	 P6HogS4purCWw==
From: Christopher Obbard <chris.obbard@collabora.com>
To: linux-rockchip@lists.infradead.org
Cc: kernel@collabora.com,
	Christopher Obbard <chris.obbard@collabora.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Andy Yan <andyshrk@163.com>,
	Brian Norris <briannorris@chromium.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Conor Dooley <conor+dt@kernel.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Tianling Shen <cnsztl@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 0/3] Add support for Radxa ROCK 4SE
Date: Wed,  5 Jul 2023 15:10:08 +0100
Message-Id: <20230705141011.111568-1-chris.obbard@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230705_071030_461544_E0D91791 
X-CRM114-Status: GOOD (  13.64  )
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

Add support for the RK3399T-based Radxa ROCK 4SE board. This board offers
similar peripherals and form-factor to the ROCK Pi 4B but uses the
cost-optimised RK3399T processor (which has different a OPP table but
otherwise minimal changes) and some other minor hardware changes between
the Rock Pi 4B (described in the devicetree).

The first patch moves the RK3399 OPP table from the generic Radxa ROCK
Pi 4 dtsi into board-specific devicetree files, in preparation for the
ROCK 4SE devicetree file (in later patches).

The second patch adds the devicetree binding documentation for the Radxa
ROCK 4SE.

The third patch adds the board-specific devicetree file for the Radxa ROCK
4SE.


Christopher Obbard (3):
  arm64: dts: rockchip: Move OPP table from ROCK Pi 4 dtsi
  dt-bindings: arm: rockchip: Add Radxa ROCK 4SE
  arm64: dts: rockchip: Add Radxa ROCK 4SE

 .../devicetree/bindings/arm/rockchip.yaml     |  5 ++
 arch/arm64/boot/dts/rockchip/Makefile         |  1 +
 .../boot/dts/rockchip/rk3399-rock-4se.dts     | 65 +++++++++++++++++++
 .../boot/dts/rockchip/rk3399-rock-pi-4.dtsi   |  1 -
 .../boot/dts/rockchip/rk3399-rock-pi-4a.dts   |  1 +
 .../boot/dts/rockchip/rk3399-rock-pi-4b.dts   |  1 +
 .../boot/dts/rockchip/rk3399-rock-pi-4c.dts   |  1 +
 7 files changed, 74 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rock-4se.dts

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
