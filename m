Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B605C5AE59
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jun 2025 23:12:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/6GUAjA5+vB69TUjpAMNAUlnnOzmQrWs/Ns/DUuSJdM=; b=nqsRiPP9G/++3s
	tM+o8Kaz1uhIAZgdMMeH9ovws7LB4GpfCpH3acs3S7VJF2yUJpzov2DZwx0zrrrY3fakeyUM3b0Vt
	xXKpony6XVrUJto1dF2IY1O2Q3w8Wx0ujjOTDa1121QWcPuUtffIOUR63eC4ziS1GMoYpD3guOkms
	8H2ozk424YwiN/ZmjRZnq+/vVZNJySERjAStmEb593e90EPM59v5GL2bKSBadGAKEbVjWokgnjvLO
	sO0DCqWm3yQdvwymvvmlFYaXC2yB6h7YsRLNjsN9edP1I47Tnc9pFn7okP4NL91WmCed0nDBcacIZ
	8yjUORoJKgzTf1S1pkuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNJl9-0000000Gm2U-1NGe;
	Thu, 05 Jun 2025 23:12:31 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNJl7-0000000Gm1I-01yt
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Jun 2025 23:12:30 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-235f9e87f78so10302955ad.2
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Jun 2025 16:12:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749165147; x=1749769947; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gH9iE8xUuhmsM++nBGZb1sp3kMQiuQ+pxJGMgIYtR6c=;
        b=k0BLC2YFipM2U9aRMR6Ci4gg3bVMVrt5FOjUMomqcVg+aC29N1Y2nr7uTyuXEELSA7
         kVwttthbAX00a6qipoj+NkqKSa5v6yopZNFrvWr9nRQtNTugLyFy9UF7HD21mH5osWKp
         0oTq3K+89uaBdBe7VQMeDiK0RzcoSkD7pAHGD56xdTxZ3cy7twnFqeBn9qOOH5fGNCpE
         LTetCd+Dtzdpz4zPRZ3QBRGGb/Cs5KwLSxM2vX21wupM5KLG7adq9vR2wNhiLIw95auu
         KXyZoGL9ZdJitP0hAPHdoRx7Zdc4XPAuxS2z6bhC3PPXrMDvLYOBK48+x1+/c/W/h9iU
         8ejg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749165147; x=1749769947;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gH9iE8xUuhmsM++nBGZb1sp3kMQiuQ+pxJGMgIYtR6c=;
        b=OCg2jFYMLhKzYkla0/jHIB2eXALdB0AwZIcEz8rIq1rOymH+aXSQFCQoCZyYmxZvbL
         gur6KsRxKw2X046eAISdr7raUvTq5zenNfnFzw2wwuX9C1tAc9uPcxtRlUPFJSZTIisx
         LPDrO5t1XXtzF1Ui4Dr4qIViXvC9NRAyiVKGKZZobu5NtT6oJkjyq7ftMGQMNIyT6KFn
         4md8RY3y+XFHGCMTOELVO64Rczmr30v/ZfIaXu7e5prFiieLj74xndv4IN3MwKfSOmpI
         ku0VVQ9SEDCnFakMVWeGbJQQgwAOo5KU5foUFRCWk6ww6TuftENB+xIVqcNHDSXnvPWG
         1IuQ==
X-Forwarded-Encrypted: i=1; AJvYcCVe3oOFni6Z+8xEyi1SSgqD2Tr/LEXUAkTZPa7VEeA4dF+f7d1QihYNlQJKjXmMwgahOHUoWUL0sWgjw00FGQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzs1SFkkMWgxpiZLxh0vbcVaxwxxWKKvkvEhTXEi9El5sgQDP/J
	VTh4MoGIde0PvuUtBB+liSwv9asgZ0gwwaI0iuTufoPb++FJIOH50wMMNBeMtllR
