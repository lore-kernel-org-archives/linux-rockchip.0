Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8255AEB64D9
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 11:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uQNOGUXx84fYMNQ5zOqMkTcTcCBnxHzKuLtvzZGXRlI=; b=mg8r147SDGaWcU
	CH1TivreAe9gVsVFKNM1glQwQ3XZdYr7VPDycPd+t4ppLhnov4vFNnqdXCUu/61vw+1vNc6Fos7rx
	exZm7/TzhcIYs65uYx23NYXycwl4KVi5NGXysiXT2FquxYjcJx+6YrdGhv+cxVGrmAVq5j3gdy+4f
	wRt+re/PYrVq7XQ8Uu8EVJODpf4kxU6ZKdLmH1YNbn66k82CTbHFOm1R3RtcQ/CLv9dd+79AhuR2n
	9CASS6Ag5hPyB2S3lIiQyX6/C37MI1cPqbKra9zqQlyBfw9O5R1v1QdBIQ1kCAIVW3O4FVgZPRBeU
	1hrgmW95NbK2p/w4LgQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIpPb-00BW0K-2g;
	Mon, 10 Jul 2023 11:50:39 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIpPX-00BVxC-23;
	Mon, 10 Jul 2023 11:50:37 +0000
Received: from obbardc-t14.home (unknown [IPv6:2a00:23c8:b70a:ae01:f690:3e44:90e:2421])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id F34326606F65;
	Mon, 10 Jul 2023 12:50:29 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1688989830;
	bh=JumdZYtvxLtSAoNuus3Vk18IRLG+75lEolvKS608bXw=;
	h=From:To:Cc:Subject:Date:From;
	b=SyQA4C4YrHxruum9uozCSEyOzdJEYVKhNzUFcSM8smtOmhrKedlIKMkVwUvSQYzEM
	 2cs3s6LCDPHuxsgKXrDTyf/UkqYJdegxvqnl0EjYEMmPWIuPZeHyJhmJ1AETF9y9RY
	 TF/5UQmADD62eiHbcI8ERhwQsuD74ZBJ/JKAouwlb9h8DVtAQlgIFRqBSO56z6Jc6v
	 IcsjbAcvsUYw3aoDmp2sY2beFbmp1kfQKJfxprE4TyHEujQzF4Z2lwOcPbS7F3m/tG
	 U1V74jNBgUJH97V9yjk8DMPJYdYhP7oNCPTHf++6XfhjgCdRT8jUt1o+s6ZWt38ldZ
	 c+ajVcanpSeqA==
From: Christopher Obbard <chris.obbard@collabora.com>
To: linux-rockchip@lists.infradead.org
Cc: kernel@collabora.com,
	Christopher Obbard <chris.obbard@collabora.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Andy Yan <andyshrk@163.com>,
	Brian Norris <briannorris@chromium.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@amarulasolutions.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maya Matuszczyk <maccraft123mc@gmail.com>,
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Tianling Shen <cnsztl@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] Add support for Radxa ROCK 4SE
Date: Mon, 10 Jul 2023 12:50:22 +0100
Message-Id: <20230710115025.507439-1-chris.obbard@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_045035_826740_2383FF8C 
X-CRM114-Status: GOOD (  14.32  )
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

Changes in v2:
- Add Krzysztof Kozlowski's Acked-by tag.
- Set proper interrupt type for brcmf.

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
