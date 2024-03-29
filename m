Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54635CD11DD
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 12:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/Q0ntEEAmgs9OgstNsKfPzEWCfjrVvkznQbqmknyEU=; b=EKqcCg2E/rECV4
	GnQsuQhxMvxgGS2jXbckwmMq+L5a4tpEKoCzzUEURiHb595+45zgK8AHovjfd8xGEHeFw95wXPs5G
	h0riu3H5ZfwIiJQwDh8s7Se6PujvpYvH1VLBci7+qGmIfrynYmESgFD0cK5a3G0qpc1UEf6V7tdp4
	Ui7lLmeJ/ao8xseCQokxOf+nZRPkUARiCcjUjmemPly71sxoKispL4zYmvSIsMUd6OVtCSYUZYBEU
	rWA1T8bzKIEyK1r9wmm464f7bjzVTRwv5qMAjFw51WHN2V0BGaABNjsGvByzzZt3//v6t/Eykpwnm
	MEA29T7Lo0pYbnBXF9lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBQn-00000000NX1-3Mvg;
	Fri, 29 Mar 2024 12:34:01 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBPJ-00000000MwB-0rBJ;
	Fri, 29 Mar 2024 12:32:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 2894FCE2F56;
	Fri, 29 Mar 2024 12:32:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CA78EC43394;
	Fri, 29 Mar 2024 12:32:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711715546;
	bh=XHHcbiSrNTwKbYxM5W9y+dP0VAGaaEp7rtcy3Rj1pQg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ktXLA7qLX0ajVqgr4Dz7WP90CWoKXkU8oq4Od1fj/p1tx+3Z7AaKP3yGie3kG8MAH
	 Tw8mymAutx+rII8RYkn6F6dwkZYHP5YgBUNPwbqYVL0xNQHcrt0LCZXdFORuSHG9Tq
	 bz5WkxiznStReN2H/EbPyNjRtfMUmlkmc9mMefeSrQyQOGGJQ0q/R8ILs4Byx/IUkW
	 t9uCLdSsyxWHt95z0mmLqV0uWBO4+EwknKqgZo03aPvGh5s2/EdlvT142lokeRa1sP
	 9zJRLsDUFwi+PITV4lofOPR/BdodtvS2O4N5VEKrqB4Bcl4PmNwj8dqWr2lGexEzM6
	 pgpPrWiVM2OCw==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Johan Jonker <jbx6244@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	dsimic@manjaro.org,
	jay.xu@rock-chips.com,
	shironeko@tesaguri.club,
	jonas@kwiboo.se,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.1 10/31] arm64: dts: rockchip: fix rk3328 hdmi ports node
Date: Fri, 29 Mar 2024 08:31:29 -0400
Message-ID: <20240329123207.3085013-10-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240329123207.3085013-1-sashal@kernel.org>
References: <20240329123207.3085013-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.1.83
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_053229_869722_9D4459AD 
X-CRM114-Status: UNSURE (   9.35  )
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

From: Johan Jonker <jbx6244@gmail.com>

[ Upstream commit 1d00ba4700d1e0f88ae70d028d2e17e39078fa1c ]

Fix rk3328 hdmi ports node so that it matches the
rockchip,dw-hdmi.yaml binding.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/e5dea3b7-bf84-4474-9530-cc2da3c41104@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 905a50aa5dc38..d42846efff2fe 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -741,11 +741,20 @@ hdmi: hdmi@ff3c0000 {
 		status = "disabled";
 
 		ports {
-			hdmi_in: port {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			hdmi_in: port@0 {
+				reg = <0>;
+
 				hdmi_in_vop: endpoint {
 					remote-endpoint = <&vop_out_hdmi>;
 				};
 			};
+
+			hdmi_out: port@1 {
+				reg = <1>;
+			};
 		};
 	};
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
