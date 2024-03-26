Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11C75C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 18:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id
	:Date:Subject:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b4qjktqHpYmFCzxnx7QB7YHIWJ7vSHg/qmVqEstjlUo=; b=ztA3mNP0qzG318
	DvQv8Z8ChB956PF40dPNjcviPhNTSo5BvyS0yavDzeGDzDIwQ6uD+0eWcG6exmzcurfDsvsQNCQid
	64TE42zZMYTIFWn8B8mUtNjZ20SmEVmXhbF6/SrXlADVaYZ47ejcHz3Mzdn5i/IW9U5hhLKZxQjin
	PPpx27j4gF7nFF4w98snheP1rM7A2GWBKV0EgLgYRvOzhPsrKWwsRAwS30koC+uihnCLxMgxZW4M/
	5nP/bWOxDzrvNDrmqMw4t26Q+E5wWsV7PJ3GE4vZs9nmOpx6WRlRJ9IfT0T4LupuygOW8cbuLsNr4
	n+ZWPO/iC3TZ0zfh+ObQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpBzY-0000000628v-3LCo;
	Tue, 26 Mar 2024 18:57:48 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpBzC-000000061ut-2piv;
	Tue, 26 Mar 2024 18:57:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 86E55CE21FD;
	Tue, 26 Mar 2024 18:57:24 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB062C433C7;
	Tue, 26 Mar 2024 18:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711479443;
	bh=E43foxj+UySf1m9AXwAy4EcKz2179uEogLNPhzYtuqU=;
	h=From:Subject:Date:To:Cc:Reply-To:From;
	b=R5jhoRbNjNNZ8szwWvKMLlX9tX/YyyKDNyfAkAe32TdMq1uo6cOiS52xphFt+JGZH
	 omO2+t8Sa8P7vTUxVswN15s5zgc++QAdnLjbQbFK17bk3adqXKuG8i2y1pGAjoflt8
	 bPkb7f4M32A6sVrGV1Jk7AzBUq88Cz/k/moNAhnD+CMS6EUmqUv6CK2st1YRxxM0gQ
	 weFAdl0pEx4IB+K33U8U++YrMd574AXYvpBX/yphhQL41scrnl1YU0Vr55hLMXt1kv
	 OzWZPd7IdJCQOGZ6orl9TsiICs8Ax5r3Fx0sTvq9FHssSIk7ppsN3PxbCH0n82HsYS
	 msmQ9sOwiNILg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A14FCD11DF;
	Tue, 26 Mar 2024 18:57:23 +0000 (UTC)
From: Folker Schwesinger via B4 Relay <devnull+dev.folker-schwesinger.de@kernel.org>
Subject: [PATCH 0/3] phy: rockchip: emmc: Enable internal strobe pull-down
 by default
Date: Tue, 26 Mar 2024 19:54:34 +0100
Message-Id: <20240326-rk-default-enable-strobe-pulldown-v1-0-f410c71605c0@folker-schwesinger.de>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAOsZA2YC/x3NTQqDMBBA4avIrB3QRKX0KsVFfiY6NCQy0bYg3
 r3B5bd574RCwlTg2Zwg9OHCOVX0bQNuNWkhZF8NqlNDp9WE8kZPwRxxR0rGRsKyS7aE2xGjz9+
 EWo+Te7jQ2yFA7WxCgX/34zVf1x+9MGmIcwAAAA==
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1969;
 i=dev@folker-schwesinger.de; h=from:subject:message-id;
 bh=E43foxj+UySf1m9AXwAy4EcKz2179uEogLNPhzYtuqU=;
 b=owGbwMvMwCXG5FBoZNu1u5bxtFoSQxqzVPcG4XrhRdxbmas+173ql3lw5G3uxq5OPd6sDzq9m
 U3MsX86SlkYxLgYZMUUWVjzMrYwZ5Yvte76+RpmDisTyBAGLk4BmMgeNoY/nM+WhP5tVnq2wjs6
 kPnsU9EmyWUTV69YUBTcenfrjbKcfoZ/RmG52hezVCr2HS/90XD65CTtk8kWC3YYC4SuPKa2tfc
 NJwA=
X-Developer-Key: i=dev@folker-schwesinger.de; a=openpgp;
 fpr=056E68B4036977A53B8AF9EB024071323D8ABB7D
X-Endpoint-Received: by B4 Relay for dev@folker-schwesinger.de/default with
 auth_id=144
X-Original-From: Folker Schwesinger <dev@folker-schwesinger.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_115727_114267_33CCAF33 
X-CRM114-Status: GOOD (  11.95  )
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

Various RK3399 boards, including the Rock Pi 4 series, the NanoPi 4
series and possibly others showed instabilities with some eMMC modules
when operating in HS400 mode [1]. Later, a missing pull-down resistor on
the eMMC strobe line was identified as the root cause of these
instabilities [2].

This series changes the Rockchip eMMC PHY driver to enable the
internal pull-down for the strobe line by default, effectively
restoring the behavior of the vendor kernel [3].
Addressing the problem in the driver avoids fix-ups in individual
board DTs.

As this change makes the optional DT property enable-strobe-pulldown
obsolete, it is replaced by a new property disable-strobe-pulldown,
that, when used, allows to disable the internal pull-down.

While at it, the enable-strobe-pulldown property was removed from the
NanoPi4 series DTS (which was the only user of the property in the kernel).

[1]: https://lore.kernel.org/all/20230705144255.115299-1-chris.obbard@collabora.com/
[2]: https://lore.kernel.org/all/20220822074139.3810-1-jensenhuang@friendlyarm.com/
[3]: https://github.com/rockchip-linux/kernel/blob/develop-4.4/drivers/phy/rockchip/phy-rockchip-emmc.c#L310

Signed-off-by: Folker Schwesinger <dev@folker-schwesinger.de>
---
Folker Schwesinger (3):
      phy: rockchip: emmc: Enable pulldown for strobe line
      devicetree: phy: rockchip-emmc: Document changed strobe-pulldown property
      arm64: dts: rockchip: Remove enable-strobe-pulldown for NanoPi4 boards

 Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi            | 1 -
 drivers/phy/rockchip/phy-rockchip-emmc.c                    | 6 +++---
 3 files changed, 5 insertions(+), 6 deletions(-)
---
base-commit: 4cece764965020c22cff7665b18a012006359095
change-id: 20240326-rk-default-enable-strobe-pulldown-3356c8cf1b4f

Best regards,
-- 
Folker Schwesinger <dev@folker-schwesinger.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
