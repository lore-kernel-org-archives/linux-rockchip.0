Return-Path: <SRS0=scLn=JI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B787CC433B4
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 13:10:43 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5E58360FD8
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 13:10:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5E58360FD8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sMe78RWOB+0uKFcyiESiDe1KnoG3HHANPqiLs5bI9Jo=; b=YBaAP6PSmcaOxWI15T7AP7Mgl3
	f1iK/9jhxD2y0/HXrL+C2/UO4J0Ivnz2GsLpAF2Amar1Rz69bzVVAg92M0bfCqbBi5OLSrOYGQWA+
	Yu5xDdgEAfc/0dDRTXztVH+Mm8xmSWcTf2ilmozE1zsV6CcKm/yFJISoz9ahBpyJ2a4DO+Z0kkJ6r
	U8rvRwJVY8JIf2rQz3ZZUKLugQNM28sZ/d40ZLBRQny3JWUNtgK0V/6d4u/UYAyQdREIsM6YvcbKG
	lXMCUaJ0Y4/va/r+Ld4ysVMgoGR9MT7CC41u+jWh4SB2IZGvLnMj8H9jOeMncMeV3ua2fmlE3lyXh
	PcqB6xkg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVZrK-004TPm-E3; Sun, 11 Apr 2021 13:10:38 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVZr1-004TNm-8g; Sun, 11 Apr 2021 13:10:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=HCYzJwo6K1czJ3Ha8iJ6GUOmqyR2V8U9jZN0dmotAHY=; b=hktl9X1cfEskvUE5+hiRWhxsZO
 xL96VRO1uE3//mAyomk+Ix8C4y0lWHaQitb6UsqFVFbn9EuNa2dqpv25Mj4LwQEn1bXrGb3+L7j1N
 I9te5zzBrrqorRwSNW8KTJ1tboLAynjHoPuW2uqRRT6dijYVb9Q358ydEg8ZIH2/il9yy/4cDLaIh
 6M7fRdSftIylf9E+Nh4Y6R00aG1jwzGr6cmCvRyGLEtoW9M67xwgoXZcJZfGLkN49/9shbkxj72QU
 tjnotDCkwm8DFdugFQB6VgT4/kz/yFzVxNYX+2cocm6zyDe58RPXnv31ytagWHGd3uwuyvCWUctsP
 GMYb0K0g==;
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVZqy-005WMB-HG; Sun, 11 Apr 2021 13:10:17 +0000
Received: by mail-ed1-x534.google.com with SMTP id f8so11792584edd.11;
 Sun, 11 Apr 2021 06:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=HCYzJwo6K1czJ3Ha8iJ6GUOmqyR2V8U9jZN0dmotAHY=;
 b=ZkeBDZ2ncD0wsYopNcEnE9+zUHPk5WjFI72xM+ZgXw5uYivPtVuSBMhLNSwVDswUoI
 NbNW8LlwM8lfsRLBk272IuTJaKQ4B0e1ikaYM1b8hlYswP23KudzecNpphb7q08rf8kp
 XGWukKbNYUJ8Bmp73bzFIyaHX+mr85op4Wmh2K/dwGb84tIl8nie1TnIkKucyD5sJak1
 B5DO12scqQ/Nu3al4iwdIxLn2+R3yZdEc/yZPgAkdbbNJJ91sAFV+CUf3+XRZN5fwT2F
 xTSL/4exjRN7gT6/jV3IHh7ZbLdJKZpElZkzR/bq53M4HTBcgSWerj1X/5TflJWZmYHU
 mJvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=HCYzJwo6K1czJ3Ha8iJ6GUOmqyR2V8U9jZN0dmotAHY=;
 b=MB7o3qK/bWy95MakIex9P5TsimihMhfc3VdFpYyuTVo2aN7kpbI/381TmuzXqRWd9U
 ySsAcRJg1gWjMMtAoCxwbXj5gi/rm/+7zdpTcg8c6FzKsAcr0UMeMf17CqAS1R4FQa6I
 8eXc8qodxQx0u/2fc1ZuyzG36pZyBmNlhlkqSEbDfbNALDleg4QOesLEjlAsboGD6wla
 TQSvbqwm/se4McZx3X+NoOcTDnZauWComI2k4xoZGPWE1zfEK5W6qBnRrC6VQqIHXz0u
 mdVIsaK+NjDnuKF5sPDjbDlYVDH5fevjtCezH/tsGKAP5nkhXmELhSlq/YPMtCWmj78q
 py+Q==
X-Gm-Message-State: AOAM530nlKRPkwTutYlDd7xHjj5wGNWAsGZj19IQHuSU09rFe6dFx3Jr
 dmf+tztLtfsobDRdX4XRMEiqIGkRmVOerw==
X-Google-Smtp-Source: ABdhPJzpGqrXlZiBJI9Bz3cPk8TE7002GNinO06PQVO5Eh4H0wBgWlY84Q4Bp7s40YrvLiHFHbW5Rw==
X-Received: by 2002:a05:6402:26c3:: with SMTP id
 x3mr26213604edd.126.1618146615122; 
 Sun, 11 Apr 2021 06:10:15 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w2sm3983520eju.71.2021.04.11.06.10.14
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Apr 2021 06:10:14 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, lee.jones@linaro.org,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/6] dt-bindings: pwm: add more compatible strings to
 pwm-rockchip.yaml
Date: Sun, 11 Apr 2021 15:10:03 +0200
Message-Id: <20210411131007.21757-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210411131007.21757-1-jbx6244@gmail.com>
References: <20210411131007.21757-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210411_061016_589912_11B42A00 
X-CRM114-Status: GOOD (  10.50  )
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
Changed V2:
  changed schema for clocks and clock-names
---
 Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
index 142ce85ce..5596bee70 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
+++ b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
@@ -14,14 +14,22 @@ properties:
     oneOf:
       - const: rockchip,rk2928-pwm
       - const: rockchip,rk3288-pwm
+      - const: rockchip,rk3328-pwm
       - const: rockchip,vop-pwm
       - items:
           - const: rockchip,rk3036-pwm
           - const: rockchip,rk2928-pwm
       - items:
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
@@ -49,6 +57,7 @@ if:
     compatible:
       contains:
         enum:
+          - rockchip,rk3328-pwm
           - rockchip,rv1108-pwm
 
 then:
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
