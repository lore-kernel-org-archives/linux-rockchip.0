Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91990CCF9F8
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Oct 2025 18:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F/VuZYuNoAef2/hwfSk12coNnKvtV/eV/uKqxhArRpM=; b=WwVlzF+KVeldFs
	q5jpGi20xDbpzPiYsnojPqKk1/smzi21xUKXRV7dW6NH+FhbTCSYgOyGqw8nxTOq5OF0NsjfCDA7M
	Siz0vHuSKSRTKjfJ3P38zgoOGU1yysnslF0ir4k8S5Yaxk4XeU/xY4ElMRXcsMiKp0GeXqreAydcI
	kr4v2s5Jgt/Y337m3+16pPbRUWtZU+lkj6ABsPR0Y8DhA8sl5bNxrhwkFBouZs68sNPq38Ovxbn0l
	XunrjpU85YbZ7T5jSq0wWWoaQLsshB5/zVF1TcthF5uMwsKwOm/LOOYfWKMyOdEgxmb2A+NZct3hy
	bxzYklAPCRGWJXi/W5/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEXGR-00000004atT-3DJZ;
	Thu, 30 Oct 2025 18:20:47 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEXGP-00000004asR-16GQ
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Oct 2025 18:20:46 +0000
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-b404a8be3f1so25671866b.1
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Oct 2025 11:20:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761848443; x=1762453243; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JjUjRNFP6aJN3yakl4D7gzIFYpfpYZ5LN/0WHYSw/TU=;
        b=cJ5oKmv/g8UeLaArSIEkYQ0XLXTQvj0FwpnI/6QCiI0DAH7GNPwwHqnXicJEI0GQBd
         vYuXhFD4BN20LwgiKFrQ55koQGWCuw96oTJKlAuphT+eqCwt1LWb3z0MQpoX99eRf1D6
         SleB/2zDWhr1Oj8AHDEuDspo2LXH6ivIFM4H5IAe/G9+2gbNrynE4d58PzdfGQ48DsR3
         nmYa6aGQyufjnzhW/EdpZYOM5V5sy0WGnhLr52XZH4mELvf+xp+lDVMsv3wdvd1siSh2
         CcmPNwDvzWFerYNXPpT2/lRHBhe2q3ev1/rwBdqyLV+pGdQzjhJHu0Nz+J6M6Ltx+AWH
         OwGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761848443; x=1762453243;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JjUjRNFP6aJN3yakl4D7gzIFYpfpYZ5LN/0WHYSw/TU=;
        b=tLT6PGFOsN3gYTP3SGYcf/jCPS4/oEppXe1eO3LFgu8oG+TYlikTk3qKCnegxWYazh
         lK9mSlRSorcBg0PLL0D5BKhGuZs9TotyOXaCukFkUKjMPbNQ+iXZVnvrhujudnXfJNOf
         G/lk3wouJdAT+LZamC6HCFb+WxAa4bwFfh/mvMtAKZzwus7XQqdvmiZM4ldoGV17EqBN
         7VK30y3oC2dwVEyPP79oAKvtI9m4gas68g9+zB3GUOJOOhQgZi+1TbaPs2H8+tIHxrkF
         ZYO/MYCGG3fTUKhzO4vUlraEAMkqcySqX4mlAs6GainAIsTF01Uyy4COZjLXvQZl4d1m
         gDJQ==
X-Forwarded-Encrypted: i=1; AJvYcCXajQs8Kcbo34wBeycEHkUbPgvSHZ3SHZt0joD8QcEC5Ie7IZXAlKn6ym09vjTAa6SeRTagJvmgsEw9yGUZ8A==@lists.infradead.org
X-Gm-Message-State: AOJu0YzW/aD4hSZYbviCvsakn0LdLxiaimc7O9q+y7hp034Q63DbHF4e
	6tXzfgo6ok5LNIBEtkRku/qU+RWw6SZx9smwgbpny/E9allURs2AmF0r
X-Gm-Gg: ASbGnctlkeqve22RfRTveTj/MzkezqrZrByN7u0kQ4tLKC07NNDA/MwvEEUBm0b46eN
	/+fVmsv2JT4xNBIluV2nnuap95+25FwYeaRnswQTV3gd2HZh+D3q1jCnlTS8udjK9nRNllaGp/m
	XVuHwMxb3LulpUw/Tx2UAnwTxO7odiNfAA6EpkqJIap6LEP907Qwt2l0qHkeMzy4b42pjv1oNfI
	eP4MgfvluwHBm+Z0hzLs2g3iOEMoQ55ahUTV9EUq9WYXsPbeI9OXPPGLdQM8JmcUADYScMk9Fob
	3THMHPHgGv6fQvCC5FARtqAVcdZOcbHUwlUHK9BGCdxMafxeDvHFjikg8esz+kD/bKuWCZK4pZO
	VeXGBYzMKN0VoUiSJ04OrNWVHTdjsRZ0uO6+zbNA8XuS1CfrC882L62v1C/az29qO6y7krfykqz
	zLyLa8xccN+6GMiXiBC2LEUhXGv/Qa6EgTIW2/gGHN6PxA6vzZuw==
X-Google-Smtp-Source: AGHT+IGEKU2F7RouDiDAU+O5ZXJF5KXX7hpByUky1BUiO9h2llr9yFPyv+VlCHc50mSyNAzudGyZAA==
X-Received: by 2002:a17:907:2d90:b0:b2e:9926:3901 with SMTP id a640c23a62f3a-b7070627711mr22678366b.6.1761848443115;
        Thu, 30 Oct 2025 11:20:43 -0700 (PDT)
Received: from ?IPV6:2a02:a449:4071:0:32d0:42ff:fe10:6983? ([2a02:a449:4071:0:32d0:42ff:fe10:6983])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d853c549fsm1833865566b.37.2025.10.30.11.20.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 11:20:42 -0700 (PDT)
Message-ID: <3e461bce-e8e6-48f1-a296-34040447ff25@gmail.com>
Date: Thu, 30 Oct 2025 19:20:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] arm: dts: rockchip: rk3288: remove mshc aliases
To: heiko@sntech.de
Cc: robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251030_112045_336292_59FD1713 
X-CRM114-Status: UNSURE (   8.48  )
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
so remove them from the rk3288.dtsi file.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3288.dtsi | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288.dtsi b/arch/arm/boot/dts/rockchip/rk3288.dtsi
index 42d705b544ec..7e284b4fecdc 100644
--- a/arch/arm/boot/dts/rockchip/rk3288.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3288.dtsi
@@ -34,10 +34,6 @@ aliases {
 		i2c3 = &i2c3;
 		i2c4 = &i2c4;
 		i2c5 = &i2c5;
-		mshc0 = &emmc;
-		mshc1 = &sdmmc;
-		mshc2 = &sdio0;
-		mshc3 = &sdio1;
 		serial0 = &uart0;
 		serial1 = &uart1;
 		serial2 = &uart2;
--
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
