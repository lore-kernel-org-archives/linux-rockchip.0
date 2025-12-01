Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2419D111A8
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Dec 2025 11:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+7Lf4DooGbwsYi2oAiHODiDlDWeIoAlkbjqKoQuQvzk=; b=p+qvCcZ5gOLsaq
	gFOC/2PDyVcEzgyqGO5qwCUitS++4RK61BbHn9o2YEYd5Wwo8DO+p0ngNPkpru09ZdRXUIUHjkHcf
	s3NrLk0M/19cLbj4SGo6dRxfTqHLo1jIF588vHNxR7r+sBC6TVrc4fgL6FlvhRUfsgDSAL7WBLH/0
	3QUeXgQXzqZw5a317ffcXlYxdCghEXADtiM2e6QqwAF9ukjD2ue73kfLL8va1bH/+jJDlBzlduwNm
	vEBLiKyTIsc7PGtcc0NTlh0lHfOUJqpouiNJ2w054m1ogl0sgKZ44QFSxgDSoUsFT5rgI2kJu/gIv
	htSzvZNP6eU/3xGdnXpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ2CH-00000003T14-0YZw;
	Mon, 01 Dec 2025 11:36:01 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ2CD-00000003T05-3ZE1
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Dec 2025 11:35:59 +0000
Received: by mail-wm1-x333.google.com with SMTP id 5b1f17b1804b1-477b91680f8so35669545e9.0
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Dec 2025 03:35:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764588954; x=1765193754; darn=lists.infradead.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=t7olQJkRc4y8ZtsZKoLuuqyEd4qRhINko81csOamj94=;
        b=Eahu5bf9VNw2+wGJ/0FV1hDX1CpKCsfk3Uda7daUt/Ii57n5GSNMNROpfvQ8GZdSfU
         I0GgG2GAcCoaM0EFsVkfAEW+R6R2zdjdtwXX4kkKZ90fcvPoFJw8ULUiw3Yzb5fgvLHV
         pez9Z7LHAHhudmlI+1ElPu98hRhwQRuU1ocSOYoETDGD//qN0OTzx67jm9KPDoremcTX
         1Vi2GyCiWwWygafduCga7j0B1VSsaTeDDn5L/C2st5qxMS6jaFPCIS9Y88wGXUAIhU9o
         jhvbzpMC/zyd0Or5t+/5gB4N5aOKd/LtPvVHvoKz1xTbV5hK+/jmzI3YA1Spfd5a3AXP
         bBTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764588954; x=1765193754;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t7olQJkRc4y8ZtsZKoLuuqyEd4qRhINko81csOamj94=;
        b=aBx1mi1ouzoLrUsrkBbICIvtTmTlc7y8/Jq+zwdhw7w46xHRw76qFjLZ2b6RJeRXJR
         7XDKvkFBIa3Z2Xx6agHXGHZwoR4XUlty/Rp8ZryeD9RtX8t+yvh0yWHVEzRKWDCgE3vh
         Esk+DBQ0JSvnpGRyLtuTw+yul7dhRUk44SBkmIWFb05HlqERQ1aoMq/aL/PmihI7Zbfz
         4UqmGLeictGfGljwqfakpmhwUywJyVJssKzy7Vd4yT/8q6vGDmkqkgi8gnVCTHa9mbiZ
         NegsMkntZio8WofYlE2kwNBrURFPv4TriSDQndTEsxYeWv8EAi5oc32PJynXeEJVL5YX
         0teA==
X-Forwarded-Encrypted: i=1; AJvYcCVT3RP2cT62dFUSHpD7TYgB/jZXVSnJVpFGhS+LjHMLzmPx1SoXvkvHp6Zitvwpei0TGkn/9mm/aNpX7pEX2Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+OXFEXPuZ3A3j129m34fwVKAdjl1sxJ9ubs4KRKzJU28hPavt
	tl+J7J3J+8JqcTJHtnr6jULexNZe+loDQeJVbXhHarSzXewB6x1FyFNC
X-Gm-Gg: ASbGncslAh9M05QHWU7outD/MqwmcE2ohy96Grb+jfjR0G6XoX8cRenFoqkkNPPZajl
	YQs6B8U33EEMSu1xfXg+v1kwsc4AYUNvTVlS5NJJwVQmDk7fPmm8KGtJIZ4CWUk72FrejQhH5iM
	roeQvVmhEvVOJAPyLKEbOrfRxjRXWHm8bVGjRAG84Lma0UHIJAG8rQj/Gr3+46BaCwbQ7VyQ8hG
	pNgoxN/Ec++W5DRuuuKdki64EB4c7G47QW+ZNEAVhXVLCrgeI/clpQnqV1i3tdlf60xj3qlAaU2
	SWllI/Y9VsrtVvmJAGRjOh+3qZAOOt4GRPfJ3+LQ2xV7u3++UVnxkLeAxZZrPQeNGhewu1ERG6m
	ravvau6lKX22QLNAWIAHvXRe5NtVKTjjle2PssvCB4908uz4DRijO0mSglJGjhmsWfWvE5bjfPL
	2sRgpgXvPWafTvPNsLMBk5kSTvYKNJJcrhP9Kw55PC/zuZMrGTkfacCZ8WGapTF+A=
