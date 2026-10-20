Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EB5660A2603
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Oct 2026 09:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0LpOQyy2;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=icloud.com header.i=@icloud.com header.a=rsa-sha256 header.s=1a1hai header.b=r4UYBy9e
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kRrQhjRuzvHQQ6SBb5zJQb0L7fHEfDLle9QH+OWqpVg=; b=0LpOQyy211LBOr
	oXxpRdaLPjGrZ0NsPx9P7tA94GW5yobJlSK/Y1rs0fbTOdkytV+0+77i5N5H8oxtO2y3xY3r12CRK
	tbaJOP/NNc8rcRzYhojgJJoDFe2frBT0vZHlwmAe95QkxSacmqzNFQeKl6m7/iOpL8iHKo+ypUU/x
	JSGmjkPejmUn/doyY8d3xKPER3g/l2AP3a5HPi7dL/hRGH4zUDqO6QKQsLHU04KKWuk3tXFO5Aj6/
	yXChuuOTp3vpgC+e34PZAdOp61IdGBcU/dvPp5xu9u/M29Xv/8LcJHHRKTP/8/7NN5VtNjpGbzSuw
	zl2mMTNfHvMyT5fPGquQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ6KV-00000009KRF-2Q0L;
	Tue, 20 Oct 2026 09:40:23 +0000
