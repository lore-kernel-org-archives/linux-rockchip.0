Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C04E606A31E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 00:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Kv46GF7R;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gahingwoo.com header.i=@gahingwoo.com header.a=rsa-sha256 header.s=fm2 header.b=LqPFM7mM;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=MeLfp4qW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=V2CYmZpwohxKOq6IhVNPAf7AGDmBGHgCE1ye+kLIeWI=; b=Kv46GF7RZtR4WyT5GznNRCyfio
	9etBwtTv/pN8Qb654MxOUYqCe0S2QEN83OrLaXXOQ0MakIdnr/yZa+3EvyUTvtZEzpXGw0xtVb/W0
	ZXaOIxiG8rIxn6OCqpWjSAhh/P+HqErVjKMD/t8LmR8qZw3GoyPzC6RFNWMRgHsGXixmXyFjhFVPV
	QPIp6FI8iHX30xJjVLXX4PwaRMxX5O6iuN+3PGaLlok558Zh9tGAw9/qDm43eV2PBl/OwgEB9tKZe
	5eZkKDW2UJLncbodEK2qQmsSW+VJsv36Z72CBjHkRg3Lzpk/+EArTe2w+C9s7UyJ/FSDBnrvkp++g
	YDAO91kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVe0R-00000005EbM-21Us;
	Tue, 24 Nov 2026 00:03:31 +0000
Received: from fhigh-a8-smtp.messagingengine.com ([103.168.172.159])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVe0J-00000005EWT-1Bpt
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 00:03:26 +0000
Received: from phl-compute-04.internal (phl-compute-04.internal [10.202.2.44])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 7838A1400398
	for <linux-rockchip@lists.infradead.org>; Mon, 23 Nov 2026 19:03:22 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-04.internal (MEProxy); Mon, 23 Nov 2026 19:03:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm2; t=1795478601; x=
	1795565001; bh=PAtsEURMjw6BMx3O8gA1fyA7I7ZNfExjOJqh5VnpOJg=; b=L
	qPFM7mMPil54tq78/Jd716sHwg7RwguLNAEGWU7uMM3cP+oa852l00DPW512c992
	l3KLI5hWIA2keF9wrnHOH44SfbQ/DF+IsiaPgtd9wVJk56SLUPJ+ewHvG+OPTTfN
	cgdKC91hfDy0OYCKlNhkclYnNzbYrHvjoRitALYt2WNGRduADer35oWsySCWts2+
	PxnBy9sNYUhaq8P7+sYq5Brzb5CVB78P+5mb3cVlRzuwhPErrYSmCkdVz4t25Mkz
	/4lQUMm8GizkCmcDwy35uI9iCpc05f4wYtIuERYHx+/Rmp8rMhPtYmLsyMwE9ThU
	LAkMYEtGgc4LHxzE8/dXw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1795478601; x=1795565001; bh=P
	AtsEURMjw6BMx3O8gA1fyA7I7ZNfExjOJqh5VnpOJg=; b=MeLfp4qWPzPIBJLHc
	fvrGICUQsgTwFQvsKP4tFcZKQLqwTEUCUxA3iNHs8GihxZ27B2jZPBYJEx0uci8T
	C8TsEic6fwdRVx+eUEVWLgtRPvAYUV4Cbl4YpczwItKcIwTrxwhNjnKX9nqs6RKT
	gtWj8uavBJcv++XU+br9iKu8iFvGfZZIzW6ymjP/UOXN5u73WSmdxHExiOjNXVXl
	AJjcQxq90VZn0a3xhIB8a3I/EGxlNMpAvkNBDMvzf13eF3nJ70btcAnv6dHvEc4Y
	aT7dXN/jXtg0LCKUT07iJ9Q/bDEX5IXxD78ZDclrDWqMOTGJQZu3KXAoAkgGY95H
	1Ricw==
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=sign d=gahingwoo.com a=rsa-sha256;
DKIM2-Signature: i=1; m=1; t=1795478601; d=gahingwoo.com;
	mf=PGdhaGluZ0BnYWhpbmd3b28uY29tPg==;
	rt=PGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmc+;
	s=fm2:rsa-sha256:k63uSX9/YoBdYp8b7gH/gYrKCEvqS5u8tWXezmkX4lXL5Xe
	E7h7gIJut/0vusdsAVq6CX9xcRtBmoipBM8RB8P8CDjEfE99A7xzX5z6ZnceQSpN
	VMKlcSB9M0Xzpov+tdGbWdxundZwDcV0ns9G9nFYI4q/6cMMntQLDJm2HKvmZik0
	MLZoep8YQXm0IQY+l8kT/X+vdbFhfEamZTg+nyhr/j5UMrUGtqqQY4goNEq3iKLy
	KagsmhHWIninQ0BMXBX9FogQsym5v07l9hPuuyIDxhJL1iTUd0cEm289aZfXosID
	7uyBAmXSzlXo8JX5I1j7LHp99yJTEFsCdFD6XYA==;
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=mi-m=1; hc=11;
	hn=cc,content-transfer-encoding,date,feedback-id,from,
	in-reply-to,message-id,mime-version,references,subject,to;
Message-Instance: m=1; h=sha256:C1BWLQcnSytZepq4fTMqH2u1iaoudV1OrEuQTXPxCxI=:75ct8d2NEqNy8dcL0uqvryMqIsqJanWM8NlkNmCp4FM=;
X-ME-Sender: <xms:SdQEa-sIeKyLAuqXySBonp3mPo5W-yYxD9H2Yap2i-QpPv0ygCY62w>
    <xme:SdQEa0tvnOUEJ-OcoUYOXRapDxUTmlv44FJnLcWcc21weubyfhGm3G1ZYmVWZXqR5
    D6xUtRTVCwAEdfQBz9jDtk53-AHBD0cl465bKSZz_ybLnHWiw_5VFXQ>
