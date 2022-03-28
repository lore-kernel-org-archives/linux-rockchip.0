Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA660C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Mar 2022 15:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/sro/zOZa3ZuPVjfRaQnQBx1TQJo8Vc0Ewyx89Dl7uU=; b=Jao3NmGDJ1Ew/+
	qo3TENJ/vDoUGzXT1QcutNisZ2nHV1Qtgi4RXr6Vzl33Y2wfiCj1RV0uEGjngMfOaBFxL/byc0odN
	o8ASjRzFOs9aQEeRTnWr6UplQYdSkBwZLjfUjGXv2MDMuY7CZbdDwpIHCu43AAUFrp/irey0CoosU
	tkHNT2l259oBLH3SkJTrgSnpjjWxeHPGq2mAwIPUKmm0N6zNWWbli7bZK5C/CfZxhnhFFayhpXQXh
	UjvJ3WA6SFpJelrUKadf1LchPTwtQ/Wlyzm8xx6F8ZyTTvO3Kkh1uY1FSBTsSKJoNEWEM3zD9tOUn
	llT65A9YlJsymNfZ80qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nYr5Y-009Frw-Cb; Mon, 28 Mar 2022 15:15:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYr1t-009Dqe-AH
 for linux-rockchip@bombadil.infradead.org; Mon, 28 Mar 2022 15:11:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
 :References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=Bo7b9pFxKvRl7NFQCY/ss2wEmJJAHGQ47nIYoH5+/3E=; b=akxSw8wQmOZxCQYEt6Mxen9a+p
 BGmvr/pb97ktpenLfSAmDtJjCprR16jIRfc23vaVzzMaWf+23xaiActFzNj9S0zzhOkXsHyOl7sJ0
 NYDFUDXETzjCrgN0iRvuO1zdrVR1jm4HmyUrMtDlL9Yz7DZAl0z8uMLQMD3gP3i503NLnReYf2DgG
 Piz2bpyC7XpaKsbpASwUJh2opDeKHcX6+VWy3uCSw5kTYIYTleMu0harAlAfpGSzzJ6T0JVCL8KAY
 +FNGpkOcRH4mpGfkUPqb3UJMBb+4LjTMNsrW0gKRsp3sHDjtvu5Bm5fpnlpxmfkNHxbqLBL6vNIo2
 F90788FA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nYr1n-005TP6-Gd
 for linux-rockchip@lists.infradead.org; Mon, 28 Mar 2022 15:11:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nYr1g-00006a-Kn; Mon, 28 Mar 2022 17:11:24 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nYr1c-003cTs-NH; Mon, 28 Mar 2022 17:11:23 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nYr1a-008XM1-Qp; Mon, 28 Mar 2022 17:11:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Rob Herring <robh@kernel.org>
Subject: [PATCH v9 23/23] dt-bindings: display: rockchip: dw-hdmi: fix ports
 description
Date: Mon, 28 Mar 2022 17:11:16 +0200
Message-Id: <20220328151116.2034635-24-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220328151116.2034635-1-s.hauer@pengutronix.de>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220328_161131_638602_AA16B796 
X-CRM114-Status: GOOD (  12.69  )
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

Current port description doesn't cover all possible cases. It currently
expects one single port with two endpoints.

When the HDMI connector is described in the device tree there can be two
ports, first one going to the VOP and the second one going to the connector.

Also on SoCs which only have a single VOP there will be only one
endpoint instead of two.

This patch addresses both issues. With this there can either be a single
port ("port") , or two of them ("port@0", "port@1") when the connector
is also in the device tree. Also the first or only port can either have
one endpoint ("endpoint") for single VOP SoCs or two ("endpoint@0",
"endpoint@1") for dual VOP SoCs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Rob Herring <robh@kernel.org>
---

Notes:
    Changes since v6:
    - Add Reviewed-by: Rob Herring <robh@kernel.org>
    Changes since v5:
    - new patch

 .../display/rockchip/rockchip,dw-hdmi.yaml    | 24 +++++++------------
 1 file changed, 9 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
index d7cb2b2be60e8..7e59dee15a5f4 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
@@ -97,27 +97,21 @@ properties:
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
-    properties:
-      port:
-        $ref: /schemas/graph.yaml#/$defs/port-base
-        unevaluatedProperties: false
+    patternProperties:
+      "^port(@0)?$":
+        $ref: /schemas/graph.yaml#/properties/port
         description: Input of the DWC HDMI TX
-
         properties:
+          endpoint:
+            description: Connection to the VOP
           endpoint@0:
-            $ref: /schemas/graph.yaml#/properties/endpoint
             description: Connection to the VOPB
-
           endpoint@1:
-            $ref: /schemas/graph.yaml#/properties/endpoint
             description: Connection to the VOPL
-
-        required:
-          - endpoint@0
-          - endpoint@1
-
-    required:
-      - port
+    properties:
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Output of the DWC HDMI TX
 
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
