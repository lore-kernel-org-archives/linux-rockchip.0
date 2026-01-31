Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1A6FD7977E
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Jan 2026 15:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dsfC2750vaU/uMVAs+La8UMOODz9M9Tm1+FRqdM7WiE=; b=rxhhef2li2UOOU
	ok+fGHpehYp64GfAG7CECvC6LJz/cuU2jA3tqNRtJBY2H6cGubALuFOMf9AbfwbOnFh55P/cUERu5
	wvI2P/Gs9nUvG9Jx9VqPawhFNLFp7swW146Bs/xt283FaGZGbnYKk3bj8mUc8KSgn0KxNj320K76Q
	/kpUMrZjeSl2SbrcZwtFp2QQefKhPMc77oMy0ihAsFwpTgQStWhBppDkgwpDTJ8p14+Yn9ltwAjBm
	/4jI+hiIrw4mURxXKKPJxOAek5Q05VnME/Dy5loAZe5uBEMyA5QeAfAFoJADXrycIT2/nQWNAxCNZ
	vDrhV+vykNH9k4LXzVzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmCwd-00000002kOn-27W0;
	Sat, 31 Jan 2026 15:31:31 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmCwZ-00000002kLc-3A56
	for linux-rockchip@lists.infradead.org;
	Sat, 31 Jan 2026 15:31:30 +0000
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-c54f700b5b1so1956235a12.0
        for <linux-rockchip@lists.infradead.org>; Sat, 31 Jan 2026 07:31:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769873487; x=1770478287; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=87iMqAHh40Qple/XwU47TttqQDjC/RR+nzYkh3Aaq+Q=;
        b=bZwPKXob4NTJY/2CzpUkUGXMXAvBFyrwVnSzD62eZ96H9e1LEl7sgf7k5jXP1HH4Wp
         m0o2hDsrToiNfyF0qhd4SUs1JUOd7sTf87F07NzhVaS0jEl2rKIXKGnP4wgP1Lj1D94v
         VnxmkVl6J6IxTS9Xrhv8LNopVPwNUuMqs95VpSkuoDLF19ECjRXSGi0JZqpBcYesY2+B
         mBbz1YQfPo/M09E2C/bljrRCxhxUwguw5+2sEgcjtaKaOOwy4/zoY/H/E0B1T/f/ZVNm
         kVd3SdKnz2LKmV1SUbNCO1/IQOAf1a3sP1isf90Jtut/ZDZmIaraT8MlMLNpfAYU8iMz
         MsfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769873487; x=1770478287;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=87iMqAHh40Qple/XwU47TttqQDjC/RR+nzYkh3Aaq+Q=;
        b=oavU3DwTU+yQFOG8jfZLuujfZwWJ+fMdkWRSVq96oeZjWK0xUtDvMiLFN2kF15y0ja
         uexIXdYGl77JQCV9cDvC3qvV2TxcVM6bJ3wO7WNBwpjkIm5w915HlStoynjqbrKaZ7NZ
         Dx6Y7FjgMxnRpC1CTtWI0rvLN/bUP2KKCApMHlnVr3YdRq8NbhR1yvxNlGe6133dgwhq
         quhZYb/z0nUrquQZ8Xza0HGE2pHeYu31bcZ6exY6ojALLwupqYpHZSsEtAQrgJ9bN+Ky
         MYax5H9s/4ieZlRUObC4Z0vCbRL06kt47xi9RM/Juhwr9z5/SdFdrkJViNDWXuuB59C6
         A23Q==
X-Forwarded-Encrypted: i=1; AJvYcCUGO/smSEtfMlDIO0xT8U3WYyXfrWO3aBX4FH0GBOy6BUCoHjT/MgyM5FRdWqF1XLby9qv+yQWBvsQGmFqrCA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwLdWV1a/2kUNeUI4fLfqJCU4Oj8jqPrct5vyNn7XwByKfqwsiz
	zULU8Yi9XO0NfesTsdmeezehCMWYzy4e0XaPeDo4m8Z2Lkd9SaHw1v2NPYNb6Cej
X-Gm-Gg: AZuq6aIRoXt8365x6YvhV+QKKLl8VG08E+l9KvPxDixGY+FUL95kX+T40GK83IJOp2i
	7mZTfDrTYZok9tFPGUTBEbpJIOI29Vj6IX9ouyE9ZDjrJzNORErkpZFwNTJvofpYl1i87I7k8vr
	95avNaIFHKTFMumGHcU0FygZrQuML04UeFapT3sYRySflPEa5Y2rgH306fcaRczWatByk+VQddS
	VKA9vgUl+qipV9nOjF8xYa3jJKRdH4S3ifAPrT6j7bYlt0PtqXwAFwxszJPds0HzqVVl4wBsOpW
	OYjYWBtNLsN6DbuYbeRyg+tsq97Xc7xul6H0obfdSKqgZaHhPouLv775JipMUOtMs+tEN/rt24L
	+KKvoMDwicIphWRFNtWJH1Az0Z+VCHb0tZEvmAxQ8F4UANLpawVcohRIbg9oLax8faSIwM474Nz
	HlcvhK0a4rIZeENsspdOqVYayv61WFXwjwZf1ZkKatBm9DJ9At
X-Received: by 2002:a05:6a21:e94:b0:35d:8881:e6c9 with SMTP id adf61e73a8af0-392e004eb87mr6088322637.23.1769873486686;
        Sat, 31 Jan 2026 07:31:26 -0800 (PST)
Received: from arch.localdomain (awork135098.netvigator.com. [219.76.135.98])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c642487f1f5sm10701122a12.0.2026.01.31.07.31.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Jan 2026 07:31:26 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	alchark@gmail.com,
	dsimic@manjaro.org,
	Jun Yan <jerrysteve1101@gmail.com>
Subject: [PATCH 2/3] dt-bindings: arm: rockchip: Add OneThing Edge Cube series
Date: Sat, 31 Jan 2026 23:31:02 +0800
Message-ID: <20260131153106.31723-3-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260131153106.31723-1-jerrysteve1101@gmail.com>
References: <20260131153106.31723-1-jerrysteve1101@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260131_073128_389911_EDBE45C4 
X-CRM114-Status: UNSURE (   7.63  )
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

Add devicetree binding for the OneThing OEC and OEC-turbo

The OneThing Edge Cube (OEC) series features the RK3566 SoC, 8GB
eMMC storage, and supports one SATA interface, one Gigabit Ethernet
port, and one USB 3.0 port.
Among the lineup, the standard OEC model comes with 2GB of RAM, while
the OEC-turbo features 4GB of RAM; The rest of the specifications are
identical.

The OneThing Edge Cube series (shipping with the vendor firmware) is
originally designed as a PCDN (P2P Content Delivery Network) device.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ae77ded9fe47..eeafe40e0f23 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -813,6 +813,12 @@ properties:
           - const: openailab,eaidk-610
           - const: rockchip,rk3399
 
+      - description: OneThing Edge Cube series
+        items:
+          - const: onething,oec
+          - const: onething,oec-turbo
+          - const: rockchip,rk3566
+
       - description: Xunlong Orange Pi RK3399 board
         items:
           - const: xunlong,rk3399-orangepi
-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
