Return-Path: <SRS0=xWqI=CN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 639E2C433E2
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2020 19:19:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1070E2073B
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2020 19:19:28 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="MLE+U0ke";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="eEwr7rjO"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1070E2073B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RHUMTrkJpeF0+WCmSOdVAiGyNflx2IZ2rTV5cizsUCk=; b=MLE+U0keGI2dQrp3zi01N3err
	30k1iMD3ycMPxREfjA/+iumga31jMIDKmNtEhvtyMUR92MAkMD9ff7xrbnhMh+OQzmtcOfypj85Hi
	pFeoGiQkxvKokHAXpjd+CtxdIoR3rRlK5VoKtJf/E+K4E3FsNERCnYO6+XPwJ0lkleGD4l6is+X+b
	wA2LDwSqvrbCYXLmcbEYVWuAqTI1mYqlV7wmannDxDVd8XuGWr2HkexPW1nexC2yOGJ15xHGWXNtY
	ZRyQT6TTXrdDdh0/PJlwHyoBZNH/Zfj1TcmO1z7Cv4irD/oK8m8sVYzREh1iS7Szz0F5LvIlB3qDM
	vxYBHEPlQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kEHF7-0005Dg-Vg; Fri, 04 Sep 2020 19:19:26 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kEHEl-00054I-5H
 for linux-rockchip@lists.infradead.org; Fri, 04 Sep 2020 19:19:10 +0000
Received: by mail-pl1-x641.google.com with SMTP id s10so1616613plp.1
 for <linux-rockchip@lists.infradead.org>; Fri, 04 Sep 2020 12:19:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qRMPP9LxKZUNiuhnbNUkYFs55rCgA//jb+vd/Rx6Ht0=;
 b=eEwr7rjOHjYc90SI75Z6Ut+MR+UIR8SjsReg4Nh+bkkNtf3q6mhsZe/DOfXcHbnOjz
 drKjfYKMQUPR1vGqcPN3Bl+y6ed/X+LsPKZVQsSpKrtVddmpMBN0zhjmooYpjO8cxUyh
 k3zKOVzfP8YdEHI1VaORIAtYLL2AQ6r2WUqAs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qRMPP9LxKZUNiuhnbNUkYFs55rCgA//jb+vd/Rx6Ht0=;
 b=cgyVfpiNArdHCJlnRTtEfeS1Ao+2EWLaXgb94VAbD2TKPwFUJn47N0rqciP4niuVaq
 BMT+hVGF2NPm2GC4ezV7ufVdAewaXrMOP4m8zE6nnrs7D7RjY4wAlSmqmVtY+EL87Sed
 dB3QZ/VtE6PGkZm80RuK70Dv0rC9OA32oLf/3EreOX8zftFLdEwDe0eq1gEePqxEK75l
 APwOE+jkMElge7vEGmMmlFov6s7SmHXpYI5mdBeorTqBbhdna94MIkcKSnkdh6IvS3AE
 UApcfaBR0y1rpp+NLLu95cCB4US7wQqRnFlGSsAIAK/Tgu2e10bmgSnz1iNzAWizlOCk
 sg4w==
X-Gm-Message-State: AOAM531gD3Rj6nynNGuNnlGbVWPjLOC4XKKwhVngMo0ah21UKBQoQdaf
 IJcouqm9YGRHdvBy5kl+CTEF5Q==
X-Google-Smtp-Source: ABdhPJzUuILtE+Lwd5POY+0Lfp6RXonJmBryQBkbG0RS+y2jdm+w1JLUsyQMiNXyvqjHmoi1pWFsZg==
X-Received: by 2002:a17:902:be08:b029:d0:5c75:38da with SMTP id
 r8-20020a170902be08b02900d05c7538damr9927728pls.1.1599247140913; 
 Fri, 04 Sep 2020 12:19:00 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b9ea:24bf:6b2b:1eee])
 by smtp.gmail.com with ESMTPSA id t4sm5986001pje.56.2020.09.04.12.18.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Sep 2020 12:19:00 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 3/3] arm64: dts: rk3399-rock-pi-4c: Enable Display Port
Date: Sat,  5 Sep 2020 00:48:30 +0530
Message-Id: <20200904191830.387296-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200904191830.387296-1-jagan@amarulasolutions.com>
References: <20200904191830.387296-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200904_151903_304733_3B23027C 
X-CRM114-Status: GOOD (  12.21  )
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
Cc: devicetree@vger.kernel.org, Tom Cubie <tom@radxa.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Enable Display Port on ROCK Pi 4C board.

Unlike, other RK3399 platforms with accessing DP Altmode
via Type-C connector, the display Port on ROCK Pi 4C is
accessible via physical display port connector by means
of Type-C Virtual PD extcon configuration.

Enable support for it.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 .../boot/dts/rockchip/rk3399-rock-pi-4c.dts      | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
index 4c7ebb1c5d2d..19a648add355 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
@@ -11,6 +11,22 @@
 / {
 	model = "Radxa ROCK Pi 4C";
 	compatible = "radxa,rockpi4c", "radxa,rockpi4", "rockchip,rk3399";
+
+	virtual_pd: virtual-pd {
+		compatible = "linux,extcon-usbc-virtual-pd";
+		det-gpios = <&gpio4 RK_PD1 GPIO_ACTIVE_LOW>;	/* DP_HPD */
+		vpd-data-role = "display-port";
+		vpd-super-speed;
+	};
+};
+
+&cdn_dp {
+	extcon = <&virtual_pd>;
+	status = "okay";
+};
+
+&tcphy0 {
+	extcon = <&virtual_pd>;
 };
 
 &sdio0 {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
