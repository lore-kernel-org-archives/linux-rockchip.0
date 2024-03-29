Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51A50CD1283
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 13:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5o7RqdaR8NilOgLcT/ulE4lbha9/0pkx0qHYSgkPMj0=; b=k6TcFeo7yjMnZC
	/KBA4zOOb/Zf27d/e8MpLBP4dq01po39Hi2x7cJxzMVhpsIL7g7b2IbqpOfhZS3+ltERWjPVqgkts
	YawS7IRCBu1dN9qJQDQY5pLk7o/h3Q0/8FxcG1vcowlmZ9f7k8axsqZsZbTOnjoPEmDAJJwIcxAvt
	zAZce/U5oHloGe3qCounbzSy/p3slnL6XNhT18HQLeJ/HsCPj1fgAd6UR4L8RSvDIEJmAQBcqP+Is
	+aaOWBbuPFmsGFun18M/CocrnuGWILqIac9sC7YyfODawelxxb6VK51g7nJAjqVulyDZJHbyAl1d7
	hCHJ+V9fXanDuD/2No7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqCbk-00000000jpd-3OZz;
	Fri, 29 Mar 2024 13:49:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBXf-00000000QU3-2BSJ;
	Fri, 29 Mar 2024 12:41:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=F2pwAPob6EknN2LhdKFuFKKJQKQWuWhe+vEVTPNRY5A=; b=hOss5UszrHRar9WcMixWtgPbY8
	y6CpuuGSdqjIOfN4tMJ5FMOGY5gYWZoGVfp3nnIZ/nFRf6L1OTAz3wjenWf9OeYdof/1olHMWs5XA
	yrTSM7dISRK21A6dc9OArBYWF97ghLyCuOROCJ+bTKsHuTO+7jVXlMaNP9bPhmi7piiiQcKrJHpiD
	tjfH8xPZAapXBy1sSOeLesJ5D/NznoXvvWichQIYh42mR2BzW/zO9zHsU/fi0LiTn6QnK7WXYRljQ
	L2Z89jfYTNPQezoqIKxExeGXvKad6QCD8jPx/VkOqZHzE9DWUzAsA56WRCekTaVnbtZRIjWMXntUj
	Z5Wr6Ihw==;
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBXa-00000001Yt1-3Q4T;
	Fri, 29 Mar 2024 12:41:06 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 45659CE2F33;
	Fri, 29 Mar 2024 12:40:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 55D2CC433C7;
	Fri, 29 Mar 2024 12:40:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711716056;
	bh=yHxgtU2OTtRiz2jnpK76bff4C6A+TYTVw1JRL8ZQwv0=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=AclGI4i9q4fY0vR1zDUAERn0G5Vh5uhvtDEAs6OXpz5wxJFqne08vSJV/7lw8a/vM
	 mXXtVDtit2JU6U8bmaew1qDvLWP0lnIjeOcPLhdu4xUB1iQvBXYi1GbbnlFj2aGN+7
	 zpXRQ0FNyAj90h/0neyPp2PT/yd1Uu7ME5ilBjdXjZw5Pu57Q3uDK76S2IX0vORwXq
	 JIwvVZiJ8gxEPT5ci8LDSHgmlvolmdudCH5aA5w1+faGu8Ra6uNO7ffcDmk0SNkgJE
	 rWqr8J05BZVir0lMZ5jZsQhJUzLGTIawfwsKG43MC71E2K2UB2XcPUD16Dm//yaLqG
	 Sc4f5exrsVpFA==
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
	jonas@kwiboo.se,
	shironeko@tesaguri.club,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.8 31/98] arm64: dts: rockchip: fix rk3328 hdmi ports node
Date: Fri, 29 Mar 2024 08:37:02 -0400
Message-ID: <20240329123919.3087149-31-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240329123919.3087149-1-sashal@kernel.org>
References: <20240329123919.3087149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.8.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_124103_226511_0A4C7FD4 
X-CRM114-Status: UNSURE (   9.30  )
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
index 7b4c15c4a9c31..b6f045069ee2f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -744,11 +744,20 @@ hdmi: hdmi@ff3c0000 {
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