X-ME-Received: <xmr:SdQEa_F_XEC4OTo-W7frqgaExL9vSfuVFgcnc8h-bdzbk8L774n-e5HISmI6u_EnFURzrrHl>
X-ME-Proxy-Cause: dmFkZTEIvCBAqgUEloIsFZ3FkPJniX+pdPbA8lwmlIZBO9hGOTGGz/x2Hl+7nFbV5nyvKp
    t925nNRn8DutQCQinVZPr73dXFznYxFvXbL116jqCZ/GfyonUZh/Db8T2FiyXrfT2tvgmY
    iobzatdB+GcoyC0jM5VyW//zQbbnDI1hKnSbxsDcxkUlD4xzycqbxXM6vvDpB+AvPZI9PO
    U/XSWb9pjObA40eWatkEvdJBkQEqjCEU+A4urP116L3cv2N0DBt76GIBJcBDbwZQhbIQjC
    SOwjlJv+Q9QIaSqFf9Kz25pG8hZtrsSllc9yq5WXEJr9X0qGFNbX1Y7L6XZjelykM9Ldlj
    QmYfQnu0oE0th0KiUcGx0BpMkjJLthd3bKUwFDw4YTV0EKGlUjFGl7tgyMnt+y+zTjDfMn
    A5hn9D1CuCrMq63UC4P99nXpZOxG970N7X220xsTvy0qEZVNUEzFBwLxXq6z/ptaQdLiK/
    5ajJg4DLERCe4jjGrZU50SAnnJv15ESTpkwVwTBKOZ57IUR2lClbNgO4PB97kdYHOcVIYI
    vf0Oy+mmADrxqqMTl7osFUtXo4LyLrTomfvYSe6UEARwkvgzImWLUKXmg3FhO4wovXTLNi
    Yd0svLJbtcBfeaZEUYGDbhnTPHzxtURDZto106cvXxQCV5eSz03oHModg6qQ
X-ME-Proxy: <xmx:SdQEa3KRuUEyLxuR93E9SV1LN2Afhyae9W7rL4bR-1BH50iDrkH9Lw>
    <xmx:SdQEa_Yl73dEbwPGkPLddSp9eFvYSOAtvmkfy5OMPGiv9SfFxLgQlQ>
    <xmx:SdQEa8rlnUnM0ayQtCzAukRelyoXbPY_-L2Sv3wPuyz9phY9w_Pygw>
    <xmx:SdQEa_HTdRppX0ht58zEsMip-7Po_arXDr5VrqTkylbdCl8rl3Q3dw>
    <xmx:SdQEa3ojmRkqc_OHowVk7JwlBn0DV7gOfg64nfTP7pvvp2y0vgl7jhSb>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 23 Nov 2026 19:03:13 -0500 (EST)
From: Jiaxing Hu <gahing@gahingwoo.com>
To: tomeu@tomeuvizoso.net,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joro@8bytes.org,
	will@kernel.org,
	robin.murphy@arm.com,
	p.zabel@pengutronix.de,
	ogabbay@kernel.org,
	zhangqing@rock-chips.com
Cc: ddrake@baylibre.com,
	royalnet026@gmail.com,
	sidong.yang@furiosa.ai,
	ulf.hansson@oss.qualcomm.com,
	abel.vesa@oss.qualcomm.com,
	sebastian.reichel@collabora.com,
	chaoyi.chen@rock-chips.com,
	shawn.lin@rock-chips.com,
	finley.xiao@rock-chips.com,
	diederik@cknow-tech.com,
	alchark@flipper.net,
	leonard@lausen.nl,
	vlwwwwww@gmail.com,
	jeff.hugo@oss.qualcomm.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v18 8/8] arm64: dts: rockchip: enable the NPU on rk3576-rock-4d
Date: Tue, 24 Nov 2026 13:01:43 +1300
Message-ID: <0bcd73278a4c7a0cb2e1b8bdb9aba306355384cb.1795478392.git.gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1795478392.git.gahing@gahingwoo.com>
References: <cover.1795478392.git.gahing@gahingwoo.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_160325_519650_A8DE7799 
X-CRM114-Status: UNSURE (   8.70  )
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Enable both NPU cores and their IOMMUs, and make vdd_npu_s0 the supply
of the NPU power domain. The rail is switched with the domain by commit
b1bff9ced657 ("pmdomain: rockchip: manage the RK3576 NPU domain supply")
in the pmdomain tree; without it nothing holds the rail and it is turned
off as unused.

npu-supply is set because the binding requires it; no driver uses it.

Signed-off-by: Jiaxing Hu <gahing@gahingwoo.com>
---
 .../boot/dts/rockchip/rk3576-rock-4d.dts      | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
index f068794e48d4..72b251d396fe 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-rock-4d.dts
@@ -722,6 +722,10 @@ &pcie0 {
 	status = "okay";
 };
 
+&pd_npu {
+	domain-supply = <&vdd_npu_s0>;
+};
+
 &pinctrl {
 	hdmi {
 		hdmi_tx_on_h: hdmi-tx-on-h {
@@ -779,6 +783,24 @@ wifi_en_h: wifi-en-h {
 	};
 };
 
+&rknn_core_0 {
+	npu-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_mmu_0 {
+	status = "okay";
+};
+
+&rknn_core_1 {
+	npu-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_mmu_1 {
+	status = "okay";
+};
+
 &sai6 {
 	status = "okay";
 };
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
