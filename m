Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9018C369D9
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 May 2025 00:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DdgMAXPG2b9QZ6CjkQYw3YPAqT6hs+BVkVBJpXeWdl4=; b=F/KT/qGA6ZFYt4
	mDrNSKoR4/cUjg453zSEUia1GrJBxPjdK+Qh6tPnAyVZHm9PXyX58czYkpwJcFJfeFWlNMVJzb3+K
	3VAr0XcCLtgsVCY6SZVS1DKQD+kWGFjNrL907Jk8tpdZaWH9OsWc/vmhq5xIShcddKbxY+zPuuztP
	fMAxE3WrJxJwXlUsbh3DYespS87I2tcCwikXjwvo//fWG44/ACeXusYYepFNNHBxt6UAD2rSygG9t
	GAyIo9l4jQ2L4kTm7CjAJi/6FYA0cl3YNuF/G1F/XSTOT53k7boZB2wgJoa0N4oZZN5loy09t+FY9
	WGLgmfBi+NIqhtxAhjiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAI6u-0000000EKsL-1WUs;
	Thu, 01 May 2025 00:49:08 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAI4y-0000000EKhg-2e4M
	for linux-rockchip@lists.infradead.org;
	Thu, 01 May 2025 00:47:09 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-43ea40a6e98so3357185e9.1
        for <linux-rockchip@lists.infradead.org>; Wed, 30 Apr 2025 17:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746060427; x=1746665227; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CtBcAAqRumzpJ4rTrz/zowPnd5Z+XJBF3Z8VAMzb0d8=;
        b=E3J5sSPJQA5W/2J9Ot7Gt7kRwjIVXqE/TBLz4WhsmOYYW0qcTlizSZ7xHrLuWQN7+e
         fEtrJkl4y9kJT21pjRcEERpe/8dhtxDHZZqEnrPoM6JjEZXuQS5Q2AX6B0UrQYsgNiUX
         +iOMm2CasM+d8wZOrxDb9YPAOwuohjm3k2jWu2kXaUFJUXqFIccnSlOAQ8y6k585HnTX
         rIgvaSO7Sld/6U2U2J1DwrMzMSs/Uj+VmcYLgFvJ/X9cLMfuhUjl+LM14+3a7Fph9NdH
         XTfap91jWMaF/2zuGwLUEJ2Nx91DGhFgybsfE8hVajj41HZAB1owkpf1frgAaGtbIN2v
         8DgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746060427; x=1746665227;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CtBcAAqRumzpJ4rTrz/zowPnd5Z+XJBF3Z8VAMzb0d8=;
        b=P9jBQwNJ/znM7DlyVZRf2YvovH5B1N2mkd9ZTBk3+mNN2Z0lNU+Z2Yb1xeUZkS1+Eg
         UjTZn55NPc9thEtYOJ5nDCQZ8YkPsMwhg5QHy7gez0YyC1LHDzy8qAbUfr7V61G/AuuN
         nbce8F2RNiz3XIqn8qH3eLvgOzhlCC+2bAWlKLNP8ruGIlpkLw1I6E2MZiR1PonTpA5w
         qmOwXyrdx/zgHEkMtglJ21VYMLRcVHoCHumGngIj9Ab0/3k3Gs1SUdwN9XZXSSOlgSm6
         AwxedYrwc/prIvdYAL0xaXYy5SMPLVK3Y5fbIlDJBlqX+YcqjCiDMbeR+1bS8oGKk3tH
         FasQ==
X-Forwarded-Encrypted: i=1; AJvYcCU1MjzDjwLMSQdH1JpYnZwMIGoG53jLWUGhioN9qMfkdtiVGUqVDcYIu+CVgrt5jBEeEhOe5hj1FsEDgkN1Ng==@lists.infradead.org
X-Gm-Message-State: AOJu0YyZ7FIjf2PehXW9iOe91XLw964VNu060urHfgUQxS2+4itUT4y/
	T4YokKafM0hf+ea66m92tPUFM1itwcYr7MGx7kPpfvgweQW7+pKVb+F4Jft8CRg=
