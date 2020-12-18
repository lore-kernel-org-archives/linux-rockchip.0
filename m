Return-Path: <SRS0=llJB=FW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B54D3C4361B
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Dec 2020 12:06:05 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3BCFF23443
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Dec 2020 12:06:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3BCFF23443
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=a+fFYg3vdnPMU6KMuNHNZfh1EVA3oRjnGfeJqQgd56A=; b=20L/TRLGOEKn3nDcX0nyCKnSyG
	Rd1b4tEJLZQV3cbBcJNibbme6TX7mC+5uikFgLRWxIy/+vJS5Iw72WJy41wD3z/GEcfxWGf9ET2xV
	bFi93uQN6ejbUYg7GyILCjGC24C9uBn7nH2oaRlVQ0ZMpgGjMPx4lti89W9YvbnfBlQv9CBcZEEn9
	2Q+WMYLkqVPoie/LfRyTacvLKzIWXdxX1SBxNb9LbWFnMdcrROvyB/73y//iHvFxi6aZE2dlIyTW2
	Z77wqShJhkl6VEOWwsKHv7+buFF7hX3J0fFg70wCmspFM7nkBML+Aj2wepObUE0ABE2uzoGgKFyEI
	WPnIdYiw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kqEWG-00072V-RJ; Fri, 18 Dec 2020 12:06:00 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kqEW3-0006yV-TG; Fri, 18 Dec 2020 12:05:52 +0000
Received: by mail-ej1-x631.google.com with SMTP id q22so2883166eja.2;
 Fri, 18 Dec 2020 04:05:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=df3IfnfXrm4i2RajA08Sg4cjB+rbAYObLY7D8ABk32s=;
 b=BfBK4dg6bgst+3YtQSqFkSDaFBbrXIMFOJ7wgIptM74ngk8HU9H0CEKAoYpt5vSymX
 PjSkbpg3AYqSayRAui5b8rxhNMoNKGmC/fVe63AlOVxhdVTVwTsElVrEcDowTEv3jWOH
 msw0O4gCFjXaRaM4lScrIYGFIcXLZPdLSiTByijqEM9mCk42VUwE+7rP451p5gxAuJmZ
 0bTfCCvniv2rWhEzUy9BFdbXRj/wLetGnByd/Sz65EpvNbJGDByQE8EM9r1bjuGlIdfU
 3WNmuLNSbq4c6KSATu5VB26QnpsJRUAQY/U/fXeTsOELVEEMzKgSR28EZCM+SUS0AIR0
 4rzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=df3IfnfXrm4i2RajA08Sg4cjB+rbAYObLY7D8ABk32s=;
 b=dJHu0OwAbV/k6rB5yy79IVV57Nsw3p0uqZVBUWxtSuSTX0GfyvbB4oykxjYw3sqhww
 iPHkoFfOlim6XPBfcNOhN6E2rQC23Us4WJXtty53o79Sadxvq3SQ9spFHyGo1XPjuF6H
 /XyYTYPLaaNnkbLE360DqpPK/stvbLShwqRczDCuQrzzwuOC/rgLaqNbNFKJ0xlQFG/a
 FLtKnLY2OmNRdXjDsxnXNJ7uutY/6mGqQ40DVmO/8poFHAU2k8bBeHsvW/mdPjNC1nee
 AorroDo87irEnJ9rws+6vidVI80ruAwtqKCoPhpqgLz05crWivYGb0Oxz6n37ZxTIjUZ
 ugjg==
X-Gm-Message-State: AOAM531SwiTDBFgHr6ewJn0BoPzWQIikiS7zfhkkRfksuCzF+GPKaDSw
 ZjrjtyhiXwp3gEyE6fNTJM8=
X-Google-Smtp-Source: ABdhPJyKw1nhb3temxyQ33TJyRuTbXGlUWp6OlKcoXlUygUCrobAmOrKQUBUJCyln+ziWqp+d7uW0Q==
X-Received: by 2002:a17:906:1498:: with SMTP id
 x24mr3598798ejc.170.1608293145634; 
 Fri, 18 Dec 2020 04:05:45 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id ga37sm4775832ejc.96.2020.12.18.04.05.43
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 18 Dec 2020 04:05:44 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 1/8] dt-binding: watchdog: add more Rockchip compatibles to
 snps, dw-wdt.yaml
Date: Fri, 18 Dec 2020 13:05:27 +0100
Message-Id: <20201218120534.13788-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201218_070547_951667_5BCB5B91 
X-CRM114-Status: GOOD (  10.21  )
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

The watchdog compatible strings are suppose to be SoC orientated.
In the more recently added Rockchip SoC dtsi files only
the fallback string "snps,dw-wdt" is used, so add the following
compatible strings:

"rockchip,px30-wdt", "snps,dw-wdt"
"rockchip,rk3228-wdt", "snps,dw-wdt"
"rockchip,rk3308-wdt", "snps,dw-wdt"
"rockchip,rk3328-wdt", "snps,dw-wdt"
"rockchip,rk3399-wdt", "snps,dw-wdt"
"rockchip,rv1108-wdt", "snps,dw-wdt"

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
index f7ee9229c..b58596b18 100644
--- a/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml
@@ -18,10 +18,16 @@ properties:
       - const: snps,dw-wdt
       - items:
           - enum:
+              - rockchip,px30-wdt
               - rockchip,rk3066-wdt
               - rockchip,rk3188-wdt
+              - rockchip,rk3228-wdt
               - rockchip,rk3288-wdt
+              - rockchip,rk3308-wdt
+              - rockchip,rk3328-wdt
               - rockchip,rk3368-wdt
+              - rockchip,rk3399-wdt
+              - rockchip,rv1108-wdt
           - const: snps,dw-wdt
 
   reg:
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
