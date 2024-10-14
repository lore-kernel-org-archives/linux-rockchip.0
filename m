Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C9ECCF2592
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 02:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5CPK/zlpoHnxR+NM2YALDSvfT5p6qEyMHDks0QcUbew=; b=irV2WDTSVZbBCK
	noXry/b3P8V4lXYDeU2oVZldpIWETPKjJDfq0TS7DGWBoJJJLjwpOoaXCRrWMruFN9f0y6UJD2wRk
	Vy5DZB7DCF12Rga4uGl+OoqOPTHRNSbq9b7t1VBEf7lG93EdhEGMLbEhM/8xubnkVZDZ1mMvxJEkI
	J0CUUv9HedCjInjkzrMCk9WM87z9nbbUtKQl2jujtII1BkqBx1P/X+i7PYxMCLr2ZNXNrP9y6qiS1
	tqbZ/KhxPGVYWxgR2yb/MkO61eugW8ojrbJ2lzGlSbRJpG/WYiPdLL6G4lSZ5KKXHAwxcqRlhd510
	6+uFCeGMO4BUGBrI2w0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0ATm-00000003WNe-22VT;
	Mon, 14 Oct 2024 02:06:38 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0AR5-00000003W11-3QYd;
	Mon, 14 Oct 2024 02:03:53 +0000
Received: by mail-pl1-x62f.google.com with SMTP id d9443c01a7336-20c78a10eb3so1557405ad.0;
        Sun, 13 Oct 2024 19:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728871430; x=1729476230; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=t8XtIqCB450e+VMFf/Ma1ifuCcLIUz75aLQRgCsC9As=;
        b=RWx9PiikW/oo/+7XpntY1SdBoMJD0OMs4FnypB+JOv4bFOEEO0agJIJYugb+2rRbPZ
         k3IxLHL07Kau2jVdSVOUwklK4hK047Bd6HwdoNj+BFK5Xr89QgsYVHBoMVROiJ9n4YxO
         pJFvy064LvrT8ROOeTyek3Ox/xxU03mpjNKgQPIEuAvLjvGax+krcr6Kk5RKBi0rij75
         SN/GsU6XOnIOL9+BYDB5WqqUJHvZzutwMApajfHbvkBwkuOb9DY8y1GcjzZ6FiRtmwOp
         qxxBwH9oXG5qCXmzkkqvbWdYhecHh36Q97FCvOcbtnnd+DgiaOAJRG+PuQkokFJa4UqD
         XMXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728871430; x=1729476230;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t8XtIqCB450e+VMFf/Ma1ifuCcLIUz75aLQRgCsC9As=;
        b=pm/32C6Hy6XOcK1Vjs8PtRfrXzWSAm1eQwnVapKdSf6N6tCobLwRYiq4E6qXue848B
         koGbgnGMrf+Fl+HV4ac7z9/Lf+lD3zD0ApWeGiO9nS14LA6u52V5VMwtmKVkH13FN1aR
         z4IewpxF44kBGHwRgi9+awNvsv7EWucQW0wW9y3BRVJwZ2BXhOKcsP45e4A6NXBfBf54
         keCQE23pTKoUskdc6mRtyZEHwLKPOnwPFSu2N34Yamg5XWooDIHvupLN+iN/sZUdAX1z
         YnQ3KirrLn20YfKOOxkwmvchJXNfwCiajvOF98QCu3pWIDNI6w2YaECmCqJgL0vq7U8M
         ayLg==
X-Forwarded-Encrypted: i=1; AJvYcCVDXACJSAdFm9AqcQygQbI2aYtog2rLQk/fFERd/mvYbgTmhbdN7g7th/e/hDxNRFsr+UXIUTUOYmcINZ8KVJI=@lists.infradead.org, AJvYcCWX23OfrijCJHE53h7leyIeD0jwhFNT8sAa8l0mXXSX6Qq2aX1KXuaKT7kkPpsR279AoSmzlvnMOobmXzTiOUo3@lists.infradead.org
X-Gm-Message-State: AOJu0YzQezLvN4/GU56qJ3i9BkFad4gA9NSZF2kN97fAXn33zN2/DWvQ
	+S9oTlPUJ9pmYOxPuTSQF3Qgsc9g24T6U6nzgrPkELDUzIxpl3b+
X-Google-Smtp-Source: AGHT+IHKs+nDs/o7NtLyvmjRfk3RZ9OpnxvjxX2ffV/xeBEuv2cHhDtoH5EYcBK2N21UFloGOjqChg==
X-Received: by 2002:a17:902:f549:b0:20c:ee32:7595 with SMTP id d9443c01a7336-20cee32779emr10437525ad.2.1728871430035;
        Sun, 13 Oct 2024 19:03:50 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8bc1a59asm55794795ad.113.2024.10.13.19.03.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Oct 2024 19:03:49 -0700 (PDT)
From: Frank Wang <frawang.cn@gmail.com>
To: vkoul@kernel.org,
	kishon@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	william.wu@rock-chips.com,
	tim.chen@rock-chips.com,
	yubing.zhang@rock-chips.com,
	Frank Wang <frank.wang@rock-chips.com>
Subject: [PATCH 1/2] dt-bindings: phy: rockchip-usbdp: add rk3576
Date: Mon, 14 Oct 2024 10:03:41 +0800
Message-Id: <20241014020342.15974-1-frawang.cn@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241013_190351_903514_16BE83BF 
X-CRM114-Status: UNSURE (   8.23  )
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

From: Frank Wang <frank.wang@rock-chips.com>

Add compatible for the USBDP phy in the Rockchip RK3576 SoC.

Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
---
 Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
index 1f1f8863b80d..b42f1272903d 100644
--- a/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
@@ -13,6 +13,7 @@ maintainers:
 properties:
   compatible:
     enum:
+      - rockchip,rk3576-usbdp-phy
       - rockchip,rk3588-usbdp-phy
 
   reg:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
