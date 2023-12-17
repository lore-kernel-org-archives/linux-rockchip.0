Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60DE5C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Dec 2023 10:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HekQ299/E+OYF+O/7O6fIydqfuLLxC9wKjplCCFaVwI=; b=enBzcTPVgXBCFS
	+6Urq2n2T9TzEnFbo5vuzKErPUgKSvF6kph1BKo/K2SGGh7ualSSUHHEm7IsYRS5uHvxHZ5YoVt0u
	c83JeT1NZaGJW4r/ESVUORY5iZ11Jd58TyY6ONLpQZLFAuFLfDQSbxSFR06BaCefHUypnYhrRZ5/t
	AqkWFrDk7rsAMGPg44/9KafaFPXb6MQabSLvvps5Dwz4XlhjWqnSnVsgjjrl9/rIlUaspM8CEyV0C
	vXIH0MnFzbrhOD3wltTvPGHpVzR8RHptWkRVcDiQvUtK0lq5XyewBRMi4kCpuIhfNsjbW9whUc5RG
	15KBMmH29qZnqC37h/MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEoZR-007UYO-2p;
	Sun, 17 Dec 2023 10:40:29 +0000
Received: from m12.mail.163.com ([220.181.12.199])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEoZM-007UW6-2o;
	Sun, 17 Dec 2023 10:40:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=yKu+k
	xVU/sZ3fnmu7Mf+YsvGsYLMArOxzariOJwOVno=; b=qZRk0TlqZgOzWS4IG8Z9m
	V1mtBrHd+aOsuRepNepmwGwpUaaDnrjASTBFVU7JT6fFzCBUA+54AtqHr6cG2fhC
	2siYqpkth0lYGIqlKU6R95XwLLoIZBcsZk0jOHnaHk70I1bIDU01y3s1b2e/unjK
	1gfWT0EUITLQ7j5Vmg6Pk0=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g5-3 (Coremail) with SMTP id _____wD333AB0H5lTn2nFw--.50366S2;
	Sun, 17 Dec 2023 18:40:05 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 1/2] arm: dts: rockchip: Add psci for rk3036
Date: Sun, 17 Dec 2023 18:39:58 +0800
Message-Id: <20231217103959.2380661-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wD333AB0H5lTn2nFw--.50366S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7Gw1kJrW8WFy5Gr13tF48tFb_yoW3JFX_t3
	WfW3W5Ka1rCr9Iq34DJw4ru347Cw48CFZ3Ww18uF1UJ3WSva1kXFWktayxJr15CFW2grZ3
	GFWfXa1Sk3W3ujkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU0Kg4DUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBnAxJXlghmCkkNwAAsc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231217_024025_308022_B6C20AEA 
X-CRM114-Status: UNSURE (   8.14  )
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

From: Andy Yan <andy.yan@rock-chips.com>

The system will hang at bringup secondary CPUs
without psci node.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 arch/arm/boot/dts/rockchip/rk3036.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi b/arch/arm/boot/dts/rockchip/rk3036.dtsi
index 78686fc72ce6..5344803442a1 100644
--- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
@@ -67,6 +67,11 @@ display-subsystem {
 		ports = <&vop_out>;
 	};
 
+	psci {
+		compatible = "arm,psci-1.0";
+		method = "smc";
+	};
+
 	timer {
 		compatible = "arm,armv7-timer";
 		arm,cpu-registers-not-fw-configured;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
