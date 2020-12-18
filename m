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
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC92DC4361B
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Dec 2020 12:06:36 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7175623A51
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Dec 2020 12:06:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7175623A51
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B1+uw4Oi93TaZ7xg4sqS+b0KZsrJtEUjWiMIS8XsI80=; b=C0+WOE6zBRXXiDUmCgj0WXM9Xq
	aaiOCWPN4XDWvpJSolqUQPWfOaetaP3Cned2tM2BIk0I3SOeqAs3Gs/Y9XNzeHx+u7BaQe+Xnuve0
	EJMrm0HkOQ3MdGFGv2pjVu5ApmEs2McayHUtD5mbHRiOrJFESfoz/nJoqvzujjC4ZFjjTUM3zLqcM
	zfW+WX9HVOfP/y7ZY3xHhvGZVXvn2B0MyhymgWjGRA86Ym/yoWTH5OcSl26SPiYeyGN0jB/umHeHv
	WGhuhXr25wBYuMMDeeVPtrHm+2v5u5x4Ghq7z5D1w7tiMJBUZq+bbsbv+urXfSBawHnjTapNYcqvl
	fIkHaIiw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kqEWm-0007C6-Dq; Fri, 18 Dec 2020 12:06:32 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kqEW5-0006yt-Qm; Fri, 18 Dec 2020 12:05:54 +0000
Received: by mail-ej1-x62a.google.com with SMTP id lt17so2880609ejb.3;
 Fri, 18 Dec 2020 04:05:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/ZZ4VBnbNLp5BmhedYREI5dGQvhTk+buJrXKgrwV+9k=;
 b=BjFKZ/kInBB3IhnwuwfILcjBujRZmZru2u9hhK/11pIIrU0IxLhAlXBTf0CNPaJun1
 C5dyMdl8Dbjecd2wZl4krNXj23NRef7m9FM6f4SeJiJylmw5trYMnUpFKiRteYmdydNM
 7pL2VQklCt4/P54w+lOiE/S/IdiuHLLsOH7pOHy7URn6nk0CWoe4foaiwCp0fTQwQgbr
 kGr2sWtKO3Qs2e+oj61SHQVqJFMWFfdIF1us/ofJT2fyerjW5CCy86VxYVq9P8SvpckU
 QGu9UYSBQDidZiM23oFL1svRWeYqdP/NAmB4ESLGEnE/dD+YxXaY1M69bNZdkuURNFnE
 OPVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/ZZ4VBnbNLp5BmhedYREI5dGQvhTk+buJrXKgrwV+9k=;
 b=AAZQIcWC249CXtdJECTFYQo1sMtsOThM8NmPC0zcxj8oRSVuqQyFwpxciPQj2MwttS
 lQieNagmidzmZK8GVkZBvP8Aj8ZpdeDYUltNe1TvSHVIRiUy+S/3QoAZiP51r8zLjLor
 GY/k9aw6O0E+eeGmWMzls2rUJQx0v375SkXHa9qUqVSqvEl6StEz73dqeOgYmCtTzj9H
 gV9sI07bJo5ELd2rOhgQRhCyOLQjMEXUU90eQiRCJfe3kDvgC8P8aIBfH/gooKFr5b2I
 TYGdtB2f7d13LpsnyKLktGnsLYtjyazPY2NXuGea9e5pYl/F0SI+qySb5CmOrzkNPoax
 7+fQ==
X-Gm-Message-State: AOAM5311ATen3ozUxIeqNGB1tjvoAzYey8TinkIuBmjaDMKwSM2Z/KTw
 +SdMMCTs11NrPCLundTuUR8=
X-Google-Smtp-Source: ABdhPJxHfIZ2zikC+cc85SIfju4KkJ6KDnevlI+HVFp90ifbcpbus3lkMjqe1/lr0Tuf6M/rCLanQg==
X-Received: by 2002:a17:906:c289:: with SMTP id
 r9mr3587553ejz.311.1608293148392; 
 Fri, 18 Dec 2020 04:05:48 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id ga37sm4775832ejc.96.2020.12.18.04.05.47
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 18 Dec 2020 04:05:47 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 4/8] arm64: dts: rockchip: add new watchdog compatible to
 px30.dtsi
Date: Fri, 18 Dec 2020 13:05:30 +0100
Message-Id: <20201218120534.13788-4-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201218120534.13788-1-jbx6244@gmail.com>
References: <20201218120534.13788-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201218_070549_879676_E2932A79 
X-CRM114-Status: GOOD (  14.47  )
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
In the more recently added Rockchip px30.dtsi file only
the fallback string "snps,dw-wdt" is used, so add the new
compatible string:

"rockchip,px30-wdt", "snps,dw-wdt"

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/px30.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
index af6bcef9e..541785425 100644
--- a/arch/arm64/boot/dts/rockchip/px30.dtsi
+++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
@@ -600,7 +600,7 @@
 	};
 
 	wdt: watchdog@ff1e0000 {
-		compatible = "snps,dw-wdt";
+		compatible = "rockchip,px30-wdt", "snps,dw-wdt";
 		reg = <0x0 0xff1e0000 0x0 0x100>;
 		clocks = <&cru PCLK_WDT_NS>;
 		interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
