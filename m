Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2C15C072A2
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Nov 2023 20:25:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xd8AlH8XgKUXpAo7Z6gjuEdVditPCuthWaz/3SsLKMk=; b=BzuKa/DBm8qVFv
	6AWH6rdCTlnK3vrnbVDAT6nC1scwR+7DpHkoifyL0Y/QezRbKz1Q9f5goxgFxMJtm1c7HHW+uVF6j
	Lqg46WHBXFID/JmLNQzon827T3LvUxJdR+LhbrniLdNX9vPPu5gKKsAFwS4gw9N/AVhs3hI0zDHtt
	ddI81nfcHkf4HEiiP/zIIx0WygrxrtEr6p4igxs3bPoLJy9ethc1opxNJ+HxY3+huiqvgsbIi7XfS
	s51q7hPclcQ/jU8h41T5AC6bmOTacL9hKKcXZ83C8n1yT4lONbZ3X99eW6XNcyQIyQTzJizC/ZFwg
	9orMT4bkOkICsjBObwjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r45PS-007Em4-2n;
	Fri, 17 Nov 2023 20:25:50 +0000
Received: from mail-oa1-x32.google.com ([2001:4860:4864:20::32])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r45PO-007Eiv-07
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Nov 2023 20:25:48 +0000
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-1f060e059a3so1314465fac.1
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Nov 2023 12:25:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700252743; x=1700857543; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+Tc3YJAqfIqDTHuog1Hz5PnyAu42zB2xLiKNLYokXpM=;
        b=I+6zS/O5Oe+Gjqk7RqEQrbfLh2u2nGhBRkSFjMuDvv6NMKQ2sBpM4JCeTQYdVsayPW
         4VGveSEh5uBhHIXTshsVH+gn07Bmfclh/2K6RzCYyIBpQcfDYjxzOD9O7T7vC4acTPat
         VsKqlOEO2GmIzq5zGhKto1jZ3PpZaSkJZW6p5dBjsUZwjCsxr+WKypj68pbKO33n5Lj6
         kQI6NNFa7Zzu7JrSGj1zBpTdowyq1YxSk0JOgW98Q/6Wm868AzZsXaXQHig8e2SAFwxG
         lxkThk2tcWVMR40dGgUZkXXb7X10hyQOV2jwj5S2VpV1jAl52XRzqG1c4NcE/GB+dZUw
         p86Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252743; x=1700857543;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Tc3YJAqfIqDTHuog1Hz5PnyAu42zB2xLiKNLYokXpM=;
        b=ZUqIpWUsWAxCoTcwtm6dsB9MwdU4CK70yhibhoCxwXPbLV0ipP6cCW7Uz8dNRYdCXL
         z0mpwBjJcBrCBprH3U/YHUZ4WStQE+DInpSQIvoz/rrs3AfoXv1KLiIUtBQbyQR6Jh9m
         6wGZ/1VC8mr138FfZeekYSh0m6RIVBCTMk4XjkIQHDzOnsky4Vxpp8dDmfFnvjPJTgsn
         hOM1LowNovzzT5LCUkjWXosPlsdFvJn5aHUm/uvkmYgNqjYyThmEOTR5ylUKcW4GVecG
         9eZpzM16gnjqh08p8K//+z4RqejNRuCrKzjHSM9M0+1m2r4lP7AYmMCnMIl/WrJhXjoE
         5byQ==
X-Gm-Message-State: AOJu0YwayIXiTs8nDgR3UJPtvNlxsiITYGTvyDVUNf9JoliU5PcOiNox
	8hT0OKuIsZP5JOeXKcUfXj9xHof4rWI=
X-Google-Smtp-Source: AGHT+IEHoOP4KG6sep1RoF8BKJ7xem7Us4jx8tSEguQQKOH9EyMYtcn02oN65SfolT+ioZ9UrwWksw==
X-Received: by 2002:a05:6870:14d6:b0:1e9:ba96:272e with SMTP id l22-20020a05687014d600b001e9ba96272emr316461oab.10.1700252743562;
        Fri, 17 Nov 2023 12:25:43 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id zf15-20020a0568716a8f00b001f224cbbde1sm390543oab.41.2023.11.17.12.25.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:25:43 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH V4 4/6] dt-bindings: arm: rockchip: Add Powkiddy RK2023
Date: Fri, 17 Nov 2023 14:25:34 -0600
Message-Id: <20231117202536.1387815-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231117202536.1387815-1-macroalpha82@gmail.com>
References: <20231117202536.1387815-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231117_122546_072785_0A8D7891 
X-CRM114-Status: UNSURE (   8.71  )
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

The Powkiddy RK2023 is a handheld gaming device made by Powkiddy and
powered by the Rockchip RK3566 SoC. Group the Powkiddy RK3566 based
devices together as they are both extremely similar.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5f7c6c4aad8f..5b015c4ed775 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -674,9 +674,11 @@ properties:
           - const: pine64,soquartz
           - const: rockchip,rk3566
 
-      - description: Powkiddy RGB30
+      - description: Powkiddy RK3566 Handheld Gaming Console
         items:
-          - const: powkiddy,rgb30
+          - enum:
+              - powkiddy,rgb30
+              - powkiddy,rk2023
           - const: rockchip,rk3566
 
       - description: Radxa Compute Module 3(CM3)
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
