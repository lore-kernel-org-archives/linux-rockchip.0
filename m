Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C2BEC61DB9
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Aug 2026 11:46:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jxRh9ah0CpRC0oZmWsXufzHArLt3Xp2KIPwsO6Qi2o0=; b=SUVd5j/JeMxAMC
	6iIrKAOgbvVgA6yevw3yXPvQIRWtZbHNvjDKgyV8CkndBSv5VI/gX3ohdGC1WM8GJpWK5n7NW1pOx
	dsWmOhAQW+B5jqD21htVzsPPyhZp5QRh5+glOLjbzX/IMdYkDtYiMGyGSJcFwmhxyo92DoMCghMlN
	GCzAg0VctbvwwF/JN9GBlooKhvKhCwxGnfIdHgBqOLG1kqUgK6+EbSuiGhKERvlzHYcVoskBPYz+7
	oGK6P93wOF9jd8ts+zLosF++4z6SEGwcG9JzQr75Y22ZH0GVanw+6QUOpDFcm30vpZnv6vKXYSO3f
	wNqxKp1biurLKdhd4Now==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzv2E-00000005fmy-3pEL;
	Fri, 28 Aug 2026 11:46:14 +0000
Received: from out-125.mta1.migadu.com ([2001:41d0:203:375::7d] helo=mta1.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzv1y-00000005fbT-2i6Q
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Aug 2026 11:45:59 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=uapX6PXhcBGDCmHV05L6QsA4dUHjroApJlX837g50MY=;
 c=simple/simple; d=cknow-tech.com;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1787917556; v=1; x=1788522356;
 b=I2p4hb0SJ6TaUY31a5B+6yE26Potg1KenkyTVWcMN1iBnk+AN0ncdIVH6qPALitif4YZZ6Ca
 pjkfY7k8NsJZuQIPzlyq4uWeJIEl/GWv/poK8jSLuJGYvLQllTs6KouwXNIIlN8PNnPAoMpggTq
 knCpn3xNY77whepV3hRPTkS/GMVriD8q/5c/mo4A71cz0J4gRCtn9DRjyejfqR0YLBEBsMSI1/0
 x7MotC25z4Ee5u1AacytyI3pFh6S2Esw3P8vHVRzEf2h29xP9nlstKZ+vkHENOEbQ/Y6ZANFPp2
 qrbjyqh9A1PWnZfnv3BeFrDHFra/YkAbOArBOuFWc9Hzg==
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id 071f6fa85d8f0328;
	Fri, 28 Aug 2026 11:45:56 +0000
X-Mizu-Trace-ID: 071f6fa85d8f0328
X-Migadu-Flow: FLOW_OUT
From: Diederik de Haas <diederik@cknow-tech.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Ricardo Pardini <ricardo@pardini.net>,
	Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>,
	Daniele Briguglio <hello@superkali.me>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <diederik@cknow-tech.com>
Subject: [PATCH 4/7] arm64: dts: rockchip: Don't pull up rtc int pin on NanoPC-T6
Date: Fri, 28 Aug 2026 13:43:04 +0200
Message-ID: <20260828114530.1315798-5-diederik@cknow-tech.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260828114530.1315798-1-diederik@cknow-tech.com>
References: <20260828114530.1315798-1-diederik@cknow-tech.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_044558_868090_1C7BBBCD 
X-CRM114-Status: UNSURE (   9.42  )
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

All NanoPC-T6 boards have a pull up resistor for the RTC pin, so there's
no need for the SoC to pull it up.

Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
index 84bfb33a4774..2c9390d2968c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
@@ -705,7 +705,7 @@ hp_det: hp-det {
 
 	hym8563 {
 		rtc_int_l_pin: rtc-int-l-pin {
-			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>;
+			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
 
-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
