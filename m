Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D47BC4829A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Feb 2024 04:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qadwJ/FiZq3zsBIcvJRxZLuvh99eGHETsQgZwnC/G64=; b=fvgl3pJmT7RqU1
	Sri28jYXTCC5vG0gQYIznG26weNKVQK9WiLE/95qQMonLt0M3rR/TDaNfdCmiGLz1uPCLfBpvWFpp
	NbQ+VFJAe+tdx9fxPRFF/l1QJYkDfFTOFxaGIrXv6lvJii0TeqPtpYfBSl1AmSOIfcB+IY/7qiCdJ
	QsEm/R5gGyLWmUjzSuf3fgacosF2gYVHi3XVDTEx/1B5P1HR7wugbtJ6fZe/2TlXHAIaVb9X0CBpE
	aYpVBPLHl6O6uO/IvbvTdqBvr/87upxm0Xi1cLM/atQ8RnuhkjtEM8WuefhgNZDQ9BAy1h/cSzkAD
	/io6UXqA4coDKX9uCkKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ra6ZH-0000000BlGF-04nw;
	Wed, 14 Feb 2024 04:08:19 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ra6ZB-0000000Bl9w-3c9T;
	Wed, 14 Feb 2024 04:08:16 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailout.west.internal (Postfix) with ESMTP id D2A9C3200A57;
	Tue, 13 Feb 2024 23:08:08 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Tue, 13 Feb 2024 23:08:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1707883688; x=
	1707970088; bh=ZgKlogej5kEsDAelsgKtI++EiRhH8bz+YU8ZTjCX1gw=; b=Y
	H9VuHQL3Ki8PzSB+5R++ADwflmChe/ctiawDTdoeQlmVTGASzFDwjJlR7NRX4f5s
	FNuejuC8E6nfKNctQ65vN2a98+6X6/2tkqRFLXu0wtyo0JE6VgdVAX1cbiurBLh9
	2jXaXkhmtmJj+J4J3+G1efoPl5+1OYtpnCFvz7JQ33+0Avto0Aj0ieY5C6FqPpAZ
	0vpkGLPz77+4kIAfszwuCRPIW7edME502cmJH/W5JqTEkhNTgE6pc8svnL2Lqt9q
	kiIQ9aT30XRvEL8Jrys5F/SNRA15qMzN1uby97+iPMUdQBwHc076y+GHS/VChtD5
	ThCly1DV6nM1XCgqTFM4g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1707883688; x=
	1707970088; bh=ZgKlogej5kEsDAelsgKtI++EiRhH8bz+YU8ZTjCX1gw=; b=G
	o6Vd+SGbalIk+4g9eigho5oVkz11WIsKwcQcAZ9PGgqwKae0uE6c3fpjAGsSg3KL
	B94P3EhWr1Gt3YqvwM+dO5teDWciocem3Eppk/GcgFaNKNdV+jW7+Ugy9tnIaN8j
	QTZ5jO0lTTYB4t0O4ZGdJJipAGbDmNBSVSEmQ7glyr3KA7IvI0E/hTKhxfW4JIt0
	fEFgJON6aiolTOIjR80AArmrvQj8uEwYoTsx/76CKDgjl8kS+hE9djbB1lCeDaOo
	T4MpTKmyqzftgg/6fhdjMZaQBBMH+7e8TWM0DXa6ykysUpY7zfsn8u420+qNbvQq
	kJgn5MBk/i1rT5hckWG0A==
X-ME-Sender: <xms:pzzMZcMBFn7Y4bXAoFBduMW3wNEhHuUe6ptKM0yiF8GXzU-MK1MgLQ>
    <xme:pzzMZS8OrnbaoVGfLw4kOUfR9i9OFF1QvW_8oSfzEaIt3itQ7BwpXDWlGr1OfRs54
    mSNP3Rdcw>
X-ME-Received: <xmr:pzzMZTScjrXXGWKVn58owgnaWQjNzKfgrRLHMo18_P07Vvymtsa9m1NrM18kVP3xkj6fpEKkR3-f7UKTju7EJP_WCoE4F79KVfg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudeigdeilecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvihhmucfn
    uhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvghrnh
    epfeffuefhteegieekjeevgfdtfeethefgvdfhteefueffuefhhfefkefgkeegheeinecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhimhesfh
    gvrghthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:pzzMZUum4spCywaKF4u0quVisiK_ZEGs6GR-T9H5uAkI9yhPvTdTKg>
    <xmx:pzzMZUf0T5fefeXpg8EitQQLZUXLHvwjZg_JeFZXADu1usNew0f3EA>
    <xmx:pzzMZY1o3YbI04k2cmtxK61DXP_VscOVa3wwO1GXqMv1xIFkkGIDpQ>
    <xmx:qDzMZY24gneFQO2LNAYJg30fMdlfLcRxeXDrLdxaYM_IuL4EkvAzkA>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 13 Feb 2024 23:08:03 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Wed, 14 Feb 2024 15:08:00 +1100
From: Tim Lunn <tim@feathertop.org>
To: linux-rockchip@lists.infradead.org
Cc: Tim Lunn <tim@feathertop.org>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	David Heidelberg <david@ixit.cz>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] arm64: dts: rockchip: adjust vendor on Banana Pi R2 Pro board
Date: Wed, 14 Feb 2024 15:07:30 +1100
Message-Id: <20240214040731.3069111-4-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240214040731.3069111-1-tim@feathertop.org>
References: <20240214040731.3069111-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_200814_025153_D686F833 
X-CRM114-Status: GOOD (  11.03  )
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

Adjust compatible string to match the board vendor of Sinovoip

Signed-off-by: Tim Lunn <tim@feathertop.org>
---

 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index f9127ddfbb7d..7b5f3904ef61 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -13,7 +13,7 @@
 
 / {
 	model = "Bananapi-R2 Pro (RK3568) DDR4 Board";
-	compatible = "rockchip,rk3568-bpi-r2pro", "rockchip,rk3568";
+	compatible = "sinovoip,rk3568-bpi-r2pro", "rockchip,rk3568";
 
 	aliases {
 		ethernet0 = &gmac0;
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
