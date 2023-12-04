Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1A8D7C46CA3
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 18:57:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I4A5hNx/8AS97+grm4xIbtbzRy87vTSjvB50cSEZZxo=; b=JE9BFkhl8bcoOY
	nu/TD3xl2m4eTPjUuYLcXZBI9olOC+QVTEq8RTkFb9Xrr6y9Vt/9Z8vXkJ7kpJAaC+nqjI9M1sGfu
	qctVRvhPxS2emc4XcbjLkBnplkLZ2FDC/u6VgWqWNGKS1pFmrnDiKunp2aoJTBlEU06+azQ9Jas5Z
	+RxZ9fpd8S9X0RxazMwvOEbSvCnRqV4qh/kLuowU0TkSZ+DfbRpESlOXnELHw90RxoqJIKfuporua
	L/68nmoB/Vphj40nSxcPCCQsJOzCaPS/Vmmm9Hmwz4WUa9SKjNGpfYHufptwZVSFlWJrZI7vWK6Ji
	1EfsV5O5ur3S9OFhkCwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAE8O-005NsD-11;
	Mon, 04 Dec 2023 18:57:36 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAE8H-005NmR-1o
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Dec 2023 18:57:31 +0000
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-6d87501d6e6so2089339a34.1
        for <linux-rockchip@lists.infradead.org>; Mon, 04 Dec 2023 10:57:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701716248; x=1702321048; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sjmGxTzba5eWWMFHid+3cWm8jzHt4QZZbkOJ/mqzOBE=;
        b=WhDRFP+9fY8nSZG1bDUEg+mmOtkhjOf5FEN6CXFJGd1P5thzZAdYo5jGSbezZ8lD0c
         eqhPh6LmGD3oo8kXlCCwewbmNEFUKjHUAGtbPYy9SS8nL5eyghVYzBQsb2OwBpXeHuyM
         Writf88z8ojCucHhEXNF/0VoE0/63XT2TsesSDwlUHVi5PB8PJJcL8FGcWJZIDLdkDOh
         6NcNzyrvevlSyq7POyr67f9rvMpXKBgTGVvS3JHvOh9L0tGrAAxNu2GNZAIw9wm0c81W
         iQvfSwfN1t0x9Pls3zPfP8HrB319W8bHd+x0Ws/nGh8/gNSwmiS9kvYOGuJqkFhE5z1J
         Q7Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701716248; x=1702321048;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sjmGxTzba5eWWMFHid+3cWm8jzHt4QZZbkOJ/mqzOBE=;
        b=Yy862hlPfQjkW5haOrLmGGmm2nojmoq4dnCeihdO5+1NI4q0DU2paY4nAy6Ww4FBB0
         QHO0fNoMAl50tMI7mFQRzaMLlFTL0VvwEKN2rfJGXvOXUcxvDUwFRZ0g0rN/0rM2qA3t
         Y1K4UjjF8xyuIp/Bs9H5TObIHmCMrFhhLSfcs710c2xPpTOG5QmUkUwS6LdWFWvPPWGO
         xG8FPjdPFgNBMunSj0r+DSerjHDUER32r/M74KXJGLCnStIZIIatYFdFpzIgyRp0TU7u
         xROJViFYztY3Oot9PpM7PfaT2Lbd1Xu/bh4v29m4TN+HYCnZfz1bu3pAjmhTEcXWdadR
         i/SQ==
X-Gm-Message-State: AOJu0YxXFQ7WL0AnjeafBJCkGOi9B2DlztZ4eHwj2XeJzgrH8UQRcDHm
	+y1QUifbRX0kMX+oGTtgDrshRYII1X8=
X-Google-Smtp-Source: AGHT+IHzaTHpQ8Ye62P0QKbQwCJqXbRnvbwicXwZ+oGcJTkA78/3+GN9vTij/qu8kdADwpJVxnvYZg==
X-Received: by 2002:a9d:6f82:0:b0:6d8:7afe:7867 with SMTP id h2-20020a9d6f82000000b006d87afe7867mr3604849otq.73.1701716248278;
        Mon, 04 Dec 2023 10:57:28 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id y25-20020a4a2d19000000b00581fc1af0a7sm2073303ooy.28.2023.12.04.10.57.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 10:57:28 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	javierm@redhat.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH V2 03/10] dt-bindings: display: Document Himax HX8394 panel rotation
Date: Mon,  4 Dec 2023 12:57:12 -0600
Message-Id: <20231204185719.569021-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231204185719.569021-1-macroalpha82@gmail.com>
References: <20231204185719.569021-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_105730_182838_7B17FC97 
X-CRM114-Status: UNSURE (   7.94  )
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

Document panel rotation for Himax HX8394 display panel.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/display/panel/himax,hx8394.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
index ffb35288ffbb..3096debca55c 100644
--- a/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
+++ b/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
@@ -31,6 +31,8 @@ properties:
 
   backlight: true
 
+  rotation: true
+
   port: true
 
   vcc-supply:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
