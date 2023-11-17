Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68CC7C5AD4C
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Nov 2023 20:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=243wlMYfzUN7Z7KaWVgN3joTNut+1bGcXhBIeSfp3/M=; b=KLGSNJ9PNXZDCp
	WAH1cTUwRTh/4So3o+x1P8EKjH2ITcJ693E9AHRxyU1sicEtJPWRudHJKDQY+gkfn8nuPI5uQv2EX
	qBLv4+j9Ly31Yqg6wptW4dHKW1mt6T139SUHbVCZH9Ba/R1x77ZbnBTKAIqEwsedULSwVFgPm6rXC
	rwauZ2FbH+RmX6naL9aYLkGe+/C+8nuCPU8mpl9W4zKStoW2RCeeHWWeJZe4YBxQ7XbwerDmkJVdL
	kOMcvU97bkMs1I1PaXwjUV7JDvJPYqV5seqMl64CTtsg26NTDX+ptHiq5b5QpMK+401t/jRBQ0dx9
	5BGfc4MbsxRvce3dtHPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r45PQ-007EkZ-0x;
	Fri, 17 Nov 2023 20:25:48 +0000
Received: from mail-oa1-x35.google.com ([2001:4860:4864:20::35])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r45PN-007Eih-0K
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Nov 2023 20:25:46 +0000
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-1f00b95dc43so1269293fac.3
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Nov 2023 12:25:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700252741; x=1700857541; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zdohJSSxu6R2IQkqngPHjD/jgRugE1Q5UgLSO6dMmUE=;
        b=UJw38HJcJduDQaTW7K5k+2gAVd6U4o7GN2VdrvLyLh1JzqkO3Ec9OyBn/EDv86+tHN
         HaRlRlaaK5RVisi5qBXpHvYbloyt7aP0m7EsEcuIV7l1/TddnDBjWxHNth8YJ50YqH0Z
         UYsnLL6vFMJuJoFSO3PBdf4dXbagPchtYrSM7mm4DxlSPozI1TNU5QWdu7PEEpn3CDBo
         OUd+xLM7LQghtsIc6AMRvaq9YOvwf8XzAi3OT0bcIXZ/j/jYjMdoHxGeWbysKFsMGQvD
         U1WlQDGqIYq1sSlQr/pTmiUfHmUsj/YREF3xxVrJjutHNoamEePVcZrCuN1D76jcZiCE
         tElQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700252741; x=1700857541;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zdohJSSxu6R2IQkqngPHjD/jgRugE1Q5UgLSO6dMmUE=;
        b=kJt1xepRCBkCt6uWRikyxZ2XRQ7tkw6TQL5L7m0xKSK80w66RaBb31uJ+1+HK32X+M
         fNCxBU42CJb68Ay3roeDy0CHf4OE2Eza34cpDLYB56iDUNut3WniW9xmYcFNXtFXkJHQ
         nh3Tyy5ueYeqrHffOy3+4JuoXN1v/2KSou6wC+8Mkmoh5oYdXC+sIwELuvOt3IoCLRk2
         PPtVZskCcAmKuEFzyw1kjDrlxf4k8LSjvpOayMLrTFo97KVV7tHJi4G+irCEw8H/sbNK
         rgiafCQFdth4Zo1T/X/3BTFRJ09N2ow6ELItsyjYl9T8RDeZi6yBvfbHv1/TKSob72Q+
         nSyQ==
X-Gm-Message-State: AOJu0YydCZe6QngYg3q44IvzFPySAJDcK+XutIk6Z7NmIBNG1IBwBgvK
	3w+sFq9aA67CqCwIXSqi6030ji2RXQ0=
X-Google-Smtp-Source: AGHT+IF/yt9dEaZWhi4mZicImR1N5hTEhB+CzKcWKeOzEjkanoOQZ9pV2ESy2ImEevPX82DHfviYSw==
X-Received: by 2002:a05:6870:9c8a:b0:1dd:4271:3a88 with SMTP id pq10-20020a0568709c8a00b001dd42713a88mr267739oab.58.1700252741658;
        Fri, 17 Nov 2023 12:25:41 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id zf15-20020a0568716a8f00b001f224cbbde1sm390543oab.41.2023.11.17.12.25.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Nov 2023 12:25:41 -0800 (PST)
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
Subject: [PATCH V4 1/6] dt-bindings: display: nv3051d: Update NewVision NV3051D compatibles
Date: Fri, 17 Nov 2023 14:25:31 -0600
Message-Id: <20231117202536.1387815-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231117202536.1387815-1-macroalpha82@gmail.com>
References: <20231117202536.1387815-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231117_122545_162825_30EC51B4 
X-CRM114-Status: GOOD (  11.38  )
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

Update the NewVision NV3051D compatible strings by adding a new panel,
the powkiddy,rk2023-panel, and removing another entry, the
anbernic,rg353v-panel.

The rk2023-panel is similar to the rg353p-panel but has slightly
different timings so it needs a new string.

The rg353v-panel is duplicate to the rg353p-panel, so remove it. No
current devices use it and changes to the driver mean it is no longer
valid as a compatible string.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/display/panel/newvision,nv3051d.yaml    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
index cce775a87f87..7a634fbc465e 100644
--- a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
+++ b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
@@ -21,7 +21,7 @@ properties:
       - enum:
           - anbernic,rg351v-panel
           - anbernic,rg353p-panel
-          - anbernic,rg353v-panel
+          - powkiddy,rk2023-panel
       - const: newvision,nv3051d
 
   reg: true
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
