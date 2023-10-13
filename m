Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71C97CDB482
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 18:39:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4WOP2x652DXmn7W0jqeb5ZrT64uEqfgsuuY3xGcbIHQ=; b=3RFnGHeoMAbXp+
	dzlYxIY4IGTfDeFK20uO3uos/rN/WR5vPHnZqMLkNJWAPJYjbHQ3mVa12IEnbF7ZCN3igGf41BVDv
	itl68wQUajIGpEksQAD2Qma7aKABWzZuzhAkPzNakJZSNMI5MLROMVaXCl3TcRinOeeTaXPT63B4w
	ZF6b4FgOvCNMfF6+HggmndXNKjt0L7Dyw8Dtz2la3LpETixbFXJrwYXVd18Dmm0FY0ytF+A1D5zHL
	fUk3SNepybtjG+UAGYjjWXsCvOGyBK8ZwlIRoTx/NeUmS88tKRzydGETIweCF9Jqfzt1vKYfPk25I
	+3VP8/UvgEewRaaS+73A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrN4P-0043xo-1p;
	Fri, 13 Oct 2023 18:39:33 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrN4L-0043uo-2w
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Oct 2023 18:39:31 +0000
Received: by mail-oi1-x235.google.com with SMTP id 5614622812f47-3af6cd01323so1426760b6e.3
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Oct 2023 11:39:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697222368; x=1697827168; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GXvtOEtJnfXimkkSuTA6yQu+NLR704L5IFi4fq/Sctw=;
        b=GoO7ld1eGYQ5D6nlGDyctCK+ruWRu2SnVAZmfGIUzECdBJ2amrnqh/Mhl6fQ0WjeIQ
         E6HfGHb/KIORWtdAus1qgNLkM73UOe5cjwVHb/+Ih3+tn9rt7W8sNxVj8hvdwT8XFu6c
         yI5fG6qy7Vtzs9jE7cXVi2lSKnqadLTTn8V3KCfpqJZlOh2TcsDBfbTVzHwMnLXAibon
         dzT9QKqlExHiRynct9V6i89ZKZuSG2F9OGwn3tNaz6u2HKWqPpOFViV0RY03YMzJ+M7X
         REv3ah1RnrSzgX+1btEfkVn+D/rCh2fCTH6nUs8T0AfW7PFG9D0pzEtT2Lw0KGBcT/Nv
         dcTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697222368; x=1697827168;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GXvtOEtJnfXimkkSuTA6yQu+NLR704L5IFi4fq/Sctw=;
        b=gYQjh57Xbup7XGRqcWGrtvDFF1m04rz1fpZHwdyntJgf92+NZGUZsgacW8tdiMmK+X
         BeVdaiqpbjOjGCUpuGQPHBae1oyLdJLsiqCQPNSwsGovtl2QfsanKp27DakR/InMNaYo
         s+7e0ge2BQF+Z4FxRARp0RDrGhKCoqUSvAJziA6f8U52Gv37gQM+UkvSDZvBJ8yoqUfL
         0gBjBSd9EO90QUx6ebfhjFUG0J3491M7/Sk0Ucb06C4WG3cyzm3ptWeiEbQThyrikByL
         5z+DCDZK+tsYpb6PRLviQ+I2R3fRuiPr+wY+TCG5AWY0B8W0C+NBunJzV4gN5Eyy8Heh
         E5xw==
X-Gm-Message-State: AOJu0Yyy46jyd/cSZi+Nj8VAKOtnCzEJrG/F4UprhS5hHKQUH4twBRIm
	Rtsfa8cABzedyxiwFUY2zVLYmcj3n7Y=
X-Google-Smtp-Source: AGHT+IHLCQbzkeoiVhX2wJ/317UY9cBFnl7g/HRg+swF0MvMpIM8vSagJfZ0IQEo3cfxpthCYJQz7g==
X-Received: by 2002:a05:6808:10ce:b0:3af:66ef:3566 with SMTP id s14-20020a05680810ce00b003af66ef3566mr37525952ois.33.1697222367844;
        Fri, 13 Oct 2023 11:39:27 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id bx19-20020a0568081b1300b003afe584ed4fsm842159oib.42.2023.10.13.11.39.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 11:39:27 -0700 (PDT)
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
Subject: [PATCH 4/5] dt-bindings: arm64: rockchip: add Powkiddy RGB30
Date: Fri, 13 Oct 2023 13:39:17 -0500
Message-Id: <20231013183918.225666-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231013183918.225666-1-macroalpha82@gmail.com>
References: <20231013183918.225666-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_113929_973338_CB5FAD32 
X-CRM114-Status: UNSURE (   8.31  )
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

The Powkiddy RGB30 is a portable handheld console from Powkiddy which
uses the Rockchip RK3566 SoC.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ca5389862887..a349bf4da6bc 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -669,6 +669,11 @@ properties:
           - const: pine64,soquartz
           - const: rockchip,rk3566
 
+      - description: Powkiddy RGB30
+        items:
+          - const: powkiddy,rgb30
+          - const: rockchip,rk3566
+
       - description: Radxa Compute Module 3(CM3)
         items:
           - enum:
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
