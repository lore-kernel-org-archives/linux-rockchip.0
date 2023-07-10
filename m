Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 905DDEB64DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 16:52:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KKAbAsgnlQxHyJq0ZRmhOBnCwLotngT2iaDGAehBfpM=; b=gJve91KkbciGc4
	EpifBnDrWhPEboweNBC8KHfPi+WKm+K4LbGgYTmneSSWneuUn9ujjUMMiUeTgB+j3BMSNsS1ZLvdc
	4YJodmC6P//eFxSS3JZat4GrtcslbnJRzEzIH1z73UZD7IlxLU1kT71b8mCz+/QyF7G8YpyBj8kWU
	SKO8mX64/Tnl2Pyk3mAxyharIi1plkqbJF4O/n7R8HuW1lBdUEmWsheu42Jgf9DjxAvmAwzX+eMNj
	amgy/QYvftxihtVZlc7cRBBTD7SoziylMwB6u7h8W5Z+zOVo++z4yMPyZzD8wtavGwPg8Y6rY7xUa
	s/RXmbkW1ad4fO17eywg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIu7r-00CEqu-32;
	Mon, 10 Jul 2023 16:52:39 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIu7o-00CElr-0o;
	Mon, 10 Jul 2023 16:52:37 +0000
Received: from jupiter.universe (dyndsl-091-248-189-246.ewe-ip-backbone.de [91.248.189.246])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 1AAD96602B7B;
	Mon, 10 Jul 2023 17:52:30 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689007950;
	bh=ABpJQ8z918e5OZkfpgP7HwSnXWU4EFxL3SvzflDiHoM=;
	h=From:To:Cc:Subject:Date:From;
	b=nGNYDGcxK+5wDcCrAZ/2csXrrZCAaOWFOOyDfwc5T7vkrETYIb+QVrafuclahWIxr
	 IXE4pd4C+FGuT3BMPNyTVUw3r+bsP5f/dv74DqIUF7UJEPwL48DzCq17O2Yz0kPVJm
	 PjA2aBVKVCp5jrI/sElqItEyFPAjVWBj9qENQcctAYj62vGaXxXQT4vGi41pTVnX8i
	 2PQAe1Y9dy3EiqR2qiU1z/AZeeY06iEfOhJhTrRG+t3aurbv266IAsu+5F3ezmW76m
	 /o9IBSDGg40IAn8IcbLBeeUgWNgxXNM5oQwZhJaUzLW+hIsAG3IYTk3VFqVZq1uXWQ
	 kVcv8eJO1TtPA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 1980D480592; Mon, 10 Jul 2023 18:52:28 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 00/13] Improve Rock 5A Device Tree
Date: Mon, 10 Jul 2023 18:52:15 +0200
Message-Id: <20230710165228.105983-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_095236_446323_FC90D436 
X-CRM114-Status: UNSURE (   7.78  )
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

This brings Rock 5A on par with the Rock 5B. All necessary driver
changes have already been merged.

-- Sebastian

Lucas Tanure (1):
  arm64: dts: rockchip: rock-5a: add SD card support

Sebastian Reichel (12):
  dt-bindings: vendor-prefixes: Add prefix for belling
  dt-bindings: at24: add Belling BL24C16A
  arm64: dts: rockchip: rock-5a: add PMIC
  arm64: dts: rockchip: rock-5a: add vdd_cpu_big regulators
  arm64: dts: rockchip: rock-5a: add 5V regulator
  arm64: dts: rockchip: rock-5a: add status LED
  arm64: dts: rockchip: rock-5a: add analog audio
  arm64: dts: rockchip: rock-5a: add I2C EEPROM
  arm64: dts: rockchip: rock-5a: add vdd_npu_s0 regulator
  arm64: dts: rockchip: rock-5a: enable I2C interface from DSI and CSI
    connectors
  arm64: dts: rockchip: rock-5a: add ADC
  arm64: dts: rockchip: rock-5a: add fan support

 .../devicetree/bindings/eeprom/at24.yaml      |   3 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 .../boot/dts/rockchip/rk3588s-rock-5a.dts     | 586 ++++++++++++++++++
 3 files changed, 591 insertions(+)

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
