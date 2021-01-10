Return-Path: <SRS0=32dy=GN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81EE0C433DB
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Jan 2021 19:49:12 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2C480229C6
	for <linux-rockchip@archiver.kernel.org>; Sun, 10 Jan 2021 19:49:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2C480229C6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rv0lbSOm4wImJw+DX6Sp3Pv22m/Qnvi5c7y27yL5Y00=; b=bUYd75LCibSrqDwsbcZMUYL8Vz
	m1redxf4/hEPRJ7qzO9DUFsDhw/TrHWstzCy5UC7GjpvbnKirIUS2Taq+4LD2667VybUSMT2iLrbD
	cHh6y9SL+K9ZApdlo+KbO3k1LIGG0VsvEGXXx6wgaY3t3VAihq2yKBOTf7AMbjk/8DALjZG7y4xoj
	aaKotAZ/B5Uv2ZeJY3VFmF3RuwkjFvdT/mRpLMKiKjlo2OcUE38cC36JrKce9Hm3+guBS9FhgjexP
	89m0eFSvSDfP37Xj6/9OPW/LbCzIaBfoLg+fGemTAsivSiR9+GjmjMeKf2kTxP0IzqF51fNF5uLug
	8LHwIOTg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kygi2-0000P7-Ll; Sun, 10 Jan 2021 19:49:06 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kyghw-0000Mn-JP; Sun, 10 Jan 2021 19:49:01 +0000
Received: by mail-ej1-x629.google.com with SMTP id b9so21898269ejy.0;
 Sun, 10 Jan 2021 11:48:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=09fSf3CYaRKd+lizyu6R+MPMNC+3QROBV5c96As/hCA=;
 b=fl0PW4s7ManJVu9VHMp+EvJvjoGt6rWz1YFeR+iCO61JN3AgGK9UsOM3lDTWsNzcjX
 pR0pxumLTzqJae3EsU3wKX3xJm9gkB9tNAjiC6qJqvdkUBZ+FNhnueOSAMi2oMzuMC+W
 jH3rHB8rQVEN5sGsqCEF6C8QTdaTYhK/lvbrCQyn5FQxwOxgp6fn5skCKkTWduLib67s
 t/WuMSBXtAeL8SS7asOnz3uGddnqWbkNgu4I3qPYqF7p9Z9r7P2hDzqNd2pLassNJb0N
 uVS7oAd4uMoCH0p75BUN4I4RC5QMgT4IogBf8aTCShEK3o5HKSPQw7dGak5V0kmX9gRQ
 c+rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=09fSf3CYaRKd+lizyu6R+MPMNC+3QROBV5c96As/hCA=;
 b=F8gD/pMUfBJ4s/kc8df287vLQEDgr3Fu5Qj0755SqEuckY9T7mrcrL7qrkrafUs1Tj
 rxcoky7hyAEbZE3WwbusRbQWYFluD6AlZwMLyhRxjG32l+RwPvPkSbmu+gTO65yxb6MJ
 4B99Pv9rHeaS7uS9WCmxk9OxQMb41vHXFEWLIr576RzkeUTjqc85oyEwWXcbK8s9bARi
 1qlGxi0uuU8HUlrldeWiYqaOOqu5Fd8P3zpWlLOI7UZF7Q179bhLYRmDgecZBwvOJzQ7
 kytpJ5UvLtfw26Bj5ylPV0booTgFnVzzdGawdovHtqvOgefetrGfBz8msedHlt0x7KJe
 lQ9A==
X-Gm-Message-State: AOAM5308Mw3hRaf0TPNgzQBBtvpOcypvqAzS6FOq28jxurh+oCwmRXGG
 8jlXbm5pZrhMTgS+3TohY4k=
X-Google-Smtp-Source: ABdhPJxZrBTlfwdY0Md+scUpm1TSyYpdw1RT6bm83UKxWSJ/tn0GN7b2F2c10Am+sj5dJTQfcGO2dg==
X-Received: by 2002:a17:907:e9e:: with SMTP id
 ho30mr8829434ejc.529.1610308138914; 
 Sun, 10 Jan 2021 11:48:58 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id b19sm6744898edx.47.2021.01.10.11.48.57
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 10 Jan 2021 11:48:58 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: rename pinctrl nodename to gmac2io for
 nanopi-r2s board
Date: Sun, 10 Jan 2021 20:48:51 +0100
Message-Id: <20210110194851.10207-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210110_144900_774112_C416C1F7 
X-CRM114-Status: GOOD (  12.02  )
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

A test with the command below gives this error:
/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dt.yaml:
ethernet-phy: 'reg' is a required property

The pinctrl nodename "ethernet-phy" conflicts with the rules
in the "ethernet-phy.yaml" document, so rename it to "gmac2io".

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/net/ethernet-phy.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
index 2ee07d15a..86732b45d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dts
@@ -280,7 +280,7 @@
 		};
 	};
 
-	ethernet-phy {
+	gmac2io {
 		eth_phy_reset_pin: eth-phy-reset-pin {
 			rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_down>;
 		};
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
