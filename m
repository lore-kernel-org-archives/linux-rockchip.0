Return-Path: <SRS0=b+1m=NT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71CF7C432BE
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Aug 2021 09:13:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 194B361163
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Aug 2021 09:13:07 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 194B361163
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3kRkgO7awllHUpUOF/ueDNQK6vZAQda5EzU5tdUCFKs=; b=gVfTcB+EJMCVf+
	DQxyqPJNGBKlUTkdX6O8SS3+u4FTnX+eUmfV9MJ5X+W2ZZLebfyrxGtHxhLAcfbxnff9pA/kwHnFK
	9880YToHlZszgK/jpj75mlJPdaRXOpPdSwDevFNBcaBd3jeT8PUVWR5dCdW7MUUUL21UIfjf0scTi
	672ZCs9vB0q+sZyQafim40MSkpioHrQ3VgwgSXH1n/x/+YTN8AIUFDkkPFCnWUsYw32SrPPKy63Vt
	igQ6xOwGkLmBGFSIwOHuimYe/VXeZ/csZPhlSKFO8O6ZFWd4D47B6d2oHIpsbVnEynvGUr2Jrbzby
	G2J/G4bF8XsmCiKXswpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJuOY-00Dx3I-8e; Sat, 28 Aug 2021 09:12:58 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJuOK-00Dx24-Nq; Sat, 28 Aug 2021 09:12:46 +0000
Received: by mail-ed1-x532.google.com with SMTP id dm15so13557788edb.10;
 Sat, 28 Aug 2021 02:12:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SvvbcesUWfj9LMRxBzI6Ev7Q0MX9bVpa2X1UHmZy5Ko=;
 b=WbrKJIDpVBW4LuxY9IEFZWqoCPt11yVJXydz5n+xiEdUt/Iiy9dTT5DzDciw9LRn1E
 y3KNoTpglKtkhTvAvbiMz2TZWWrvHO1XXLY04E0T/Mr1Ia3kFjwf0+WM6dY/RevB3M3n
 28SHgfjhu7ijS1MBgadoJSGB4Uinrt21n9fuxt+YtxaKnILOT7cBqB1hiAM/50y72T22
 5ZATPwdqltWGCXNOMFUWZ3y1Er5+O5+2BaEM1Wrd6wlJCTtCVC7MvjqaOBoWUYOikgUO
 rbgvRKsMnyI+8Ymy8YoqxQk4cQpp5cTyO2c6RvVQO8lwchIBxgm7VwctT8P+l/nU0pDx
 W7cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=SvvbcesUWfj9LMRxBzI6Ev7Q0MX9bVpa2X1UHmZy5Ko=;
 b=SCpqMixIq5thfmQ10uSIsCY9eABUhWvK6cVoxGvqPDlf9N3HxJ3LJOhzRNSNGxJfDo
 tFQMga7eJ55PP6vdYKu9F99iNVHtTkySvfzKGFnOUMDRDtIaCtdxTTnDLQR9kBjHVwoy
 mZAgdPpjOqWFcvcRZ3oWc5wEn3IHCX1NG1DmQ7oGuxXrAMdfe0avBD1nV8SSazVRrvng
 nncTxfl94xOgdZSQT54jrSgMND5HpsdEoW1Sd1YPg+QbRIYGhDLdIhB0Hg2iI+V/pk7p
 iJDgfVtN1tCsiQ2897c9NUmJRfwUOe0Cu77xvBGTFl0OpYJJZr6F2PbSbnRJYs1zNH4w
 35GA==
X-Gm-Message-State: AOAM532u086tpMkppJEoJwurGH5WWPfxxP6Fqe9qYPpXpeNhMjAoSQUR
 ThFcsG4D0yZMU4ph47l1qQA=
X-Google-Smtp-Source: ABdhPJwolTxMxxAfrpO8rnE0IdRrrykT1UKXuvGuqrPmonIccYMBpu5U39/TA+Ddd6hRpx80ronDeA==
X-Received: by 2002:a05:6402:714:: with SMTP id
 w20mr10288906edx.62.1630141960105; 
 Sat, 28 Aug 2021 02:12:40 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id gl2sm3965102ejb.110.2021.08.28.02.12.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Aug 2021 02:12:39 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: rockchip: rk3066a: add more angle brackets to
 operating-points property
Date: Sat, 28 Aug 2021 11:12:33 +0200
Message-Id: <20210828091233.19992-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210828_021244_821616_537F3241 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

After the conversion to YAML of the Operating Performance Points(OPP)
binding the operating-points property expects values in
a uint32-matrix with 2 items, so fix the notifications by adding
angle brackets.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/opp/opp-v1.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3066a.dtsi | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/rk3066a.dtsi b/arch/arm/boot/dts/rk3066a.dtsi
index ae4055428..cc701a4e0 100644
--- a/arch/arm/boot/dts/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rk3066a.dtsi
@@ -23,16 +23,15 @@
 			compatible = "arm,cortex-a9";
 			next-level-cache = <&L2>;
 			reg = <0x0>;
-			operating-points = <
+			operating-points =
 				/* kHz    uV */
-				1416000 1300000
-				1200000 1175000
-				1008000 1125000
-				816000  1125000
-				600000  1100000
-				504000  1100000
-				312000  1075000
-			>;
+				<1416000 1300000>,
+				<1200000 1175000>,
+				<1008000 1125000>,
+				<816000  1125000>,
+				<600000  1100000>,
+				<504000  1100000>,
+				<312000  1075000>;
 			clock-latency = <40000>;
 			clocks = <&cru ARMCLK>;
 		};
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
