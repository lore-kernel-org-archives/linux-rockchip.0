Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA217C47DD9
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Mar 2024 20:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NSR/99p3n2awDnJhs9sxaVWjY8GAWjrxozme41fvIDM=; b=BxwSn2DtYNvdaW
	Pf31rceodtjErTbqqd6dP75rMeFB88w41XSezttbf00HkZSF2PXEGYb33pIZ6EJSxoEvG4oqnGvEg
	XZhwIFDFXH+XgSmc8v6/4lz/jZEDI5pMThKB/rS4N0TeCDDlnbFb/72RZ2nhGOK9mHr+h/+Uo+SW1
	03pZB+ze807bmFeR77rr5tdtRsytn4xtp+SnX8H9iGvrdDXXdQKSsF1Y+dm7mUBSUCSqcBqz7Lumk
	phpE7cA4KmYb9ARtP2+QGfKA/gsFVaeKCDwd26QQkzXostNa71oK4y90P5XLBqhRlie5x/2FDGUE9
	kpk+QFxC6+W8ZPW/YPRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpZxg-0000000B23H-0HXM;
	Wed, 27 Mar 2024 20:33:28 +0000
Received: from www522.your-server.de ([195.201.215.122])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpYvN-0000000An96-17D8;
	Wed, 27 Mar 2024 19:27:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=folker-schwesinger.de; s=default2212; h=Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References;
	bh=ewabUOMzJnwQzsx6uM+32Ptxk3uRoq9dz5K5trAa2Tw=; b=cfBOblgaCQsVMKWXs7JvuzXIpt
	5KYTQCi9mGlYqAPuWWxGrm24kSe+DDWVQ30C72djLQTnWYRhzIK/9a9vk389Uas8F84Unksc8ZIdw
	E2I/OtC7o5MI/LqfegdkmnqysdsCiuQCctTu1SOGtIhrp4h0mBsPMO4PmHouM13JgazZ0evyYPJXj
	nM+ZyhQbo7gTQ6dPiZ9A6YKwLLCTlzZbV0XMNjtsxtS4uS+Zb/O0661CHcPLBkPboNhIeC7p0sFCc
	I++e6nX1rxgaogmbTKYecoFuISFtwPwsg93zg/trZm+HMoLs/MXQvaYj4t3pDKjouPY/bqMqr/Zi7
	tQCC02PA==;
Received: from sslproxy06.your-server.de ([78.46.172.3])
	by www522.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <dev@folker-schwesinger.de>)
	id 1rpYvD-000IpD-Qg; Wed, 27 Mar 2024 20:26:51 +0100
Received: from [185.209.196.215] (helo=homedev.localdomain)
	by sslproxy06.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <dev@folker-schwesinger.de>)
	id 1rpYvD-000Iyc-5O; Wed, 27 Mar 2024 20:26:51 +0100
From: Folker Schwesinger <dev@folker-schwesinger.de>
To: Vinod Koul <vkoul@kernel.org>,
	Yogesh Hegde <yogi.kernel@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Chris Ruehl <chris.ruehl@gtsys.com.hk>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Folker Schwesinger <dev@folker-schwesinger.de>,
	Dragan Simic <dsimic@manjaro.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 0/2] Enable internal strobe pulldown on Radxa ROCK 4 SBCs
Date: Wed, 27 Mar 2024 20:26:36 +0100
Message-ID: <20240327192641.14220-1-dev@folker-schwesinger.de>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-Authenticated-Sender: dev@folker-schwesinger.de
X-Virus-Scanned: Clear (ClamAV 0.103.10/27227/Wed Mar 27 09:33:27 2024)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_122701_624857_3893B5FC 
X-CRM114-Status: UNSURE (   9.51  )
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

Various RK3399 boards, including the ROCK Pi 4 series showed instabilities
with some eMMC modules when operating in HS400 mode [1]. Later, a missing
pull-down resistor on the eMMC strobe line was identified as the root
cause of these instabilities [2].

This series enables the internal pull-down on the eMMC PHY strobe line
for all ROCK 4 series boards as they all lack an external strobe
pull-down resistor.

Furthermore, HS400 mode is re-enabled for these boards. Previously, to
workaround the instabilities until the issue was investigated further,
HS400 mode was replaced with HS200 mode [1].

[1]: https://lore.kernel.org/all/20230705144255.115299-1-chris.obbard@collabora.com/
[2]: https://lore.kernel.org/all/20220822074139.3810-1-jensenhuang@friendlyarm.com/


Folker Schwesinger (2):
  arm64: dts: rockchip: Add enable-strobe-pulldown to emmc phy on ROCK
    Pi 4
  arm64: dts: rockchip: Add enable-strobe-pulldown to emmc phy on ROCK
    4C+

 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 4 +++-
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 4 +++-
 2 files changed, 6 insertions(+), 2 deletions(-)


base-commit: 4cece764965020c22cff7665b18a012006359095
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
