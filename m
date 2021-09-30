Return-Path: <SRS0=3LcM=OU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D0E5C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Sep 2021 11:06:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0D0B8615E5
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Sep 2021 11:06:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0D0B8615E5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zRPS/a3DfS2uYScMZWKbFYM3pC+AEZLtgiXX0UyXBwY=; b=bOMp6912r+5uii
	d8Dukv9EmcdbJj0CKfZM35PNVSCK2jFwAFV8hpp9GzaBn32sbSblYERDmXGG3kErmCETbfzVSfazO
	eY4hFTPVI7Xk3PpFYMkNDZVbDAOMaOWWXWKN6Nksry9nvpEhi2msOaydRmZQcNUm074f4yHDJskvw
	aTyLmwNK23MkXedkpJMvR6YEWDr2XVs2LhGzaFpe6Z62NHNkkimMm9uIvUIm4RZQA/EvN3ma+I7ri
	jO5E5UNGu9on+5qrPN5frbbaujf3aTXYxi8whxmuhYc8sNSaP0R3Wdu/yW3q1uheZ8mbIgCFZ1+x5
	+whJMdNT56CLrdOqsSXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVtt8-00Dz5i-H2; Thu, 30 Sep 2021 11:06:06 +0000
Received: from mail-ed1-x536.google.com ([2a00:1450:4864:20::536])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVtsW-00Dyvv-Nt; Thu, 30 Sep 2021 11:05:30 +0000
Received: by mail-ed1-x536.google.com with SMTP id v18so20295879edc.11;
 Thu, 30 Sep 2021 04:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sSpzj10NGw5X39ToW4lUkS6X+YqxdosdM3EBUsNMyqE=;
 b=LPlqikM6FebZsUtylYpczSVr+YHzTDbcal/pi6IWk07MZKbRU9C5YLjIxL/17xcGnV
 NzmQ50PXQiIENZtzaL7KooG4GeCMHaujZLuu1LLbmtnZXZNqIcBS8xUtdH33GpRBAtHH
 Vn6nzrq0HstuoBkQO6BaxWTkBCsEvxbtgmU+Ul0S+mI9OTSJiw9fotL81VHgkbHgUgnF
 2mK9CGS8fgQD9kM7voI3LWd0Z+iiW+QgDmq1SlKjuqYriq4yloLW2EkfvenucR3YJle6
 YtLyjQAO8h5BedNWD2vnHyLzkv6nKNbKup74M7/INJDA54wedVNiJsBKgmq8SJzpglBI
 SdpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=sSpzj10NGw5X39ToW4lUkS6X+YqxdosdM3EBUsNMyqE=;
 b=m19Q7U1bIUtsJTm9feLV2vSw65XU35ePOD293D8dKLYq5brIjM4a9G96RT6UBD3XuZ
 8sfk3YIyWkH0xEkO/kv25Y87K/H8J1wfu17cut+Rqp0sPlAbfg74jrUd5y46XloTzWzj
 7+NPN3wv56wLdQwB0kc2R1sNZQIyeCzPtpm1vuAw4bXbVdNyuJJu0OBKXfKpAT1kB/E7
 H5z3kozv3HO+5MLII3liLQqehw4XHmfwVzQTzdNdGTsdejk6ElNLawp3oivBa55XAAsk
 iDMbZjzhn48OiXXHFxXvWlJTuDDooeaj2MHIdr+kqeRs3KLGqdJez5gD+eDt5txATCkA
 nUZQ==
X-Gm-Message-State: AOAM5321FIIYB3SWwfuudGXRaNieHONw16fm9oE9E75lL/uL2efV7yh9
 sx/6m02qNqcNA7vY+EP/l5Q=
X-Google-Smtp-Source: ABdhPJz8KFn48cKcsMX/5FRkZiP6w85uVojtvApZQzdqqfzyK4K6D+Wg1oWR9meEf8ZSCfh08OwqUQ==
X-Received: by 2002:a50:d989:: with SMTP id w9mr6590475edj.99.1632999923922;
 Thu, 30 Sep 2021 04:05:23 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id i2sm1305158edv.7.2021.09.30.04.05.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Sep 2021 04:05:23 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amitk@kernel.org, p.zabel@pengutronix.de, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/4] dt-bindings: thermal: allow more resets for tsadc node
 in rockchip-thermal.yaml
Date: Thu, 30 Sep 2021 13:05:14 +0200
Message-Id: <20210930110517.14323-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210930_040528_816111_B1E125A1 
X-CRM114-Status: GOOD (  10.34  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The tsadc node in rk356x.dtsi has more resets defined then currently
allowed by rockchip-thermal.yaml, so fix that in the documentation.
The driver now uses the devm_reset_control_array_get() function,
so reset-names is no longer required, but keep it for legacy reasons.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V2:
  Remove deprecated
---
 .../devicetree/bindings/thermal/rockchip-thermal.yaml      | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
index b96ea277b..3c074706e 100644
--- a/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
+++ b/Documentation/devicetree/bindings/thermal/rockchip-thermal.yaml
@@ -37,11 +37,15 @@ properties:
       - const: apb_pclk
 
   resets:
-    maxItems: 1
+    minItems: 1
+    maxItems: 3
 
   reset-names:
+    minItems: 1
     items:
       - const: tsadc-apb
+      - const: tsadc
+      - const: tsadc-phy
 
   "#thermal-sensor-cells":
     const: 1
@@ -71,7 +75,6 @@ required:
   - clocks
   - clock-names
   - resets
-  - reset-names
   - "#thermal-sensor-cells"
 
 additionalProperties: false
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
