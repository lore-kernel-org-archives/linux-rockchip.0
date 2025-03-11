Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4291FC282EC
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Mar 2025 14:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QkQeN3gE7C6OvH63NlSVQ1z5cKqZUaL5SpetUtTqs3M=; b=U65tqgiz6EgGBE
	7whIcbhB0czDai4KVXRAMPFwabrBYIe/c1Kp98IsaSWVAIP5Mij3OaAI0FHrOyPs67Z3mqgdtEsa6
	DSbmp3+fQgoquaWatF9gzQpFFtejEnDLMcF+sDjb6QsxOWvxm2Cl4QY6u7vKm1BE6V8MAJM+PMxOF
	XhCZQPNTB0SZmWLcwBsJrS54hWvkC3X0EiIgfc4DLEDgLNOUeEHwBEHw51y55h08PxWSK3+HGkD7y
	IxPnvkpA4+I2zb4t4K96hUndFoTiY/J2xzkWdWdTznA3Hn9xsO4vsTS86Waza27XQI95gUBsfLsoI
	VdALYA5lPwV669QB2C1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1ts0ay-00000005yc0-2Lzd;
	Tue, 11 Mar 2025 14:28:36 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1ts0aw-00000005ybT-2vqf;
	Tue, 11 Mar 2025 14:28:35 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-22400301e40so12931785ad.1;
        Tue, 11 Mar 2025 07:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741703313; x=1742308113; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4BU+SZ02d2XzQItB7vSu0vr+Y6teTSqGnj3Dul5zaOg=;
        b=MOFnJW2g3JaUVNS1+9C6xcpzQgpouujX2BnNAy17weftr6bxU+0PgF1z/hfDqzZZfT
         94NYeSb5WFz9lSI7Wes9wPpJ2cv97/wLRwe1Zz9FvTdO28/ArkyGHqLCxwEQ90hpSPRL
         zv3PGXcUoE/1qR+xVuCaR0xvZLhWVyUK8Ihhs5gfsFBLz4gylaUGG67P6CQRnWFzUWN4
         iSMZHmvDAYFE8+qTxL2LoUwj4PbrMezHxRXXKQuXMGK5ll6B4nT9nS+EkTtvu6QzKRpD
         gbb27IIqjcud0YjVPLD8mM6Bp7obAe9rGtUJkoNXnqtSIXmBmM9LbKSqJhyLAx2XT3BZ
         hgtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741703313; x=1742308113;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4BU+SZ02d2XzQItB7vSu0vr+Y6teTSqGnj3Dul5zaOg=;
        b=V45UoXK7h02EN0E2JVe0kTcKUcWE63HO+NnZ6mbYW8rC9RLpiVECOOxO7U04s07hAH
         A97LhrI0l79UFCAxhxKO1hrfP8/wI/AnJ4R7chFa7uvKOOhlhfOkNru8iF8dIzduPoTD
         rAmOMTVIxmmrBoau9EFp0+FV6aHa31V4bewYxHAkuL/VJZkAYjv5idj3MmkgnUBIECvN
         cifosAzX6JOlsYHx850JplFu32oV7XEqe0ngKqRBKKPJSbjxG1ownwBKsPWI6G4t8psv
         +EgyT4hZps9nQN1ttnEqKUganQjtptw5fBqdOMgsQsLO9XFn5iRwkjOs2qwbIWZ+gswn
         WXJA==
X-Forwarded-Encrypted: i=1; AJvYcCXjwby6teWA8zfNqnBIVc91ckHil0su4zpwxpGloS3q08O9BXtcPuJo54htMYXmQmv19pItSYcUE+3sXox76mqy@lists.infradead.org
X-Gm-Message-State: AOJu0Ywu8nha+Cly0pbXeWoehCHj//WTywLbyXPQv7mDPXHi7UW0uUS1
	E8iakLF9z0YoK6fhZYj1lOJaOfRP9NmscnxCYLTmUwcGn9/GRXxs/uB2CHoZ
X-Gm-Gg: ASbGnct4mcJwd7Z7tI5ouiCL94COeQkGmSIYyZLJnq8jvPOlyD21zUvh9fhSmmZ4ary
	VODdJu0KOpgNwX7rR8rGtal7jLHkvl5xAy4F9WDeerHtGjh0e+oEOhOl8ohfSDgu9EihHOcfW+j
	fmYMuSZcFZo/sP6eYgtlai0PNIUH9JaT5iRTQsDpaAkjEQ3/ZyXRd9GwfwZqrMo9s+ZZlr28ZfD
	x/+4k66GiGFHW9bAhS971RyheBPzWEJeLOtN6v9fSKhgvCCPTtzJp7jjrLegNBx9+pot0ZXXlXT
	KIzyXjc7ptNZjD0vWu0nVjZOZQcrl9CJKQA258O+xEE7yPcNDQ==
X-Google-Smtp-Source: AGHT+IHYBCivxsu2aj6qSakK9DONJVcdwxBohBs2hi/qC896QdVSsypN75o/kpHRKEb2BaeV0jQP3w==
X-Received: by 2002:a17:902:e802:b0:215:8d29:af0b with SMTP id d9443c01a7336-225932f6a0cmr20288795ad.14.1741703313413;
        Tue, 11 Mar 2025 07:28:33 -0700 (PDT)
Received: from rock-5b.. ([221.220.131.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22410a7f773sm98493875ad.117.2025.03.11.07.28.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Mar 2025 07:28:32 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: Jianfeng Liu <liujianfeng1994@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Stephen Rothwell <sfr@canb.auug.org.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Add AP6275P wireless support to ArmSoM Sige7
Date: Tue, 11 Mar 2025 22:27:50 +0800
Message-ID: <20250311142825.2727171-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_072834_734677_2008944B 
X-CRM114-Status: GOOD (  11.32  )
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

ArmSoM Sige7 uses the PCI-e AP6275P Wi-Fi 6 module. The pcie@0 node can
be used as Bridge1, so the wifi@0 node is used as a device under the
Bridege 1 similar with Khadas Edge 2.

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
---

 .../boot/dts/rockchip/rk3588-armsom-sige7.dts    | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts b/arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts
index 6a0fffaa26ee..face42bb0d7d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts
@@ -300,6 +300,22 @@ &pcie2x1l0 {
 &pcie2x1l1 {
 	reset-gpios = <&gpio3 RK_PD4 GPIO_ACTIVE_HIGH>;
 	status = "okay";
+
+	pcie@0,0 {
+		reg = <0x300000 0 0 0 0>;
+		#address-cells = <3>;
+		#size-cells = <2>;
+		ranges;
+		device_type = "pci";
+		bus-range = <0x30 0x3f>;
+
+		wifi: wifi@0,0 {
+			compatible = "pci14e4,449d";
+			reg = <0x310000 0 0 0 0>;
+			clocks = <&hym8563>;
+			clock-names = "lpo";
+		};
+	};
 };
 
 /* phy0 - left ethernet port */
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
