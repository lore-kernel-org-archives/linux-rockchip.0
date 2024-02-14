Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F23F8C4829A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Feb 2024 04:08:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=at8W6s9G124WwBTolYwd1IyrEQe1R/naFSQBJHnMlGM=; b=xb7wPr0NWItsLZ
	aKPGbUotvq+V76zJilbTP/jBd+0Nu166ebj0ftsgdSdKwT4DKPR5puOgT5rY398OCSLKOF6jhrkqD
	gRDRGqfa1KIYYFDna6WklnU8SIECV48qw5B5JvkZrIT00etEPaWz51f0d/s9Ondv+o2Flte8qpozP
	yYpCeBehL7kZqa+xF23tJvHlbnHMOMR4eVcE/UCfZyPCXty0sHnS+9KCTp7dpBvRu/r6Brr2OpqdN
	dDtqP4rHGqX/6L6pySMtORsP839DNErGdE+gywkF4QYMuLcPdgLvfzLbFjHg4++W1QN/RJjICK6dE
	ji1ceMhLEJcxUGLjxO6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ra6Z3-0000000Bl6T-2aHO;
	Wed, 14 Feb 2024 04:08:05 +0000
Received: from fhigh7-smtp.messagingengine.com ([103.168.172.158])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ra6Yz-0000000Bl2p-01s0;
	Wed, 14 Feb 2024 04:08:02 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailfhigh.nyi.internal (Postfix) with ESMTP id 4B07711400A9;
	Tue, 13 Feb 2024 23:08:00 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute4.internal (MEProxy); Tue, 13 Feb 2024 23:08:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1707883680; x=
	1707970080; bh=9WoQRLE1KfwHraU5Vv9QP4/yV2f55MUrS1IyZ9YV7t8=; b=Y
	8BsDNGwR4eDbnfQKt0Sf6BqKYqAbfClQduewmshOvGqqiEJzqvg87RGmGQFX0m7x
	vTGpEwMARs9aqJvb+21/JT6zxKScK8z+ZiE1A3SKy0pbKBroNI2JCSPkhkMilRES
	P1IOwN9pLOhDfDb0rJ9S4OY8K9IAOmJsNVFgRRmLwaVmoMHBxj+j3+GOWxnhh+MA
	/LX3oAZCMvHI6aS/tN3Ni8srUWi7wHRajHjVY2Y62t8QFXxaCeXEInIgF+xbp6jL
	T6xtp+6rckZJvGFvsh87HIgAhae1iHz0jgmb5lEIQU6iNO9+G7Pk24Pa6gWoIqQT
	N5AqwtOsmDWdYxHgl/gRQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1707883680; x=
	1707970080; bh=9WoQRLE1KfwHraU5Vv9QP4/yV2f55MUrS1IyZ9YV7t8=; b=n
	TIrNl4MuGm5djX+d7glB2+8g4c4xnLnleF8Nr2BlmraSmtcuF8k0kbsIYp5eoLX3
	LotcRQJP27dDkPu6GmkjKKO1wVe2u6uThSbhVdfvH7y60dLD8f+5EjwOVoCe6OB4
	oTmBkEjKAyVuyZzbzwmN0/vAs7DZzntIRbQo5lTJ2o8TzWqAp7q58w6ZVWf49eqK
	M+SZj8i0Cy9HpQImiZY+7qMN1QqFHmRxvygs8F1SmIIID8qB2Xe0BHXWdRCvpSiO
	IKBHDn8tDKxoXYXPpib3eJ9r7+oMw0aAkJAe1OV4c9a1FMXqIF7mch880U9Om/Bw
	4uSleqyKWI+0KCVRuSEEw==
X-ME-Sender: <xms:oDzMZZrqDLVVmTtxG1T7VdFI1MqJnR5xGJgrgxxeCE1ZOh0nt62zQQ>
    <xme:oDzMZbpbNMuZz6dQojwpiRXxhogPkVZC4pa-k5T7OPlG9wNurFiOQXtm3K0-4uqcJ
    Dzk19yx0g>
X-ME-Received: <xmr:oDzMZWOCjGIdQmYplVjGTK_9mK7fpOXTYUsffLzMvAZ8X9qHkkrmB7TJBhWBjs0IzyJffBIE3fNCwJq5NBj_-Jll9wL0vB46jUY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudeigdeilecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvihhmucfn
    uhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvghrnh
    epfeffuefhteegieekjeevgfdtfeethefgvdfhteefueffuefhhfefkefgkeegheeinecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhimhesfh
    gvrghthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:oDzMZU7iH4ULHjO8dgYE84VNVdEtgK-JBk29BW0KF7o__rq_K1znNA>
    <xmx:oDzMZY4zEdRHzxaFcbQz56YNu5DDa7hXrU8mHECiksDMwOiMzPR7Jw>
    <xmx:oDzMZcgjc-t9M3kbD7rEea8QJR70Nij0JNOiLFA3TM1VKjYGwSYQPQ>
    <xmx:oDzMZXTi_w9jFk5RyD6URFZYxUSrtH8dzeZUYGhAgnn-gEnpxRaFDQ>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 13 Feb 2024 23:07:55 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Wed, 14 Feb 2024 15:07:52 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org
Cc: Tim Lunn <tim@feathertop.org>,
	Andy Yan <andyshrk@163.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jagan Teki <jagan@edgeble.ai>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh+dt@kernel.org>,
	Tianling Shen <cnsztl@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/4] dt-bindings: arm: rockchip: Correct vendor for Banana Pi R2 Pro
Date: Wed, 14 Feb 2024 15:07:29 +1100
Message-Id: <20240214040731.3069111-3-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240214040731.3069111-1-tim@feathertop.org>
References: <20240214040731.3069111-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_200801_202473_BA6773CD 
X-CRM114-Status: GOOD (  11.23  )
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

The vendor for this board was incorrectly listed as Rockchip. Fix this
now while they are not used anywhere, in the future they may be used by
bootloader to select dts.

Update the vendor to Sinovoip.

Signed-off-by: Tim Lunn <tim@feathertop.org>
---

 Documentation/devicetree/bindings/arm/rockchip.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 29f922f3ca4e..89261b9601ce 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -940,9 +940,9 @@ properties:
           - const: rockchip,rk3568-evb1-v10
           - const: rockchip,rk3568
 
-      - description: Rockchip RK3568 Banana Pi R2 Pro
+      - description: Sinovoip RK3568 Banana Pi R2 Pro
         items:
-          - const: rockchip,rk3568-bpi-r2pro
+          - const: sinovoip,rk3568-bpi-r2pro
           - const: rockchip,rk3568
 
       - description: Sonoff iHost Smart Home Hub
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
