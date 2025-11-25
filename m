Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C251CCFD37B
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Nov 2025 03:47:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BBrfZN96pQkKRVAreEkCoKDeUt/Igf8oN5+9xhu2BlU=; b=PBQ5essnkORe1U
	iAsjDA4cviaPQq1N964/wXgptZ16AoHA7j3YofznYlZjUHBbWgLkpMJ1sDuI4uplUIg0071hUx8ZE
	KFh8B98LzuE9OdDTOh8enlDgtRCJPbbbwYt9DCjIo5Xq2COsRZqLoDb1QEh9sD/dezhHEy2gswgGo
	ne7uE1N+lR0uCcdjJgGA3A2e74QBOGgyB2xvWclgoMZlvMl0H51dcXo41wNjnFPlqGcUH32sS5s8q
	xZ900Evp99b3Wpio+pn/EAzOJknrJZ8n9F++Y0EMU3cqtQBqFZXNv+MNSlzj7aqB48fOo5kXcBDTG
	KgNfcMhz06h3BJd4f04w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNk1I-0000000ChJ5-1OA8;
	Tue, 25 Nov 2025 03:47:12 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNk19-0000000ChC9-0up9;
	Tue, 25 Nov 2025 03:47:05 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 91E8D443D0;
	Tue, 25 Nov 2025 03:47:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6B11AC19425;
	Tue, 25 Nov 2025 03:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764042421;
	bh=5l7nup7DC0Y8dqHhsU6KY6mQSCmRILk4Zjbco+Fq9Jg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=G7rQxDp6LFp6SImskkZNkYHvZPColq6OuCe6e4ZatPWGKyMNMwN6pTbMa5mc4UrL8
	 JJfhHqaO99P9+y4crcXyUSo73vOwoOLudUyuqhazf0q7CQS8Jp0n5mVy0t/a3kUdBx
	 b+5+c8gTQmWLEvQ/6lhxsplLxr53X+4Z39DX5y6BfGw5jXbV72FkR1b28GFXlWpXQO
	 NvClOrdOYnW1Cn+v0cc4xmFq226HIfN2QLIe9QdTM6JXjHnfToPuQ3iEa01xGGnz5C
	 LTSEEvim94ktPiCaakYMkpE3ttBexenN8dfJTp0K2d3midMmVyyzsL6E/TE3ooYyvH
	 ks0APOMsFFlug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F4CACFD37A;
	Tue, 25 Nov 2025 03:47:01 +0000 (UTC)
From: Rudraksha Gupta via B4 Relay <devnull+guptarud.gmail.com@kernel.org>
Date: Mon, 24 Nov 2025 19:47:02 -0800
Subject: [PATCH v5 3/4] arm64: dts: rockchip: Add magnetometer sensor to
 Pinephone Pro
MIME-Version: 1.0
Message-Id: <20251124-ppp_light_accel_mag_vol-down-v5-3-f9a10a0a50eb@gmail.com>
References: <20251124-ppp_light_accel_mag_vol-down-v5-0-f9a10a0a50eb@gmail.com>
In-Reply-To: <20251124-ppp_light_accel_mag_vol-down-v5-0-f9a10a0a50eb@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 phone-devel@vger.kernel.org, Rudraksha Gupta <guptarud@gmail.com>, 
 Ondrej Jirman <megi@xff.cz>, "Leonardo G. Trombetta" <lgtrombetta@gmx.com>, 
 Pavel Machek <pavel@ucw.cz>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764042420; l=1356;
 i=guptarud@gmail.com; s=20240916; h=from:subject:message-id;
 bh=6kNPA+rufMDaioiLjzVrw3yC2YKarI4Xs7vCiBTyO0Y=;
 b=mjYYXO4VbxbQzJyStmB8AZAeOSbBj75gjJppJVbTQOdHHt/2CWOeQhbgrytShK5eHi5ku4QNZ
 fuP4qIKj7w2AxQqtJKaj3+ht/F8kA6jIf1mEFpB6PerrijUO2jTOo6z
X-Developer-Key: i=guptarud@gmail.com; a=ed25519;
 pk=ETrudRugWAtOpr0OhRiheQ1lXM4Kk4KGFnBySlKDi2I=
X-Endpoint-Received: by B4 Relay for guptarud@gmail.com/20240916 with
 auth_id=211
X-Original-From: Rudraksha Gupta <guptarud@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_194703_325235_7973F77B 
X-CRM114-Status: UNSURE (   9.41  )
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
Reply-To: guptarud@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Ondrej Jirman <megi@xff.cz>

Pinephone Pro uses AF8133J according to the schematic.

The mount-matrix was added by Leonardo on top of Ondrej's work of adding
the magnetometer. It was verified with Leonardo's compass app:

https://gitlab.com/lgtrombetta/compass

Co-developed-by: Leonardo G. Trombetta <lgtrombetta@gmx.com>
Signed-off-by: Leonardo G. Trombetta <lgtrombetta@gmx.com>
Signed-off-by: Ondrej Jirman <megi@xff.cz>
Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
Reviewed-by: Pavel Machek <pavel@ucw.cz>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index f8c74b43ae9f..03721d71766c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -553,6 +553,21 @@ mpu6500@68 {
 	};
 };
 
+&i2c4 {
+	af8133j: compass@1c {
+		compatible = "voltafield,af8133j";
+		reg = <0x1c>;
+		reset-gpios = <&gpio1 RK_PA1 GPIO_ACTIVE_LOW>;
+		avdd-supply = <&vcc_3v0>;
+		dvdd-supply = <&vcc_1v8>;
+
+		mount-matrix =
+			"0", "1", "0",
+			"-1", "0", "0",
+			"0", "0", "1";
+	};
+};
+
 &io_domains {
 	bt656-supply = <&vcc1v8_dvp>;
 	audio-supply = <&vcca1v8_codec>;

-- 
2.52.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
