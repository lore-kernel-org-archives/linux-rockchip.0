Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C58DC369B2
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Apr 2025 01:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mFLxVkzyaFrkKGo2tauAKmiglHaLDj8HDpPb5ZPf7Kc=; b=fBFw+tpjUXfMpm
	zAE9TGn4HIqMFGJlKyyTr+VI6Jcq83cpOUO7QHm+9fDJlFWFPE907VrnRP9Q11lGaHUreGRzh0Fg9
	G5OQQBffrJNSV3EUWlyVGWaSoRxgwOIGW4sJun8Xw8jz4G2PDsCIcxJLyOvD0C+f45QwovvAfbxQ1
	2ADpQ0eQ/QWr7EJogUA47Xe/c6Xci55PU9n13696TlxzzntCxED/jObhCXEoyzJQ4g11Cbw0xdPsP
	M0uxx4H9KW8zYiDOlar4NIExr+g5ByoK+rKq17uHDMdYJeWWaxXhoqHkIIZ5ZPuyxjIogBiD0TmT2
	0NLoFwMDZVGEKc0xz9GQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4VZa-000000049ru-0LU7;
	Tue, 15 Apr 2025 01:58:50 +0000
Received: from bg4.exmail.qq.com ([43.155.67.158])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4VVw-000000049LC-3QWM;
	Tue, 15 Apr 2025 01:55:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1744682093;
	bh=i6D1yBJk9DHmlyAcbJooHq3G/IGyUc8sMEwvJ4y5HFg=;
	h=From:To:Subject:Date:Message-ID:MIME-Version;
	b=AyVKt6uJkGqRoop84r0s0vfM+3eoeaozZI1Vzxsf27XoZEVF7KxxUoBoIsFVGwayB
	 xZIxe/aLs+GCWgZowEvXRGRRjbpn5Y5tmZxT9TdV55zHf9pJ0FaQmLodtThcY3W3p4
	 keKbE4FewMhkMwWvHoDWgS3fHxa31tyhB41ykZbo=
X-QQ-mid: izesmtp87t1744682090t65b4e76b
X-QQ-Originating-IP: zJXrdrbIL3JMAAlLItEVYCPOAmq76asgM54TxVAkvzQ=
Received: from localhost.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 15 Apr 2025 09:54:48 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 9498136726395687059
EX-QQ-RecipientCnt: 20
From: Chaoyi Chen <kernel@airkyi.com>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add rk3588 evb2 board
Date: Tue, 15 Apr 2025 01:54:40 +0000
Message-ID: <AD40AC968D12DF48+20250415015441.371214-2-kernel@airkyi.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250415015441.371214-1-kernel@airkyi.com>
References: <20250415015441.371214-1-kernel@airkyi.com>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: izesmtp:airkyi.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: Nn4C0BO3efGsrn/zBmOV6M2KypRxscQXJhULNPNBlraR5u9HWuPOfHZA
	TgfEGKHIx7/1UqO+mlVEvkJE0jNlQcCIAECNEYRAF4kAZDX5F1FsQ0+FeEqVNVSmidlas++
	c6sxv6nWYTHXZr/5wbjROoTzXvEQwkOPyhopEs7N3RAzOpNxCdrii/yCEbFJFOVDS0TFcho
	/nppdzyXjKrI3cBZliI50EwTVQ2ZD7utz1E3VLamvwlMVZ/schh9xNnJ550eI6gESYsEJ71
	6fFvEW8mPWEqVxBx3pVa58XnctM2YCXK3iacAun2r6tTbJWs6KXfP81bCkaX++5O7AhGP5Z
	sR0d1HgRN3TFpnpMTCtIAEiwgo7Aix8aadactxXfrr8hc9DI9dgqpShyNWbYJFDr59LtMbu
	dxdvvEB4GBrG8UeVq0VpK84S+P1PPGXMK8JmDYowfT7AoSZG8ZA5PqqHDxDI98otCKOtSfe
	MNBmLo5RA1xihSewoj4p841Ap+qehzio4X5m3V41E9KYEn9x2AiLuQbMEK579qRonxUzJHt
	pc/b2EHKaRZdGl5UeTLk9ksqNFbVjeklBAPBhsikVkfEKU7e2uBc0VwQu/9UhmDnTnIiReQ
	xuAiStwHBFHnVrjqGxahOf/z628gEGW9SB4kfgbE0tV7er9Lgfp1CK+oT6yTfeg9kDW91WO
	ihcVFsebMmcsPb6Q4B4lNberMrfHMj1fNaz6D++NFoPBTTGn75HOlboddrQ3UOzwUlcaXhL
	Z8mq/q+iMOaeKAGNL4fQj0njaFV4LeNd9osp4ynK59pw0H1i/hmLDQeETnhIE/hLf+HphSS
	ZTPukC1CSEFO/CTtV7Vc3oUg1HurHPG68b0YAtSJNRe4sNXTKeFse0sx06GE5lD7NpB05o3
	0NWKshNhuZn38GHye+BrtgEH2rlJZRCcuaRyLkQcLLtUlfzNFpLfG0yaXdOmdMLbKoilv+m
	RHfOmklr+vkcLoLONG8g2Fd8vqOOsKc8CuNUtHAtYJRTIlOHgz9M7aRryGgg7yi8p454vlJ
	vFnyfBsU1NTTF1iIcz
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_185505_171350_3368B077 
X-CRM114-Status: UNSURE (   9.72  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, Jianfeng Liu <liujianfeng1994@gmail.com>, Geert Uytterhoeven <geert+renesas@glider.be>, Jonas Karlman <jonas@kwiboo.se>, Jimmy Hon <honyuenkwun@gmail.com>, Kever Yang <kever.yang@rock-chips.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>, Quentin Schulz <quentin.schulz@cherry.de>, Alexey Charkov <alchark@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, Dragan Simic <dsimic@manjaro.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

Add devicetree binding for the rk3588 evb2 board.

Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 650fb833d96e..1ec2b74c0ed7 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1074,7 +1074,9 @@ properties:
 
       - description: Rockchip RK3588 Evaluation board
         items:
-          - const: rockchip,rk3588-evb1-v10
+          - enum:
+            - rockchip,rk3588-evb1-v10
+            - rockchip,rk3588-evb2-v10
           - const: rockchip,rk3588
 
       - description: Rockchip RK3588S Evaluation board
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
