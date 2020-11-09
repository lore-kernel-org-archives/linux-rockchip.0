Return-Path: <SRS0=v4M2=EP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB9DAC2D0A3
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 18:12:18 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 62B0F206C0
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2020 18:12:18 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="jQ33bG7H";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="e/3Qcflq"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 62B0F206C0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LDHfv/sJlIN6ufMTXTT1HnIE8aS2ygn8gKUopeoRmBQ=; b=jQ33bG7HJABU3gD/wZZS+cd9k
	II316TtAm5tCI/hMOvRtJfRHGYs0ssY62dhL5fPnaYZ4mQckUNZM+Pt8ukycdq/fiv4fwLzETI/Gp
	PeAXL6Z4KKzT32VHhPt3YWfIIRiNEEZhREMRx1D4SGmWgdS7eRqWhfrtMImOAJ93cRLu7mjv7yf7O
	WJzLll5TQKvLvILVazZJa+Wq+s20z1V28pLforsAOvBEuZ90GctWI5chUaBEVmckjT7XvVmh5XCwk
	k3ENfJU/+0CG6Cr0EkgyB15QdQjePnJCyN5r0z/mQbba1DyR7NdnTq/iJ/qIvQpO+3xd/Vr1CCQb0
	smzRxnwIw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kcBeI-0006Z5-N7; Mon, 09 Nov 2020 18:12:14 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kcBdK-0005zL-HW
 for linux-rockchip@lists.infradead.org; Mon, 09 Nov 2020 18:11:19 +0000
Received: by mail-pl1-x644.google.com with SMTP id w11so5126094pll.8
 for <linux-rockchip@lists.infradead.org>; Mon, 09 Nov 2020 10:11:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+Wi2P83Jb204DIcDLXf3G0hLo+h16KrWc6/oNDiRIWM=;
 b=e/3Qcflqj8WpcHXRk85POM3kwPWhaNhDO0HTZ3EMHKpgSXHPnlaASr6hhKA4AXIy6d
 HNKULCOCRPHOTp45u2/B7IV9xx9wVTO+PibgZDGoDireqJPSHXGrzzCZURF9UnDtWux/
 8DbPOg1a5Od+RfesatDsk8PO20DPdlGeKfMSU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+Wi2P83Jb204DIcDLXf3G0hLo+h16KrWc6/oNDiRIWM=;
 b=cu2ROLPVTcoAxUVfh6m6VV4OaQmPoSaoVLRHAGDUopvRypLp9IOxvYVr+OqRivEC6P
 jT7vVBqBKL3OlHoYP9Mk+BoFFZWBqAHrL9/TnU0kXJRUuIM6PWOaGC0ARpEsDIC0k8j6
 dTX8tYnxEOsEoFOMSSJl1S+yJqhMSIOiadtL56R6RM394ANHb7XkwMu2ChFj3Q19mvAa
 0nIAM/1Ufs5wLyviQlymkC6l/X0ZDsmwKVz1+hrA71ihRmxo8FnnkKF2DIHMCB3O00ta
 KQ0Vn/Jyh+NSH6vGFzs5icYTZCXdxd29+NRDDkbw/hLwCZVNXP86KhM0B8vLC2uAiUG1
 gXyw==
X-Gm-Message-State: AOAM5305A4nIKZEQ80h7Ze1m3/1fIsjCLjVyZmG8zVzJWHPU5/+TfT5Z
 2ntCr1lVui//QQJGVGqyV4wOAQ==
X-Google-Smtp-Source: ABdhPJwtfwPKKNpRqM/11pdqJKuTkwqWxWoQlgkWxc6SVtOZvoPI8csyvrJ2Ek2zZYr7A5ZU8uCQWg==
X-Received: by 2002:a17:902:204:b029:d3:9c43:3715 with SMTP id
 4-20020a1709020204b02900d39c433715mr12970131plc.74.1604945472192; 
 Mon, 09 Nov 2020 10:11:12 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7a4:c0f0:b8ab:4687:594d])
 by smtp.gmail.com with ESMTPSA id 136sm12027685pfa.132.2020.11.09.10.11.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Nov 2020 10:11:11 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 7/9] arm64: defconfig: Enable ROCKCHIP_LVDS
Date: Mon,  9 Nov 2020 23:40:15 +0530
Message-Id: <20201109181017.206834-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201109181017.206834-1-jagan@amarulasolutions.com>
References: <20201109181017.206834-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201109_131114_649076_964B7C55 
X-CRM114-Status: GOOD (  12.28  )
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

Now, some of the rockchip hardware platforms do enable
lvds in mainline tree.

So, enable Rockchip LVDS driver via default defconfig.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index a17d84ad517a..947e14d6ecae 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -646,6 +646,7 @@ CONFIG_ROCKCHIP_CDN_DP=y
 CONFIG_ROCKCHIP_DW_HDMI=y
 CONFIG_ROCKCHIP_DW_MIPI_DSI=y
 CONFIG_ROCKCHIP_INNO_HDMI=y
+CONFIG_ROCKCHIP_LVDS=y
 CONFIG_DRM_RCAR_DU=m
 CONFIG_DRM_RCAR_DW_HDMI=m
 CONFIG_DRM_SUN4I=m
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
