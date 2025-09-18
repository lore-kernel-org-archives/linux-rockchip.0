Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09C89CAC5A9
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Sep 2025 09:33:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jR+8kTpqYt7GFDPjs9FQgg0sQCdXnvO5wBUB2UoPjzM=; b=Gl/JBDGNfEhcx3
	rWS/7rtX37DlWTUixxZUp5xV8Ow/lCygjBSqfCSMvnPyHSmjylrP10JuYf4Sot6OFskP1YS9LBgo5
	lBWXONAAKdSTkjWkakTEiH/PtovsmIzrhtW7gDZ9bUiquyu08nOFIdDNj6V0kvbVUnm2IsRa/oTp8
	2sQgRpkr+ExGi27eUPY/jk88bevH7pV4LTOtLRjkYIUZoJdwFiJ6Pg5a4iHidCFJuyvNMN84LK1Ex
	PKQ3vxR4pYxH4dZoH7Zn3ZVHN7ZldBxlu1B92g8LrckhWOES9E62dd+Q42XY6l3QpYJ89cDXKg8zo
	98IUdVhZYQl6sbrbfyzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzB0m-0000000GtFN-3bPz;
	Thu, 18 Sep 2025 09:33:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzB0k-0000000GtD0-2qne;
	Thu, 18 Sep 2025 09:33:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=FlAhNQnQgMFhDX0TaNHAvXo7GKBKzvZkP4Sin8ddCUI=; b=SFfWN6/pHaaVkxJykabBN1H/ZK
	Nr7nFQyKxTO4rBUDbrgSgz5nacn76x0Ci1WbZkiJD7nhkE5KMnOpcJD2X27oe4ww88JPjO0q7P1Nr
	9So6cRGhn+8FFdcD2ej6mNWkptU17nLne0+osQxZHMVtFrUaixBAcKBu6EjXI8JWBx2I4PpgKdQ3q
	LdYG6aNIT8NSQDOE8bcelyzuAV8zsWnkN/m1lKrOa6l8phG3zJDipWXXmj9dLA4OQKbdpo7+Px+2G
	54cBKytKycn3a5Ul3FFSVFAsDjCwzJ5Bot/kY5TPWhAyjXf4OLG7q7V0UzST5CqSN+lc6Lom6i3Xk
	iR35EUSw==;
Received: from mail1.nippynetworks.com ([91.220.24.129])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzB0h-00000007aGb-18LN;
	Thu, 18 Sep 2025 09:33:05 +0000
Received: from grunt.nippynetworks.lan (unknown [94.228.36.46])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature ECDSA (P-256) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: lists@wildgooses.com)
	by mail1.nippynetworks.com (Postfix) with ESMTPSA id 4cS9RH2cB5zkd2w;
	Thu, 18 Sep 2025 10:32:59 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wildgooses.com;
	s=dkim; t=1758187979;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=FlAhNQnQgMFhDX0TaNHAvXo7GKBKzvZkP4Sin8ddCUI=;
	b=fHfF/VohcPLZ9ODrckry6N2rM/r2IHJ6cGVfD34oD6Syoa+QZJ1xJxAABjH/JIwaAPVU9a
	lVLIIbGtLJQlT0Aj2xF8ZkHosc0Xx1lBldvIn6MTVbPgy5FkJbsim2tekDvqlK8er7oIlt
	i1PzL9L/zgckS6kzI11Q/vzG/QxynsM=
From: Ed Wildgoose <lists@wildgooses.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Ed Wildgoose <lists@wildgooses.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] arm64: dts: rockchip: correct uart mux for Radxa ZERO 3
Date: Thu, 18 Sep 2025 09:32:45 +0000
Message-ID: <20250918093246.15623-2-lists@wildgooses.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250918093246.15623-1-lists@wildgooses.com>
References: <20250917114932.25994-1-lists@wildgooses.com>
 <20250918093246.15623-1-lists@wildgooses.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250918_103303_673021_CE95453E 
X-CRM114-Status: GOOD (  10.21  )
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

The rk3566 has multiplexed pins and the uarts can be moved to a choice
of 2 pin groups. The default rk356x-base.dtsi appears to default to mux0
for all uarts, however, specific hardware might choose to implement
alternatives

The Radxa zero 3 shows that is uses M1 for uarts:
- uart4
- uart5
- uart9

These aren't normally enabled, but we should at least correct the
default pinctrl definitions. Without these changes there will be
conflicts with mmc0/mmc1, leading to the SD or eMMC going missing.

Signed-off-by: Ed Wildgoose <lists@wildgooses.com>
---
 .../boot/dts/rockchip/rk3566-radxa-zero-3.dtsi    | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
index 1ee5d96a4..e644bfc9c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
@@ -492,6 +492,21 @@ &uart2 {
 	status = "okay";
 };
 
+&uart4{
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart4m1_xfer>;
+};
+
+&uart5 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart5m1_xfer>;
+};
+
+&uart9 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart9m1_xfer>;
+};
+
 &usb_host0_xhci {
 	status = "okay";
 };
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
