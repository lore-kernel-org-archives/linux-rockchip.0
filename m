Return-Path: <SRS0=S+7F=IR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD705C433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Mar 2021 11:16:58 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5C38964F53
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Mar 2021 11:16:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5C38964F53
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nh44Wt4YNhJAxHN6AEGqM8xI79nXjyRhnrb5ET+3f7k=; b=KrP5jjGXvP7EFE3kOUofXyCmd8
	yKCozyr907DqE2a3KU+aZe19BbuJZquoJeIhJTGcuobGGDdpU1GBOF6zzYjDUzXgVx5cmFIJvznMT
	LvJdVj5u7DHQmVcygFPFHiOnFaC0+KIE++u5jSQlLuG5eXdU6b8Sepr/VfUE68BsWBWWlzTU0Y/rc
	YbRXxkCcEM1v/xvaNK5CM+LHW1/UgiHfbJKI29QoHAQ9td2ZR9TtKhZ9FyAUseCv2AbaDb9Ljc80+
	sqq0OeprcATpf6UaMkJL/PX2shZQFX1Tqlxa6Dmn7hYMIBXPsoAr+P3oe0BteAhTuH/F0esbi8WuV
	JEkx/F8A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lND7Z-007IkG-3I; Fri, 19 Mar 2021 11:16:49 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNCwn-007F2I-Op
 for linux-rockchip@lists.infradead.org; Fri, 19 Mar 2021 11:05:50 +0000
Received: by mail-wr1-x42a.google.com with SMTP id e18so8682654wrt.6
 for <linux-rockchip@lists.infradead.org>; Fri, 19 Mar 2021 04:05:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=4/chfQtIv4nkYAhw823ZDxPsTY3OzuaLkKHNmOeT7jY=;
 b=Vzo9kEvKSFjCgF3u/xU/KHGfVl2K/vlYFQAD38/teB0a4LANjjXp/zZWeg7HEyfnRP
 2ncamnZAptv1u18sshdQmfkpLO70SorzlfQDcqlImCIqdvuUKjpki69jFQKUkq/H9sCo
 pfvNvOA+ldgHbgyJEEnIillJNT2t6yXp4zGDc/Os9Nsp/hj7cgvsRs7adqZQkamIjUg3
 J2kaIwVvyJnBrL15jO218e6JV5Wah0VB1XdF1n1Wr+nuBd0rIHNktYgVkQ+IByzGRhUQ
 AP/wxv5fiysZ7PTGzmP4gSTkJQS50hDGcjiL3sdLbkFWkroJfz4r9bcfWwgwTbITO/Va
 hhqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=4/chfQtIv4nkYAhw823ZDxPsTY3OzuaLkKHNmOeT7jY=;
 b=F1UjtnFZ7UhaiP/wHmmvzAXVSXMYNBN+LSYUsuFahPpigWeg/fgjab2hc0BRdq2402
 hLZsCwtYcd175VsEv4k8EUVUuurLEUVIz6ydiumLvETICuJJpsjZKIlBgJJqo/zYJBbz
 d7/eD5PGhMhCHwiBPjF7MRSE+Devw46W9cpNm8HrFKjAHGBR7CJtulelpU4LDrfVpEqb
 uoiWZw+8ihfTmhlRN3Q72dMxmBZpCZuzJREaacxd9pLHj0kb+gG7GwyOJ772DnKpN0Hn
 9domXwKCBP/RT6sr4lfdJEzLyT90uj5PVy+FJDxcdsz2UZRTwLhT6g7NnalcBm5KAX/0
 kUnQ==
X-Gm-Message-State: AOAM530BDEXWy5XiZW6voE0Pzx14MIeRFujj4rl9bMZeRkMuFKsfimoE
 oIt4PGGblVv0uwkcxO0G0nUYPPQ772/JVg==
X-Google-Smtp-Source: ABdhPJxjEFbBmaa3JKCf17wA3LZKsE8ujdZs700Nr3q83zpiD4R/NgKRFxXRqcSK3AVITKnZ1R0B/g==
X-Received: by 2002:a5d:6703:: with SMTP id o3mr3886879wru.357.1616151939819; 
 Fri, 19 Mar 2021 04:05:39 -0700 (PDT)
Received: from localhost.localdomain ([82.142.18.100])
 by smtp.gmail.com with ESMTPSA id y205sm7232314wmc.18.2021.03.19.04.05.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Mar 2021 04:05:39 -0700 (PDT)
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: heiko@sntech.de
Cc: Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 Helen Koike <helen.koike@collabora.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Jacob Chen <jacob2.chen@rock-chips.com>, Chen-Yu Tsai <wens@csie.org>,
 Markus Reichl <m.reichl@fivetechno.de>,
 Robin Murphy <robin.murphy@arm.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE
 BINDINGS), 
 linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
 linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
 linux-kernel@vger.kernel.org (open list)
Subject: [PATCH] dt: rockchip: rk3399: Add dynamic power coefficient for GPU
Date: Fri, 19 Mar 2021 12:05:09 +0100
Message-Id: <20210319110511.24787-1-daniel.lezcano@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_110542_339566_861DE731 
X-CRM114-Status: GOOD (  13.08  )
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

The DTPM framework is looking for upstream SoC candidates to share the
power numbers.

We can see around different numbers but the one which seems to be
consistent with the initial post for the values on the CPUs can be
found in the patch https://lore.kernel.org/patchwork/patch/810159/

I don't know the precision of this value but it is better than
nothing.

Hopefully, one day SoC vendors will be more generous with the power
numbers at least for the SoC which are from the previous generation
and give the community the opportunity to develop power based
frameworks.
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index edbbf35fe19e..1ab1d293d2e9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1933,6 +1933,7 @@
 		interrupt-names = "job", "mmu", "gpu";
 		clocks = <&cru ACLK_GPU>;
 		#cooling-cells = <2>;
+		dynamic-power-coefficient = <977>;
 		power-domains = <&power RK3399_PD_GPU>;
 		status = "disabled";
 	};
-- 
2.17.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
