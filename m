Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68E61C46467
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jan 2023 19:54:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AF17075MI9b7rQGsyuGN0BWAokqXm03DGny6e+8prDA=; b=qZmNjZAch580bi
	gpiedzb/Azq5G6euPljKVHKwDGEI0pK/7JUVrYwi7Ty2K1aYP+bsS3JM3tl1X5eHLwmmvdlIW72Yq
	CGklh1CNSQfT+EPIH+b2EGApFZFMC6EHfGjy2uqnWLsU5Pd1x2zNtxBb2kJVl1hpVxMzaGkWDnwH0
	mFBMpm0uLjUQRgT/rlJTGxrfTLfuM283g/iLBjHWaE0fBubBRTNiRgGeMx0Jmrq+Enzn0RQpefdFE
	QAlXV6Oy5LQ9teQPnYvMiwArKR0YQq2VLnEOf4D4Do1cjMuhF/Ol9OAVqMArE525HRTLrirIGIW2a
	t4SJkcprH6i0A6uJ8jtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFKhi-008Nbh-Kl; Tue, 10 Jan 2023 19:54:38 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFKh7-008NOo-IV; Tue, 10 Jan 2023 19:54:04 +0000
Received: from obbardc-t14.home (unknown [IPv6:2a00:23c7:6883:e501:329c:8425:8e97:eae9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 250706602D29;
	Tue, 10 Jan 2023 19:53:57 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673380437;
	bh=j/8Gif3NnDbiDrt0IFW2ZyV2q1c+kw+yFb4xTvuG194=;
	h=From:To:Cc:Subject:Date:From;
	b=C2pXox6xy7EDSWKcsa2rvfegQuz10jK4VhBnKq40ddvVazOxgAz052o5npeEwcU4j
	 eTnbxQKmMbQjM96kSH8CFx6gKYOGMcom2l9GncOiEFbLSxLfQH/sfTjm/l4vK+UqqQ
	 dDVscXbTaWr+B63Ehc9u5Bo/Lp1Lh49DjUJumseJT5HmBe/vMteouC4q0LikRmNHOK
	 /j5EvBAg7Wan2UZjrlUr1TpZdkDK8fZIfMOua73zb+CgEpEF4C/5OvoPgs2breb0xE
	 TQxCl1aD6wtWaWnbkoR7IAj3Rm/rC0NXji40Zr+hvrCrhuMXtyUmreVmoh46oGsyZ4
	 f5RPyfKCF1c0Q==
From: Christopher Obbard <chris.obbard@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	Christopher Obbard <chris.obbard@collabora.com>
Subject: [PATCH v2 0/3] Update eMMC alias for Radxa ROCK 5 Model A and Model B DTS
Date: Tue, 10 Jan 2023 19:53:49 +0000
Message-Id: <20230110195352.272360-1-chris.obbard@collabora.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_115401_879636_9521D1BB 
X-CRM114-Status: GOOD (  11.43  )
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

The MMC aliases for the Radxa ROCK 5 Model A and Model B do not match the other
Rockchip devices: mmc0 is usually the eMMC. In the initial devicetree series,
I incorrectly set the alias for the eMMC to mmc1 to match the vendor kernel.

Update the alias for the eMMC to mmc0 to better match other Rockchip devices.

While we are here, remove an empty line to keep good style across the tree.

Changes in v2:
- Use correctly line length for commit messages

v1: https://lore.kernel.org/linux-rockchip/20230110155252.189300-1-chris.obbard@collabora.com/

Christopher Obbard (3):
  arm64: dts: rockchip: Update sdhci alias for rock-5a
  arm64: dts: rockchip: Remove empty line from rock-5a
  arm64: dts: rockchip: Update sdhci alias for rock-5b

 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts  | 2 +-
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 3 +--
 2 files changed, 2 insertions(+), 3 deletions(-)

--
2.39.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