X-Google-Smtp-Source: AGHT+IGEmdMZ0R3tt5yY9NXh82qqcwbZBrGNS8WUEWJTg2IQ0I0mwwWROWpuFC9/qp0jUemfc1nANg==
X-Received: by 2002:a05:600c:1c20:b0:477:9d54:58d7 with SMTP id 5b1f17b1804b1-477c1131d60mr402688025e9.29.1764588953844;
        Mon, 01 Dec 2025 03:35:53 -0800 (PST)
Received: from alchark-surface.localdomain (bba-92-99-175-128.alshamil.net.ae. [92.99.175.128])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47913870b38sm92507995e9.15.2025.12.01.03.35.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 03:35:53 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 01 Dec 2025 15:35:38 +0400
Subject: [PATCH v2] arm64: dts: rockchip: enable UFS controller on
 FriendlyElec NanoPi M5
MIME-Version: 1.0
Message-Id: <20251201-nanopi-m5-ufs-v2-1-ece9c0ee17c4@gmail.com>
X-B4-Tracking: v=1; b=H4sIAIl9LWkC/3XMQQrCMBCF4auUWTuSGYgRV95DughJ2g7YpCS1K
 CV3N3bv8n/wvh1KyBIK3LodctikSIot+NSBm2wcA4pvDaxYE7HBaGNaBGeNr6Gg5oGdVkbRxUD
 7LDkM8j68R996krKm/Dn4jX7rP2kjJFSer560McTuPs5WnmeXZuhrrV9iQV6rqgAAAA==
X-Change-ID: 20251127-nanopi-m5-ufs-52f2c5070167
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2098; i=alchark@gmail.com;
 h=from:subject:message-id; bh=jit6SwpYSZg7MHOqsz1YeBvIKc+w2wXoHi7Wzy+qMew=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWTq1vaybzo1+9jx0qZ1ee+ZUyuvfLn0yekVd+6CyGDre
 9FCHAtudZSyMIhxMciKKbLM/bbEdqoR36xdHh5fYeawMoEMYeDiFICJZBxn+F+o2aN9VcvO/P8J
 8y+OqYce/RHVeqN16r3RDe+Z3ZLN+jMZGX7Mu1lXHbDeUqW48E/atZTIR3KvWJXPLghN7jWIMK7
 JYwcA
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_033557_920001_9D14799A 
X-CRM114-Status: UNSURE (   9.07  )
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

The NanoPi M5 board supports pluggable UFS modules using the UFSHC
inside its Rockchip RK3576 SoC.

Enable the respective devicetree node and add its supply regulators.

Link: https://wiki.friendlyelec.com/wiki/images/9/97/NanoPi_M5_LP5_2411_SCH.pdf
Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
Changes in v2:
- Describe UFS supply regulators
- Add link to schematic
- Link to v1: https://lore.kernel.org/r/20251127-nanopi-m5-ufs-v1-1-0d28d157712c@gmail.com
---
 arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts | 27 +++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
index cce34c541f7c..4f2930cff70a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
@@ -110,6 +110,24 @@ vcc12v_dcin: regulator-vcc12v-dcin {
 		regulator-name = "vcc12v_dcin";
 	};
 
+	vcc1v2_ufs_vccq: regulator-vcc1v2-ufs-vccq {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+		regulator-name = "vcc1v2_ufs_vccq";
+		vin-supply = <&vcc5v0_sys_s5>;
+		en-supply = <&vcc_3v3_s3>;
+	};
+
+	vcc1v8_ufs_vccq2: regulator-vcc1v8-ufs-vccq2 {
+		compatible = "regulator-fixed";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		regulator-name = "vcc1v8_ufs_vccq2";
+		vin-supply = <&vcc_1v8_s3>;
+		en-supply = <&vdda_1v2_s0>;
+	};
+
 	vcc3v3_m2_keym: regulator-vcc3v3-m2-keym {
 		compatible = "regulator-fixed";
 		enable-active-high;
@@ -906,6 +924,15 @@ &uart0 {
 	status = "okay";
 };
 
+&ufshc {
+	vcc-supply = <&vcc_3v3_s3>;
+	vccq-supply = <&vcc1v2_ufs_vccq>;
+	vccq2-supply = <&vcc1v8_ufs_vccq2>;
+	vdd-hba-supply = <&vdda_1v2_s0>;
+
+	status = "okay";
+};
+
 &usbdp_phy {
 	status = "okay";
 };

---
base-commit: 7d31f578f3230f3b7b33b0930b08f9afd8429817
change-id: 20251127-nanopi-m5-ufs-52f2c5070167

Best regards,
-- 
Alexey Charkov <alchark@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
