Return-Path: <SRS0=kcRh=JJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C9CCC43462
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 20:02:52 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A80DF6121F
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 20:02:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A80DF6121F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VS6LrY7/RIZnuIKXgtGXKQXzHURb3zhqiM7gTCyEUME=; b=S1LrPoiA5Bhfx9veHRAFMsQOVG
	0ULrabBmQ9+y82sgCtHxcSuFfblI9de5oWomu/LmeSVsb9+A1Pw32330dAdUb2Jkiov6AcUiZH0uN
	oOKq+nJ6a17ZXDD/lwtzMwvzknPnWs4mCvei9eSIVlMX5ZaluL4U5DVcUjjCUf+4cL9/1qMH+3zkw
	fzxwd6DZ78XQUWhrnpWrqmn9FQ2weiThCKASTSKSODLb5IOtxhljV7WD3zGe3kJ/Sp3jdg9ESAP2i
	iPrQjs/UA9F0jkdFRgWwxuqJEFsFK6bEM0i+jgTGnU0palQj3HqOi78ooFeLpML/+rzrYVdK8AneC
	lO4JjX4g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lW2lh-007Zur-Vh; Mon, 12 Apr 2021 20:02:46 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW2l8-007Zpd-O7; Mon, 12 Apr 2021 20:02:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=+jLQeqDVwDZITNTxZ7lqCyLYCdhzsUWl09kewB6trH0=; b=yn3G9e4E0AMwcTwZngNSThhplg
 Kt9cXwDEJCiH+C4SZV64SVjIRpIc9UxEIuNs4EQJpWbCi+3Y768vV0TTOaFbIJjzkz7oONWli03wt
 rNP44L1n+M4UXIo/GZKKs1ATC+OXxzS6K+ZlVGrnE1eiv05NFPr+WBZBAOQ+oiIkZ8CjYLJ5lYKT/
 mG/CGIP8Bn+tMb9ec2Sy7ohfyNTycF2RDgxqRi8IOKz5V6sLjcyQnpBIe6VCB5V4g/4sCC7jISIun
 3W8PrD28Nha9DWkSGAxtNzA/DEaRnY8Hc9zktlKL+IyhnX1RXKx0ssGGi0PrKU72UcZLhnAYRT2NA
 Wd4SZZzw==;
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lW2l5-006WbN-JV; Mon, 12 Apr 2021 20:02:09 +0000
Received: by mail-ed1-x533.google.com with SMTP id g17so15825059edm.6;
 Mon, 12 Apr 2021 13:02:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=+jLQeqDVwDZITNTxZ7lqCyLYCdhzsUWl09kewB6trH0=;
 b=YZNwcdEImrCzGnD0FqZShGAeqfaj8pc/By0os1O5rLpJUb/eSLjfO+VDrRDeNSdhIA
 SXmJQcCGibEYDlGYCn18CYjpWEBBljP64+NGWLMMj6LptLDaCWupuVU/msVFN72yvABt
 ez5HLfMajASimP9jgXLAJf+WK96umC3zciy52o3+kpU+t+vwXz5vHTa7bE16YO0xmzVQ
 LSC5BLSeuvPwfB+Kl4TeBH3cLUBWlpvzSh+jH3lBBJoqna2pu0R55YWHEtl1kJu2mi72
 fSQj5rStNeNNB6Jr6ek0zooBcMlWIZfLNPBJV2bI5NDoQyQf+dRU814O4uFQr4fYW2hM
 4nWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=+jLQeqDVwDZITNTxZ7lqCyLYCdhzsUWl09kewB6trH0=;
 b=LYf5wlKFD4P38gL/ACM1YyJJ5RVAIwI2JWRSEbwy2EQRWUI5YiesaHLrvo8UkT8tkr
 1dfTgimVmkL+8agTkRodpSqt1cRUgmyp0T3Xk0ywVJFIWZbmA9Rt4+utAhy75nN2uPI9
 jnrokAigIPXxPUMBi7c9AUEcbsrlnoV4fK4y587RggVuK4zVL3PciDURK7i/9K8DrMNH
 /LwP2hQKnjrcOzngQPgQX0FOm3CjA3Q9UKH7KM6HlMQlDYekOyhUUDnKl0ST83eBQo4F
 o/yYQCxl0zGUorwQ4Qkhm/1Fz7y7z5GfNQsKZYpqlCZBURIZjdb9A/TGFu58pYkPM5g/
 wQmA==
X-Gm-Message-State: AOAM531S+ec71v7PgbSonNcaJqB+XgGWMNeJgWzfrcjuqEIY+bMtLeMq
 yj4wUEznALCYyaLlE57ga3c=
X-Google-Smtp-Source: ABdhPJx1jtaE/ZUGMEI+E3LxsIWY5rpu+gPFvZf6AVycYUhjxG8W4PL7/+hE1u9gNDTrCW/QkrAd0g==
X-Received: by 2002:a05:6402:2691:: with SMTP id
 w17mr23721636edd.81.1618257726232; 
 Mon, 12 Apr 2021 13:02:06 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id x9sm7514531edv.22.2021.04.12.13.02.05
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 12 Apr 2021 13:02:05 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, lee.jones@linaro.org,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/4] dt-bindings: pwm: add more compatible strings to
 pwm-rockchip.yaml
Date: Mon, 12 Apr 2021 22:01:53 +0200
Message-Id: <20210412200155.5316-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210412200155.5316-1-jbx6244@gmail.com>
References: <20210412200155.5316-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_130207_660163_CD8F0A20 
X-CRM114-Status: GOOD (  14.52  )
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
Note for rob+dt:
A tag was not added on purpose, because by the change of schema
for clocks and clock-names I add "rockchip,rk3328-pwm" to
the "if:", so strictly speaking V1 and (V2) V3 will not be the same.
Please have a look at it again.

For some SoC nodes this patch serie generates notifications
for undocumented "interrupts" properties shared between
PWM channels till there is consensus of what to do with it or
someone makes a solution for the whole PWM block.

Changed V3:
  fix mistake with compatibles introduced in V2
Changed V2:
  changed schema for clocks and clock-names
---
 Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml b/Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml
index 19b42d31d..5596bee70 100644
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
@@ -46,6 +57,7 @@ if:
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