X-Gm-Gg: ASbGnctabdLei41V/cnEptPwMOd+8ER+HUT3dJP/RkwrRyEoJsXxOb2/iqIK4AeJ1Sw
	dQSM+XV8OUmG3BWrZc6XinSWJXJu5ekGu35bexN1BFkDbCwSqeA5apyjJNXYVk9PJYnveTaTX8t
	29pB2+DClMXEe/ONQUfKDAgTYiGTfZCohZHJNr1vEqr48cGRMqo/8YXAP0YzoC/bu5vCT7+r1P+
	KXSFO5jmWuAMwXFEttUQscr4367/LRI4PUKwZHQJQr3dy64B62CRyD1LDwmJFNhe2CVkZc0feIh
	ClWMPxoiB5ykfkz2LxGlECjJ14+8Uz9qWnQKTHxLPsm01Ebk3zF4C6aDS8yzXw==
X-Google-Smtp-Source: AGHT+IEjxScSWalAxjVgNDznTRIAw0FLaD7GhhKVsHmV467GCZwy5/nzrKZqqBA5WDi5Nt+WQhlN5A==
X-Received: by 2002:a17:902:ce05:b0:235:ef67:b595 with SMTP id d9443c01a7336-23601d710bamr18195975ad.35.1749165147195;
        Thu, 05 Jun 2025 16:12:27 -0700 (PDT)
Received: from wash.local ([50.46.184.91])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23603097091sm1346175ad.69.2025.06.05.16.12.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Jun 2025 16:12:26 -0700 (PDT)
From: Joseph Kogut <joseph.kogut@gmail.com>
Subject: [PATCH v4 0/3] Add Radxa CM5 module and IO board dts
Date: Thu, 05 Jun 2025 16:11:50 -0700
Message-Id: <20250605-rk3588s-cm5-io-dts-upstream-v4-0-8445db5ca6b0@gmail.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADYkQmgC/x3MSwqDQAwA0KtI1gbGT+roVcSFOJk2FD8ktggyd
 +/Q5du8G4xV2GAoblD+ism+ZbRlActr3p6MErKhdjW5hyPUd0PeGy4roewYTsPPYafyvGJsQ8W
 emr7rGPJwKEe5/vs4pfQDOf6pZG0AAAA=
X-Change-ID: 20250605-rk3588s-cm5-io-dts-upstream-f4d1e853977e
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Joseph Kogut <joseph.kogut@gmail.com>, 
 Steve deRosier <derosier@cal-sierra.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_161229_053700_22E29001 
X-CRM114-Status: GOOD (  11.43  )
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

This patch series adds initial device tree support for the Radxa CM5 SoM
and accompanying IO board.

For the latest revision, we noticed that the USB-C port wasn't working
properly on boot until an external power source was connected. This was
tracked down to try-power-role being incorrectly set to source instead
of sink. Setting it to sink also matches with the vendor kernel
configuration, and fixes USB-C.

V3 -> V4:
  - Fixed XHCI initialization bug by changing try-power-role from source
    to sink

V2 -> V3:
  - Addressed YAML syntax error in dt binding (per Rob)
  - Fixed whitespace issue in dts reported by checkpatch.pl
  - Split base SoM and carrier board into separate patches
  - Added further details about the SoM and carrier to the commit
    messages

V1 -> V2:
  - Added copyright header and data sheet links
  - Removed non-existent property
  - Sorted alphabetically
  - Removed errant whitespace
  - Moved status to the end of each node
  - Removed pinctrl-names property from leds (indicated by CHECK_DTBS)
  - Removed delays from gmac with internal delay

Signed-off-by: Joseph Kogut <joseph.kogut@gmail.com>
---
Joseph Kogut (3):
      dt-bindings: arm: rockchip: Add Radxa CM5 IO board
      arm64: dts: rockchip: Add rk3588 based Radxa CM5
      arm64: dts: rockchip: Add support for CM5 IO carrier

 .../devicetree/bindings/arm/rockchip.yaml          |   7 +
 arch/arm64/boot/dts/rockchip/Makefile              |   1 +
 .../boot/dts/rockchip/rk3588s-radxa-cm5-io.dts     | 454 +++++++++++++++++++++
 .../arm64/boot/dts/rockchip/rk3588s-radxa-cm5.dtsi | 156 +++++++
 4 files changed, 618 insertions(+)
---
base-commit: 0af2f6be1b4281385b618cb86ad946eded089ac8
change-id: 20250605-rk3588s-cm5-io-dts-upstream-f4d1e853977e

Best regards,
-- 
Joseph Kogut <joseph.kogut@gmail.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
