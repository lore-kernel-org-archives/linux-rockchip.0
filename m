Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B047D1AD2D
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 08:42:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xUPddJqv/x+QQ2gDO0grqJjHxCHYrIf/l4nEhyaAthc=; b=IUbY8WXAsk02en
	CXt8pblg9VFwX6p0NzeEDkfj+88gK1xb3HI7Aq+k5PHXR6dt278SztQzEHNPuIss7xJ0zu6BvxeO1
	Bt6/Jwn69zH9Yj9N/aPqZUDhbxNfJUMrjzyJpqtSenGYRY7XcVE9pH6xxR8CPHCfcig2eLP8VFdTk
	OE+R89KkmnYRn2kQ4WZf2u8A2bKl4K63anVGDg+bhCC2jdeiJqbJ5M63e7WkMKg18U1cJOAzarV5n
	a1py+cRkO2pqkvplioHhabvaNiqtCSnc8NWl4Bf2JoimfA8mLXOnrH5eY+zkGcAOi1GMzZlUpy6WV
	rjaUiQ8F7FV6FdX9ztsw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zc6-0000000B4gn-3pTl;
	Wed, 16 Oct 2024 08:42:38 +0000
Received: from mail-pg1-x52f.google.com ([2607:f8b0:4864:20::52f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0zSL-0000000B2Yf-1b8u;
	Wed, 16 Oct 2024 08:32:34 +0000
Received: by mail-pg1-x52f.google.com with SMTP id 41be03b00d2f7-7ea64af4bbbso404626a12.1;
        Wed, 16 Oct 2024 01:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729067552; x=1729672352; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AkvqRkXMu0WbwdlNBbyi9/KgHkkN3Ncs5otSFtEzCg0=;
        b=l5IsBodp0XvyskXVuKa7JhNsodgDOcW+8qwMYwG5uV+TQw7uFmsK1JrcOkTAf7YzSK
         +1k2ukwi5c7FEbWiCGD1vegsk1jX8j01LorxIwIHzEfx2da9BMS+XFwCGsbCKd9MUo+O
         xUlLDKZzX47gArAWlRdY8bCwGBcNTdxQ9L4WgUrQGkywUtmyCbTVKk/PqLOdM4ZYcTkA
         OwezWCR0esYiTcZrDIxSPeDiQ/d9id8p3NHiXBNd3yk8mbKw043ITeSVlCo7w+k1d0Bk
         VPtcBkAzva8p+iLBqvDlCGL5Xwidp4dGMnXXcJALmrqC4YNkVhAEWOSvtIkpUfG5ZTpz
         CCYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729067552; x=1729672352;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AkvqRkXMu0WbwdlNBbyi9/KgHkkN3Ncs5otSFtEzCg0=;
        b=jg0EDT9gqt/k30eqHCraSxa7xTxKTKpCk9GG1gcJQwQK6SgQfGXpcHc62P7+O4wIhw
         /in2wXRxn0vXmwxErRT/kKtkpQaItw7PiKbNuhDnLKnM/PVqL6SnAamNvVJSFKRKO6pL
         dhZJFdgb+rqwQv1Db1x3q0JzSPKWlofMBFDqC19fgqAADrBT16JU3LLgdbHrF44XaEQw
         T7WftyE1wqe3GVVbJ0qMYxKp/RLoqxsSveeHmx/3H81dOwwyAFIvRGlb7a9F8+KQKEPn
         DzSFZG/xPMHueutAPFYUrqWW79VMabViJvJLrDtJI7QJkjvXBoZeTNekgSCDB4eJo30k
         ZddQ==
X-Forwarded-Encrypted: i=1; AJvYcCV1VwyTSWfo8lLpU3o6MMVe3l0fafWZbT+OOPtCBks2HBS4tEG3OV9ORqO3CO2bYb55xY1eU6oO+0VX0Co0OUY=@lists.infradead.org, AJvYcCVT1+DBMOL28Y/NKhP8lr2DaGb2+04OY3y+huNIj3COm3Kr0qm47WctfKUmIektl4Ia0L3XQYABXZHQ+HPa4CVr@lists.infradead.org
X-Gm-Message-State: AOJu0Yz7TG8X2YQy6HYUed2PX8BV/k9YHggN3OaRWoFrl+m6CXxUPMc9
	vA4rYPoOssZJEYc5GnPTXo9JLuGJ7O0/0yA7fsb39cnxFshikj4d
X-Google-Smtp-Source: AGHT+IFMDyRo+nhzjKM0ITHKuIUCT/fwiSYJItDfy7iC/4cEBwIZYTdSwUQo1SZUUDlkKEHKATkTMg==
X-Received: by 2002:a17:903:191:b0:20b:80e6:bce6 with SMTP id d9443c01a7336-20d2fd34a58mr10929065ad.4.1729067551670;
        Wed, 16 Oct 2024 01:32:31 -0700 (PDT)
Received: from localhost.localdomain ([103.29.142.67])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20d1804eccdsm24067755ad.223.2024.10.16.01.32.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 01:32:31 -0700 (PDT)
From: Frank Wang <frawang.cn@gmail.com>
To: gregkh@linuxfoundation.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	william.wu@rock-chips.com,
	tim.chen@rock-chips.com,
	Frank Wang <frank.wang@rock-chips.com>
Subject: [PATCH] dt-bindings: usb: add rk3576 compatible to rockchip,dwc3
Date: Wed, 16 Oct 2024 16:32:24 +0800
Message-Id: <20241016083224.14839-1-frawang.cn@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_013233_447169_97073470 
X-CRM114-Status: UNSURE (   9.64  )
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

Add the compatible for the Rockchip RK3576 variant.

Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
---
 Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
index c4924113f9bde..a21cc098542d7 100644
--- a/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/rockchip,dwc3.yaml
@@ -27,6 +27,7 @@ select:
         enum:
           - rockchip,rk3328-dwc3
           - rockchip,rk3568-dwc3
+          - rockchip,rk3576-dwc3
           - rockchip,rk3588-dwc3
   required:
     - compatible
@@ -37,6 +38,7 @@ properties:
       - enum:
           - rockchip,rk3328-dwc3
           - rockchip,rk3568-dwc3
+          - rockchip,rk3576-dwc3
           - rockchip,rk3588-dwc3
       - const: snps,dwc3
 
@@ -113,7 +115,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: rockchip,rk3568-dwc3
+            enum:
+              - rockchip,rk3568-dwc3
+              - rockchip,rk3576-dwc3
     then:
       properties:
         clocks:
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