X-Gm-Gg: ASbGncvsk5FrAEzKsLOuDoZE5DaLuTC60hosnhc+T7UG6wp03YnBVYqhXlVzxmwNPKP
	wD6K0C7gcgyYAqfLfMXChi//hZ8QLuXO8xoxQGYN1ON5PqNFOBLgJ17HBfp88y7csYigbNslWZJ
	0lf1n6fYebzOY+U04nO82bFBWkonMyC7qwsXyy8uYkWT1JJNnO96KLX5THJUCzxFzj090utxQUT
	nRy98NuBPjfqzdMiwC/lo59niqrmOygBwgZi02gTUcGP7pGnVpx6cfB2me8A2EKaVGyQrZ2myFV
	YBtFBwVpnbm+BtODJmiHa4f/Mv31mcKF387lAIlc+zuBfbDds5Ut/aLZDQ/ysSMmvMBTuOgeZUW
	0jZ9IUg==
X-Google-Smtp-Source: AGHT+IFmbHtqypFHAYEgz34XK2p65MJanyk+f1Rp4pEz/8sdgn2En5b9QtiOnbh8idGH+h36WMLiqw==
X-Received: by 2002:a05:6000:40c9:b0:39f:fd4:aec7 with SMTP id ffacd0b85a97d-3a08f752673mr4547696f8f.7.1746060426770;
        Wed, 30 Apr 2025 17:47:06 -0700 (PDT)
Received: from [192.168.0.35] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073c8ca99sm18107538f8f.20.2025.04.30.17.47.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 17:47:05 -0700 (PDT)
Message-ID: <5aa6b273-bb99-421d-a2c5-deef7839d284@linaro.org>
Date: Thu, 1 May 2025 01:47:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 09/13] arm64: defconfig: enable rockchip camera
 interface
To: michael.riesch@collabora.com, Mehdi Djait <mehdi.djait@linux.intel.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Gerald Loacker <gerald.loacker@wolfvision.net>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>,
 Paul Kocialkowski <paulk@sys-base.io>,
 Alexander Shiyan <eagle.alexander923@gmail.com>,
 Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>
References: <20240220-rk3568-vicap-v6-0-d2f5fbee1551@collabora.com>
 <Vz96yQCdUZBjbVQtcrC3gaAUO1ximV0-SLkMByaR1p3EoVY61j98hMKsCQf1K1MnhDA6w92yhopnWMuUQRaRsw==@protonmail.internalid>
 <20240220-rk3568-vicap-v6-9-d2f5fbee1551@collabora.com>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20240220-rk3568-vicap-v6-9-d2f5fbee1551@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250430_174708_663929_FD41F729 
X-CRM114-Status: GOOD (  13.48  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 30/04/2025 10:15, Michael Riesch via B4 Relay wrote:
> From: Michael Riesch <michael.riesch@collabora.com>
> 
> The Rockchip Camera Interface (CIF) is featured in many Rockchip SoCs
> in different variations. Enable the driver for it in the default
> configuration.
> 
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> ---
>   arch/arm64/configs/defconfig | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 5bb8f09422a2..110ff52195a6 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -858,6 +858,7 @@ CONFIG_VIDEO_RENESAS_FCP=m
>   CONFIG_VIDEO_RENESAS_FDP1=m
>   CONFIG_VIDEO_RENESAS_VSP1=m
>   CONFIG_VIDEO_RCAR_DRIF=m
> +CONFIG_VIDEO_ROCKCHIP_CIF=m
>   CONFIG_VIDEO_SAMSUNG_EXYNOS_GSC=m
>   CONFIG_VIDEO_SAMSUNG_S5P_JPEG=m
>   CONFIG_VIDEO_SAMSUNG_S5P_MFC=m
> 
> --
> 2.39.5
> 
> 
> 
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
