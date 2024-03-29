Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78986CD128A
	for <linux-rockchip@archiver.kernel.org>; Fri, 29 Mar 2024 12:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yScAqKscPwbmfcxdymMnWUxtPR7yeLjg6iXa2qMw2Ck=; b=Q7HI5zZBXZqRKm
	ipjKTJLbSSZL/KmdSx5FGvKp+iIDCXCF9dm6HpEOpQKl+dce2tbAmWSWmMeLi67j2pNojPwOjwUmB
	/JEdJVs3SLkq3itTyUyYeayuYife1wUYoCUlnNFtfck+CoexAf592PscgCKetZb8jHpuW1X9+DIl6
	/qoBwi6LMGMoPBEy0udm7nN4L6a/ghpHg6pdgHnT99IMCI9iQ05DtgOAGJR4n4GBKn7DcXAFY2Cha
	w2IUa42OPbR+Xa46G/W2X9bG+2WsUM2K3ZzAZes/XcXWneQh8LIMmqY2i+zNs/nMteLCG0Wo982Az
	oyALSaestmcYw0X1S2gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBdo-00000000SjC-3svx;
	Fri, 29 Mar 2024 12:47:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBaf-00000000RBu-2AmI;
	Fri, 29 Mar 2024 12:44:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=FxSIfIYX0WqFBDd5nB0Uy1eiXP3y424UG6ayitNQsnI=; b=j+iDJuZj3Yd25J8X6CEyjIXQ0g
	kXr0ykaBXbDhGNA4Zr7fjBTHVDgnP1XYYkNqCN2SOfMCIOYBQ7pqyAVOFPKrfXN5cAoBZw1joss2e
	tWk+UQSQIZJkhUSAsVCtIHxS0dXzUb+7fAocNe+JFKwibWdv+zfQxK5d0jdlA9e72ODhxkZ2yJB83
	pq8b34JZ0cqNsQmiQ7XKeW+MibB7HEzAkIWaEjqPydLzMklKQpMRThc0GuD14cy7GRd8oXZLCQBp9
	TGu7x5yHrXiAiMnLBP+e6ZeMnKb3VwY8IuxA+oz0s2CLgFSr1rK6doatKdqboV6KxGCIQG/a/SRij
	M0IcX2QQ==;
Received: from sin.source.kernel.org ([145.40.73.55])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqBac-00000001ZGG-0LkD;
	Fri, 29 Mar 2024 12:44:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 9F84BCE2FA7;
	Fri, 29 Mar 2024 12:44:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 17CF4C43394;
	Fri, 29 Mar 2024 12:44:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711716246;
	bh=oZR3S+5IeA9tysyQbtacehydjMfZh62c3cUc0dDLAYk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=KY9/vZNTnpetcTdcy/DmXnEIG+JDu96UaDe39ES1f2XrMyeVK+zARNzKKFri4F8lu
	 gBNZVS86kwdNR7jMFNOCEWCPbQnF5Mzn4S3H6BPiqyLUeofnHaV101+p0+TiybOEY7
	 ig6b7hsZ4wLtl/SUlDo/HoCQxuKXM4Joo8fQYb7aFv4E1vznLlOHluzjYbhrFpCdpT
	 2AJ7Vl7xipblutWTj9ZWwE3phZpFMNAC6f0OBAYZEbeeGY0SuLca6LKUQia8hQaVqV
	 sYOJ2I+zqwTh0eI5g9QMBGWFHCXea6CLuSKVrJ0y/VUPyajYyBSGtXXyB6JpfQrmA4
	 NA7znV3bq+dIQ==
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
Subject: [PATCH AUTOSEL 6.6 20/75] ARM: dts: rockchip: fix rk322x hdmi ports node
Date: Fri, 29 Mar 2024 08:42:01 -0400
Message-ID: <20240329124330.3089520-20-sashal@kernel.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240329124330.3089520-1-sashal@kernel.org>
References: <20240329124330.3089520-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.6.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240329_124410_515928_69C9E318 
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
index ffc16d6b97e1b..03d9baddcbaba 100644
--- a/arch/arm/boot/dts/rockchip/rk322x.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk322x.dtsi
@@ -732,14 +732,20 @@ hdmi: hdmi@200a0000 {
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
