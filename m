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
	by smtp.lore.kernel.org (Postfix) with ESMTP id C31B3C4361B
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Dec 2020 12:06:07 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4A60223443
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Dec 2020 12:06:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4A60223443
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TSgipj6NXYUq9ugD3GbFZ7pvteOHJIidgyFXK2oxEus=; b=JgaZJcyyTaVpaqtlmiP32unTkE
	lxYnR5pRaBEKBEW2nWLWmRP2zUtEejJarGmVZuSUXYmXgML9Z3BckkkgbwSfnqdBcd1SSiOz7ds/M
	yVGMuzpXrPrbZ8noZ9YEZ1gV80wSNINwdusQ0Z0zPapTbeHDdSqeO7ARttaHYO8UlWY66f9fq1w/o
	u1ukzQNEVrhvdGpD7nYrjgADLuK6kIjYHhRUU6zppb2NPdlM5E+ZUgtgRnmmCvRflLaLFnd+QFOc0
	Ia+0ldXbzJLTLt7FJm/MTwhkjyOA1NA6evZa+WO7ltlYL0WiYnTA2xRTLm0U5VQYY9V6G7t+FE8yw
	E7X+7X0g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kqEWJ-00073G-Tb; Fri, 18 Dec 2020 12:06:04 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kqEW7-0006zY-JK; Fri, 18 Dec 2020 12:05:53 +0000
Received: by mail-ej1-x62d.google.com with SMTP id ga15so2875331ejb.4;
 Fri, 18 Dec 2020 04:05:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=nprlEGWaHBCqZYtho0Xw3+zC3YA4tgvCjM5E0w0Edtk=;
 b=SY671sQYZGbgkrpI5o3PX3OfSBObJr+MvSOfQsI4q8u1EM0iT7qmL31CXgjD418+6w
 9TWWy6F74drQGqno+9XkxFxjXGDKeU4hrX6Ge5EMRqnTyvZhO3RUCqL0NEPI4q1vMK23
 YGujL+kvZmqyzWIB+fJn6G2X240t9G5nYXQO/poMtqCwTfKJxY1Oy2JqD20I49dmj4DU
 cuEeGPLeaPjcp3kpcIY6jsWpsfcEway6nUIF4Am6Ti2brXySV3eajbz4E6R7ZBWlJtOv
 G7+KrFFVxcXNmDBwS/0DrXK/jB5T07pq56SgvONzE0tb2UxU/xlJJM0h6Ky2yW6CHB6s
 6EsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=nprlEGWaHBCqZYtho0Xw3+zC3YA4tgvCjM5E0w0Edtk=;
 b=FT7VFrrGeFKRE74nBG2dw4m9Yk53h3nFu2ws6OKL9s1uzX8j6tuVeREXxdNi219lc1
 pr4SiIkmEBFxUWgtL4U04b/Tb3TKU86cy4l/Ng/kHt0I1LicC67DfiVW/bgyrRvP4A8T
 msbpT68m8bmg+e2gy/qvR9yw71AkZ1p71ApvRM8JftMSm3V5kVZ/ndbFXm7GcqILrgpM
 xE3uS6SE+P631QrxCWxSb1Jj2iczfNxGWX4lIAasNCIENp+tYt2eH7C/hvafjZ6e0Anl
 AE85WDmsglx9WXtMt9LD63JVzBbRiKBim7Uc2sIwbeAtgvA6uKtaz8cAj3g0JnuKzHRa
 Z7+Q==
X-Gm-Message-State: AOAM532iXv+e2y4KYSQjNtnTtikA5Bhl2vlwu7HGMdzlzXJzjJHBU0Ni
 0ntp587wWKVxQJ08aZgJyMk=
X-Google-Smtp-Source: ABdhPJxtVfoaiGqv5Jo3CmnEdaRolsTqNzNZjivs47itf0kkIzZ8MMrUHO70K046YOsPTiD87cNN2g==
X-Received: by 2002:a17:906:d209:: with SMTP id
 w9mr3081004ejz.211.1608293150174; 
 Fri, 18 Dec 2020 04:05:50 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id ga37sm4775832ejc.96.2020.12.18.04.05.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 18 Dec 2020 04:05:49 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 6/8] arm64: dts: rockchip: add new watchdog compatible to
 rk3328.dtsi
Date: Fri, 18 Dec 2020 13:05:32 +0100
Message-Id: <20201218120534.13788-6-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201218120534.13788-1-jbx6244@gmail.com>
References: <20201218120534.13788-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201218_070551_646690_AFA4C3A3 
X-CRM114-Status: GOOD (  14.50  )
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
In the more recently added Rockchip rk3328.dtsi file only
the fallback string "snps,dw-wdt" is used, so add the new
compatible string:

"rockchip,rk3328-wdt", "snps,dw-wdt"

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index bbdb19a3e..1e3e1086e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -453,7 +453,7 @@
 	};
 
 	wdt: watchdog@ff1a0000 {
-		compatible = "snps,dw-wdt";
+		compatible = "rockchip,rk3328-wdt", "snps,dw-wdt";
 		reg = <0x0 0xff1a0000 0x0 0x100>;
 		interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru PCLK_WDT>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
