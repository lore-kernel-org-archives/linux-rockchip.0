Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D513FC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Mar 2022 16:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E87LIMioFvu0q7a6bb6x7vcXoJB64fKBwNExAiZmEqg=; b=5CwU3a8WEFOXk+
	Oh5ENGnx3GT/s97XIcYckBkab4TNlbZI6EiYVTX+8xD5q/YB4iq2UMi9ztyb+uutpt2X1OUTqxdn8
	Rl8A1dCupnisCymqzX5YMa2TTNfdEmFd/wQSR84Z9EpCRuk728SXOE0znOAgkvVn3tqmhvyHIUklX
	kuhMfCBSJsSUTm0pKX6EeVpQbVcT6vpBeyi7bm9ykiJHGXAT+tjZfFgq6KtCIKoP7SSsxM78pslK/
	ywHJzKqfBZM5q03q2rwDllreCwWtg5qJ9HoCz+bMn/IO2fCzQfP/5//PCwA66/fgMn5NqM0eqdqLL
	KJYwJEPan1mGgF6Wn7ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZEkI-00CtL7-Gk; Tue, 29 Mar 2022 16:31:02 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZEjm-00Ct9l-La; Tue, 29 Mar 2022 16:30:31 +0000
Received: by mail-ed1-x534.google.com with SMTP id b15so21336083edn.4;
 Tue, 29 Mar 2022 09:30:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rup4gmFVRMm1Db1xKcQ9C4DJyayglE33FgITP93feZI=;
 b=f8zqtGcfvk0wEpNaAgaCylr34j14R+MDTTY9qugHrR1MIk/oAlUmCHAAvTannf6ZUz
 sLY36RDHN0pt3a7GCMLxHiNojdB3MLuSBUkzIZVRHTWGX8DquOLPps7qp5PIyNinj13i
 58KwUPz25LTZe2Di6xx4zhdb7FBfiDAevjCdMJ2J5oNvt+Rahrnk5wf/XJAxuPp10CMI
 Z3tQ7GMhTvu/hyfb0/8je/fK7yqsHvbZv3PrmOf4GL7WrhCZiMSzH2g85ObyMspop5Kc
 vRtkCdcF0QXVz/ZXU4dI+I6PNZm2YhPBZsVRXsi9ZelyDjWZvTA4Qf+PO7RUCWIH3GJW
 0lyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rup4gmFVRMm1Db1xKcQ9C4DJyayglE33FgITP93feZI=;
 b=Ci6mccnLopddvgbfQ7/hRtmTy63IhaKyiU76iOQQuPlpjVxzr7fblmljNMcAkFSTVh
 yleMM2WFf69dVNFzZr8jZ+COlYsvkzZ+OHM8/hL2ocKJWUTvxKCBPm3sIqyD04JgO2ug
 g8k4xNFV/tnZFMBGm7PvB0U/h5FDa32RApquUbMumbQ/K5oZsElVWgD2uliG1u1csRoJ
 MVG1RgFEaeg1SudYuoRhwgPZh+DyGGgPsV0vj/Ez9KR2l1AY03+UrVjJD4xBsGYdaFWQ
 YcR2FvV29JEx4d9J/iBgOVU387DJOPpv9efPHOygx/7QZcL/Si4t8ZmOpA0iFAO+8wN8
 2OOw==
X-Gm-Message-State: AOAM530x6vn1k2tYQDMyw2jdQPea1bYrrjNor6+9P+rsc+nBS982382I
 nOanho0mWheH1MNSibzHylI=
X-Google-Smtp-Source: ABdhPJzTy7FW/+WGlMtP1pToBeoHtes0f1brjP90ukaULF4+ONZLw0bw81tdrnAqoB2Cm4GbqnRReA==
X-Received: by 2002:a50:d90f:0:b0:418:8a5a:14b2 with SMTP id
 t15-20020a50d90f000000b004188a5a14b2mr5538105edj.241.1648571429156; 
 Tue, 29 Mar 2022 09:30:29 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 k26-20020a056402049a00b004197b0867e0sm8601179edv.42.2022.03.29.09.30.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Mar 2022 09:30:28 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de,
	zhangqing@rock-chips.com
Cc: robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 3/3] arm64: rockchip: add clocks property to cru node rk3328
Date: Tue, 29 Mar 2022 18:30:16 +0200
Message-Id: <20220329163016.27458-3-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220329163016.27458-1-jbx6244@gmail.com>
References: <20220329163016.27458-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220329_093030_723504_B5609AF3 
X-CRM114-Status: GOOD (  10.27  )
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

Add clocks property to rk3328 cru node to fix warnings like:
'clocks' is a dependency of 'assigned-clocks'

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 73418fd2f..8ceac0388 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -758,6 +758,8 @@
 	cru: clock-controller@ff440000 {
 		compatible = "rockchip,rk3328-cru";
 		reg = <0x0 0xff440000 0x0 0x1000>;
+		clocks = <&xin24m>;
+		clock-names = "xin24m";
 		rockchip,grf = <&grf>;
 		#clock-cells = <1>;
 		#reset-cells = <1>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