Received: from st-2004d-snip6-2.eps.apple.com ([2a01:b747:3001:201::2a] helo=outbound.st.icloud.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJ6Jw-00000009Jhb-0FJH
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Oct 2026 09:39:49 +0000
Received: from outbound.st.icloud.com (unknown [127.0.0.2])
	by p00-icloudmta-asmtp-us-east-1a-60-percent-11 (Postfix) with ESMTPS id 981B818006AE;
	Tue, 20 Oct 2026 09:39:42 +0000 (UTC)
X-ICL-RepId: 01a158ae-5520-7a72-87a3-73daf2035380
X-ICL-Out-Info: HUtFAUMEWwJACUgBTUQeDx5WFlZNRAJCTQFMHV8EUxxCDFYAXRcOVk1KF1UYREVRMFAbXwJCDxwTVhUTC1NWWxNVF0YJGQhdHRkKUFAGXRIYXBRcUFgeRhJWDV0JGRhGXlAbXwJCDxwTVhUTHUMZDysISgRDB0UCXgslEwlTVlsTVRdGCRkIXR0ZFVoJClcAQAtOAl0FWx8RTxweGwRGA0cUQAYOVQpTQghKBgkPK1sTVRdGCRkIXR0HWEcURw4PGVoUXBhT
Dkim-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com; s=1a1hai; t=1792489187; x=1824025187; bh=6l1dZYSkptDVN3YIf1wG8SBFkyOtovBr3ZWVhGRwtdU=; h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:x-icloud-hme; b=r4UYBy9eOz8yTdwn1+rTTMwNidx473GMIdx+YxCvpL7VQg0+qMJNrHohmNn8huM09Q7AC0WqlwFpYbk5w8NkRBHvpQHuaG1F4W31shYoL3TnEOLDYj2ltCUs/S3QeDgc/BRXnQcH1mZq20zZK7UyWMSNrnMrezZJ6ipkbJ1FkfRsOtq6/WFOtC79kjBFN6VMLrqIYKe6U+Sr+zaDMiEj5Gqy5nuCLkLAAd6NlebxbV5/vNnDN3rPoXlF1Pf7UJFFHD8+MXvJBuTDuFQC6pmak8PANNSy0p2YfO1W+M9s6uVV9SB2PWGhrONmWk5y2oEFIWiwzWyXXL0TcQRKrXh6pg==
Received: from [127.0.0.1] (unknown [17.156.216.30])
	by p00-icloudmta-asmtp-us-east-1a-60-percent-11 (Postfix) with ESMTPSA id BD4481800231;
	Tue, 20 Oct 2026 09:39:39 +0000 (UTC)
From: Sofus Forstreuter <sofus.c@icloud.com>
Date: Tue, 20 Oct 2026 11:37:58 +0200
Subject: [PATCH v3 17/17] arm64: dts: apple: t6031: add avd nodes
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261020-avd-v3-17-85cbaa2125d8@icloud.com>
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
X-Proofpoint-ORIG-GUID: IWO6_OnO1QwV6aCSooLDyJlpZ6gQM1cX
X-Authority-Info-Out: v=2.4 cv=UZVciaSN c=1 sm=1 tr=0 ts=6ad736e0
 cx=c_apl:c_pps:t_out a=oyWFxbOnq+dmhQrAPgaJYA==:117
 a=oyWFxbOnq+dmhQrAPgaJYA==:17 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10
 a=x7bEGLp0ZPQA:10 a=kLM9Tyy99jAA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=v3ZZPjhaAAAA:8 a=H9SxB0RbRSejM8bdbGsA:9 a=QEXdDO2ut3YA:10
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIwMDAzOCBTYWx0ZWRfX9PhocdzKsIP3
 sVLkUA2SkCRMQiSvDEc+E9wTzRV9Yknnp0/JZFZLiQOrFwsmObvlqD4+XwwCVtKztGskVpaTZuA
 yj/J4xO02X9guPXJBOr7Q1usiEPhNPn4Ai6VwtPUM5dmob2BIy50s1gW2Im7LSrMP3ICTAHoFNM
 LBNyV17yiUKQkKH3XQrvcrvjsdqYvWQo7BTp0RbNXWx3B50+NAyItySPx58FcwNTdM8UK90BmcR
 IqYcUvVQCcV8y5emkMvdOAocwyw7hSc/pdb1UIVOcT9W2pbUwpxiqr+1Earyrz2h9bV0RRaNt0O
 bBXP2GrG28QURxtOCi09/wKvleYuWQszZIYjlDWJyY0IlE/xM0JmpqjWY1kYb8=
X-Proofpoint-GUID: IWO6_OnO1QwV6aCSooLDyJlpZ6gQM1cX
X-JNJ: AAAAAAABR8myAEgP+tjd9UfkVqcC+VVUp0cDnpBjlBiBenK5qkdiu1hEppOv5mE/Ln48mJ9TzEFqgvvYtmPY1Y3f92xd14Bvx4b/trL5tsxylZ7JMOrPJT1AGcwy902j1BMZGJl1V8RSGtMkKA7XQ5Ku7ViYnF0Vuf2BTnVeg8vtB7iBZ70IoyJGD6BEIl/dSYH/2oIqFzYokJbAJFwVDIXW/WJkDy62cEJ2V3C8Tu7tbhZoyC/ASZ94dOhywwr7gXUpodTKcnNGf0uav0pkz0fOK6+ERZjCYi6pz7Y0LUfb5AjJAdAMhjNguKzxFiyBreJcKial1klWjX4q6GihbOAbrQk3R8hlzjAK+RdGktLf2QZwDb8T6XOhXiObBc0vsuCEX23qJ0ML7VF0oF1mvjx9J4bWSsAoIiLRj9IM4e2zdHUr2ucPRe/xIj1xhleA/gXXJ9zukvwktbCuv0jYbaQUlOEGSX6YFqRr5DkzHgOmAQ3m3vQAPfAWaEcwhgQBzpX81MWYwx445bAyFIeL3EYARReywAw1lZQI0GiRu0MEsBDExQXchtC5tTZBUbIwTvLMBFHH86Ivf1UcbGTQVdAXsKWnOOmk1tv6yLcHkYCB8pXmceTEBJ+dX1PkrfQoNnj0yfztM4yoOsqFBuWhZFGBGHwfiIudSacqVjEM7DN+Bq3eO+Z0UjlQzLf+xWlYz4S2Hq4gVMgSkmQ5EHWIQEtQpogEcp+cJ/mIgA40eqPC/NxBBoJUKNihQ5WID6rCiZb+dR4f+MdfpTpubMELG6CKHsWIQrPiXrXvWf/NngTX8NbYYK/5W609oeSslxl2NLgM+ghs3cv6qnXkL8sNxcUSceZdEiQhzo0jXM/LyR4tvdp3ai+4NR5/iWZ+hJ/PjTXolw96vqI3ncfTrBcXpvwYJsLQqKc=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_023948_254042_FED5CE96 
X-CRM114-Status: UNSURE (   7.31  )
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
 arch/arm64/boot/dts/apple/t6031-dieX.dtsi | 32 +++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/t6031-dieX.dtsi b/arch/arm64/boot/dts/apple/t6031-dieX.dtsi
index 2e9d3d2e6dea..4959190e13a3 100644
--- a/arch/arm64/boot/dts/apple/t6031-dieX.dtsi
+++ b/arch/arm64/boot/dts/apple/t6031-dieX.dtsi
@@ -98,6 +98,38 @@ DIE_NODE(pinctrl_ap): pinctrl@2b3000000 {
 		#interrupt-cells = <2>;
 	};
 
+	DIE_NODE(avd_dart): iommu@2cd010000 {
+		compatible = "apple,t6031-dart", "apple,t8110-dart";
+		reg = <0x2 0xcd010000 0x0 0x4000>;
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_IRQ DIE_NO 1192 IRQ_TYPE_LEVEL_HIGH>;
+		#iommu-cells = <1>;
+		power-domains = <&DIE_NODE(ps_avd_sys)>;
+	};
+
+	video-codec@2cd070000 {
+		compatible = "apple,t6031-avd", "apple,t8122-avd";
+		reg = <0x2 0xcd070000 0x0 0x4000>,
+		      <0x2 0xcd080000 0x0 0x10000>,
+		      <0x2 0xcd090000 0x0 0x14000>,
+		      <0x2 0xcd0a4000 0x0 0x4000>,
+		      <0x2 0xcd100000 0x0 0x10000>;
+		reg-names = "piodma", "code", "sram", "mbox", "ctrl";
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_IRQ DIE_NO 1185 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ DIE_NO 1186 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ DIE_NO 1187 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ DIE_NO 1188 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ DIE_NO 1189 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ DIE_NO 1190 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ DIE_NO 1191 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-names = "mbox0", "mbox1", "mbox2", "mbox3",
+				  "flag0", "flag1", "piodma";
+		iommus = <&DIE_NODE(avd_dart) 0>, <&DIE_NODE(avd_dart) 1>;
+		power-domains = <&DIE_NODE(ps_avd_sys)>;
+		resets = <&DIE_NODE(ps_avd_sys)>;
+	};
+
 	DIE_NODE(pmgr_gfx): power-management@408e80000 {
 		compatible = "apple,t6031-pmgr", "apple,t8103-pmgr", "syscon", "simple-mfd";
 		#address-cells = <1>;

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
