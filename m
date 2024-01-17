Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E4CEC47258
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jan 2024 19:16:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=W7bJ+HB3hf/bov61DoiqoAbkZNJn90gwOr4J/kj1Yns=; b=W4METV/lidHqAF
	6Y+S1C1h0haLqnJs5j+W0Pb7YYiSupWNLNK5v3d5Tq0D8nYGKkJrWtjjhleU+IcdpBxL5050IVoZX
	DA8USlG1YljDZSG1V5M+BcZaeM4XqFAX5d7s9Ryq9hChjnOyRGSB81fYpF7rq+tIXjU3rZXTnzMUd
	ozXqGYk4G42h/iRL2pJ7Z2BM4M7dEWztagzSSDzBC+SX5klMOkMP9CToZqnw+pF0NqKKKbO/JuJA+
	qhX7ev/mED8GXVIP+X2K6O4EtPcsMr9u/an/xP8jrMrElW9EizhmNreQgoKXcxzShHlAAwrZLheUu
	e3yO/MZD9dlFlxyyZ2iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQBOQ-000TCk-1D;
	Wed, 17 Jan 2024 19:16:06 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQBOM-000TBm-2Y
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Jan 2024 19:16:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1705518960;
	bh=dcPXYXWEcF3z5rXsUj9EOE0H1lS77aogWQRAD35Z/zQ=;
	h=From:To:Cc:Subject:Date:From;
	b=pgJgK4b/5ftpOH55deO1U5jaBi9IC48uVHb7G+uKGemRxroFj4vYhOrJdKhV2/lMq
	 eMI50j81ykz0Mfv/SZHt9q1KVpRVqPdvnmLQiSzQ4RgQ7WYLiH5C5gQnySklRMnCbz
	 Z5R7PMetOqksbi8kbsesKOJ21kdIT2osxc7hAKyYtkJ2OPl8S02nl99bb2OtaGxFhf
	 SYjjDV00tAHkDAnPKD3vyb9E1UqpsK2PLafG8kAlMulPWlKYRVYqHmILXREWVl1kuE
	 GC6tf07lDiiVJqiyD7PgY2h8gLTzsHywjsY6jAazpD+JbmVvL/rpa6u2W9hTcZuvjL
	 d9MWXuJeR22Hw==
Received: from jupiter.universe (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id E28E8378000E;
	Wed, 17 Jan 2024 19:15:59 +0000 (UTC)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 83DA1480C4D; Wed, 17 Jan 2024 20:15:59 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 1/1] arm64: dts: rockchip: rk3588-evb1: mark system power controller
Date: Wed, 17 Jan 2024 20:14:48 +0100
Message-ID: <20240117191555.86138-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_111602_981894_23379F6D 
X-CRM114-Status: UNSURE (   8.33  )
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

Mark the primary PMIC as system-power-controller, so that the
system properly shuts down on poweroff.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
index 7075366ec85c..fd665dfda55d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
@@ -590,6 +590,7 @@ pmic@0 {
 			    <&rk806_dvs2_null>, <&rk806_dvs3_null>;
 		pinctrl-names = "default";
 		spi-max-frequency = <1000000>;
+		system-power-controller;
 
 		vcc1-supply = <&vcc5v0_sys>;
 		vcc2-supply = <&vcc5v0_sys>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
