Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3925BF45A18
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Apr 2026 02:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tIy8fDywKw/yg75/EyjL5Ql43nFm3T0Qy88CQOK+rGY=; b=EPsDfibcv+rE1V
	USIlFfyNchhvtFsb2iDBbYZYovIkzR4bqLfIQhJBh4niL1FyIXLbMubKJuhBJzitVJMkne+x5LUuB
	cLTK823gKiXlHFIGJmtYUfKAuo1l3SNpgqn3ZROzHa6Gv/AU3iNwkxaXkPT0YxAaeamvhOAJG/aBs
	z11kQXxXyqEH7J29PvdV5IhNm2Z3FweFcaSKzQIUc/XOnWMAN/Tetc+CqI0oorhFErEUSaY581jX/
	747twIYuaPJiFGuWBMhjk+F+hz376z9PJURFjU2uxrtMkFgBYdy/EWt3hjnxfT2j5YozaKxhXsfe/
	mljVrQcHSecLL40Z9ZJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBOO1-0000000D41v-2Krv;
	Sat, 11 Apr 2026 02:47:53 +0000
Received: from mail-oa1-x63.google.com ([2001:4860:4864:20::63])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wBONx-0000000D3zH-2NNj
	for linux-rockchip@lists.infradead.org;
	Sat, 11 Apr 2026 02:47:51 +0000
Received: by mail-oa1-x63.google.com with SMTP id 586e51a60fabf-423b7100bedso2354337fac.2
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Apr 2026 19:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1775875667; x=1776480467; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8AO3/aAlun0d/2MK5fwm9gbSeroCU5cGcr9PM3HBALI=;
        b=B1CtYRC5QWTSgC8daxYx9RtvwhmceFiy07s1X/vzJjpvRcqzksjjaE6Fy+865IWjCX
         sI8kSzifW2LXnIBdYMT5yWfJGcOvreBVb/8tYOrQDmKmGeKzw6tiedhCEL7A9BwEa/Di
         x4aJ3jmlKGUkKS6jH7VRb5tXIsoQCnZN09O8wTS5fOurq27d83DcPGwhrPyww4vGqaIx
         vw7wVeVUAWSnvGqa6XWxz6p0oH1iogZjanSTSzm9s7g0AMA7Soyf3pos1fM87Ncu+gAU
         UGQ9d3SypTzEvShhJuOr05iVz4VCBHLtn6Zx9bC9TK+hKlUk0ANKZ6CB6UEy+G7k2x12
         Ebeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775875667; x=1776480467;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8AO3/aAlun0d/2MK5fwm9gbSeroCU5cGcr9PM3HBALI=;
        b=VXIy5oj83tNqgQ1s4Kkje7CxLxjsQr8PzJhP/3Px7vPfgu9r5ecsmbDtJifdzeLb0L
         c1T3y1AAWxbi6oqTNyzXhCg/AOmy0sGl/57HA7FxUmCTA2mt38s1k1XImT+F7wBV0YAd
         WKzCw5XOg5PPXbz9kjiMA71LvM/5QoBP3GGsR3sxIum5PUsv7x/xeTqhBhyy6mHajEDb
         DOhMUVdYrB2tsSiZ39Ro4jC+AGZJFi2VZH5KN5NvQ1omtPMfNsJtR3qTMpdUCm9f6Pxx
         wRCsdlGbAui3llvhMLkSKM0MmYY0pOUNoNz0Aw2bWtV5t50CC1LjsmokUji/2AsZIITJ
         Z3vQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhlz3B6Y860rMmmsrsC42v9a2hdstbiPjovLe1I53NwvkgkoIqbYZe0HvQfkB3iwkbe3ZnQkzZ2VJeo+GPIw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzvdJguL9JkkH3NJrQVyldbR0rvrkWAfc6fmS0T5HsPNmwbRUDZ
	f0UgLbWlcgkw6wSyB9jq/8eDKPWe79Tky05bsD/OhW/japTFHxPDZYaogw/7Ye0U0AeJGdZf4o0
	9DVtv+RaDXMaXQXpXeMEGfuFbUrCTbuZYUWlr
X-Gm-Gg: AeBDieuk4SkxSjrF3M2cfn0n+j81DINSBh4dACOMArIATO4XdrU/MGpszCZp6LuSkJn
	IxFTDWDrfDHF/bllQGedIhNznO9shvaEIpz/LEZZlP32B3CwiXDqRHvuDyBiwflwaX9HJD48ewN
	7irYzit2UbrDAi4Ral2qc/CWxdlA/R8Qf2nqp6qM0ANY5SQXZ0sMPa7kqZS6die5pe8jd21E4P7
	zfxkRD4qD94BY3WILJwkvKURNhOqJke/Uxea4W5eoIbnC5j4v6KV5w+kA0gTzr/hdv7/i4tvKz0
	ZE/rdoog9CqswZfOw5nPlPF+yEjwliIILNgwxP1iJzTUxcL6xXjwwqHE1qFEYOMtstblwKe1glU
	/1vpuMBULzQyk8JOYNsOd8ckxs8Unpv+dSnVUaQ6Rft9C
