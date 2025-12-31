Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 320C0EE6428
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Dec 2025 10:48:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4zZuCv/zzfKTs15wLAuxNRrM8XkvkoYuk8B1DJ7omC8=; b=dYW+2bbkip8UFI
	S3PfzY/RTVCH+JJ1rlvEgPJapu9U3o6eJEkTC3deQJJJfqCRAyhIwDwnWqePN7GH/+ZA26cbSwz+d
	4Fe2SfD8XbguFSASxccxkk2zHQt67l/hcjgg7s3lJTmarvQTXc3rF8lyil8FNT0YaryAFfIUGDr+L
	7XnC9TnlZH8dtf8/ANORa6iAdfhrv9e4/Oq2fFOEoHlBR5fhe7clSOQ1sC+qEbHjGOnVDXKn0d8x0
	S11Nbe4gnLkIaP6PLtrZTH3WNvsIalpImTZ6rbeuyvBoBFDwfo4JR3YfAAb+uvJKi9FguOlxMbuz4
	WbCy8EtKSFA2dJc27e8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vatkL-00000005tYy-0xKQ;
	Wed, 31 Dec 2025 10:48:05 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vatkI-00000005tYD-155H
	for linux-rockchip@lists.infradead.org;
	Wed, 31 Dec 2025 10:48:04 +0000
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-64b81ec3701so17118743a12.1
        for <linux-rockchip@lists.infradead.org>; Wed, 31 Dec 2025 02:48:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pardini.net; s=google; t=1767178080; x=1767782880; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F93O35PumyM940gks6WuFLpakwWFLPgJeDsUaIQB1m8=;
        b=ifGKTaSWhbPppYeVL7Plftv8HN/7H4J8nzb/+fALDk/52jAXqfTZuQrbOFDStco7pN
         bJehBj9i02IiMS8tyhG1PM2+UeB1YUpPqgKdCg65Trr3nmqXZFpsqpCBoJvIAc3Voqa0
         4Z4mwyk0v/NgmG3Qw8EUkZf7zTGJcsjSRd0W8DyTSRyrjtNULWduv1JRGXsdL4IzC4UA
         gUitfRBKiAoGs/mkTDvZr+4c/hLFZkaIR7nHArEHDwGBKcgU3d3NiJIXAizU98fmdvX1
         G01uka7l9Mp1iG3b8GlJigICorMSG3/dsNuZ2VOWj49aI/y5iX6Md2XCUq/dWpsAfT5k
         uz2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767178080; x=1767782880;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F93O35PumyM940gks6WuFLpakwWFLPgJeDsUaIQB1m8=;
        b=Jus9ckZs0JFofXyj7JHpUPfivzvsX8tNLf21mHT2fSE5RJmAACX6lSpawO1BLuvO4W
         2pgnpiUmJ4dhxNkLYHcDZAAr5tqUq3/eUxMO0aDmnUdP96gsfubPKeqpcB7akhBV4yYq
         hht4Mk+udzEgcZ+oAdH3/1FzfGH4l2eWBi9JNRdfIzImvufelTgvKWU+uIVo8IWd94XH
         mAXOV7tQsi1tuewmXegpw0AaqIMb272r9TLrsjD6aRir+S+/KGuDxiAjF5iskyUXFYO1
         /Va7l6ci4P9Ev4uYB8L2SP5dpG8RjbLW9T+TsofTGFYMzhz/ZOBclhPd+4bheA46RYmB
         zvPg==
X-Forwarded-Encrypted: i=1; AJvYcCWnyESD+bwSs40+VLNjDA055pvJ1mhrSc16+lq58/E5IKvLkq1h4bE7paP/2xgIHT8od7iQ1iZH35SmHpDukA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyLPaHdXrzddbv1WxeZwaulhfxSGJ/UxnJIloR72ZrwUVR+pteA
	JzH9wFKwy0VtB2DOQpP37x0k+wYR8AOmN2h3ZN0eu2x82yF6eW8xTTxM+wKedrCe3h0UKbkK4Jb
	0/msDUg==
