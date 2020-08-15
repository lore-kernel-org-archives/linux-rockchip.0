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
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A570C433DF
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 11:25:01 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5BDD923119
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Aug 2020 11:25:01 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="XHhTNpdq";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BzvxEX87"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5BDD923119
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8Cj0S9lgtatYStbHKlL67yEVDr33nhzggW9yo/IliMk=; b=XHhTNpdqckRToVdb/uLYSK4lW2
	L0EXk/nXxhRlw2MT1aVgQww8j3Lh7pdiEIJf3h0gArIH6w25EYFkctmrcmPA3HzIDvawKNZRgTF4M
	60/jexaTTYRVP5xDyZ4kHscCBTJfMP3+CDYssWeXi72r3Q1+j3If1A8N2Qthk8PaXILFvOCSQBBhr
	4+pLi9xSkXDM5AaQ7U59G9jL5KAz0Es7szRogkNsDEfpUYOXgBz4weUZlf6ZmMvRYtczxNNW3T6n+
	/QxDfemf8NdqdAl/4JoVAKU62V7zPqKBDXYzDHzd7q9FCOVwnSXw4EsLnusUrVDSu1nldUkETbUhg
	lkfIwY3A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k6uIw-0003q5-8f; Sat, 15 Aug 2020 11:24:54 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k6uIq-0003oU-0O; Sat, 15 Aug 2020 11:24:48 +0000
Received: by mail-ed1-x542.google.com with SMTP id a14so8705096edx.7;
 Sat, 15 Aug 2020 04:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=/pYCqw4FJgQPrWvNgxirZK4mGQC6/Ct9Zlkxybe7NMM=;
 b=BzvxEX870Xh3lvpFQLGjz7Veu4ygb9dXO7nfFMPyo3sDsJRvTHw6edfND4yqselsR6
 URdlfuviGFFbRySestfN8PU7laLrFmG9iH1pfGTSdnXc1buyXBrCXETreK/M9kDopNRL
 WJVCQYEx4kOiyuYGPpSZqor0EFIDiuRi3/MTukfQc2pS2hP1YDgE2bIJtcPaiDIi01jL
 QPqZhDCVHMybZGVVBmfwQHHrGOI0OSwscrfWbmYsyGzHVVMqxiLtSfLKSqGFZsAisfLx
 tTVZWR8KsVBWy7Ia/VM6l+oBsSYy/3YIzmJgrrbDQR/h1yyH9KRorvdwgkPpPE2JDYVL
 C6Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=/pYCqw4FJgQPrWvNgxirZK4mGQC6/Ct9Zlkxybe7NMM=;
 b=jTOHzqQMDcUt+OmRDSjWkF+JkpvjJwDji3g3GWLfAvCHlkyKiD7AirrQSajMboVXre
 MYm7tl/GUbvuswuYYxQHvSZlxR31/vgOvdw/aPHgitwjnGV65+e3EywMuYjikFO06PB9
 9PANrbD8vvvXZ1IuV9g4chxvqQvPjelW5+IBl73lp/zqvz1+wBFGad/56V1PjxwHfCcY
 NMYYwDGAbutrR2Yzg4t1QDaz4Ku57Fs6qbK547iWvUC/gcLqz4l1X3Ey3EoUttAsAQde
 mI4tFRi1xDlSFH6HB7ybkU7alaD3dgJppnvr9/eg/58/Lfdn4gQlA4itH1N3dM8w67QT
 NuoA==
X-Gm-Message-State: AOAM530Q7Ckh4009mYy9+yQG2MMw288MV9H7ETssF2ItjfecreDnTY2H
 +9V/bpb4B0kJybLX2HzLiEU=
X-Google-Smtp-Source: ABdhPJzNUtJSkcac39yHBPS5OxPmkL38Y++peDytppNuvWlZm5hLmWf+eQB4YO0lfG/9XEr/QYT7Gg==
X-Received: by 2002:a50:fd8d:: with SMTP id o13mr6673800edt.313.1597490685719; 
 Sat, 15 Aug 2020 04:24:45 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id g19sm9106505ejz.5.2020.08.15.04.24.44
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 15 Aug 2020 04:24:45 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [RFC PATCH v1 1/2] ASoC: rockchip-spdif: add description for rk3308
Date: Sat, 15 Aug 2020 13:24:36 +0200
Message-Id: <20200815112437.6662-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200815_072448_131873_ECD3FA0C 
X-CRM114-Status: GOOD (  15.18  )
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
 Documentation/devicetree/bindings/sound/rockchip-spdif.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
index c46715265..26e986097 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
+++ b/Documentation/devicetree/bindings/sound/rockchip-spdif.yaml
@@ -27,6 +27,7 @@ properties:
           - enum:
             - rockchip,rk3188-spdif
             - rockchip,rk3288-spdif
+            - rockchip,rk3308-spdif
           - const: rockchip,rk3066-spdif
 
   reg:
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
