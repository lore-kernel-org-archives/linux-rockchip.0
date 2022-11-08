Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4CEFC433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Nov 2022 04:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=otBhAOmlGR4N4uwWA1U98y9wGGpHOFEATFBFuKS/cO4=; b=aMcMJuiT2NDY6U
	NNA3VpiXzzH6Bfa9WI5iLegb51Gq0zBQbtz+nJlmZK0sELwnbziaUWDoJiguSpL4hXW63RQLBBAfo
	ubAbpudr9+rw8dSRBVbruCiUm9oxCEOK/Ip+O2b6Qkco5fILZtID2ljcrAg42Qp2iAlWyFcP3WCtn
	oNdf2UZr/J6cqSIYQB/iwTC3z29WoVFM17D4SingVNF3G6bO5M46JzwsJUzpnhkGiDE5Hs2VjdliX
	wyAmRBkBUFfoNW/3ByHaq4h8saxG64YaxLJLaKpaq0dlooDfEQfnHqbYGO6A6cl6nASHDTXjM2uWy
	7DmsVgXNlGCZT7olNb1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osG2M-002bNk-IS; Tue, 08 Nov 2022 04:16:34 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1osG11-002aPN-Q7
	for linux-rockchip@lists.infradead.org; Tue, 08 Nov 2022 04:15:13 +0000
Received: by mail-pg1-x536.google.com with SMTP id 6so4220200pgm.6
        for <linux-rockchip@lists.infradead.org>; Mon, 07 Nov 2022 20:15:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6eA4MJ/qoMP/W5SydwhxRhNTGiKKsFvgB72Epz7yqRE=;
        b=gsYUEWLJX04V2A/ruH1eDUIOiysfNa3NMn0XreSSVrEWc2eB0pcbqyyQyYPFb87nkG
         1URIrVAhMGFWzkFSjiDP6+Qj9628vlsBYSITl2fD4cjePrmszhdIkFX4tX6Cmdo11J4W
         JH3s1ti+dHkpgRo7PZxRHBQGMs76PwG0YnYm2eylFdhdhrJ1b15SPPl928aQRF72SIUA
         YL9RfSEw9XKb/dDIpv/8ihXA3EQHraBDC9oeO/VCVCHCSAw7n8INtt8FBkaQbBIkU7zn
         F1g/I8AtwgODJ8HhD3FTyLRBFU9FqEyjSo7QaY0P4k5PExqBkIF4UYIt4O+0ZdtPpTxC
         v+9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6eA4MJ/qoMP/W5SydwhxRhNTGiKKsFvgB72Epz7yqRE=;
        b=QYIvOwT6DWCKbipahpgF4dkqbQqPJsWNVZnULfYU7sxJPZIkW0W57Lcdfx55OjVKLh
         25Zx1ZIEG4ULlP4BkC+yZk51TQE839NojJr7AyAxv63Q4RcrNMyJzUYEj2ojS5KjaeGc
         MGn0tUd9+o9K4LJIhsf36su4yQqMjPui1bhjHodsVLyomTUr7UIRHhHVh+nHJKJMXEhY
         niBZo44SsuCdnoez9UwDNvP+/bsoaB3AOC7ZPvZ9Emq1H5riSsoSinH/RaUN0klCqj0j
         ctSfOuqDQPgP0vEG8sqVLE5jaXOo9S5xBG8dIF+zqA7yD6b9YyWI8kFzs3K9MSa1CWxY
         flNg==
X-Gm-Message-State: ACrzQf1kV9RF6lQGueRyAlBRKNPGLQXaIsjoJpuhTQhmcnhsaY3/yFzz
	dAQG4IJzIX3TU+7hnF/xPq4duw==
X-Google-Smtp-Source: AMsMyM4kzy7ZFvcAOfDTWkdOWLdymXVXgyYs7V+o6zwMxpKpLJp0wKVnncWZ8IveoewLHgHRflPCCQ==
X-Received: by 2002:a63:c65:0:b0:470:cb4:aca3 with SMTP id 37-20020a630c65000000b004700cb4aca3mr25383910pgm.389.1667880911428;
        Mon, 07 Nov 2022 20:15:11 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:63d1:2564:ea55:4e97])
        by smtp.gmail.com with ESMTPSA id e5-20020a170902b78500b00186ac812ab0sm5799783pls.83.2022.11.07.20.15.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 20:15:11 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Johan Jonker <jbx6244@gmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v7 08/10] dt-bindings: arm: rockchip: Add Edgeble Neural Compute Module 2
Date: Tue,  8 Nov 2022 09:43:58 +0530
Message-Id: <20221108041400.157052-9-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221108041400.157052-1-jagan@edgeble.ai>
References: <20221108041400.157052-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221107_201511_900043_C6A19F69 
X-CRM114-Status: UNSURE (   9.23  )
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

Neural Compute Module 2(Neu2) is a 96boards SoM-CB compute module
based on Rockchip RV1126 from Edgeble AI.

Edgeble Neural Compute Module 2(Neu2) IO board is an industrial
form factor evaluation board from Edgeble AI.

Neu2 needs to mount on top of this IO board in order to create complete
Edgeble Neural Compute Module 2(Neu2) IO platform.

Add dt-bindings for it.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v7:
- collect Rob Ack
Changes for v6:
- updated SOM and Carrier name

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 244c42eaae8c..26fdd205a899 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -85,6 +85,12 @@ properties:
           - const: chipspark,rayeager-px2
           - const: rockchip,rk3066a
 
+      - description: Edgeble Neural Compute Module 2(Neu2) SoM based boards
+        items:
+          - const: edgeble,neural-compute-module-2-io   # Edgeble Neural Compute Module 2 IO Board
+          - const: edgeble,neural-compute-module-2      # Edgeble Neural Compute Module 2 SoM
+          - const: rockchip,rv1126
+
       - description: Elgin RV1108 R1
         items:
           - const: elgin,rv1108-r1
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
