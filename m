Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4FCDCD5BD1
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Jun 2026 21:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=90PKYp+c9iw+Aa6OT+op+vDXCQ8ljvdlAIqvK0fqK4k=; b=L5cZXCTIkhPfJk
	xSTUfQiAgXsPYHE+24laPLr+wjMNtqogD1O6ksIg4jxLbG3AHxKePKehdukQbQwj1bOVbRI1rwSZI
	pV8cjpdLGQea0Ff9wz05244j7lqsMaRufDhKGiCYcqPwEz45ZzWNl1hRBoVyxtjBqwab0YXiGPvsc
	3QoP++AVZ/A4vKlFEcOh5HUnM8/pkzc7Vn53+JSOR0ZwMoDo9dKU8MCx1ppsZfu7Zetiku/IAypeT
	aGZosSsuPBo14+4DNhmYlxxAT3Y1E+lCUeeBfaPRNR+wGvTSmhlJ9wcf1yMBPPvuzPh/o+4uv503D
	f+PNi6yMih2YEMXVAgUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUWeP-0000000Dp9o-1bvH;
	Tue, 02 Jun 2026 21:27:53 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUWeL-0000000Dp6Y-2XHo
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Jun 2026 21:27:52 +0000
Received: by mail-oi1-x235.google.com with SMTP id 5614622812f47-48657fc84a3so300822b6e.3
        for <linux-rockchip@lists.infradead.org>; Tue, 02 Jun 2026 14:27:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780435668; x=1781040468; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FI9ZQ9CgMmpb7a0bvB8JNCWm0010rqvUn1D/bvnZnqE=;
        b=Y4nnql4jcanoaeF8ZzkkB1IOFcebt0sq+DMpqwaO8CjboL4bRygJUH6YDHUYKwFi+f
         WE97JhEgVX0CQiw53EKtCignJq9ykI3NUH1XstGmwj1o2dXO/RhQY2E/lYuTGTktSyLg
         iAaAplEbwrru888mMZkQ/OI+EIr7e1AmfALymba/Ep0A79Tfv90U2OaIkvX7+v4bhLyA
         H6NB6Cqy+2hiAZyn5lQ/vmJ1pRdDkdwZOODxwY/JHdIxwy9/lSuaQ+OJdiIBeYgZFHcG
         owCj0bFlRnZJHE3HUBavFp64OrlYvJOxNQ+tfOIM6iT1WU423wjEMbr3BW0fB9DI5ZaU
         aa5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780435668; x=1781040468;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FI9ZQ9CgMmpb7a0bvB8JNCWm0010rqvUn1D/bvnZnqE=;
        b=nbilZZKYenBDPZHxCjgPbp66/EWS1y3GD57HPGx4O9o3APn6/DDSFWnpQuXiQoHIE2
         /Fgyst20UDPV1mGvYwxwSxK6iPNF8VaoIs152ZyECbMA2+YtI0OtUWREQeavfzko13ey
         UpAVioZOOfcJTAF0UHamq6qXfbK7r4eqefJKbr6rvi/z6FWSKl+M9IUAKYYA0/y79qaP
         9GIzOiPPnwuUnXyX4B7mtUydIhSyIngIGqChUHzLtGppmgTGNLVEUfLe0hW2ehtLWHL7
         ewT4gm8leXdUDB4ERz8vBFao2UrcWfWoPmwgGeOHn44AsZz5nESSsILoPVu94KzDUGh7
         cqWQ==
X-Gm-Message-State: AOJu0Yz/dJy/8DW+i44mMHU6TaYK5A6x/akSsNtDNa0zfUm7+ft5cONd
	qyH+9giDSJlqJZT8sGgCG1S+m92oGOvq8ideHaHFRaAhFiuvHoMd5CQltQFQ6D1w
X-Gm-Gg: Acq92OHAPdznzxWyWJZJkzBMG7R2Yz1EH1ZMc5nkXEQJFFu5MIXV4GgXQVlFJ8337A7
	4+xQ1ZizG85Tpng2D9a5LQihnl0fjSvHLV4jvkOlfOhJCVMONjEGdzTR69Tq9hcqt3mW+RMWyUB
	J9CBg1YCh/CruxPH5yCj4SjTswSCv9EArUVmUDISiTtsyLLQ3TTmt8EIopPI6bi0qF1WLusqsqf
	2WPdBsuZWTlKoxzBmyMHP1T7kd10i5cVxzQb8Bcv/8OuM1zQx6yOkR3jn8NH/AP6dfQDYNYCAPN
	zoxjp8gq6+I3fYGo1QbMDtkqr+1qlOLPtIzMWW/XHQ8yq+4ph/Aevm7s9rTye/xuIAlDt12rcmQ
	q0RENOim1kpK+x4cbrg+myLll+myQzxcrsgdScK0cKrdEq1FJjWmOAVmxnyOEjrHEuJIMdSxO1y
	a99hR+G61GCyIAf4giGYOes2gPFa8CwHs=
X-Received: by 2002:a05:6808:1512:b0:467:fab6:c7ee with SMTP id 5614622812f47-4865abb3306mr386445b6e.38.1780435668533;
        Tue, 02 Jun 2026 14:27:48 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4865b5a53bcsm216722b6e.3.2026.06.02.14.27.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 14:27:48 -0700 (PDT)
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
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V4 3/6] dt-bindings: display: panel: document Anbernic TD4310 panel
Date: Tue,  2 Jun 2026 16:25:09 -0500
Message-ID: <20260602212512.418166-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260602212512.418166-1-macroalpha82@gmail.com>
References: <20260602212512.418166-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260602_142749_639867_2B744B04 
X-CRM114-Status: GOOD (  11.88  )
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
---
 .../display/panel/anbernic,td4310.yaml        | 66 +++++++++++++++++++
 1 file changed, 66 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml b/Documentation/devicetree/bindings/display/panel/anbernic,td4310.yaml
new file mode 100644
index 000000000000..6f7f92b9c860
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
+                panel_in: endpoint {
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
