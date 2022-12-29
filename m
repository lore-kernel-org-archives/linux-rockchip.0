Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B15CC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Dec 2022 12:08:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=H319qyGG5MRxs0IT/N6WYBgQFlQOoRqPfRqjiX+TtUE=; b=4bIQ3UWjSgoqD0
	c6FOcYp9AXDryx5jCRz7fysjyNP7h4ical26A/Ze6GFlf69I3njfSxoEaNpZtwAFgckbjIg3knDBO
	SIjRrMNQ4sHS5zTdU/Y1Csy5iwjkbThEDXkuVIHEzsLRFx99Ox6nEhlejFipQzRhRZwfkELofpiEa
	uIaaHsYMDgNCI8QzqBhycqhgiF8mhjoMuoLw4FWElu8A/I2fyJkyV3MLKjLVrz6NqBaTN44xeWAU4
	chWhcIgquHJKCyvDweacsZ6zjh4h/aUwGB6EZVill0nlg7B9oRYcD0n+vb0AgqRJc1dtIgX7UmD87
	cc7+yN9cCsMjq8qN7xjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pArhc-00FR4b-0u; Thu, 29 Dec 2022 12:08:04 +0000
Received: from m12.mail.163.com ([220.181.12.217])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pArh2-00FQgF-5a; Thu, 29 Dec 2022 12:07:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=e72xy
	e98vJi65A6YWv7o8YldGpV2X80Pi4fU31n4lrg=; b=lVvjxQY/+loC6dajLumrL
	gmrgw2Aq7SnMaAwO2XCiq4gz/lfdPbNw7sogrS3yJPKbl0r5uFLv0cW/xxaJwNXX
	HxUw6C+8FJC70e4L+P8mDaeJd8B2OxpOpQZIzsOYGtS45tjcXpIm+AyCZrtXK86x
	c4MRaiWmNAu+VI9Qsb9Ty0=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g4-2 (Coremail) with SMTP id _____wBXQrgUf61jl6RhAA--.33791S2;
	Thu, 29 Dec 2022 19:50:48 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	piotr.oniszczuk@gmail.com,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Andy Yan <andyshrk@163.com>
Subject: [PATCH v2 1/2] arm64: dts: rockchip: rk3566-box-demo: add io domain setting
Date: Thu, 29 Dec 2022 19:50:43 +0800
Message-Id: <20221229115043.3899733-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wBXQrgUf61jl6RhAA--.33791S2
X-Coremail-Antispam: 1Uf129KBjvdXoWruF47Ar4kuF48ZryfGw47twb_yoWDArb_ta
	4xWryrJFs7Crn8tw1rt3y5G340g3yDXay7J3W5XFWDJFZIga18ZFW3J3y7ur9rJrW29rs7
	Xa1UXFy8JwnrCjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xREco7tUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbCfgbmXmDcMjBFogAAsZ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221229_040728_664337_6D7A1C9E 
X-CRM114-Status: UNSURE (   8.06  )
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

Add the missing pmu_io_domains setting, the gmac can't work well
without this.

Fixes: 2e0537b16b25 ("arm64: dts: rockchip: Add dts for rockchip rk3566 box demo board")
Signed-off-by: Andy Yan <andyshrk@163.com>

---

(no changes since v1)

 arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
index 4c7f9abd594f..d956496d5221 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
@@ -353,6 +353,17 @@ led_work_en: led_work_en {
 	};
 };
 
+&pmu_io_domains {
+	pmuio2-supply = <&vcc_3v3>;
+	vccio1-supply = <&vcc_3v3>;
+	vccio3-supply = <&vcc_3v3>;
+	vccio4-supply = <&vcca_1v8>;
+	vccio5-supply = <&vcc_3v3>;
+	vccio6-supply = <&vcca_1v8>;
+	vccio7-supply = <&vcc_3v3>;
+	status = "okay";
+};
+
 &pwm0 {
 	status = "okay";
 };
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
