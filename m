Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9232ACD6E78
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jun 2026 13:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z3YDNI1rJ7DPItm1Ebgomgpz4IKYHfYP582z/17Rf+c=; b=MHy3zqFmMjR3/B
	ZBZG+sBYBgNtpT5TlrUPb8mGhh1he3qTCqQAyH+8clZDXH7W0G/OQZE03p6+HrTdRojIq9q7kLmE5
	GPJg21k+sRr6XkSEfsU4YIzU9xmRksQabXeGE2bhJf7w6U1KXyxii7jQxExv8cZRL2EGBqpKiPdS9
	Kk2hDEMicAn8SVyiGkTX/hSSUPEKeh5+1XRPi1iEdXO9TqV+IF5lwfVk6NgwBYE4Jtzg2joEdxAiC
	2l3V4RHYJ/gr/FEZLKNdHF/uTYtZDqH78WA6PGDehgNvcoGKFSjtFkRnjFMxxAJpPAqrNbT3jE+n/
	npaLRfjhiWdXkWKtox9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV8VX-0000000Gq4r-1RBC;
	Thu, 04 Jun 2026 13:53:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV8VS-0000000GptP-1ERG
	for linux-rockchip@bombadil.infradead.org;
	Thu, 04 Jun 2026 13:53:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=6AgZYnyS4i6ey0fjJps0/Fygo8+mCWzQwi4kSxOwSD0=; b=iWUiBKHmMrqTMUPZoq78P5fDCK
	tyFnZfw5ykprSesoZxL1/dKqhfA8iu3g+91+owukIfeHSq2I6pTcogw1VsW7/HsGIbespbMHi9jsf
	iaGnQNQ7QPQ0ZZsasTCkp/yWPW/Odk4/sYFgaLQksIcY/KgsWCLSC/gOUvaSZCKvTNtyPQl2Ic9Yj
	uDLWaStweYvX8wq7OMXIFCu8Ha0oOgabeqwuGaqThyMNCUxWmLBA+126p7d2YIfvNbHn22aD7Z36h
	qWSPVOud1s5i2Ei9Fg9/WbLk69++edH8TdlzcEL00niVNJuszmaetRf/PhbkV1IU0uYKRTmaHzXs6
	ZfDcAk8w==;
Received: from mail-wm1-x336.google.com ([2a00:1450:4864:20::336])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wV8VO-0000000EOuP-0Vkm
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jun 2026 13:53:08 +0000
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-4903d730b1fso8307515e9.2
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2026 06:53:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780581184; x=1781185984; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6AgZYnyS4i6ey0fjJps0/Fygo8+mCWzQwi4kSxOwSD0=;
        b=bxV3Zt9m8vrWfTooheU+Ub1nswmPBhveHYjmmtnOKydU1jw2tCbCWzsV6VteADYc4s
         dXtx5Wx8spHiSqZ4CT4Iz7o8vFy5JPJkml2Z9fi1liCs5/0fFkqscS3kgivsvu3e2JWT
         tm9YSbSuAxBy11/7oc/VLjA3jCYqZnu97a0cPsrrdVcBVBga12QrQoaKXgXx7DizSWy4
         rv9EKyGooec72Suf97yk6xCPHNIkVISONH72PGZkXK13Vn05BhDt/Rp+/wN3tc9Ym0E1
         lCKE2c3LNd0DqfSslJ2eMCYQ714q146ZL0D6NsPnsK5nIx04aGSMCuZDcRCtba811CVQ
         MN3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780581184; x=1781185984;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6AgZYnyS4i6ey0fjJps0/Fygo8+mCWzQwi4kSxOwSD0=;
        b=Qzf2wh4i4sS3XsCRA98M/RsM9JDL8S3deDVkNhr3blqtBYp/Qzi8zeMHLnpfgYHZ5f
         ari8U9V+/dajbv+ax1S3tbOmM2lSApR3x/4bNGnekJlhpK/eEpD4uT+vXP/lLfFa4Uzf
         WYCqBe1m32IhRAZxo0BDwKa0K8X0LrX0r7OtJ4pH1u6RYaeYw7BD/O/6F+26amnsJnY0
         UnR4oST0eUuVT5zZNcdDs0hFRDPFO5f6kGizdLkpxjdKDCi/8avuDs9TIjzohEG+kJOw
         jfQFiR5qbIn4e7OI9rdfMSi4On3jugdlfe2ZMv699fmK6RVgYEzIzJ4imTLBrpPY7dE/
         O61Q==
