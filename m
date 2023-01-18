Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F395FC32793
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Jan 2023 12:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8hygCLanoyBTFjcXSAN39sn0loDoMAvrNyQBKLn64xM=; b=w1orj7LJm1Bpnr
	8rD4d+K91OwvfGdRars+L1yKyp/vTer7yrc18whp9xJdR2y9Lz9ZDvob5+ebXc5u1IngPuj5sILyF
	pwkHU1eigHzG/LPFs3UYCrapsyJkou8t8sdMTnC6/0lTaQH0W3TdA5Hvp2C4V7sgF7jZa3liNDHiT
	I84rfgVot8ieaHR2ygSGM9OLSCrpZ34ij3nR1T9lpNb0OBmiCgq8jGWdVkns1qdoZm02PdoniF3fv
	bQQJvZ3hu6qaSf5SS0Dbwt0Bp0HhNwT/DVCy5iYqEgSekvmdxNUmBujno/SbTpTGOT5cF+uFYT+mm
	GJlwLiIwBjTf44Co93Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI7K2-000i5Y-At; Wed, 18 Jan 2023 12:13:42 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pI7Jp-000i2C-Pk; Wed, 18 Jan 2023 12:13:31 +0000
Received: by mail-ej1-x62b.google.com with SMTP id az20so63655241ejc.1;
        Wed, 18 Jan 2023 04:13:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zSiUjqeIhXTuZdT6eBiGLcbiQdlWY4D946T8IZEq1tM=;
        b=dKanFbSavWhQ2T04eS+23uXizOzrzix2u0Cn/8NyzbdwfmUOqEwbG0Mvvs/5qQAZYw
         E9SMCML7RNO6mwGoYvIku1ZYootIDWCeVdQy4IOV9nnp5z9QMjUlEcQnoSIKsIEx4BuJ
         ANNkfnb3q0U5o5qoR2AxxjfX55b1fjCrbA/clrv/NzXcYQ1K6icZHfFK3HCaDyb2Mzbl
         W4iwTVmvr1HjtdQwfFXUlIwRHQJI+A58LMkUrbvyzCXpWKppAklGEwHAp0xqR1jcZ+pZ
         OJGYYZxgSkoRYiN5wwame4F5h8Vyoad7PzXPCsFNSiUysNL3v82BgUkf8PgkyPZ+MqE8
         5OpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zSiUjqeIhXTuZdT6eBiGLcbiQdlWY4D946T8IZEq1tM=;
        b=K72PsCyNE7+owyMGFh16RYYduaxHXcMCCqqxOwpWOMd1JAY0aw28p3rET21+iywLDG
         SOyFpaj/79lSiZoX4u/B2HDndqxK7Ktbt6HQUjc5utmJKhVpZRXXbWdhSBaqsEtsZfq5
         nMMAV/pP6We/xaXo1myVIVmrI+vH773qoRd5nZcjFQWxF4nj8unvIaDU48r+ks4dKn4P
         LSXBS3S8fQV4VNq0O5QpVPBmBHwbNkAwtQ7aj0OoQeyBLDIyMlIISk7r4UpzNY494GBo
         70y7yWzTOqab2j7raF9KzhRFDByclritfwDZTJlS3XqUdK1z2fUmFwIf3crzhbp2gb5A
         kAXg==
X-Gm-Message-State: AFqh2koLOjAlVcAxvusPuoyM5UlZECUZjzk9jgxnGPLKkTJjpSqMxQv9
	+lVyRZu5WPgHcCp2wkYTl3I=
X-Google-Smtp-Source: AMrXdXuJB5h75c09Lnc02md4iwcnhiUM2jh4kDT+SpXEP089W+YmPnXFzPBoQG85j5oV/lLrbE//Iw==
X-Received: by 2002:a17:907:86a5:b0:870:d4f3:61b3 with SMTP id qa37-20020a17090786a500b00870d4f361b3mr8604731ejc.12.1674044005883;
        Wed, 18 Jan 2023 04:13:25 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id r24-20020aa7da18000000b004704658abebsm14187212eds.54.2023.01.18.04.13.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 04:13:25 -0800 (PST)
Message-ID: <08de3f4b-e33f-95c8-3297-814ea107272a@gmail.com>
Date: Wed, 18 Jan 2023 13:13:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 1/4] dt-bindings: gpio: rockchip,gpio-bank: add compatible
 string per SoC
To: linus.walleij@linaro.org, brgl@bgdev.pl
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kever.yang@rock-chips.com, sjg@chromium.org,
 philipp.tomsich@vrull.eu
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230118_041329_860762_48D14E72 
X-CRM114-Status: UNSURE (   7.30  )
X-CRM114-Notice: Please train this message.
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

Currently all Rockchip gpio nodes have the same compatible.
Replace all the compatibles in gpio nodes to be able to
give them a consistent ID independent from probe order or alias.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 .../bindings/gpio/rockchip,gpio-bank.yaml         | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
index affd823c8..72fdfcc65 100644
--- a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
+++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
@@ -13,7 +13,22 @@ properties:
   compatible:
     enum:
       - rockchip,gpio-bank
+      - rockchip,px30-gpio-bank
+      - rockchip,rk3036-gpio-bank
+      - rockchip,rk3066a-gpio-bank
+      - rockchip,rk3128-gpio-bank
+      - rockchip,rk3188-gpio-bank
       - rockchip,rk3188-gpio-bank0
+      - rockchip,rk3228-gpio-bank
+      - rockchip,rk3288-gpio-bank
+      - rockchip,rk3328-gpio-bank
+      - rockchip,rk3308-gpio-bank
+      - rockchip,rk3368-gpio-bank
+      - rockchip,rk3399-gpio-bank
+      - rockchip,rk3568-gpio-bank
+      - rockchip,rk3588-gpio-bank
+      - rockchip,rv1108-gpio-bank
+      - rockchip,rv1126-gpio-bank

   reg:
     maxItems: 1
--
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
