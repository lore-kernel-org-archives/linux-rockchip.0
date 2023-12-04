Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91CFCC4167B
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Dec 2023 18:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=reiMH28XtecFwP/bTeq10qVAJnzsuDXMzK8wbC6mZ/g=; b=O5vgSEnWlDWgbA
	hpy5x8T0liT0ma1LaB+WpSm+m+vM64CvePvRgN/ulAX/WYJ+D6Iw1FmkhyEsJV+xbDJ8QKGvSfVHH
	HHk7uEP5nS/9ENy2VC3+zA1Q1t4unCC5CwmcXZbWp3x9jq4ZtWQWl/Jve6dV0USx3+9ErhrmKgCNy
	v5y/cny7apTFzzrtWzEkySHXikJXOJo1b4b7Z7zLybsPuiNzEkvJUTUfdMePHTTTmGPRlNIR+9D3g
	n413Cqfr9tKgzxdBLq4aW5unpqiqFfFhGzdrBku+ILYiDepV7bohsvSoCzlvBikKGurnsSZiSGss1
	Q3c8/sRpzwW/K3gb7ylA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAE8V-005Nz9-0f;
	Mon, 04 Dec 2023 18:57:43 +0000
Received: from mail-oo1-xc2d.google.com ([2607:f8b0:4864:20::c2d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAE8M-005Npv-2Z
	for linux-rockchip@lists.infradead.org;
	Mon, 04 Dec 2023 18:57:36 +0000
Received: by mail-oo1-xc2d.google.com with SMTP id 006d021491bc7-58e1ddc68b2so1950336eaf.2
        for <linux-rockchip@lists.infradead.org>; Mon, 04 Dec 2023 10:57:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701716253; x=1702321053; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gmJdBsEIoaHpkciH4cOKP2SWtpRhXc0Wn244MKf8EyU=;
        b=HSK5SqjVoVo5m6kt2DewMZEXDL13POW7KHE1FzKdN5qEnDFtQqJqBwdUNEZFu2qseT
         ITYeDbantxev5oSSE4+mxJfTszZc9miTjNkG4gKAEya24S0s4Q/fqIcOppibzmLjEVnM
         NmQ+B38DaDrmxuvzxXce6ezgXirjlh/UjPJLneaN6Gt63EbvPGrMIQ7rQNWAgqSgi9va
         jNH6WLh56a1xKfgssHdOZIWIzLGRQAgyDfRdd3wk1fEwA7dTxV6fl+KScPMPT2QhPCUQ
         eCym/iGiwQHI818ZjWKAt7BW4zvYO7fa9KuUttTcHXcLwQEaOLxEbiNQAOdSaMC0Q5Lc
         n+/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701716253; x=1702321053;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gmJdBsEIoaHpkciH4cOKP2SWtpRhXc0Wn244MKf8EyU=;
        b=glKB1BzqVfZahm8jfevg+fKxF66CKhFBLPyhakpxnWjeRWP4oaE0FGdIJ6B6A335at
         l1iPeMbs76TLM4uWxdwTg3ZyKsyUjl3VULq6gEMQW3HRyTrhpXQ+HmygQHLpDLekTAdi
         MMOFIN4Mea15vgd8i7hFV2BAN47fnuWX58w43m5i8CMy6TILS3+NOkGlCCX29okTG20P
         w7qadAudFFTi7IKk3YrQ8cdYzdBKPXvmM5XVZEicuVtxb82+RbaT3H6sZCmsLJOEPFcD
         fLy8J+3WxcJgS1Yr+W5ePccF2K0rQL8TgyNU9Na4lZ3RV+ZUm5B6p4vJ0LwPz1sIVdKp
         s79g==
X-Gm-Message-State: AOJu0YzcgU86N62ioUoRgXwvkeGsOllreyHmeC/s49wymrK+duMDZH9B
	9SMMo9071gTkqaeqNrdj4Qsl3uVbV48=
X-Google-Smtp-Source: AGHT+IFQGyE/M8sayDjI/7D2oxRg41bIw/oTyLd8Z0sAIq2ffMyqLkUXBu0XuWHn+CEm/Ver7+3Bkw==
X-Received: by 2002:a05:6820:2291:b0:58e:2845:d43b with SMTP id ck17-20020a056820229100b0058e2845d43bmr4008004oob.4.1701716253433;
        Mon, 04 Dec 2023 10:57:33 -0800 (PST)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id y25-20020a4a2d19000000b00581fc1af0a7sm2073303ooy.28.2023.12.04.10.57.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 10:57:33 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: dri-devel@lists.freedesktop.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	tzimmermann@suse.de,
	mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch,
	airlied@gmail.com,
	sam@ravnborg.org,
	quic_jesszhan@quicinc.com,
	neil.armstrong@linaro.org,
	javierm@redhat.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH V2 09/10] dt-bindings: arm: rockchip: Add Powkiddy X55
Date: Mon,  4 Dec 2023 12:57:18 -0600
Message-Id: <20231204185719.569021-10-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231204185719.569021-1-macroalpha82@gmail.com>
References: <20231204185719.569021-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231204_105734_833737_B14E7D0F 
X-CRM114-Status: UNSURE (   8.88  )
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

From: Chris Morgan <macromorgan@hotmail.com>

The Powkiddy RK2023 is a handheld gaming device made by Powkiddy and
powered by the Rockchip RK3566 SoC. This device is somewhat similar
to the existing Powkiddy RK3566 devices, which have been grouped
together with a previous commit[1].

[1] https://lore.kernel.org/linux-rockchip/20231117202536.1387815-1-macroalpha82@gmail.com/T/#m4764997cfafaca22fe677200de96caa5fb8f0005

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 021a0e95ba62..5e22f247ee6e 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -681,6 +681,7 @@ properties:
           - enum:
               - powkiddy,rgb30
               - powkiddy,rk2023
+              - powkiddy,x55
           - const: rockchip,rk3566
 
       - description: Radxa Compute Module 3(CM3)
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
