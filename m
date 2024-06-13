Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A039C27C4F
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jun 2024 18:08:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qQnZabNvK+9QDCmLAvsuSwYBv8HJke4/0Fcm/69hXYI=; b=EjwD/8CyOaWXGB
	0sBPMOhZMYDoakl2I+MHro8OC+zxMn+fNVZByrNOYm4sqk0vojSJSf+I9/ce0+gvqfRivKZ37fM2d
	+RPxI/PhrKGK6wmzopYXviRpRNs4nf2jFzUFNFt8DDUjQHDeR9/PBdbXZG8B5hU5pKI1Gi1wFdcbZ
	i5y8+NtbMwFsJTKOdTEn1woqZg6BEOF5IGbeGVmYlyke7BsSOuzmG1VrgGym7ktEDmP/D3ynO4uOI
	64S8K1VPyHnmynN1067XC0LUs1ixNHfb/FRyn+IAmS16H/22CNrdubXmzwAlO6U5uTvG30Kzd5ly/
	EZSNTiUbgKzDYSuasMNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHory-000000001bA-0GxB;
	Thu, 13 Jun 2024 18:08:18 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHorv-000000001aM-18MK;
	Thu, 13 Jun 2024 18:08:16 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-a689ad8d1f6so178470866b.2;
        Thu, 13 Jun 2024 11:08:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718302092; x=1718906892; darn=lists.infradead.org;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/gw4HbQqanrMYHqUcy6MXoBus6RlMuEHtMxxTOpqIgc=;
        b=LyRMd7r4oXERIdIcMoy5SVYJ9Ea6NrBwesnIPED+k8Gwym40Z2LbIeOtWYQV+I8ReN
         Ol6XhmCGK+zM80CRNVwetFCWhBbWAM9P7Oq55lwhF+uGbwst9Di2SPK5l+QMcBPFcPNL
         YH20xFwXIapUIf8wItW4IXnYbH3s3s2mFU2WR94VARz4VSD0GlYIrPKzzOniAoA3UFoM
         VW0uFeNldgLGrxtOlZBFZSJoCYBcINvLBiPk8nuFfpH7xGkh1k6IWHRjyWMe7wGT8of7
         2Km4wNzAbDxpdGCiR4qfTNGm6b/UAV/GVjeBTmnKzWOrf52vZcJZqRL936Qp1EqXHbfH
         2SLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718302092; x=1718906892;
        h=content-transfer-encoding:content-language:cc:to:subject:from
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=/gw4HbQqanrMYHqUcy6MXoBus6RlMuEHtMxxTOpqIgc=;
        b=Lq5OLt40x84Bht6qSrJtrqjT+qw/ciPZxqaPCVsC1HUqsFaIIxnN9Nf1C4cFdnP9xf
         vOMEeNsVxXuLMElZ7MrjP2HdNanQJGIiAmKCmZu93rMb5gyCfz3K1Ew4B+yXEoaJrS2q
         piw21vgvKdVqOunz7zx/4BjaNV2Kq5ZxE0bj0mQz86NN979yBIQiOljdm2hbFWOR0vfU
         kIlcBvQUdbSIBKIPrr2VBqVYjPQTHNhpb6pImYMGkSmJ0e4jeRUEoF3hs8zZH2Ppy8ir
         kUQq5plXQ33xkBaF6rO+vxkWtLbTyMD6drfeGVaBWIlSmuO/BI3EVSBXFLWpN5TC/zfP
         /ORA==
X-Forwarded-Encrypted: i=1; AJvYcCVfbGMgk34+Kli1Y7xsNjt+6wi0OjFZLBX1K6Zn7qQm1Cz8GczH/4akdRP4Kv5YjGMU+gjvHg8qqkHwvfyRARUgQ7Q+CaPdSfAo3Dx2zVAg8NU3caz826/UhOwIqly8Cys2vpe3gvOS4T7QG8TQzO5h/Od+spqlbYE=
X-Gm-Message-State: AOJu0Yy/bAR3oK5TvxTm5T1nkuBvpWWTNQ4zg5+J+lFAy2x4143m2TNN
	OY4aJwhh3dGYW/wB/t2JmwkBGxRt0xE8nzArp6ELOg7NViYDzjoM
X-Google-Smtp-Source: AGHT+IEvunQmyXvYIiGNYWK0NZ+Ni4qDh+QbUz7eebrHHd/Em6fFl6x6N5uU1JUQd83Vytuvl1621A==
X-Received: by 2002:a17:906:16ca:b0:a6f:1b5b:2acb with SMTP id a640c23a62f3a-a6f60dc1f3bmr31784866b.59.1718302091633;
        Thu, 13 Jun 2024 11:08:11 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a6f56db6182sm96247466b.51.2024.06.13.11.08.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Jun 2024 11:08:11 -0700 (PDT)
Message-ID: <8b229dcc-94e4-4bbc-9efc-9d5ddd694532@gmail.com>
Date: Thu, 13 Jun 2024 20:08:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1] ARM: dts: rockchip: rk3066a: add #sound-dai-cells to hdmi
 node
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_110815_342405_E221CA44 
X-CRM114-Status: UNSURE (   8.41  )
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

'#sound-dai-cells' is required to properly interpret
the list of DAI specified in the 'sound-dai' property,
so add them to the 'hdmi' node for 'rk3066a.dtsi'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3066a.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/rockchip/rk3066a.dtsi b/arch/arm/boot/dts/rockchip/rk3066a.dtsi
index 30139f21de64..15cbd94d7ec0 100644
--- a/arch/arm/boot/dts/rockchip/rk3066a.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3066a.dtsi
@@ -128,6 +128,7 @@ hdmi: hdmi@10116000 {
 		pinctrl-0 = <&hdmii2c_xfer>, <&hdmi_hpd>;
 		power-domains = <&power RK3066_PD_VIO>;
 		rockchip,grf = <&grf>;
+		#sound-dai-cells = <0>;
 		status = "disabled";

 		ports {
--
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
