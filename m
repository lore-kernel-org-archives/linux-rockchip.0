Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 483A6CD98CC
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jun 2026 14:46:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KNN6ynIMAYcRJcKXYxQxnEzb8h+Tr5CBdnkXqbXWtnA=; b=mvSyJsSJ6F5iGR
	60G++YbuMdoQGgShJzrSwXcm9xL2GqIuoizUoAkxB2nkoOBZ39CxXUundTE09zNmDh55fYzixI12C
	YiIgkTyKYy7heg4TU2ngPB47GL0FtbC61glNOm6i5Rwo0CeSwpSiUuEZmNGC4SEP3dianlWu+iQau
	hZGWukr9pYWqb3ZF1IfvnNfOM++Nh4q7tIOB1FouKjY4v8xUueACn4WY4TSzppfAVJ/ffW/aNqlH0
	FIyOCF4BE/jmpRJFkO1W8gtGqtFCR3G08YnJ3roxeb8nH8kNQ2whXJSYlgv1wV/z+ey+glLS21LD4
	DPICWMsSyCqox3iEZP2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKCV-00000007wfC-0aqV;
	Wed, 10 Jun 2026 14:46:39 +0000
Received: from mail-ot1-x333.google.com ([2607:f8b0:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXKCS-00000007wcl-1bp6
	for linux-rockchip@lists.infradead.org;
	Wed, 10 Jun 2026 14:46:37 +0000
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-7e701435806so5295501a34.0
        for <linux-rockchip@lists.infradead.org>; Wed, 10 Jun 2026 07:46:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781102795; x=1781707595; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=30zAwmg3oIaQnbQVRTHeWC2+fYihHaBtueim4W7iSKM=;
        b=MhBJgmRTttd1FSW5mPMjjY0wDdMM3bUbgxqKbLtZjsDkFqJzePZEXQ50FcohTvBZhX
         y914qkEFpHVxWW6++rsAGG8Pyo60hYeIhn03L+CtwvMNnITW3gqu+05u2u1BQg97F4An
         ZEa0B+bsAR0KmmwpoKnbS67N67kITJfgJ0F49ClZ2tJf2D8OAAVIctdyc5Zjpm0zpLf/
         KCSJNhJkTwzfbiqSISQu5S+S+VdfiwzgP+sCNtwfyTWQ6jr3/SXHffcWayxGeML3zKqU
         vscxbEJyMNnbrQOp4xgBBXBzJNzq8V8twxukL8PPfVuD4dvwQdx3JnmbB+oAdd8CYZso
         m46w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781102795; x=1781707595;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=30zAwmg3oIaQnbQVRTHeWC2+fYihHaBtueim4W7iSKM=;
        b=hSUkhrB/aLq/6iRrGOF+YiO5Ma4F7e/uNx7z46g4CKzBj/nWkYxF9niJtqGLf9qzm6
         YfNY75P0Tc3ihJX2u4gWGvPcnnYoNpeojc6c9/3knLvaTPiMnrhcLcGn4/Q7ZiIgOQvA
         cU8eJ56TefREp30JCuT1cxc7KFEJmA+N20kHFupl28qafpqrK+HP9zFQ65441BsiKxj2
         RdKq3u+RyZtfi1ifmiQOseEFwVxgxIlMf5+A4OkxtrgZfAHk5/YCoerDYzvq4u/nb9dA
         nLM8PTBOJCCJ17jS2rEYicceTgzAEg2yy0lv8qlc1xXl7IVwLL+ZLut2vWaCgZ60I595
         Mssg==
X-Gm-Message-State: AOJu0YzzBvBIzTMnsqX2cdbyyD8cg4updft82QP92wkIBzItn0aNAmc+
	FQaqJvuVHVbkWPkk9ALHTES8LwX8iR0IlnttQMid0Fe6AxZVfDQpj0U2LEO3Gg==
X-Gm-Gg: Acq92OFpvdqT2bj0VE8Pvw8pE66pwQ9hiQtzf/sJbZumkiwcICq7IqdrQklexyCwdDI
	2XjgG7PcTQ3eLFxNp57+tCFKi6sgxVKVGyp4ZsXkmoDZtpLtJFPY/QvPR1iF6P5LHNzhGULiw3w
	fGjZkQ6RScGBmVV2z9rO7KQglk5E0CxYIXAnrNjLc3CaCDKRmOP44Wqo6ktF3Nti5+TKIZ7ZGQI
	IWqDXG/acm6WJFkdrBU1Ncrugho/YYdxFpDQxlPwvmh6MzeedrqKb0LC5afOpS5/D6FUlBjS95u
	rJmFbPSKV/2TxPWX7kfgjTUKwafu/J1Iedc7qF6cQjRVXNmhTVSWAO/CzSU1bz6YQugIB/v9I21
	owu0uCQplSWa99XVyMvmI3pHmNa253EQCXBMiUmlrJcQQNtKHXtYr2pmaSCOzZoGyheZEF1N+MQ
	xtWYsvLsVAomhw02LRT8VIbZJRZAedEh0=
X-Received: by 2002:a05:6820:8107:b0:69d:f760:9870 with SMTP id 006d021491bc7-69e68b5e61dmr14022718eaf.18.1781102795058;
        Wed, 10 Jun 2026 07:46:35 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-69e4644ddc2sm12069165eaf.12.2026.06.10.07.46.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2026 07:46:34 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	xsf@rock-chips.com,
	sre@kernel.org,
	simona@ffwll.ch,
	airlied@gmail.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	jesszhan0024@gmail.com,
	neil.armstrong@linaro.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH V7 3/6] dt-bindings: display: panel: Add Anbernic TD4310 panel
Date: Wed, 10 Jun 2026 09:44:04 -0500
Message-ID: <20260610144407.438846-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260610144407.438846-1-macroalpha82@gmail.com>
References: <20260610144407.438846-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_074636_431128_4B516D15 
X-CRM114-Status: GOOD (  11.60  )
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

The panel used by Anbernic in the RG Vita-Pro is a DSI panel based
on the TD4310 controller IC. It measures approximately 5.5 inches
diagonally and is 1080x1920 in resolution.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
---
 .../display/panel/anbernic,td4310.yaml        | 66 +++++++++++++++++++
 1 file changed, 66 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml b/Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml
new file mode 100644
index 000000000000..f820dc2f732b
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml
@@ -0,0 +1,66 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/anbernic,td4310.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Anbernic TD4310 Based Panels
+
+maintainers:
+  - Chris Morgan <macromorgan@hotmail.com>
+
+description:
+  Anbernic TD4310 Based Panels, such as the RG-Vita-Pro panel
+  (a 1080x1920 5.5 inch panel).
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - anbernic,panel-vita-pro
+      - const: anbernic,td4310
+
+  reg:
+    maxItems: 1
+
+  vdd-supply:
+    description: Panel power supply
+
+required:
+  - compatible
+  - port
+  - reg
+  - reset-gpios
+  - vdd-supply
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@0 {
+            compatible = "anbernic,panel-vita-pro", "anbernic,td4310";
+            reg = <0>;
+            backlight = <&backlight>;
+            enable-gpios = <&gpio0 9 GPIO_ACTIVE_HIGH>;
+            reset-gpios = <&gpio0 13 GPIO_ACTIVE_LOW>;
+            rotation = <270>;
+            vdd-supply = <&vdd_lcd>;
+
+            port {
+                endpoint {
+                    remote-endpoint = <&dsi_out>;
+                };
+            };
+        };
+    };
+
+...
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
