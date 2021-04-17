Return-Path: <SRS0=3pYS=JO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 412D2C433ED
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:33:34 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id BD333611AB
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Apr 2021 11:33:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org BD333611AB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r9RXU5PGUxV/4a6m7s0Q9UIVfze4pH44WWLW2rLmr18=; b=hK0M8H5Hkn/REfdDAmJrYrmjv/
	hOEBI3tE8qPa5hlvauRZ7uKUv7ZzCxHQ1/GsIpAvRkXoXhV5WJPPnv5WRNfgU0g23jkw0DtV58Eie
	GvmS4l6UKNAQaSInBxb2Ybcnysedr5tGoByP+CiZyJwm39nPE3y5cs2GNsS9EqHH9I46Ct8B6i+9K
	88sJ6QYvvUJFY3PQPJ3u96yVgbL1k3gjlag3qiWE45qThKZEd8dmQd2CwpUTE5o5wXn0Rvm/1DuxL
	qFIriI81Mp3rTf9lHWDxyw47fxZNWabKM0JCoiwcF6tvtaDSaFWE9vo47bghWDqSIw6oVSGB6TjCB
	P0MazxHw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXjCb-0059kT-1P; Sat, 17 Apr 2021 11:33:29 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9X-0058P3-9U; Sat, 17 Apr 2021 11:30:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=0M5FwzbPAy5c2Cwb5UeKel5vnxZKoOrIQ9Hgfx4Nf84=; b=MSPNK2Y2n4Krt3DgM4iklLsquM
 4qFCt2cyxV6N14o5DnAxMQ9yds6cHshH7Jm+yBSlO8lEKSqI6jC6Wy5A6CafI5V+31ofkXE5BksFq
 FqN9vpNpDAanZr0IICU9lr2n658SlCWmsuZtYFJkjZTpbbKa/0ENiyoblSv7A2M3bqC2gDF1hgOWP
 YVT2xoVzTHPexDR8mijmv+pK38DpG0jOUx0gUEpS92L/y1NFHDmhZPPjMReKm6/Q7AdlqUD0rSiT9
 0pcGRuELcjFdTUa4S9Jvdzqs7FxF4dddXaMwpJ5lchBYwy1u7engiPsXYa33dF1qSZBJu1/8ES7Hh
 /L0hIrXA==;
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXj9Q-00A0Bl-W2; Sat, 17 Apr 2021 11:30:18 +0000
Received: by mail-ed1-x52e.google.com with SMTP id m3so35223602edv.5;
 Sat, 17 Apr 2021 04:30:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0M5FwzbPAy5c2Cwb5UeKel5vnxZKoOrIQ9Hgfx4Nf84=;
 b=EKLlaDh5MVoPNX1/OV0FlVlj2mQ97da/v/YAPdKd/yEgla0FcWnzcnPlSJSuux18MC
 toefwWFr5qMSov8UL96Gh4K0lD5b1JU0HduZWEeSbc9SWwyy0Qev4XRuFhYUxoiHLlEv
 JBFJtGyg9OuOZy3V8zKE5jKa+Pp8ijDp0+gwJCSdKq+rOyzya+aQkykB6RhdlmJUe8YD
 kxIi5GhJ1wuk2ojgWPcwTrjgSRj6xCQWpSb7EQXk7C050P74/lgQBDHYhSF/kHbfD+Gt
 FKrQ8d09SUuKsroc59++W3jtKd62yU5Do3LGsKX5RaaxyU6u+wqw29/LAg09tRujTvxu
 x5Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0M5FwzbPAy5c2Cwb5UeKel5vnxZKoOrIQ9Hgfx4Nf84=;
 b=CUb9BC1GXOJzW+B5uovF95OKKxsCkojhdWOroVkxeh3J+eG0Fpq/S2ZnXtaQ5eqfYb
 hfl8CBz0l70c/l+YVKGwQ3xIvmR8Y5EqXkqoy9rbDXDkfXkYiEisijYa95O/p2IcqZiQ
 rTaNKWIe4NMO1fJ6fBcTZl0BpdbsB881ougZDJFQDr7F/PMsNO8r7+etAkqKl6qNiIhX
 dmX4urBNku2Fsxlga547/isMzsceN/771B4FTDv7YVX2KP7x4iDDNtu2gDyuXeewoB1w
 ugVPKxgx2eifFAU75cPV3KWQjQW+LXv2DFii/cUPclgC6onNQ3WL4K0f20PzBO6mJtCJ
 CJhA==
X-Gm-Message-State: AOAM533J3LUWvkEbNnoaW/JR12H7QvBDTofOOA0hXcdiP1qpt/WZfNOY
 IBT5NvBtGFs3MCgkbTOsrEI=
X-Google-Smtp-Source: ABdhPJwgkocHSyEp+7z9O+ghmI4Bwm6UjDlyityrYg56ZfRlxyZ2zp3NqtqITY25tjE22P1XO2evpA==
X-Received: by 2002:a05:6402:104c:: with SMTP id
 e12mr14716814edu.108.1618659007058; 
 Sat, 17 Apr 2021 04:30:07 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f20sm3022875ejw.36.2021.04.17.04.30.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 17 Apr 2021 04:30:06 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v9 06/15] arm64: dts: rockchip: Fix power-controller node
 names for rk3328
Date: Sat, 17 Apr 2021 13:29:43 +0200
Message-Id: <20210417112952.8516-7-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210417112952.8516-1-jbx6244@gmail.com>
References: <20210417112952.8516-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210417_043013_058304_8C5495EB 
X-CRM114-Status: GOOD (  11.62  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Elaine Zhang <zhangqing@rock-chips.com>

Use more generic names (as recommended in the device tree specification
or the binding documentation)

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 5bab61784..35df57535 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -300,13 +300,13 @@
 			#address-cells = <1>;
 			#size-cells = <0>;
 
-			pd_hevc@RK3328_PD_HEVC {
+			power-domain@RK3328_PD_HEVC {
 				reg = <RK3328_PD_HEVC>;
 			};
-			pd_video@RK3328_PD_VIDEO {
+			power-domain@RK3328_PD_VIDEO {
 				reg = <RK3328_PD_VIDEO>;
 			};
-			pd_vpu@RK3328_PD_VPU {
+			power-domain@RK3328_PD_VPU {
 				reg = <RK3328_PD_VPU>;
 				clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
 			};
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
