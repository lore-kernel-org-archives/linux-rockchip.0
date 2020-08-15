Return-Path: <SRS0=r61b=BZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.0 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5665AC433E1
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 11:24:58 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1A86D23119
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 11:24:58 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="Py7w5uQy";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RcfBisNl"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1A86D23119
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G/Do5ybzhmCImLNmJ6nR4TtlbOxLVovr3vY8oDvCqrA=; b=Py7w5uQykdnLcngfcbpg9iiWOb
	MEWeNCX8/f+UD8AkIX1SuRh63Cg2wpuozqrTAZ+S1q9t6QhxxiL0iCorD0fjLN2Sw69NpWoY7vf9A
	SPcYmjTQ4qenup0UCZAn+UOL8soLit5J0SUyTfctOSMSM03mmfa7NUkkV3R1nMkIwTL4r6fHQA8P6
	Jbu7HpkwcOzIm6Rz7jDs/h0SPBDdo8+d6pLh4Nw3s9lJG0ylGpxTiDDoJPMn7RgWdf2ljynOkXeQy
	LGLsBfbXB+XGwdiz9MsAqsvb7+Cm3nXuujfwcVIWljWyT69fkp32AZSO3tid3YMiA7guTbc+TIujM
	R48DeVtw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k6uIv-0003pw-Pt; Sat, 15 Aug 2020 11:24:53 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6uIq-0003oV-0I; Sat, 15 Aug 2020 11:24:48 +0000
Received: by mail-ej1-x641.google.com with SMTP id o18so12565633eje.7;
 Sat, 15 Aug 2020 04:24:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vsYRcSKJo5heCkEhByxTesr3qnuVqbFBvI7V/761LSM=;
 b=RcfBisNl6UXEMchW7A5g1HzcineDtMdGJxg8pSBUgnHND0LmggU7y/FoNRZZeVV6LN
 kNoLIXGm2vsaptDdsioIb7Q1olsgv5yc9DZ7ZGWYs84pZGUEaSrkLHHsauzmBWiliNLJ
 80chWYLTncWt/Jn7133ZQq7xz08lJlaVVQg+nbfazl1Bn44rEMsKTlSa9ycZI25VWsv4
 3tKh/FXwvsoemyuyw7up/EWnbpZvXB84YUjxwzz5HccfgU5N+sgEKI25flqUq8EgAKmH
 Ot8Ll9fuLtHmGErjcgq0T57ZyaLQZta4Af5awtIVFZs5UMtVIg5YEQBNcaGl3mzJNPTP
 4uHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vsYRcSKJo5heCkEhByxTesr3qnuVqbFBvI7V/761LSM=;
 b=FFBsZKwj+kqAPpqG3CKpItys+LqGiydaDq4XxWhsebNri5sdfaFzPr9/mCQDkMY/Pg
 VXnDuOwQQG02CMMZjHV4y1oYHCURuVvqbU5bgV2uk3hB43Y/Ak0oLmDL9UvAwQAhboYB
 nFu1sYEQNz4TqBPBjP2mRJh3Oln6AsKKsh/rcRNjzUf4A0UJNNFTddFcAiZkHi6vMTJq
 GiM+e2Tm58a+bHVNMHP6T31nPGqPJXMwjolsDT2O4x/PAKIqzOwan1KfmrbxBLjUgHbj
 9wIQtAffkbADymGOrkV4BhXeofbPkuRcbyIhgC80nB//Hpc8WgzBMitcT0iIFHDpT5eZ
 59eg==
X-Gm-Message-State: AOAM532w9HDLR9EQJCXZQubrtzDpW6T/jCatpn2GnytoSArtEqWDgIWI
 aw8yfZwQFHuafzg/9rulfsQ=
X-Google-Smtp-Source: ABdhPJyxOEsEOhMyUIA4+Iz32TqEEjVTsSegFwkW+dd6LEVTbpRkB7b+vARNNelBhUeQw25VyZM0Rg==
X-Received: by 2002:a17:906:dd5:: with SMTP id
 p21mr6862906eji.416.1597490686713; 
 Sat, 15 Aug 2020 04:24:46 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g19sm9106505ejz.5.2020.08.15.04.24.45
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 15 Aug 2020 04:24:46 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [RFC PATCH v1 2/2] arm64: dts: rockchip: change fallback string
 rockchip, rk3308-spdif
Date: Sat, 15 Aug 2020 13:24:37 +0200
Message-Id: <20200815112437.6662-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200815112437.6662-1-jbx6244@gmail.com>
References: <20200815112437.6662-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200815_072448_123406_07928649 
X-CRM114-Status: GOOD (  17.35  )
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
enum rk_spdif_type {
	RK_SPDIF_RK3066,
	RK_SPDIF_RK3188,
	RK_SPDIF_RK3288,
	RK_SPDIF_RK3366,
};

static const struct of_device_id rk_spdif_match[] = {
	{ .compatible = "rockchip,rk3066-spdif",
	  .data = (void *)RK_SPDIF_RK3066 },
	{ .compatible = "rockchip,rk3188-spdif",
	  .data = (void *)RK_SPDIF_RK3188 },
	{ .compatible = "rockchip,rk3228-spdif",
	  .data = (void *)RK_SPDIF_RK3366 },
	{ .compatible = "rockchip,rk3288-spdif",
	  .data = (void *)RK_SPDIF_RK3288 },
	{ .compatible = "rockchip,rk3328-spdif",
	  .data = (void *)RK_SPDIF_RK3366 },
	{ .compatible = "rockchip,rk3366-spdif",
	  .data = (void *)RK_SPDIF_RK3366 },
	{ .compatible = "rockchip,rk3368-spdif",
	  .data = (void *)RK_SPDIF_RK3366 },
	{ .compatible = "rockchip,rk3399-spdif",
	  .data = (void *)RK_SPDIF_RK3366 },
	{},
};
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
