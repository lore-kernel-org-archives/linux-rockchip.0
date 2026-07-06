Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1A47C43458
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jul 2026 19:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2YRbpSwYs3WpRsVUieR562kSA1/gUu3GZhOs4R7a2Zo=; b=NYMER9nBjHiftP
	vqWXsFGQx4K2S+hBavbRsmtC2SsrKvT9ny4CgaPkxkbokBF+71PJ5a+oylqzc7xUeYgykiiYA8aVG
	ZjHmzI3rjZDXyAoaDvxU5/Xp+mb+BhaTpKksX6A22jMfNDNtQOP3z4WJU5yW0EaAThw2kzMT4qb3T
	3eRA8Q8qAT/DJN3wOHUH3evY/g+yK7Fu4r5+9QOfrCKAPezLPZxI+Hnk9ls9u2GPRmFNOjlKJhT3w
	xxlj1XasxZuaNuZogSBk+5Lyg3gllUvypL7oGY4Tykzs6BIDCdDV+jkoS4zbanj9w019hkXRxNG85
	HUTUHvMTMQ9m52cGhv+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgpTe-0000000DVZE-0S8z;
	Mon, 06 Jul 2026 19:59:39 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgpTW-0000000DVOB-0Lwa
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Jul 2026 19:59:34 +0000
Received: by mail-ot1-x32c.google.com with SMTP id 46e09a7af769-7eb61bbeb25so2218907a34.1
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Jul 2026 12:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1783367968; x=1783972768; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9pR1b7+xzGSlhQK0IQGnCFDCaN1WTfnJWTFTWbY2IVA=;
        b=fBHpGghNFuv5lZGk8e/wSnqsRNFRvbbCo3fD+aBRFuaolIqh26gNhHwhDKaM0D6xHd
         fWdBFU2+CiSC6cKes0l5FFaXr7FDJtuY8rIpxmLnErIBQIVTMNCXToCJV/oceZDVaLLX
         GQ3WSjPNcEQGBrWKXrbHk65XlYWa5S1pdK1CQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783367968; x=1783972768;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=9pR1b7+xzGSlhQK0IQGnCFDCaN1WTfnJWTFTWbY2IVA=;
        b=J6iZBNj3h4IFsksj8qap8zm7RENE9vkEMzVvb+XQCmioadEVHu4zPJSpFSUpX6rrAc
         AQGXBcofIRCHQy6qJsfMd2LeYUKMTzoBqiFg8/p46M8yGpVshqY8EiQJ5MO07SRjayN+
         EPQUiopRQzwtXFxr6kzRS676XfrwzlzpG98MUPPwFtqktoyaDGdR/Oz77z7JC3NS1862
         lmSfsx4XRG3cW84I8pNsRRHsJcirthYrsg4ENW2p/iNCLy3+fROWR87WNPWjebl4qc6q
         qIHW0Tsdipp3Skc/NtBqaXAPM41fWWep6CMNGb+J/lPUz4z+0pE0rY2Qp83LJYxzYvpz
         flKw==
X-Gm-Message-State: AOJu0YzkozimKNCpawBc/9ZDgdp2SBH17h6tE2KaxHeoEickh+2Ua0ar
	656BXmgNWEDZk30JV8nu4whuJ2goGJU2TMer0dTI6QcLkgSzRO4ZzwkvwvO5AcHMag==
X-Gm-Gg: AfdE7cnAtpGMuGV6Mvsd4gEs47uc2vGP1guFyeqBCXelSRy1XGxiNjl+6eviCdMQWeJ
	KUf2KMN1d0bMwggE14bAS5cyCMNcuisLHVeR3bTSACJOavQt9RF5PePiT4MuzHv9QeZAUwq0Bn3
	GjSibHUPL+4LxB+t9XHFiDuP7xNQs6BYxDlzLIR+FUTlWqn6Ea6qo5+YLfxCstucgk2MG4ctvYD
	u0/EFOIGPPqmlhpr5lvSW/Vgc+3x1vJvwFTjHuNozwRjTa++VbPs18vVcriVmZyrK53HkWnAENG
	iLZ4xuCiIaV1aBO7rN/LXivfqc5BIQX/3TJE+9cR2is2WMbbbKFUkVENZiGTgYnOiTUHtuMKL41
	JM4CD0UiK9dtYw6YvFstnHveoXGpTLS5c9lb1y6lnYRogdSOWh3CeWwL9HFGNgTLJclLPbphU93
	Wq0gqBbSM=
X-Received: by 2002:a05:6830:3887:b0:7e9:b4d0:53a2 with SMTP id 46e09a7af769-7ebb23a11b0mr1118805a34.27.1783367967800;
        Mon, 06 Jul 2026 12:59:27 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7eb542d017csm12161834a34.8.2026.07.06.12.59.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 12:59:27 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>,
	linux-arm-kernel@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Ulf Hansson <ulfh@kernel.org>,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org
Subject: [PATCH 07/12] dt-bindings: mmc: rockchip-dw-mshc: Add RV1106 compatible
Date: Mon,  6 Jul 2026 13:58:03 -0600
Message-ID: <20260706195818.3906949-8-sjg@chromium.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260706195818.3906949-1-sjg@chromium.org>
References: <20260706195818.3906949-1-sjg@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_125932_500561_20EFEA9B 
X-CRM114-Status: GOOD (  10.25  )
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

Add the compatible for the MMC controllers of the Rockchip RV1106,
which are compatible with the RK3288 variant.

Unlike the newer controller in the RV1103B, which uses the RK3576
fallback, the RV1106 controller is the older IP whose drive and sample
phases are set through clocks provided by the GRF, so the RK3288
fallback is the correct one here.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

 Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
index 4965bb518c54..21ecfaa454f4 100644
--- a/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
@@ -43,6 +43,7 @@ properties:
               - rockchip,rk3562-dw-mshc
               - rockchip,rk3568-dw-mshc
               - rockchip,rk3588-dw-mshc
+              - rockchip,rv1106-dw-mshc
               - rockchip,rv1108-dw-mshc
               - rockchip,rv1126-dw-mshc
           - const: rockchip,rk3288-dw-mshc
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
