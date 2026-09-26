Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DEA8AC9833F
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2026 13:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y6olvXlkGWmj8J4sJHuhMX2dCOyYX8PUe5Ue50865YQ=; b=IixsXPdgNIOifc
	whnBTJhZnzesOZnKOXNbvlwU1Ps54kG5EqLOLmHntWrdJyQuFhlI09zoXmnmK2ik5HNPAVX/+PUSl
	Brk7gaWhqEILZi+qo+idImbUjFGQm2qlAFKjLca9fdzdMW7zDk4jx+ilTAxmAxpQj27TULEfn9qsg
	ziVQqnRDIizntbLrzbO6bG+pWOq3vX+iPpFm3uhjulMtB++4SBZaQMUltT+yKmN89X9r3EF6o6ZZ8
	7Fygn2cwHQBfy9MMK5AWOPXyxYiNyLnOeGwWnSuhEgK/wMaA7IYDwIvIjcE2kdA0/RC93GLcy75rj
	l0PgMR8ijIh9iNvOJl6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xASHX-0000000FREO-0JkE;
	Sat, 26 Sep 2026 13:17:35 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xASGu-0000000FQjo-2M3K
	for linux-rockchip@bombadil.infradead.org;
	Sat, 26 Sep 2026 13:16:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=+vEoYf1N3bcqZf78DBGuh45kCXIGJwR1bQx/PnvG5Q4=; b=mHjSRMlfvlmE/Y9Rp9uFhWbneX
	orfE00vChNYWBeMTWzBKBc2+OAtAQxikZGOL1F4iHFUfVKZ0pf6J4DPpOEr3W5QSCuxUKoHZHrUgb
	YvImmOtjKGysbQM57t3mHMF8Bdr0Hia0piojqMJaxVxovXCsTaydYtA/LW7gxfHJflp61Kd8h1qJQ
	XYr6aAf4TG6FwMoXmXcGV8r/g7XCIysRRLOkq47Ax81kPGi02H3klawwEdq4cBQD8+9evK2uMYj41
	jOEDe1LjYJI3OgX7VQAA11GAv6XLDXxb6+bqsYAOkdhjvwLudb+fEW0PIu4LiDB3S2Ji6EGpPPJDS
	GO95CpSg==;
Received: from mr-2001f-snip6-1.eps.apple.com ([2a01:b747:3000:200::36] helo=outbound.mr.icloud.com)
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xASGo-00000000C5e-3zmN
	for linux-rockchip@lists.infradead.org;
	Sat, 26 Sep 2026 13:16:54 +0000
Received: from outbound.mr.icloud.com (unknown [127.0.0.2])
	by p00-icloudmta-asmtp-us-west-2a-60-percent-2 (Postfix) with ESMTPS id 6DD1518019C5;
	Sat, 26 Sep 2026 13:16:46 +0000 (UTC)
X-ICL-RepId: 01a0dddc-6fbd-73d0-a54a-dc364a579c53
X-ICL-Out-Info: HUtFAUMEWwJACUgBTUQeDx5WFlZNRAJCTQFMHV8EUxxCDFYAXRcOVk1KF1UYREVRMFAbXwJCDxwTVhUTC1NWWxNVF0YJGQhdHRkKUFAGXRIYXBRcUFgeRhJWDV0JGQZAXlAbXwJCDxwTVhUTHUMZDysISgRDB0UCXgslEwlTVlsTVRdGCRkIXR0ZFVoJClcAQAtOA1QFXR8RTxweGwVGA0UUHVAIVQ4EEQpOB1VSK1sTVRdGCRkIXR0HWEcURw4PGVoUXBhT
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com; s=1a1hai; t=1790428609; x=1793020609; bh=+vEoYf1N3bcqZf78DBGuh45kCXIGJwR1bQx/PnvG5Q4=; h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:x-icloud-hme; b=GiyxVBculTGpbTlVYFWfWG1BLq9mETeCPESYWD/4QvUDVvZgI9tbpSm94iO2LNkHdtaUqSNB6Mxd+5xEETBR8aWxATR/asAMltclGfPUjn4OKVs5BvwCLZh1G0/eQQw+1ArvZzm6rH5du9U7PljZ6xASuPeC2YECp4Id4VPftpbhEE8SVFryKNYAyxzwiQbrHwamK71t5bDepuLvzA/H/A6A8wLJvB8kdbucYGhTtke/n+sd97YxNzIfCmA/qgRbtcaUeBUlHfM1PGGXhddIDYAnF4oaMvm+LPOlGRZHrT/AsoIKLx1SQaxwN0v584GAXqVQSn8ns8KVWZldY6RfWg==
Received: from [127.0.0.1] (unknown [17.156.200.36])
	by p00-icloudmta-asmtp-us-west-2a-60-percent-2 (Postfix) with ESMTPSA id 62CA11805197;
	Sat, 26 Sep 2026 13:16:43 +0000 (UTC)
From: Sofus Forstreuter <sofus.c@icloud.com>
Date: Sat, 26 Sep 2026 15:14:54 +0200
Subject: [PATCH v2 15/17] arm64: dts: apple: t602x: add avd nodes
MIME-Version: 1.0
Message-Id: <20260926-avd-v2-15-ecebe6a3648e@icloud.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTI2MDA1MiBTYWx0ZWRfXy2xFlnMz5FUR
 Wpmo8g93C1yx56dO82sgEkHltOipoLHz2bgdGg/c1GxRrFQmLWE9p7kVt3HQwwFHG/2OTES1YBM
 sws8C4rXwLBxQ6oRy0Phj/0NK3HzUz96QxqYVYG23DgOSC3wDeSHRG9db4OfUMGdty2fCCnRu01
 23gbXBb3tObWmor1OvLzKagGbOljuaGn7kdWhjkVGnk5iamfV6YcgaIAUEis6LH6JehEcR+lXmO
 qO8NAzYouyvNha9BYi8TemDHYloRQWMrRW+ICFNJZXqTT0IsaU0oiFOKlEdC0hVJv46ueIpBLMV
 dvFUmVprzwNfZ0X/e2YX4wrUAN2hlWZD/Q7XA9NBXKYTaPWxIX2wY3V0KtFH/Q=
