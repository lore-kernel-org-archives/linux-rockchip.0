Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 051D7C46CD3
	for <linux-rockchip@archiver.kernel.org>; Sun, 24 Dec 2023 07:50:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dudejGctGXUQbmD+eoQVrUmlVAgsbT5YE3KUoL0sAdE=; b=aLuF8tFreVnYfU
	+H+53Fkkr0t9BGtb9z8KriZ/5WK6wG5nNCNkpo/D2WgUaDDFmIqfbodXOIPRX1TR0/Q/3HVoYcg8D
	Xniz4SkYLGz0Q8UMdPAcKJACUOc0JaATGZBtzYYXznFeZvHQW9VY27mU0xHq8Nma4++k9aOa+Jnwx
	w1ao+4NZncniuAC35Mk+fi3J0ht/tjH/irBvumv/MdcPlHPhu/UASRsqhFs5N++uisWkQ+pzNqoYb
	KiZTbTfgDT2HZucr5w2VZl2VTsQdGLXFUqfZE00IHDjCG/xMfEWvdrJE7Gvm4sq9ZbrmgA9XMVyvn
	Xbq8X7E2Bw2aaUuoqM9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHJFs-0090zA-0j;
	Sun, 24 Dec 2023 07:50:36 +0000
Received: from m12.mail.163.com ([220.181.12.198])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rHJFo-0090ye-0f;
	Sun, 24 Dec 2023 07:50:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=TqfJ3
	7v1hcf1qB5MLxc/7ON3/Qaooss1EFg7ByuJihQ=; b=EIjE2mLzUHL7Nts/G0VhM
	Bn7P5V+Abugoq5Wpm/s+Fxr8OsNtsCirS1w7QVuaZmUKTriPrU8nM2G+WnP3dCfc
	MO2Za91hxCMQxSAptiPi6TNEKmXya1iKZjVe3ehDurXK/K6lRQdbdjBHxdNk9Ne3
	ktStE3ZBb4XrOCUrvrIlfg=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g5-4 (Coremail) with SMTP id _____wD3Xwyr4odl89+HEA--.46538S2;
	Sun, 24 Dec 2023 15:50:08 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	lasstp5011@gmail.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	zhangn1985@outlook.com,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH] arm64: boot: dts: rockchip: Fix led pinctrl of lubancat 1
Date: Sun, 24 Dec 2023 15:50:01 +0800
Message-Id: <20231224075001.3032214-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wD3Xwyr4odl89+HEA--.46538S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7WryrXFyfuw1UJF4DKr1DGFg_yoWDCFcEga
	4xWF1kJFs7JryFv3sIya95Wwn3K3sak34rGa1UAF1DGa4aqr48ZFyrJa48Cw1UG34IkrZ7
	J3yDXF1kCa1YgjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xRMFApUUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEBNQXmVOBJGtlAAAsK
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231223_235033_051363_513FD8DD 
X-CRM114-Status: UNSURE (   8.67  )
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

According to the sch, the gpio control sys_led
is GPIO0_C5.

Fixes: 8d94da58de53 ("arm64: dts: rockchip: Add EmbedFire LubanCat 1")
Reported-by: zhangn1985@outlook.com
Closes: https://lore.kernel.org/linux-rockchip/OS0P286MB06412D049D8BF7B063D41350CD95A@OS0P286MB0641.JPNP286.PROD.OUTLOOK.COM/T/#u
Signed-off-by: Andy Yan <andyshrk@163.com>
---

 arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts b/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
index 1c6d83b47cd2..6ecdf5d28339 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-lubancat-1.dts
@@ -455,7 +455,7 @@ &pcie2x1 {
 &pinctrl {
 	leds {
 		sys_led_pin: sys-status-led-pin {
-			rockchip,pins = <0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <0 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
