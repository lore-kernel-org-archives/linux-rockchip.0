Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13481C3ABDD
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 May 2025 10:46:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D2lOBo4CSi2KBXPlU/bF0LiHWa0YGJsiL2xEP1rU+og=; b=1BEYNysaGPqs9i
	Ixa9uO3TziFtYJOr1GDffnz3iMm06MuVqMKixk1GmpND77jgG/bF/UveZnUBA1/gXD1QYGF6oyl6p
	+m5d9QlyXTw0ZsOOnntKgcZviVZ2eEOXU+l0lg6dfdcAIpG+xze8uIRKKAO/QZqEoMIDPM0xqbGdi
	ZWyfx9XS0y+Gux0mMMGlI4sl1b3JWNkc7CWBDWUFNNM5J8YlK0K9TBcX5GC/yrTNtvYPfDDSElV9Q
	Gh6UqDrpjD+P3OrhSWUHf8e4MP9P2uy8zfLrYZgNCRjc+GqfDILct9BMKAHOr5dLfU5kLnMrIcEnL
	HPuRA2nDbZa7bdeswe1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHKUG-0000000CQz3-0doE;
	Tue, 20 May 2025 10:46:20 +0000
Received: from mail-wm1-f47.google.com ([209.85.128.47])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHKCH-0000000CLQf-1WV8;
	Tue, 20 May 2025 10:27:46 +0000
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43ede096d73so38656985e9.2;
        Tue, 20 May 2025 03:27:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747736864; x=1748341664;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=anhtEfC+aYWJeJvUly60jdWH8rm+sVcW8pcF9vb2eMk=;
        b=w9X5Mk6d4QY9XVh9V/egh2FbCB4wqsMWLMmYsxKBdp37gFUrgH9dyjZN5nxGOzI7XA
         4Xx2f28Rcpanm6nhD+ZpH8IrzlkkvUlo+ojiRWNYS7qHtUjL4dC4FssyUBOkoy/zJBIh
         5Yumkx4fPnPXa2DXHfXULWX8LWRmE85dzOSdxcliwlqbgJqH3juxtdQU7u9l8nwjR/8t
         8wQ/6CfG+CJmAmW3Oo95RBq2seq21sivbtWtPSdL0qYEgTffBeBTO0P/ckUWcrgUQDz0
         LMdCYbjeP+ocw+Ig2YIt/NsS3tDEaQQhTVKc8oti7PVTz+nHyQ7PDBwgb1j0j6lsvX0V
         gBCw==
X-Forwarded-Encrypted: i=1; AJvYcCUDJPqN7gD6uuFDb7rumFr6rF8WQmuINqPE64iVlynycYNV4oIg5nqlapCfo3GUQ6EfYaJ+w/r8yRjhy4VsLxKY@lists.infradead.org, AJvYcCWOG1ytPfzHIjNpy6xRseYucvmt7znyiyZ3UWCt4gspOwP+ewdulrxFcpmWJFkoCu4wxQbV/UAwezHBegRHgsU=@lists.infradead.org
X-Gm-Message-State: AOJu0YwfgslGauUsiK/bVsiAdU26TMewzlq42MmuLq2SUPItdeSwRXHI
	azJVjlA41y4J0uGEJOxvXVMYP0l+Kr3WUsrTeR9GGcrCp/y5MpLqC0F1
X-Gm-Gg: ASbGncueYYalljLNADSjVzpQx2SW7P7lzgAXGITP1MCml6s+QfJEcF4LaqNOtxcux3P
	AsWI+/wshSRrztR8Fl/lN6OKrQ/YtrUlxUj70IguTYZJ+SMr0e2DZvramwA5KKu2UTILpypTrOd
	8yHew46iiwd9339qgP2HyChw6fts1JGjLokoxtwtsH9VUv0p/BnTfh09MGgiAvmTgKhS6ywbhD/
	UeAD63hug8onaTcjWwBc21Q9k/jgay7gYTFHpiqy0cogywxf9xyj/cBCa7fqR3wZxHHkOpJx3dY
	Xwdge596OMC7waZPbuJ4VKb1H+eps2aXXVe6nAjWFmTtE3G7gNjGkK7y/xqG0x1ZOux5DBn/ur1
	66A4w4WsZsQ==
X-Google-Smtp-Source: AGHT+IGUarcsN0dGkfly/Rx4SdIOJyJyOrzjU/pgpXaQr2qIzh21VVgC/kOUDjf60ygnRBw0CXG2wQ==
X-Received: by 2002:a05:600c:154a:b0:442:eaa9:31c9 with SMTP id 5b1f17b1804b1-442fd66dd78mr108589395e9.22.1747736863892;
        Tue, 20 May 2025 03:27:43 -0700 (PDT)
Received: from [10.42.0.1] (cst-prg-46-162.cust.vodafone.cz. [46.135.46.162])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f73d3defsm24680025e9.18.2025.05.20.03.27.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 May 2025 03:27:43 -0700 (PDT)
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Tue, 20 May 2025 12:27:03 +0200
Subject: [PATCH v5 10/10] arm64: dts: rockchip: enable NPU on ROCK 5B
MIME-Version: 1.0
Message-Id: <20250520-6-10-rocket-v5-10-18c9ca0fcb3c@tomeuvizoso.net>
References: <20250520-6-10-rocket-v5-0-18c9ca0fcb3c@tomeuvizoso.net>
In-Reply-To: <20250520-6-10-rocket-v5-0-18c9ca0fcb3c@tomeuvizoso.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Sumit Semwal <sumit.semwal@linaro.org>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Jeff Hugo <jeff.hugo@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, 
 linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org, 
 Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_032745_409442_71969BE5 
X-CRM114-Status: GOOD (  11.67  )
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

From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>

The NPU on the ROCK5B uses the same regulator for both the sram-supply
and the npu's supply. Add this regulator, and enable all the NPU bits.
Also add the regulator as a domain-supply to the pd_npu power domain.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 56 +++++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index d22068475c5dc6cb885f878f3f527a66edf1ba70..49500f7cbcb14af4919a6c1997e9e53a01d84973 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -316,6 +316,28 @@ regulator-state-mem {
 	};
 };
 
+&i2c1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c1m2_xfer>;
+	status = "okay";
+
+	vdd_npu_s0: regulator@42 {
+		compatible = "rockchip,rk8602";
+		reg = <0x42>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_npu_s0";
+		regulator-boot-on;
+		regulator-min-microvolt = <550000>;
+		regulator-max-microvolt = <950000>;
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc5v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+};
+
 &i2c6 {
 	status = "okay";
 
@@ -440,6 +462,10 @@ &pd_gpu {
 	domain-supply = <&vdd_gpu_s0>;
 };
 
+&pd_npu {
+	domain-supply = <&vdd_npu_s0>;
+};
+
 &pinctrl {
 	hdmirx {
 		hdmirx_hpd: hdmirx-5v-detection {
@@ -500,6 +526,36 @@ &pwm1 {
 	status = "okay";
 };
 
+&rknn_core_top {
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
+&rknn_mmu_top {
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
 	vref-supply = <&avcc_1v8_s0>;
 	status = "okay";

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
