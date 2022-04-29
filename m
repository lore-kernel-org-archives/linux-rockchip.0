Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C435AC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Apr 2022 11:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X0CDvBBFp/YBfGrKCjET2AipCCX3aymHj86AvA6Cgr8=; b=m0haXOfOj5Q3wt
	07UWxqVYxpeb9JTmWOhvTeHp1yYWlaofkPOL8bH5wVmeA+/Qug14PJ8LcRxFrqrGn0SSKPc0SIjPI
	FvaKbmKQuqo6Ta2xREoyZhYoClPjWMuGoEfgBTJHoaIcMzh4rE8YmrWCqbQyA7cjOpl+iLOpfkXP7
	k9OJM3QBuQra8UC6s9vwC+YRCVS+fprZNf+YAjVcL4AtZobMvcdC0/4B+d8/NTmY4gkbvPBxU5gz9
	ADnAe4QMEEuJr+sZah4VOTVI8CPokZd/AcWp2M9zlSAh/yi7mLDbhUrwc6JTedMdqFf7ddeoiEzjC
	5fRiSBg0KoXw3Eay7hhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkPBx-00B1OB-Nf; Fri, 29 Apr 2022 11:53:45 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkPBR-00B15L-8m; Fri, 29 Apr 2022 11:53:15 +0000
Received: by mail-qk1-x730.google.com with SMTP id x77so4848745qkb.3;
 Fri, 29 Apr 2022 04:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gGeL3vqvV+tsZXortm1bChbjn2BI/sUzqWi2Z5G5epg=;
 b=gHuIH+ICOFoIXkjGy7RKBQ2zwMf/vZuR/lkb7AySl9mTPbJVzIBHpa29CnhPA9ff/a
 if0iKwPV1lO7dw2PcKXUalir6wvcEcnmlgALlwkKyCkyV2KZLqMxshNVSJXBg19NSEvR
 58ZJ/4Wh+sky5VvR02xO4X6ptkonHKtR5yCP95AgD0V9VLLVN/w2RPTInDfEhFIPrjt4
 m/Im26teWUlAM9ZrH0swzoRQnXPpaj9sdrPTvvg//xuIesfW/fQYAlylw5nUJdBi9vdB
 +Eb0UgFeBnbQBfvyUIrLg9GRnqMN5x1yMX+LroCfYTRBAalNfckFiBWxi57jVnM3lrDB
 M4Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gGeL3vqvV+tsZXortm1bChbjn2BI/sUzqWi2Z5G5epg=;
 b=Vc1OpqsybF/lfoJVLSEMziJ4F2SuUq1blBaGb0UYW+zIg9IACTkHMnlthtQksD4m9y
 1bS807RCrHktdzKL3vhnUwp/HIYVfrZHme38+zocM4REJbTUg4IycP9i6h7LA1jcOEJ2
 bX371LF8Psxlj3HMoBV6PntAWlqrn+bFgBHMMlCp0VakOA/5OtESgekYG85Gs8DfvzJU
 A2Rf8EGCHWL7jcqEzayO8kjbTeuezSbxwzlks/Ss/wJjvdm80IKSyjkWgq0p+J7Sq5Gw
 K8f/9F7brQB+RwQHite9JvrIXrVTmf+d/OWDoRK62lZvuw+bMKUF2s9IobtnD0DrfjZo
 Oxyg==
X-Gm-Message-State: AOAM530f2LY04Nm8kKdbN2Qb5pYxofIw1E86xrN5tJxpyCRihbUQqE+3
 7TnxgyY7s91ByJxksZ9v1u5lmWb7B5687Q==
X-Google-Smtp-Source: ABdhPJw/jdE9yOwN6ajIW50uiF7ojyla0JcoEwOGAtnxxCReSGQD6/sAc4TCfGtIR586QfdVldxkbg==
X-Received: by 2002:a05:620a:4689:b0:69e:a3c7:4cfa with SMTP id
 bq9-20020a05620a468900b0069ea3c74cfamr22637948qkb.591.1651233190865; 
 Fri, 29 Apr 2022 04:53:10 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 123-20020a370c81000000b0069fa408fdb7sm1382505qkm.24.2022.04.29.04.53.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 29 Apr 2022 04:53:10 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 3/7] dt-bindings: arm: rockchip: Add Firefly Station M2
Date: Fri, 29 Apr 2022 07:52:48 -0400
Message-Id: <20220429115252.2360496-4-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220429115252.2360496-1-pgwipeout@gmail.com>
References: <20220429115252.2360496-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220429_045313_345163_F39CD3CA 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The Station M2 is a compact single board computer based on the rk3566
SoC. It outputs on uart2 for debug and console purposes.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index b85a8e6c5e75..288d044d48bc 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -133,6 +133,11 @@ properties:
               - firefly,roc-rk3399-pc-plus
           - const: rockchip,rk3399
 
+      - description: Firefly Station M2
+        items:
+          - const: firefly,rk3566-roc-pc
+          - const: rockchip,rk3566
+
       - description: FriendlyElec NanoPi R2S
         items:
           - const: friendlyarm,nanopi-r2s
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
