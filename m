Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC963CCD195
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Oct 2025 07:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8JFx/mGBysa4RakFftS6xzAnRWg7q/PMYvObhsfK290=; b=PxYC8l18674203
	aMnh7HeIrQl/MNHYAdBu/ZySTF0gd4JaYDquIBgOE9qqFKlfn7ReEW2TCSQuljanqKe26T3gVnTyu
	ndUn5gsG1eEtMtLg3D472QpPsDw4PeJnA5NljADz1z3WJicaAW1EpFcj6goFShzPxrzOlajaIyySw
	qnTS/ke1FlP5L8esv53axnd8feGtHmXPr78/1L20GxnriBVBeLXoTihqeWniQPbAjo/nGyDo5VN9S
	bnKzZdd9TMSCCC//uS+Jw0zbNbK/x4Uiuy9eSDQ+YMFWj4Xb1PyUII0iRkne7AY7snK5dYYL4DaCx
	Vwjxp1KbDliX0Pxc0Rcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9f4c-00000006zEr-2bbv;
	Fri, 17 Oct 2025 07:40:26 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9f4a-00000006zD7-0rlF
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Oct 2025 07:40:25 +0000
Received: by mail-pj1-x1029.google.com with SMTP id 98e67ed59e1d1-33bb090aa78so1388029a91.3
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Oct 2025 00:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760686822; x=1761291622; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8bx5Txy8og/O6i1T8MIDUUZY/+F2oP8HDFFEoUUoKHk=;
        b=jD/hXOpSgCdLe8WCopexclzaDiLWgTHHGQYWR/pn5a3k8e/09Fu2ngNpx3e2/Zf/JE
         b/o/+W4oRK8XD+RIIz9i2VEd0zhf/Gy0T+HpNpy5In5BbD/eIUD9yvxl4LDjvDerCPIN
         cW59+rNQt0vuGr0d7+H0b0yMDvuZm9BhqK8+ZN2vEALVTcov7aCK0kZ7998NxyuDe6OD
         xF9CF4mMOecZ9INAL2Qqc+Qmdvm1TBa/Az6poLPdX50Y8WSUyUKmW/QiLJcHgkVo6iMW
         PwNdqWOK/XtuOKdTdCBVcoycrSXTDrc3Etcqj5zWBSPEmCnY/TRXjUSfHF9Um4Ou0gWc
         kmoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760686822; x=1761291622;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8bx5Txy8og/O6i1T8MIDUUZY/+F2oP8HDFFEoUUoKHk=;
        b=XFR9bejGhOelR0sXWckgCwNwF0zcmga60vYNcedFpndpdda8I0UdkW31LZhzpbp01w
         FzHHTrnjE4avNicJw8RhEEu/HsHmB3Q8ERZOUCs10nw2k1R9UseYietJsw3MWE5Eh2j8
         pHoGb4BnP5ak2tg10UdaudAvof0M3IfGgsUUWYY6HmicpTqPnC5qrF3LpxNCL7hJ7wpc
         6LRZeSlL6Ie3w2PKyTC9jVAFznVuQnzdki83GPbgHspQ5v6Au6oHCdOvARUfGRrPy5Pl
         3+j4CXc0Ssbtq+nzEc+TGITe9JSAg8Dl8lZaIcD6Fq5u64mR1Ai+VV9vbaGXTvcb1Pi9
         FnIw==
X-Forwarded-Encrypted: i=1; AJvYcCXLV7R7MZ9bNwdpBm5xrTrxjhq1tJDGlnGJiKUL5IfHRumA7z5rnTzYO0UMxprfVaJ1w1kEUNSmp3BcYR2QVw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz8+KiagH4XTObzrWFUvZvwhskT8SWzpUxzFMBdHiFyDMeef+Ou
	VXhe5/iweFZ79QhdwLepg1d8e2oPX2/vNw6p4nLJIq2yQJ+pyQbXL6mQ
X-Gm-Gg: ASbGncvCbuesijQOYn+5tjOCZWTId8gdDrf7uEBTWrxSNkyPHaxkDjJr6PiIbRMuErp
	4S3B4UakB7pa3XSn/GdbyisjHquEHNHktlriVHztPLTceeIz4WmpYYLqGocan8L7U/R3TH7XdNV
	7+HIQ54ridpEKs+xHVRBq1LRUm1Emcr+SHuF3ol/KBHL/4cCEiFGHDakQ/b9/r2rvdTASDgbYoU
	39Fdxz+y60jETbz0XoFb64CZP0200vsQ9DgyaX35+jqIai2I/l2hvfcHJv+kghAz21NJmrbNlGx
	H6PLAAFTb3BzfrL50v7XR/bAeHeUp438Ox+JbgQngY6VTdnb19VLiqfK5z0areuOon/riy8+o45
	EpfpuwSzzi6XymmXi5elahVwng+SXozfyXUSK/aKc6+xkZJX29qdokMy2qydn8P0=
X-Google-Smtp-Source: AGHT+IE5Wq2LSw/8u7zxDPAEAndLC3TWgGO8LMJfU4cDrcRHWlGtfWo/mBTgBjACKeby5RgogHrlvg==
X-Received: by 2002:a17:90b:38c7:b0:339:d1f0:c735 with SMTP id 98e67ed59e1d1-33bcf91e032mr3105311a91.28.1760686821347;
        Fri, 17 Oct 2025 00:40:21 -0700 (PDT)
Received: from CNSZTL-DEB.lan ([2401:b60:5:2::a])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33bd7b3173asm1879479a91.12.2025.10.17.00.40.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 00:40:20 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Grzegorz Sterniczuk <grzegorz@sternicz.uk>,
	Tianling Shen <cnsztl@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Jonas Karlman <jonas@kwiboo.se>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: fix eMMC corruption on NanoPC-T6 with A3A444 chips
Date: Fri, 17 Oct 2025 15:39:54 +0800
Message-ID: <20251017073954.130710-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_004024_264499_C6030DDF 
X-CRM114-Status: UNSURE (   9.56  )
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

From: Grzegorz Sterniczuk <grzegorz@sternicz.uk>

Some NanoPC-T6 boards with A3A444 eMMC chips experience I/O errors and
corruption when using HS400 mode. Downgrade to HS200 mode to ensure
stable operation.

Signed-off-by: Grzegorz Sterniczuk <grzegorz@sternicz.uk>
Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
index fafeabe9adf9..5f63f38f7326 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
@@ -717,8 +717,7 @@ &sdhci {
 	no-sd;
 	non-removable;
 	max-frequency = <200000000>;
-	mmc-hs400-1_8v;
-	mmc-hs400-enhanced-strobe;
+	mmc-hs200-1_8v;
 	status = "okay";
 };
 
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
