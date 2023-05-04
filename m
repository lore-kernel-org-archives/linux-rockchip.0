Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 890F9C7EE2E
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 May 2023 21:16:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tXaLBgTeVdoyLXw4pRmxfk5boguoq4sLdDUcK1MbKbQ=; b=THc7RmdVpAeD7V
	jCVQS9fovXUHXIt1l0FwBeKH9U3uXVndim30MwHVBYmdmj8vcnHA2d/lMWcEouV3YU74oOQzuAN+q
	bs5n2lhUoQ0aVOTzH016SbmZX/EUlQosARdtxhnoh+WiSNYJUlwbxAgx/uf0xR45tEbZC18zy3Bcb
	cZ3YynDzCOoIVkxYC1Aisls9BgHw5ZhpmgsNTiQbmltz/PfBME9K5oUwIW0aSa04d5mGjysCfd1Ee
	0yRKcGGhfTEiIDimj/rTJuh7jgFMfKgjTddNPhfjUuRw4wC+Y+J3hR8u4iM/sHFKWwJvLhM4txNUa
	j3L9lxVq3YOKiUGBtK1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pugIv-00911Z-0t;
	Thu, 04 May 2023 21:15:57 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pufEC-008tBk-0h;
	Thu, 04 May 2023 20:07:01 +0000
Received: from localhost (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 499596601F54;
	Thu,  4 May 2023 21:06:56 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1683230816;
	bh=5R1AIP1C8/sZhgM+e+W1QCHOVzm+rALCBEYDFotBSzc=;
	h=From:To:Cc:Subject:Date:From;
	b=NubI2CAhpfrk5Vkj5jePnt0O0S0mN8VxWn6NBr0xioj1eMAMVzcuVCH1keYw9Kdit
	 DgfX6jyv2OWVTu0Q9HzOJRKklRpFdm4zbsHYccq6npbU3OHYkmzF56SN6fU1DJNO8r
	 r1Og3N7ssWzlAQ/4eADOt1sqq9a0dHr42no338IFzux7XTClvaJYlp7LBS2vIl+Jx9
	 6rJxnCZzkPN7LjyiwKO+h2HULhbCo28N+S1nUCuD6hbYNyQp2rffM8Fp2lMzhHbpb9
	 qP/umiugDzshJsAKzCn9HvMi7UjIBJQuB8/rLsG63HNtcRY7/9WI0cwrkXSMUzBO4X
	 m9rfP48C2iSjA==
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Kever Yang <kever.yang@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Vincent Legoll <vincent.legoll@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH v2 0/8] Add RK3588 OTP memory support
Date: Thu,  4 May 2023 23:06:40 +0300
Message-Id: <20230504200648.1119866-1-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_130700_452184_283A3FED 
X-CRM114-Status: GOOD (  12.09  )
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

This patch series adds OTP memory support for Rockchip RK3588 SoC, 
while also providing a few improvements to the existing rockchip-otp 
driver, in addition to converting the bindings to dt-schema.

Changes in v2:
 - Renamed rockchip-otp.yaml to rockchip,otp.yaml and removed clock's minItems 
   in PATCH 1/8, according to the review from Krzysztof
 - Updated commit message in PATCH 2/8, per Heiko's suggestion
 - Renamed rockchip_data's clocks to clks in PATCH 3/8, per Heiko's review
 - Preserved clocks order/names from older SoC variants in PATCH 2/8, according
   to Krzysztof's review; updated accordingly patches 7/8 and 8/8
 - Added Tested-by tags from Vincent
 - Added Reviewed-by tags from Heiko
 - v1: https://lore.kernel.org/lkml/20230501084401.765169-1-cristian.ciocaltea@collabora.com/

Cristian Ciocaltea (8):
  dt-bindings: nvmem: Convert rockchip-otp.txt to dt-schema
  dt-bindings: nvmem: rockchip,otp: Add compatible for RK3588
  nvmem: rockchip-otp: Add clks and reg_read to rockchip_data
  nvmem: rockchip-otp: Generalize rockchip_otp_wait_status()
  nvmem: rockchip-otp: Use devm_reset_control_array_get_exclusive()
  nvmem: rockchip-otp: Improve probe error handling
  nvmem: rockchip-otp: Add support for RK3588
  arm64: dts: rockchip: Add rk3588 OTP node

 .../bindings/nvmem/rockchip,otp.yaml          | 122 +++++++++++
 .../bindings/nvmem/rockchip-otp.txt           |  25 ---
 arch/arm64/boot/dts/rockchip/rk3588s.dtsi     |  54 +++++
 drivers/nvmem/rockchip-otp.c                  | 191 +++++++++++++-----
 4 files changed, 320 insertions(+), 72 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/nvmem/rockchip,otp.yaml
 delete mode 100644 Documentation/devicetree/bindings/nvmem/rockchip-otp.txt

-- 
2.40.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
