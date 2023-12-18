Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E243C46CCD
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Dec 2023 10:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KvZaFdPOXS3b1QcE3fVw0uAHT0/J4zh1yPH0PnI05nE=; b=RzYKUF9Wn9+9Np
	2aSdmcnKWO/PqEBmrC7N7mftTPXkXA75GZIvrRBRJz5YZmlqHqz63Dzs5Mt61UCpz8xSA7F7jk92q
	Gbtp+PLH4UWjfnORrnOi/Biu9OVzU0JsWO7WOJNj2DPf63AYivcKc3rhiLrGT6J3QegEA5bcsiXlw
	t6sM1qbpzKevo5AjKUDTiKiUZ0289+l+e5g87CiiW2cJEt3k/q3/V5WFeNIk0/jyvw+LR+LSlJ9pH
	0BAHExyMX46I4EqjgVHZTXG1QkzlidVe2DaE1H58bpZZHIrRAXnJv8UrDovqtpVCg6TyQLojNmXyd
	OSGaLQKYboT03a4aDxzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFBII-009wAb-2j;
	Mon, 18 Dec 2023 10:56:18 +0000
Received: from m15.mail.163.com ([45.254.50.219])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFBID-009w6e-0n;
	Mon, 18 Dec 2023 10:56:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=M+QB+
	W4x0XaSH0qLHe9p44+VE5HHYX/QVSrXFOkfL7o=; b=IDSAkXb/r7PmhAbB6wrqP
	dm7J/h/5wrYDHVhkqiHK9iF1mpkD5B+j/J6V33NtCGo1iTOzaG10Jsm+Y7KFgv8B
	NDG+Bszdy8pdy11I0nvlBA76ViS61kAsWM1FhMTiCjYMfvupBFjVsrgdb6nUOClG
	hIwLRpT3tijujTO29c27Rc=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g2-2 (Coremail) with SMTP id _____wDn72EdJYBln1v+Bg--.7214S3;
	Mon, 18 Dec 2023 18:55:29 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	zhengxing@rock-chips.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v2 1/3] ARM: dts: rockchip: Add psci for rk3036
Date: Mon, 18 Dec 2023 18:55:21 +0800
Message-Id: <20231218105523.2478315-2-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231218105523.2478315-1-andyshrk@163.com>
References: <20231218105523.2478315-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDn72EdJYBln1v+Bg--.7214S3
X-Coremail-Antispam: 1Uf129KBjvdXoW7Gw1kAF47Jr48Kr17KrW3KFg_yoW3XFc_t3
	WfW3W5Ga1rAr9Iq34DGw48u347Cw40kFZ3Ww18uF1UJF1Sva1kAFWktayxJr15CFW2grZ3
	GFWrXa1Sk3W3ujkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IUnAHUDUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEgVKXmVOBAp8owAAs5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231218_025613_665243_FC295EC9 
X-CRM114-Status: UNSURE (   9.31  )
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

(no changes since v1)

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
