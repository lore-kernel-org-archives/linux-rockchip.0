Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7216CCFA05
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 18:27:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y4H7bkxSMTF2TWT9ukRIjFSpX18qfcBWfjE26pfd574=; b=Y41Fr/r6iUl1ZE
	l7Lvb2YVE9cOe/hJX4GXolaX+nWn0X0803zPm788j1aoyhIRVDyfD+0sRmhWDGC1OZsRAQRPLmmSG
	en2fCtj0lQBGeMEfOIIcL9Y1S0qDP8HYJncCxt0Tn1eXz1EuLzjroh4vJzVb73lKQXAThO+oF+K9K
	J0ONrUqQuNrIEMNBUxyixGiK4yU90A+u2/WQd5i2A+W4G5q3jqpzrvqx6/AHG/JfzAnBSaWIM5bLw
	ouNz+xADM68DUPGhhERITXSTlVMFJ7G0ND6PW18UBgHYn9HCK87b0zY/jdt/F6EWGIfDy/4ZeMoST
	2BSGH70X4Z8oR1ij+cFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH4hP-0000000G62W-0g1I;
	Thu, 06 Nov 2025 18:27:07 +0000
Received: from mail-ot1-x333.google.com ([2607:f8b0:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vH4hM-0000000G62A-3HTm
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Nov 2025 18:27:05 +0000
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-7c6d13986f8so1036220a34.0
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Nov 2025 10:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762453623; x=1763058423; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=79lMv1S4sZVnamUdtp6ADko+gKgG2fiOZl977EobktU=;
        b=CdotW85V1mcIIN1PmrHD7MpCV7epY50LmGO3ELBE8vZKTFpRaZGtpFL8pbLOo89dt4
         Mxgj0vz3U0ju+zWlL3hXGsv9Rt+NWf0wlJZlmTbjFeNVG+dZ9Y7uESzOATI8gNGTiv7b
         XpeHPg8Fmt96f4WmtGKYVHiTM5kV8E8VIsBaAS9HrCw8LXaQaO9Opz2kyHyXSk8NmokR
         ldmdUD2doWxnPLufooGbTSuPc83aIiXluJCRocV9lB0EB+3S6af4QUwmlB38I0xkARtq
         2QEx9uso/se1iUFoPhV6Xm67I2Ff7K4+DW1lZ5tntqhXHUE6XeMoW9k+I/xs/rMIcJ4A
         mVKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762453623; x=1763058423;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=79lMv1S4sZVnamUdtp6ADko+gKgG2fiOZl977EobktU=;
        b=LZ/KhWGAhCWAWTMcCuGbOXRgZY/GmVn5ZhrTkqOGPJGr5S2TUhKxCYKHfa5YJkRIbH
         UyID7Mik3z7q2MDVOb5awHG1NFpyw8EBI4sYwUI+Vaf6W0Q7Ra4RwbX1UPm10ImATMSs
         6rGpwVylNNMnHGMlx2iI7NQW84XnUWwHabG59vyEEAlKbwGO10QZQm43bFVldGR/yfJ9
         TCNj0Psx93XRNqauhY4abpNmTqPnF7jWxjj5vhafJuY4qaMDarQqTRJ18B00v7BBGhYk
         GD4rCTbd7Aaisbin6KSn+vIXTkmf1l8iB4Kf/m+psiaZWgTARogahh1ZH5Fgbzv5oWqR
         7xcA==
X-Gm-Message-State: AOJu0YwwKjX/Mw6LS4rKYMii+0rN9WkEYHp0VOt6ImrofxyCpUn4L6/S
	IKpv/bziS1ZNj6akl3+qI4Dwzf0wGDB1wud2BKXBqOT1yM1S4sY4Lg3yZEv7sw==
X-Gm-Gg: ASbGncsul9I5uwD81LP8hxhbS1kUtYjZ46gTRWyNvL/LX7Rqed2cXM+k7wh6beOBZLg
	1JmaMTA+OgaKLlvXeWVSki4nnkL0mzIVIYBcxrVBfdkgJn8DRhrCFg+bIvYKY+GWinGVhgNzg6u
	OoxnA4nvlOhYhA4uZu8/hzrbwzsdLPRSinTW/80sZVX0TZcXdGuBN+oi3hNGT1qwtDTgrtxnUHc
	/oEid7fu2Zrvmv3HOmemuADi/++flLSYr34K0kMIo5AtkB9TqPbIfQJFQzML2rc9RmVAS9lACSF
	rrR1RWa8f+ghkuiHn6mglglRWpsxGbN8tcWobADTCP0tJ1ID/auD9aqvY8CvTwkJifGjmhWbArp
	IXDq4hgqZkrP6jAzLZXZp245A5m7q8nC3hmA9JWdH8zu4aPF5oy+mlBZlRehMqgy5XBPUvbh+uJ
	MF1v1rFdI4TDx06hZrIYM=
X-Google-Smtp-Source: AGHT+IFEr+p9Bie/+QNf8J1PkpnQpy41SStNdukAJZkuo0Gbd8U5ncUi91MA0dqv6sAvfIgC2NwmCQ==
X-Received: by 2002:a05:6830:719e:b0:7c6:d062:aa95 with SMTP id 46e09a7af769-7c6f0036b9emr513418a34.16.1762453623552;
        Thu, 06 Nov 2025 10:27:03 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:41f9:c9d3:db30:c36a])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c6f0f5f635sm134559a34.14.2025.11.06.10.27.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 10:27:03 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	jbx6244@gmail.com,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: enable NPU on Gameforce Ace
Date: Thu,  6 Nov 2025 12:24:36 -0600
Message-ID: <20251106182436.771805-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251106_102704_827719_12426ED5 
X-CRM114-Status: UNSURE (   8.80  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Enable the NPU on the Gameforce Ace.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
index b98e1a3369dc..e8ad525ba3f9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
@@ -842,6 +842,10 @@ &pd_gpu {
 	domain-supply = <&vdd_gpu_s0>;
 };
 
+&pd_npu {
+	domain-supply = <&vdd_npu_s0>;
+};
+
 &pinctrl {
 	audio-amplifier {
 		headphone_amplifier_en: headphone-amplifier-en {
@@ -1032,6 +1036,36 @@ &pwm13 {
 	status = "okay";
 };
 
+&rknn_core_0 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_core_1 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_core_2 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_mmu_0 {
+	status = "okay";
+};
+
+&rknn_mmu_1 {
+	status = "okay";
+};
+
+&rknn_mmu_2 {
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&vcc_1v8_s0>;
 	status = "okay";
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
