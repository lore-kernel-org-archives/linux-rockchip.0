Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59BB2ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Oct 2022 18:41:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N5RlYh5P5BDX5Lk6xd0CyICXhI5RPM+YqGsOsuxe3iY=; b=YP7e9tfTUt8W/b
	xxMVy6l/lwIC1Q1oOqH/cvbFvc/wTvI76eIQxNJVdea+QbB8gjFHJiCZHb3Km+aHwV7cnU0mgYC39
	V4By5u4AVR5uVDOHG5WekmS8fG9B+AYOi4Bk9Qpb2Uknrk8nHu2umzaagJNcYw61ZZjeapOMxWw9k
	ljtCJCXWi5DmeMlH0MBVofJCl0UMzEWjDEVRMpDFE/mFIzXAj4y0WjD08TPTHvgrdiKVu0FF5W6JZ
	YlxtFJD0QbAnSeisugUgIJzi5qntwb/Nr26IRronIOJdhHBktwzywSB8W/pFxVWiFNUl06Mv5a0RL
	IDVYOUXU45CoTEgFXDBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooUHu-001fyx-JA; Fri, 28 Oct 2022 18:41:02 +0000
Received: from mail-oa1-x2c.google.com ([2001:4860:4864:20::2c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooUHs-001fwG-OO
	for linux-rockchip@lists.infradead.org; Fri, 28 Oct 2022 18:41:01 +0000
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-13b23e29e36so7226324fac.8
        for <linux-rockchip@lists.infradead.org>; Fri, 28 Oct 2022 11:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bpyIZVffuIxdOIfYvVswAUCJsvme+Kcw8Gat2LDzQEI=;
        b=Rg6HASonaiUryrYoyr+r4a6e1c7UDoxxLuTp/qZwATQOApibHardEl0dQtNY5YJjpM
         8WUW5e8MWLHIrgzyJOJOrSUmPxEhk7s5A+a6bRCCJW96A0DbSUbhC4dTuWd+VQ+OwbN7
         AuClE1+DL9NXpsoR1obzNwzbiWadGh8l9rpR8PyTAlCUVbjfuDgA76xZJ4LlhZNn+Ifa
         tAO1Fh2VoIwjyyBYounPwVgS9AAUdi5fHE/4rWLaEQWyhRQfk1BvJux22DaZpK+a31bA
         LMwZK0HNtaZjHbjG/PkwV7Xj4/YrFlw556ufHwLE2cRAxZWwnS0YW5zrx+OWWkF5OTWj
         FrdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bpyIZVffuIxdOIfYvVswAUCJsvme+Kcw8Gat2LDzQEI=;
        b=Z8HVSbhiSPZmPnPbvHZzvFhN3RCW/TaSmXyuVpgBBpdHQcyglRj2fALCD/xMKWg4yH
         82B3GveI7GOsAcjH2ozZDaBwbeznXF65PD95O0uqtf9mhxHsJIi6gC6KgSa23VWldz8p
         fJj0wUMydyv/v/JubaVyH0Rf+P8Ezo0hJHHw/ZlVxANwG6Lr4VRyBaVBZDQ5fQK6UrkM
         wkRz1TBwBuMSC6OncaeHLt4Mm8Kk7Kc1EtFa81F+fBH0Bw3CCiUGHWYSnh9FA194/cbG
         c7EzBxvyZ3xZS79l+p/QuI9j3w9e81wIab9sXnWYgB7a6TEOmdtncg03ZLtQdA5XhW9j
         wswQ==
X-Gm-Message-State: ACrzQf2ORV9eceygHIaHHiMk93gqx6Fzh9Zcc9Qqh1EwISPsfBdNwRxM
	q/k6PY322OlMXKi/g3RgkI0=
X-Google-Smtp-Source: AMsMyM5SLy6kx00jwdnaLVHITsi9r1R7pxjdOG7cRPBFAbthoZStMOySAcBo5wg8n8/45qNvqBjV2Q==
X-Received: by 2002:a05:6871:54e:b0:13b:29b7:e4be with SMTP id t14-20020a056871054e00b0013b29b7e4bemr351350oal.176.1666982455729;
        Fri, 28 Oct 2022 11:40:55 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id z7-20020a056830290700b0066c34486aa7sm575288otu.73.2022.10.28.11.40.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Oct 2022 11:40:55 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	pgwipeout@gmail.com,
	michael.riesch@wolfvision.net,
	frattaroli.nicolas@gmail.com,
	jagan@amarulasolutions.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/4] dt-bindings: arm: rockchip: Add Anbernic RG353V and RG353VS
Date: Fri, 28 Oct 2022 13:40:42 -0500
Message-Id: <20221028184045.13113-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221028184045.13113-1-macroalpha82@gmail.com>
References: <20221028184045.13113-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_114100_814757_5A946E29 
X-CRM114-Status: UNSURE (   7.78  )
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

Add entry for the Anbernic RG353V and RG353VS handheld devices.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index c6c69a4e3777..29a1a30e0606 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -35,6 +35,16 @@ properties:
           - const: anbernic,rg353p
           - const: rockchip,rk3566
 
+      - description: Anbernic RG353V
+        items:
+          - const: anbernic,rg353v
+          - const: rockchip,rk3566
+
+      - description: Anbernic RG353VS
+        items:
+          - const: anbernic,rg353vs
+          - const: rockchip,rk3566
+
       - description: Anbernic RG503
         items:
           - const: anbernic,rg503
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
