Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B136CCD128A
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 12:35:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5U+rnno0AkDUZL59R4kvMSUlhSrZ0lIIqME04/OKsA=; b=f2pNgDRNuuTPAa
	uT440fFIGlYjBR9UZQm9PVcOhyKlOwX+pRWDfzO8MxegqABnVeJ3QgFDSLlHwOiZygdM5+aW4DYLc
	2bV2iCyAd71Gm7x7pfvXMdxpmPqlBUdR7qwgLgIMV86C9MNv6J1iG6qLsHMTTN41+izSLA/yYgiS9
	sKD4nwAmLV8Q456No4AbBNzdD39AV4vY5h45ZBNfcG/w+QfnH3CRc8tT4EfqYhCHCk1rCtj4uaete
	mB3omFpuuHSOn8qwSlBdj3mPCUkIJSNt+9LpBMxANkaAakjkTfSpx8L/IGaPdavUGIVASfxVp/Orq
	3A9HZQXo3XGrpC5k18QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBRo-00000000O96-1Koi;
	Fri, 29 Mar 2024 12:35:04 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBQN-00000000NNy-1V6f;
	Fri, 29 Mar 2024 12:33:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Kzmtrtwkv68Hkt8vCjVXvqKFUYVceTe5y5bDL6I/sIY=; b=b8B0h7wkHTePu2E4CFX+UbAA8g
	2naFzDQnGDkx6Sqm5s7V7JCTSsP59wSaK0IhMBWsGJ2gsFP6Qz94x35zoEGbO5bgMfx7btZrU8obX
	eQwx6RDnJ+5AN/9o4NbfKojP+v78ZB8dz66OLIcfITdVixC3dCb/Ompi9oZnyKUVmqk8jdmEti1Qp
	JfhWjEQhHiVgsdY0YkHuZJERKbAj7gk+0+2nr1jB6NH4sJKLZ8/FsuowhE0ri35cdWAjbuVv259nK
	/CTptSvwF1Z+zWBgtH2pSFANm0uUTUpW17BVDAjUV5Hgxet2bsiE/Yf322/evoBUWeEIBVuhWQk/s
	oNp0Py/A==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBQK-00000001YUf-0NHs;
	Fri, 29 Mar 2024 12:33:34 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 75D4B6192B;
	Fri, 29 Mar 2024 12:33:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9E45C43390;
	Fri, 29 Mar 2024 12:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711715610;
	bh=7N3CJhPsRMlpeKmyoDFHiXmED3LwVA7upRbobm8TQj4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kon6dTOcRWhp80a1rFuJx7/qk0Ng0LuDddZSc+z4vqqx+ze0V7oQbrd9RaCoJ/zYl
	 OYy/fXBUZn1m8vyrMOfi4LM356xdwO3bMdkzz4UMCyoqvJek6wGAc5hu/psMnpkpiS
	 zlQN0tZPABmhQ0TjbPztq/LMoQkxR/IEbLz5LtuKXamXrNOvePCS6mXrcMcrcsc0jS
	 slGJnDm3jgHmN7464hxJm5ljAUVEGEjU9uOv7L81rjmtIsqs8UGx+7Tm4+zMgBxp9g
	 kvKayVPsgHJpYIyj58oDfasrwxuu2apLKrcB/ufbFGlYTl+H1QORptwqWu218VOrEC
	 LLL9B7ov+T6OA==
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
Subject: [PATCH AUTOSEL 5.15 07/20] arm64: dts: rockchip: fix rk3328 hdmi ports node
Date: Fri, 29 Mar 2024 08:32:55 -0400
Message-ID: <20240329123316.3085691-7-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240329123316.3085691-1-sashal@kernel.org>
References: <20240329123316.3085691-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 5.15.153
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_123332_351873_05906F3A 
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
index 3cbe83e6fb9a4..26f02cc70dc5d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -728,11 +728,20 @@ hdmi: hdmi@ff3c0000 {
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
