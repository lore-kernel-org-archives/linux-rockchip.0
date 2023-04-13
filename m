Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30A65C77B61
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Apr 2023 18:24:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=drZE1rlHwM0BWnCeWM3ohSgdvuaiKfvNt1j2e7DXB/U=; b=bwLIEiMDEwbucT
	iw0twrGb7BlDBeDYBqA2SxkjjpQJ67OrrjVTbH8Y6WUs5y4DjaKBAJFbIImBDx9v71G9glWGpME/9
	7WESkEE1FKPFpPDnAn3u5Zjz8t1KTvPnXmkkf/bKUKtOSPAXazSbal1mrHsofXEwZi7xk2CZAF34u
	5C8lmhbzYrPLD12KfRfxsK2zOhEuWTwVDzNLwnoHmSyoJz1ChuZIINsoPLgONDPIqVK9MdJXeZAYE
	/D2Fl726HacG7woBXZV2G7zjQKuWd9ji1xPS8UpsmWSBqwovkXgHZ7K10DO4QMN6U/TBg9E1vZiZQ
	1ZlTKFbyjr4+ExphWx0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pn1c2-006tts-2z;
	Thu, 13 Apr 2023 18:24:02 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pn1bz-006toS-1C;
	Thu, 13 Apr 2023 18:24:00 +0000
Received: from jupiter.universe (dyndsl-091-248-212-251.ewe-ip-backbone.de [91.248.212.251])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 64B11660321F;
	Thu, 13 Apr 2023 19:23:51 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1681410231;
	bh=ceCvJVoRaeOT7KtfXBOMzQenfXD9/YcDHtgkd0grO5I=;
	h=From:To:Cc:Subject:Date:From;
	b=V7dptM9E0HGv6p1NV98J9w4RK9Ya0ZECp3BZfgwBAI6ZXkHy+BswJiqcA1ruuNVr8
	 9GuybvbDaFC2+Jd2RsxTK1lsIAmqAjxkxSoql56znB+2eE1/T9Ru5EQR9wIMt9vlRh
	 tdAyw1bwnHZfDWrQ7RumJ3ncS6ov4lHh9qnvFdEH9d27+hhr/bPV5pi6M3gskuWXBS
	 7Xy/uv40SUvVjFZwliogCmO9pUCpIJ5MFKOTObDRbMK+670ka6XmKDDyFIJa/b2ynJ
	 Lv+JDFimRO/ymRIeOiRhafdAGgQEEZj+lCTwsBQuP96uwheTtzXz0W+vYacLp4Jh3O
	 gjXrv/TvSaIgg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 8812A4807E2; Thu, 13 Apr 2023 20:23:48 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Damien Le Moal <damien.lemoal@opensource.wdc.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	linux-ide@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv1 0/5] Add RK3588 SATA support
Date: Thu, 13 Apr 2023 20:23:40 +0200
Message-Id: <20230413182345.92557-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230413_112359_559667_489A6D2A 
X-CRM114-Status: UNSURE (   8.11  )
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

Hi,

This enables SATA support for RK3588.

-- Sebastian

Sebastian Reichel (5):
  dt-bindings: soc: rockchip: add rk3588 pipe-phy syscon
  dt-bindings: ata: ahci: add RK3588 AHCI controller
  dt-bindings: phy: rockchip: rk3588 has two reset lines
  arm64: dts: rockchip: rk3588: add combo PHYs
  arm64: dts: rockchip: rk3588: add SATA support

 .../bindings/ata/snps,dwc-ahci-common.yaml    |  6 +-
 .../bindings/ata/snps,dwc-ahci.yaml           |  6 +-
 .../phy/phy-rockchip-naneng-combphy.yaml      |  7 +-
 .../devicetree/bindings/soc/rockchip/grf.yaml |  1 +
 arch/arm64/boot/dts/rockchip/rk3588.dtsi      | 44 +++++++++
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     | 90 +++++++++++++++++++
 6 files changed, 149 insertions(+), 5 deletions(-)

-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
