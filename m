Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E99A9606A897
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Nov 2026 03:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0m4G5Or4;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gahingwoo.com header.i=@gahingwoo.com header.a=rsa-sha256 header.s=fm1 header.b=G0YZ6fvl;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=RMvLJ2mH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=OvGU/ifubniSks3OjwjXq7iNvfgT7yhz0MoaARZg3sQ=; b=0m4G5Or4O4KpWgdSa/JowJ0G/A
	/zoeH7lb/0Wn5v39AvGHvVZhHkYfjwJWWpQaRBVcaLjJ+7cMdMeZ+3nF69a7dXKNlNzj1FL/SfCRq
	62zYYSlzL0tEcx3YD39dycClIxso0ecEow5qybW9wxbNZHNjMd81j/+4RRPzqlwzkGgLzXpndSIpk
	iE+YGNDnvF0WFkzm3MXxvG0i/FykVTIcMutnTNQj/lxN+vn0j9/s5nd3VD9yDU8y6E1ETipFVj7+1
	Fzm6td6SETjNdUHgMhAETkzfGHI3OEUPBAE82o0pQoelCoVyQ576QVHNT1DSOd0KYCwRuMM+e5KSY
	OGBRGSdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS47Z-0000000FCVc-0dLa;
	Sat, 14 Nov 2026 03:08:05 +0000
Received: from flow-a4-smtp.messagingengine.com ([103.168.172.139])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xS47P-0000000FCM2-1fRe
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Nov 2026 03:08:03 +0000
Received: from phl-compute-03.internal (phl-compute-03.internal [10.202.2.43])
	by mailflow.phl.internal (Postfix) with ESMTP id 838B11381A42
	for <linux-rockchip@lists.infradead.org>; Fri, 13 Nov 2026 22:07:54 -0500 (EST)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-03.internal (MEProxy); Fri, 13 Nov 2026 22:07:54 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:date:date:from
	:from:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to; s=fm1; t=1794625673; x=
	1794632873; bh=minVMPaxKdnfyCJpbOwFdJHL/LDtX3McHU8H1MIv0Xk=; b=G
	0YZ6fvl6B4tixy1wuMCXH+idyIMOSp4jjzZ7M7Hj8CzycVMT4AF+SDYteWzoWqxw
	m3uc1Nq8duDFr0ctKemt1q/jVCVwXKtvpsMZW/4XJBNcJy2Xz8TuxPUiSbDEtb+c
	ncEz7MaXQt/EoJNHWb9yo30UOipbQzywD7XmausfL35RePjNkPmM9xvYErV4yciE
	dXSzvReFA8FZ39CAp8+0r7I5dL6eoVuM6HQa5M24HbUTNB8r6793akan+E8WTsb4
	9iMNcIt2k+dICgof6mQjU1kl+BF7ts7C9a7/bU8yLJzj4UB+ZnEwB8TRecm0MOiS
	eqgJ7lbV8+eaGI4stiFuA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:subject:subject:to:to:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm3; t=1794625673; x=1794632873; bh=m
	inVMPaxKdnfyCJpbOwFdJHL/LDtX3McHU8H1MIv0Xk=; b=RMvLJ2mHq78DESybD
	OLlxdyf7DHWJp8kTm5F5UEwKJqv3W3V94V7p9sZwxhjg8A53pfrVe4gk5r5SlVGB
	4xhWz4MKLf6mrRQDjuIUYpIDtdknFGok7/fYyUdimZAbl7L4kvcpAZ4vZry7Zfyd
	Y6RwL4bGs0TrGhkBjk3OSO242f4fnqTBzLHw11YW6P8tEthMvJF09CalnmH+1xUV
	3TXCcCr0I8FsrqdIM2j0DBYvif7sqGfQ/tBiEq+Kbgr9ZPoBHoOvXwWnUe85sVK7
	RkPTx7V8FPTiYhIWLfAAsqL6JtZ/29uot8jRcch00hAuWXLo8EvWIrVDZ5jywTlr
	4tWMg==
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=sign d=gahingwoo.com a=rsa-sha256;
DKIM2-Signature: i=1; m=1; t=1794625673; d=gahingwoo.com;
	mf=PGdhaGluZ0BnYWhpbmd3b28uY29tPg==;
	rt=PGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmc+;
	s=fm1:rsa-sha256:fBMc0IKbVzGWgdD3hUs1r1NUo3VOqLoGC9KBn0N/VeNk3L3
	hyBFxp+gv3v0rVYiHe30cTIJ3IzHKmMPyMLHe29hoKtj/UA0PhmX+doCeErJgEUv
	esTKj76/wkLg4zpL5HsAQ64jACXs6XIZeCDg9QgFAI5tWJfXhm5OMtw3mRw+4kP4
	lQBPb+CT8biNFyUZ/0McqUV/ShGHa7ypNVpVUtU/qV5AKriaKDcc6gRWOh1brF2X
	P18HHrzHZELxy5bpvfeIF+CrH+ujF+g9jdCK9dP1EX8EuqVeSZ3lofnGQ+rQt9wd
	NjYWBT6lDf65qE+MVYZNVOZinhY0+z2oKt5gbQg==;
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=mi-m=1; hc=11;
	hn=cc,content-transfer-encoding,date,feedback-id,from,
	in-reply-to,message-id,mime-version,references,subject,to;
