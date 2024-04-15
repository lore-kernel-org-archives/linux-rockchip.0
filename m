Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D805C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 17:08:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dc6hByEfrGO6q4wwqSZAN9BHMj15R4UsdL890Ft3Kv4=; b=n37boIq1YrMwhC
	B/DkdKBB9/TXU3WakzOFrD5d14DxcdktKN0rpb+zvNPFKM95QISuLKxhGv91smah+X+SnecLd3Ps0
	vQ5Ric+OQGVy190qTD1hM3xDk5iOgvogwMJt/itNRJccl5kg1Q4pGn4AzYtEY9PTlZpVBrZZO7ZXF
	VfCCw/X8Yl7mRoGe60hFMmjcgatO+OuEVaXGrbcHPZJ6Hd/RKh6LYuhKXJ9rJic7yUWLc2R7SUiQO
	2/3EjixSWbCVZ4bQa0lt5IPASW2dWs2vaPEkLhWHTVzWJ3XTIinfsD/yaHOzH8Xr5iGaDiAM9tgrZ
	JApedXMeufPKKSL3+Hbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwPov-00000009GSz-255n;
	Mon, 15 Apr 2024 17:08:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwPoN-00000009G7x-1O9t;
	Mon, 15 Apr 2024 17:08:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=JxqWvddsK3MTcsP5PP2zajM9rLezNvqOsmF2usnJs6U=; b=ppB0ToikajFpQ5aLTX8CyI7JYi
	6nKZCnPu47xPkPHK9c3oleaoszxbxIkKIzsmFCTaJ1YxlVTaN2qlW1hdbWgaa5D+0nwONwUE56haq
	2bDLeC/E9la2cVczyr5WtPmUv+uhrN3BD2+Ev04y53YkDhNfXWv/wlR/4RX1wn63pvC9Qi0gGjWrt
	1N3Nqu1tRRp/32Oyk8xordWEgMpbDlzTVWgYmeKUaIEIky4kL2WyqqRwWKOzqwrz0SV5r1U6WmYYn
	s3ZmvYLlB2kgBV4ZET4wNpOhYCFX0OkRhC3lg1WZDLTbBxJapK+I609GrjICsY7BS9nEejKoX6S6F
	hR2ACxSQ==;
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwPoJ-0000000Afst-2109;
	Mon, 15 Apr 2024 17:08:06 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-1e504f58230so27458495ad.2;
        Mon, 15 Apr 2024 10:08:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713200880; x=1713805680; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JxqWvddsK3MTcsP5PP2zajM9rLezNvqOsmF2usnJs6U=;
        b=kYw/CiM51SxDm7LPBewFubfQ2GzaNyWajheUIBc3yohc4dFTMrpMqSPm+Et2apDVKv
         ScZuGPTG3Bbw/CAhUbb71/OQdswrwLueS0381DRDufYg9EJzhCHZThS4ez8QH7qV9faj
         Mhdt5HUJhW2V6yp7S8j33sxVn6tVWYUGgKKd9sT3HHnKY91X5ExBw8NB3enQXv8IYvOw
         IVwShJb6TpIf2Br4teLnxIYW7VG5D8d1M6XL3j68+sa7W81Rygsbm4FBjOattKc8Yd+Q
         oTRoBktcZ8+2xpjv5vbysS/hZ6GXe32yBFtwciZSsKlJEhmGlZ9I+0+eg1kyeBUTw6u6
         sBGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713200880; x=1713805680;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JxqWvddsK3MTcsP5PP2zajM9rLezNvqOsmF2usnJs6U=;
        b=Pb+5zV/EqhR5Cb9ZZr1U5OkXGeYoR+ztBgNaNKH8+Wm6niz07ERfvSbdvpken1isX4
         UsdJtlTRA6i2jm8ytSFnO1oHmilyXN2K2n6HFXvAh+Ipmf9iAh1jn09QOSpD4HlpDpnc
         ueWxBabzWFbkfs8njGlJ9W+67/piDDDAx4pBPSXfuCYBipzxJTSQiML3Q/Y7B16N+HTS
         mXG1EEpHwmY2n/OfVrUFlEaLerFo1PiulANYyzEWQOHFBLaOcs7ljBAutTCK4ZKUDf7X
         ELky3CwJnAOAKFVPM1KQmGnLQSlLVBkE79wjaVWy/4a+fG0CJCEL/FFMlX2URDaKe/IE
         R0Qw==
X-Forwarded-Encrypted: i=1; AJvYcCXs+PlLyp/nCLyNVG0u3glUXS/3XSEFqHmpgxVOiOLp+lTcOVFTYxFF02uCjkij5mMm/VTobIYmHqviq0sMU35LAuulsJY091GRN3I+CDjqK9CMNUEXS6Y07TJxotP19qN38vvprUBcVyuhmFkvmhS4P9Y1+Q++kgQ=
X-Gm-Message-State: AOJu0Yy9aGJc56RL0F72NBe9WL/Db43BXhy3N5qVW4sGXlAIQFpoSOrx
	t7HgXLgUuCl3gZRbLCgUQIbXJBMUJ4UoUOErx/64onrRL5bq3u2C
X-Google-Smtp-Source: AGHT+IE/M93H7RShff9G0/0UD2rlc/o8B9Ew2BikCCcTsbEp5Y3e7mZva/rH/6QuNX/dRku0BnUEPw==
X-Received: by 2002:a17:902:9a4b:b0:1e5:5c8c:67ec with SMTP id x11-20020a1709029a4b00b001e55c8c67ecmr7957974plv.5.1713200880255;
        Mon, 15 Apr 2024 10:08:00 -0700 (PDT)
Received: from localhost.localdomain ([221.220.135.251])
        by smtp.gmail.com with ESMTPSA id r1-20020a170902c60100b001e0b5eeee41sm8203983plr.38.2024.04.15.10.07.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Apr 2024 10:07:59 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	liujianfeng1994@gmail.com,
	sfr@canb.auug.org.au,
	weizhao.ouyang@arm.com
Subject: [PATCH v3 1/3] dt-bindings: vendor-prefixes: add ArmSoM
Date: Tue, 16 Apr 2024 01:07:35 +0800
Message-Id: <20240415170737.49350-2-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240415170737.49350-1-liujianfeng1994@gmail.com>
References: <20240415170737.49350-1-liujianfeng1994@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_180803_654622_D1B4B9FA 
X-CRM114-Status: UNSURE (   8.43  )
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

Add vendor prefix for ArmSoM (https://www.armsom.org)

Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index e4aeeb5fe..e47405535 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -151,6 +151,8 @@ patternProperties:
     description: ARM Ltd.
   "^armadeus,.*":
     description: ARMadeus Systems SARL
+  "^armsom,.*":
+    description: ArmSoM Technology Co., Ltd.
   "^arrow,.*":
     description: Arrow Electronics
   "^artesyn,.*":
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
