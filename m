Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E710E7718A
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Dec 2024 12:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=afsVYEqwOot+i88TGqRtqWdgWmIDu8lyDEqn+ufQUWA=; b=mc0sHLYgMfSCYF
	MoKq6ujXUZcFd0A5f+NGFpmD0APfHVWlmgzYiO+J4IPdoEEgkf7+uvyP5mcxmfNynpag36WT7Ugoz
	6/NtGLqIBiNvRd7C3BYBdT3zkXKZipY6Iw869jlRh9iXU1xSsfuTJMRKqbueCDMsOWTuRDt45EZPz
	ZriiLNgs+wly0tYEngUjEzl74btxG+VIiehRA520v2gbls4SGTZ1ghmN9N40duHDoKG6pMM9VoXMP
	NWn8h4pQDI2GPcC5uPPEwuUWbnUYP+6BKEiiXsQObHOj1nLwdNJYp2hp6JnXUYMCBoe9NOGxHPScZ
	CLMHWzvhLRwU1M1KyQYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tOFr5-00000001qOA-2w0X;
	Thu, 19 Dec 2024 12:42:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tOFk5-00000001odV-2BaW
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Dec 2024 12:35:03 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1tOFk3-0007aQ-TF; Thu, 19 Dec 2024 13:34:59 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 19 Dec 2024 13:34:56 +0100
Subject: [PATCH 1/2] arm64: dts: rockchip: MECSBC: Remove i2c2 node
MIME-Version: 1.0
Message-Id: <20241219-mb85rs128ty-mecsbc-v1-1-77a0e851ef19@pengutronix.de>
References: <20241219-mb85rs128ty-mecsbc-v1-0-77a0e851ef19@pengutronix.de>
In-Reply-To: <20241219-mb85rs128ty-mecsbc-v1-0-77a0e851ef19@pengutronix.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Jonas Rebmann <jre@pengutronix.de>, David Jander <david@protonic.nl>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=976; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=SfUhCKWfnMwqxaoHNh+0OxbNh7oug+ykcNz4u6yGGJU=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYkhPEfrEcz8rQFRfZW3HfDX9tWE7ecwbdQSNK55GHJpx4
 1heWWp/RykLgxgHg6yYIkusmpyCkLH/dbNKu1iYOaxMIEMYuDgFYCInPzMybOSZl+3jVdm6s+7z
 t4vegn4d+zQWPo5qj9pWZO+tH++gycjwI47pvYun2YeHR7n7VuwpmpMUZP3XWjCf38Hu3GPlDVI
 sAA==
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::ac
X-SA-Exim-Mail-From: jre@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241219_043501_554445_C0055218 
X-CRM114-Status: UNSURE (   9.67  )
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

From: David Jander <david@protonic.nl>

One of the pins of i2c2 is actually in use as chip select 0 for spi0.
The chip select 0 is used for an FRAM chip, which will be added in the
next patch.

Remove the i2c2 node from the rk3568-mecsbc device tree.

Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts b/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts
index c491dc4d4947dc460330847dede052b1b25ba86c..ca041b4d2d38a4e06cd0a54a806fed2ab723c94d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-mecsbc.dts
@@ -206,12 +206,6 @@ regulator-state-mem {
 	};
 };
 
-&i2c2 {
-	status = "okay";
-	pinctrl-names = "default";
-	pinctrl-0 = <&i2c2m0_xfer>;
-};
-
 &i2c3 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c3m0_xfer>;

-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
