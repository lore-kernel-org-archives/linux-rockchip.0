Return-Path: <SRS0=llJB=FW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15635C4361B
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Dec 2020 12:06:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BC94B23443
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Dec 2020 12:06:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BC94B23443
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9XmccP/8j+yB8dDvFUI6TWf1kh41FIqRdkLy+RahM7A=; b=gi5copb7c+idDevFbdQ2b/SBFA
	eNsjpdeVJb+KLiEw1ZqXtxrCi8TnGroVXBWXdEQlwA8GhiH8yMITY65annpFzQZwzeuZzwFlLWAyd
	SOJSDzrmpyrzdeUI7r0MC9L70n/c9hwbigCcYPaeANSZpzyDGEErMUsNtMxBU4zI5D/gU6XGX5JUX
	19jXctBnKflmMXDA03kiWk4tV1GfWFrBAu+Zar9ZP2iXl6B8Zn78zkrSLGUGDzc21ajemgOCxuLVO
	P8PFahHfqXrqyXdNKdTq1ZTcrSk6o03pBIeIg3SrI92TQeI1Riu0LvytJ0tcKe72f2+z3rY1dE+Yh
	/c+qDLlQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kqEWo-0007DN-Co; Fri, 18 Dec 2020 12:06:34 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kqEW8-000703-I9; Fri, 18 Dec 2020 12:05:54 +0000
Received: by mail-ed1-x531.google.com with SMTP id cw27so2105722edb.5;
 Fri, 18 Dec 2020 04:05:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4XAsCwTny31hiZyHYjOU01P8vUXEjyFQK6m4wdFwu8Y=;
 b=rztLfrcsh000/0nNHokBSq0/k3YJ0bYQLi5FLxUvhqBE+bpF3a4eDnw36EdNCtT8io
 wQZ7JjB5ZlnMLA69ETJWBjJsmA7QAKlswM6DjMf3XNCO5506YE8rSbYNUsqAhkZkHdp9
 pNC9/0V5qMjh4lqPOtHaRFss9P533vyxVtBGPDTf/K4pZ/PA3anZW1vJ00vWycY0hS9N
 UvW3iXutKbV0XElZEk+9tQTFrEIQbtv9zBS7jJi3A3vDU6ZM7rxAgMsrxNCRMYMLjPA3
 1b/jEka5FdPD6JRg2767kzcShknNAcJtwgvA2+aV0gHgJgUOVbcFoVdRsPMbWT15D/30
 IpHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4XAsCwTny31hiZyHYjOU01P8vUXEjyFQK6m4wdFwu8Y=;
 b=R4pCOKkje+7LXvZmZnNHiE/AujlLey0osX3fBze7mgRljO5V6FnJWWEC/rLEPLZYGY
 2uVd1jJqoaQvA+H5NM22sonJjJAgzrhpmhQpi0cmozpyqaalaiSp7AXfwinCD+bIG36n
 WjcWnMFB7K9rdYUwE4Ns7lKrtHgtyoikjhDhgpXLZWmNQPE+eOgfjZznV2mgpaby7/xT
 8dzjNcsYJMqWxGUwrA9DjpRC6s+n8kflgGhaBw/GK8efnWascUYezqvLyxwvrxKiYu9Y
 PWI4xvkgzpJrSrWruIufu80BUw0B1iNGtoo/C89/XMp6kNsNQAu/DovU5MQqADPSry3j
 Phvw==
X-Gm-Message-State: AOAM530uAMdEvhrw7qvCv0t4oGiC9ZY5iP/48JgUfnwp24iC5Fhkli6p
 CPFoBLJW76/u4sufX1YVxL4=
X-Google-Smtp-Source: ABdhPJwZPyzaq+Ep3j3m5cpnxkyP4k8BkMeWDUm/3OvnwsQzAOM2NmyQgnOUyVyHsiOokI10ALIlBA==
X-Received: by 2002:a50:8a90:: with SMTP id j16mr4007056edj.334.1608293151123; 
 Fri, 18 Dec 2020 04:05:51 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id ga37sm4775832ejc.96.2020.12.18.04.05.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 18 Dec 2020 04:05:50 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 7/8] arm64: dts: rockchip: add new watchdog compatible to
 rk3399.dtsi
Date: Fri, 18 Dec 2020 13:05:33 +0100
Message-Id: <20201218120534.13788-7-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201218120534.13788-1-jbx6244@gmail.com>
References: <20201218120534.13788-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201218_070552_680723_9E498893 
X-CRM114-Status: GOOD (  14.51  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, linux-watchdog@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org, jamie@jamieiles.com,
 wim@linux-watchdog.org, linux@roeck-us.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The watchdog compatible strings are suppose to be SoC orientated.
In the more recently added Rockchip rk3399.dtsi file only
the fallback string "snps,dw-wdt" is used, so add the new
compatible string:

"rockchip,rk3399-wdt", "snps,dw-wdt"

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 2b99480ea..825eb254b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1536,7 +1536,7 @@
 	};
 
 	watchdog@ff848000 {
-		compatible = "snps,dw-wdt";
+		compatible = "rockchip,rk3399-wdt", "snps,dw-wdt";
 		reg = <0x0 0xff848000 0x0 0x100>;
 		clocks = <&cru PCLK_WDT>;
 		interrupts = <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH 0>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
