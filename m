Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9229C27C53
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Jun 2024 00:39:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EDNKNmMeD/RtsVMxz2VCLfdIhjHP5YeI1eYUi1GKgdE=; b=xKAknYL9NCyEVD
	in1/pOglpwFNS2eJ56AsQEX6uhPpazTWpfVtFl2D9m0vWW8+khKdQn2sQ0TRJzR8y2zoz3yUjxIJu
	SlQcxQ9TErGzHZIG1ztfBrd7a7Q0ADO38FayHAbBqcyi5WrkILVq95gGlkhGNKU3vX1QvpfgniWwK
	UJ0brJCZl/xKcw5MsFvMNXHxwJRR3JPbR9XPZ+6n2+wNXsnLDl53KeVUbUzydIjhRvnGOmvrn+4fx
	1xyqGRKjLmQHsKfgVjplRtfHFQtuTFIEZ4fJo5nUupf1U/4Rc2PKjyJtmEmCnHv9B2yBNAd7iBKvw
	x1he8zZG5bM3s62Bh3kA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK5pV-000000039yO-3zmk;
	Thu, 20 Jun 2024 00:39:09 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sK5ou-000000039Zm-17Wv;
	Thu, 20 Jun 2024 00:38:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718843905;
	bh=XBeQpQicvg4Jsf0WSxNo6Kv6I1S/keBVke9aDXkWPLA=;
	h=From:Subject:Date:To:Cc:From;
	b=o28fS7lyeKjsKNAA6x176aEAoQEBaIbezxlFHnC33+ndHsCFfQoGU2LMqcO9jHlyt
	 LtrFXsFe4fBwHJZBLjsU6LSbSYFnTArWsjvmnfMwIcpOs/Y8RkwxeAza5CABsasWaa
	 NKBdv39+PNtYIdTSm1i0/drMqyLYwQPKJ0z17ypKmnACR3Tn4Mr89AfR5Z75xbEn6X
	 3nYM6gk4Cv917yMpoi/nje7gfahcJlLx3jHJyOFfzgryyOZKuc3fjXrortnCKs+rr1
	 Xxs8AHlkk+pQPbs/ZzgAmw1JqWkCoyBk+A+Slv8j+AC+K6C9+o79APq0GqOhbmDofs
	 xmKekASuLUGqQ==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id E8537378107D;
	Thu, 20 Jun 2024 00:38:24 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v2 0/4] Add clock provider support to Rockchip RK3588 HDMI
 TX PHY
Date: Thu, 20 Jun 2024 03:36:21 +0300
Message-Id: <20240620-rk3588-hdmiphy-clkprov-v2-0-6a2d2164e508@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAIV5c2YC/3WNywrCMBBFf0Vm7UgS+4iu/A/pIqZTE/pImUiwl
 P67seDS5Tlwz10hEnuKcD2swJR89GHKoI4HsM5MT0LfZgYlVCEqWSP351JrdO3oZ7egHfqZQ8J
 OlJ2sSmOFukAez0ydf+/he5PZ+fgKvOw/SX7tL6n/JZNEgVpQYYxUsq7pZsMwmEdgc7JhhGbbt
 g8uv1qZwAAAAA==
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240619_173832_623326_6D4A4849 
X-CRM114-Status: GOOD (  10.59  )
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

The HDMI PHY PLL can be used as an alternative clock source to RK3588
SoC CRU. Since it provides more accurate clock rates, it can be used by
VOP2 to improve display modes handling, such as supporting non-integer
refresh rates.

The first two patches in the series provide a couple of fixes and
improvements to the existing HDPTX PHY driver, while the next two add
the necessary changes to support the clock provider functionality.

To: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
To: Algea Cao <algea.cao@rock-chips.com>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
Cc: kernel@collabora.com
Cc: linux-phy@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: devicetree@vger.kernel.org
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

--- Changes in v2:
- Collected Reviewed-by tag from Heiko on PATCH 1 & 2, and Acked-by from
  Krzysztof on PATCH 3
- Updated PATCH 4 to make use of a forced consumer put in
  rk_hdptx_phy_power_on() and rk_hdptx_phy_clk_unprepare()
- Link to v1: https://lore.kernel.org/r/20240618-rk3588-hdmiphy-clkprov-v1-0-80e4aa12177e@collabora.com

---
Cristian Ciocaltea (4):
      phy: phy-rockchip-samsung-hdptx: Explicitly include pm_runtime.h
      phy: phy-rockchip-samsung-hdptx: Enable runtime PM at PHY core level
      dt-bindings: phy: rockchip,rk3588-hdptx-phy: Add #clock-cells
      phy: phy-rockchip-samsung-hdptx: Add clock provider support

 .../bindings/phy/rockchip,rk3588-hdptx-phy.yaml    |   3 +
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c  | 206 +++++++++++++++++----
 2 files changed, 176 insertions(+), 33 deletions(-)
---
base-commit: 6906a84c482f098d31486df8dc98cead21cce2d0
change-id: 20240617-rk3588-hdmiphy-clkprov-f05f165ac029


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
