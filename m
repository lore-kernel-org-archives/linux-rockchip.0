Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58B28C6FD1F
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 12:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O/Q0ntEEAmgs9OgstNsKfPzEWCfjrVvkznQbqmknyEU=; b=myYiljoIPVuyLC
	clpsNv5S5JeZXJKs68Py6zBiaF8IL7ENwtEoCjMyjZtUcUUbJsuoJPBlUHf/yK9x5Xb+/wvyrEsOW
	f+H/po22ZvWHU7BnZrV/+EatQ7qRHr3QvBzGH0mBKZLdQO3AWJ/OfJMGniA8nsZJtsK58IWoSa68P
	UD7Yc77rdIRE3uGgT03scUIbB9IOYNkea+AORbkn/iqk3Bt8AVOFZwQaTfcTca0Zg9zu5uSJQ2jlf
	/f3g4uO9pjGo61vrkpRRssPCA4WyYhe2TzGFFdG7x2CwgLa/INgDuBLjwjs7Xj85c5PvehoRDTdg1
	+w01IscbMz+ElKkOppPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBf7-00000000TO7-0Ui0;
	Fri, 29 Mar 2024 12:48:49 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBd0-00000000SDt-1Eat;
	Fri, 29 Mar 2024 12:46:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=+p/fuGQ+sZOqH1hTaYpR0AfvjIJ7byLMmFa++X3rWv4=; b=Kc5VhazAGakgOjahpHv+/dJYYu
	QEpJrY/Qyov5Y5zwhJNCSG1iGv4Zgh291ptrwWQPM12l8YETmKuVx+54vSDzLO1DbxiGFcHEzNiq5
	NuhhDjgNm34Uy8trZRSx6bEYP1FHxwxrjJNqehPeOCKGesTXsxnmSyn9lUSmAvtD2Lu8ocnx0fpZi
	GMwFrBcvtzD753dnVSf12TCov/7909Szfxgk/L9tdlu3JgitlBW6Zc/LTagJHKxtBiWqv1mbEcmJK
	LZK8qQCSzwvgjDy7lLW2Oa92LiEq7CjMviDm2MIav/61KddXf036R5nHOBgwNPF/YgplREof0LOCO
	1T4NN/NQ==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBcw-00000001ZaL-3u0M;
	Fri, 29 Mar 2024 12:46:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7D47F61902;
	Fri, 29 Mar 2024 12:46:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5898C433F1;
	Fri, 29 Mar 2024 12:46:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711716393;
	bh=XHHcbiSrNTwKbYxM5W9y+dP0VAGaaEp7rtcy3Rj1pQg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=H5xzePVxME4Ug0uo/crHjc7GVnLy89sH+cttu3O1wYaRnF5Wp2Wmk8JB6Qf4xiVhd
	 JCpnuBdmP2laCrcgZanHv8lG3sMAcnT1dS7iYxlsNXejDmcfUlo25g/L+iAtn75UJ9
	 P8SV87fZXPutMyO9xh4oBP36Uujk9eXvvgPr+kNc9sE96UCKRROEeknLQiCVtfZ+CU
	 ohmgSORVEechVn7m/T1tpnEiOmTdi/XUbOQrSGw4PWReanF6d055PJ/SDhoo3OY0q0
	 H4+65xUZpYX2KKaAumdgkY/ZH48Vxqw67z87Oc+ZLAHXOH4eZ6Sn9qWWESkIDSRh/2
	 QflrWEOIRztQA==
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
	jonas@kwiboo.se,
	shironeko@tesaguri.club,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.1 15/52] arm64: dts: rockchip: fix rk3328 hdmi ports node
Date: Fri, 29 Mar 2024 08:45:09 -0400
Message-ID: <20240329124605.3091273-15-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240329124605.3091273-1-sashal@kernel.org>
References: <20240329124605.3091273-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.1.83
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_124635_159937_667E7707 
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
