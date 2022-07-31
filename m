Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6401C19F2B
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Jul 2022 17:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gox3/NgbFCPwTtdPPm4T6s3+ssnR+l34nPe+a1iOYI0=; b=dR/f40jT1b4Uol
	kn1wlmxajLfRcrYZVlbVaqvv0DArQFC1kIjgdRIKjRBqUOn+QCFzASvBh/5fO0t2DMvpUmnrHH40l
	2rE74oZLaOZxfgPAwOb1/W4C6PehPnAGsbp9Gi7AlytMoaDwDH7qL0lBDA2s9PEw6TwKeo8wHM/a0
	FSE2tNEvrIiBjlvhros9u//CFex3NerG9M1mcoxOYNWbauT26/JNcLKcbmQwnk6jDAOr/my4ED7x/
	LkiQ3B7BIEymrBW3/vCC5iXzpafVNcgt/eYk0yJekDTHU3IE3PC2qxLAR1i1izCPklicpik2SUowW
	fAacAnKnhMMVknTsHxuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID48-00Eets-A3; Sun, 31 Jul 2022 17:49:24 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID2h-00Ee5i-0m
	for linux-rockchip@lists.infradead.org; Sun, 31 Jul 2022 17:47:56 +0000
Received: by mail-pj1-x102f.google.com with SMTP id s5-20020a17090a13c500b001f4da9ffe5fso2841064pjf.5
        for <linux-rockchip@lists.infradead.org>; Sun, 31 Jul 2022 10:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=rG8wijVAgCW9yVzpfh6lNJrXM3PN1zi+8WUS5WQuHsw=;
        b=qgY5oWd3HluDCJ8jCOZnZP7XAj0Dnttei0+0Tia5qVsEF7HeCpchR6Y0MTyTZspdTE
         I11XsCr9MH94hiitbZwCIUx7P84ncwI7orvzEgFunN/bmmQ6IPROeRfI1Sg+OUBLPtwk
         1Xo/gp/o1vzbs355z95cnqZgwGK3e5lCMJjvD4WYLHAHZvqgSzMwAPaRE8GU3nX66ekr
         b1+x3VVhzMeK7SN1B8WUF066Lr107GZZVFWWNUEe3USOa1IUPndB62VzvEOrKhvmkMd9
         ikR1vi3w29CPxFoVHx61j079eq8rQZoEO7mrQ1JscNd80E9BD3gZFXoQa+wIcs1J8AAI
         xKuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=rG8wijVAgCW9yVzpfh6lNJrXM3PN1zi+8WUS5WQuHsw=;
        b=IbcWkDruSST/wuZ+fBxFiicMn6ZLeNs574t19Gv//VyTw+aAC1zKDftnkOzxrJksA6
         BWgCh752Tpu2rOBJKryudfgfOO74YuyXUbjom6PDjnZ8hfU2bBQbZ6fr0XAQpipd4C/0
         5cmKOLRKH4pTdUp9hscJQviqMKk7DySjfIlh4BtavcgBzX2aiwmA6+V5akxy9vMUXIu9
         hTV93kUkdsU8p1GTpC6GD9HbH1oYMqlOZdIgz1SOzvs+85Kjfy2wE2nwXVrUm/3HSMLj
         nCCormbtxpbhtF60CgOFGYFOOPmbEC2gyOjQeXwpKFImbbCP+d7RH/IeC09fs4hvBMY7
         ckFw==
X-Gm-Message-State: ACgBeo0K8DNu8QT0E8umfDx0LXLf0j8lvQzQf6SF4aM+DVl1Ito7eF33
	mdAWVL6CQoJMwjDJc13YxVajRQ==
X-Google-Smtp-Source: AA6agR5AUh9sHkSiRYgQcky1ExTQDO3odRpi2v8GTxwVPcthyMXq8/aSOUPTXF98c610DgkQmkghQA==
X-Received: by 2002:a17:902:8508:b0:16c:46ff:53cb with SMTP id bj8-20020a170902850800b0016c46ff53cbmr13218377plb.168.1659289673432;
        Sun, 31 Jul 2022 10:47:53 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.47.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:47:53 -0700 (PDT)
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
Subject: [PATCH v2 04/20] dt-bindings: power: rockchip: Document RV1126 PMU IO domains
Date: Sun, 31 Jul 2022 23:17:10 +0530
Message-Id: <20220731174726.72631-5-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731174726.72631-1-jagan@edgeble.ai>
References: <20220731174726.72631-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220731_104755_130003_54573039 
X-CRM114-Status: UNSURE (   9.40  )
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
