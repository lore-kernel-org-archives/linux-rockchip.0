Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06FF6C352A1
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Dec 2022 11:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EPDbvDb191bip4JWTX3djsbSr+kKu7YKUDlUrp3R64E=; b=OtD5M1V8avjoH/
	wSdwt9Dh76RRW7ASDAxcTzxzbC9KDbqOPbW0q2P6m0Nxg6yqrfdEY9dhKQPLuEam5n0T5we5oHxZK
	tOfNXGyr0i2vwPAG6H9KDJuxI72es9x+ZZV30foxygRjaUYkEJ/rqP501hMvZzPOty28tsfViLEIR
	J/HcxBB3/pNm0KrgAfxewxMgcNiK/cKQgXeaScZ975FwpHDzjHiidbaw8HMx9xlY+2Q3gPnPpQxk2
	p15cbaAHw3o0WHxvED388ZECyIA1HgCY05T9IMTQiFinaj26XRfc/MImyrGmRS/FyUlDG6EBFQLmZ
	RYNiz1vZwzyu4I6ycoaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2sfu-000uJd-LH; Wed, 07 Dec 2022 11:33:18 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2sfg-000tjA-Ql; Wed, 07 Dec 2022 11:33:06 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 426913200488;
	Wed,  7 Dec 2022 06:32:56 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Wed, 07 Dec 2022 06:32:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=undef.tools; h=
	cc:cc:content-transfer-encoding:date:date:from:from:in-reply-to
	:message-id:mime-version:reply-to:sender:subject:subject:to:to;
	 s=fm1; t=1670412775; x=1670499175; bh=CndWv91ai/XOQYpVh5b+BeS2Z
	BrDaMbdKpng8qtdwuU=; b=KCWVvlna4+Kb/EdluMoXPN+WtKMPd2F0iC/h6qFzV
	5ekt6iS6PAnrlui8yC5eUwTswNKpZGNwy+ZgqJPAMjljhCRIhLJ9AVHEErV1FgYr
	/d11+gKvO9tfCRMarMNr6bCKSBfbIEmLNJTIqsEHaPCMVn63de5i5pemxWSNGxnH
	23MFkYwwPgcSK+gPcnf7DzA6k/E3O98aSlwKAcDDsfyTCrE1Y6/UKdw+ZHFGuMWe
	mMoEohagvvRKGYN9qPu8xMmx2Av8fdgqBh3PqAcW7GQvHf3hcMVNe5R4YJcjdki7
	Zc4P8E0A2lWbiBhg/Jn85ilNUEfAWR41crlTdaazC2SDw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding:date:date
	:feedback-id:feedback-id:from:from:in-reply-to:message-id
	:mime-version:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=
	1670412775; x=1670499175; bh=CndWv91ai/XOQYpVh5b+BeS2ZBrDaMbdKpn
	g8qtdwuU=; b=dcNfwfUVrYO0aBWmUSrvu2CLE2bZBGW9WFnw6bwpotVvBmNplAy
	Qd0R08POgiSxoVtRaL5KCqHbZ42LZ+0FjoVxN26gBif4NTpnLLbGLkbh4vugPlH0
	V/wEOVP/xFGqYuZHyBwbIj50XcvW/9QqP9VMe2kQEFmoc576MApYNbahomtQYkbq
	fuxzahzGuGQXcU8R/ZYlmRvSMEMiCb7mjNQLskxMKBvxhlSt+MPmGJxACrnzUEqw
	3oToofMgqV6WXdE+7dRdtmCejTGhK9IuDqs5J2VcrtPdwDyjQD35lBNwV9v07pMi
	TQCX7ODUi1KIZnRUmsINba/NhXQxBEXZ0vQ==
X-ME-Sender: <xms:53mQY38AQkAzdS2O3vK_pXw6NLH__WbWYtiZmP1uI0p7D6F09MWJIQ>
    <xme:53mQYztslocxRwNro-fKw0cb5LXTH4E_OUMoGmnrDaL6ocLHhs-KpBw5sU9RYnwkn
    k-H_t_uLatQsIJdDbg>
X-ME-Received: <xmr:53mQY1BvDcjZ0dNrqI_d0YnuX6Y77QEmq7p0YOHNBzYiRKOlDVgOvyQpejc4sRfRkothykNF_7seoC3bdRZSqkB8DXQZ376N6k1sdSkxl7Dmc8wU-fA4X7Y2Zg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrudekgdeftdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeflrghrrhgrhhcu
    ifhoshgsvghllhcuoehkvghrnhgvlhesuhhnuggvfhdrthhoohhlsheqnecuggftrfgrth
    htvghrnhepjeeuvefgjeefgefhhfefhedvffelteehkeekvdefheeiteeutdehveeghfeg
    kefhnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepkh
    gvrhhnvghlsehunhguvghfrdhtohholhhs
X-ME-Proxy: <xmx:53mQYzexXYKWueBPc4KR5tXbNJPInfd1OVDxLFIE4PzLKZgRhZtkiw>
    <xmx:53mQY8OiE_xs8SO3x-tTjU0M79r684Q-N1zCWSPc318qtXO5sVio3g>
    <xmx:53mQY1kbQp9ElL_8W7O_V84_DfsC8hWXfyQatuSSkoCxfFmQNYCZFw>
    <xmx:53mQYzd7L7crYHjTTHdrtpeozG1CEtp68ORQ3mMg2D1_1crx7VKLIg>
Feedback-ID: id76147eb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 7 Dec 2022 06:32:52 -0500 (EST)
From: Jarrah Gosbell <kernel@undef.tools>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: phone-devel@vger.kernel.org,
	Jarrah Gosbell <kernel@undef.tools>
Subject: [PATCH] arm64: dts: rk3399-pinephone-pro: reduce thermal limits
Date: Wed,  7 Dec 2022 11:32:13 +0000
Message-Id: <20221207113212.8216-1-kernel@undef.tools>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221207_033305_355975_6751EF6D 
X-CRM114-Status: UNSURE (   8.26  )
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

While this device uses the rk3399 it is also enclosed in a tight package
and cooled through the screen and back case. The default rk3399 thermal
limits can result in a burnt screen.

These lower limits have resulted in the existing burn not expanding and
will hopefully result in future devices not experiencing the issue.

Signed-off-by: Jarrah Gosbell <kernel@undef.tools>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 2e058c315025..fccc2b2f327d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -83,6 +83,13 @@ vcc1v8_codec: vcc1v8-codec-regulator {
 	};
 };
 
+&cpu_alert0 {
+	temperature = <65000>;
+};
+&cpu_alert1 {
+	temperature = <68000>;
+};
+
 &cpu_l0 {
 	cpu-supply = <&vdd_cpu_l>;
 };
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
