Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4E14EE6B46
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Feb 2026 18:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+2mfWbbtLU4a5dki1B0gkHtakGircCy0Ns/DEjIvtwk=; b=PtPxG6tL30bBo0
	EeI6bMctjxFj/K9VP1jjFyshmS9MkYDJgkZUapH+UfVE6orxTel+f1apSfYBRhNcLglaDmXLzd3wA
	XtTaqvNDbX8Fn57eAHfQqZhD/Bvgea6r78kWNeufm2ShcxQQ+CWdPuPrLtkkprTOGb3eLD0+FP9GZ
	DmuiQCFRKEr0mnucDyYWeWJqO68CwD6trljXjRIUVHMPQQ9pH1k016UF2Pbbkw2bAsrLMbQcN21gy
	4kkHqTvedEAcuAnsItFiajL/BaJREQ99O7MvZfZnqLxB+tUJuGYgUAwisHpGm+ecz/jE7y7yS3r9P
	un4PjnFaYpHAMZUGDi3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voQKt-0000000Bezw-0P0v;
	Fri, 06 Feb 2026 18:13:43 +0000
Received: from mail-dy1-x1336.google.com ([2607:f8b0:4864:20::1336])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1voQKq-0000000Bew5-2CDP
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Feb 2026 18:13:41 +0000
Received: by mail-dy1-x1336.google.com with SMTP id 5a478bee46e88-2b71557299dso952830eec.1
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Feb 2026 10:13:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770401620; x=1771006420; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Plp3Yk6cNKttphBRZ6WkXav3acKM+/WvJHxDeTend20=;
        b=BT8ocij79idFkTcQYKMLxDfGIG5Jf2eO7o4yUBTrTdQV/6ZMKbaG4mZrSnrraB4R/X
         y7zPD2K0DuiVloe4vfp4+0FK51cUizqHYfxje23npqETmgj513Txlqb7ZF1s1xLAfkcj
         DaugGHiR3lhF6muPlzw2aHpqPM+o/xkTy26F7pOi6QBIf65326TkpF5UwrKSK1fIt3X0
         aGyHNaRf95MzywbK6RAkU23AT6HNbTeo9cF5iF6m1SZT60ewQGfFUu+TwQ6X9asOHPCM
         Kz4QhS8LR8EZ5gRmAPIUEmLKp4LIObi43/+gIMZ6xZ3M+lwPuMgg16QkCEl6RpNzP8zT
         uZcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770401620; x=1771006420;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Plp3Yk6cNKttphBRZ6WkXav3acKM+/WvJHxDeTend20=;
        b=ok2uak/HJco5XzrGIw/9ndS6j5Chvew/GROYFIfLgu45Sq/04luedMu/WHHO7UP2du
         Lw9RxzwCb4Zfa1aFrZWA7wjHMx97EgD+rWn7MDS95B4AB7aPqYaorKtpuhScEyY960qn
         tedyWfOjPav4JHJPJYW9bc/v53W/6VqNajBGK/O75B19E/pWxLkOCtC5n3NMxYlE2jXo
         ikltQ6hIjHWTd0VL4wAjBBcoSJ6sut9VTwVsCG6Fd7J7RL4rANF44fgTuTzUGl1ZVX5u
         QbebXpIOS0boLudvIEjFhnLYpqxlctkXOR1WxQJUMuTDGmPu+oeIUdULuIlHp/mwBcM8
         PVSw==
X-Forwarded-Encrypted: i=1; AJvYcCUM007mTEL6ULVtMSODGLpDHRcf6B0c64VuS8yH0CuUQxT2c0R+/xWMQaWwYcvPhMvtRRcuGcZgL4lOlSnJuw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwZfQ14zXmabstoj08HESt5Qw1rxi6KMz39nHV79UedoC+fxy+H
	OgHtLLYg6UFt+hUMUBWHSDH4h6N1MH5Qylqvr61+Gd5yPq1r4OnRc+Z3
X-Gm-Gg: AZuq6aIeHOV7UGkKCsPnUWuWHHXFgzyfHl1fBU26xYXHIcqg0J2zLssmKIL4x6a0Sfi
	+SaOn24i3QRlK6B2oMvt+eoo+MBaSW+EmXBQKkyWvlqmE3Jb8dBgKrpNZg8vBnUeHtLxQxkPxIf
	JePxPEpUjSK38i/j7gra5xin5t26reIdxESff6VhyCAq/1WMKpJ77yTOHUyitSsSoUZAcJ0Ulya
	qBej/B8IxHzFnm/HeDB8krFhfgqfEtLWgIBfIJws/SOvGUdjgWSC2tj4MpfnYoLlx4Nc8YlCVDh
	MAzjar8+wczGNOVb3kZP49+rOYs1D8H/EpIV0H6On6zsL/zq3PJck/YB/D1y/WJE7MInYixWLen
	vp/lSBfVJGftuZxun/ro5wcV7XRAo1wsm6yrYg4OySmD79i0RJlJsscl/9K1TzjoSsMMafdzhg9
	alLaaGG7GN/Ym7fA4sNwwsK7eR
X-Received: by 2002:a05:7301:19a5:b0:2b7:24ad:5c54 with SMTP id 5a478bee46e88-2b85644ec11mr1930047eec.9.1770401619551;
        Fri, 06 Feb 2026 10:13:39 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:44a3:2bb7:a035:fd7e])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1270433ab31sm2782500c88.11.2026.02.06.10.13.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 10:13:39 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	linux-mmc@vger.kernel.org
Subject: [PATCH 06/11] dt-bindings: mmc: rockchip-dw-mshc: Add compatible string for R1103B
Date: Fri,  6 Feb 2026 15:13:04 -0300
Message-Id: <20260206181309.2696095-7-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260206181309.2696095-1-festevam@gmail.com>
References: <20260206181309.2696095-1-festevam@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260206_101340_577262_38559688 
X-CRM114-Status: UNSURE (   9.07  )
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

From: Fabio Estevam <festevam@nabladev.com>

The dw-mshc controller in the RV1103B is compatible to the one first found
in the RK3288 SoC, so add the RV1103B to the variant list.

Cc: Ulf Hansson <ulf.hansson@linaro.org>
Cc: linux-mmc@vger.kernel.org
Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
index acb9fb9a92cd..a75209bd2710 100644
--- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
@@ -43,6 +43,7 @@ properties:
               - rockchip,rk3562-dw-mshc
               - rockchip,rk3568-dw-mshc
               - rockchip,rk3588-dw-mshc
+              - rockchip,rv1103b-dw-mshc
               - rockchip,rv1108-dw-mshc
               - rockchip,rv1126-dw-mshc
           - const: rockchip,rk3288-dw-mshc
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
