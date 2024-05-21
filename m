Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8097AC25B74
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 May 2024 22:16:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cfIGcUwUhLNE3KR8+7EmGHlnPG13sCxoZ827cjIeM/4=; b=ntd8+x4tr7ycsU
	qJqdeFAFuIQNxj6U9Whjfq8++gAvlEndwnAPYeIP5J8egY/MuzxvMpJ7ZPxayWwVvumUoIAhFvnxw
	vp4TlnNXx7HNAQF0hMmXQqbPQYwo40RqYqMa/bfW3KHM8MiBruzp3xqOHHRf3ByaT/1jMd07TnO3f
	koJgi+QDGFW51U1Acuw2EvxQLRraXuvSh0AFjYZkLY5p8FSR6XtbsyCJgBmMc+TfhqDjZ6/zwvzAU
	XYYHYcgnB7G8XtiOIwNAgO+YL59UI+cNhPdzPnU5y0fy0ij7HQVu/oQ6eSkR/J/PBh2q2AzRTfZ10
	w6m3f2HejrBEFklKVwlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9XmG-00000001Dw4-2bxm;
	Tue, 21 May 2024 22:16:12 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9WlT-000000016Vy-0IHT
	for linux-rockchip@lists.infradead.org;
	Tue, 21 May 2024 21:11:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1716325871; bh=eRQ+GqMMyX9va5/1fB0L7QxYQhHkZ2nYtteJt4bcTqY=;
 b=pixuky9xU41ZaDZ5yJWWm8NN/lxYjNmk2YpyxhwaGihCvyV/UNMi1Fxxcyp78Cyqvxum9kcOV
 5thzwXgLEq7ZmpsdkTVQ7HSdIqQRhyi0wVC9PzK8sInZOg3a2RSRBBrVP5QuroRBkeCYAEXprKJ
 j3lTpmkOeiopiL6FLCshW9OYMOFNzoAc4bzbS68nsMBRuka2Q4zolciRwWI3Fd9ADi/8eDT+pvy
 /gRhMA3NcmrtCZlRvBGjOxMvN2Zil0duYc84/AwKr9lmK2RNes/AypGL3ELbrbNVgDG7XmD7BTB
 BXWwi6ibd0AUdKqMHMyBWN7Ve+4N6aGLu2OcYgGodarA==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 08/13] arm64: dts: rockchip: Add OTP device node for RK3308
Date: Tue, 21 May 2024 21:10:11 +0000
Message-ID: <20240521211029.1236094-9-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240521211029.1236094-1-jonas@kwiboo.se>
References: <20240521211029.1236094-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-ForwardEmail-ID: 664d0dec8b6b0c828344af2b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_141119_320588_E01FB835 
X-CRM114-Status: UNSURE (   8.53  )
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

The RK3308 SoC contains a controller for one-time-programmable memory,
add a device node for it.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index c00da150a22f..6531ede13af9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -556,6 +556,30 @@ saradc: saradc@ff1e0000 {
 		status = "disabled";
 	};
 
+	otp: efuse@ff210000 {
+		compatible = "rockchip,rk3308-otp";
+		reg = <0x0 0xff210000 0x0 0x4000>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		clocks = <&cru SCLK_OTP_USR>, <&cru PCLK_OTP_NS>,
+			 <&cru PCLK_OTP_PHY>;
+		clock-names = "otp", "apb_pclk", "phy";
+		resets = <&cru SRST_OTP_PHY>;
+		reset-names = "phy";
+
+		cpu_id: id@7 {
+			reg = <0x07 0x10>;
+		};
+
+		cpu_leakage: cpu-leakage@17 {
+			reg = <0x17 0x1>;
+		};
+
+		logic_leakage: logic-leakage@18 {
+			reg = <0x18 0x1>;
+		};
+	};
+
 	dmac0: dma-controller@ff2c0000 {
 		compatible = "arm,pl330", "arm,primecell";
 		reg = <0x0 0xff2c0000 0x0 0x4000>;
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
