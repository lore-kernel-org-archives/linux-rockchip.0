Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0040ACCD1A7
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 15:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A2jabHthnnQaMceiZ5jcjmzlt3LF33le9AiGbH5b2jc=; b=sIijhhYXKLFqZF
	SPx+PIHXw2q0Fh71PvsNViozIOOuTFaTS+g/x7dGG7Y6ZWYRE8VDugKYo27EJfezuJA4kFH8k0nuP
	9gQ9UqxkJHkJ63BPjsBBK6O67DN58b4TIz64YDG3hGs98qZtkaSRT+lsW3Wj8AkQZNLbtWUWnbgI+
	fmJMylWbGhkhKM/XDydGJmTR+OX8rhVUm3a4h26PYnY7WYKuiB461AOpHvf6tFXwiUjHEQiL5o7F8
	5N6aC5AhLbzHBu5j62/cA4ObYINJjsrqMls7Rx2/qFsnLN+yvAAJNzEDx5sqGdLQc9PTNBpknL/bs
	k2u7wz+hETsXeDiKYLmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBECm-0000000HUBq-1mbJ;
	Tue, 21 Oct 2025 15:23:20 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBECh-0000000HU3X-2Bdz
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Oct 2025 15:23:16 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-b5c18993b73so919269866b.0
        for <linux-rockchip@lists.infradead.org>; Tue, 21 Oct 2025 08:23:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761060193; x=1761664993; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JF1Khuy4nqLiE2y1n9lovRhx5obbKE7xwKO+d5/rlWI=;
        b=TpSP7IjyPAg7NZtWy0iygaJYcJGkOGH5v3v+EC3fv13r3NIuxkk71cztVHfTlWnlzY
         tComy9ct79KLnHy9zR5i9w3LEqTEmaxvI0l0DTvqaBIK2LqWBtKitHxUKr5rSNRau8rG
         uqGwNmVh34vAuK0w7RGMb4eLbkqeFNc8kbJmMJswC9WbroblB9qxjIXwkcgnlyV2hxdI
         N5wZC8DQjSJTsA68e4NHgqJzPzAWznuRjpk3QYSwTb+jC4Dl4glufQDnY7iosyaSB4VT
         FNpar0A7DU2oi/gNLh3Ma19E1j8funtkKj8QX4AdAejufIAf7r3ITdqKgM/sa4goKTbh
         A8SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761060193; x=1761664993;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JF1Khuy4nqLiE2y1n9lovRhx5obbKE7xwKO+d5/rlWI=;
        b=YkxnTOUltFifDeox1nJwk9TVEciLp4YnlRTB9Ctg5EficgCwWbc06xbUm40aRQhaj0
         sKg6dIlibhtkTD7KwiGrTsot8FbNdA/i2RtJnZRw9NI76L4y6Pt75RrUy/ltuQoNun4L
         5WJ5HjjBbcV+/6Df1DQKQQTVh5Y0q7VR2cOEn0lWCRnk+aQt8kCBBCc748I/Qee8LT2f
         SzjGAFtWud3yERzyghOs8ONDe+HTqLBD6jnNCMeiTlnUHVt40rhIZa8H/8p5baGb0ney
         0rxZUrWzOdRbtCx9R3w6qGV0GoNR1FyfIG2IetNivXdRZy8fGKDBP7XR2wztwBfgu4m0
         34VA==
X-Gm-Message-State: AOJu0YzYzvghR8gQsO9mJDUd5O99okA4q81qCgTqNX1XJkbq38/yFXNY
	MsNpBYpc9kNE1GcjurPzZFuMHLqehLJUBum/GKmSGdXmtr5lkZzzThNwH8rpOVKM
