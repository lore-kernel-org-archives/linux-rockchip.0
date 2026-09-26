Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B8F2C9833F
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2026 13:17:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Whb+gkYAOZ8XFBAUnekiaoYdvoQ5uQoGlyYteq4DBFk=; b=LkSWqMcZyGhn7b
	LdUESK9kMdsTb6XZnazHeK3jjpDyb4/iGhc7FTjHJ2g0zKFrODGnV7FWCzI82sOn5VCs105Hx2jb1
	rYBu48nu+nwbR4b80rGXuElF3QI6R1M/sfIv4xVTK6Osdjkwr0E8X90do31vGb/SttneWPkZF6+W9
	jA659bM8pH2wpnChFErwl54MTeohV91DGX5wvyfqwd+tOlPVw+d2MtQ/C+uo2EBJks47rjrr8hyq8
	jdF4TbukjYEyEQhSIPPXqYz/vGksR5EbgjnnoKCMqJpH1X59qPsDI3eluxcyfKS3t9WBLK17jFVyw
	uq+T73yD2gkXwvlhSu4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xASHT-0000000FR7x-39Ru;
	Sat, 26 Sep 2026 13:17:31 +0000
Received: from mr-2001l-snip6-8.eps.apple.com ([2a01:b747:3000:200::77] helo=outbound.mr.icloud.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xASGf-0000000FQTO-2MMb
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Sep 2026 13:16:43 +0000
Received: from outbound.mr.icloud.com (unknown [127.0.0.2])
	by p00-icloudmta-asmtp-us-west-2a-60-percent-2 (Postfix) with ESMTPS id B56A3180056A;
	Sat, 26 Sep 2026 13:16:37 +0000 (UTC)
X-ICL-RepId: 01a0dddc-4da7-7781-9f64-2fdebd52dd8f
X-ICL-Out-Info: HUtFAUMEWwJACUgBTUQeDx5WFlZNRAJCTQFMHV8EUxxCDFYAXRcOVk1KF1UYREVRMFAbXwJCDxwTVhUTC1NWWxNVF0YJGQhdHRkKUFAGXRIYXBRcUFgeRhJWDV0JGQZAXlAbXwJCDxwTVhUTHUMZDysISgRDB0UCXgslEwlTVlsTVRdGCRkIXR0ZFVoJClcAQAtOA1QFXR8RTxweGwVGA0IUHVAIVQ4EEQpOB1VSK1sTVRdGCRkIXR0HWEcURw4PGVoUXBhT
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com; s=1a1hai; t=1790428601; x=1793020601; bh=T4HitPV9byriVQpWV7I/a//gQDngv084Woi9K9fV+DE=; h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:x-icloud-hme; b=xczlLn3wpZtMQ9UWAkGtlQIIeFQrBCw3DEHPb2vbKS6OeyMw3nUxgSuHpvHEXPwqSt4pyuHQZ3VjuHgMl1tdCYN/SUJoQxbF0moJJ+QNOabkiKpwjpId8OwS5I/z2bk7DeeOR612SSaAR00V+dxKdHwb5yOvu/rBoO5PKAn+Xdtw7lc/M4tmM690v/C1uiz5FZGLT1Jm78po1mQ5a1MSpsvy/0W824qSp2Zc2HEXWBaT6LhQuRefLU+1NIGyJCpRGkcjW19KM0KP1LtRBcjUFeVCZExj4OrsntSBWc+OMFWfPOkUhJbCnlW2YLANusZ2WCS0c6X0tMtqPhXUbTPPxQ==
Received: from [127.0.0.1] (unknown [17.156.200.36])
	by p00-icloudmta-asmtp-us-west-2a-60-percent-2 (Postfix) with ESMTPSA id 69CD718019E3;
	Sat, 26 Sep 2026 13:16:34 +0000 (UTC)
From: Sofus Forstreuter <sofus.c@icloud.com>
Date: Sat, 26 Sep 2026 15:14:51 +0200
Subject: [PATCH v2 12/17] arm64: dts: apple: t8112: add avd nodes
MIME-Version: 1.0
Message-Id: <20260926-avd-v2-12-ecebe6a3648e@icloud.com>
References: <20260926-avd-v2-0-ecebe6a3648e@icloud.com>
In-Reply-To: <20260926-avd-v2-0-ecebe6a3648e@icloud.com>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sofus Forstreuter <sofus.c@icloud.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
X-Mailer: b4 0.15.2
X-Proofpoint-GUID: ynZyZHbWWrSsmysmbq-fu3Y5yIDHAr3u
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI2MDA1MiBTYWx0ZWRfX98dmMm236Buz
 qA3cRSxzCXD5QdTPqrBN2MlPPNnYfM3mlW0o5lLHYcWuCYaUgiihzqHZ9z8fiUHDxMQtTNjAOOU
 LXAMRk5Z2bNV7ZWeCvDNKRuBFEIK8Zd9dYMo2cGy66qLhMninJ3sFNbtQR/yWb5J/sIqz9hX5Ii
 ivt6Z6WB5Q96FuT9ItMrjN2lO4eU3yyANrqeihObIytIcDExuQRbzqtWlNoBso2+ies/eBmkDdP
 Naxdh/9CpK+i/vIOGJECSFfALR1ue+JtJQwjOguGw5NjG0/55pEKD4ec3rVJv6WZXtLekWe5ZIH
 tusfSN0Ij5Zh8dOlnb4u+HE6KzghV54FN173h3oB78QGeap9AB0uWOJV8ouZVk=
X-Proofpoint-ORIG-GUID: ynZyZHbWWrSsmysmbq-fu3Y5yIDHAr3u
X-Authority-Info-Out: v=2.4 cv=JKE2csKb c=1 sm=1 tr=0 ts=6ab7c5b6
 cx=c_apl:c_pps:t_out a=9mRn2PO/+PIrVdEbaIuMPg==:117
 a=9mRn2PO/+PIrVdEbaIuMPg==:17 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10
 a=x7bEGLp0ZPQA:10 a=kLM9Tyy99jAA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=v3ZZPjhaAAAA:8 a=9kiG86roBcscNhQ-f0AA:9 a=QEXdDO2ut3YA:10
X-JNJ: AAAAAAAB/TZ2BuAN9zk3FepHir42TSRNJK+ozdw5mmu8GVmJQyLCfHGkqqrl+a+C6NUn6hV8YCzP9F3AS01FTC7Lyvd2K+rQ3z06WxDAnLGfZPkaA5M4ldXeR5h2BKcZDVldxIJfuyMH8W4Xs4znK8DqAHzw7GvSbrCrFcjo0n3sZV4N3nxIbmmuwnJqcXUPBhUi3Cr9RyZOchgwCyPAY6ctJJLPFr0UGhwtpBgon0H9dlMMYsfcTmrG5FeXAwCkQZmxVpZ7kWPGfp3LhOdxYHSc3GY46mquV7a6L3YJFiV72brmtrzf/mh6gn7MvIQkKE4Uqj3J6BNU2D13ASKewpOBeJ+MNI2OptH4A1woNi1+xf0IpijPsp0XMawszIg2olasACmqsvGOE1rGb3Pm8Qb4lzp3r/8yvaMplVu/LS6BpHWsD5Hl8pab2JJshHZTAwF703a2th2zYB8qIHifZrBkzGPQqLrpdbqCYD+tu7sevIQUxbbofYUpna3XF0c3cjHzicNQUzsvn870KaASC6EcSpJBkln4rkvUUT9fAScvKV0NI5SjmVHrLo5cMES2TyHMevCq/+Uux9DyBoSBrqWkzkygD+jt+dtHsPUZD5wImhrQ79Y42YidpKv/MV81jpvFsO4OznGizUfyy7OvX96W+6j/WMqV48xfZxWtHwjfEwM/KdkZQ5fZT+2YdDM2iHhsQxjw5ILKuT6j5tHreUVkDxeEaplfSx+kQmq0nFPttJvhJPcDMoX2sjzlWU/QHvbrMMFG3LA2hYRKt5f2rVH6CCMZNSvGjk9jNigoYahBl87Ze3FEqN2PYp3y3HC0eJ6TNRWm6y9S/h0zyoJJ6EWsuqClGAQsvgAfXKSfWdvB/TfO6ngzz0tIJbG81OHvCDMuXko=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260926_061641_699226_245643EF 
X-CRM114-Status: UNSURE (   6.83  )
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

Signed-off-by: Sofus Forstreuter <sofus.c@icloud.com>
---
 arch/arm64/boot/dts/apple/t8112.dtsi | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t8112.dtsi b/arch/arm64/boot/dts/apple/t8112.dtsi
index ec248ca052cb..48ab71565eab 100644
--- a/arch/arm64/boot/dts/apple/t8112.dtsi
+++ b/arch/arm64/boot/dts/apple/t8112.dtsi
@@ -987,6 +987,38 @@ pinctrl_aop: pinctrl@24a820000 {
 				     <AIC_IRQ 307 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		avd_dart: iommu@269010000 {
+			compatible = "apple,t8110-dart";
+			reg = <0x2 0x69010000 0x0 0x4000>;
+			interrupt-parent = <&aic>;
+			interrupts = <AIC_IRQ 674 IRQ_TYPE_LEVEL_HIGH>;
+			#iommu-cells = <1>;
+			power-domains = <&ps_avd_sys>;
+		};
+
+		video-codec@269070000 {
+			compatible = "apple,t8112-avd";
+			reg = <0x2 0x69070000 0x0 0x4000>,
+			      <0x2 0x69080000 0x0 0x10000>,
+			      <0x2 0x69090000 0x0 0x10000>,
+			      <0x2 0x690a0000 0x0 0x4000>,
+			      <0x2 0x69100000 0x0 0x10000>;
+			reg-names = "piodma", "code", "sram", "mbox", "ctrl";
+			interrupt-parent = <&aic>;
+			interrupts = <AIC_IRQ 667 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 668 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 669 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 670 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 671 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 672 IRQ_TYPE_LEVEL_HIGH>,
+				     <AIC_IRQ 673 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-names = "mbox0", "mbox1", "mbox2", "mbox3",
+					  "flag0", "flag1", "piodma";
+			iommus = <&avd_dart 0>, <&avd_dart 1>;
+			power-domains = <&ps_avd_sys>;
+			resets = <&ps_avd_sys>;
+		};
+
 		ans_mbox: mbox@277408000 {
 			compatible = "apple,t8112-asc-mailbox", "apple,asc-mailbox-v4";
 			reg = <0x2 0x77408000 0x0 0x4000>;

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