X-Received: by 2002:a05:6871:2ee7:b0:404:16c6:40b3 with SMTP id 586e51a60fabf-423e114b119mr3123217fac.37.1775875667513;
        Fri, 10 Apr 2026 19:47:47 -0700 (PDT)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 586e51a60fabf-423ddd32ab3sm599086fac.16.2026.04.10.19.47.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Apr 2026 19:47:47 -0700 (PDT)
X-Relaying-Domain: ausil.us
From: dennis@ausil.us
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: FUKAUMI Naoki <naoki@radxa.com>,
	Hsun Lai <i@chainsx.cn>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	John Clark <inindev@gmail.com>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Andrew Lunn <andrew@lunn.ch>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Alexey Charkov <alchark@gmail.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Dennis Gilmore <dennis@ausil.us>,
	Michael Riesch <michael.riesch@collabora.com>,
	Mykola Kvach <xakep.amatop@gmail.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 0/3] Add support for Orange Pi 5 Pro
Date: Fri, 10 Apr 2026 21:47:40 -0500
Message-ID: <20260411024743.195385-1-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260410_194749_600067_4795B5D0 
X-CRM114-Status: GOOD (  14.00  )
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

From: Dennis Gilmore <dennis@ausil.us>

This series adds initial support for Orange Pi 5 Pro. The PCIe attached network
driver(dwmac-motorcomm) was just added.


The series was tested against Linux 7.0-rc7

Please take a look.

Thank you,

Dennis Gilmore
Changes in v6:
- Move the shared configs for the Orange Pi 5 and Orange Pi 5b from each
  devices dts to a shared rk3588s-orangepi-5-5b.dtsi to avoid duplication
- Remove empty ports subnodeis from typea_con
- Move i2s2m1_mclk pinctrl from &i2s2 to the es8388 codec node
- Add dp-con, dp0_out, dp0_in, and vp1 nodes, plus the vcc3v3_dp regulator
  in order to get the second HDMI port working via its transparent
  LT8711UXD DP to HDMI bridge
- link to v5 https://lore.kernel.org/linux-devicetree/20260401010707.2584962-1-dennis@ausil.us/

Changes in v5:
- define a connector node for Type-A port, and list the regulator as its VBUS supply explicitly.
- Requires https://lore.kernel.org/all/20260217-typea-vbus-v1-1-657b4e55a4c2@flipper.net/
- link to v4 https://lore.kernel.org/linux-devicetree/20260310031002.3921234-1-dennis@ausil.us/

Changes in v4:
- rename vcc3v3_pcie20 copied from rk3588s-orangepi-5.dts to vcc3v3_phy1 to match the schematic
- use vcc_3v3_s3 as the supply not vcc5v0_sys for PCIe
- remove the definition for vcc3v3_pcie_m2 as it does not really exist
  as a regulator

- link to v3 https://lore.kernel.org/linux-devicetree/20260306024634.239614-1-dennis@ausil.us/

Changes in v3:
- moved leds from gpio-leds to pwm-leds
- remove disable-wp from sdio
- rename vcc3v3_pcie_eth regulator to vcc3v3_pcie_m2 to reflect the
  purppose
- actually clean up the delete lines and comments missed in v2
- link to v2 https://lore.kernel.org/linux-devicetree/20260304025521.210377-1-dennis@ausil.us/

Changes in v2:
- moved items not shared by orangepi 5/5b/5 Pro from dtsi to 5 and 5b
  dts files
- removed all the comments and deleted properties from 5 Pro dts
- Link to v1 https://lore.kernel.org/linux-devicetree/20260228205418.2944620-1-dennis@ausil.us/





Dennis Gilmore (3):
  dt-bindings: arm: rockchip: Add Orange Pi 5 Pro
  arm64: dts: rockchip: refactor items from Orange Pi 5/b to prep for
    Pro
  arm64: dts: rockchip: Add Orange Pi 5 Pro board support

 .../devicetree/bindings/arm/rockchip.yaml     |   1 +
 .../display/rockchip/rockchip,dw-dp.yaml      |   7 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588s-orangepi-5-5b.dtsi   | 192 ++++++++++
 .../dts/rockchip/rk3588s-orangepi-5-pro.dts   | 352 ++++++++++++++++++
 .../boot/dts/rockchip/rk3588s-orangepi-5.dts  |   6 +-
 .../boot/dts/rockchip/rk3588s-orangepi-5.dtsi | 198 +---------
 .../boot/dts/rockchip/rk3588s-orangepi-5b.dts |   2 +-
 drivers/gpu/drm/bridge/synopsys/dw-dp.c       |  12 +
 9 files changed, 582 insertions(+), 189 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-5b.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