X-Gm-Gg: ASbGncsx9q6usnNS+HMEWWmAjzZdSfnQ+6eE3ckDwW3bDA9f+ofmsJxyQVHQ/mgIKfX
	hG+8ohYATvt2IaUeH+8m3Ts8VnxP5HoukrdtNiboJ+riQLkcjmDCKA7/mfsnow4rROhHy3gGfTF
	e/hCUKiiABoFt2L5BbT/FVNHqZmduvtYmxg6huK0mCFCWGmt0c/yzafrd/vAgzijSd/D9N9TDhd
	k3v/XdOXVpKeDdFbEHlK9UkLzD09mv15L3OpAE81Hy8Hnx2N0E3NP54Tm7z4R4LC9GPdDUqjMGO
	hZmY1n4249QktjN4JTQ+hi+7aGdFnEdAVWfioXmI0Cx3v00ARgkMytQO70z7lXLTe4TRWJ4k/Yx
	u5cEvtzkItUbbYsHALRuf/g+KPD0rT0eG5kd2SZxn9RGE2AGl9F92iTQxofmAfzzNTAfSyjp5tO
	gNsqOVeuFzD0yOnsttz4JifgS+dXlMpRx2Io6FlQ==
X-Google-Smtp-Source: AGHT+IG8ZMx/3IH1gWXA/kMHWe4Ced895g7GfNQEjLkqqPoqoeKq+HY9fH6rztVBxeqVkVrZOdbVkg==
X-Received: by 2002:a17:906:794e:b0:ad5:d597:561e with SMTP id a640c23a62f3a-b6475708a50mr2149204266b.56.1761060193479;
        Tue, 21 Oct 2025 08:23:13 -0700 (PDT)
Received: from tearch (pc142.ds2-s.us.edu.pl. [155.158.56.142])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e8581780sm1082737866b.31.2025.10.21.08.23.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 08:23:13 -0700 (PDT)
From: muhammed.efecetin.67@gmail.com
X-Google-Original-From: muhammed.efecetin67@gmail.com
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	neil.armstrong@linaro.org,
	lee@kernel.org,
	rafael@kernel.org,
	efectn@protonmail.com,
	daniel.lezcano@linaro.org
Subject: [PATCH v3 5/5] arm64: dts: rockchip: add Khadas MCU and fan control nodes
Date: Tue, 21 Oct 2025 17:22:45 +0200
Message-ID: <611deaaa0e408eb042db7faf215b85370569edeb.1761059314.git.efectn@protonmail.com>
X-Mailer: git-send-email 2.51.1.dirty
In-Reply-To: <cover.1761059314.git.efectn@protonmail.com>
References: <cover.1761059314.git.efectn@protonmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_082315_607972_C96ADE33 
X-CRM114-Status: UNSURE (   9.46  )
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

From: Muhammed Efe Cetin <efectn@protonmail.com>

Add Khadas MCU fan control to Khadas Edge 2 with 4 fan control levels.

Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
---
 .../dts/rockchip/rk3588s-khadas-edge2.dts     | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
index 2c22abaf40a82..ed5168d50e182 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
@@ -271,12 +271,70 @@ hym8563: rtc@51 {
 		clock-output-names = "hym8563";
 		wakeup-source;
 	};
+
+	khadas_mcu: system-controller@18 {
+		compatible = "khadas,mcu-edge2";
+		reg = <0x18>;
+		#cooling-cells = <2>;
+	};
 };
 
 &i2s5_8ch {
 	status = "okay";
 };
 
+&package_thermal {
+	polling-delay = <2000>;
+
+	trips {
+		package_fan0: package-fan0 {
+			temperature = <50000>;
+			hysteresis = <5000>;
+			type = "active";
+		};
+
+		package_fan1: package-fan1 {
+			temperature = <60000>;
+			hysteresis = <5000>;
+			type = "active";
+		};
+
+		package_fan2: package-fan2 {
+			temperature = <65000>;
+			hysteresis = <5000>;
+			type = "active";
+		};
+
+		package_fan3: package-fan3 {
+			temperature = <75000>;
+			hysteresis = <5000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map0 {
+			trip = <&package_fan0>;
+			cooling-device = <&khadas_mcu THERMAL_NO_LIMIT 50>;
+		};
+
+		map1 {
+			trip = <&package_fan1>;
+			cooling-device = <&khadas_mcu 50 72>;
+		};
+
+		map2 {
+			trip = <&package_fan2>;
+			cooling-device = <&khadas_mcu 72 100>;
+		};
+
+		map3 {
+			trip = <&package_fan3>;
+			cooling-device = <&khadas_mcu 100 THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
 &pd_gpu {
 	domain-supply = <&vdd_gpu_s0>;
 };
-- 
2.51.1.dirty


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