X-Gm-Gg: AY/fxX4BIYAcZjw1/SqZTc6RyKHRhsSl5JOvxh7SA6+4p2xYw9uFRzkf8hIsg1R6Bt0
	rBtJknOIGncTMCKm3XSChJay+FCZ+kpzemjHDlm1ek1YuKJwakYnP+ATotrs7zuYsQN/F0LNyhm
	gKRbyQGG1zRX/58o/n3C8la4g3wbF6A6Glx0ROfAYWMeljjRWwkHnV38OIotNxaNXoOuKbAY2nM
	BnVrGmgVU+cI+tSWm+aDv10rUyeVee37vVyQ65YIQwAATOIKAJDGVV5xGCMJjrugKFNGM2tQvnr
	CZZJCo23hTMG25F2OeSLmgK8vD5vSKbCkYZRWWnHYIB+JfAgUes+6fsVHCHVLC/nbrBhP7KUMVu
	wwCOCh/aP1H9W/M2AWY4ligKYMDioSBdvi4vWe1AA1XwJ08PEm3KAnuWv2O7fgFsvnDcnPPE1Fn
	D8qchdeSXsljRwoUdxtS9bHgrGLpnwpJmYd3jcnY8GmO5/dBckQJXJEnEXZbUZ3qzauVkLb7EzD
	Ou7GIaKYa5Rg/7iCG1oiXrmuX54E4L48Z89CeQtmy/ypjQJ21fTZOVumiLBsb48EEPi
X-Google-Smtp-Source: AGHT+IF3qhSpzRRJ00xM16d/rHst6xExjWudsQHkK88MVOiMn97mRDN/nVNkVEeTmwCRmO4z98V2LA==
X-Received: by 2002:a17:907:d64a:b0:b7c:e320:5232 with SMTP id a640c23a62f3a-b8036f0ae81mr3704046166b.5.1767178079658;
        Wed, 31 Dec 2025 02:47:59 -0800 (PST)
Received: from ?IPV6:2a02:a466:4d7a:0:4db8:192e:8b05:7bd4? (2a02-a466-4d7a-0-4db8-192e-8b05-7bd4.fixed6.kpn.net. [2a02:a466:4d7a:0:4db8:192e:8b05:7bd4])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8080e2177csm2948161966b.68.2025.12.31.02.47.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Dec 2025 02:47:59 -0800 (PST)
Message-ID: <448acb0f-fa4d-45f1-83c1-7146cda9fc25@pardini.net>
Date: Wed, 31 Dec 2025 11:47:58 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Enable the NPU on some rk3588
 boards
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 nicolas.frattaroli@collabora.com
References: <20251230-arm64-dts-rockchip-rk3588-npu-enablements-v1-0-d38b182a59e3@pardini.net>
 <CALWfF7KHyKmDcEL9=mYzfCRWc_cymNscoFdeXr8P2frJeww5vA@mail.gmail.com>
Content-Language: en-US
From: Ricardo Pardini <ricardo@pardini.net>
In-Reply-To: <CALWfF7KHyKmDcEL9=mYzfCRWc_cymNscoFdeXr8P2frJeww5vA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251231_024802_388042_E968106E 
X-CRM114-Status: GOOD (  10.08  )
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

Hi Jimmy,

>> This series enables the NPU on a few Rockchip rk3588 boards.
>> In every case here, the required regulator was already described.

> Now that the pd_npu has defined the dependency to the vdd_npu_s0,
> shouldn't the regulator-always-on be removed from the regulator? When
> the Rock5B enabled the NPU, it didn't define the regulator with always
> on. [1]
> 
> More specifically, the commit message for the introduction of the
> pd_npu label mentions how the regulator no longer needs to be always
> on. [2]
> 
> [1] https://lore.kernel.org/linux-rockchip/20250721-6-10-rocket-v9-10-77ebd484941e@tomeuvizoso.net/
> [2] https://lore.kernel.org/linux-rockchip/20250721-6-10-rocket-v9-7-77ebd484941e@tomeuvizoso.net/
Nice, I overlooked that. I'll send a v2 removing `regulator-always-on;` 
from the regulator.

And maybe a separate series removing it from the the other NPU-enabled 
boards that still have it?

Thanks,
Ricardo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
