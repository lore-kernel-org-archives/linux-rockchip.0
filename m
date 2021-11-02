Return-Path: <SRS0=tLvN=PV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B02EC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Nov 2021 18:30:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 298F660F45
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Nov 2021 18:30:04 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 298F660F45
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=metanate.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u+Sden5EPqKPDC2mWfoO3Gle6Ps7R+W89174ENGtqZo=; b=tTGg1clR/DXOKy
	/au7cQRtaR2mGQUNMMN4Mjmakgk5RxfqCF/cwws7G1PQ6DWBRtit2ez3PoiRuL45R7inFD9YjbLti
	sQz8f2ylY8+3fFx1pHFy/JchZzcfaCMI7d/JK39mSPbV+fwIdbdYHUu6AfachPvAOV59UV5v6aCrg
	KdrnU9eSPTLkHT54OoyE92PCBBOW+94I/8e3yWzVUmrumh7ldY04hm7A32c1q/Tb8gkfTZ1XSdhKB
	RYn5iRomwDOmmlr4wzxrnXVaEJgYGAie455Gj4oh+8/Zd38uI7ic8InSodht+QjGezGsnpwDpgIwv
	sWA4aZ7MPu6UpjMDjGJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mhyXp-002g83-54; Tue, 02 Nov 2021 18:30:01 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mhyXQ-002fyr-Cc; Tue, 02 Nov 2021 18:29:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=Content-Transfer-Encoding:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Content-Type:Reply-To:
 Content-ID:Content-Description;
 bh=+Ul1n4yoKPptLWY+ebpdvAt82oUzxqM4aKQK6FDToeg=; b=oWN+hPiA3Tz2M+Ohb60VR6NptS
 HViu5Oqxd4JwyPmvY2/8aOB+0p6PqVM/0Uvdyo8C9cO8lQRDeCH3teiWxH6yS1zNApGZkBOkzNoDS
 SC0HKPykdoeER0vv9RoPgfeZ6TpjiO7UniwV5OIt/N/zVAlUpxZ/JJW5PoMfE9ge3MvXhBX4kshCe
 UQzSUCu0zrqmCeCvBHC+Wv/qBVIVHGmMVWtHkhqcY/01eracWI5BUPtD2kFTo1atBLzJalSdr930F
 uHkmJrXf/wFasshmp3/2Ap2UpaMqYyDyDS2NlW+FPIPob6f5bA/BuNt6RW7eCPgZ/lmtCL1PNh4K6
 Vh13EQ7w==;
Received: from [81.174.171.191] (helo=donbot.metanate.com)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1mhyXK-0004Uv-FX; Tue, 02 Nov 2021 18:29:30 +0000
From: John Keeping <john@metanate.com>
To: linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Andy Yan <andyshrk@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 John Keeping <john@metanate.com>
Subject: [PATCH 2/2] arm64: dts: rockchip: fix rk3399-leez-p710 vcc3v3-lan
 supply
Date: Tue,  2 Nov 2021 18:29:08 +0000
Message-Id: <20211102182908.3409670-3-john@metanate.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20211102182908.3409670-1-john@metanate.com>
References: <20211102182908.3409670-1-john@metanate.com>
MIME-Version: 1.0
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211102_112936_577569_4C3A92D5 
X-CRM114-Status: GOOD (  11.87  )
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

Fixes: fc702ed49a86 ("arm64: dts: rockchip: Add dts for Leez RK3399 P710 SBC")
Signed-off-by: John Keeping <john@metanate.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
index 7c93f840bc64..e890166e7fd4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-leez-p710.dts
@@ -55,7 +55,7 @@ vcc3v3_lan: vcc3v3-lan {
 		regulator-boot-on;
 		regulator-min-microvolt = <3300000>;
 		regulator-max-microvolt = <3300000>;
-		vim-supply = <&vcc3v3_sys>;
+		vin-supply = <&vcc3v3_sys>;
 	};
 
 	vcc3v3_sys: vcc3v3-sys {
-- 
2.33.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
