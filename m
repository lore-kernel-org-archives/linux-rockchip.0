Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 550BDCD128D
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 13:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TybuicpEKv6IfTgDoQVIK99db7GE5T1YnhIPPGzxhMs=; b=lKXdY4wvpklbw6
	p5F9Ynmrcq8pRpjn9tApzuRchyQNDuFlYbtVfGK2sr3Jp13VsV3bcJ/fPzLcXy+ympSg0tZd+QAFD
	I7wOC9+m0cjgK43AiEcuBXEij6fak8nFZHBfj+cuj1FZbbZfp4lplZslfJb+2TnhQZp7Eow02Tko0
	zDgVM1udljMHVHVPNEg38VXaT20SIVinkQyQU0eFGlfMJppfydALptY35sdFd6e2sk0Snt99x7UWK
	dtegEKQuTh+iRx739vcwadqyQLjbuMjlLh1GMhjdDoMR9nYV81nWZFHjcF0b2W7wSvrdwufxnI/qJ
	5WVl01CJYxprxWSWkJZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqCbl-00000000jpl-1jhD;
	Fri, 29 Mar 2024 13:49:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBXX-00000000QRi-0exz;
	Fri, 29 Mar 2024 12:41:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Y3faioi6YkyM6qDvMnrvhb/wgKNPVVuF4bC98344lL0=; b=GRdNmPCF9bi95YZDqgMAxrkf1d
	Ne5xNhUQwgHWCDEH3U79WRffOUWJP+pFiuaKleLOsHDD2Odd3UxJ9pcQoIPj0m1TnUBn+Qr74ZJYc
	SpKVo+1Vq2Wiqxi+K2vkXM5FRLcyHEY0pKND0d0XLzrhGqN7aEQcbcB7kGb+RfQqpsTe6yXBfNGaY
	HHwaDpXpigAFfNEJRvmt7mh36fZmtPathfBsZvsiv+bR/5oy/v6FQ8/O4jva2V5Sj19WvzpajmilB
	ARGWg3f4SGGp8teQGH+2BLukCLwC1aa7gwaAehMli6Q32qM+oIZkXjAR0IWJ7da5cMqlqNfLLK9CN
	D6Hn+qMw==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBXT-00000001Ys0-3xMK;
	Fri, 29 Mar 2024 12:40:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7672961902;
	Fri, 29 Mar 2024 12:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F32D3C433F1;
	Fri, 29 Mar 2024 12:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711716054;
	bh=h5vXU9ZnXCMzgReS3qgBCF4yclyS3UuPVOjxSyLz5eQ=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=X6XxjRDXymGspaC2jtiK9YL53Jb4utJi2W1c1aOaJoqC49ll4NZ1vFi0CnJa2O8Dd
	 lCTCJNWiGAvPPnz4z+MUgDYglxe2Enm0yKEr5pbLFekZpKxAU2vrROQAojv8kyxRWw
	 H2gApS4Xik3bREfeSS/g96c+8b3PLyry4NzyOgvfHBo4St5afAcpfpaC0glDgbMaT9
	 D4zsfqiQjcTm+/j1/s0SXFJaIbqGiNo4tE8WgDbyCZa5fWBdb0ixWEGjf9kDcmhJ6B
	 PfA9c1tBpwGYa43PIaB+l3JZR4FBSK24MBS4SkmWQYZ9sSdUd8V4xXccL63EwYObkh
	 +kujA2vct+0dg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Johan Jonker <jbx6244@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Sasha Levin <sashal@kernel.org>,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH AUTOSEL 6.8 30/98] ARM: dts: rockchip: fix rk322x hdmi ports node
Date: Fri, 29 Mar 2024 08:37:01 -0400
Message-ID: <20240329123919.3087149-30-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240329123919.3087149-1-sashal@kernel.org>
References: <20240329123919.3087149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.8.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_124056_245584_70CF1CEE 
X-CRM114-Status: UNSURE (   9.85  )
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

[ Upstream commit 15a5ed03000cf61daf87d14628085cb1bc8ae72c ]

Fix rk322x hdmi ports node so that it matches the
rockchip,dw-hdmi.yaml binding.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/9b84adf0-9312-47fd-becc-cadd06941f70@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm/boot/dts/rockchip/rk322x.dtsi | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk322x.dtsi b/arch/arm/boot/dts/rockchip/rk322x.dtsi
index 831561fc18146..96421355c2746 100644
--- a/arch/arm/boot/dts/rockchip/rk322x.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk322x.dtsi
@@ -736,14 +736,20 @@ hdmi: hdmi@200a0000 {
 		status = "disabled";
 
 		ports {
-			hdmi_in: port {
-				#address-cells = <1>;
-				#size-cells = <0>;
-				hdmi_in_vop: endpoint@0 {
-					reg = <0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			hdmi_in: port@0 {
+				reg = <0>;
+
+				hdmi_in_vop: endpoint {
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
