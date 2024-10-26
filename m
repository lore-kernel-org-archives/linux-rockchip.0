Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC1D5D10BF7
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Oct 2024 10:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GILpKfFzj7+NGHLEv3p6zj31YKKGUNNA54P6gUPggmo=; b=kOaxqJBNtZMjvk
	roUfI72JbAVw1Vq2Kph4q+BHiNKwIRVPrZikspuuk2g24nMGlcdXsitSyoXkgm+WuV/2GsUeMl4CJ
	i6S+2wv48nYHIxZAm/Ezl6OxQZM5sl8uRI3bB+8ZcaWkZyzEFMPOZ9zmkEkNj9NK4LRKJ25blbwrJ
	RcAYLvldodhJRgznOm/XU7Y9HIIsT9OAPc58rkYZ+6SkkdXd7Q8lOO4b+fD5S0wgps8YLXtfYo+Ty
	QKUs5reLEf6TQ5EkmaZkqguQ9sbLVsjD7nSXiPTCWwSZMAuLWBVs+gGpHR6fscfL6tvnnvXP/WbhN
	UhkCdmoT87J3VlfFnjeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4ddv-00000006KnK-4Ays;
	Sat, 26 Oct 2024 10:03:35 +0000
Received: from mail-ot1-x329.google.com ([2607:f8b0:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4dds-00000006Klu-0Do5
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Oct 2024 10:03:33 +0000
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-71806621d42so1630238a34.3
        for <linux-rockchip@lists.infradead.org>; Sat, 26 Oct 2024 03:03:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729937011; x=1730541811; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OifXa0xS72KIxES6SPqmMe9eJQY0uGb3CD2rL2OPXD4=;
        b=RY48YYEJL8oMVWYFgLY4fZOS0MwbsEX8jbaizwagEcRgxPWN4UhpQdpk8trvzvm9Ex
         /aDOLUPKOYMEKLboP76HK4OJuL8kyW59nJvfLyCUmFCB1gh4zsIe93WvL95AhkmDu3vl
         rRlu/bbwpfldrzbIwuZWwZUvCQ7NYJXWi6UbUPlamCKk8PPADQ8b8yqE+5m/JNxbQBE+
         uWd6Ql+luBBtDzGrRP/0CXRs38jA+BeUAXPsIrRUt1b0vJG97QlxEohInMMqO33PIZYS
         Z9+80CRMs6RQW+V76AjcSaj/7sacn/8CLDOKUL7YGfmc72IeSdTOPQxOOqc5GfcXBl+y
         Uj6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729937011; x=1730541811;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OifXa0xS72KIxES6SPqmMe9eJQY0uGb3CD2rL2OPXD4=;
        b=wOm5TOj5yo7NaQvebtvpUJWSSWZ9iDJckTCRn/GVEymHpD9rN4WQqPriSNjQhrwje4
         Z6xGGdHj3kKBMM77//QQHpRv6z48mooS9ElwjKVifmW9uGxpV3pjCCaBH7Wdz8Fj7rNN
         41dYhVLFYkzaJ1P/REGAN7t9EZsQyRK8+GBgdK6SnlHzfAgKhChsrEo2dMOemHqaRLcQ
         ofgmKbHOJ/wJBsC1KnYShjoT0lUc+ZkV1QDZ0gRxKJjRPVLUNo+tGWjHwqseE8JITMTS
         /rq2iSqPw/kbdGki2dTkOYgyn3TwQRwiUlrM8WqGUIRvMBUhQ6j5Mkm79+5+2uNMv+I2
         9G3Q==
X-Forwarded-Encrypted: i=1; AJvYcCUsXp34TAXm12mcPFpJZ/LOlPVMmvjSNZO1iBfg7NUlRVk8E1e1NSizritx7GrSZxc2zSHBdjTzebxAPCG/+w==@lists.infradead.org
X-Gm-Message-State: AOJu0YwVfD3uS/bc8SsUsgxnz9lSHwQNVDoqTS5ticxREffY+rK/a7W/
	sW+/KN58+gR9GanUBJGjzcUm0UXy3CIFxaSmjB83+MZwvtSq/R7A
X-Google-Smtp-Source: AGHT+IEEXkntzSzsXYOqNGTA/qK57YLuaMTtJTZ6fnmb7HqkQjPijxfpcgZi1sMjK6Hrh08W3eOpyA==
X-Received: by 2002:a05:6830:610f:b0:718:100d:a069 with SMTP id 46e09a7af769-718682a4427mr2006151a34.32.1729937010853;
        Sat, 26 Oct 2024 03:03:30 -0700 (PDT)
Received: from tower.cjhon.com ([2603:8081:ad40:11:cefb:5eea:7da6:3c6d])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7186165841asm632243a34.48.2024.10.26.03.03.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Oct 2024 03:03:30 -0700 (PDT)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-rockchip@lists.infradead.org,
	Ondrej Jirman <megi@xff.cz>,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH 01/15] dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5 Max
Date: Sat, 26 Oct 2024 04:48:17 -0500
Message-ID: <20241026100310.52679-2-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241026100310.52679-1-honyuenkwun@gmail.com>
References: <20241026100310.52679-1-honyuenkwun@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241026_030332_110365_B60C1A00 
X-CRM114-Status: UNSURE (   8.05  )
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

Add devicetree binding for the Xunlong Orange Pi 5 Max board.

The Orange Pi 5 Max is a single board computer powered by the Rockchip
RK3588.

Signed-off-by: Jimmy Hon <honyuenkwun@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf..8998cfe34fda 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1001,6 +1001,11 @@ properties:
           - const: xunlong,orangepi-3b
           - const: rockchip,rk3566
 
+      - description: Xunlong Orange Pi 5 Max
+        items:
+          - const: xunlong,orangepi-5-max
+          - const: rockchip,rk3588
+
       - description: Xunlong Orange Pi 5 Plus
         items:
           - const: xunlong,orangepi-5-plus
-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
