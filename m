Return-Path: <SRS0=v4M2=EP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FF9C5517A
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 18:12:25 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 247FA20644
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 18:12:25 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="HBxC0KaI";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="C2ZIkRfV"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 247FA20644
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=y3x3lk9raHiZkO0zKiSLQTvIP2Sc5yOLSaqDcTgx6qk=; b=HBxC0KaIwvANMdEC17w149L7T
	QWNon25d9cNewOQ3FZ5h5Lsl3f2CciZ6kqCikSquC5SRz1VfYVlgtcUX1bgAfzMEn5WH94cJdJOFi
	kMqZAYMyzCsdwrPzYU2tM8BuH4RcTXxjH01oFfWiiLDN6Mj6QHr8AyWltXagZ+2EoLU+e8e/YzQ8O
	DpNsJfJRXNwM3EahwFX/gzM6eJdz6u5K1AF9aEXR8lVLjfrXDwueIouzO89AkeC0c3irvC/y0Y9H4
	dnAaoQKDKKzhRQV5ViikaDqgN5fv7VwTVN3ROXawnDCbZk8DnTiRwk1uOWWI3c891G1wCVj2vSz1y
	hHQJd32uQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kcBeP-0006dr-LR; Mon, 09 Nov 2020 18:12:21 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcBdO-00061P-K5
 for linux-rockchip@lists.infradead.org; Mon, 09 Nov 2020 18:11:20 +0000
Received: by mail-pg1-x544.google.com with SMTP id i13so3036990pgm.9
 for <linux-rockchip@lists.infradead.org>; Mon, 09 Nov 2020 10:11:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zY9fGaYD8ZpsvIIwOgaSJHvbW+1SnTw/6B/N3m0LlHc=;
 b=C2ZIkRfVq4H3EPtbgYH0dTM2/adYGtQpVSbrcupq08OM6VoJT0UeXT79ptY1HxzZR9
 GzZi5Gww2Xxz9YG0IK0EeeRAinL2cDfRzJrwS7kMrQ7xd4kyeKmFh6Qg7j0roGh/0pDd
 t3D0aRfsfnOhzcKMlWKYPTPIREe1mAz2s0rtc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zY9fGaYD8ZpsvIIwOgaSJHvbW+1SnTw/6B/N3m0LlHc=;
 b=t3ZvezA8UcZyF05F3W7wHm7eY9vHb6ppC0z+trr8+j5Uc2KYZ+5QNtBzCnM8w7sliA
 OQ1vgs4g5CfnsTZbjcLOUjK/YD0M9BXrBU8acpk5yV5UY8jJP731tV5Ik3zbJX/rjoUD
 kYD1lRtIvoVPvipaoCHai3jALwIkSf8/O37Xuhg1B02JAO1x0Yknx1NCx1IKFa8Cy9kv
 AgR2N3k2PZUNDvxpmwAA7c/2+38/WUkC3D93EIaNeGBb+FctFpbGw2/mZCDwCjrKQvQf
 1u/SR7gkHZ4dDvxfmFahKVIEV45lZCCxAD/AqcTY6+FSecuQktGTLJX6QdbZWxhT9T7q
 r+9g==
X-Gm-Message-State: AOAM531mYloAAYl9YKrgTJim0pTB2S8AzAlbhrl6oa4nq0QO/t0bBzNP
 VxuUH1NQWx+Oe7dOjDBbYHZlqQ==
X-Google-Smtp-Source: ABdhPJxocp/yN7pU9O9NbxO9ycOqHvuu/mSywhTSFVGHP9k7XyV9x5tm1kRUQSdUg//VPY5X7l/pqQ==
X-Received: by 2002:a17:90a:f0c7:: with SMTP id fa7mr424710pjb.3.1604945476261; 
 Mon, 09 Nov 2020 10:11:16 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7a4:c0f0:b8ab:4687:594d])
 by smtp.gmail.com with ESMTPSA id 136sm12027685pfa.132.2020.11.09.10.11.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 10:11:15 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 8/9] arm64: defconfig: Enable PHY_ROCKCHIP_INNO_DSIDPHY
Date: Mon,  9 Nov 2020 23:40:16 +0530
Message-Id: <20201109181017.206834-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201109181017.206834-1-jagan@amarulasolutions.com>
References: <20201109181017.206834-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201109_131118_864565_A6ED8868 
X-CRM114-Status: GOOD (  11.94  )
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

In order to work LDVS, DSI in mainline tree for Rockchip based
hardware platforms, the associated PHY driver has to enable
in default defconfig.

Enable rockchip DSI phy driver.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 947e14d6ecae..8d205f0a3a0a 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1018,6 +1018,7 @@ CONFIG_PHY_RCAR_GEN3_USB3=m
 CONFIG_PHY_ROCKCHIP_EMMC=y
 CONFIG_PHY_ROCKCHIP_INNO_HDMI=m
 CONFIG_PHY_ROCKCHIP_INNO_USB2=y
+CONFIG_PHY_ROCKCHIP_INNO_DSIDPHY=m
 CONFIG_PHY_ROCKCHIP_PCIE=m
 CONFIG_PHY_ROCKCHIP_TYPEC=y
 CONFIG_PHY_UNIPHIER_USB2=y
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
