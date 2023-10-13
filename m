Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80594CDB482
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 18:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LiHIfDKQGWUzYM7xS2akFx+zWJeFs9UD4YPfuHqkcyE=; b=Adfg78+mS3OF+5
	bwmTp/C8/G0pEq4oKeK1Hjlzpzzwv4pLId3nkjLmT+XVGvhWMkFvzHebw28IOSi2Zrwb8e0qwWtru
	3G4dtzd7XbjM9Qv0jA6Jw7AAmH1A3e3dBWSvf79SkUfx6uoJTJhsDwYBWaXszGY8WAIe/jgcERp5z
	hVGLncSWhtp/45rNVAFYTJQhnNbO3OL48She6CIAb5yTgenJN060Ms+SdkDi1rLTweiBnzkYJ/5/k
	BEA32fQSshar0B2prap2vKl+W+fABPjs/g1xrBiTxuYtskh7yNkPooVof/EmLz5Whxh5uD/BDzyLc
	+bckuoy8BrBRfiusdX3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrN4P-0043xe-0c;
	Fri, 13 Oct 2023 18:39:33 +0000
Received: from mail-oi1-x230.google.com ([2607:f8b0:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrN4K-0043uh-2X
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Oct 2023 18:39:31 +0000
Received: by mail-oi1-x230.google.com with SMTP id 5614622812f47-3b2b1ae4c21so500002b6e.0
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Oct 2023 11:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697222366; x=1697827166; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F1wTDexLYvM5LHX90F6rxGOJ9LXZcSYzdsLh84YqciA=;
        b=Ik8H7FLFjhG5DcpVpi1/8Kzc4/LVNgJCeGbmNjl87Lqc1rCS9qfZH6t4kKxHJknlqD
         zJHZskdNU8h0MExsrd7CuO9O0lA8KvpbxDPrhQ4+lheQocFXIX4B88aijJumcKayGPH3
         N0XPTCLiFviBqhD0ZMy8kwvdM9jGB5m7+rO3J9YgVneBz5JMTOrsPnmXhAAgx0yfti9v
         HYoV8Rxu3WV/AOGpWDt8lDx+kicKVmB+tfpTspjm216r3hfnanWkiazKznaf0TmJswky
         k5IVrZhabN1m5n/TvRTvEUzdq+pxrKF22TTgI6KAmhdhljFsM6S5ez1qvLAzpyXSIike
         vw9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697222366; x=1697827166;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F1wTDexLYvM5LHX90F6rxGOJ9LXZcSYzdsLh84YqciA=;
        b=OTDSqHzpu7B3mGU+2xrdR0JM4PyV+A6RKVzAmy8FGb4L1c1lWGE5aKMcZKURyRW122
         8/0UrK9VPIMm7z3NpQkKDn268EJoIOQ12DDl8x933VO9rGPGNPOFbBwWWNcGrplNzMWJ
         0zrz0M2BpsBEOnyO0CYvMI7GRfcDU47jGi3zRPHAidhNiRAOFN+qg++SHo0E1LRx+5Hu
         tGv6xygOT3zMlnOAkrGmE5qZmeilP8FsCQTKPAoBec4kWrgkNL2ll8JmcKshiTzUsVQG
         0y3aoqBLEPvP1s81NoPOB5pGJQLpGPhFrXqTNPqVwOK5RMY8dV2o35XIJHE9fso0YAO7
         vA0Q==
X-Gm-Message-State: AOJu0YyqwStgjLECOeL1h5w10mGi4U3GekNynK2NLU4QCQh61roofBpP
	F6fhv+ywaz0UJSNggOWBLeD0U7ohihg=
X-Google-Smtp-Source: AGHT+IHdkztdQit8wuetjEnY18VnhEAH1GKxj23Osp/28dvXk64uW/pxMEBq7iAjlCbL8hSHMTdQhw==
X-Received: by 2002:a05:6808:1994:b0:3a7:366f:3b01 with SMTP id bj20-20020a056808199400b003a7366f3b01mr37101888oib.33.1697222366461;
        Fri, 13 Oct 2023 11:39:26 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id bx19-20020a0568081b1300b003afe584ed4fsm842159oib.42.2023.10.13.11.39.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 11:39:26 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	andyshrk@163.com,
	jagan@edgeble.ai,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	megous@megous.com,
	kernel@puri.sm,
	agx@sigxcpu.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/5] dt-bindings: panel: Add Powkiddy RGB30 panel compatible
Date: Fri, 13 Oct 2023 13:39:15 -0500
Message-Id: <20231013183918.225666-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231013183918.225666-1-macroalpha82@gmail.com>
References: <20231013183918.225666-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_113928_819748_9F2073FB 
X-CRM114-Status: GOOD (  10.74  )
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

The Powkiddy RGB30 panel is a 4 inch 720x720 MIPI-DSI LCD panel. It
appears to be based on the ST7703 LCD controller (this is assumed from
the init sequence similarity between this and other displays). Powkiddy
would not share the part number or name for the display from the bill
of materials and there were no obvious external markings, so name the
panel for the device (Powkiddy RGB30).

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../devicetree/bindings/display/panel/rocktech,jh057n00900.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
index 5ea74426b1d5..97cccd8a8479 100644
--- a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
+++ b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
@@ -22,6 +22,8 @@ properties:
     enum:
       # Anberic RG353V-V2 5.0" 640x480 TFT LCD panel
       - anbernic,rg353v-panel-v2
+      # Powkiddy RGB30 3.0" 720x720 TFT LCD panel
+      - powkiddy,rgb30-panel
       # Rocktech JH057N00900 5.5" 720x1440 TFT LCD panel
       - rocktech,jh057n00900
       # Xingbangda XBD599 5.99" 720x1440 TFT LCD panel
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
