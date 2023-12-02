Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4BE5C4167B
	for <linux-rockchip@archiver.kernel.org>; Sat,  2 Dec 2023 18:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZAnZlY/sNg5faCpRtnSirPlfiHQeXkWpttmQSmXolCs=; b=DM2kaw9v6a4hsk
	n0kCZoIgqC0YDUTNX9klHnuqNZ2+qq5SC7TMDYCklJjcQShVQHkptUetW8Fnj68ne4XTiM83oXfpf
	v2g/GbkVmSV3Qcol8gbgFoODD3hehmUsr2rLp53XnEODVdiC8uvnPbuOQABNVXnsjdi3c+5cOCL+q
	C9BCZeSygHM1ffkYiLU+47bkaFMy8lMcjr5xo0ZhMLzQ2oOkBuIHIAHyYvYA7u2j6ziSklduu1rex
	fgi4m0pi+erUBo2pIT783/KbXOx0zxNKGp3XPbCk4C3hV6atBtsPYFCX2q5MgmUnKPaThfw6ZXRhv
	s1S4SXFPsAzb2udxmVSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r9Uds-00Fz60-33;
	Sat, 02 Dec 2023 18:23:04 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r9Udp-00Fz4T-2L;
	Sat, 02 Dec 2023 18:23:03 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-54a945861c6so3941089a12.3;
        Sat, 02 Dec 2023 10:23:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701541379; x=1702146179; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ptQy7vIkYjCFB+aa3cCw2vsywB20J1NTnue46LWtMms=;
        b=LkGVHz/77f+vBjCNF9XuqmZYKx/w6uJqaqfdovXqXY1jClBizlY6bBBFC+uxLx9K4X
         4dxYsgMQ3qxFqKfVtoLkwzVDG84FtZX4V6hDynsnQLraQ9jEBnSGEk+giMyChg7mFQK5
         sWNmBIiiNDe8HdjDsJmxwwNbM6ZtYUMLYBxAbWvcEszCsTQcW2WSwLdUl/spGWXUIhWL
         W9s9NrZUmYTIwWjwEZ7IZiIah8BNc3RqCSxFrds4h+LsLx500Pxh2aKA17pwH67sDWe3
         J74O77ATbGOuYSFozoe+Xde3x9dvtw6Om1ZGp8IWIlnP6dAc0AlPVGoYVI+YKiLaeiZv
         sPiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701541379; x=1702146179;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ptQy7vIkYjCFB+aa3cCw2vsywB20J1NTnue46LWtMms=;
        b=VcEHL5Q7q5+Y/5hQSHI5ifGG+I5XE3b+vXhZ36WS3fBRng81oCLQu93zFspRFuZht1
         8fLe80eQW66O6R6IU2OE0dWEbpJXwPVRtLICl2oVj1xRIoskN+TMCHY/2pHwen2GVPPT
         LaOaiZ9BtNarYs1qk1DY1zj/N3dssB85zizbKzkzS+ohvZTXlBd24SNW4gfX7YTkvHha
         e1Vx9Xlj9WL5GDaifrbAf62isGNvDz8dT3oeP1P6yMieu8vf6HWFwAGM+jb2pFG7U5SW
         i1d+Cyj9HahGhp9nooV/e9hPgi7dYfLsiuxSg5XxKceha8450IbaP3WIrVADQ9nYG3gM
         DN+A==
X-Gm-Message-State: AOJu0YwclsdLrPbQGw+D7bjvJaafUgLS2tCxCbaDMGUmYSDzplAZUSxv
	Ksgv/reQYELfCE1VcbRniVU=
X-Google-Smtp-Source: AGHT+IGFJofaaySUB8o0CkLPtrCC8WKyR8dvy8zqfrOR6kgqZUxVxqimQVEZGEmQTeq0qQ0rgDoQiw==
X-Received: by 2002:a50:8d06:0:b0:544:b0f4:f13 with SMTP id s6-20020a508d06000000b00544b0f40f13mr2025975eds.23.1701541379341;
        Sat, 02 Dec 2023 10:22:59 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id g9-20020aa7d1c9000000b0054bc8d34a23sm2876924edp.93.2023.12.02.10.22.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 02 Dec 2023 10:22:59 -0800 (PST)
Message-ID: <56daeead-1d35-44bb-00c0-614b84a986de@gmail.com>
Date: Sat, 2 Dec 2023 19:22:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 2/2] arm64: dts: rockchip: add gpio alias for gpio dt nodes
To: heiko@sntech.de
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, jay.xu@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <89f2a229-9f14-d43f-c53d-5d4688e70456@gmail.com>
Content-Language: en-US
In-Reply-To: <89f2a229-9f14-d43f-c53d-5d4688e70456@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231202_102301_768219_A0555EF3 
X-CRM114-Status: GOOD (  10.98  )
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

Rockchip SoC TRM, SoC datasheet and board schematics always refer to
the same gpio numbers - even if not all are used for a specific board.
In order to not have to re-define them for every board add the
aliases to SoC dtsi files.

Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 5 +++++
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3368.dtsi | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 5 +++++
 4 files changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 2ae4bb7d5e62..cfc0a87b5195 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -20,6 +20,11 @@ / {
 	#size-cells = <2>;

 	aliases {
+		gpio0 = &gpio0;
+		gpio1 = &gpio1;
+		gpio2 = &gpio2;
+		gpio3 = &gpio3;
+		gpio4 = &gpio4;
 		i2c0 = &i2c0;
 		i2c1 = &i2c1;
 		i2c2 = &i2c2;
diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index e18f7c1c0724..76ea18bf11a0 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -20,6 +20,10 @@ / {
 	#size-cells = <2>;

 	aliases {
+		gpio0 = &gpio0;
+		gpio1 = &gpio1;
+		gpio2 = &gpio2;
+		gpio3 = &gpio3;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
diff --git a/arch/arm64/boot/dts/rockchip/rk3368.dtsi b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
index a4c5aaf1f457..fc7e3f2bc786 100644
--- a/arch/arm64/boot/dts/rockchip/rk3368.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3368.dtsi
@@ -20,6 +20,10 @@ / {

 	aliases {
 		ethernet0 = &gmac;
+		gpio0 = &gpio0;
+		gpio1 = &gpio1;
+		gpio2 = &gpio2;
+		gpio3 = &gpio3;
 		i2c0 = &i2c0;
 		i2c1 = &i2c1;
 		i2c2 = &i2c2;
diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index da0dfb237f85..dec2705d035d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -20,6 +20,11 @@ / {

 	aliases {
 		ethernet0 = &gmac;
+		gpio0 = &gpio0;
+		gpio1 = &gpio1;
+		gpio2 = &gpio2;
+		gpio3 = &gpio3;
+		gpio4 = &gpio4;
 		i2c0 = &i2c0;
 		i2c1 = &i2c1;
 		i2c2 = &i2c2;
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
