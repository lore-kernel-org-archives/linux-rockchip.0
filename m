Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DACCC4332F
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Dec 2022 12:39:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HZrBnu6QNI5VDpnhCIY+Ukx/kA5YZlhoQqnitn0/CTw=; b=CCriSBFIT1hq7c
	S34TvgmOKqAWdoqIBj7bHFiYOm7ZezmrHM+Az6dEu97LpnjX6TBBHqS0jB48W2TmOtNUcwSCDztag
	dfECXNgchYZYvbWA6Ip0dUaj1MycIqLDiaJ2ofnht6EJvdNouSUONnueEUX5gChBy9+MnWZ+crTFB
	ihT0GfGJAtkN8odFe+ICh6XoFczTrdHjNsZWpI43BRYpSqY6WI0JCBil+MG+SBez/l3vWc29Gvi27
	FBDdCIUBz+rjDeHYQ7zl4ji+OEHRw0cLtOSRLERT5fvimnvX/hvTQF0wDZlh3IbI5T7iVxRBV4Omc
	f3B6n3KPBQV/g9hKotlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9QHE-00AwDp-Eu; Sun, 25 Dec 2022 12:38:52 +0000
Received: from m12.mail.163.com ([220.181.12.197])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9QEk-00Auzy-22; Sun, 25 Dec 2022 12:36:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=EccN8
	6IDfO6djKRdgtxcfxYIaCVZPDoY9AK/hFvC7Yk=; b=m5YjKSwlRZkh5YLRzlB1q
	Gt5U45ZKMvjEMBJs0IkIWI7ziqJNqD182pMLV588NgHRTXV6vd/xfdu9COBUE6yH
	VO7tLPTWi4ppHvQ0VIvcfdwQJ1mEZYXGJHf5WscontUYsWlGbMbdkcPnPdZBAW1g
	P2ElN6XXX6q3FrQ86SWKXw=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g4-2 (Coremail) with SMTP id _____wCXAyHUOKhjYcd0AA--.37735S2;
	Sun, 25 Dec 2022 19:49:44 +0800 (CST)
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
Subject: [PATCH 1/2] arm64: dts: rockchip: rk3566-box-demo: add io domain setting
Date: Sun, 25 Dec 2022 19:49:39 +0800
Message-Id: <20221225114939.3518552-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221225114915.3518502-1-andyshrk@163.com>
References: <20221225114915.3518502-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wCXAyHUOKhjYcd0AA--.37735S2
X-Coremail-Antispam: 1Uf129KBjvdXoWruF47Ar4kuF48ZryfGw47twb_yoWDXrg_ta
	4xWryrJFs7Crn8tr1rt3y5G340g3yDXay7Ja15uFWDJFZIga1kZ3y3J3y7ur9rJrW29rs7
	Xa1UZFy8JwnxCjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xREbAwDUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMxriXlXmDTu3pAAAsD
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221225_043626_668725_A26598E5 
X-CRM114-Status: UNSURE (   8.09  )
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
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
