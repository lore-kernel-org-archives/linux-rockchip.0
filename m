Return-Path: <SRS0=M6n8=HK=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94476C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Feb 2021 17:58:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3315A64EB8
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Feb 2021 17:58:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3315A64EB8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U1/3SEDIvX5jriYNQ8pGrJPbst/gn6YLvpefZRWvwUg=; b=fy4Z5Gg4Wm2IaLznKEoodVsEg
	lWgSD8HnxKkh3hclhC2n/L+RixLTjQ8Hs5ZtTshCme/8mT5f8OvXE+tSBOgmW6XnJKppbEliiHhuL
	e7kEEp71/M0120KJVTTKz6YRwjY9krgWCo6FL6kKRDYP7xv2BJOM8iR1UZwW+YGos51K9zuu8ap4y
	fHKMRhooAXDOycbVEGthIRaU0+o8rOHqwFu+HhLeVUQ0mACgI84X5shkrb9Q74aziTyibzVnQ2Hnf
	EzNKYlOLFjZAcPe4BPfrwU9LHa1DtIXacQzllsIjp3JXo1mlWzcOK51CHpzPQrCz3apmeIgRkGhIl
	C4CVBJFAQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9Anw-0006i9-GY; Mon, 08 Feb 2021 17:58:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9Ang-0006cG-G4; Mon, 08 Feb 2021 17:58:19 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id CDBC264E87;
 Mon,  8 Feb 2021 17:58:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1612807095;
 bh=iFWC2DtP+Zvyu7SqrESfK1vWP5a8+/pgdlP0zwg4DB0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=b5S+rE337Yd3hiFU81wXbnnu8ZoruYoWy7O2/H77fRNdvGjanZevUg9ra/BuQLozL
 9TceuZe/Zf8L3I7yqCNPi2Y4XzCiZvW1JA16KnmEQOjB+znu9cfKfNLzR2LGxsgo3+
 NK61dz8OeN1Ot6x/6//W/ArOqKfpj1K1noOu846ijLPiu56aLfPTWn+MjLdpaL3I2r
 TNBNdx5ueMYEFX50qL59qQewQvOVgjvXPptVEJaGIerzYkysqdn2hsQ9+dvcQW79RB
 eFf+jqoemH2gvgAb1OFGsZ8jXwljoBZLmROO2DWq58Zk9GVqikkcrAWKBdpGKwOKMO
 27pBALffwPAYg==
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.10 06/36] arm64: dts: rockchip: remove
 interrupt-names property from rk3399 vdec node
Date: Mon,  8 Feb 2021 12:57:36 -0500
Message-Id: <20210208175806.2091668-6-sashal@kernel.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210208175806.2091668-1-sashal@kernel.org>
References: <20210208175806.2091668-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210208_125816_714473_680D5B43 
X-CRM114-Status: GOOD (  10.60  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Johan Jonker <jbx6244@gmail.com>

[ Upstream commit 94a5400f8b966c91c49991bae41c2ef911b935ac ]

A test with the command below gives this error:
/arch/arm64/boot/dts/rockchip/rk3399-evb.dt.yaml: video-codec@ff660000:
'interrupt-names' does not match any of the regexes: 'pinctrl-[0-9]+'

The rkvdec driver gets it irq with help of the platform_get_irq()
function, so remove the interrupt-names property from the rk3399
vdec node.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/
media/rockchip,vdec.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Link: https://lore.kernel.org/r/20210117181653.24886-1-jbx6244@gmail.com
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 5df535ad4bbc3..7e69603fb41c0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1278,7 +1278,6 @@ vdec: video-codec@ff660000 {
 		compatible = "rockchip,rk3399-vdec";
 		reg = <0x0 0xff660000 0x0 0x400>;
 		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH 0>;
-		interrupt-names = "vdpu";
 		clocks = <&cru ACLK_VDU>, <&cru HCLK_VDU>,
 			 <&cru SCLK_VDU_CA>, <&cru SCLK_VDU_CORE>;
 		clock-names = "axi", "ahb", "cabac", "core";
-- 
2.27.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
