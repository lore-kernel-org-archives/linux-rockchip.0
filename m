Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DDB5C27C79
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 21:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RD+IPYOjXeuWE24R39EgxKpXVfWaA3rAJSJkIrkbCQ4=; b=FV9XpICzUhHrdZ
	+oLT9efHWzgeoe8M32EieqyrgdqC3rGkr4jxsm0YmCGnu8H9q2LiY9+E5YwRt9ffHdYJLAhHb8kDc
	ZqpSII7Ctef+jf0QFAasITTOqu0H0KGQ9dxpxP483oZg3OQrWAjy7/ErgVSSNvl66xX9+Ya7esSUi
	UZBwemRU85IEWxoXLEpi970+Xrkd40J4OW+b3ORAIuXdKHTv6JWKceJp/Du3EFcLzzi91g5Q9hj5m
	Rgeb9lQUZ2aJgC8djOyLzJpL5mvntwDIv2G475b5zENq0lkmsi0XikbFKUQb21BEGIYF/WgW14wU9
	t5KGcaGC1tRqn5zpdq6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJKL1-0000000CjYN-1qB0;
	Mon, 17 Jun 2024 21:56:31 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJKKw-0000000CjVH-3SaP;
	Mon, 17 Jun 2024 21:56:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718661383;
	bh=h9GZ/qG3QPBcnFqXga6bKtFiBGaWDKmKZeDAnSF4EKQ=;
	h=From:Subject:Date:To:Cc:From;
	b=Ulk5lNO+pvY7yTBe3kUU9+eg6wh7xxfwkR5lRHIEHUqZgFe/FjTuLG4DhxMj4XOM7
	 79KpRGGe33qEdVHiUlDMm0y9Yc9UvERD7EL569Yb7TuIpomYZNzjSeh4/85FZOFgbP
	 FgFZkGuhgysz3i0XYm7HQXNMMsmWyv2DhpNeii/RrpiQLMqa7q59jg4xUYI18eMlqt
	 Z6GxquoQkNL9bPUol4KKCSjWKnVRTdHsdM2FYARWy1CbEhcOpUCBI2CoIXurdurIg+
	 S/jqDeIEnIk5PG/5pSq27z3F7+3TuNoyu6rVf9xQ88+Xb8mJ3GXfL8mtzYHTEOfyQU
	 hJn3LNAbQnJcw==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 7CFBD37804B2;
	Mon, 17 Jun 2024 21:56:23 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH 0/4] Add clock provider support to Rockchip RK3588 HDMI TX
 PHY
Date: Tue, 18 Jun 2024 00:48:08 +0300
Message-Id: <20240618-rk3588-hdmiphy-clkprov-v1-0-80e4aa12177e@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIABivcGYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDM0Nz3aJsY1MLC92MlNzMgoxK3eSc7IKi/DLdNAPTNEMz08RkAyNLJaD
 mgqLUtMwKsMHRsbW1ANtf0uhoAAAA
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-Mailer: b4 0.14-dev-f7c49
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_145627_365589_806A406F 
X-CRM114-Status: UNSURE (   7.75  )
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

The HDMI PHY PLL can be used as an alternative clock source to RK3588
SoC CRU. Since it provides more accurate clock rates, it can be used by
VOP2 to improve display modes handling, such as supporting non-integer
refresh rates.

The first two patches in the series provide a couple of fixes and
improvements to the existing HDPTX PHY driver, while the next two add
the necessary changes to support the clock provider functionality.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
Cristian Ciocaltea (4):
      phy: phy-rockchip-samsung-hdptx: Explicitly include pm_runtime.h
      phy: phy-rockchip-samsung-hdptx: Enable runtime PM at PHY core level
      dt-bindings: phy: rockchip,rk3588-hdptx-phy: Add #clock-cells
      phy: phy-rockchip-samsung-hdptx: Add clock provider support

 .../bindings/phy/rockchip,rk3588-hdptx-phy.yaml    |   3 +
 drivers/phy/rockchip/phy-rockchip-samsung-hdptx.c  | 208 +++++++++++++++++----
 2 files changed, 174 insertions(+), 37 deletions(-)
---
base-commit: 6906a84c482f098d31486df8dc98cead21cce2d0
change-id: 20240617-rk3588-hdmiphy-clkprov-f05f165ac029


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
