Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50AD5C4829A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Feb 2024 04:08:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hjPy8YeOH2/My4l5+1zVJqG5C33wetzpx97r2Kl7AQY=; b=MAWDVe+VtGNo4g
	DSdout1Jf5UD2ykDuq1+Pw+sJJ0nA3Dag8bdUk/gGCYbeUP2m4+Utjvjs6kVTkquJcR5tZvYiFdPh
	DBr0lPShsuXzq0dOJlFIUS9LBuyBXak2O14TbMdeFxfeZrlX3PYYmWn1CLghvF1NOefGMeiaMNUBc
	90oJ4n/xjiLmuBZv01j7uszhdxQ3JeOJGDZk3J7ITno4+k+ca32q2EbxBrXEaoRFY64pGUgojb3dT
	VipBmbANOy8pfXsV6dIAXZKWv5dL8RAlX2d60EbQvuyrdX2teZKF/HC1FBNAbHmf+xoT2Ifp3hoKh
	7qV3mNj1Ih9X8hedQcww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ra6Yv-0000000Bl0G-34Vl;
	Wed, 14 Feb 2024 04:07:57 +0000
Received: from fout4-smtp.messagingengine.com ([103.168.172.147])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ra6Yr-0000000Bkx3-3ifj;
	Wed, 14 Feb 2024 04:07:55 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailfout.nyi.internal (Postfix) with ESMTP id DA17F1380098;
	Tue, 13 Feb 2024 23:07:51 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Tue, 13 Feb 2024 23:07:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1707883671; x=
	1707970071; bh=GWcf2ViSQbSAWLVPyT3EBLhQvOVzCrCtXD9HBxRw93M=; b=R
	BK2IUaCtxJeprbY7POmyAJaf98rvLnu4ZDHhe51nQGhMGk231n8siC/4VY6BiGg8
	7Udkz9Heh0AGyjehkJBAYR/Xn1twwxXyQVpAkH30hlQjNkxxd0G2bK5LWFJ1dfs4
	KiTYpK/rs4vUpP3/iBG/UCxlrOlDut8z1eFaTP36wC21JF4IfwL0xfv/xUUiMp5h
	pmhNyHgLlqP7ndds59bycGs4YXI3yIAqNaIs4cp9+r5DPskL5CL85qzrHEMhuHmm
	35hl6VdFMdLs9QxgjnQv/axkr+UGfqVAD5z2hk5b8X/dRxVlezJ76W8/iL0SFoT5
	5vePfC4uXtln2lCqzUMVQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1707883671; x=
	1707970071; bh=GWcf2ViSQbSAWLVPyT3EBLhQvOVzCrCtXD9HBxRw93M=; b=s
	j/mhshvQTEiXgCqN9mNQ5t4vSadKR9JMlGVn6MbFwy0A/DvvGeKeDM1F1d0j8J7u
	+AO1Y94eBfeCokrRXRG2QZMmzEeRrjSu21ta2oHKGavZMi/XvkhUnW2iUZcJnWAl
	8ClBFx1PkHh6cN8gIr9dzAJmAaEbiRh6rX3CcjfaqlHFh7TzwmEm7F4YfBTxBNt+
	N5WqcQoxxt2Ih9ibnl+8Eciy4lX/68mDxnxrTMHofh7YVf0HBvX5Ry1ANopQP6UK
	mUPhAxFMoHXdV4+wgqmtDwLpQUBAWRLqyNM94RGk1S5y7VvhSkp4QJ060Rx7anVH
	kc/86PgzbewDkT7aA46UQ==
X-ME-Sender: <xms:ljzMZUnwfskBm2GxLZq4IbaJ_cTey0wqGd79RL5mBZiKq1rvd0pQrQ>
    <xme:ljzMZT0BMPA0HcfLzrwXSxwidRdsaXFPbK2B0_aSkfBmm4I0tWl8y2HCB0b_ph2Je
    f0qfIAYzA>
X-ME-Received: <xmr:ljzMZSqtKWeRZouAVRGhpFcNXHr0b8Sg5J2w3sljJYoXN-fYavbMnzRjqNVY4iejr-nUKIjC0diZhJd5sbogDhehNonT_I46rrI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudeigdeilecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvfevufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefvihhmucfn
    uhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvghrnh
    epfeffuefhteegieekjeevgfdtfeethefgvdfhteefueffuefhhfefkefgkeegheeinecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhimhesfh
    gvrghthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:ljzMZQnj7bHbsWDK3g1bf1v43Q0N1s0gSR7INWMnIw5OCuY7G8ZJMA>
    <xmx:ljzMZS2F09Iwxg7c6nfYJ7_4FPgeUy5GvgInn9KPiiYEXhlFlBEKBA>
    <xmx:ljzMZXu-GBoF1H3PxdOYqtjQxT9gGc4WYQb99zBaZIcKxBcsi68o0A>
    <xmx:lzzMZcOQhcTjQURBhesDzEwxBXCGNtetNs1Yr2b6HSDLlZuBQo0FhQ>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 13 Feb 2024 23:07:45 -0500 (EST)
Received: by feathertop.org (sSMTP sendmail emulation); Wed, 14 Feb 2024 15:07:43 +1100
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
Subject: [PATCH 1/4] dt-bindings: arm: rockchip: Correct vendor for Orange Pi RK3399 board
Date: Wed, 14 Feb 2024 15:07:28 +1100
Message-Id: <20240214040731.3069111-2-tim@feathertop.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240214040731.3069111-1-tim@feathertop.org>
References: <20240214040731.3069111-1-tim@feathertop.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240213_200754_014603_06DCBF9F 
X-CRM114-Status: GOOD (  11.32  )
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

Update the vendor to Xunlong.

Signed-off-by: Tim Lunn <tim@feathertop.org>
---

 Documentation/devicetree/bindings/arm/rockchip.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 5cf5cbef2cf5..29f922f3ca4e 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -626,9 +626,9 @@ properties:
           - const: openailab,eaidk-610
           - const: rockchip,rk3399
 
-      - description: Orange Pi RK3399 board
+      - description: Xunlong Orange Pi RK3399 board
         items:
-          - const: rockchip,rk3399-orangepi
+          - const: xunlong,rk3399-orangepi
           - const: rockchip,rk3399
 
       - description: Phytec phyCORE-RK3288 Rapid Development Kit
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
