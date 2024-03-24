Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4AE2C47DD9
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Mar 2024 11:46:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iaah7+A+yUd9JQsiQS+KmAQHTPE+P6ujrJDaQ1F7pco=; b=jtN+iGpUlic7wC
	O7RJK8BAVKYAtqDSkY3I8oDCiVYARFaCzoP3F/CydQLLYAfcXDdEIZR68Q+3ELQ0zpU/haES5nVx/
	fp+wfk+mRDTsFTvv6epH7+VuZyJ6zGYGK7Zqd0lf9CL419rbzTqWdcngzmiVlo4KKbIsNnnrOnsUX
	R6de1v8prl1dkrajvi7zlzpfYhQkrftZ93A1tdX3YaRUTDmwe1RzcoWLKmFM/+4yEYWn7hM098ZUG
	hDMzf46+wHuKHQIywtLxiAW4DetzJNG2Fva6CjZHW7H3LU/RpwuFTB3yRaqNgDBkLPHBxk56EvmKS
	VtelYbOIY8TiIEvnMpDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roMIf-0000000CTjL-2GUx;
	Sun, 24 Mar 2024 11:46:05 +0000
Received: from m16.mail.163.com ([220.197.31.2])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1roMIa-0000000CTiZ-18WG;
	Sun, 24 Mar 2024 11:46:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=JT3mh
	3pBXUE1j0Z7V6vKd0YcvAz/Tmr/5mTxbrnRMLI=; b=N71CAqrtACJ/fESGQSwmd
	0scqgszXr2/ABusiso1N2CE3W8RFaIuxRWQ0fz9r44rDC+jU6x99sCe9UVEY3mdD
	Psite649DIgfNm90mR4Ei52bDRgEGjOb/ulKDYTlSe3iqMS9ipBXo4QQp80jAwP/
	R700ke9v8fRpbnxcBWPRcs=
Received: from ProDesk.. (unknown [103.29.142.67])
	by gzga-smtp-mta-g2-0 (Coremail) with SMTP id _____wD3f6xjDgBmCswnBw--.40872S2;
	Sun, 24 Mar 2024 19:28:42 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	devicetree@vger.kernel.org,
	dsimic@manjaro.org,
	conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH] arm64: dts: rockchip: Fix the i2c address of es8316 on Cool Pi CM5
Date: Sun, 24 Mar 2024 19:28:33 +0800
Message-Id: <20240324112833.2181961-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wD3f6xjDgBmCswnBw--.40872S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Ar4kCF48Zr43ZrWDurWfKrg_yoW8GFW8pa
	13ua9xGr18ur4FqayqqanxWFsrCrnIqFs5Cr17GFyxtr45XryktrnrWryfCryjgF13Za18
	uF45Zr1DKa1qvaUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x0pi89NxUUUUU=
X-Originating-IP: [103.29.142.67]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEAarXmVOC9d6HgABsx
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240324_044600_743258_E65EA6C8 
X-CRM114-Status: GOOD (  11.01  )
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

According to the hardware design, the i2c address of audio codec es8316
on Cool Pi CM5 is 0x10.

This fix the read/write error like bellow:
es8316 7-0011: ASoC: error at soc_component_write_no_lock on es8316.7-0011 for register: [0x0000000c] -6
es8316 7-0011: ASoC: error at soc_component_write_no_lock on es8316.7-0011 for register: [0x00000003] -6
es8316 7-0011: ASoC: error at soc_component_read_no_lock on es8316.7-0011 for register: [0x00000016] -6
es8316 7-0011: ASoC: error at soc_component_read_no_lock on es8316.7-0011 for register: [0x00000016] -6

Fixes: 791c154c3982 ("arm64: dts: rockchip: Add support for rk3588 based board Cool Pi CM5 EVB")
Signed-off-by: Andy Yan <andyshrk@163.com>
---

 arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi
index cce1c8e83587..ea8de76b9214 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-coolpi-cm5.dtsi
@@ -218,7 +218,7 @@ &i2c7 {
 
 	es8316: audio-codec@11 {
 		compatible = "everest,es8316";
-		reg = <0x11>;
+		reg = <0x10>;
 		assigned-clocks = <&cru I2S0_8CH_MCLKOUT>;
 		assigned-clock-rates = <12288000>;
 		clocks = <&cru I2S0_8CH_MCLKOUT>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