Message-Instance: m=1; h=sha256:EMxXy9xAZ5ctopLWqVNQ7sYHei75wDpLzcRuSICud9k=:1+NbzSznMYt1rSZBGDikCAdMHVRI7t6SMcI79gsQSUo=;
X-ME-Sender: <xms:idD3asggZHPb6KVJz0QsCPiYaIw8HheB9OdtoD5gNHmgxHHn2xIjCA>
    <xme:idD3ahcmBaNnnqD3b4ZsxIKV0vuRhkPRvty7O-46vy5oSj6oleZEZBFw5N8D5aUNI
    mhXROYcs52Qb6mOv68TVc3g7zjRqxtVp3w-ZcEtxfw_0yKv-P1Ydzt5>
X-ME-Received: <xmr:idD3arUsfCPuwhEV0dCco3vJ5bB2O5ef0vJESHkq6vWAUAgCECRjPaFht-FdAC7xAmgNtMTe>
X-ME-Proxy-Cause: dmFkZTEGMxOoH3y/fMppx2r36gm4cx9GYI3ohK01ZShvs6zT+8h1mVWufLahBuei4Ed1/3
    xRbUYha+QR045BDD8FCRFVIM91rSGwUQ7zMnQH1Bkat2KqUfUo8S4YHSEorvk8zLj3SaDW
    2cnjQVg1N4cjgYIFaRpoqGeOaFHkoldyad78tsE+DecFb61BS2EtavEyFF5qPgk+LGIze3
    1pj9uE4MqQ3E6Y1sY03sy7yic0nfNy3N91ax17Z8mzLg+z2lmCVcb4QExTOBMVx/MohP3G
    wnkdi+msWCJW4WkcwQvXo9jRKjLop8wk5fKsg/aLeHj4SFgb7u29HtVGx3Iv5RN6/FH7Uc
    6ooYTCQJTzCVoGpAgAOmwgxnP95SyZGhb8IR/gfhtnijNjnwmL3vbyASIyngaAVfisingC
    GkviKl5cAo2XuBatVdj2coWGf5yhq22IF6VSCnwNzJJ2E0mtQ6yjIqq4HmOZ6VKl8Z4d3e
    X2B8vBYoqK8/+zjBwKDw0izgWXV42sdfCA2e0t1lPz/Ykp6UJfZ++jkgGOhfH7d+aTDQEt
    TCpElkeA0wPvN93ga5P72J62SBRc/yT75IqclhylkonazCl9gpFSajqnOdSGtopXM5KZDO
    wMS1pA9TfyaKBIlIAIVfQfdS9IO5fB8CLCXkTmCXCClcW0oSh1hBkOrNisnA
X-ME-Proxy: <xmx:idD3ajzDOpbOOQc8Yg1u-nL5gWfN6FrghzInKre29s418eOebadD0Q>
    <xmx:idD3aqBtoBm22JnKIWQR3pBacPBPyxTNK72MjlN58vw1YLrf875DZg>
    <xmx:idD3ah5kzDEaglxuAKYLpZrUT9Yj2NlaiF1tCFQ2ywaxDCw73p_sww>
    <xmx:idD3apmJg_oBatXvv1KumlntFngQbdaEiBW4Ct9ySiYK6IeEbEuyOA>
    <xmx:idD3ahnsXtrmaMGRBFmy1XPDGlTs7p4on_Cem-lDS41XzCKHZc31BRXB>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 13 Nov 2026 22:07:45 -0500 (EST)
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
Cc: royalnet026@gmail.com,
	ulf.hansson@oss.qualcomm.com,
	abel.vesa@oss.qualcomm.com,
	sebastian.reichel@collabora.com,
	sidong.yang@furiosa.ai,
	u.kleine-koenig@baylibre.com,
	chaoyi.chen@rock-chips.com,
	shawn.lin@rock-chips.com,
	finley.xiao@rock-chips.com,
	diederik@cknow-tech.com,
	alchark@flipper.net,
	leonard@lausen.nl,
	vlwwwwww@gmail.com,
	jeff.hugo@oss.qualcomm.com,
	rfoss@kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	iommu@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v17 12/12] arm64: dts: rockchip: enable the NPU on rk3576-rock-4d
Date: Sat, 14 Nov 2026 16:05:29 +1300
Message-ID: <c0d64d55586774802bdd70defa016be6912ab83e.1794615323.git.gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1794615324.git.gahing@gahingwoo.com>
References: <cover.1794615324.git.gahing@gahingwoo.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_190755_564806_516ECBF5 
X-CRM114-Status: UNSURE (   7.98  )
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

Enable both NPU cores and their IOMMUs in the ROCK 4D device tree.

Make vdd_npu_s0 the supply of the NPU power domain, so the NPU rail is
switched on and off with the domain.

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
