Return-Path: <SRS0=fNsx=LT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 291A0C48BC2
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 11:18:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EDA646147D
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jun 2021 11:18:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EDA646147D
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ty59cVDSj/yenby5iZiRdCy6ElY6sTtM7CmL3dPtV5w=; b=A39Yiwh2MXc2CG
	4+Td73WKqIMNsAK7CPammZ6B+p0tNfEoYSHWsYV09/mS4O8F9AFpwi1W+ZVD524PnDJGnkeRCD9QQ
	ubQaL+6j8AREczYF5RVDlGLgmh0c/HpET2JBfKQrdY/vNJ8yYdGFR7kvC2j4qDeB8dbKigyQiQR0o
	TdBFaGlOFYo9WExZOH44Yg3QRJeRy9oJJb2Y6TWBLhiITwkp888jYpocTAApvH/ArR/h15CKUAvac
	+t58920QLa7LFGSP2oV7P6i2ELEcsUlur8ck1T4eaQZyUEBdLG64BInuWEhPC816ZabZ/YOaW28VC
	DMR3JFa0ZO5sOT+Wk4QA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwjqu-001HBp-Hb; Fri, 25 Jun 2021 11:18:28 +0000
Received: from mail-ej1-x635.google.com ([2a00:1450:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwjqO-001GzR-A2; Fri, 25 Jun 2021 11:17:59 +0000
Received: by mail-ej1-x635.google.com with SMTP id nb6so14526307ejc.10;
 Fri, 25 Jun 2021 04:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=D6RY/y0lxdahXpEtNonnvg3XqIYy4uZ5acV3CJGaoIw=;
 b=KcEM/T15NcSe3TU7ywBHq1BRDzX1m1modItSI5v2DeBYQroULWQn+Jkn1zaEgL2NUK
 +UExDW9pdZ5vHJ8obmmqXXwWUt2l5g8Y5ppClRlh+S39k2JeckSuiAgDT+4qVPvSnAX5
 YOE4vzD+1O0AnNAtk6WpLOnLg/qaDUQ6xB5lsbS001Q3Xa+xb752hXiYI01VbR5IJ+Ow
 CPYsKXIKa1/v5PMg34E0zfKWCOfjwX8oqS43V6Afj4IEnNZeti1GXlNeslfE1SWZSMRH
 sJN14V8pT1W7lS+IUKvOlvodtlWsxSDZpeyAWfKsH9s7/X4eVJVttKacmtBjeTGIfCWS
 +cuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=D6RY/y0lxdahXpEtNonnvg3XqIYy4uZ5acV3CJGaoIw=;
 b=CWQ9vZG9ELR25HvyuwZuTZqH7dpgit+Lk1sZwmYBnGKdUBCELUkIhHmxhuL2PS7MR9
 2ZMTRANDHAdKwQG+BXVLErZVImBEcNy2TtjyIWInxc+HE9l7WRccKnbt9UXVGJpsE1CJ
 UK4bJMpTWNlxII2uFCnnrcE0TrRp3rq0TKJnpyzU1b8Aiq3ptFD6CvZCWPUwYzZR1VTK
 NTy9I9oEzhJmzl5qW6yABSKFJLTQS7533I3WNFxB2eVuGIoVvAhrF7yG9ah7590AmWL1
 9LMrASw1pzYvcQEzdfTaS3PePsBIIf0LagNO6SoWygyo6TtGXrg6hF3KmwBLRaCUbUty
 Og3Q==
X-Gm-Message-State: AOAM5326pA757jlFiFjwHxkgC8Fb4uIDej0EADdxHN04Yl16sZdRM8B3
 XKV/0ANhjj4W/7TN16kFzulLZB59YWnOZQ==
X-Google-Smtp-Source: ABdhPJyu2pK0wIxtzoJjiX1ZtYTgqrtx2lYio12zhpwIzqKeiZbGinfk26+fPl8pevEYXc9JyoUncg==
X-Received: by 2002:a17:906:82cd:: with SMTP id
 a13mr10457595ejy.229.1624619873937; 
 Fri, 25 Jun 2021 04:17:53 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id b10sm3731238edx.4.2021.06.25.04.17.53
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Jun 2021 04:17:53 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/4] dt-bindings: soc: rockchip: add
 rockchip-io-domain.yaml object to grf.yaml
Date: Fri, 25 Jun 2021 13:17:44 +0200
Message-Id: <20210625111746.6269-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210625111746.6269-1-jbx6244@gmail.com>
References: <20210625111746.6269-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_041756_421620_6F3CFEAD 
X-CRM114-Status: GOOD (  10.48  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The rockchip-io-domain.txt file was converted to YAML.
IO Voltage Domain nodes are sub nodes of grf and pmugrf nodes.
Add rockchip-io-domain.yaml object to the grf.yaml file.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../devicetree/bindings/soc/rockchip/grf.yaml          | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 62fa72cfe..fa010df51 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -15,7 +15,6 @@ properties:
       - items:
           - enum:
               - rockchip,rk3288-sgrf
-              - rockchip,rv1108-pmugrf
               - rockchip,rv1108-usbgrf
           - const: syscon
       - items:
@@ -41,6 +40,7 @@ properties:
               - rockchip,rk3568-grf
               - rockchip,rk3568-pmugrf
               - rockchip,rv1108-grf
+              - rockchip,rv1108-pmugrf
           - const: syscon
           - const: simple-mfd
 
@@ -198,21 +198,27 @@ allOf:
         compatible:
           contains:
             enum:
-              - rockchip,px30-pmugrf
               - rockchip,px30-grf
+              - rockchip,px30-pmugrf
+              - rockchip,rk3188-grf
               - rockchip,rk3228-grf
               - rockchip,rk3288-grf
               - rockchip,rk3328-grf
-              - rockchip,rk3368-pmugrf
               - rockchip,rk3368-grf
-              - rockchip,rk3399-pmugrf
+              - rockchip,rk3368-pmugrf
               - rockchip,rk3399-grf
+              - rockchip,rk3399-pmugrf
+              - rockchip,rv1108-grf
+              - rockchip,rv1108-pmugrf
 
     then:
       properties:
         io-domains:
-          description:
-            Documentation/devicetree/bindings/power/rockchip-io-domain.txt
+          type: object
+
+          $ref: "/schemas/power/rockchip-io-domain.yaml#"
+
+          unevaluatedProperties: false
 
 examples:
   - |
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
