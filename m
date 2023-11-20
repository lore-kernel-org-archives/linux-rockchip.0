Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67574C54E76
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Nov 2023 23:01:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kksh4moTMQ6aWnYOXze7eEGeEdmVMFqqxBgcFFs/eaI=; b=RzLt5JqsR2HrNk
	+3DP2XsNgijvD0zuiZn6G9tIU4nx7E8eJ/01q/SecXdJD5KY2wRzwZ1TTofl2+KXO4DwlC8QLDChv
	ILdCnuoGXB64dq4IEqJbhyUC2fju5/CMukCtfQfToUWoUW1Ofy9jFPSHVsp4X1PuSQQC5+Mtz3w//
	BUX6HpU8UvJEwBINGWOwc/df0JYuczNjWLqZ32nomOSsbpZHTIG3o81YGMS0kdu8gGgWCvrSCYN7N
	U5YJeWkCcwXkq+chXW/IZmOV8EOPbD+nqXj3jeX1ncRAkd032xnnP4CtfiQGDBqYwCX7xGT8rBmcT
	Va/VH8VNH0hLFsaH2HEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5DGy-00F1jA-18;
	Mon, 20 Nov 2023 23:01:44 +0000
Received: from mail-oo1-f46.google.com ([209.85.161.46])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5DGu-00F1hc-0t
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Nov 2023 23:01:41 +0000
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-5869914484fso2844521eaf.0
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Nov 2023 15:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700521298; x=1701126098; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uZ8VGXg54VR9x4z/bS3xIraGv56b9ySs3yQzJdhrrEU=;
        b=OUKZBdInjWVyVp75CeLBYX9y7nS0vucoi+/knMTWMExXLhoxVNrIL6LJf7vuuwMaAV
         42w2o1ABBmT4wHRh6D+vE8J0C1MZuWUz+NlpxFueDMkTVpBnyeHAsBIhx+HK29V5Q7VG
         GPVtxd/sCXFp654QTz6L+S8vfdDR9U1u5oaTH8U0MMUHINgyK094lGrVu8BGVqk8nCD9
         mADGCj4+QW//ynQmgT1V8/sLN2tFw5lsFNiPAukWQPrBRylA393JIrCJL5EalAkmx1H1
         GUKJmAlWm9g+lfaQmQonVd6f6MlBAh7kL/Em9415b8RRbfjE6vPEqnA6+3wTGJblGCVS
         /R8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700521298; x=1701126098;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uZ8VGXg54VR9x4z/bS3xIraGv56b9ySs3yQzJdhrrEU=;
        b=BiB7hs+J9kFUu5OIBT0YYhyZzFhgexlEWIygA1Plz0RWBgvQloY5DXozVsxxJeGXuk
         zB2fQuC30dbLSyVrcajFdkBUkcZ3718/XAtRj5DaOJdnlzuLC7IT7OtDy16afboseOuj
         +2yB3KDoV9sXYth6VciT4uQ6+nGOAuVge3gWSMYdAN75Qj4wus4kyueECJLr3hF3QqtF
         k7JstUBVOE2vvw/OsOcexf+vmwdB/HIhfbmxu+lmbC3HwSrex52xADH0L/TaCtTJRJ0o
         XsJOojtToK7D/7XXGcggtl3sR+qUZ09rhsByPoKnQQh2ZZjoLP3vK6ONo68E7dWl7oHv
         pbJA==
X-Gm-Message-State: AOJu0YyvoF7Zz5dd7IJ/piAPOZdFbPqXboFECSaE8d+psbjX23RD1vL6
	F+7SjW+2+mc3mOEfzUFW4j8=
X-Google-Smtp-Source: AGHT+IHGMMjWuQKTqjVy8HRYGFxaU9xr+mwEHmuaRwe42Hbf7xhDU+TdzA6PHk1HPenSdOJaGUrzWg==
X-Received: by 2002:a05:6820:1508:b0:57b:6451:8c64 with SMTP id ay8-20020a056820150800b0057b64518c64mr10750357oob.9.1700521298004;
        Mon, 20 Nov 2023 15:01:38 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id g10-20020a4ab04a000000b00587aaf6add7sm1545117oon.9.2023.11.20.15.01.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Nov 2023 15:01:37 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	maccraft123mc@gmail.com,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/3] dt-bindings: arm: rockchip: Add Anbernic RG351V
Date: Mon, 20 Nov 2023 17:01:29 -0600
Message-Id: <20231120230131.57705-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231120230131.57705-1-macroalpha82@gmail.com>
References: <20231120230131.57705-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_150140_339622_45C1AE85 
X-CRM114-Status: UNSURE (   9.10  )
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

The Anbernic RG351V is a portable gaming console from Anbernic with the
RK3326 SoC.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5f7c6c4aad8f..3786f901a1a7 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -30,9 +30,11 @@ properties:
           - const: amarula,vyasa-rk3288
           - const: rockchip,rk3288
 
-      - description: Anbernic RG351M
+      - description: Anbernic RK3326 Handheld Gaming Console
         items:
-          - const: anbernic,rg351m
+          - enum:
+              - anbernic,rg351m
+              - anbernic,rg351v
           - const: rockchip,rk3326
 
       - description: Anbernic RG353P
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
