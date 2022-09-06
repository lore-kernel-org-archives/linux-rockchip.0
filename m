Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3885DC6FA83
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Sep 2022 15:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hI4rEynzQ2W1rpDv3Dy9fqjgG/qrJRKmPqQbu/4RFNI=; b=oBM7Dv3+t8fJRT
	wNtzy9nJr7aLGR89mirSoL0hNzas2OgrdZDZzd2wOTSmWX4ZScqmHRz0Kcy5z5uICnqHMLjtmPU1J
	14hzpag4gj6xT5/kYuuSqnIWJQUSDmJJgh99WJXrT8yLzB4ZVvhuxauO7yr7NgKER+rZte7c3peAL
	JvuvcXsqJE151pnEdwjPXGAxJLNWEQZOFr8EDsBQQPFz7uSFyokGYgxUoFXi+vPAgbvete+htdztD
	rt2gxsvUM2pZyLd/V7Q0IE5NEAzjqypNCr+YBIpcQl/BeGf6txmoVj2eLOTLTuQEmWRfUIinPHxSZ
	nG8AAIZcceKUJmrGbj3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVaZN-00Eq0q-I1; Tue, 06 Sep 2022 15:32:57 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVZij-00ENa6-Mm; Tue, 06 Sep 2022 14:38:37 +0000
Received: from jupiter.universe (dyndsl-037-138-186-136.ewe-ip-backbone.de [37.138.186.136])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 54E4B6601EB2;
	Tue,  6 Sep 2022 15:38:29 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1662475109;
	bh=VxbOG2sadGEGRc4OdZfIwIpf3196HCUi9fT6eUHVLI0=;
	h=From:To:Cc:Subject:Date:From;
	b=QQlGyZ+uYUSlPfONQ78w2XAeqZATYW7uSVoxdj+AnMy0aJVxwZU2amdeUWpRjxg0u
	 4W3qvz8gqRIwM+K4Vi3tpQro82XGgZMCHewuu7+76q6/kcP8qyxmHcyYlPdgsdgnBG
	 cY9Olo3ukndWzzsRqiUtZ61370udsHmPW3Ya65xySfjDS+mcbO+gq6HyETsYsji2NU
	 H7MVlPSM7oYT3T27jYBtzLYjgY96hTnWviHX/JbJ/LLZnw1lXT1trpfUp6jS8yvEVT
	 Z+1PAruwd2OHyMDKbvO5OfYTlgV2WNwAM/3q1SEZTMiRXszB+NwxK07xUptoL020nh
	 yPiRxyq2+RJfg==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 394F2480165; Tue,  6 Sep 2022 16:38:27 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCHv3 0/6] RK3588 Power Domain Support
Date: Tue,  6 Sep 2022 16:38:19 +0200
Message-Id: <20220906143825.199089-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_073834_121663_FE05AEB3 
X-CRM114-Status: GOOD (  10.47  )
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

This adds power domain support for the new RK3588(s) SoC
series. The series has been tested with ethernet on the
RK3588 EVB1 board.

Changes since PATCHv2:
 * https://lore.kernel.org/all/20220831182629.79255-1-sebastian.reichel@collabora.com/
   (Note: I accidently send PATCHv2 with an incorrect patch version)
 * Change license of DT header after message from Finley Xiao (Thanks!)
 * Add Lee Jones to Cc list for the MFD DT binding
 * Collected further Acked-by for DT bindings

Changes since PATCHv1:
 * https://lore.kernel.org/all/20220623162309.243766-1-sebastian.reichel@collabora.com/
 * Rebased to v6.0-rc1
 * Fixed typos when referencing rk3588
 * Collected Acked-by for the DT binding

-- Sebastian

Elaine Zhang (1):
  soc: rockchip: power-domain: do not enable PD

Finley Xiao (2):
  dt-bindings: add power-domain header for rk3588
  soc: rockchip: power-domain: add power domain support for rk3588

Sebastian Reichel (3):
  dt-bindings: arm: rockchip: add rk5388 compatible string to pmu.yaml
  dt-bindings: power: rockchip: Add bindings for rk3588
  dt-bindings: mfd: syscon: Add rk3588 QoS register compatible

 .../devicetree/bindings/arm/rockchip/pmu.yaml |   2 +
 .../devicetree/bindings/mfd/syscon.yaml       |   1 +
 .../power/rockchip,power-controller.yaml      |   2 +
 drivers/soc/rockchip/pm_domains.c             | 101 +++++++++++++++---
 include/dt-bindings/power/rk3588-power.h      |  69 ++++++++++++
 5 files changed, 162 insertions(+), 13 deletions(-)
 create mode 100644 include/dt-bindings/power/rk3588-power.h

-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
