Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53D13C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Nov 2023 04:00:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:Cc:To:From:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oLT5UUxHok6SwCNcG6rgTETy5Nfj2LwDdQSh48nwg/o=; b=hJvYirZ3FAoilN
	m7tFcF+WMAWvKik+h1MoEyPFnpUAURHXaHVA6fA4wK3+RqTCkKnysRyKZMm6i+4seVqmVGRqdpuw/
	BFp5Wahs9FRKpEs5fO5suJ/t/uKfSDyjLQnPP7MK7U1GVxCks3p8ON83stb2p6dKesCxyX8GgeIx6
	aygTH61fQqPl5QoCvKK90eMuSaCRx1j8Q97rBiaub2VRQvXSWdLZ3aWS3ABVcf3EFPbT2pIzXZIsX
	pz949EZwsS47P8b+CfJXUX1/QhKWYyU68xpAt0Av1iNEpeBOtQCT+GMDJ8s+hY2rMf6ZeBeLYG+du
	qIg3EQurZw1xRI2kwLxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qy2Om-006c55-29;
	Wed, 01 Nov 2023 04:00:08 +0000
Received: from out203-205-221-242.mail.qq.com ([203.205.221.242])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qy2Of-006c3P-0m;
	Wed, 01 Nov 2023 04:00:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1698811190; bh=fvFtGqtlVKoma+oFCcrZOdxA5LfSSVqtBtye7oUXe9M=;
	h=From:To:Cc:Subject:Date;
	b=dDaxpf+DA+S75RvEQfYM1WVD/il/pEdiVDRVHT66xeOh4o9HbV3Pid3d+HS6M3hUp
	 25smRLjs2SWUGnd7+0k/s5UpQijeVn8o2/VoCOv0A/nBSfAGKFTq8xyjv5PFXCS5rx
	 ZzELVvK4N/d5m/bEdFhOPZNmAtvMa9RUQM9gpFmE=
Received: from localhost.localdomain ([120.235.169.202])
	by newxmesmtplogicsvrszc5-0.qq.com (NewEsmtp) with SMTP
	id EEF8760D; Wed, 01 Nov 2023 11:59:47 +0800
X-QQ-mid: xmsmtpt1698811187tu2cwpr8f
Message-ID: <tencent_9F33F82589FF024D0F722F2C95E965BCF608@qq.com>
X-QQ-XMAILINFO: NGsJ5Fy+2UsS9OQITe3Jn+7UtAAsyNTy4mcs/X9vQHrXF4TZa5yANRH2f7bxuq
	 xmE5V5pVlUzTNsaQBSs5v0q8TKu4HIKRSw1KfCOyek5qQ0awMUxHnHZcJTKsXESXCG8naTWT+M8n
	 IFwzUFftEpUmPWdgwBwOoBomNkdxdULNEXmhAL8/yQmtCUUG6R/6QACmlWwGHkkBs7Wu3HOLYXUW
	 fD87vGNKP3iwqKBuLRgFAJq3yyZWbZot6KZVMkaHXIYKjKgQcxZluAJkYv68Qdje/+clbChzP5cq
	 Ma+j0/3YfgTa+81tnk/fzC1BscQ3ZXU5lbjezfIE+IWTERG0ptxwnq7Vf7spaOYw3qxuHQpQx/SP
	 Wc1a7p4jmihCQgPrqduohVileV5g/ys6SiEAYLmJLBbyQx5Wd2ewfiGItmhJCCTMM5cXb4b+6pro
	 SP8XOTrtBZH2NVp9XgkO38x77t3CgcpVpKLdSEV00A9j/X9pZrqnX4RB1DZF/v66kgF3WdsoowcS
	 SlMIQdT9E4ZZsoO2BiDx2eduQm8gKYdgszGG1sQgqG76W0PkRUkmI41vUiEu4XFOItWHIlPvJQ3+
	 uIEkIs7f1PXIh3g7y4kPRA6TaIZz9+ErDgr8UzMUEnUr3uHca5oA93TyIGB8s50UIkgSniNe9oGQ
	 wkIwQ4SMLEQwszJsFcYsk2Aqk9c0FEBFITH2neaK8N1rzE/JKf64wEfHd4AcYr2acLccfoOmSNxA
	 KqJT+/VW3+PmnIFngJLYyvCPxJ0/xHoDRZNRvd7cyqTqPZUKxWWMiQwlr+F6cVmCMfTC9i8BcziE
	 UzZfTMY+P0WGSuJ9ubyXX8XTVyJP+eLpxtvb4CyijU2FtjsAwcg4MKInxlNrBwzC2L/Cr5omCc78
	 xzYlW4CIQ/I+XvELKyy4f0pTiaXjHJNiOXLqgbg66ywb/lKhzLYkFZOl/HHXqhK705RYmpixZngU
	 BmuMQ5VLAUznPTF8y3GvEMP7GQnXzZeDeXPJU+1gw=
X-QQ-XMRINFO: Mp0Kj//9VHAxr69bL5MkOOs=
From: Steven Feng <steven@joint-cloud.com>
To: heiko@sntech.de
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	naoki@radxa.com,
	Steven Feng <steven@joint-cloud.com>
Subject: [PATCH] The default fan policy causes rock5b to restart  when streaming media and sometimes the policy does not always work
Date: Wed,  1 Nov 2023 11:59:21 +0800
X-OQ-MSGID: <20231101035921.24822-1-steven@joint-cloud.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231031_210002_589908_C2DE1675 
X-CRM114-Status: UNSURE (   9.04  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

Signed-off-by: Steven Feng <steven@joint-cloud.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index 8ab60968f275..974d09a8cb26 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -38,10 +38,20 @@ analog-sound {
 
 	fan: pwm-fan {
 		compatible = "pwm-fan";
-		cooling-levels = <0 95 145 195 255>;
+		cooling-levels = <72 94 117 139 162 184 207 229 255>;
 		fan-supply = <&vcc5v0_sys>;
 		pwms = <&pwm1 0 50000 0>;
 		#cooling-cells = <2>;
+		rockchip,temp-trips = <
+					40000	1
+					45000	2
+					50000	3
+					55000	4
+					60000	5
+					65000	6
+					70000	7
+					75000	8
+				>;
 	};
 
 	vcc5v0_host: vcc5v0-host-regulator {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
