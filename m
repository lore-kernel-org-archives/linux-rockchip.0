Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80AECC5472C
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 23:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8xr4jz/jhwk9SSamG1sAApSs+EFIGPCHA42SsRdBdAY=; b=uiJtzh/BGiFg3R
	TukW4SyhzE6KcCvnsYGYcwk44zcFTnHjeIAvHccRXBVOpHjHn18kOxg1I731vyfy28IK4Oxm07JG4
	V2vxWKoDueAI64SjFwz3Af4RlHpeI2EHffwscrITsIv9Yb0GZfyhzJcoLVcgLXnEGbA3fi5CNRSCQ
	1UYI6Smo4Zbrfbyw4BtXWFNhV4j447Be0jzuWitOG5gknnG83Eoe3hAJHRnp11ll8KUnUXmlmUPZC
	adFyxqOC9OgKAH/aqMR06j9PXFHsnAWioY5c/qILgZMA96NWad1FfjzM7/irOaoXrmAS8JJLIuHif
	7FQJ8ufDfi2zEqsGAOuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siioM-0000000978T-34ML;
	Mon, 26 Aug 2024 23:07:46 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siioJ-0000000976k-3m7u;
	Mon, 26 Aug 2024 23:07:45 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724713656; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=OfCkRUbsQEvxat4XQIRYlqToGp1J39wm44+qv757qhoqwcYbgRp/78pJDX8QmoKCuGvikH+2/vLFnwcuzOtJZDirIepIUUDGLHhuEqITmQNC9wFXduPvAV6Vz42BUyCvVdNeHd/hkb5U4EWeNhqZdiFJXSO9ld4AjepNrzdTPYo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724713656; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=NHu1lK8y+binnoeFm6Jqz7QKNR4uii4rwsRkUGw9AYA=; 
	b=bnPqshmOmixHJEb8ZwFs6G26TG23cqtodWiR4t9xzfJ9/w9vc6zC5y0ErnzBmZyk4PfNBFNZ//YSpLr+PqNH3g+8zCMs9/Xw0aoXwVXGy1tcBm0hqhbjBkeuSYb4IfrHLnocg1kaVoKZAW8hDZHCbh9gspYPcUyWVCee7QKRahU=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=cristian.ciocaltea@collabora.com;
	dmarc=pass header.from=<cristian.ciocaltea@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724713656;
	s=zohomail; d=collabora.com; i=cristian.ciocaltea@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=NHu1lK8y+binnoeFm6Jqz7QKNR4uii4rwsRkUGw9AYA=;
	b=dxjrqrgxfBkiwvtotSEIuDHcmhzBwlyMSZGtEqVWTCdCtlNGQ+uqQdqbjIB58mUe
	j5oFonSe++1fdsJ2JIYfkk5lBcWdrqoqt4uYtBVksIKwlvenQXIk1mCa70DxtFhSLJP
	XzjKV+/rptReYLZS8tFjgQq9jLDNNbeybvi18oDU=
Received: by mx.zohomail.com with SMTPS id 1724713654812611.7088986874687;
	Mon, 26 Aug 2024 16:07:34 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 27 Aug 2024 02:06:51 +0300
Subject: [PATCH 2/2] arm64: dts: rockchip: Fix compatibles for RK3588
 VO{0,1}_GRF
MIME-Version: 1.0
Message-Id: <20240827-rk3588-vo-grf-compat-v1-2-d4a18acf951a@collabora.com>
References: <20240827-rk3588-vo-grf-compat-v1-0-d4a18acf951a@collabora.com>
In-Reply-To: <20240827-rk3588-vo-grf-compat-v1-0-d4a18acf951a@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor@kernel.org>
X-Mailer: b4 0.14.1
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_160744_030427_2E9D3E0C 
X-CRM114-Status: GOOD (  10.13  )
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

RK3588 VO0 and VO1 GRFs are not identical (though quite similar in terms
of layout) and, therefore, incorrectly shared the compatible string.

Since the related binding document has been updated to use dedicated
strings, update the compatibles for vo{0,1}_grf DT nodes accordingly.

Additionally, for consistency, set the full region size (16KB) for
VO1_GRF.

Reported-by: Conor Dooley <conor@kernel.org>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index b6e4df180f0b..ee99166ebd46 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -582,14 +582,14 @@ vop_grf: syscon@fd5a4000 {
 	};
 
 	vo0_grf: syscon@fd5a6000 {
-		compatible = "rockchip,rk3588-vo-grf", "syscon";
+		compatible = "rockchip,rk3588-vo0-grf", "syscon";
 		reg = <0x0 0xfd5a6000 0x0 0x2000>;
 		clocks = <&cru PCLK_VO0GRF>;
 	};
 
 	vo1_grf: syscon@fd5a8000 {
-		compatible = "rockchip,rk3588-vo-grf", "syscon";
-		reg = <0x0 0xfd5a8000 0x0 0x100>;
+		compatible = "rockchip,rk3588-vo1-grf", "syscon";
+		reg = <0x0 0xfd5a8000 0x0 0x4000>;
 		clocks = <&cru PCLK_VO1GRF>;
 	};
 

-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
