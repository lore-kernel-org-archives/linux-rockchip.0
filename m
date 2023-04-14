Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02660C77B6E
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Apr 2023 12:54:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lOTfiGFE+t02vsCn7EX6w3wZyxO9io1p8BQtQnC0+/I=; b=SqbeAYsT6RILvG
	LWNHD4enlapOi3QO7ZzLjebG7u0Lma3JsvSmlbdh3ycixQEH53752b6iC1bosC3F3qTv+oVLy6Nqs
	DWlol7wAwcy7C9yv1QhkHtgHl5fbxPeL4Ead8gTQkbey7ru2Px3ZK+m5Ct7gpCHVaoaeq63xt69iB
	ujxTWrlbwvEW7e3bUbkZb/fKSTsQqpKQT27iuXWQb9IuKPcU/ICFhLp85AO3C7YL72e3c4Asc1hpc
	4+v2GoW04WSJth/oDpTTN7pWxOsk8sdJlZf2OBwUGOJ5dDTwONKjb+NOHj5wpRA8PVQzm8BIHEktL
	v2xI6SojdUnScS9PoDsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnIwn-009ZZ1-1i;
	Fri, 14 Apr 2023 12:54:37 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnIwi-009ZXX-31;
	Fri, 14 Apr 2023 12:54:34 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 51CA1660321F;
	Fri, 14 Apr 2023 13:54:30 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681476870;
	bh=Wl63dJlOuGq6x8fRRD2knD1ranBH3LZRlpuduSejw+s=;
	h=From:To:Cc:Subject:Date:From;
	b=bl7NXxvUOxW5cQXlZWclWGgpZBxnJzp5OGsyRUW6TputrA6gRszxtlxspjDq177UP
	 0ObtMA38oUogRYCfLI56gNdNpkWGCSXV3QTztIEfj/+B2+IYjmHrkkH8KVLxhl27Fy
	 Bn+mEEtnEuFPfkOFYT8gyEBH8LPIaL+Ji1xnTh1uMB5PVFs1lQLIuyz03bJv7NI926
	 MXYyYw3yNVrM0/ALF4q/HyzIBmhPveoMKtZ5ub01SdBwqNDOepvuCsCHWKk/mPhMr0
	 oyENgQwO9wo4Og1qZ3aiY2wif7/wZm5SEilsaBYIuS682rQNHTclg4d4+XZAUynrX1
	 lGkWeXVdF9T9g==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shreeya Patel <shreeya.patel@collabora.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v2 0/3] Add regulators to Rock 5B's CPU big cores
Date: Fri, 14 Apr 2023 15:54:22 +0300
Message-Id: <20230414125425.124994-1-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_055433_205836_83013A06 
X-CRM114-Status: UNSURE (   9.94  )
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

The CPU big cores on the Rock 5B board are powered by the RK8602/RK8603
regulators. Since the support for those regulators has been recently 
merged via [1], add the necessary device tree nodes and bind them to 
the corresponding CPU nodes.

Additionally, provide a couple of unrelated DTS fixes/improvements.

[1] https://lore.kernel.org/lkml/20230406194158.963352-1-cristian.ciocaltea@collabora.com/

Changes in v2:
 - Extended PATCH 2/3 to handle rk3399-pinebook-pro, per Krzysztof's review
 - v1: https://lore.kernel.org/lkml/20230414093411.113787-1-cristian.ciocaltea@collabora.com/

Cristian Ciocaltea (3):
  arm64: dts: rockchip: Drop RTC clock-frequency on rk3588-rock-5b
  arm64: dts: rockchip: Use generic name for es8316 on Pinebook Pro and
    Rock 5B
  arm64: dts: rockchip: Add vdd_cpu_big regulators to rk3588-rock-5b

 .../boot/dts/rockchip/rk3399-pinebook-pro.dts |  2 +-
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 59 ++++++++++++++++++-
 2 files changed, 58 insertions(+), 3 deletions(-)

-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
