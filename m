Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90628C54754
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 08:03:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KQSaCddinYp6+nvfThO1/d/6pVn2RzJTAG8b21R4hyQ=; b=PEk8jUouuQzNDP
	iOngsuUGd/pYpySFbk6vRmOM6Zpp8C1LyJw3/94AS4YRHwElwbWID8FMBB6D7fNegwjzK3S6mDqOD
	u0DI3HlbiPVkut4Vf/r0NH5QkrBgPdQJ/G/zT1wTvOzPljyYJu3cck08GCvM6yDzE/u1hq8Lqc4wT
	LtcbZ/eE9l5A7p4Uk0Dw/5sXvS62BUk5KEmn5r635edSaP9iNOIxtJScqpqGDatDU+P2ElNx2k9AM
	SfppFprPNhor7BE7lN45ntAsBj0CvbssVjm1OaM2jIX9C72oxNAe8LLiglIHLNfnvweYX7oHAk9nN
	mRBrtHvR9q+FS1PnFvyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGvSw-00000008IE6-0IJF;
	Mon, 19 May 2025 08:03:18 +0000
Received: from smtpbguseast1.qq.com ([54.204.34.129])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGvLE-00000008HCq-1S5F
	for linux-rockchip@lists.infradead.org;
	Mon, 19 May 2025 07:55:23 +0000
X-QQ-mid: esmtpsz16t1747641306te62f64f6
X-QQ-Originating-IP: KUSRsfj2034q0KpgVunyHgpIxpYlaY5rKNO7LaI+oTw=
Received: from localhost.localdomain ( [182.245.65.132])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 19 May 2025 15:55:04 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7114426328788078209
EX-QQ-RecipientCnt: 16
From: Hsun Lai <i@chainsx.cn>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Subject: [PATCH v4 1/2] dt-bindings: arm: rockchip: Add Firefly ROC-RK3588S-PC
Date: Mon, 19 May 2025 15:54:31 +0800
Message-Id: <20250519075432.2239713-2-i@chainsx.cn>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250519075432.2239713-1-i@chainsx.cn>
References: <20250519075432.2239713-1-i@chainsx.cn>
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpsz:chainsx.cn:qybglogicsvrsz:qybglogicsvrsz3a-0
X-QQ-XMAILINFO: NkHKfw09D6j8EPyvTXWfHCJ17T4RuvGSQB6XV42nnTaXO2/1MLd+6+1O
	emkHoILwa4rMHByVq5cB1N5kE/AFcpCgkimO0u68obBr0q/nW5D71bOX9Gs5J7rHckcXiQH
	nY22W0GHgDcBPXHlnOforDghwmRGf54uwEODcrCk7mWvZldseBbOr8hQNOwafkrLCSmw7Ml
	vKU/KzdMEaHI+OiqVQFbBhqNLMULTOXMnKL3HLgYZ+y3dW2N0jRfNNLVbo/8nL/Ub/tduxj
	JLeHYxkojXIGKtZA7OzP0WqXKyE3RrhxAzAUcstkq6XPuqoTW7bE2PFUIpNm8tdXZJ9mbby
	GLROwtF3XE8krHHKgZUun4V2Oc5etxGxCaXy1+LPIn5nYxN8JOw9ymx4tKHOAPsyX2TogHu
	ZO6u2/wisW5Efs3tas9dY8i2mnRJZTF9XnKuR8+Zb+dT8M/SjDMepa4KTHZyh2oJaTwsvPN
	4yFQRwCPoccE9ONSgJ0ExWRTwcypJ2nL9xYN6z/dnjE1veSTsYqZz3ns6Z9zzgZwix0XFkS
	PlCCg5X8o4QdCAvX4WJTt1Cc/NRQmlM7x76E4P8mUhB8zzuIt9QJaw7ZWsUivoxI38S7QC+
	OKP+mO3k6nFDt6tT9T7teo6NoJHax3mdeMwgNfRML44z2qbejg7EGEPIEcJLBa5Sv4xamRy
	vByrxPf/44+FyC12kR42Phxv/MAZ7tHDE91ffUZvQDb3KMxosF4tvxnaCQ7lh/MuJVHsy9Y
	43uG9HlX3Toa4uBOKiNLaCb0TyonC6iozoZAbKAXd62LvD1j9X5FZ9nlEJFtt5j7MJHX9tH
	WpMjmgDTpzC6G5FnWOCNN3WZOAe97p+9a+QBy+dZh+LGVYg3a75/FMe+j/kIKkrQCOpOQ65
	Ah5D+Uj+mlnW3oluZ2ATSvCNwq40+/AJqXFxTtEQgV9X04RSzCFhBBE9EgZOJAkC5QNd/7M
	6tvsIUoxSsEnV90aUaXfq+7phdVgO2FfhXZb9OQFoJZCam6thRvm9cAb9l2Iq3Ey4wzsULJ
	vC/lBSBCjmjhk7BnwK
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_005520_878409_25915393 
X-CRM114-Status: UNSURE (   7.49  )
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
Cc: andrew@lunn.ch, inindev@gmail.com, heiko@sntech.de, jonas@kwiboo.se, quentin.schulz@cherry.de, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, krzysztof.kozlowski@linaro.org, devicetree@vger.kernel.org, i@chainsx.cn, sfr@canb.auug.org.au, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This documents Firefly ROC-RK3588S-PC which is a SBC based on RK3588S SoC.

Link: https://wiki.t-firefly.com/en/Station-M3/index.html

Signed-off-by: Hsun Lai <i@chainsx.cn>
---

(no changes since v1)

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 115c3ca43..701d68aca 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -258,6 +258,11 @@ properties:
           - const: firefly,rk3566-roc-pc
           - const: rockchip,rk3566
 
+      - description: Firefly Station M3
+        items:
+          - const: firefly,rk3588s-roc-pc
+          - const: rockchip,rk3588s
+
       - description: Firefly Station P2
         items:
           - const: firefly,rk3568-roc-pc
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
