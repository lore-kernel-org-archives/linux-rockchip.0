Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBEBF606D813
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Nov 2026 21:57:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=HNIZmXqe;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=mail header.b=iSOWaYN5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=8PiRjn4xrbTYcyVZ2JCEWiV/JvGkKaQhl9t2s/5Ni9E=; b=HNIZmXqeeB8cMG9rcMndsmMnFX
	QBIKFk/ZhmIBKRMbJyrYdYs+Fd/E0wL4tf81GAdeLjiiL/Ff87q8JQ2lq6LnXk1wc694aBgHndShR
	blSQcsaZ50F0ymBESlEgt0IZA2LWOa2h0KymDDliVMHtvOOHUXmKGjVuIXP9Nlw0DKenzdWrUvjSL
	z2VFYLAF6xwepdrtkSG+hH7Pcd9BWNCuJjhQTFIkHzJ/mzi7saMjR5el8z9czSFi/lhl0Y8Va8LLv
	mJEa3dxe9FN6RMjcE6/0KFnTxbu3AypfUef4UeucV7YdjSm71yUivjKi1nd6Yx9vWIC64YJEgKF/3
	K32fiB8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRw5-0000000DkHQ-1c3k;
	Fri, 06 Nov 2026 21:57:25 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPRw3-0000000DkFj-0k1H;
	Fri, 06 Nov 2026 21:57:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1794002240;
	bh=G/mSckIqYLymBWxges+EZZ+zPguC1KkQ7jjJsAjrooo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=iSOWaYN5Aj4TZS+pbET4koN2DAjIheUhWCZ/Dg7IvuHYEs9CBLb5lr1AY41RZJtuF
	 w53sj+B+T/DW+jYX4JwMS+ut40sNFn9En04eQknokfUHHOAKuScdmJkB6r2GiXwTg2
	 sOglD1WRoHe0Nd5GqVGaedjl7Kh/lRfDFpf7ez5oSSmNqGe5q58WbVdXmZpjK0EZXE
	 Z0z73wRbnYNMGKEz9xZpK41TM6HVufGivYphaGkSmHUlGHQ1UMAcCFBCaZrUMlhpFS
	 hBXMYONYYUtSfwLK91404KH5I9J64r7OBlfWlbgACNhdDb5Leo0DWzPQ72GiGOib/n
	 AopcM2wCHHvNA==
Received: from jupiter.universe (unknown [100.64.1.62])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 5D64817E094A;
	Fri, 06 Nov 2026 22:57:20 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 15AF6480030; Fri, 06 Nov 2026 22:57:20 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Fri, 06 Nov 2026 22:57:08 +0100
Subject: [PATCH 3/5] arm64: dts: rockchip: Enable HDMI sound on RK3588 EVB1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261106-rk3588-evb1-dt-updates-v1-3-bdbe16223589@collabora.com>
References: <20261106-rk3588-evb1-dt-updates-v1-0-bdbe16223589@collabora.com>
In-Reply-To: <20261106-rk3588-evb1-dt-updates-v1-0-bdbe16223589@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1128;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=G/mSckIqYLymBWxges+EZZ+zPguC1KkQ7jjJsAjrooo=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGruTT/9SbKdXLvJ8/09A8B/5V1FChKcudzVx
 qMP1DRTHGxNk4kCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJq7k0/AAoJENju1/PI
 O/qaF9MP/2cX/bGPiQ02ZI6INneWEKUKwMzN36Jsa4/ByhHHpuqosM58H4sN12Z/ymxaO0Im+8j
 SaBeJijiyCecrLpRcZjupQuRdqbkVeVuq9Lx9/Rz7MklFiYu1RIUIkAMhoyeqLwzOW0tccPlNHB
 QO840NkqKUFPHxCVLR8UQe0X8kd+j2Mb5N1q+KOpTiNmMA28PBbI9vA0yi/6q1UWiuZGxTHAQ5v
 3muoDW/PcvuwMFqNxa1ZNmZsfxZR653vbfvRlmrOWCdcGcKjb6q/KpmYAACNJGtnsqpHN9sNqwz
 gRxS7IKgNcZx5wm+F2Uju2aby9fmonkDnsBxYJ+OLuQRHXfS+jt1WKYSBxb2gEZOvqkFYJh9Mi9
 GDEGHaVl9MDcJXt/xscQM26SEplvbOiJqaSlSIFp2+PzPEMouRpdqiiTIFJtb0PkxkMEvK1XH5D
 6rIjxrcnxqedutRYD1YO2kAEG6cLph7k5aKzCOkRdSh5+gLAoFS9IRe96w2ZKPmYD30e+HPWO3H
 cPcDNYHrxF1M6H4f0Ww7UHDw1J5FGH9xkQizYh9iOcgl9kr3uXxYAyiG9La9gCHgqTRCHJWbYCY
 2j6s6PA/81upLHdC/9L/d0Ls/VcZlFSXS1Wq07QqdHlL2s8/D+4JbBfNRONYEjGFrdXvyCeTpfk
 ExPDUMPMTJZ6NPj7l8B0t/w==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_135723_409325_75C1C0C2 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The RK3588 EVB1 supports audio on both HDMI ports, so enable it
accordingly.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index 6476d9e3be6f..6a95a8bb6fb8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -379,6 +379,10 @@ hdmi0_out_con: endpoint {
 	};
 };
 
+&hdmi0_sound {
+	status = "okay";
+};
+
 &hdmi1 {
 	frl-enable-gpios = <&gpio4 RK_PB2 GPIO_ACTIVE_LOW>;
 	pinctrl-0 = <&hdmim2_tx1_cec &hdmim0_tx1_hpd
@@ -399,6 +403,10 @@ hdmi1_out_con: endpoint {
 	};
 };
 
+&hdmi1_sound {
+	status = "okay";
+};
+
 &hdmi_receiver_cma {
 	status = "okay";
 };
@@ -514,6 +522,14 @@ &i2s0_sdi0
 	status = "okay";
 };
 
+&i2s5_8ch {
+	status = "okay";
+};
+
+&i2s6_8ch {
+	status = "okay";
+};
+
 &mdio0 {
 	rgmii_phy: ethernet-phy@1 {
 		/* RTL8211F */

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
