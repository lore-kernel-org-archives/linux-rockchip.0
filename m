Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B78AAC982FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jan 2026 21:05:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g3dXS8TUFO7nicyYqmx5Y1OPm6wq3tJyznkgFwGz8RQ=; b=J/rIfW4uiFU6AL
	UxlEcAu6+2nLspRd4i8O4YSUf39bIseKCxuldlKi8wof786GZv2QV23apZnQ04dxsb2rV0i7y2QUA
	c7e8OGsMeX/I589biJHyi2ZG5YwF9/PZUOWKTirxFG2h8vG4Ytobk3r00qrvMdhJnOZDC3udNUhMQ
	LhFIjkTUscaF7ZPayuL7xEJmwHX1C1tNq8Eb3g+Mii5kRKZ0i3qrTEbFVqCVVsOAh7rZeqJhBGJgE
	2WF3U6A9eGm7m1Mi0qrDm9TVKO/1scqiGNTRKNQ1vwUDynSjjgxwzeuvFw2xxqK5DvCQ+MGn1lD0i
	KuieheKryvdyZ16svckA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgr0c-0000000EqLA-3pZC;
	Fri, 16 Jan 2026 21:05:30 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgr0a-0000000EqKI-2qnq
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Jan 2026 21:05:29 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-b873a14bb99so41338366b.1
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Jan 2026 13:05:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768597526; x=1769202326; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g1isH0tUnm2oT2WHcWd/StM+CJam3RvoJ3PEdManM9k=;
        b=GUb2GyAd07lMvfbPkgV6Mk8Z+PfN9HXW/gbuQrZhYEFNrE2jNBNHCzXfcBXmvBQ3Jz
         z3i7GmLpt3bArjrZ3TdB7XvxFLGaf8CJf3sgPPGG4p1CU7tBbNQbyq3Xn/TT/jT2QEwN
         TzaavOxCphRbBj0xxHAtAdWktrNy0sY6Vhn9thtvbOWKe5wekB+2trv0iWXfcS8F3J9o
         1TxcF6L1+yuWIW06vtzveipHUX+wXy4k/MLY/kd/WuSXFJu0JKuFZr9TtvCwxdSy03pW
         3q3lJ/DS8hXqyMBP1EObPKgOZ2ZyYN4MyC/OuGR8CPziEbSJ3l2qnEoXKf5EHHXvVyu6
         Xy/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768597526; x=1769202326;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=g1isH0tUnm2oT2WHcWd/StM+CJam3RvoJ3PEdManM9k=;
        b=KGlvxeaYNTi81heHkgDP9MvHJTDR4vACtl+J+wSK7BPuNyjd3sP1AW5q38zeJSxjKm
         ws3aO4SQJbWfFyf8VWdkwk4nLEluTO3CnJgB2+tPsemXqRcIv5B1hPTl8aPRf8LzUv9l
         iEWFf0x4bCo/1GxtF0pcDgIML9l+t4QhzR2lRYANEPJ1NlML5Ckl8sk+QIbJKjjXbr9+
         k4lfKv81lgcKpJ6mdeHYFwzM7hSCN3m2hgx3sINEHoFktPwkPfG7WAeA2+HTOZn92dgO
         2C6P+xhQYVFsCEEyT1rzahUIA0Gibh555i4pwb6x5Uu5DaGezOWb7RrSYFmpb5JgseX4
         PWxw==
X-Forwarded-Encrypted: i=1; AJvYcCVC0jWyRwqIp82UqOvAsUtECj1TqIneb2eb4nnWX0hmyBdk7xqvb8Cxy8dcbwa3QrpwtFdTTGLFnJpxXLPGcQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxJM9Wm2mzTL+aPCyGVGXELhHMVo6EpXUrZXqu37gKRccV1hu8i
	QlMnyu+sPYmdH+4/NoyFeeMlntXctBKyv4g08QBrOfxmUPIfGu7qhnGy
X-Gm-Gg: AY/fxX4JtMupMWFm/+N8e1n4uOYLxkPWeYZZyLC14C7nvI+tkhbcM9wDDSXtRe+Wf2h
	MziXXDH4Ah0/EiZWW3CazjyFOIvhW8pM4MksJR4Q9uoegiQ8+/fX9Dvk+8X/q1IwU6M5EGmXvak
	peP/A0GQtTLgegJ8z4ORWOBLfNRyUM6Fyp4FiLAa/Gz1/7Pp0Ksc5+jVhy1OmOV7kaXO/FqOeDy
	DVj2AFF4mUmkb4p52G88ClgQhQT1F9GPU6+IuOqC+T2vG5SXzX4UCeUMxkEmdEd7ej8yghmQdjU
	ZLie71GxPZ84b8MJznudJ8POETjwz6gH08bbgBF8vYLOFUfNYttKcnEm9YSSRU6+2cWzhiJdpMl
	BKPJweGpqJFaDhWX2IjWpZoLRRkWPEsZW/VAJNAqensT0gLXQ6zCVmbTq6HOHwBvKm7wlSM4UAj
	0ZFUzY2QrOrtuUKD+i8hP3XVSoOKKcWG5G2Y0oFKQYNd3W+EB3PQ==
X-Received: by 2002:a17:907:db02:b0:b83:95ca:22e1 with SMTP id a640c23a62f3a-b8792e0edbemr223364666b.1.1768597526191;
        Fri, 16 Jan 2026 13:05:26 -0800 (PST)
Received: from ?IPV6:2a02:a449:4071:0:32d0:42ff:fe10:6983? ([2a02:a449:4071:0:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959fbefdsm328674466b.55.2026.01.16.13.05.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 13:05:25 -0800 (PST)
Message-ID: <c6feab79-5b73-413b-a94f-9d1b2fa6df43@gmail.com>
Date: Fri, 16 Jan 2026 22:05:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] ARM: dts: rockchip: rk3036: remove mshc aliases
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_130528_729345_BF6FC490 
X-CRM114-Status: UNSURE (   7.10  )
X-CRM114-Notice: Please train this message.
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

The use of mshc aliases is deprecated for some while,
so remove them from the rk3036.dtsi file.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3036.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi b/arch/arm/boot/dts/rockchip/rk3036.dtsi
index fca21ebb224b..78afae42f8b2 100644
--- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
@@ -23,9 +23,6 @@ aliases {
 		i2c0 = &i2c0;
 		i2c1 = &i2c1;
 		i2c2 = &i2c2;
-		mshc0 = &emmc;
-		mshc1 = &sdmmc;
-		mshc2 = &sdio;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
--
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
