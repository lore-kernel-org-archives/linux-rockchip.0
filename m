Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABC8AECAAD3
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Sep 2022 02:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VnlWcPoU/+zm0qYSmbIJZjinOto9IsujgIEkH5n4oJI=; b=27HbBhFeteNZi9
	thH6lD1vJMwop5P0VaL65LSd14qGw0kjD1EAI3MM7xMGgJP9BlQguGg4yOyUxEqKztmJcVhs2A/jL
	4oVDTUdtI2Tmgo5rwjkDfiz8FdnlHpqnHVx5vGO1cDqn7vJkAwoe1YYGcVqKvKS/q/vB4ESf+9/F8
	nakWd8CHexYmXV0MAa4Lya1onK7cTyZJkr9ehCrO3HU7XCLfmEl4zc3HnRsM58/RgWLkU9QWghxMq
	GGRZymdwy97i658sP95EduVhgIn9llhtHJtq72eT8+eubut72FO5BMCij0xf92zljVhXEJ7+O+FlO
	kE//EP1HcmHiSBRLDZPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYeZI-00FZ4t-LQ; Thu, 15 Sep 2022 02:25:32 +0000
Received: from mail-io1-xd29.google.com ([2607:f8b0:4864:20::d29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYeZ5-00FYv2-UF; Thu, 15 Sep 2022 02:25:21 +0000
Received: by mail-io1-xd29.google.com with SMTP id g8so11198891iob.0;
        Wed, 14 Sep 2022 19:25:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=FcCq5/dB7V3R5mFAoswVEVdxTdHGEshi3H6ToSrIfZc=;
        b=nXZjYXKuI8InaINvQFGf0O6l5pLOWovrE5BlFiYToLUzE2rdk7W8IdY8F8qlptRLNP
         7HcVJqrryB+5m6G/L8RM25h29asdAEth3DcIDvdWueTYXspof37QetUVs6lrfNMNphps
         nVdmoazQWSglSi3PJFfnPBVGhQ1vvBZm9ssLnFqtgQxzuxywhyi4T46mgN/8Skh7fD7t
         8lLDaIh2ZEssO0M2Zrgnu59+tJSkX4edEnVJeF0y8Fgct9k19QQf1yjhcOfkGO9SEQuO
         YlTX4uMQgTR6hTqWp4ICA2VoAaXj8fHLbO381u5+pgMR/LxSpR6fyb80qslwvejn8ywc
         KfVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=FcCq5/dB7V3R5mFAoswVEVdxTdHGEshi3H6ToSrIfZc=;
        b=E7+vv6SctpmTY2p5gP4mjzxbRLQubbr4rt7iu16MaFuSW5IULZo/C8KNDSFxZTO4pR
         wRALlmvhq8uGfwycAV+DV55ba9FYkG8fxx0TwbXJZRFayu7Ql96ExzVA/J6bO2lerRS4
         qRWbKR+X2yCPhn0KFo6R5LFFElwkd+T3E0jclNqiOgTBXRzHjHmP3/DiTXCVOJgHc8Gl
         vgTyFEUyj5FfVPIwDgmYj9n9YkWeBCSiJMvRoXgIyDJMgJqPBsw5IDnbCBPOQCXFRIzq
         5Kh89/mxGYGlTYzdC0t9ilkXNf9VGYbrhJBmdLNjW48rqdbFMOZdP37Upcv3WDfWp8I7
         cu/w==
X-Gm-Message-State: ACgBeo3GLt+/8sE/R1Ssa3rGNuCIEW18MNLRx761MbbFnny7OIs7TfcU
	jldxppLyCp5Fz9apnvK6Jbs=
X-Google-Smtp-Source: AA6agR7UeT2Gsj8eCA5eJVM1A4mdD0avDGF633frBeNVkt98hM0mKYl/ldPoEiX6F4mEf7GrbROAHg==
X-Received: by 2002:a05:6638:488d:b0:356:72f3:1c83 with SMTP id ct13-20020a056638488d00b0035672f31c83mr20134847jab.307.1663208717591;
        Wed, 14 Sep 2022 19:25:17 -0700 (PDT)
Received: from localhost.localdomain (tunnel525895-pt.tunnel.tserv15.lax1.ipv6.he.net. [2001:470:c:1200::2])
        by smtp.googlemail.com with ESMTPSA id g3-20020a056602072300b006a11760aebbsm7238461iox.36.2022.09.14.19.25.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Sep 2022 19:25:17 -0700 (PDT)
From: Tianling Shen <cnsztl@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Tianling Shen <cnsztl@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R4S Enterprise Edition
Date: Thu, 15 Sep 2022 10:25:10 +0800
Message-Id: <20220915022511.4267-1-cnsztl@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220911040628.13774-1-cnsztl@gmail.com>
References: <20220911040628.13774-1-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220914_192519_992083_12B2425C 
X-CRM114-Status: GOOD (  10.09  )
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

Add devicetree binding documentation for the FriendlyARM NanoPi R4S
Enterprise Edition.

Signed-off-by: Tianling Shen <cnsztl@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 7811ba64149c..309f76b803a5 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -151,6 +151,7 @@ properties:
               - friendlyarm,nanopi-m4b
               - friendlyarm,nanopi-neo4
               - friendlyarm,nanopi-r4s
+              - friendlyarm,nanopi-r4s-enterprise
           - const: rockchip,rk3399
 
       - description: GeekBuying GeekBox
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
