Return-Path: <SRS0=tLvN=PV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27018C4332F
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Nov 2021 18:29:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DA8AA6112F
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Nov 2021 18:29:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org DA8AA6112F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=metanate.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rF03e3lWjptenvLlIgNnYTr20YCoTa28H+wdTY5wMd0=; b=KVmxCVlrLtm9mA
	lSWpjUgtsqOaV/TmkIkHIGgfMkl0rVG4+tYmja2JI/ZmOdXxgt8c+gikVsee6DdEvIzo8QS/ftLxD
	46d0dZJrbeCy2rzxjgp+FkPpUTRqwYwuJpYuekQ6XBsJaBPK+7Ue+rHtC8lOuJPWDQopwDzgXZfKW
	VuLuJPqeA0B+7pm33nt5d1MYFeDntig8yM3rROtBRsarO+Z9jdk8Nky5UHaOm+PETnzeEAYXuR4Xg
	2NOMZKyDZoOp12IZS8eBp7Wr6vCX6SsPrWW/c/MYFGvNLiWHfPF4SF8M80yNoeleUtOQdamn1JQem
	1BPfKpSZuEk84gjLropw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhyXT-002g0o-FL; Tue, 02 Nov 2021 18:29:39 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhyXQ-002fyq-CD; Tue, 02 Nov 2021 18:29:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Content-Type:Reply-To:
 Content-ID:Content-Description;
 bh=npkhrwshLLK5QryVWsdoS2NtRhtUIKXUFOMLqsdxyaQ=; b=O4z9mzsh0pFmBSYUvtb2QOtU6D
 7aPdht0qgpXiWv2eZ85+A+PL9msXJKZXEhjSFCOEQKT6vd3wcuqpwnDQMdBqh8meq1wjUMdVdBtU2
 IwN2WppT7beLeElkFbxBEpUAke9t7UJhQoG0u4qLslfaMQ6F/ypj/pujx2d95aqVeYSp1v/a4yXKm
 h3ZpaZSIQ53S+SJOSO5LfI1wsUdhYb/HEno24UH8piCSyOUmlG2BD37HZYte4ilkh6Za5+sKMCmTY
 ThQVdzhbpsHGHqzoYWeOimOR7cUby7tp/5Mat9wZfSbtMWdwgq5mUtgJEuRMtg7E2v2t2ypOnrDEl
 IaPEn8sQ==;
Received: from [81.174.171.191] (helo=donbot.metanate.com)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1mhyXK-0004Uv-6u; Tue, 02 Nov 2021 18:29:30 +0000
From: John Keeping <john@metanate.com>
To: linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Andy Yan <andyshrk@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 John Keeping <john@metanate.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: fix rk3308-roc-cc vcc-sd supply
Date: Tue,  2 Nov 2021 18:29:07 +0000
Message-Id: <20211102182908.3409670-2-john@metanate.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211102182908.3409670-1-john@metanate.com>
References: <20211102182908.3409670-1-john@metanate.com>
MIME-Version: 1.0
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211102_112936_575463_4F99186D 
X-CRM114-Status: GOOD (  11.96  )
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

Correct a typo in the vin-supply property.  The input supply is
always-on, so this mistake doesn't affect whether the supply is actually
enabled correctly.

Fixes: 4403e1237be3 ("arm64: dts: rockchip: Add devicetree for board roc-rk3308-cc")
Signed-off-by: John Keeping <john@metanate.com>
---
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
index 665b2e69455d..ea6820902ede 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
@@ -97,7 +97,7 @@ vcc_sd: vcc-sd {
 		regulator-max-microvolt = <3300000>;
 		regulator-always-on;
 		regulator-boot-on;
-		vim-supply = <&vcc_io>;
+		vin-supply = <&vcc_io>;
 	};
 
 	vdd_core: vdd-core {
-- 
2.33.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
