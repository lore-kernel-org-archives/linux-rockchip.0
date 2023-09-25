Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EFCFCE79A4
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Sep 2023 21:27:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xO4/+VQlpoEAohPum1PH6WUuUTSCRCIeHvbPZA8xRU8=; b=pmY1hynW4Gjsfy
	Av5Y82XbFzH6e9kEt6EHLPvew8EAUmJr/EhdMesddjKMLJa3rCiTiIr2gTQwfUO8195AqeEc6MV9X
	9Pl8djsPz5vv8swhszzsDB9B5DQiNSlx/bdQTL6HxG8Gk+PG9V1SDtLqb7C5/bgPwuYWSjQEY2jRx
	RpyZD16LiCbl2Re5qi0aV0uFhfkB+rvu0JHNSn9coa1zSE72Cde2MvVVhXrJx+/p8u/az9uxiZadm
	jcH4zOC6kacQ3yMc4jRNRpS0HUQsRrpwBdroxy1nUfvFiXOhScsp4Vz1bIKuFZURMa71oc38Gu/kX
	OTCGZ7FXs8dvOZmN0ykg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qkt74-00F38a-1k;
	Mon, 25 Sep 2023 21:27:30 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qkt70-00F37Z-1f;
	Mon, 25 Sep 2023 21:27:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id C7FF46123A;
	Mon, 25 Sep 2023 21:27:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F28BDC433C8;
	Mon, 25 Sep 2023 21:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695677245;
	bh=ttt9MxqlXu8nD2JgUN9u6TOQN+41IkV1ecAtDT3N474=;
	h=From:To:Cc:Subject:Date:From;
	b=kYnloxV/57uAVpHewX8XeuFQPLiTF2QIJwR0cP+ubSh+Jx6ve4QYl+vRxwIp1BshC
	 nvlL3Jqc63g61QjTGgGm/6AfydVlM+FMEagcyDPX04Km1rjPfNX9f11AfahfOAyJCu
	 Sf4EtAb5DSS0GSkbtBII0jf3EfkACJf2tv7vhTRZU2XbVdbTclfy8HDeSGCdGhAJr7
	 j4JJP1n2KZtDHbuH5oBJWz+wrl6Y7tN/U0HuyXP5S001xOEvMYkaw/fFPUTcLHaPDd
	 nvM/48XZgpcbSmqU6KpQPj5JkTS1JSpjAKN2XpeHTQSP9RU8RA7ZNfKmD+S8Utl/76
	 K+u3kLdH8dn1A==
Received: (nullmailer pid 1976042 invoked by uid 1000);
	Mon, 25 Sep 2023 21:27:19 -0000
From: Rob Herring <robh@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>, Andy Gross <agross@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Linus Walleij <linus.walleij@linaro.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, Heiko Stuebner <heiko@sntech.de>, Magnus Damm <magnus.damm@gmail.com>, Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, Fabrizio Castro <fabrizio.castro.jz@renesas.com>
Cc: Konrad Dybcio <konrad.dybcio@somainline.org>, linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH] dt-bindings: pinctrl: Add missing additionalProperties on child node schemas
Date: Mon, 25 Sep 2023 16:27:10 -0500
Message-Id: <20230925212713.1975800-1-robh@kernel.org>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230925_142726_874227_CDA1EAB2 
X-CRM114-Status: GOOD (  10.13  )
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

Just as unevaluatedProperties or additionalProperties are required at
the top level of schemas, they should (and will) also be required for
child node schemas. That ensures only documented properties are
present for any node.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/pinctrl/qcom,mdm9607-tlmm.yaml         | 3 ++-
 .../devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml     | 1 +
 .../devicetree/bindings/pinctrl/renesas,rzv2m-pinctrl.yaml     | 1 +
 .../devicetree/bindings/pinctrl/rockchip,pinctrl.yaml          | 2 ++
 4 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,mdm9607-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,mdm9607-tlmm.yaml
index 2aedb7e7bc8b..5ece3b9d676b 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,mdm9607-tlmm.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,mdm9607-tlmm.yaml
@@ -43,7 +43,8 @@ patternProperties:
   "-state$":
     oneOf:
       - $ref: "#/$defs/qcom-mdm9607-tlmm-state"
-      - patternProperties:
+      - additionalProperties: false
+        patternProperties:
           ".*":
             $ref: "#/$defs/qcom-mdm9607-tlmm-state"
 
diff --git a/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml
index 145c5442f268..4782f96feb7e 100644
--- a/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/renesas,rzg2l-pinctrl.yaml
@@ -73,6 +73,7 @@ properties:
 additionalProperties:
   anyOf:
     - type: object
+      additionalProperties: false
       allOf:
         - $ref: pincfg-node.yaml#
         - $ref: pinmux-node.yaml#
diff --git a/Documentation/devicetree/bindings/pinctrl/renesas,rzv2m-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/renesas,rzv2m-pinctrl.yaml
index cb81a17bd0b1..5fa5d31f8866 100644
--- a/Documentation/devicetree/bindings/pinctrl/renesas,rzv2m-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/renesas,rzv2m-pinctrl.yaml
@@ -53,6 +53,7 @@ properties:
 additionalProperties:
   anyOf:
     - type: object
+      additionalProperties: false
       allOf:
         - $ref: pincfg-node.yaml#
         - $ref: pinmux-node.yaml#
diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
index 10c335efe619..20e806dce1ec 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -115,6 +115,8 @@ additionalProperties:
   type: object
   additionalProperties:
     type: object
+    additionalProperties: false
+
     properties:
       rockchip,pins:
         $ref: /schemas/types.yaml#/definitions/uint32-matrix
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
