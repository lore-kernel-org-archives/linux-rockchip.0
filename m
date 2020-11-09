Return-Path: <SRS0=v4M2=EP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 032CAC2D0A3
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 18:12:30 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 88FA520644
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 18:12:29 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="cXfeBJDL";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="M/inRhVg"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 88FA520644
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HEK8S8AJQy3RbvIb9RJgHBNnrP0/EIJssKD5tvj87Js=; b=cXfeBJDL4NRVrcFFCVJo5vbga
	XqM7SOQwj9ON+iMbC4jYwAedtVpnGLWhFmryh38I7WO2rtqhb4Wu9TjVmW0oa1+qNO9DJs8WSkP8B
	iJZxeYV7CFi4sSnZQ3/bdsf5cliQoqPztmN51kzjyWXM5fTDenpLCCtA0NMSQAWZRqGF/zpU7z0an
	EIgG1n5GfV30fBIRJQiR32arAMwzg8Q9koLJRo/ZuZJA+KoPpmW/aI/NDrCMh1Zgkz2j84kW/Z3o8
	s+o7EEUUau+xs2M8wV7xAajFRa/8Ir9xTBZ16SnkC5ZWt7y4rGXzzYu0TZAchGdzPlFSLXrTsj3On
	Fg1ow/asw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kcBeR-0006eq-Cl; Mon, 09 Nov 2020 18:12:23 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcBdS-00063r-Ec
 for linux-rockchip@lists.infradead.org; Mon, 09 Nov 2020 18:11:24 +0000
Received: by mail-pl1-x644.google.com with SMTP id j5so5125828plk.7
 for <linux-rockchip@lists.infradead.org>; Mon, 09 Nov 2020 10:11:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=T7QBOVA7GIk/o3k4EBaXjrFkoULA4iFCPhcP7O/ZYy8=;
 b=M/inRhVgR3/j21UaRwj7aTsS/EFwbQnRQSywF0J09v6rY4+t1C1kRG+93F2U6lOyna
 7R7jX/bcHiI+1Fx1YdoXrjUqCKhuXBUsAnLHX7DuJGKqIfecvSJiJmQYGydvbcSSQNHW
 C/xbd0NQ9aXpme/M+hTa9OxCl8Fi/AqTh3yps=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=T7QBOVA7GIk/o3k4EBaXjrFkoULA4iFCPhcP7O/ZYy8=;
 b=OefgWk5+m8+5WsCBwlXs32LOa+gbbYeed+F/DQfdC0XougElAGvHgyegDc1PQcjwKn
 Ej6T9OlzigjOmyDih311BzZUWUIisuaMtfglFsULnDTMo80+q+zKCY4m4ThZj2PAGPZ5
 VsGVs3wvWOJDKHmIT+tKh359+YppAJ1g5nmlovEHKRcdmJr7p0OJ5HcKSJejEiO1wbb0
 ZL8oB/nVIw0lg136TJ/5XnDkbt0B5Ces+ykvewm1M2q7MWFNukbycz0j+vRegc4wPIe5
 86emppEYw5mWa/ER/YBqOlcLewj1MS92AUcChGTVYW54ScJs6bzjdEESo1bVaY7v6B4f
 +edA==
X-Gm-Message-State: AOAM533zHGnrndJsKPY2HxJuMMUwSTFANJvJf5iLRHJEe64d1u9ZLzCT
 KuCD+oNHYqiXio2lO+S2JMsXtg==
X-Google-Smtp-Source: ABdhPJx1KRgz1DZDJU5pu08jnng7+auZjv0H/qX0ms2l5dNkqqxnMWAFZxwZx1QbwHOiwgULkGlTuw==
X-Received: by 2002:a17:902:820e:b029:d6:e802:75aa with SMTP id
 x14-20020a170902820eb02900d6e80275aamr13333320pln.51.1604945480277; 
 Mon, 09 Nov 2020 10:11:20 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7a4:c0f0:b8ab:4687:594d])
 by smtp.gmail.com with ESMTPSA id 136sm12027685pfa.132.2020.11.09.10.11.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 10:11:19 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 9/9] arm64: defconfig: Enable USB_SERIAL_CP210X
Date: Mon,  9 Nov 2020 23:40:17 +0530
Message-Id: <20201109181017.206834-10-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201109181017.206834-1-jagan@amarulasolutions.com>
References: <20201109181017.206834-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201109_131122_695808_9352CF28 
X-CRM114-Status: GOOD (  12.05  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Some hardware platforms required CP20x USB to Serial converter
in order to work onboard functionalities like Bluetooth.

An example of such a platform is from Engicam's PX30 (ARM64).

Mark it as module in defconfig.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 8d205f0a3a0a..14bed4a41bf0 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -758,6 +758,7 @@ CONFIG_USB_CHIPIDEA_UDC=y
 CONFIG_USB_CHIPIDEA_HOST=y
 CONFIG_USB_ISP1760=y
 CONFIG_USB_SERIAL=m
+CONFIG_USB_SERIAL_CP210X=m
 CONFIG_USB_SERIAL_FTDI_SIO=m
 CONFIG_USB_HSIC_USB3503=y
 CONFIG_NOP_USB_XCEIV=y
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
