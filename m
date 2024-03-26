Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8A05C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 18:57:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fmxCO0WUk8N9Bu5TEGZKk8PivfYP0DWEpON5uPlLydo=; b=mCIHgwjMxaAUXX
	zFHfF+K4y2+HJG9GE+3QlGviqOCxGWIIJ3Hs/lPJQgW3IBsYTzOfMKnan7PYCXH7cveGwLud3xuw8
	IQQivmhqgM+dr9k78P5xAfxUY+0MjiyDD+ZcvO/ZIbZwyKOoKPU5S8+dg/QvoizgriSKV3v6MjpWZ
	IqPi7XBYP2iPTSfgOzyM8ibhStcB5zGHu2eunub6rQS03eRHmmpGNCOr+RG1qAXKw1lnS5HbY2T0b
	JPVxqghoRklnAcMgkon75vx/SR2Qwj9eRlw3hM9w8KGulk73nAZrd/81m5KcIFrZrhX2HPiK1laMl
	IDXvtHlZ4ZBWFlHcXXUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpBzH-000000061zF-3PHZ;
	Tue, 26 Mar 2024 18:57:31 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpBzB-000000061up-3PQB;
	Tue, 26 Mar 2024 18:57:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E143761369;
	Tue, 26 Mar 2024 18:57:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB434C433B2;
	Tue, 26 Mar 2024 18:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711479443;
	bh=G6mc0QUGBHLFWSqnsGqxmIC8vKxJ1zCnaOScx8J3TQA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=UnQb6l4ori1UnlnKacvSGErLo7U07JRCVt2nPfBNLMm44T/m7r57d0/k0u/sid38R
	 lEBu8yksww/lt7cmBkm/FqLKSnNQHHiZjpLyWFP2PCCwAX55oI4Dn9SvCwc8eDbZks
	 tMtGccHuh2dcIaWD3CNx7FELxVrUOBZJiF3z9WFPTiNPxMoZ0cW38iyNa2NHdF2CYf
	 288bUFgzLAy7EVmpyhht7M8tIz9Vqa6C2VBSDZNWLpVFTJY4atccQGkgXXWpG1mDi0
	 Ttv6Sl53VFMqMWxl0rmjxgw8/M3ISM5SW1GT4n1Nhv1F+LrX3GzLQWLCEskDxWSRYF
	 vjNMsFjrJGcIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C739FC54E67;
	Tue, 26 Mar 2024 18:57:23 +0000 (UTC)
From: Folker Schwesinger via B4 Relay <devnull+dev.folker-schwesinger.de@kernel.org>
Date: Tue, 26 Mar 2024 19:54:36 +0100
Subject: [PATCH 2/3] devicetree: phy: rockchip-emmc: Document changed
 strobe-pulldown property
MIME-Version: 1.0
Message-Id: <20240326-rk-default-enable-strobe-pulldown-v1-2-f410c71605c0@folker-schwesinger.de>
References: <20240326-rk-default-enable-strobe-pulldown-v1-0-f410c71605c0@folker-schwesinger.de>
In-Reply-To: <20240326-rk-default-enable-strobe-pulldown-v1-0-f410c71605c0@folker-schwesinger.de>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Chris Ruehl <chris.ruehl@gtsys.com.hk>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Christopher Obbard <chris.obbard@collabora.com>, 
 Alban Browaeys <alban.browaeys@gmail.com>, 
 Doug Anderson <dianders@chromium.org>, 
 Brian Norris <briannorris@chromium.org>, 
 Jensen Huang <jensenhuang@friendlyarm.com>, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 Folker Schwesinger <dev@folker-schwesinger.de>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1613;
 i=dev@folker-schwesinger.de; h=from:subject:message-id;
 bh=lYZfvZDtpySgOOqOAfgoLZ9THvZvx3kUJVgOxDEo5RE=;
 b=owGbwMvMwCXG5FBoZNu1u5bxtFoSQxqz1KSXEXPm32GZ9Ic3tF984fKDer0GAtunykV0cP6yz
 H7bbzOzo5SFQYyLQVZMkYU1L2MLc2b5Uuuun69h5rAygQxh4OIUgIloiDH8M3MoEvsnn9Sap6p9
 m/mcrMz8Y3p7k5le/NnupqBbaKzYzfA/8b/SW42WBQVnEx5bsJ+P/fN+1SF+002WnFemZ19pzyr
 mAAA=
X-Developer-Key: i=dev@folker-schwesinger.de; a=openpgp;
 fpr=056E68B4036977A53B8AF9EB024071323D8ABB7D
X-Endpoint-Received: by B4 Relay for dev@folker-schwesinger.de/default with
 auth_id=144
X-Original-From: Folker Schwesinger <dev@folker-schwesinger.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_115725_982921_AE09190D 
X-CRM114-Status: GOOD (  11.57  )
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
Reply-To: dev@folker-schwesinger.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Folker Schwesinger <dev@folker-schwesinger.de>

Document the changes regarding the optional strobe-pulldown property.
These changes are necessary as the default behavior of the driver was
restored to the Rockchip kernel behavior of enabling the internal
pulldown by default.

Fixes: f34e43f12382 ("devicetree: phy: rockchip-emmc: pulldown property")
Signed-off-by: Folker Schwesinger <dev@folker-schwesinger.de>
---
 Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt b/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
index 57d28c0d5696..10c05437f7ab 100644
--- a/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
+++ b/Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
@@ -16,8 +16,8 @@ Optional properties:
  - drive-impedance-ohm: Specifies the drive impedance in Ohm.
                         Possible values are 33, 40, 50, 66 and 100.
                         If not set, the default value of 50 will be applied.
- - rockchip,enable-strobe-pulldown: Enable internal pull-down for the strobe
-                                    line.  If not set, pull-down is not used.
+ - rockchip,disable-strobe-pulldown: Disable internal pull-down for the strobe
+                                     line.  If not set, pull-down is used.
  - rockchip,output-tapdelay-select: Specifies the phyctrl_otapdlysec register.
                                     If not set, the register defaults to 0x4.
                                     Maximum value 0xf.

-- 
2.44.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
