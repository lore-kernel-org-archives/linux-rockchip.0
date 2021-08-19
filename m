Return-Path: <SRS0=Qwjt=NK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0999C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Aug 2021 18:23:43 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C29AD610A5
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Aug 2021 18:23:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C29AD610A5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=canonical.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FRDQzO1GTnY39SBN9freTbnkI8k2tyiTpvs2SiqW00w=; b=X/fvukIvcL5ojl
	9pnEN6buMW9JNwhjXtbVQIPMGhpJG/qnzIrzZfVAgy7DurUIWkc0sr88lgYVX+Foe8OKLSpAv29Eo
	RnWC7XbxCU4zECrGMO6zwZ8Wny71IenCj9hH0KO+LK4TuYlMXuWHj064doa7u6WE1isw3erKQlogY
	EWB/eBBBzDw7kGVAiYeYUQZmNdNtyLp/2rwek58KJojp2s+brWcWXdKyktRSh9lAz3A17b0wnz/Su
	iSbdXfKujFbSuC9/mTkqGJmv3rYjB0C+iNlcAFyWy9UOx4XaG0xEAoBEPSzo7h0FfXyDXBN1Fo3VE
	zURJwZ5kWuD7AMmPqRNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGmhY-009EAe-8d; Thu, 19 Aug 2021 18:23:40 +0000
Received: from smtp-relay-canonical-0.canonical.com ([185.125.188.120])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGmhJ-009E75-4E
 for linux-rockchip@lists.infradead.org; Thu, 19 Aug 2021 18:23:29 +0000
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPS id 23B2F411C6
 for <linux-rockchip@lists.infradead.org>; Thu, 19 Aug 2021 18:23:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
 s=20210705; t=1629397398;
 bh=wXv+g9MByShu0tv6L5ordxjhpc+MsSSwpZ4DgfMhl7E=;
 h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
 b=Tw/6DYmDUAqjWQoln6W/lijlr4fSV11mi5RSxq0YJxy0pf2MChX2rXYBko45p6zM+
 h8YlUWkFf7VmcCUEvvU5BkNt+yzxoB0K/7lp0Weitx8YCuaunM6ZGrHknWeiKpkVZV
 vclaqR3a31eU3zxBZOfJ8QFT+8HAdCFbr8vvVBf2cFCXhV9djWBVM1XE6xHS9ODUqc
 5ujGYPoIfdXuJG9Sx2AhHcQFfqEULuWr3UOOR5Rxhg10GKvRvaEO4u3Gkpuo34jVoE
 yfGzv/BkhrWG4toapGNI4OWbZfbmnBngzCzO7y016rOUqoCBnhFNxZXnQfyDSw1Znc
 bYpe5/Zfh+nXg==
Received: by mail-ej1-f70.google.com with SMTP id
 e1-20020a170906c001b02905b53c2f6542so2599230ejz.7
 for <linux-rockchip@lists.infradead.org>; Thu, 19 Aug 2021 11:23:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=wXv+g9MByShu0tv6L5ordxjhpc+MsSSwpZ4DgfMhl7E=;
 b=tLjZD81IIbFqfZ1xURG7krH1fq+k69NX2hddVnPmBpeVneTAzkIJal7TwEKncDaoVt
 5zLSv49wk3K+ZesJXqmaGlxXWt4pWVqlBZIzpU8XSyyMo8JIwgqf0MB36icAfAkwamFS
 wS692ICGdgKA/nDy4klCyPoRNWLgXOkT64Cy7TtdL91XJGHzDhL7FfBalCrBGKOO5MAd
 mkVTzW/CdcXpl2D9rbAOqtnWBatOnfaRw2U8TYQM48oAcfMD3Ds6wCwjUL0YHdyg1jkr
 E24Rvz+gGoZLViD5Gz5kfzJwJfAISqqJ9EQnuk/WRcDO0S5BC1TiDx6LwamSCGOjCa7p
 GElA==
X-Gm-Message-State: AOAM533cQR58gQ2OkHt5U/MlC8MM1AiOmAhi8Ex1+B/geTfW81pN/Pex
 X8RLOd0yF9AvByA1OzZKGqLmEEqnpojHkUcYkrcJzomycebho/aTuTKrlm5AOKDTiT2jjRr50Em
 O7/wF6UZhNnv1LJdKrFViHSzx2Orl1ewZNEgI3eG+fddGy32+Jg==
X-Received: by 2002:a17:906:b286:: with SMTP id
 q6mr17000401ejz.120.1629397397850; 
 Thu, 19 Aug 2021 11:23:17 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwrG9+2tCoz8kPE9jEeoLuD0BBvKPHrr35QvvOIc37v4HQRU5a/njfqp1KeCSZm/azbfQSHeg==
X-Received: by 2002:a17:906:b286:: with SMTP id
 q6mr17000377ejz.120.1629397397609; 
 Thu, 19 Aug 2021 11:23:17 -0700 (PDT)
Received: from localhost.localdomain ([86.32.42.198])
 by smtp.gmail.com with ESMTPSA id c28sm1602113ejc.102.2021.08.19.11.23.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Aug 2021 11:23:17 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To: Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 1/2] arm64: dts: allwinner: a64: align operating-points table
 name with dtschema
Date: Thu, 19 Aug 2021 20:23:10 +0200
Message-Id: <20210819182311.223443-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210819_112325_395999_751ED177 
X-CRM114-Status: GOOD (  14.02  )
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

Align the name of operating-points node to dtschema to fix warnings like:

  arch/arm64/boot/dts/allwinner/sun50i-a64-bananapi-m64.dt.yaml:
    opp_table0: $nodename:0: 'opp_table0' does not match '^opp-table(-[a-z0-9]+)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64-cpu-opp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-cpu-opp.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64-cpu-opp.dtsi
index 578c37490d90..d55248bb8ddd 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-cpu-opp.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-cpu-opp.dtsi
@@ -4,7 +4,7 @@
  */
 
 / {
-	cpu0_opp_table: opp_table0 {
+	cpu0_opp_table: opp-table-0 {
 		compatible = "operating-points-v2";
 		opp-shared;
 
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
