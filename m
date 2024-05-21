Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27E8FC25B74
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 May 2024 21:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bPPNUR6M3MKvHXupJQzFXb0GTa4cjlHN2NsBPLJUM90=; b=eBpB21md4nbIZW
	Th825T8ijnUDImJOp0oIr2pYouj18mAoMYdGvqyTTAPACYMOmaZ9rZ32S+WH7GXL8gGLUIu/Ww3sX
	ufhvrYhvgJnF4zCvB57wMYm6zTViagAcUVI2uAsTU+AQXV2JQHng6DitSQg6Wo161QB6ErEGJCZzK
	Ob8Re+DiV2BCv2i5ltoytPRodpqBR0FJQSh2j9yl58qR3njKdjthuDU5vm1qi1xnMwQxdy5jJ7j4W
	Q+X5feSvMTlrCj0JImLzDLppGpM2sgMmC4KNnXI90e2KiBxHXg+xr33/JuadsBP7eF9iWJpOxNYXt
	mOrt4FS5hn3QcRtoOP6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9Wlr-000000016qD-2gXV;
	Tue, 21 May 2024 21:11:43 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9WlQ-000000016T8-38WC
	for linux-rockchip@lists.infradead.org;
	Tue, 21 May 2024 21:11:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1716325859; bh=DqKdkq/DVt4N6f038uSTPnv86iR/BLOuZIgCRVepdW4=;
 b=HE5WW9lIBpNtaMlFoZcA0E0RfJAWC9qzj6LBOgaDUCltAQIsGb+ZgpZnw6NJioWnXzqe56Dlj
 +s/395BY/BypfOOzi/hpDpA3q2RWRD5VeS8FVugJSGptxHvTcLC7Jmp3NYpccqgsnADLE1XQdh9
 sIOGpOF7wap4mNKNHHq0rseEew6xR90i83o7/Zr+rl9VXwJgPAtGzUW5ypERxZPQAN9bsz+O2mv
 Drbyd3aH52vMut9lBYVByPqi10Vn54kIEc/C/4bWlGeInS4twYvH9NmXv8fthW4mbEj4P5RXLEl
 rhlV+UCVpaFEd3u3v3FNEyyH7q2Y3B1gbdHpCnOin3cQ==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Sjoerd Simons <sjoerd@collabora.com>, Akash Gajjar
 <akash@openedev.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: [PATCH 05/13] arm64: dts: rockchip: rk3308-rock-pi-s: Add pinctrl for UART0
Date: Tue, 21 May 2024 21:10:08 +0000
Message-ID: <20240521211029.1236094-6-jonas@kwiboo.se>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240521211029.1236094-1-jonas@kwiboo.se>
References: <20240521211029.1236094-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 664d0de08b6b0c828344aeee
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_141117_379816_D7FA3EDD 
X-CRM114-Status: GOOD (  10.35  )
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

UAR0 CTS/RTS is not wired to any pin and is not used for the default
serial console use of UART0 on ROCK Pi S.

Override the SoC defined pinctrl props to limit configuration of the
two xfer pins wired to one of the GPIO pin headers.

Fixes: 2e04c25b1320 ("arm64: dts: rockchip: add ROCK Pi S DTS support")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
index a2ec62a377e1..08d1be3a5de7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts
@@ -288,6 +288,8 @@ u2phy_otg: otg-port {
 };
 
 &uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_xfer>;
 	status = "okay";
 };
 
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
