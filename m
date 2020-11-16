Return-Path: <SRS0=vJNw=EW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0605C4742C
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 14:25:56 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5CC2620731
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 14:25:56 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="M//jCPSJ";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WeuEqUIQ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5CC2620731
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6V8FcUMtWWcoSB1XTspSGTU8nP5yoqIm3sL4CEhXr1M=; b=M//jCPSJM3zcUWSf1jk+Cbby67
	VeVQ5k7xjgQlS7SFUaBpN+FTE2js8buYZPluRnwaYD+V6OwCouQbLyqn7a1Y6VlqSQyiRu2Zjes4l
	L+jOrIEI2sFfWc0WZowECn6QZwRBrWjPaIwU4JC9V6NCtXqutF543w7nfQeRgFyOLpex9VzXzZP1g
	Aq2A2vruDZbI2eL9GDOtlqseUVJ8KItStCxv54hRUhgMde/OeEIG65UPIvPnBux/51zXfAUriMvih
	53plc7jB6znw6+epJjfzSwg1vWjH66FjStgSuDrBOcy/jvbtTWwnqbUxug5sF7sTSii/kZfB4QQgE
	ujDawLkg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kefS5-0008Ja-0e; Mon, 16 Nov 2020 14:25:53 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kefS0-0008Is-Gh; Mon, 16 Nov 2020 14:25:49 +0000
Received: by mail-ed1-x541.google.com with SMTP id v22so18885194edt.9;
 Mon, 16 Nov 2020 06:25:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=L16V5nkbIF94gXRlKpA4q4FCXTH9WuIAPnoBpYHLXkU=;
 b=WeuEqUIQw/uCXjwMIr5thuv465m2Wy5JvfRHw1rQyoY6Qk/w0DVnsuI3e1YgYAV85T
 cyk7Wpj3FA/GhW72iZEsJZRgVRyJ7RivLX28BRGCS8yOQYAI1SDs+g8T607ZDRlZ7yXA
 GXKVT99aISzRxj6V9xu0kM8s+9FNsaNfzZ4A8EVnT2XiGoLROkyizYg7frZs4uzOw7Hj
 0NCCndfQY63iPYCq8/ctBiDn7k/GLRw318fKAqEMh6HVf/u8IIuq7pN4ihoBubNn1ABG
 lOm9Dr6XwzFECnzqpx77d0pwrG7af5WcMlYcvhxs8VrAhz5Cq2+/6gmhNYKxmii8ikLp
 Xv2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=L16V5nkbIF94gXRlKpA4q4FCXTH9WuIAPnoBpYHLXkU=;
 b=Bgto4QkIY6RoyLDBmvt0Uj1TA4z21WYe82Vo5S2JFMy4hpEhm0nTxSwfGJGiGC1BI4
 G5po2fnWF0ljlaipvW9BUrf5eqpDy6J2SPiy7J/cklu47JmJYG7ZCh5ddJGA2i7joQN9
 qcnfMjF8UlM1NEUaNk5fh3foHGuMjl8c5nx+XQfo9KvV/xjCDZE/FKQf32oBP+YA5s9G
 RG48dD+QhsEIM3m1ZFeY3y8njVdn+rK5bEuM++FawNDqtLVjAmfWjCINiuaXnNtNxlXB
 FKKbmgYP4BUrhha4CZEpcS2kGu/r1YHORE4MbxIxWzp5DH2Z7Fu2lun1Jz5tJenaPKL3
 zPWA==
X-Gm-Message-State: AOAM532kyUyGrAYe1q1fFH38vc+tdm8q2GPodT33UsL1ft8mlwmAv0t3
 ESmrBEc9opeSz0w7aGAngMM=
X-Google-Smtp-Source: ABdhPJxBA/Rc8N9vzOogRluiecCDnqxK3aGFQpih53XK6vcBCS7S/v4+524mpSNCsYPMfP7Pdi984w==
X-Received: by 2002:a50:cd0a:: with SMTP id z10mr15509771edi.223.1605536747378; 
 Mon, 16 Nov 2020 06:25:47 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id cn8sm10581825edb.18.2020.11.16.06.25.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Nov 2020 06:25:46 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] dt-binding: watchdog: add Rockchip compatibles to snps,
 dw-wdt.yaml
Date: Mon, 16 Nov 2020 15:25:39 +0100
Message-Id: <20201116142539.12377-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201116_092548_574185_E417F0CE 
X-CRM114-Status: GOOD (  12.60  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org, jamie@jamieiles.com,
 wim@linux-watchdog.org, linux@roeck-us.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The Rockchip watchdog compatibles below are already in use,
but somehow never added to a document,
so add them to the snps,dw-wdt.yaml file.

"rockchip,rk3066-wdt", "snps,dw-wdt"
"rockchip,rk3188-wdt", "snps,dw-wdt"
"rockchip,rk3288-wdt", "snps,dw-wdt"
"rockchip,rk3368-wdt", "snps,dw-wdt"

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
index d9fc7bb85..f7ee9229c 100644
--- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
@@ -14,7 +14,15 @@ maintainers:
 
 properties:
   compatible:
-    const: snps,dw-wdt
+    oneOf:
+      - const: snps,dw-wdt
+      - items:
+          - enum:
+              - rockchip,rk3066-wdt
+              - rockchip,rk3188-wdt
+              - rockchip,rk3288-wdt
+              - rockchip,rk3368-wdt
+          - const: snps,dw-wdt
 
   reg:
     maxItems: 1
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
