Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90753CA0ED3
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 14:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nt60HOxcjYh60BSQIQO906U+MjPb5QtCHgQwOZYz9jE=; b=eQIEQmcQr15MCR
	KoT9hXs/AKp1REPrg5UFefq7y6FDMBtd+HHh8T/iC05n3TL+sTKEIztI35sS/Lj3it6coX7yt7VtI
	mzSvofVW/uby6YYjLWiiCHaWxUVx6u9qIYTeiXtrGbQe+NivDowgdETy3KGRnp4BtwEHXIdFVhzX5
	lk8h4dNKY81gZFm6OAnAR+KA0Rac6r8MTer90lNGpQS10QRDn6pSC21mosakzgNpRdPxcRzNXHJ73
	vIlWQk2CZzF2Jgkkvf+twgS2ZJLhHZouHNd2x6rra/QTakCoNPpzy/yhtMIP9XaDr7O3VynhLq2vZ
	cdUo+NkZxm5XBPtkYZFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slqhB-00000004hiV-0mVG;
	Wed, 04 Sep 2024 14:09:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slqgA-00000004hRr-1Sre
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Sep 2024 14:08:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1slqg8-00037M-RS
	for linux-rockchip@lists.infradead.org; Wed, 04 Sep 2024 16:08:12 +0200
Received: from [2a0a:edc0:0:b01:1d::7b] (helo=bjornoya.blackshift.org)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1slqg8-005TRH-Dd
	for linux-rockchip@lists.infradead.org; Wed, 04 Sep 2024 16:08:12 +0200
Received: from dspam.blackshift.org (localhost [127.0.0.1])
	by bjornoya.blackshift.org (Postfix) with SMTP id 1707933296E
	for <linux-rockchip@lists.infradead.org>; Wed, 04 Sep 2024 14:08:12 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bjornoya.blackshift.org (Postfix) with ESMTPS id 744AC33295B;
	Wed, 04 Sep 2024 14:08:10 +0000 (UTC)
Received: from [172.20.34.65] (localhost [::1])
	by hardanger.blackshift.org (OpenSMTPD) with ESMTP id efa89c82;
	Wed, 4 Sep 2024 14:08:09 +0000 (UTC)
From: Marc Kleine-Budde <mkl@pengutronix.de>
Subject: [PATCH 0/2] arm64: dts: rockchip: rk3568: add CAN-FD controller
Date: Wed, 04 Sep 2024 16:07:55 +0200
Message-Id: <20240904-rk3568-canfd-v1-0-73bda5fb4e03@pengutronix.de>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIALtp2GYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDSwMT3aJsY1MzC93kxLy0FF1T40RTM6PE1DQDszQloJaCotS0zAqwcdG
 xtbUA3n1WF14AAAA=
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: kernel@pengutronix.de, David Jander <david@protonic.nl>, 
 Alibek Omarov <a1ba.omarov@gmail.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Marc Kleine-Budde <mkl@pengutronix.de>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=openpgp-sha256; l=1337; i=mkl@pengutronix.de;
 h=from:subject:message-id; bh=kd9E40PQBFEWrTjYdxm/EiNgkyAQn3UseBk97RlZljA=;
 b=owEBbQGS/pANAwAKASg4oj56LbxvAcsmYgBm2GnFxpWKaInvtdWH/pDwe0TPVCSfLmYkktUa/
 G64Np4mB16JATMEAAEKAB0WIQRQQLqG4LYE3Sm8Pl8oOKI+ei28bwUCZthpxQAKCRAoOKI+ei28
 bxc1B/9Xhh40JT5rXUQwzROGWVPCn8HbwD6tU+C0mluTt1awCG6CpnaSCUyTIMwwrQ3ASng2WRk
 xTYZu20Jf7Y0bj/wEFWK6hzCuptxeva3n2Mp/0FUx8bw94U8yR6gcflLTgRwGaUFnnyYzNiWp1i
 aNXEYI6ccnoT4E+9oZbUgHMni22hAg30cfo00L3E7009MzRVch/JQhMWM0EET2oJgVjsY9/jd2a
 qOQt3snn2qujw21cd20jJVC4vB3UpmfS5eYPODLBtBWSdTRhWI4tsFk9I4PG+eV+Dyhhiq7/IYN
 VjyG2qc5V2SZ+fpCAb/LAldGXXqiU4labSxCRi5m3PwbwiUO
X-Developer-Key: i=mkl@pengutronix.de; a=openpgp;
 fpr=C1400BA0B3989E6FBC7D5B5C2B5EE211C58AEA54
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240904_070814_467290_E3289A5E 
X-CRM114-Status: UNSURE (   9.29  )
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

This series first adds the CAN-FD controllers nodes to the rk3568
devicetree, then it enables the CAN-FD controllers on the
rk3568-mecsbc board.

The DT bindings for this series are going upstream via
can-next/net-next into v6.12 with this PR:

| https://patch.msgid.link/all/20240904130256.1965582-1-mkl@pengutronix.de

So when applied to v6.12-armsoc/dts64 this series produces checkpatch
warnings about undocumented DT compatible strings. Maybe we have to
postpone this series a bit.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
Changes:
- rk3568-mecsbc: fixed order of phandles (thanks Heiko)
- These Patches were previously part of another series and have now
  been spun off.
- Link to previous version: https://patch.msgid.link/20240904-rockchip-canfd-v5-0-8ae22bcb27cc@pengutronix.de

---
David Jander (2):
      arm64: dts: rockchip: add CAN-FD controller nodes to rk3568
      arm64: dts: rockchip: mecsbc: add CAN0 and CAN1 interfaces

 arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts | 14 +++++++++
 arch/arm64/boot/dts/rockchip/rk3568.dtsi       | 39 ++++++++++++++++++++++++++
 2 files changed, 53 insertions(+)
---
base-commit: 78d500329b65217c45422ac0adf5c030783d3e58
change-id: 20240904-rk3568-canfd-53a562aef06f

Best regards,
-- 
Marc Kleine-Budde <mkl@pengutronix.de>



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
