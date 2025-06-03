Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0748C5AD49
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Jun 2025 19:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dANgNDc8CELIa11HFqZ6daFLVhi1dkhd7bXoy/jGPDs=; b=sjt7hZqwuWEFiN
	0WHl5sJXDrAs/9y6lq5WDlWQYEYV05/4iz6CnQwAfXd5Eim03BQ8KHtgL+ew8Muf8vWCru5f7N4cf
	okzeNAQqI6DIl1oxAx+VqrIg7WyFwjkdd8JcVEf/7RCJy4V9iAF0Oucxrql4WJ8Nu+CwqXf7nbiVM
	qAedPATIXwj09aobavmy05Y75+MdYXktIS8Ww0oJw7O8zuvZLtWA6aojLMxJtaELUkvor6c5hhtxb
	CRVd+iTr3Y4adRYxXb8gRdjbbfU2JO5Z6nDxT1ohbHaZWUtenqOEzhlbfEIBX3hGp17haHsL+rNQr
	9xaJyZy1wSxyjqIiAjyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMXWN-0000000BjEP-3HkH;
	Tue, 03 Jun 2025 19:42:03 +0000
Received: from mail-ot1-x32d.google.com ([2607:f8b0:4864:20::32d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMXWL-0000000BjCw-2fJX
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Jun 2025 19:42:03 +0000
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-735a6faec9eso3520685a34.3
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Jun 2025 12:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748979720; x=1749584520; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XjzLPAsqasz0SsRAqSr7Vzo2ligN562NWSmZO1lw4nU=;
        b=boXQnXyy5xib20IC6TRvveML3lA4/YINTYEjK3uz0mDGGYvYjpOwey3E7TDZbVYhqt
         /xcASO4oyexcXocZN60xbrG4/9ab4QzAwbqS7otAynGjlzgq/hIfmNslqmPsj9TL1lXf
         E4+sGyYvLF24FX0I8VoLFHldSJZdlChsdV//6lMDuupnfX6M9FYqcbzDfJ0IILIAiYbk
         L/ttzALa3Q5iVfBOxrkVWhcUMsOeEBqvuZKvkTuGfoPIC1D4rOdKVTLqi237DBF/vrij
         AoLpFEhPmxR1oCS+MgQXMXXSpfdl8Bw8xzyVB+9lVeMpsKPFiv0gRKgEbLrZxK8Rfp5N
         jbyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748979720; x=1749584520;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XjzLPAsqasz0SsRAqSr7Vzo2ligN562NWSmZO1lw4nU=;
        b=ezpBtJSPUBd/Tf1dIfhl3a/VWmgABdR0nSUSqLcLDuvgAneMI4MakNSgSgj8F0Obsz
         gLUBZJBVAbmwdgtYIfVJPqGj1lxbTuMysUvDXxupl56q4WiFErp6bg8eFjHYEeVunQrx
         sfVAE1aqqeHQ7Qg1NniXQTKwoYctnQvak7x8x+CXEAhX5RxQSEZsMnteDnsxXBWrPYCx
         nZgSfTvqIzdsSz/qKUnz94N+yoQe9h7OETG/cPKCn0WwlyXjl7EF++YAsTZAqo5sGK4o
         Z9WuiyPY7sAiWMA5Zj4USZ4Wivk7G4OrAdFfJjK2VnHkOrMqzrAEL9P2Lx6kBNPGIJKR
         j0cQ==
X-Gm-Message-State: AOJu0YwlPDGngnLVuyTIMgwg6ZiNwIR2Z1h4EiInc6b6q9ttoVUjr7Nc
	TiOCExJirGxerAdxeToe0zrhl7JB2HHVWm5uq9haWamZMLtHFp8iQdfP
X-Gm-Gg: ASbGncvCcs3rZmKNKFlU2Tb3NRZKWiyA5q1lt6TshKLbauLIKNiH1aG1mP760Qu8X1E
	GNPYV84X+YsAQOYIsOCOYPXgEkKQAIDL6DKo4dEhZCoaSJ+QyE534Olh4HvkG0SyhT2mLLDjpG5
	iGCOrle2B6kU2a3VGCj5m+b51c0dldBwsPB3THjf6qMJMWlMxHZ7yl4Hyvykg8Gw6Z1i8EwYN9W
	llTniebEvMsluf7a2WtPFMP1I6j0Otz07LvbT13zO1hkg8IPspNESxRlTPVMzW1OucxA+ysabeP
	OQSomnuoVveoULr179yGzLEvnnORs+CYzcVlh9JUzxw/w5I4hVk6NAVKW1YthJ82EKu6WbkJHre
	u2IlUzA==
X-Google-Smtp-Source: AGHT+IGEdqI2TCTVkK8o7agajIP4kfms0UAr6s+D6iGNsRfQhvMcgU7dK7DNcXKDtlDRpdBJDSTayg==
X-Received: by 2002:a05:6830:d13:b0:72b:9f17:1da0 with SMTP id 46e09a7af769-73869c39496mr299430a34.7.1748979720415;
        Tue, 03 Jun 2025 12:42:00 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf:d19a:d10c:4358:1346])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-60c14c88f96sm1967615eaf.17.2025.06.03.12.41.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Jun 2025 12:42:00 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	simona@ffwll.ch,
	airlied@gmail.com,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	javierm@redhat.com,
	megi@xff.cz,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/4] dt-bindings: display: himax-hx8394: Add Huiling hl055fhav028c
Date: Tue,  3 Jun 2025 14:39:28 -0500
Message-ID: <20250603193930.323607-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250603193930.323607-1-macroalpha82@gmail.com>
References: <20250603193930.323607-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250603_124201_675551_72E982D7 
X-CRM114-Status: GOOD (  11.30  )
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

Add compatible string for the Huiling hl055fhav028c. This panel is
based on the Himax HX8399C display controller which is extremely
similar to the existing HX8394. Add a new constant for
himax,hx8399c for this new display controller as well.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../bindings/display/panel/himax,hx8394.yaml    | 17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
index 75ccabff308b..5725a587e35c 100644
--- a/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
@@ -17,12 +17,17 @@ description:
 
 properties:
   compatible:
-    items:
-      - enum:
-          - hannstar,hsd060bhw4
-          - microchip,ac40t08a-mipi-panel
-          - powkiddy,x55-panel
-      - const: himax,hx8394
+    oneOf:
+      - items:
+          - enum:
+              - hannstar,hsd060bhw4
+              - microchip,ac40t08a-mipi-panel
+              - powkiddy,x55-panel
+          - const: himax,hx8394
+      - items:
+          - enum:
+              - huiling,hl055fhav028c
+          - const: himax,hx8399c
 
   reg:
     maxItems: 1
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
