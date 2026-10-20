Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95D3D606A32D
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2026 09:40:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Rq/px63i;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=icloud.com header.i=@icloud.com header.a=rsa-sha256 header.s=1a1hai header.b=mN/l/5bi
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DP7kWAhir70yjWxzCWpHTXxQEs+MrZJZJLxWD44R2DI=; b=Rq/px63iEJjXlP
	zo1HPOw/boC9fbGk32LNr78y3bAFU1mmRhsvGwF+d3FCJPn1VxYQ6bBPiMm/JaDNwsvOjjBXyIbtJ
	vl/dTwHdRkpunphts95oemkufGTjQXUIQnN6mlnazGyh0whQJTtgqJhYSOrZ23QRR1+UXgXXx7JVc
	2NIfGp1f5whsITwObKy5b8LLbous8ot46+nhriDphWsZVEsdKXAMoSXOVge+W6T35M31x8C9I8o+q
	124q+NIEZ3ydeOynv9ygmlP8rGZUBvfavQofKi71D+30Eywi61Nxdjt+DOFF4tVQCswi466PEF1Rh
	832zCffmUYIEW1TTzR8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ6Jw-00000009Jl0-3GhM;
	Tue, 20 Oct 2026 09:39:48 +0000
Received: from st-2005h-snip6-4.eps.apple.com ([2a01:b747:3001:202::4b] helo=outbound.st.icloud.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ6Jk-00000009JPq-2QHE
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Oct 2026 09:39:38 +0000
Received: from outbound.st.icloud.com (unknown [127.0.0.2])
	by p00-icloudmta-asmtp-us-east-1a-60-percent-11 (Postfix) with ESMTPS id 881DE1800698;
	Tue, 20 Oct 2026 09:39:31 +0000 (UTC)
X-ICL-RepId: 01a158ae-29ed-7088-8a8a-9c079c969768
X-ICL-Out-Info: HUtFAUMEWwJACUgBTUQeDx5WFlZNRAJCTQFMHV8EUxxCDFYAXRcOVk1KF1UYREVRMFAbXwJCDxwTVhUTC1NWWxNVF0YJGQhdHRkKUFAGXRIYXBRcUFgeRhJWDV0JGRhGXlAbXwJCDxwTVhUTHUMZDysISgRDB0UCXgslEwlTVlsTVRdGCRkIXR0ZFVoJClcAQAtOAl0FWx8RTxweGwRGA0IUQAYOVQpTQghKBgkPK1sTVRdGCRkIXR0HWEcURw4PGVoUXBhT
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com; s=1a1hai; t=1792489175; x=1824025175; bh=ufyclrrNEFVPe5UqXVHJPM7BccxPs++75Xe3Gdng820=; h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:x-icloud-hme; b=mN/l/5biHnRzRCViXbtveWUsE0y5k0grm2FCj0caiUi6AjJaeq/aZXwlUruaYJoNy44oAnP8vkKvgqwpMamJ/MUsY8m4CCu8CB8/mD5KF6gFLbZoNZkbX7WnX8taPw8vtYfmB93zBfvdgIXlwJL6V5J5sfnZbk+T3nL+vzckAsJ6+RzlFEcPb48y+Paji8/Q42txFr+Bce1hFjFn/MlBwDgVSrTEPjDcpXPLujvrJu4cf+G/7L8vMrfwhnhrFqnepdTYliCQGC+6GAXMbzbjTLnjtRfT1OZdUnzsSe5eVD1Ug8hKet/II5aYIrqviyP1wLkrIpOjpJotUt6SFLrtjg==
Received: from [127.0.0.1] (unknown [17.156.216.30])
	by p00-icloudmta-asmtp-us-east-1a-60-percent-11 (Postfix) with ESMTPSA id A89E318006A6;
	Tue, 20 Oct 2026 09:39:28 +0000 (UTC)
From: Sofus Forstreuter <sofus.c@icloud.com>
Date: Tue, 20 Oct 2026 11:37:53 +0200
Subject: [PATCH v3 12/17] arm64: dts: apple: t8112: add avd nodes
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261020-avd-v3-12-85cbaa2125d8@icloud.com>
References: <20261020-avd-v3-0-85cbaa2125d8@icloud.com>
In-Reply-To: <20261020-avd-v3-0-85cbaa2125d8@icloud.com>
To: Sven Peter <sven@kernel.org>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sofus Forstreuter <sofus.c@icloud.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>
Cc: asahi@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
X-Mailer: b4 0.15.2
X-Proofpoint-GUID: PA4K7IGO3pTFFQtK9sZGy-RKotvAY5CY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIwMDAzOCBTYWx0ZWRfX9ZrWJcl+odAi
 2g/PmeKDx+GO80KFJxGApDpOUwRxa15tDt+I0uRzMSfjaPanfn0McOce6Okt4rysnanIz66wqCy
 WkPFf0jSyMCs6kkgXAnxmps0QsMLiaeWm8P1jdnJozDIJjV7WWTlrGT6M44o0YHfTfx/umV0Frx
 jLAQGr6UI8+KyL4fsmHK9ApD8wOF5sXRo0lBtgaa+yj8qoRIZLbbsDAI3D+BRSskY6nQnL0wiZl
 zsjld+E3q+/cf0HbW29/8EnHLZkpFQFEwOd3zeoZBGQhmuDH8kbCJPhUyNTeN0npo9LiUiKgyoD
 uKMUOKebAZdaB7XjpLTUoKQdOhpo2QI1JAp0kBi/dRz10bE15FK8KSX3Bf57kg=
X-Authority-Info-Out: v=2.4 cv=Ea7FgfmC c=1 sm=1 tr=0 ts=6ad736d5
 cx=c_apl:c_pps:t_out a=oyWFxbOnq+dmhQrAPgaJYA==:117
 a=oyWFxbOnq+dmhQrAPgaJYA==:17 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10
 a=x7bEGLp0ZPQA:10 a=kLM9Tyy99jAA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=v3ZZPjhaAAAA:8 a=9kiG86roBcscNhQ-f0AA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-ORIG-GUID: PA4K7IGO3pTFFQtK9sZGy-RKotvAY5CY
X-JNJ: AAAAAAABiShmO3I8cdLbjDyBUmevHryOVuL8h2ZlKv3tKlKuy6nCD1Odnv8EjgiFlo6NIIF3YF5tfOAE++Ot8K45B1011Fc3QAw/laCMHhDJVvEoFd3j3wwDYPfw+nxewhX2Bu/RB5N43Qwp2CqmoD3VjTBaur2GXNqzFeZnT79jNQ1MLXdao4CBvHHGt8ZQhEZoPcl0OSLsR3h0SmpCEEjRb6mU2x1U24l2npwT3OUJi/mDEkJ1CF5N+zNof9I0kOrPr6uRWQeUGazs/jSw7zagcJRWTdW7SFN0zpWwk4gBQCFQPDyMMcmMvgwIxvYC2B5UfjN5YxLhgclMLR6Fea1L9Tu85K81kqr92ZbcZBVRh2W0+OGZS80crFlu620BK9e8mXnDECmSbD9K8kCJeEW/mEznD1qqSKk2umFiBX9y8hMbfk5P2jj773oH+b4Seg+v5TvSeix5kGG9kHj5Kd00+gSXFFrJPbUIlBUZLJ5rlUsySocWpu74sv73UJzg8NkwgM6USMt2BodKfOPfjinfL653ytmIFOlk2Ugz9eL2z0ms9M97BBZ2wrueTmeT8lFc3cGgQY2Xo1ZktQLJIgn37sF6KjthMDaTR2A0dlffuiZKg1NoTQxO5JwSXRLU3uTG1GMboEtVJRC2U99qAa15Re6mwyavV5hlFMIY2Epn0nMMC2Wj2sOYpVx++v6ZLgIJgF2g+RAiSRIzZIYPYKO/1erXIWALRILXCJY6VyXQlqiHOtZ54AWUfczLxX4dO4oWmPoF7l6b8GYD7aBYeIzK6dBGarr6Lt4dBqBPI22QITWDyTHivQ5xmXD4KLM9h5Hi5b21jMAMPsGX4BtvVDgUDgQJHC8g1D7cTQ6LijlK/MwztqqZRtWGjWQyaOpmPXFb0oLHyX+YVwWuvAc4fAcHbLAn
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_023936_695618_868AA82F 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Reviewed-by: Neal Gompa <neal@gompa.dev>
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