X-Authority-Info-Out: v=2.4 cv=TJtIilla c=1 sm=1 tr=0 ts=6ab7c5bf
 cx=c_apl:c_pps:t_out a=9mRn2PO/+PIrVdEbaIuMPg==:117
 a=9mRn2PO/+PIrVdEbaIuMPg==:17 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10
 a=x7bEGLp0ZPQA:10 a=kLM9Tyy99jAA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=v3ZZPjhaAAAA:8 a=oI5ehSekA3XTy-s6cLkA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-GUID: sz2ft3LYfStxSXdLPN_GHhGG7Iudt027
X-Proofpoint-ORIG-GUID: sz2ft3LYfStxSXdLPN_GHhGG7Iudt027
X-JNJ: AAAAAAABWy5r1PW8FeQgxhOtI0vwM1lSDwtHYVK+CRbCV3XVz2wMoU3nCUc4pPN5MZXO2tnxid38jJhTv+D4x3TDirnd/tpN6k7Iy1OOCr8b0SM2WVhH8NIncs7zpkFkYgZMEW9HE225E3DhHniZW8d2ayfezu87ag7IErjGOgGnDeyjzKoRTsC78efYp8Flxy/pRYt3SH2OynlohB/Fsje2mzsrc4Lr0c0YUpR/i4teiSywmB+WrgAN6n/wAzC5k50Ii8I7lk0rkbEwC1zwPrbWWJqkSwLX0YoaRp/9GowjQPBNfh9IpXc7Pp4UaOW2770FU5ho7oRJ8CIeWUmWPRtKFOcUarKecphXdktB0tfF133AhLHFYwt357WNARrp147UdGDyzBfrtZ3ZLoCNDM+Af+/CSEmppkgF4z60/AETtj1LsgQRS91LpmGbM528nyQpLmvHoWQjgKWiZ1R4/zEfAzRBa7WfRqYcxjSx7neARdwzy2SU7xaeQqn3h/dy+VU/Pfc1ubFjzUbdQX5hgCcIABnT8ooHSBVtMGKKtG/bLAMMYpaondt0s1LzjCY+xMo95yL0d1LYl1sZ6KeCCaKyvS8pcxzk1u5dObizULBCt9zqltLqVDB3yo4MUyyuUSdGywpZwXNlMWNdJYjWaUWvuK5zyyaUeWo+Fjjw9Uzbof4O8qVtktQX6ZGOymFI4CY86uV3jo+uw9DK7KcYsS666AFDfI2HY9NrvFrBdPvDr6UCYydeNwkihxfsV5NDsCCVGd7JAEbgPhZl9iC6OKkRDKnQBjQAeqlfVowLjCXvDk4KPRzyBHwObtX8WVJqjgltTyznWhodXK5CSDaB1kmHJAIq7GdEABDqwvYuV6sbXHzqtxHboabtXuULsKR55fpAKs411g==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260926_141652_598598_4CB08638 
X-CRM114-Status: UNSURE (   6.85  )
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
 arch/arm64/boot/dts/apple/t602x-dieX.dtsi | 32 +++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t602x-dieX.dtsi b/arch/arm64/boot/dts/apple/t602x-dieX.dtsi
index ae3d535c5acb..5f744308a6c5 100644
--- a/arch/arm64/boot/dts/apple/t602x-dieX.dtsi
+++ b/arch/arm64/boot/dts/apple/t602x-dieX.dtsi
@@ -23,6 +23,38 @@ DIE_NODE(cpufreq_p1): cpufreq@212e20000 {
 		#performance-domain-cells = <0>;
 	};
 
+	DIE_NODE(avd_dart): iommu@287010000 {
+		compatible = "apple,t6020-dart", "apple,t8110-dart";
+		reg = <0x2 0x87010000 0x0 0x4000>;
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_IRQ DIE_NO 1095 IRQ_TYPE_LEVEL_HIGH>;
+		#iommu-cells = <1>;
+		power-domains = <&DIE_NODE(ps_avd_sys)>;
+	};
+
+	video-codec@287070000 {
+		compatible = "apple,t6020-avd";
+		reg = <0x2 0x87070000 0x0 0x4000>,
+		      <0x2 0x87080000 0x0 0x10000>,
+		      <0x2 0x87090000 0x0 0x10000>,
+		      <0x2 0x870a0000 0x0 0x4000>,
+		      <0x2 0x87100000 0x0 0x10000>;
+		reg-names = "piodma", "code", "sram", "mbox", "ctrl";
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_IRQ DIE_NO 1088 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ DIE_NO 1089 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ DIE_NO 1090 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ DIE_NO 1091 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ DIE_NO 1092 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ DIE_NO 1093 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ DIE_NO 1094 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "mbox0", "mbox1", "mbox2", "mbox3",
+				  "flag0", "flag1", "piodma";
+		iommus = <&DIE_NODE(avd_dart) 0>, <&DIE_NODE(avd_dart) 1>;
+		power-domains = <&DIE_NODE(ps_avd_sys)>;
+		resets = <&DIE_NODE(ps_avd_sys)>;
+	};
+
 	DIE_NODE(pmgr): power-management@28e080000 {
 		compatible = "apple,t6020-pmgr", "apple,t8103-pmgr", "syscon", "simple-mfd";
 		#address-cells = <1>;

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
