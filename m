Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A5EFBFCC9B0
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Mar 2026 03:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nEXX7BWFDXXvfeE3qo00Pa5sShYGLKDmQ9KPOaCtc6M=; b=Nt3ax6FedxCaYV
	SREDCslnYBkpnsjLPcxJpcHUf9xRyZSq+Hzl6c+2XuZrPRZ8M/F3YNUykcDYhCPbeJ3WiAg/zkdlt
	GMGpnVA8fECJ1dp2xi+sxyao4+IAiuV5jaxIe6+lVkWtSCBehCGoGniviP35gxscGfszk2pcnGlgh
	N111Xiv/XZ5Nbtrx7DuS0KbFZDqEEccZqor8zlh8ztF177bLBBihdhyOWO4d7Dw78QE21eX+FlfxF
	X2tqb4XyJt3t0qZKlrElB98F/lX9kRA+aL/wGY27B1jml36p2hdpNthbL45FszbA3z9aTFD9tADEm
	ZPRpTJcNKwPt59Fkv0iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vznU3-00000008cJc-3Ngw;
	Tue, 10 Mar 2026 03:10:11 +0000
Received: from mail-vk1-xa62.google.com ([2607:f8b0:4864:20::a62])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vznU1-00000008cHy-0Nk6
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Mar 2026 03:10:10 +0000
Received: by mail-vk1-xa62.google.com with SMTP id 71dfb90a1353d-56adf76631cso2860669e0c.1
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Mar 2026 20:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1773112207; x=1773717007; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5fNvrEyEz+03XQrEJ7dkupE0zWIJvoyBniEDwrgW4Ls=;
        b=lMXVDy9KNUxUQPh5L1DFuUetNRoa/ScPl+fhjJLlqkcS+xA06hqRFEWDvcN3vOg0Ux
         uUpGVwDjFs5IFh7bETuk7f+avwDU+W4BjXq3NJLu4C3k850eOJotiKTd7yFTnDQTGCJg
         mQDe2xcO9goijyYRkh0qSYiqFu4TfKFGADnfoaG7CpgWT1mvWx8iGFYWMdIlBctqVnPQ
         KB2loTI4JqjUtK3ENG4ATjYQ5Cp4TRxNUpRAgQi30zY8j3qzhDVB+TMfQlmDV1OeJRb6
         mwDvWu96s7NgQ3DcBzLURh6xRbgO5LJ9Hz5HgI+fe8U0sjDF0uXnsbFJa6TnNAOl/rOR
         DRuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773112207; x=1773717007;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5fNvrEyEz+03XQrEJ7dkupE0zWIJvoyBniEDwrgW4Ls=;
        b=ROr+9j5JcdFvZtUWh+J9jrLp+s2ihFKnDt+rMp3qmbdHWX0UBGBLsnbLNb/l4HtzoA
         6hRaC9mfd9TkNBP8PHeiiBlMXSkddgBkSKtA5jmU4C/mW0G9b33i8gnrHewDPunPECQ9
         KvEABxC9hoKNfuRx5c05s91gKHz4QqkUQ0EBkz+MfVHNBGWheTUMllqM+MuXo9acei53
         6HqBpN0xq13IOI1LdgdGBhuR0WBTik1z6JnV7MPfG874UcdK/PaL4hj494vjFu5zennZ
         XqznEWAG3PVYncor3P7v113XJHPLME/IEwFzNbw3Pbd0mtoZzCi0gxLaohoDNG1tPJkY
         HPfg==
X-Forwarded-Encrypted: i=1; AJvYcCWdejJTmcueeau6cFmeCaQp9zQgklcW1JRWUDYTUYygEopVBgBCKtQx9LoSKE5Vdf6DYrfgOg7D3QoCwh5Kxw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx3OZpHCsGknSI74X7JhGf4ZQZ4zKVvxVCrqumGF/fNmAsoug5W
	06fh6ZyA8mu8lz5XJiFSD0OjvWrSLV/coBBEj2jU1W1J77jSRMIUCRtQ6XQfC/tm2Is8ymAw5He
	wYcSX2Kxv/OqtCSCnwOZHW0hLamnbJys6btua
X-Gm-Gg: ATEYQzyrg6h5VnlbmoSzOHBgItmuV9mtRfpZ4OiOiACUpS9sORPXCjLb/xAtJzCiAgz
	OPCkbcDWSaWlEK2Q/64UxJyIDUawdrqVfM8yNOBUmGKuMMquOp0d3mC1DN3pwdvLOrDqxLOqbCZ
	j3Sc7hWCoeZzNd50IiC1zYJYWo8sabJuecEo8o0KWY+ZyP1p2A3HTGXyd8lXip/ZEs6VoSU0kqG
	5IR5+x98MJuSRqF/RGV/lljd2e/FZ9vWJME3JvCbcbscl8roKstd6U1oSNQUxSZJKkWyGVffxzE
	nE3MhdYVcK80NlgJOYx8zQ557PkkylcGrCFGTwNPiGZfmDHqvLwCdZUaqWFx4TDoYgTQNQxNU2l
	+8UhNiGiCCawAU6gO9x8MFofrrH6rotlpz7ELd3Tp1DZk
X-Received: by 2002:a05:6122:3b05:b0:559:5ef5:b196 with SMTP id 71dfb90a1353d-56b07e2d9c6mr4061680e0c.13.1773112207330;
        Mon, 09 Mar 2026 20:10:07 -0700 (PDT)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id 71dfb90a1353d-56b09ae3ef6sm1544609e0c.6.2026.03.09.20.10.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2026 20:10:07 -0700 (PDT)
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
Subject: [PATCH v4 0/3] Add support for Orange Pi 5 Pro
Date: Mon,  9 Mar 2026 22:09:58 -0500
Message-ID: <20260310031002.3921234-1-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260309_201009_152583_0DBDA39C 
X-CRM114-Status: GOOD (  12.23  )
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

This series adds initial support for Orange Pi 5 Pro. The network
driver was just added. The only thing missing is the second HDMI port
that is connected via a DP to HDMI adaptor


The series was tested against Linux 7.0-rc2

Please take a look.

Thank you,

Dennis Gilmore

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


*** BLURB HERE ***

Dennis Gilmore (3):
  dt-bindings: arm: rockchip: Add Orange Pi 5 Pro
  arm64: dts: rockchip: refactor items from Orange Pi 5/b to prep for
    Pro
  arm64: dts: rockchip: Add Orange Pi 5 Pro board support

 .../devicetree/bindings/arm/rockchip.yaml     |   1 +
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3588s-orangepi-5-pro.dts   | 301 ++++++++++++++++++
 .../boot/dts/rockchip/rk3588s-orangepi-5.dts  | 184 +++++++++++
 .../boot/dts/rockchip/rk3588s-orangepi-5.dtsi | 202 +-----------
 .../boot/dts/rockchip/rk3588s-orangepi-5b.dts | 181 +++++++++++
 6 files changed, 681 insertions(+), 189 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5-pro.dts

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
