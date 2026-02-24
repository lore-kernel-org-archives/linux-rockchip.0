Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AA73F3C9BE
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Feb 2026 16:33:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZeQuRcmP90X4omELK5Bpy2Ln3hDmLCnvWGM+dilNmc=; b=3BfvJ4Y54nqZSa
	raRqPwB8pCtmXi4/k9J3IvF9OiNBXWQGM6AgxJsD/MLrPa0CrgkV80D6tdMu+5O/RH0OiJSVndOC5
	CPwAoU8KowGVbG4UOXaAN1kR1GUNTBhoJLVLYfyvrceYw9n4X6LFvNrnlPyd4nrW17zGNHhiMa/8k
	CHGjIShAMG31WfNQ9asMIk3IU7uUo0vE8KuNg/tqgRfHQrZfKajRk1396ivIDbcbGaKeSXlmpnozK
	fTtupjAS52LZ31N3Yrjwo3AiCmeJaMzo5Bz/6/0G60Na1sd08UKn/A/N1fA3JHQeEFfsCF4t8Y9l0
	2rbKoPiwifAt9ihOyFag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuvLu-00000002PPN-0ViI;
	Tue, 24 Feb 2026 16:33:38 +0000
Received: from mail-ot1-x332.google.com ([2607:f8b0:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuvLs-00000002POB-0WsS
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Feb 2026 16:33:37 +0000
Received: by mail-ot1-x332.google.com with SMTP id 46e09a7af769-7d4c85307b2so3640418a34.0
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Feb 2026 08:33:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771950815; x=1772555615; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5QZMGPSayDx6CXME04ten6dFk9tjtVuD/jHId3mdxWg=;
        b=N8ukysnXuPDvathltJQNkQZuTykNFT8kpT2I2/j17b8WvHQaCFbaHTXgRyFfPYSJWb
         5HlpG3HFenfdyhq235tZ1ftqpcd7VdETarXv/PFvxUD7XXCrl48X/cwMVhvPI/rA9L4r
         JjLm+Kn6dYCEOM/MovlHEyME0B6MxSUn9iFb87SOPd6bMFJiWiv2snjMGOFqHITpwFNO
         WD1Cs+FYVuwKxUZVTho7J4JL40HZrQd54cAvK/u8e2aaAQevu5qIGMOuVRSm8vcgh+7A
         TLpXl1Abjv854bbZKDJiJMf5+hS1s3WVGVAnkPOdKm4xluZhPfycnDQpFdLgnl6cqmjM
         sr4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771950815; x=1772555615;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5QZMGPSayDx6CXME04ten6dFk9tjtVuD/jHId3mdxWg=;
        b=XOC6WCcMcSVQSdTYLrNUqXxG0WApMDmPCLEnx9zVnuGefU4UYm14HVvNaLrWYGjnm6
         ha+pD+G21z38azu4ugFUc1wYBby5yaVbASP7ZLan6jZeL+NboXPxYBrM2Q1iy+spGC5e
         2/RAX4wCIHa5Y/0BoU1CnGmNd9YFqyNDKqCb7EZYRaUG+cNdviYEsG8jApSGqHORvxun
         NvPDCLPcSnysf91Jinh6bWATjGvzCnP7iLsKdDmLd+hs4ZrvKKtQzjtpxajkKoWGjWXY
         uruDXwe4D7ZDM8WWxfw5k1RLEkVEDXI7RphuUINS6dlVZU9dzghO86zaHIhNW1NYzvvb
         sJAw==
X-Forwarded-Encrypted: i=1; AJvYcCWrcAqzTPRsu3ecCcecbPMxvEDmINzM4S5WZLpZeQ1HpTV6D+3yuSUHgTeF2CC+2qVROAs/Qjqz0UDiK4ATJA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzSORF5GQzgUFTtW0uFJVeZjIVQapZRs6mZkfoGNJ0f5M7/fVUO
	BU9ODEpFapjcM/qbBlGAlQTYz62iqYRPjAYeW40cX/1Lhi6wKpw9DrdIgCJclA==
X-Gm-Gg: AZuq6aJLyuzq2e8KQg7rJ5oNiPtn2J2lsDQn96cZRzmCKIYVF/ArlLVHY0VDgFpRQU+
	0HVPKkEhWrCumyaYx5wClJWJS3F0rOWQf5TDnrV+4iLI0nnsQwysfgrTP21Hb4aZYItNUlgJE5m
	PJnNuqz94RxK6uL2JDnnEw5eF1WNv8c82dcSI1Rw7FE6RzekrDH7ztCXjqaLNkuU8b355MocZUu
	HvvhtYuA1Xmu96IKiOFT2P8Q+Fco+oDj/kH/dqd18y9/ASVHeLwS2wbftQ1CxmZNJnWWFmHoBFb
	xwlJ2WAQdhGEcAuhu77lZeABJ1Mcgc55Hn2n4KymDOkurwuknKZvoWeimjqeoVN6mgr7895c17C
	kDs2F/xnDburlvYEV6PSCuubSL4WX68kug+4pA/7sHLungJ6qmdEv/JyQlIaBpN+4tA57XCY9/V
	W6AiUT9vbaMWmU2Kq9l1zc
X-Received: by 2002:a05:6830:6603:b0:7d1:91c9:9e5a with SMTP id 46e09a7af769-7d52beab9camr7144263a34.8.1771950814470;
        Tue, 24 Feb 2026 08:33:34 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d52d0725c4sm11060130a34.25.2026.02.24.08.33.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 08:33:33 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/3] arm64: dts: rockchip: Add icm42607p IMU for RG-DS
Date: Tue, 24 Feb 2026 10:31:05 -0600
Message-ID: <20260224163109.370930-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260224163109.370930-1-macroalpha82@gmail.com>
References: <20260224163109.370930-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_083336_187618_0636A04D 
X-CRM114-Status: GOOD (  11.10  )
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

Add the Invensense ICM42607P IMU for the Anbernic RG-DS. Mount-matrix
was tested with iio-sensor-proxy and reports correct orientation.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3568-anbernic-rg-ds.dts    | 20 ++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts b/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
index 8d906ab02c5f..dca270abc475 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-anbernic-rg-ds.dts
@@ -871,7 +871,18 @@ aw87391_pa_r: audio-codec@5b {
 		sound-name-prefix = "Right Amp";
 	};
 
-	/* invensense,icm42607p at 0x68 */
+	icm42607p: imu@68 {
+		compatible = "invensense,icm42607p";
+		reg = <0x68>;
+		interrupt-names = "INT1";
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PD6 IRQ_TYPE_EDGE_FALLING>;
+		mount-matrix = "-1", "0", "0",
+				"0", "1", "0",
+				"0", "0", "-1";
+		pinctrl-0 = <&accel_irq>;
+		pinctrl-names = "default";
+	};
 };
 
 &i2c3 {
@@ -932,6 +943,13 @@ &i2s1_8ch {
 };
 
 &pinctrl {
+	accel {
+		accel_irq: accel-irq {
+			rockchip,pins =
+				<0 RK_PD6 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
 	gpio-keys {
 		vol_keys_l: vol-keys_l {
 			rockchip,pins =
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
