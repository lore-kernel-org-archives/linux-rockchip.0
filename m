Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93EF9C00140
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 13:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rj+TXFtBzjUM3Itr2ic02V0zy7d+trxPJ0Z31zxI93o=; b=G0Qd0w2BfkR65Q
	4m5G/lnassGpGEkWADXSCsVA6JdpkMdmhk83Ivh7C2at0BVz/kAOC678P6+bztnX7VpC31SVn8S4P
	hKufFBp/Dr04BtAzykRgJ/fGiKKbPz0ze/uCtS8MxIciBwXNKG5A5MBOmrIhJ257o+Mh2pYIw11AA
	ebvEdAsLzftl6CiRZu9d4zS2dqZOUUCxH+AocqQ0bcOgvCuMwygcTzEjk0D7Hf37uhaxustEfZdqQ
	5mDZ+yzHqRuRCSfl4liZs2FpdLgExPqRscmUAQKVbpkkfDVUm/0UKR7mZ3fz8sZ2N80xK2Qkc5h1a
	LLrlfpScHiApgbxPiJiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOfBP-0051BS-RC; Thu, 18 Aug 2022 13:03:36 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOeqT-004jsG-Pj
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 12:41:59 +0000
Received: by mail-pj1-x1035.google.com with SMTP id bf22so1561244pjb.4
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Aug 2022 05:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=w/eIG11HHSnHg0ClN4e35qvxOOPPs892T3rhZJVGces=;
        b=X+mH7okP3xyZbOuE0g8cVVwFKuAZNBngzPz+k0c2qtGUFhM6fqqDRF8xJ6qW56M1l+
         GZ/9HwwXRhD9zITmYPVfLRl/ORjxf7UdlpIPAV3EJ9OM3X1VKT4+oeocmKZWFA6Ixp0k
         gOexNZZ8YlKGxm2f/L6OS3CvHb4eIhFj9B6hWEfurxt3fL5/J5ofFCubKhRK6D4Pp+3q
         cAv5fEXoc0htBvl2Jjac+U1NiK37KuQE6xfBlK1ostArXv4dlSJOnJu7QFOXfSwSNfec
         aCzBtlzVDQ9j3BUPErFoXR15+IcYVTYHP/uLMsOtIYRSXBeUKhdw2QgHl7DdGQxKFThw
         7KKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=w/eIG11HHSnHg0ClN4e35qvxOOPPs892T3rhZJVGces=;
        b=IaKK2O+tDy+ucSrHf8MRhkLbY7eed8MVXrGTKmM1SSPZJUpDvTubNjD4PXuXqqtRMF
         7SAKh5gi95qpWL6bTo6QffHEgOqo46cT1StZiyZ9hL8zeY9FJw5ku9M5NERTOgMzTdK6
         BtJ4Oa3LD4IHZJbUdt9ninxfonlkEh+MlD+4KFfyD+QKIr2Q95eHUD+iNjHbtN2w70SL
         YWG0uU2qbdbnVno4kINA+x246qWCGWb/fmaPaQQ4rzVWpA91RUWcdf8eYY9JLbwMJa8Y
         WTnf61TwXaABz2FzAvSlfLCO3tHxdcuVJAEsBGs1DZiW+t7uAAowUZv3au6MwGQA8HJ6
         L54g==
X-Gm-Message-State: ACgBeo2fVs/sYfDcm3gxZUMbvWN/UtvnY5cCvcCNVTMQTvWlYEnF9H4e
	YYBtS8WOQ76bQZ6VtfdLTmjJEA==
X-Google-Smtp-Source: AA6agR6kkqhmJQX/A/6dDjZKfTS2xgHClQTRwauF/VDRGSG5xa1bT3Ck5d7kHTD6dVfmJYfDrq7XQQ==
X-Received: by 2002:a17:90b:1b4a:b0:1f5:5578:6398 with SMTP id nv10-20020a17090b1b4a00b001f555786398mr2945319pjb.122.1660826514927;
        Thu, 18 Aug 2022 05:41:54 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:d1c4:8ea9:aedc:add1])
        by smtp.gmail.com with ESMTPSA id x6-20020aa78f06000000b005302cef1684sm1495651pfr.34.2022.08.18.05.41.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:41:54 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 04/19] dt-bindings: power: rockchip: Document RV1126 PMU IO domains
Date: Thu, 18 Aug 2022 18:11:17 +0530
Message-Id: <20220818124132.125304-5-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220818124132.125304-1-jagan@edgeble.ai>
References: <20220818124132.125304-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_054157_931335_89F61CD5 
X-CRM114-Status: UNSURE (   8.94  )
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

Document dt-bindings for RV1126 PMU IO domains.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v3:
- none
Changes for v2:
- collect Krzysztof review-tag

 .../bindings/power/rockchip-io-domain.yaml    | 30 +++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml b/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml
index 1727bf108979..d71fc72d4464 100644
--- a/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml
+++ b/Documentation/devicetree/bindings/power/rockchip-io-domain.yaml
@@ -58,6 +58,7 @@ properties:
       - rockchip,rk3568-pmu-io-voltage-domain
       - rockchip,rv1108-io-voltage-domain
       - rockchip,rv1108-pmu-io-voltage-domain
+      - rockchip,rv1126-pmu-io-voltage-domain
 
 required:
   - compatible
@@ -78,6 +79,7 @@ allOf:
   - $ref: "#/$defs/rk3568-pmu"
   - $ref: "#/$defs/rv1108"
   - $ref: "#/$defs/rv1108-pmu"
+  - $ref: "#/$defs/rv1126-pmu"
 
 $defs:
   px30:
@@ -344,6 +346,34 @@ $defs:
         pmu-supply:
           description: The supply connected to PMUIO_VDD.
 
+  rv1126-pmu:
+    if:
+      properties:
+        compatible:
+          contains:
+            const: rockchip,rv1126-pmu-io-voltage-domain
+
+    then:
+      properties:
+        vccio1-supply:
+          description: The supply connected to VCCIO1.
+        vccio2-supply:
+          description: The supply connected to VCCIO2.
+        vccio3-supply:
+          description: The supply connected to VCCIO3.
+        vccio4-supply:
+          description: The supply connected to VCCIO4.
+        vccio5-supply:
+          description: The supply connected to VCCIO5.
+        vccio6-supply:
+          description: The supply connected to VCCIO6.
+        vccio7-supply:
+          description: The supply connected to VCCIO7.
+        pmuio0-supply:
+          description: The supply connected to PMUIO0.
+        pmuio1-supply:
+          description: The supply connected to PMUIO1.
+
 examples:
   - |
     io-domains {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
