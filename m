Return-Path: <SRS0=2LhI=B4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28A79C433E1
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 14:37:52 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EAD15207DA
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 14:37:51 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="OphNe9t1";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="uCU2VExU"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EAD15207DA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AoBwuWuKdDE2sWTnyu3ARJsRGR/8/ZKC4rDIaGCR4d0=; b=OphNe9t1u+S06gSgTMvOyMQTww
	uBKJpjIRDSkJb4BjrmH2wLKVupPLJ2C3n9uMndgWwJGOyblObOyZ661bs26uuZTEy2yG7ZTTlYCiW
	nQOB7qka+TF0U4ckm45jAF976jygQo8Sz7ymYni/kuZ5wpxc2iHkFbOS2mWxIZiSdYV0sY37odouD
	yAV1ba3+Mp6kNRFuV2UNpxjWEJrSN5dgE8Rbdmh4OwWPpLJB7IHcZKlm6rZ+0YF69rqzswy/+8XN2
	32bDwCBG0eIBPfgca5arPGUsKEE4KNEcQvP44jkawJ9gxxCwzlMIGP8oZZU7Xw+2bDb0d610dFIEJ
	dwe3SLoQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k82kF-0008SJ-Hf; Tue, 18 Aug 2020 14:37:47 +0000
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k82k6-0008NY-Vf; Tue, 18 Aug 2020 14:37:39 +0000
Received: by mail-ej1-x644.google.com with SMTP id qc22so22369361ejb.4;
 Tue, 18 Aug 2020 07:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qW/vPODydHKoIxWkakc/8MljLCi8kAbWI/+HlLycii8=;
 b=uCU2VExUgkOdf0CSnU7p7Lwj0HwQv0QnvrEuM3Q4DtTmfgcqJv7lIMg6wtWsqdRNtr
 g5qApET1RisUjddrmMDVQXhqZkK6RUrIg+S1ft2ZwrIEdCpyOHTTzGA/R5EGMsKRwzj4
 SsCX3rMM8bGiFd+wOqh1oFq4CbRFWaVCVBrrUQDeKee+Pz58Bzul52OIZy27Wlrou1/g
 ECjwdYXY1HW5YzJlKL4uu7XevB8c/LCNUHqQtYNviTU3EXem5NfnQcAJiDbq94SJ3owE
 fDqvczWzkV4IwcqGoE3pAqhNbOppeAUqbJV6zwa33ANkAs+92H9Szw3wOmS0e3n3/6YG
 3HNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=qW/vPODydHKoIxWkakc/8MljLCi8kAbWI/+HlLycii8=;
 b=fnplK6dqyz7YpROuACAu028jDgsW0LWrzJkWKC4zJ5rYohGSE74ViqOMyClNeVpEQF
 yXxIm9BHWiP9hUuADj2vOBYv8DIDJPuvjjWQzy/DsJ12H68iIP73lscAiKpL1F/+RzRE
 wOzOvDXpeePe9z2an6ZFI/LH+zRXGvtsV6GgJhyhR6iXbG1s/oX8e33SjGnOgdyJDgP8
 2lyhTRUcj3MDJqh1Bcec3VEsNQHH7RR1otitg94miaFX5Ti1CuPfXGTs7z8vosjoXG/E
 TYzzdPgOYX1ZFX9AO3yLhO+MNMhvmjg5XsegV2dQ8c64pYhh9sxShhAPEBeHhy/Acelt
 ZVWA==
X-Gm-Message-State: AOAM5335qkvozLWFBcErvFSK+f+30l/HkglYToVyVWVc6+l2Z8+CAEOK
 P76dkSnEwmdDmm6vCUBswJQ=
X-Google-Smtp-Source: ABdhPJwoKdEOnV0Xt2tgEw82my/fzFI9XtM+fHHICmtVeMhwZPUpUjoZ/RyxXNw3xpoCDJrZ+yHTpw==
X-Received: by 2002:a17:906:a18e:: with SMTP id
 s14mr20008133ejy.168.1597761456090; 
 Tue, 18 Aug 2020 07:37:36 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id r25sm16222575edy.93.2020.08.18.07.37.35
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Aug 2020 07:37:35 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v2 2/2] arm64: dts: rockchip: change fallback string rockchip,
 rk3308-spdif
Date: Tue, 18 Aug 2020 16:37:27 +0200
Message-Id: <20200818143727.5882-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200818143727.5882-1-jbx6244@gmail.com>
References: <20200818143727.5882-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200818_103739_047152_1EE6B7DD 
X-CRM114-Status: GOOD (  16.55  )
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 lgirdwood@gmail.com, robh+dt@kernel.org, linux-kernel@vger.kernel.org,
 sugar.zhang@rock-chips.com, linux-rockchip@lists.infradead.org,
 broonie@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

A test with the command below shows that the compatible string

"rockchip,rk3308-spdif", "rockchip,rk3328-spdif"

is already in use, but is not added to a document.
The current fallback string "rockchip,rk3328-spdif" points to a data
set enum RK_SPDIF_RK3366 in rockchip_spdif.c that is not used both
in the mainline as in the manufacturer kernel.
(Of the enum only RK_SPDIF_RK3288 is used.)
So if the properties don't change we might as well use the first SoC
in line as fallback string and add the description for rk3308 as:

"rockchip,rk3308-spdif", "rockchip,rk3066-spdif"

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/sound/rockchip-spdif.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index e8b754d41..2560b9877 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -574,7 +574,7 @@
 	};
 
 	spdif_tx: spdif-tx@ff3a0000 {
-		compatible = "rockchip,rk3308-spdif", "rockchip,rk3328-spdif";
+		compatible = "rockchip,rk3308-spdif", "rockchip,rk3066-spdif";
 		reg = <0x0 0xff3a0000 0x0 0x1000>;
 		interrupts = <GIC_SPI 55 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru SCLK_SPDIF_TX>, <&cru HCLK_SPDIFTX>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
