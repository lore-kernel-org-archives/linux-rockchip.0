Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73ECBCD128E
	for <linux-rockchip@archiver.kernel.org>; Sat, 30 Mar 2024 10:02:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dyFfjw1sQZ++d3DmrztO4Jct2xUSzVsnAKAybPQJUUI=; b=XxhQzNte0y3C4d
	dFP0BYqP/xBD5YlxQMDVSMmD5VkeqYe+QBiRsfyRAL2adARufgshf++Jdm5pntDSJo41+BW3Tvcfx
	ewuoQmXgr6htgeIYkeqa/58LoyJCbYStSfm64rvYKrq1DbuEvp9ERAGbw3SVvv6Gz9h1QmB9Q/Rp5
	l5150EESVanU3SV7n9adW6XID7h2UdvT8Q5/KymnkdP9Z3veCqyQWfVl1ARRFKuPMJU6o2uK2MyCp
	401zgPUrAfjJqWshLPKIvka/kZFVkatNpitIm0+EFtK5BjqKgZ13JQJR729U99XgNOkYV8oQxRW+b
	DR7f87e/H5yOHS7otZ8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqVXk-00000003DeY-3sbV;
	Sat, 30 Mar 2024 10:02:32 +0000
Received: from m15.mail.163.com ([45.254.50.220])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rqVXh-00000003DdO-03UE;
	Sat, 30 Mar 2024 10:02:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=d68tz
	j2BQ4TGr4P7mb/TUCnqot1Kau2tzI5UUtJi4X0=; b=hRtYCYiDE5DMRPfN7uq6T
	Ae9BE2W1vnHQmzHNwuI4vi0I6DILyt4lbjmTVn4Z9NKTSxWJjWzMe+T56fRlExHJ
	CFaISx42srZOPfP+YbGEo24xbgzBzoUAAVgV2U3AvV6xAURY51A5ha9+BisI3FtY
	QdTQ5TjZxIEHrYP46W6yOI=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g0-0 (Coremail) with SMTP id _____wD3_3H_4gdmq7XiCg--.34374S2;
	Sat, 30 Mar 2024 18:01:41 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	dsimic@manjaro.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	sebastian.reichel@collabora.com,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH 1/2] arm64: dts: rockchip: Enable gpu on Cool Pi CM5
Date: Sat, 30 Mar 2024 18:01:33 +0800
Message-Id: <20240330100134.3588223-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wD3_3H_4gdmq7XiCg--.34374S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7XFyDZry5KFW5Ww45Gw13twb_yoW3Jrc_ta
	1Iga18Ja1fGrs0g34ktas5G34fK3yDuFyxXayYvFWkAF9IvayDJayrGayfKw1DGF129r4f
	J395XF15AwnrCjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sR_4rXtUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0h2xXmWXw3f-GwABsD
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240330_030229_535708_8A19D2AD 
X-CRM114-Status: UNSURE (   8.04  )
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

Enable mali gpu node and add the board specific supply-regulator.

Signed-off-by: Andy Yan <andyshrk@163.com>
---

 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi
index 94ecb9b4f98f..6f5cf6a06c2c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi
@@ -136,6 +136,11 @@ &gmac0_rgmii_clk
 	status = "okay";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-0 = <&i2c0m2_xfer>;
 	status = "okay";
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
