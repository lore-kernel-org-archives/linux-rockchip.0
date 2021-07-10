Return-Path: <SRS0=97ng=MC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 11A1BC07E9C
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jul 2021 15:12:05 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D468E61369
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jul 2021 15:12:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D468E61369
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rMcqBV7Jick7OIxJXa0lpJZKCiqnyYOTkQHPzV1qEUo=; b=rlgEo5TBNqOrHk
	OzdPV3VGOTo6emcOmHlkOF3lm2NuveqWOt36Rb/a7rdbdz/cQJJgmnXE1rds6X4DWmKMDwFpsklZY
	XZwJSJsMrvbbsyHoAcxsWiKf3H2VeOpK4/RkMDEjOrcDDm6USnE7hEcNolTkTg7nsGZqAfqVw5hQp
	Ss3RoSilO1OfwUD0Y1wyIIIB/OlxYf5GVp0g+9kB28XWM+6U2oQKPtw09JDDUmzlhFfYGjtllqHQf
	2d4Yyff/1dsQeB+Lh5/xP4WJuy19oZXQhzAFgSM5bypjmwKLE3Cqm759aoP4PPqlF6kSa/OdvMOI/
	OfOjvXsm2Y7OQY3lzzlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m2Ee8-003mZm-Bf; Sat, 10 Jul 2021 15:12:00 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m2EdM-003mNE-Va; Sat, 10 Jul 2021 15:11:15 +0000
Received: by mail-qk1-x732.google.com with SMTP id q190so12866371qkd.2;
 Sat, 10 Jul 2021 08:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8D7EIFwB7o5lBsBYzgDc20GRiSV4PVIHl0mW81aH3ao=;
 b=Qgby/js7lMkIIxjOk24LsdAV2ArrCT61nLBrSuyfcCNWvJL6Fc0lJLlSOB58ax2577
 aJl5zqFNzY10xNi3ONe6xnLFx08HGCNPCsSjGGIiDSkc6AdfEXX+qNWtucI2dkjaZrSm
 9oIU/MgFrRAlqrrJV1epMRLp9Gn7SBeTYQFkeYUbxfAvo4mbAZJjgwlV+Wfg8HNkkCxj
 TDOCIb4P1S2uURolNXsOWullmyvnjTZM0o9V85bOvPaBc6+jWwkSUXvHv01HWruGKD0s
 3Y3sDgskaiUlCmWhqB0NiXEmdPlW38EXnqlAAWX8otpJEdjRMsRcfbboQdoryqdJGRas
 GTpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8D7EIFwB7o5lBsBYzgDc20GRiSV4PVIHl0mW81aH3ao=;
 b=fChZAS/RLg96m9ITim+ktEpz71CdyWjEeRdiX+LL+Oui8odmC5pADt2OgbcA0ySD3h
 abFRfQtlrox5oyG45ETWGkz/SHCiat+z0jB3NVmWX6J1cMBNfrDMcpTzMpG3JkkB+O3O
 AglX1CZsN6ZHqKjRoqg1L6YgB2qxgRHEq4IHL+Y/kyqb/xF9kLHzhSgwnQx7l3J9oQOL
 /8Rtdg9laI5Fkvridg8njeAk6ir03QpxLgDxhq58diJKvrFtlsGu2zYULve0YQXUYRyP
 ttS5ljDHq3xkv4EHk87xOY8qsqEabRYF9Af8geBlVQRqY7WG/L0OKVQ1WLaDTnLu6qvO
 qXJQ==
X-Gm-Message-State: AOAM532F3sLT+R+FBtBWvMEyE+8wLZkp6bhF5KzVhdHiJAUehzQa2iyV
 j4nppmYFzvDb+80KwFUxkzk=
X-Google-Smtp-Source: ABdhPJzPNBZ5G4E3G40bv2Oo0EU79tFdSEEjxZIaE094wpCe3XBZZq/kORo/IXOKPYmBmp5Je218ZQ==
X-Received: by 2002:a37:b2c3:: with SMTP id b186mr620714qkf.172.1625929870518; 
 Sat, 10 Jul 2021 08:11:10 -0700 (PDT)
Received: from master-laptop.sparksnet
 ([2601:153:980:85b1:ecc6:5233:6153:7b36])
 by smtp.gmail.com with ESMTPSA id w14sm3445482qtc.55.2021.07.10.08.11.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 10 Jul 2021 08:11:10 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Liang Chen <cl@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Peter Geis <pgwipeout@gmail.com>
Subject: [RFC PATCH 1/4] arm64: dts: rockchip: move rk3568 dtsi to rk356x dtsi
Date: Sat, 10 Jul 2021 11:10:31 -0400
Message-Id: <20210710151034.32857-2-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210710151034.32857-1-pgwipeout@gmail.com>
References: <20210710151034.32857-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210710_081113_054757_52B47D55 
X-CRM114-Status: GOOD (  10.37  )
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

In preparation for separating the rk3568 and rk3566 device trees, move
the base rk3568 dtsi to rk356x dtsi.
This will allow us to strip out the rk3568 specific nodes.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/{rk3568.dtsi => rk356x.dtsi} | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename arch/arm64/boot/dts/rockchip/{rk3568.dtsi => rk356x.dtsi} (100%)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
similarity index 100%
rename from arch/arm64/boot/dts/rockchip/rk3568.dtsi
rename to arch/arm64/boot/dts/rockchip/rk356x.dtsi
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
