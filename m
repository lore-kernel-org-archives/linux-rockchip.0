Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0A92C25B10
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 May 2024 13:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0G+DGAGDfqFKA3R2DJ3DOLgkDia5d2CyeeEvPh1Fy0I=; b=ZoZ1aR/I+jYRSe
	CmkdvwXjKwbE753JqUIWrcuo3TA/u6TqD8c6rY/p1TD+PP6jZ5gcOzeoHm34i6cwV+xJJ2bZJWQvO
	1+pgMNNLUkKCpidSbTJya3JyWHYBHbcFfwKo0KBptby0i0nhVGcIrbSmEtxLPVQfWYiIkoqW92MUb
	qXrU0kYurb+Bak99EwJ1zeggh44260CIBNI7ehQWym8eOJoUhA0jSXwUCjLM3ZdXGwH3gTyobQIrt
	cAgfQ3BcSxdBw3aGuovvB8UG63mrwUrpV+r69vFdtXTovnAmad77ynOqLbeFXQQj4ggSiUtnVhLN+
	K+fZpCEQZDxTS2tlz3WQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3c7s-00000004MOo-0OiR;
	Sun, 05 May 2024 13:42:00 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3c7n-00000004MKg-45Fe
	for linux-rockchip@lists.infradead.org;
	Sun, 05 May 2024 13:41:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1714916491;
 bh=cFWoK42/fttVz2IFs0+OcGwVbbqJtzaS5XuzCvgXLbA=;
 b=WVlyONFzx13tUno124kyswXdI2Hkm1xrVdP9maDQGwE/RigzU39N1Gk8qDLH6sI6cAEyNTRRb
 EOHdw+tOlUxfUuwWtD/tt3q4QHn1yCgRN5CQAxWj34mHrQPVrYI/Kz4G+uXK/YanQXpKpRhAFg9
 r2gymM0RazU/5+L5Tjk0iQ9+1lxkyLUh1WGUdn3gHI7Sw6eJkXNdlS/EeqNhbzK2UYQHQRyPwfJ
 FISYs1NLSgOd1sx3hvqLoxgv53qGNsXf190ZE02Rn7GlcXNiSSqx3xP4un0ZGFLG7MAcYaU5Xmv
 brg2XViYKM/3RYTg2ownL5lWInvmIQkn6V3Jpou4h7yg==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Lee Jones <lee@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/4] arm64: dts: rockchip: Add Radxa ROCK 3B
Date: Sun,  5 May 2024 13:41:10 +0000
Message-ID: <20240505134120.2828885-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 66378c8657f92010457d6867
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240505_064156_077107_0DA674BF 
X-CRM114-Status: UNSURE (   8.39  )
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

This series adds initial support for the Radxa ROCK 3B board.

The Radxa ROCK 3B is a single-board computer based on the Pico-ITX form
factor (100mm x 75mm). Two versions of the ROCK 3B exists, a community
version based on the RK3568 SoC and an industrial version based on the
RK3568J SoC.

Schematic for ROCK 3B can be found at:
https://dl.radxa.com/rock3/docs/hw/3b/Radxa_ROCK_3B_V1.51_SCH.pdf

Jonas Karlman (4):
  dt-bindings: mfd: rk809: Fix vcc8 and vcc9-supply description
  dt-bindings: mfd: rk809: Add audio codec properties
  dt-bindings: arm: rockchip: Add Radxa ROCK 3B
  arm64: dts: rockchip: Add Radxa ROCK 3B

 .../devicetree/bindings/arm/rockchip.yaml     |   5 +
 .../bindings/mfd/rockchip,rk809.yaml          |  38 +-
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../boot/dts/rockchip/rk3568-rock-3b.dts      | 773 ++++++++++++++++++
 4 files changed, 814 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts

-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
