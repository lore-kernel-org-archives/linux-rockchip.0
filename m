Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B168CC4829D
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Feb 2024 04:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w/RgG2m8aoXj0OmnunvJqNgPp56t5TysjVTppAtuafw=; b=MQk3kcbJUH/5hu
	vufBDpt+bkk55IXVgj/7I3p6qpzYJun8uEplVE0On+vkp6mTFvpJxxdJUl3Pel2q6rKd76D+Z5pT2
	Rmc6nidpN87zsDKeRznRxaB9G76ocCLf/QVObq9UG29zPyIK2r9g2tZB0zfvfFiP94uhbDXrfzxwq
	zqJPy9+Cm0Zs0CwidvS6kyWZnZr674vQk9foOYMtiLbuO/2wc/XoUqMW1xkiRRB04IMqs0gGcnHHa
	3O9SZiS2bLMK6ZOQIS6U1qOlrMnLZrGRJt2wVzDCbyV1b5LCrNh5QI6DVeS6DmySdewD1bLYnqZZA
	NNPhza1exsYu/MA/GyWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ra6ZQ-0000000BlMx-2HBc;
	Wed, 14 Feb 2024 04:08:28 +0000
Received: from wfhigh2-smtp.messagingengine.com ([64.147.123.153])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ra6ZJ-0000000BlGU-0j1M;
	Wed, 14 Feb 2024 04:08:22 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailfhigh.west.internal (Postfix) with ESMTP id 274931800084;
	Tue, 13 Feb 2024 23:08:18 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Tue, 13 Feb 2024 23:08:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1707883697; x=
	1707970097; bh=dpyL4PQAJGDQZibg4w7Ubg9AMrLDbdkCnl9FxVnyHf0=; b=n
	4r+WwaM94dlOXT/D2fCePU0mDJEFJKT97Kc95S9ZpC9rsOrsJElLpsvLtHH7MQI2
	NDrqwkYBSJ0NT5lHDuTFBuVj9rVoatVxgy9o3fpzXZIRU64QA2LmK2i30Gqd1fkV
	vJQaD7YwKx+ImdamncZk53Xsjv4N7tcsk8cRU6v5yNgoPeEiWUlsVu8s6EUuN9/e
	ogpO3PuwYKIGtD8PuyYrnNhzTcjVUJRhd7QtYXVTgJX9xceyK7sZ7/BKGuIZfJnn
	s3mSkrTOoLS5alPIP4vIn9YJRzgkMsttKJuqREdbBNCQ4xPdHaAUieiU8+E5eQqP
	9wScZhOGUHJw+GrxcGkiw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1707883697; x=
	1707970097; bh=dpyL4PQAJGDQZibg4w7Ubg9AMrLDbdkCnl9FxVnyHf0=; b=I
	x29FDKWXdVs7BNpW0s8y2Qno9puAUdzgTYRMKcYudtYqr9LH34UXklzYBnyjzYUX
	9cXKTFGN58Ij75uAtA8f7icUGWwsEdSy9kfCTvjr9suoLo7bwPUxxYt5o84KuuZN
	QJYj6A/UJUAPZPAmAMwMU9CfFVCAgDOnhUx5TvigoM2UqZbT5SDILw5DoHy6aor8
	5vQWxyzfIwOGPiTGCJMHN9xYyz16KDvymtcQJMh7YyYfz2maoZcY1ULVKartWrkT
	vhrs3WB8K1Pnn+xLc7Del+yHgr8UIRXMG25727mcGToJb+zO6DOszW+mNk8k1fnL
	diASMEFJ8D9T0sgWpSJnA==
X-ME-Sender: <xms:sTzMZVQFUAkzubDY17qTsgCkmuM1203vJ_VY5oxHKQZOg9AdxaMrhg>
    <xme:sTzMZezYQeX5vd4DhGLrGthU0T-6jJQn94vMXJQOaHsH9yQuuwUsvkahcdqE0lxHY
    g15rUORSw>
X-ME-Received: <xmr:sTzMZa283V77HkV4VPU3NgT5MPZR8klXM2i1Vz2i_jp8x_WPNienyRkuuKuVj7SmUVJRdTThYd-zo4B4O1-nDdZsY0ROVDXdLEg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudeigdeilecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvihhmucfn
    uhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvghrnh
    epfeffuefhteegieekjeevgfdtfeethefgvdfhteefueffuefhhfefkefgkeegheeinecu
    vehluhhsthgvrhfuihiivgepudenucfrrghrrghmpehmrghilhhfrhhomhepthhimhesfh
    gvrghthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:sTzMZdAvTNaPVIf5q8f8f4yS1dwou4jbN2iCpMK5ZxAFsA-yJRlNxA>
    <xmx:sTzMZej_aGGJctJe_3QGJOyQ5Tevhvdn7hMCjShE4Tl1dEmmcmv4WQ>
    <xmx:sTzMZRoCZmr52-Rf1ZrRnXMmcU4a0THBA2VKNLZfUYAzHgETZ21ayQ>
    <xmx:sTzMZTZcLxMbZXAttWLlCVh7O971ZoRNnWXcx0lHkKXZyjfIGxKPKFiLfdQ>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 13 Feb 2024 23:08:13 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Wed, 14 Feb 2024 15:08:10 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org
Cc: Tim Lunn <tim@feathertop.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Dragan Simic <dsimic@manjaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 4/4] arm64: dts: rockchip: adjust vendor on orangepi rk3399 board
Date: Wed, 14 Feb 2024 15:07:31 +1100
Message-Id: <20240214040731.3069111-5-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240214040731.3069111-1-tim@feathertop.org>
References: <20240214040731.3069111-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_200821_319829_45764DBD 
X-CRM114-Status: GOOD (  11.11  )
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

Adjust compatible string to match the board vendor of Xunlong

Signed-off-by: Tim Lunn <tim@feathertop.org>
---

 arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
index e7551449e718..e26e2d86279c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-orangepi.dts
@@ -14,7 +14,7 @@
 
 / {
 	model = "Orange Pi RK3399 Board";
-	compatible = "rockchip,rk3399-orangepi", "rockchip,rk3399";
+	compatible = "xunlong,rk3399-orangepi", "rockchip,rk3399";
 
 	aliases {
 		ethernet0 = &gmac;
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
