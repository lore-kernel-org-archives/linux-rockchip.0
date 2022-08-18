Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 911A8C00140
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 13:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CwszjvZWl3d+6dTOUG/wRO3D+/ExD8j5hyO9nEzAjV0=; b=ypmRC0eNQsTC10
	xm/jBAxuXzMWjZxsG6ryVnDqcePhfjnFnKprIA4YauhV7K3/vmdXqY5LHhMbXFyuMgCcbYZjal948
	MtW3ylqI2eSqahxYpWZAAoq+GZx2ygz9B6yrD9FLHRqN7ARK+KCioQ/HnQf6Unca3ho/g8e+I1ZoP
	7QH4+WQEgyCjLwF3NkgD63LpXYuAbMcyYLD5A5vVwVy8KVu7EMpKrv3A0sVMYXvAiHDiLZQr8E5ml
	4AJRUen0WHST8q6uZ4VfEsWb0Kc8hG6Cf9xqWtmhXRx7R8c48gkSV1zeTK5stkG50mvRbNcr5T7IZ
	f8J3ItbGwxWo17R9SH0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOfPt-005Fdr-RS; Thu, 18 Aug 2022 13:18:33 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOerH-004k2X-28
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 12:42:48 +0000
Received: by mail-pf1-x42c.google.com with SMTP id f28so1438950pfk.1
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Aug 2022 05:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=nyMFYBFNwQgfUJo8aIpcsIvMAA1mOd7JoPeq6ALhj+0=;
        b=ttgf1oDl7SLpeNziJyAubkb+VW91M6iEJt7G0MoleIBG3ERc0vlcIre2xzoRg1NEKc
         cDbet6kGM/zKAUuQ0sSO9NqFMxnKGskBpkpHifAKi+6IfgiJcq5cn88zaxJTi/kv8Bbe
         1pOeGZQm4w+KE8b6z0GAAZ0hhZPQpCU3gGAaexh7OmQu+qMduev1GNDnCwM+eg2DeLb7
         2y3ceb9ruvHn5BEGfld/yQ7yVDIAquLFyvnolKn+aBCz4T1J49ztvy3Y2mrKL20wIZMW
         b+jHI3x+xrHwmq084XT9TQugMXZqGMo2KyyMGawq88l1cGp0lwFTO030cUIXZBTyRrxA
         RgRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=nyMFYBFNwQgfUJo8aIpcsIvMAA1mOd7JoPeq6ALhj+0=;
        b=1faLSy20b3vSwfdz3LiWQXAvmc1XvvuDeZgq+XKBRjKduRc2WyrDKLt7N7ByTFDNtB
         Gjw6W85EwUIqkSks8NjsqAiVIDjTPuW43Vb4WbPeB3i9DG1+wbh9ytAUdD2FLOclE59V
         vDGMrOsDfaUCTm+LKC/2GaXLLlsGuBm4uS6ejXN2ZXFncClQTLzoq9LvdLtIbu8Ia9Q1
         4oDd7PxHDD2fyXsmkN5VlSDz5UhAK0f8fleqa3XBkSQOSt1Hf4Fg/I/Ez0YOlP//0aL+
         siob8e2svcjmOXG2tiLXJpPM4GBDicQd0ZplPKHGWoibn/vOOcBbo4UtYDakadrdWXj8
         C3kw==
X-Gm-Message-State: ACgBeo1sGHjQ0Wgb/aMnq/fYMKPBtCo54oxlqTujFmsSMlnluJJm8gol
	h99L4BZcf4SsdomSL/GARPhTdA==
X-Google-Smtp-Source: AA6agR6X7yqIO3TyB80Qts6x29A1FY7WXz5aeCcrXm+ZdTjzeWuDEtzOLYR0GO3/3sYdc95ar1u/+g==
X-Received: by 2002:a05:6a00:810:b0:52e:7dc8:c868 with SMTP id m16-20020a056a00081000b0052e7dc8c868mr2814286pfk.36.1660826566658;
        Thu, 18 Aug 2022 05:42:46 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:d1c4:8ea9:aedc:add1])
        by smtp.gmail.com with ESMTPSA id x6-20020aa78f06000000b005302cef1684sm1495651pfr.34.2022.08.18.05.42.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:42:46 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v3 17/19] dt-bindings: arm: rockchip: Add Edgeble AI Edge Compute Module 0 Carrier
Date: Thu, 18 Aug 2022 18:11:30 +0530
Message-Id: <20220818124132.125304-18-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220818124132.125304-1-jagan@edgeble.ai>
References: <20220818124132.125304-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_054247_165889_0B914281 
X-CRM114-Status: UNSURE (   9.33  )
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

Edge Compute Module 0 is a 96boards SoM-CB compute module based
on Rockchip RV1126 from Edgeble AI.

Edge Compute Module 0 Carrier board is an industrial form factor
evaluation board from Edgeble AI.

Edge Compute Module 0 needs to mount on top of this evaluation board
for creating complete Edge Compute Module 0 Carrier board.

Add dt-bindings for it.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v3:
- none
Changes for v2:
- collect Ron ack

 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index cf9eb1e8326a..2a4b7f2d018f 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -65,6 +65,12 @@ properties:
           - const: chipspark,rayeager-px2
           - const: rockchip,rk3066a
 
+      - description: Edgeble AI Edge Compute Module 0 SoM based boards
+        items:
+          - const: edgeble,edge-compute-module-0-carrier  # Edgeble AI Edge Compute Module 0 Carrier
+          - const: edgeble,edge-compute-module-0          # Edgeble AI Edge Compute Module 0 SoM
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
