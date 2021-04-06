Return-Path: <SRS0=2XDZ=JD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63140C433B4
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Apr 2021 15:51:30 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0D52F60C41
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Apr 2021 15:51:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0D52F60C41
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wExnodlDhk3nSKynPEaX+1PeyLGI2aW6Y+cCjBX86P4=; b=YhgpYQh5/50V4AYTShCP7XG8ci
	H30kzV2C+nUFbA0jwUJ8aqz/fgYj33vcKf6EPjPDlL7LpHLq4exs58OW7QUPJdfJlgH46xDmjs4cK
	Nu1n9bc/1VaIasjN4FYzET89JZsHuNord7pIVAlpmOi8+UIjvy1CliGYxDZfEGsod1oCXxoemb5Pt
	jCqpD7T7kEflswo5A/0P+memB4pDgh0dZrm6P5cQNDmQliOwKf4QSe9vOvRjFDWraidFCEGyznpBT
	hWauuqU9t1bnghPhz2pkGLfaMXOM3602kLR+1GNk75PDSS/b6IkUQfC6SxWh7rxRY2Us9Tso2tAFq
	g3CLMdEg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTnz8-002xWM-N6; Tue, 06 Apr 2021 15:51:22 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTnyp-002xUV-Fq; Tue, 06 Apr 2021 15:51:05 +0000
Received: by mail-ej1-x62d.google.com with SMTP id b7so22775135ejv.1;
 Tue, 06 Apr 2021 08:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Qj4ZbUSCwnNRsGsyd4823o8NwDOo/ZM9rO1POtn+Q7M=;
 b=mMTsP8eKqHQw2U/phTGdhcue3frO4TNws7ugE+cWsrZeQtb0YH6uYR3KOUZEGH8tmq
 sT3OOHCOJeJnSFSLmgn8qiV8O8kJ+4amDvi5kPSPZh7HwFqsxe7qGkJFGVV3Wyskrvbb
 vX4nZROVWP1lFWuBdJN9i3vwL7qw7rZRBAzdKs7sHMB/KDp5GJrE2V/bQp6I0C/gAOB1
 Q/PJiJpH1AZssOpVgcvm4+ujyKpjE8R+MwcngypfdJpTrWJSJd4hoWmXDRBivbZhAAYi
 tDJaZjE/6RKGBRHtVgALilx7DtYjr5tUwW5yLRa7hev6k0oNKzJJaeRrYAunKPFY1zH1
 Eyjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Qj4ZbUSCwnNRsGsyd4823o8NwDOo/ZM9rO1POtn+Q7M=;
 b=dqb5i3F6/K+hNDtPahl8h2lhYAq0/lgU73Tv+ssY8uhFhP6yt3DfyBjwBA9c++catj
 IHE1E1KCTWINWeCTVDim89pwk44xEjQToxi6oLRBm1fR4So0y+wOab/0tOas2HJ7Oz+D
 VyvMT1W68mrazFUp0Ff027peh5dYlNnbJEIeJVECR+QAqpMG18s2OQCccVWLi62dKaj7
 GUnnJpiipSbBDc6HlfrQuLFruqsojfbAVdq/h6QKt0eKijfumG8D2Ekx4QIYrJmKFQOD
 aybN/N4kOCSeueRuzFrsW+RX+UXRNR83eNT0d1ilJZASOnLa1gx7wkCWcbqkHcAcdfa5
 me+A==
X-Gm-Message-State: AOAM5314AlDUCnBaVlwwZ8iA17rbN5NGCFmK6P0t0D/2HJDkkP1l/Z30
 wcqlrl7mt+lvaj26HIbNcGI=
X-Google-Smtp-Source: ABdhPJyG2PqjLSzQz7sM421IaGpYPRDFTvC2MggBRpVNNsIld3uI8NWFbgb77DuQxdTZYdXa3dDQyQ==
X-Received: by 2002:a17:906:6dc9:: with SMTP id
 j9mr17253967ejt.188.1617724262892; 
 Tue, 06 Apr 2021 08:51:02 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id h8sm13894327ede.25.2021.04.06.08.51.02
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 06 Apr 2021 08:51:02 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, lee.jones@linaro.org,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 2/2] dt-bindings: pwm: add more compatible strings to
 pwm-rockchip.yaml
Date: Tue,  6 Apr 2021 17:50:53 +0200
Message-Id: <20210406155053.29101-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210406155053.29101-1-jbx6244@gmail.com>
References: <20210406155053.29101-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210406_165103_592651_CE9F46EE 
X-CRM114-Status: GOOD (  11.13  )
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

The compatible strings below are already in use in the Rockchip
dtsi files, but were somehow never added to a document, so add

"rockchip,rk3328-pwm"

"rockchip,rk3036-pwm", "rockchip,rk2928-pwm"

"rockchip,rk3368-pwm", "rockchip,rk3288-pwm"
"rockchip,rk3399-pwm", "rockchip,rk3288-pwm"

"rockchip,px30-pwm", "rockchip,rk3328-pwm"
"rockchip,rk3308-pwm", "rockchip,rk3328-pwm"

for pwm nodes to pwm-rockchip.yaml.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
index cfd637d3e..3945d586c 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
@@ -14,11 +14,22 @@ properties:
     oneOf:
       - const: rockchip,rk2928-pwm
       - const: rockchip,rk3288-pwm
+      - const: rockchip,rk3328-pwm
       - const: rockchip,vop-pwm
       - items:
+          - const: rockchip,rk3036-pwm
+          - const: rockchip,rk2928-pwm
+      - items:
           - enum:
+              - rockchip,rk3368-pwm
+              - rockchip,rk3399-pwm
               - rockchip,rv1108-pwm
           - const: rockchip,rk3288-pwm
+      - items:
+          - enum:
+              - rockchip,px30-pwm
+              - rockchip,rk3308-pwm
+          - const: rockchip,rk3328-pwm
 
   reg:
     maxItems: 1
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