X-Forwarded-Encrypted: i=1; AFNElJ/99WQN4ieEucNhDPX5jN7y+r2AXDx/y9Q9iFP7DgYbxnTwYvh8Zl2UDUYwMmIS5TzXa+ienLzHT7YbLfbrOA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyxh6MhTOVaRPh9jgQzbA79iZyvuJI9rsulwCV2qRVbZJN/jWd2
	FUBQSp2iY4ibSPeeuYuahyRbG/UM4dl01M/LjeLxwRfhnLad6FbJgr0N
X-Gm-Gg: Acq92OHjoVvLkwma1OFs1UaCPbl6Ca35F06sG0J3r80uQpeH1NV7TkNyB2e31fjQEPG
	YmSBh5gJyur3RXywUeVRlU1/amX7Owhfr0NNlSP0ohSuNiRfCHL6bPMbnYl53xZZT2OjNbwJv+4
	7yXc8doOQ41esqYCrUHt7K/n5OrPPAnuUtbl8Ovatp3ZkP1hsiPxkkGS+AmS+JqmV7HlFlgF2FN
	Lpz/6LnhjmZUFw6ZS3JuRy8x/uxQf72B/DQMlvAOjJKUkd/bxSPdtnbJyjA392MYL1pn1LfjPPd
	z3v+4TMfOy4dQrF6fankzx2bIBwnUhpVQW7ay/cxKkyQ3tErkzZn/8SY+3q7+d52qtkeL5aY3Ko
	E7ut3kzZ7cAEiU1PdYsn/qN/Oa4P+hk1p4w3SRxJXcrVzg1jfagj89FzUGoHWdXoVPq1G+VRC17
	sbTTo9j/ebQdyM4xbfu7ir5xOO7JKVvCAIVTvs67dbSKytTHXAKOVZwpt8AfI2He4=
X-Received: by 2002:a05:600c:5288:b0:490:b473:8f78 with SMTP id 5b1f17b1804b1-490b5ec3ae6mr133508845e9.17.1780581184471;
        Thu, 04 Jun 2026 06:53:04 -0700 (PDT)
Received: from compiler-rock3b.tailb81abf.ts.net ([2a01:e0a:104a:4d80:be24:11ff:fe12:2776])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f0a43e9sm16661068f8f.0.2026.06.04.06.53.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 06:53:04 -0700 (PDT)
From: Midgy BALON <midgy971@gmail.com>
To: tomeu@tomeuvizoso.net,
	ogabbay@kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joro@8bytes.org,
	will@kernel.org
Cc: robin.murphy@arm.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH v3 9/9] arm64: dts: rockchip: rk3568-rock-3b: Enable the NPU
Date: Thu,  4 Jun 2026 13:52:55 +0000
Message-Id: <20260604135255.62682-10-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260604135255.62682-1-midgy971@gmail.com>
References: <20260604135255.62682-1-midgy971@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_145306_511850_2E600E2F 
X-CRM114-Status: GOOD (  10.69  )
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

Enable the NPU and its IOMMU on ROCK 3B.

vdd_npu is marked always-on so the rail is up before genpd de-idles the
NPU NoC at power-on: the PMU de-idle handshake needs the rail powered.
The PVTPLL compute clock is brought up later by the driver.

Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
index 69001e453732e..7ac780ed313d5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
@@ -330,8 +330,10 @@ regulator-state-mem {
 
 			vdd_npu: DCDC_REG4 {
 				regulator-name = "vdd_npu";
+				regulator-always-on;
+				regulator-boot-on;
 				regulator-initial-mode = <0x2>;
-				regulator-min-microvolt = <500000>;
+				regulator-min-microvolt = <825000>;
 				regulator-max-microvolt = <1350000>;
 				regulator-ramp-delay = <6001>;
 
@@ -787,3 +789,13 @@ vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
 		remote-endpoint = <&hdmi_in_vp0>;
 	};
 };
+
+&rknn_core_0 {
+	npu-supply = <&vdd_npu>;
+	status = "okay";
+};
+
+&rknn_mmu_0 {
+	status = "okay";
+};
+
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
