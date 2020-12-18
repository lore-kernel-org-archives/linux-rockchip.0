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
	by smtp.lore.kernel.org (Postfix) with ESMTP id D67A7C4361B
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Dec 2020 12:06:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8CF6523443
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Dec 2020 12:06:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8CF6523443
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BSg/Y0UPuHISJfgkgACTqViFXEBrOS8/4atSTwMRNfI=; b=wTSnaxmERgXlFbTqGI2XNg+pNs
	RdFAzZFzGwhgPRG3H90GaXeWNpIxe7GqcwiUEQ0NDCyX27tj0cGo53emaOH+9HCR/ceHObR/d8XAH
	5RiFm4Mh5DIRPD3fPdD/H+oLZB6frz2Atqz6ghXc7ksmW7AO4cKeFZsLYyU2gF8VMBnmbfWp3/n3F
	DJ3rxgUyumFDA5kPt9tpYKTbnj8Hqg+0rOO9xx7+C3+hVKUQE6dFsPpo9+7uyHBV0JErr/kzbJHhg
	d11YqtHGoNV8n+t8VtPoBL/zP3QnsOInZkzkCle1RUG1kDLLlJUEdY5LJO8/HeFPe8OU2uBnRu0c3
	yy7Cjj8A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kqEWz-0007Kb-Bh; Fri, 18 Dec 2020 12:06:45 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kqEW9-00070O-O9; Fri, 18 Dec 2020 12:05:58 +0000
Received: by mail-ed1-x533.google.com with SMTP id b2so2113882edm.3;
 Fri, 18 Dec 2020 04:05:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Wu3SXkqHC6cpy3h0/8DvgzvKrbbUzD8H5+UCQx/bkb0=;
 b=RSDoocGUy3y3+pjCTiA7rPJRyh2f2zOqox4g2mZ0VURCEvUS3A94RgpQeZOSTcLlka
 Y+nzOj7YtHnJOB+E1XYRE9xUtGzjWptsh7gELogOsHkuN9uhMwPDjG/kIoViH3kKVIB/
 +oLu75pvejiF0tnQUAi6qkCkS5dOt1sqBLDttNzda1qbt5meNxBkLocnzc3x+Q+zQoEv
 v9McpspFF0mQbl9mpOcu9ZXfEjYx3uo7FHqC3khG9mIOAC55oaq9C3s+8yDW6znJjFuq
 7hi++xd/c7KJBjh90VUAwQU9caBfee0Izhyn+9HZC2BF1XCBiVnXYInQKuMkYmHhio+n
 i16A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Wu3SXkqHC6cpy3h0/8DvgzvKrbbUzD8H5+UCQx/bkb0=;
 b=OIzwABgibV6j6IgcK4XKZQoUFBU8YZgWltonijAKNslZEotXCQdt94FMFn/iqA2FDU
 LULbqDC1JK3ul5Qzgl2yy1VCHUhp1lSB3xMURSDA909LNPkRUwuxbYU118dLgXRw3NV1
 Hqat3TNeshqjLOR65U9c/JSCsFCNpb2KQFoQsQdomuaegOYZZAhuPJEKEeFARIOyW6oQ
 BXL3eS54nWSmu6UQ8aOGvHzCz+3PVVEw8LbkN8mgEkGOVK4KjLSBPBtq6MUxFnDMbJjQ
 R70wpMLHecYpDggAWO3j9BS2vCOEJhNSxAUFbwJ10hXy02ExQB44N0PR2IpVoOyKzuDh
 l6DQ==
X-Gm-Message-State: AOAM532mPwjwHe2qR2lXoW98Rs+ruYHtoeFTPGwawKMgak1OAAZVZxaf
 qS7tMktiqUpoYiLz7QHzTZs=
X-Google-Smtp-Source: ABdhPJwnO8bGvjXbEsr4oz6udOYL98137c2SWWKXKxu0iHrHZIP7VpcK2vstLE4PdR5l9bM+H2HDCA==
X-Received: by 2002:a05:6402:128d:: with SMTP id
 w13mr4044665edv.56.1608293152133; 
 Fri, 18 Dec 2020 04:05:52 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id ga37sm4775832ejc.96.2020.12.18.04.05.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 18 Dec 2020 04:05:51 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 8/8] ARM: dts: rockchip: remove clock-names property from
 watchdog node in rv1108.dtsi
Date: Fri, 18 Dec 2020 13:05:34 +0100
Message-Id: <20201218120534.13788-8-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20201218120534.13788-1-jbx6244@gmail.com>
References: <20201218120534.13788-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201218_070553_832972_AA8550BF 
X-CRM114-Status: GOOD (  13.57  )
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

A test with the command below gives this error:

/arch/arm/boot/dts/rv1108-evb.dt.yaml: watchdog@10360000:
clock-names:0: 'tclk' was expected

Comment from the dw_wdt.c file:

Try to request the watchdog dedicated timer clock source. It must
be supplied if asynchronous mode is enabled. Otherwise fallback
to the common timer/bus clocks configuration, in which the very
first found clock supply both timer and APB signals.

Like in the other Rockchip watchdog nodes the property "clock-names"
is not needed, so remove it.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/watchdog/snps,dw-wdt.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rv1108.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/rv1108.dtsi b/arch/arm/boot/dts/rv1108.dtsi
index 8ef8d038e..bec47e0be 100644
--- a/arch/arm/boot/dts/rv1108.dtsi
+++ b/arch/arm/boot/dts/rv1108.dtsi
@@ -304,7 +304,6 @@
 		reg = <0x10360000 0x100>;
 		interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru PCLK_WDT>;
-		clock-names = "pclk_wdt";
 		status = "disabled";
 	};
 
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
