Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1239C2BA12
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Jun 2024 17:05:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h+vyi/u79IPu7bVhvolTNPpHlojMWeTgOVFMQVQLeBU=; b=LsJ/zquvsTqH+Y
	orEWGP+nXsFB1qxnoQvBS5+km/hPQbvh14xBxdjTf9mdMpNQBJzO1DzY88RjLf8mc/juwqZbNShVD
	rCvhZUvoWyq7MxW4sNtVKnx51NWoN1BJ7d8bXvS1qB0xbdf9nBNnD/MwnZAZphTUNkyWnu7VP/WxX
	AZOBSSvz0GeERBvQ2YMSjo6NAGZp5T5Xt0574oNxEVR2MRQ12Ye4JgP62M9WIkDEKMyKoOpIs0oud
	mOG9EfT7QujKrkcwXHMvVxvNkSMeg3HbPQWBaTdq4XhBaAPeOzwNQWPgG4NkabrDVnqvwjViaPb9K
	owIP0Jc+tivqrzW2qJ6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIWqL-00000005mQO-3wug;
	Sat, 15 Jun 2024 17:05:33 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIWpw-00000005m5L-2CWk
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Jun 2024 17:05:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1718471071; bh=Z+F0UfaoXDdt1StVLr0ioIKGWYkN+1Ezu/cCRH69328=;
 b=gl2OipOF7kftC5o30amFOfTBJ/fkhEX+26ZjhEcs4OmpBDB8MZSvOrkpFm1UVmNTpDPYKo6fl
 VoAFt4kA/sRfdG0huWAJ541GyjeAjvRsklqIRETfH0vGb/pg3NFz2AxlQrJpyZJEXZT4xFHFlRp
 EX2IHkZy2RM2WRmBPWJCVDP3+mxdC/LP/YrFnf4yFHVaH4yzV1NMb7SO3pe0+BtAyjtahGuIWzi
 TEj0AcY6b286ZQwiIOX2JN020rxFrvuV+ReUiIT82nDTmjcT7iXisZpWeTUq/gqhxusxa0U0s1w
 FtLchMGbsM24fpaCXLgg1XxlhUvDIrhFyKvzYrAPlK6w==
From: Jonas Karlman <jonas@kwiboo.se>
To: dri-devel@lists.freedesktop.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Liang Chen
 <cl@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org
Subject: [PATCH 01/13] arm64: dts: rockchip: Increase VOP clk rate on RK3328
Date: Sat, 15 Jun 2024 17:03:52 +0000
Message-ID: <20240615170417.3134517-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240615170417.3134517-1-jonas@kwiboo.se>
References: <20240615170417.3134517-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 666dc99c24e0254b39803fe1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_100509_298946_02A96694 
X-CRM114-Status: UNSURE (   9.06  )
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

The VOP on RK3328 needs to run at a higher rate in order to produce a
proper 3840x2160 signal.

Change to use 300MHz for VIO clk and 400MHz for VOP clk, same rates used
by vendor 4.4 kernel.

Fixes: 52e02d377a72 ("arm64: dts: rockchip: add core dtsi file for RK3328 SoCs")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index 07dcc949b899..b01efd6d042c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -850,8 +850,8 @@ cru: clock-controller@ff440000 {
 			<0>, <24000000>,
 			<24000000>, <24000000>,
 			<15000000>, <15000000>,
-			<100000000>, <100000000>,
-			<100000000>, <100000000>,
+			<300000000>, <100000000>,
+			<400000000>, <100000000>,
 			<50000000>, <100000000>,
 			<100000000>, <100000000>,
 			<50000000>, <50000000>,
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
