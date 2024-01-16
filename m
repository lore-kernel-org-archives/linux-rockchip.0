Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B52F5C47077
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jan 2024 08:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AwxGH0IdZE4DtcCPqC8Y2XR26n1pqnMczXNdnM6M4ow=; b=gEdC+h8dKSP0xt
	5uyTMvHb+NLnJuz/6FYMdMptfmnE0Ot+lJ9mH6I7rXV0hCSELOe+D8Uk76/0QtnleABRIhlCFEVks
	TkckqkmP1BejNvaO60+tQegLSbc1mdiqHb7EE0M4eDOXf804aTp6+dKCubTY7MzmtyJQItWbGzpWI
	4JTI5xU21nFLKQMv02hDet98SmRpHfGsk464PjK1Iakl4nC/L5JoZ9jv8FZpHkZsn+UbEKZUr7Fis
	hLqXgdL9WWRdt169zVBClLDaQZ5OedQaclkIkRLrlOCWIlV25gCEGXT7Nfjvm82qIfZR2NyfBooQC
	RqqRvYdQKymPazUQK4Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPf64-00BSao-14;
	Tue, 16 Jan 2024 08:47:00 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPf60-00BSXe-0F;
	Tue, 16 Jan 2024 08:46:57 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 80EBA3200035;
	Tue, 16 Jan 2024 03:46:54 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute5.internal (MEProxy); Tue, 16 Jan 2024 03:46:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1705394814; x=
	1705481214; bh=w1YMVooaDUNQBk1O+CtoMJUHFZppLvEDdMn6ledxCLI=; b=g
	OappuYc+T/Ab5VSbVosyZk0ljpLGV1ZTWXhRU2wsCGJlHCj3o+9buMrPwVUoT5Sx
	op83I2pFHsiIh7OPdJWwzzLHTnCfM20AqMwQRGgAh1JwltxE7CMAJjXKpkQ6iltU
	k2hMoP4TCApk4vSVpBn+s5S/A1G0OCWnRcUsPQn1MEW3IlVvcHJS43cbjX1u9PRa
	ND9M0P6AV5Vp+0xvU2uiNnYfzcpIzZ2PgLtUmkxGCWNzmaH+v1XjNxADh2LkXdx4
	TSuHSmrdkzqlTYrpDVJ+UE5xHFtbqfoNwsbI8fnNIAVd5+k9E0qVjM3+pMXifUPu
	0sw11IrmExeVADyJC+5kw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1705394814; x=
	1705481214; bh=w1YMVooaDUNQBk1O+CtoMJUHFZppLvEDdMn6ledxCLI=; b=f
	kO3RDEhM+8fs2kJ3J8jvNyylu6NQJbpO7DrR3TUH1vP3CzNgv7rfpqQSz8gZLehj
	1NdJRGQwDvdMRnneDcnneCWmy4u/yyOBhBOFuSX9H1V2rZkWBMWhJiZc6UmiNuMP
	/PN30NX9yFeoylHZBTsVZjP7iEJsa/GWpRcMETh5QTieCmKUeABRe7J0Ir8h/3Pg
	EVODsCOmlUQvTkCODXsOJknRUu7pS0ejVujQz/1lzxoq9PdsXguK2tvp88+JVtJv
	7s8pSSYYLfh0rJyUGtH7bXRj9yNBCnpCBv2Ypu2XVPWn4+jlEHDu5/PPTSDdEq/G
	xWg5bttp7h3s3o14xH5lg==
X-ME-Sender: <xms:fUKmZbGKaS8hxLCn4wyWdsrKl0ElnZDWD8gFFAWBPiYfNZiEf5t5GQ>
    <xme:fUKmZYUvraPLWSPcsMQ9UIpBE2q6o7Yj0BXGu27V4vTfm8dqey42HHt2DmDZqPBIU
    qw2PpluYw>
X-ME-Received: <xmr:fUKmZdIRa2UFgNwS8jjMduPTjtuR1LLTJrmtgOaJwEEu1MCLQPe-9lXowIJ-q6tQ994p3vJ55W84aQKxX_SIz2QXCw3cyHGb0HU>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdejvddguddvhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvihhm
    ucfnuhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvg
    hrnhepfeffuefhteegieekjeevgfdtfeethefgvdfhteefueffuefhhfefkefgkeegheei
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhimh
    esfhgvrghthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:fUKmZZGuFC-nknTn2gVAH0AdqG-D33UwTEZ6bBC87xXm7YMYu5Zr1A>
    <xmx:fUKmZRVelIjjMcvtZ5Dfxm3VmpSFuoQh3Q7Y-YRmTnfzRZXd0IO0ow>
    <xmx:fUKmZUOJ9eXtZgFJCjWVdDUrEagk0ttoRnzo-vWKUrNGB0JZsIuv_Q>
    <xmx:fkKmZaOfUugaIrdeEYlZY0j2CMvt5EgKv35OlKPIXdKOam2a9W-8AA>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 16 Jan 2024 03:46:48 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Tue, 16 Jan 2024 19:46:45 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org
Cc: Tim Lunn <tim@feathertop.org>,
	linux-arm-kernel@lists.infradead.org,
	Chris Zhong <zyw@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Zhang Qing <zhangqing@rock-chips.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: rockchip: rk809 fix compatible string in examples
Date: Tue, 16 Jan 2024 19:46:17 +1100
Message-Id: <20240116084618.3112410-3-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240116084618.3112410-1-tim@feathertop.org>
References: <20240116084618.3112410-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_004656_145050_F8B0D2B5 
X-CRM114-Status: GOOD (  11.53  )
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

Fix typo in the example specifying wrong compatible string

Signed-off-by: Tim Lunn <tim@feathertop.org>
---

 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
index bac2e751e2f2..3f31478932c2 100644
--- a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
+++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
@@ -154,8 +154,8 @@ examples:
         #address-cells = <1>;
         #size-cells = <0>;
 
-        rk808: pmic@1b {
-            compatible = "rockchip,rk808";
+        rk809: pmic@1b {
+            compatible = "rockchip,rk809";
             reg = <0x1b>;
             #clock-cells = <1>;
             clock-output-names = "xin32k", "rk808-clkout2";
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
