Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A8E9BC6FD1F
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Mar 2024 18:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XfjDeQ80Zk+QMhgkDa2Iziv1G6sPbqcc3lkFEudE2wk=; b=0olw291SaasX+Y
	Fu3BIe/A5Jx/UdHGFsldPGjyHF0ZPYQtZIo1U0JThpL21APp7110CFtdCasSr1gM46wNI5FPNb6GW
	26f1Clu73TLApLt5uIlo/HhMLPprGtGLeOL9wo65B7+HSg69kIkeJtMvuyWec5JoM9QI3wHfKls1p
	YSdYFnlnEomD5NbIs+4Z2LiDd/lqUmxfXwxpZWsqqfkKP3OQ7XBmh4WVvINfPoFkMYI344minnqgb
	pqmcRMgffzDc3g94tjK5JsTdQRhBr7EFPQ9wSfFxAEBjJy0iUijJMNlppFoTRRn/2mbN0WHxd7P5h
	3LgyIZBX/ppswqO5M7Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpBzh-000000062EI-05ZW;
	Tue, 26 Mar 2024 18:57:57 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpBzE-000000061vb-3GBw;
	Tue, 26 Mar 2024 18:57:30 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 82CABCE23DB;
	Tue, 26 Mar 2024 18:57:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9F70C43330;
	Tue, 26 Mar 2024 18:57:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711479444;
	bh=t92rMDfisU2O183WicZRvvThqnLcj0E2zhg0sRyx/uA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=lxQWBkHE48NtOCNCYUMMn4GNtDMNqVx0YIxT9+GwVFAmFk2Jy32/hlFbq96lBba9b
	 vuqJjKTu5OHyzHGWwylh05mfq+xheI8sSFEo0XpOG96PiYoMI6UnMvHidBtTMYj5ym
	 ao1oMynsE/KpI4e78dA8NK0lWqep3aqTPbY6JxDouNhLSOvDB9/LfAPTnod7kCSRxX
	 Nm5N4MYJYjnEZPWzsLHPddIE6dUnnydCU98EQ07dH3lpd1nXw4DhVey5JoVCpK9piB
	 ZXrKBmVZRk5I4CrcDPkwQt9hcfu4CXpbND5w9/vvWTOohNr5X+8N3FWcDaOQf2+ehD
	 XF7l6Q4b7gTnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEF2ECD1284;
	Tue, 26 Mar 2024 18:57:23 +0000 (UTC)
From: Folker Schwesinger via B4 Relay <devnull+dev.folker-schwesinger.de@kernel.org>
Date: Tue, 26 Mar 2024 19:54:37 +0100
Subject: [PATCH 3/3] arm64: dts: rockchip: Remove enable-strobe-pulldown
 for NanoPi4 boards
MIME-Version: 1.0
Message-Id: <20240326-rk-default-enable-strobe-pulldown-v1-3-f410c71605c0@folker-schwesinger.de>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=724;
 i=dev@folker-schwesinger.de; h=from:subject:message-id;
 bh=fmO1sP9nAwWwIfDKXcaV6YI0IH/hcl1UfJExvs0KGtI=;
 b=owGbwMvMwCXG5FBoZNu1u5bxtFoSQxqz1KSLdfclJe/cdDUz+/2kl+1vlNncrZtWMwXdsI2zz
 Obt51PvKGVhEONikBVTZGHNy9jCnFm+1Lrr52uYOaxMIEMYuDgFYCJlxowMUxteL/2zjlHg1162
 50fY9v/3D+Q+G9j4zG9K5kYTttqjXowMV2buML48c6NI60+fT5tf/Q9o/dhVHZW/LE7hbpPWpuD
 v7AA=
X-Developer-Key: i=dev@folker-schwesinger.de; a=openpgp;
 fpr=056E68B4036977A53B8AF9EB024071323D8ABB7D
X-Endpoint-Received: by B4 Relay for dev@folker-schwesinger.de/default with
 auth_id=144
X-Original-From: Folker Schwesinger <dev@folker-schwesinger.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_115729_607214_05E8E90A 
X-CRM114-Status: UNSURE (   9.26  )
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
Reply-To: dev@folker-schwesinger.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Folker Schwesinger <dev@folker-schwesinger.de>

The Rockchip eMMC PHY driver enables the internal strobe pulldown by
default. So, remove the enable-strobe-pulldown property from the
NanoPi4 series boards DTS.

Signed-off-by: Folker Schwesinger <dev@folker-schwesinger.de>
---
 arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
index b7f1e47978a6..38af91b9e756 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-nanopi4.dtsi
@@ -168,7 +168,6 @@ &cpu_l3 {
 };
 
 &emmc_phy {
-	rockchip,enable-strobe-pulldown;
 	status = "okay";
 };
 

-- 
2.44.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
