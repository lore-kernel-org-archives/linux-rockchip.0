Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7902FC54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 13:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0OQxLRKnUdSx3P1cBW5wmn0560yH3hjNCD/21dNv3G0=; b=SrzN6kDHKIGNWY
	PoeKiD7YhOe8tLOSzIAPU3gDmo8uyt68fPVIO40PRPAYTaGiyKQy5Hz/RoqXBQodJN+xr/rlgGQNx
	zZLK+ada7B6h6FDeSI8qH0PpBk1hkx9ePnvAgdet6UOAHG1nKOaUV7zia+barXLAgT1nYLIwVS0RK
	7nt6zznLA3+tgbi/VKK6JhOJ+V2dNwL8ZWDk7DO6dUv4f+EBx1mRR3La7S2/Hq4j8qJt/RhEKIKB4
	sQTanxfEN6nv3GRTGyr+n8QNiX8eX9Ui7lptmF9ajm2L7C1uOCZF1Gg40vuPAr2Hw0438GZHyqKK5
	r/OQVktUj3DWZevkw89g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rokiM-000000003iE-3Z8X;
	Mon, 25 Mar 2024 13:50:15 +0000
Received: from mail-oa1-x2b.google.com ([2001:4860:4864:20::2b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rokiI-000000003fQ-1l3N
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 13:50:12 +0000
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-22195b3a8fbso3245525fac.3
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Mar 2024 06:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711374608; x=1711979408; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BbJkqNdY66C3ZGpPlypuMpUlQgBvGG9nwBs5AHhdlTI=;
        b=bVZsZMUr6W2nnaZyc6DZqGXp3AUPeEzHiDyTphTCjpl6TQb2Dp68j9IX76HqbYK15z
         yLAtxU27NPc1aAhT45LswOiMYDBcqyAxU5uuFo5gF2efaZDAdcVxO5Ay/752P141mwxM
         D2b6odjYEF4fpepHfhRgqxxFakOzQRF+46KofFFkvuE4IC1bFoSq4Ww58/KTucpJRZqv
         vHKEsz8DOjYbHC5odNu+hZni25J2/sksk23Nx2fUxm1VZaHALPdwxSW+hCnsby27a3uc
         jxOkZp+x0XFYBzd3jwe8uaAH8O1vGLAxpl/jpqz8vZ2zHEVTaSUytLv8pgW8N76JKIXG
         dc+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711374608; x=1711979408;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BbJkqNdY66C3ZGpPlypuMpUlQgBvGG9nwBs5AHhdlTI=;
        b=oYysEeq51sptQQWc9kpN0z5QN5ZgfxUW/DaRn6xADsNTLO75BEWQ3c7J3ewD2GAAI1
         JGe0BK4BO7GC+ZSXFrTuDzkrh6fQTRnd5b/UcDHmHAWDdYj9+FsHMCO2t26IaeP85CEa
         kejbaTQ2voaxvKLszrDJvNv9zQ73/OAnismqXvqXaEZRDgrMIpP2xC9b6seZWiJRQbrH
         QKNp06MqaNdBpCsVWznxYTQZ4XwGM11VAxPdtWCC0ikibLtBsfl+0EV7MY7ynufmzTTv
         2E3kpVNVMnDoM7/l/O50pnFJZb/WDRHCHtPmWNXaiwXDLbOaVqXQZZC63fhpvzcWRXtW
         0hZg==
X-Gm-Message-State: AOJu0YwFCYuVDvQdhXTBUuryv+EhxDQeadwHd2VR8OF7LvuWhON0sK7r
	eyyEhzm0jUVB4yX+204jTSI98dJMEdzmM5BzXOfkskZ8bAK+K/YWDWxgAr8M
X-Google-Smtp-Source: AGHT+IFn8uSOzi00+o3avwWfZrNmEtyROyQtLHm+wDAbt7YI8gO+mya+YXn8B4WCU3TqBLHIJUo6xg==
X-Received: by 2002:a05:6870:3041:b0:221:bf34:b15f with SMTP id u1-20020a056870304100b00221bf34b15fmr8485533oau.25.1711374607986;
        Mon, 25 Mar 2024 06:50:07 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id z8-20020a05683010c800b006e673e2d2a3sm1118250oto.77.2024.03.25.06.50.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 06:50:07 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	megi@xff.cz,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/5] dt-bindings: vendor-prefix: Add prefix for GameForce
Date: Mon, 25 Mar 2024 08:49:55 -0500
Message-Id: <20240325134959.11807-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325134959.11807-1-macroalpha82@gmail.com>
References: <20240325134959.11807-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_065010_486227_963935F9 
X-CRM114-Status: UNSURE (   9.05  )
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

From: Chris Morgan <macromorgan@hotmail.com>

GameForce is a company that produces handheld game consoles.

https://gameforce.fun/

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index b97d298b3eb6..3def72060414 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -529,6 +529,8 @@ patternProperties:
     description: FX Technology Ltd.
   "^galaxycore,.*":
     description: GalaxyCore Inc.
+  "^gameforce,.*":
+    description: GameForce
   "^gardena,.*":
     description: GARDENA GmbH
   "^gateway,.*":
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
