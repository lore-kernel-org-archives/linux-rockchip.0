Return-Path: <SRS0=vJNw=EW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.5 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFBA0C5519F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 13:23:27 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4B01A222B9
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2020 13:23:27 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="aePuDeLL";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="sm5O5h5t"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4B01A222B9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oeptrrLWxm1QZl1ItDX9ozTnK0kZEIaFzgVNOhkbBWM=; b=aePuDeLLQ0XXjhkSvPqnmXhpsz
	H+uyFOBJWYUdv5HxAOIJX2VF/mdWSy5lGV6altxjeTlz36A0XFJqipKls2jKq8QEHhVHyG2fjMCj/
	ViZwefG+zXqI50MsUUCvTWQLeZeOs2TyOThsTqGTN7kHCj8mnAJLY70ZsaTIAxCiLZI1A1EfhRZvW
	atYB1M4CWCtgcibASmFuBiteDEWsIjRo2gjpktJ0ekFNfIipTaSOqHTx0f7tpkhGQqq24iA/cXOgz
	TNXdskve6xmd7fZta1Vk41RKgwrc3uHLdrCctWnetYKh5bSEzNxYZzDdvtjb1uaRUzuOtqeE6VZjm
	kMOlcGiw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1keeTa-0001Nj-Qs; Mon, 16 Nov 2020 13:23:22 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1keeTX-0001Mw-75; Mon, 16 Nov 2020 13:23:19 +0000
Received: by mail-ed1-x544.google.com with SMTP id d18so5780902edt.7;
 Mon, 16 Nov 2020 05:23:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=G0T5yMoydp6E6nfIQvkyLdPxpOSjZqvp9iT1QJ5MAdI=;
 b=sm5O5h5tKDovkV/5mskWrX+P9iq6xa4y3wieGVnqK77Mw/fmWo0dC9ciHHIx8qsSXB
 HXfYvmPSoFDCvRQB+wcrLdEEAZq0w1lbRBih+gJNLA9P0OX2YsFpgDPJeZSOssDeOGhs
 0FqdFmYjkR5/7RmML/007eeScOLD+JFMo3YVtMxvsN/2vz/JBHFJyUIVn38Ry++PM3kU
 F61o+7TeywzZ2XpdDvvTx/Zq83YuxSRMO7MVp3AS9dCyCLz2z4IbPtySnj862smoN8nD
 3V+MkDg3TOoSFAWIFfZGITGF8sKdDb/LNObh+CvB41oDXgBjTucJvEovRyS/I9dD7j6x
 t/3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=G0T5yMoydp6E6nfIQvkyLdPxpOSjZqvp9iT1QJ5MAdI=;
 b=Yy3ki3xL7SYMsiPqXxRmvkEelRvGfa66UrudCpCGTjtoZUui4whmzqQTQT3f8XiQMx
 sYhV4ZoxVTY0V7XFsVwlmqQiSU8guBMMPDRHt4do1ZSM8pufr0gX07QN5namSh40BNyE
 QkMUREPbmG3YUU4c14sTrjS9ILrE+ApdCzr8Tm5N6TWxwgD6fa3exYGyBAiwZ1nd72nh
 WASpEw3+95tz9kosMUrCIE7IWMOyg2X4uSrm/74k2ItVVCxK+KvSCz1LJYeEK8g5EK4u
 ta75+mozWIXGGtX7IiWRR/KVdhSPqd+5B2IsMnlNDZl56E5ekcQGwRjDv1ej+nYGiBMI
 5Sgw==
X-Gm-Message-State: AOAM530mUb8X5NlByknzFOt0/DMU/+Bngilqt8Y2z+LQGDAsNNfgdBls
 UybetxbxeCO2pqeJIAXlrZw=
X-Google-Smtp-Source: ABdhPJxKH+eJazMgAP6plRVNSIXMKel5IbKw8Yiu7z8hTL10hQo3Efm98BHivxowuJn4oaVgwGHvTg==
X-Received: by 2002:a50:ab15:: with SMTP id s21mr15519457edc.88.1605532998207; 
 Mon, 16 Nov 2020 05:23:18 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id oh19sm10550650ejb.49.2020.11.16.05.23.17
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 16 Nov 2020 05:23:17 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: rename sdhci nodename to mmc in
 rk3399.dtsi
Date: Mon, 16 Nov 2020 14:23:11 +0100
Message-Id: <20201116132311.8318-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201116_082319_281055_F46F28AD 
X-CRM114-Status: GOOD (  13.61  )
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

A test with the command below gives for example this error:

/arch/arm64/boot/dts/rockchip/rk3399-evb.dt.yaml:
sdhci@fe330000: $nodename:0: 'sdhci@fe330000'
does not match '^mmc(@.*)?$'

Fix it by renaming sdhci to mmc.

make ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/
mmc/arasan,sdhci.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 32e867179..6cba2c77e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -328,7 +328,7 @@
 		status = "disabled";
 	};
 
-	sdhci: sdhci@fe330000 {
+	sdhci: mmc@fe330000 {
 		compatible = "rockchip,rk3399-sdhci-5.1", "arasan,sdhci-5.1";
 		reg = <0x0 0xfe330000 0x0 0x10000>;
 		interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH 0>;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
