Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9390FC4332F
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Nov 2022 07:55:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NZsGSHXKHdiQUrfLcshb5b/U+k3urCBkMX60c/6V+qQ=; b=QXaFn1Pizmttyf
	Vaujv9M1XfYoKXR4FhijfIzAdED5qd9ok9WBwSyCibdu3c5Nz4+3xP6a73Le1gX4qNWBarSgDDzfq
	mF19R0jmrMOaAYFAVyoonN/XjWTNGXuf5t237PrBIyySHaMsNOiasLS9BBnAberhpiNile1N+TNWO
	ot6++em9Nr0exqjHZc8IxdFBKOESn2A75et5ecD7tsrO0TQSd/1zDYotkFN+ljCddyVluTuXx56Yu
	CDoT/g7uWSr4+W/Tujf0eRs1H/rz7+64JPy8fKtVdQ6pOpFatglUwizOXpWpzo7ErOocUHnOCATPd
	6i6v1ZKVrmNlDwtF+cAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozvSs-0077iK-2t; Tue, 29 Nov 2022 07:55:38 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ozvS6-0077Jt-V1
	for linux-rockchip@lists.infradead.org; Tue, 29 Nov 2022 07:54:52 +0000
Received: by mail-pg1-x52e.google.com with SMTP id 82so4803700pgc.0
        for <linux-rockchip@lists.infradead.org>; Mon, 28 Nov 2022 23:54:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kx5NISSyDqv/VSOLheYlPNFpU1BdKimZ8CZBw5i7Eak=;
        b=gUj1yZkN2NYrQOXiVqYSZcjPLowhTTgHtdjvu7wyDW8JrI9i8QCziKvYWkgRISEPVg
         M+x4F11ExrxsDWE/PwPbqHpxFtUiHOpDOwb6fcSpIpb5STrD5BKA+lYllKNQgQIzxTtJ
         1pZeBy/RHjZGnFLgsl4wIL1dbOMz3aF43UkFppV/7TTt4TtVMdu9pi9jDQSU/l3vPl6+
         Q9itMOzAJRrsf7TNzpXNrsAGe/e2uR5k5qc+Am+2HKkOpes1ojcW6wLG4Rodn4qSnIJQ
         BIpCbmtjibS413exA2tu+rWMOVDngblQql0Am3IkaJOkDGZ2zAA/HytIQeDIYhzpV5Lk
         NkEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kx5NISSyDqv/VSOLheYlPNFpU1BdKimZ8CZBw5i7Eak=;
        b=jngVlmbBcRQ06fWcjiRvPTgMmMLbphfKZ9pzpl70sQ9+AS/01/uXiejh/xkleiTR1n
         PkCsMCuevXH+Sx47EgsVTa7MpjC7wlDcF8C2ze/5q05iCKJ4fPqIhljNTkjhEERDMsqA
         41aJO1PlODrA5fKMeTlHSwFE3tgo4Fk9K/TA3ibaRznryeX7L3RcxoCkEsWM32AYAHJo
         z8elz3hka/WxS5DtiXn+ZKjWl/LFuNBE568qAi1HCwnwk9iqMSE6DvoKc0ed3TBLFXcT
         8ixN3R2WTTNdwd09Ao2XwRuuj8907HMUY4FMUVUsz7D1EPagEMjdkcoF4+YZ36/bGxsr
         l/ug==
X-Gm-Message-State: ANoB5pkHeTT9vYE5bSSWOQV2rJ34sP4CXUWteqRCQ45fVPrxCxxnNkFk
	iohIo4/V3F7TfsKxT/zCd7z8Vw==
X-Google-Smtp-Source: AA0mqf63dwSRKpz+S6yWYPBXZfGPusmqyHM3o6Ji9d8FlCOwnfv80EYXYh4HJzu4Q3noiqnEXT2apg==
X-Received: by 2002:aa7:83d3:0:b0:56e:8477:1add with SMTP id j19-20020aa783d3000000b0056e84771addmr45151317pfn.13.1669708487830;
        Mon, 28 Nov 2022 23:54:47 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:5c9c:86cb:4472:916b])
        by smtp.gmail.com with ESMTPSA id 13-20020a170902c24d00b0017f72a430adsm10106342plg.71.2022.11.28.23.54.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Nov 2022 23:54:47 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Johan Jonker <jbx6244@gmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v9 1/8] dt-bindings: arm: rockchip: Add pmu compatible for rv1126
Date: Tue, 29 Nov 2022 13:24:17 +0530
Message-Id: <20221129075424.189655-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221129075424.189655-1-jagan@edgeble.ai>
References: <20221129075424.189655-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221128_235451_064189_FFFF28FA 
X-CRM114-Status: UNSURE (   9.21  )
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

Add PMU compatible string for rockchip rv1126.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v9:
- none
Changes for v8:
- add Krzysztof ack
Changes for v7:
- new patch

 Documentation/devicetree/bindings/arm/rockchip/pmu.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
index 8c73bc7f4009..b79c81cd9f0e 100644
--- a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
@@ -27,6 +27,7 @@ select:
           - rockchip,rk3399-pmu
           - rockchip,rk3568-pmu
           - rockchip,rk3588-pmu
+          - rockchip,rv1126-pmu
 
   required:
     - compatible
@@ -43,6 +44,7 @@ properties:
           - rockchip,rk3399-pmu
           - rockchip,rk3568-pmu
           - rockchip,rk3588-pmu
+          - rockchip,rv1126-pmu
       - const: syscon
       - const: simple-mfd
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
