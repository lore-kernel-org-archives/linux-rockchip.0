Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B365C54E5E
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Mar 2024 12:52:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kL9NCY1rNr5/4aU4fcm/6VbX/yBdyYR5zAzYWxUCHwk=; b=E+NE5pmH55g5Sa
	Anz58hbgJWb/ePW9lxNAgwx1csQ+b3QkDrvTRiKhhhz6NSMuDSeg2ax8CMIlmvzOIZuawYkTfF2lZ
	pJkLWyECBXTz5ZFk+Mw4Je5Cf3uKpv0V13wXl2ipIZKuX/r9JXVtk6mGbUugY5nsc9DJTVaSJtSzg
	zRpPoDHmWH3YGsdObNZ55aPvbq98sFwREMNWhyw2/IRewTr4c0hrQVrKe1yG1Kl8gdftbKZQwnCLL
	iHfYDNuNJSLAgBPkqVpod3tEjOViG8eF9U3nDnHMDl1d2iPDxKfoj/o8tgqNIDkuRCIP9a1HkGXRS
	TTUx6jxmrOynuzAk4R2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riZiC-00000009Bcl-3GhZ;
	Fri, 08 Mar 2024 12:52:32 +0000
Received: from smtp-190e.mail.infomaniak.ch ([2001:1600:4:17::190e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riZi1-00000009BWo-0wXr
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Mar 2024 12:52:25 +0000
Received: from smtp-3-0001.mail.infomaniak.ch (unknown [10.4.36.108])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4TrmKC4vd3zMqB2L;
	Fri,  8 Mar 2024 13:52:15 +0100 (CET)
Received: from unknown by smtp-3-0001.mail.infomaniak.ch (Postfix) with ESMTPA id 4TrmKB62vyzMpnPl;
	Fri,  8 Mar 2024 13:52:14 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Subject: [PATCH 0/3] rockchip: small DTS fixes for RK3399 Puma
Date: Fri, 08 Mar 2024 13:52:07 +0100
Message-Id: <20240308-puma-diode-pu-v1-0-2b38457bcdc0@theobroma-systems.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPcJ62UC/x2MQQqAIBAAvxJ7TlDTiL4SHaxdaw9ZKEUg/j3pN
 nOYyZAoMiUYmwyRHk58hiqqbWDdXdhIMFYHLbWRnRzEdR9OIJ9IFYVC7Y21aqEeoTZXJM/v/5v
 mUj5PnP/3XwAAAA==
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Klaus Goger <klaus.goger@theobroma-systems.com>, 
 Quentin Schulz <foss+kernel@0leil.net>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@theobroma-systems.com>
X-Mailer: b4 0.13.0
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_045221_546872_F32DF389 
X-CRM114-Status: UNSURE (   8.78  )
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

There's a pull-up missing on a pin that is used as GPIO input for PCIe
which will make the diode/level-shifter not let voltage pass and thus
not allowing the state of the pin to change.

Also add the missing regulators for the PCIe PHY+connector though this
is purely cosmetic.

There's also a missing PU on the USB ID pin used as a GPIO input, so
let's add it for the same reasons as the one used for PCIe listed above.

Note there's a light dependency on
https://lore.kernel.org/linux-rockchip/43d84aa9-ce0f-406e-82ac-2a691264ee23@theobroma-systems.com/T/#ma0499cbc5e5c20f1a4c6b8452baa2d296abe2d0d
to prevent a git conflict for the maintainer(s).

Signed-off-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>
---
Quentin Schulz (3):
      arm64: dts: rockchip: enable internal pull-up on Q7_USB_ID for RK3399 Puma
      arm64: dts: rockchip: enable internal pull-up on PCIE_WAKE# for RK3399 Puma
      arm64: dts: rockchip: add regulators for PCIe on RK3399 Puma Haikou

 .../arm64/boot/dts/rockchip/rk3399-puma-haikou.dts |  2 ++
 arch/arm64/boot/dts/rockchip/rk3399-puma.dtsi      | 33 +++++++++++++++++++++-
 2 files changed, 34 insertions(+), 1 deletion(-)
---
base-commit: 370e52abbf8306f09b0022995ad7ccdff3a834bb
change-id: 20240308-puma-diode-pu-1d2f4551be6d

Best regards,
-- 
Quentin Schulz <quentin.schulz@theobroma-systems.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
