Return-Path: <SRS0=scLn=JI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD70DC433ED
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 13:11:17 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 675B0610CB
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Apr 2021 13:11:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 675B0610CB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8f02RwnHHlQ/CHy0+0dyPECAah+yieJVqRdPvcU/nDk=; b=EGPeIkgWiDVXShUTM9SHP3Amly
	cqWvE96Q+LC2n05tRAkEtvCIHeyb+geTME4kazMwsfuWi6sRkp4FPdFU92oQoR/zjEhJJBDUUP4G1
	JpSy33/N33EeBp17fW4Rrcctu8j4eSjLkaieq5T8W1v4rsXoD8e6c1ev2Zj/wkerdFBFFitasDiQR
	3otuqtJheR0WJ3VKVT6ruNRCc6W1jsZK1LMry/T1OYa1wa+oJhEJqZKCn1h/AFyiOWHL1KftIfLzX
	2ce204Wa5HH+HG1Wcnvu0XCXd94tYV9hcq4XiCNuNUkguTjTxvK1MebE/lYnBvDyyJR80YKb25yy9
	UfP4DD8A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVZrt-004Tah-NZ; Sun, 11 Apr 2021 13:11:13 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVZr3-004TOB-Iu; Sun, 11 Apr 2021 13:10:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=2ujtYj1V+AzSvPoFMu6+U6S2xLSiGrGvBvjS2h7YGhQ=; b=MvFpGMhEGiAgeR7jsUZwwfashB
 whJKwJ1p7MUHBd7IzwEfRLcNLpdTrItTRNXrpobxe15or18150GclTK61b6b3sEHRI5uJyKwMPagu
 KpNWmv8Km6zC9s8uHO/GElPU4rP91PTOnx21TYPem5jThTsFBvSr+K2C7CdAJVLulYzzEGMRI30Gt
 kBS2Z0Cq7oxH9clvspoG4bKul4NNHTK1ytSfsG41ZeCnpmqEGL8C4lB1vDzLeMhSgg5UAAMCoEwas
 bHjQnIdEhalSKILtsZMaXMQ8x7bcQoA8aZooHj+BRFiYb8Rmt5WKJwkMckJ/+TMlLX/gfG7kiIGnS
 M52V+4dA==;
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVZr1-005WMx-80; Sun, 11 Apr 2021 13:10:20 +0000
Received: by mail-ed1-x532.google.com with SMTP id r22so11769612edq.9;
 Sun, 11 Apr 2021 06:10:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2ujtYj1V+AzSvPoFMu6+U6S2xLSiGrGvBvjS2h7YGhQ=;
 b=nImbimFUrsZmgsKFZjLsGwM6DbETh5PDM8dpv9N1/pjZ5jribSOb5m3H+tIrqkcZzG
 XLj2bDC3+FO4WjEzer1MS7z8jj+Z06o7Us00Cel+KKrMmcwZiHPtC/I/cnivEWz/ihJ+
 Y4n0W5HzatImaABA7JyqlP0I4tnKTldLiTzYBbiyah6N4wOg74N6LE7q56Gt+gEnZ9ZF
 2PTgbWWas+8CkuAwkCEbHCF1CuxpM4C09zqvMqmgpbGzMAaCG/zbG7mzK+nxxBptpGhV
 hq9M8in+ERChD9JuqPdproppFenwxK8sk9LTGQNTpCVOPNQZQCjvoj9Z2xJyji1/5x/C
 E9hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2ujtYj1V+AzSvPoFMu6+U6S2xLSiGrGvBvjS2h7YGhQ=;
 b=Q81V3ef9bZWA1ZjFd5Bu+5LKAiNGzDQgXwPPiXJdH/ia59iL45U7DhyQu1kX78EdfY
 h4R+QzWYTmKbiqDi4xUvM68cEyIxsltlmRVXWbamvtCQTRAXyiiMZ7w5jqkyddb1ttiA
 5Wgqg4as0YyraJoUpvbfxhUiTitu4iC6ZXEj7qRiJDLkbzOHUXdt7uARsH+d9PYRx8L1
 0ogGPBAg3oOgeGOPhJni+/XTlM6iItlon5fsypyWJbUuKtVcnMP/aLwKzzuZ7bB46diB
 oFx8Nn5I8wwZsKKrnEpkgRYZVNmDBylVuzeWpUbM3aWR2E9o2NXtutGdl3Pxog2cByRg
 p12g==
X-Gm-Message-State: AOAM533/mx9v+gNGK9DdDSEWPPc9JxraG/Rk8dYZF02xizFYNlddYq2T
 ltbE90kI6QGeJppS2FdmGE8=
X-Google-Smtp-Source: ABdhPJybujYIcdFXWYyDboQF1+JnkfO3gG/0WV5MpwmcEsYfCSs1sYZQbZ9gaxClONr4PJm+vFQUcg==
X-Received: by 2002:aa7:cc98:: with SMTP id p24mr25331641edt.187.1618146617918; 
 Sun, 11 Apr 2021 06:10:17 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w2sm3983520eju.71.2021.04.11.06.10.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 11 Apr 2021 06:10:17 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, lee.jones@linaro.org,
 linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/6] arm64: dts: rockchip: remove interrupts properties
 from pwm nodes rk3328.dtsi
Date: Sun, 11 Apr 2021 15:10:06 +0200
Message-Id: <20210411131007.21757-5-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210411131007.21757-1-jbx6244@gmail.com>
References: <20210411131007.21757-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210411_061019_301153_0E889486 
X-CRM114-Status: GOOD (  10.96  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

A test with the command below gives this error:

/arch/arm64/boot/dts/rockchip/rk3328-a1.dt.yaml: pwm@ff1b0030:
'interrupts' does not match any of the regexes: 'pinctrl-[0-9]+'

"interrupts" is an undocumented property, so remove them
from pwm nodes in rk3328.dtsi.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index c2ca358c7..5c968b3cd 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -480,7 +480,6 @@
 	pwm3: pwm@ff1b0030 {
 		compatible = "rockchip,rk3328-pwm";
 		reg = <0x0 0xff1b0030 0x0 0x10>;
-		interrupts = <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru SCLK_PWM>, <&cru PCLK_PWM>;
 		clock-names = "pwm", "pclk";
 		pinctrl-names = "default";
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
