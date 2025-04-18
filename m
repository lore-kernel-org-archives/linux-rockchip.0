Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51579C369C2
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Apr 2025 01:52:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=o5N4plaJKidEtUrjTz5VKuE45PFxtWMrG5GMr9opBxQ=; b=MY7SYYBfSXSi6izbvmrlUfPCbr
	L0E8n+gmb8j7JPq5wij58KVMWHUC5a8hfbfIQqq3fqAR8+ZuatfH9Hj/bAkRqavF+Wh07Ogll4wIM
	doOdf6oCrZrPtj5nUfMXQ92EaLFmkcSELfFAEbD3bAtj5PG+tweN9/xAUkYknOgNpQnt+8Ax+cMvf
	CGrPJpp2Oc1CKhhBb2hQ4UfL/m63bSjGIF4YDA3Rg0KrJMZ4lpfdDjnNOKdKgw/+uuf0rDANEkuyb
	Aby0nH0mUosnQ7LG+hrva1aVLk5WXPiQ5CS9C1SCE5g3yHLgTKt85cQCLZJ7i0ZOGsV9JV27jGzOZ
	XQyt8trg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5au7-0000000Entv-1FsQ;
	Fri, 18 Apr 2025 01:52:31 +0000
Received: from smtpbguseast3.qq.com ([54.243.244.52])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5aqU-0000000EnTC-27Ja;
	Fri, 18 Apr 2025 01:48:48 +0000
X-QQ-mid: izesmtp80t1744940897tacfebf76
X-QQ-Originating-IP: 1/RhFsCMqFycRYtj3mLsaPlfRGcihZnNKNg8dOyeGe4=
Received: from DESKTOP-8BT1A2O.localdomain ( [58.22.7.114])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 18 Apr 2025 09:48:12 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 13519601627997338796
EX-QQ-RecipientCnt: 20
From: Chaoyi Chen <kernel@airkyi.com>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add rk3588 evb2 board
Date: Fri, 18 Apr 2025 09:47:56 +0800
Message-Id: <20250418014757.336-2-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20250418014757.336-1-kernel@airkyi.com>
References: <20250418014757.336-1-kernel@airkyi.com>
X-QQ-SENDSIZE: 520
Feedback-ID: izesmtp:airkyi.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: NY6OurWw+pG/jA8BsncHgmx6s5Fe/MGMLPsyfTo3dyYZwQrb37G1yvya
	EPERJawYzgk9wGov4raH1MUlnv134y+iurxUeqBxgrZDMpJTRN/rFBPv0HVGpHuiQx/NViz
	STMcX+3tgQA0pXc1ZI6/RSJRpDThVgZHgDZZqpFsRevgeT9e0FLXneGYwBgV3UFKmT1kAT9
	g4GBz9kDxfaYy6y6Z+btKbPE1fX7JWsHY3KRMed+/uYcqUWyO9U0XWqt8CwG8ryMCCmL40+
	8riJd1+X6/DrFzkht2WNGPdHldPtvThJgFRBZKRNVHa4H+0Py1hr97BbsIEleYTQWAuyMWy
	8W/TR+xBH1a//wBxKHsN4DWalEjjehjRSKGTun6RKkrW6zifnJKkvGQVTr3gtGNBJlGlEUf
	DlkfhW+3rGXZeXrx0rt+mIn8Te6a5kcf/fx6F43ZetKtGeWdsDLUB7oXn1sZSB1Hi09r9Sn
	z+hcw+NBPj3hEioTjF0JzAP4Oj0bp9OWKgmi31fupOIoKGRMY//QmVfLtv+rH/4NQD47Ukd
	jrDKkJhmtaEepDoscoYimo6Xryhoq94wOaZLhju056blxZByD7zehiDyHod3IpzKazZltuF
	gY9wTE8jEqa46D7NUBkpqIu5D2plGvlB3ubUxIYbCTChkmDL8UBP51D7lK0SMhkijNgGlpJ
	gMurtRjHt90jKSfyQSUVHS+6vhSrF8AFt0r5AQaVRnPzfhbzBBhVzzS88jo0WReeBMhqfFS
	I1e20Z7pGVZoQv0sur3JAI79kUxBmmL0syGJoOECSaPpfQJiX80J1KR4wPCcQvhJcoZ1p5U
	LBdHw7lpGNwNuqd4RfsToIlgBXKpQKDDee96nwz3vF1InQcrFFduHo1rKRs3Rw3SZSSg+XP
	dtyY4bkTueGcmwgktrQecQqDTatpXOO9koz6i/D5+V4ngOcw1YJ6Ns7UIxixaJFW1lnvAuW
	H2/2f5FwM/rl8kbjXVLOoRPoZtjaFQLN7iu49/z9IwGaevZO08sLJqi+Bv3nWFgksh+T/D2
	vBbr0zA4vs0DrHtFG+1sfH7DiE1Wz58C/tRHlYFV6VgGD3Xpcw6dU2G2K3RAw=
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_184847_094970_CB983348 
X-CRM114-Status: UNSURE (   9.24  )
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
MIME-Version: 1.0
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
index 650fb833d96e..455fbb290b77 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1074,7 +1074,9 @@ properties:
 
       - description: Rockchip RK3588 Evaluation board
         items:
-          - const: rockchip,rk3588-evb1-v10
+          - enum:
+              - rockchip,rk3588-evb1-v10
+              - rockchip,rk3588-evb2-v10
           - const: rockchip,rk3588
 
       - description: Rockchip RK3588S Evaluation board
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
