Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98D28CAC59A
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Sep 2025 21:07:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VC3VBRoyh8n+hCDjOmc0igDgYzxQ+PNpb583T1tx8MA=; b=tecy6hkjMUOtQ4qzufaW3oPQio
	erE1gZrZgZQpbaW3it+UwoKsJT5CksOmAuHGI73iIXeU1SW/F9gWW+JT5vblAYOJCZtAa0TCX5Y3M
	chH/GmwVgwN1Qi4y8z6Kx3rbrJne/YKtsOHDkbU5W4OOyyka2zKFv3UeYWcFAtiTywAlEIlvToSpK
	uerS5csOKqmNYpQ/pC6crmAmOemaiAUs1xCZg7UQzhmT0BVxavt4WW3Ii8v5QlCn5ZG8rmcI5LXox
	8DkX1jDBGvPYYgiW+0BqMPul+qU2z3cAy6D0gQRr0Q3XqPUvsQsDPX66MHK5UqOocmbWdFP7lHPnG
	FqfSuOXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0RH3-00000008E2U-1Hvh;
	Sun, 21 Sep 2025 21:07:09 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0RGz-00000008Dzk-0ZO9
	for linux-rockchip@lists.infradead.org;
	Sun, 21 Sep 2025 21:07:08 +0000
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-26c209802c0so20700355ad.0
        for <linux-rockchip@lists.infradead.org>; Sun, 21 Sep 2025 14:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758488824; x=1759093624; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EV+MWhbWq2Q6vqymybluCls4t1NNkCevTKd69KW1i7o=;
        b=CJ/4UGOeBOStd4qSfj3MVXT+ZhaffWFWQnkfhz5wDo8y9NraVbYm523N96jFh+ckbD
         gSVF93sKsN20b7R3Qjkj80yPP08igahBwoWRk/A5xRL40s76RBJmrKxcJx+nNz+bdoAD
         AXLTqLFFIqM12CiJsH/+77bSOhvSaAtWfiOLwQk3fn+b5ZgOnpwTgpQ871isDdgpHABv
         +TC+zovUdbfvwZmVaH5M5X6KCGG9Jn5jEejFtuOBTrwt4ZEPg6jVqidVc79YkzrJ4UvM
         hCd0PnjJAeTqDfg0Ck4JRmOYit3zHKjEsgtVOsbXQXDA/TR30M5f2FDQoRFY7cCZxy9x
         hDJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758488824; x=1759093624;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EV+MWhbWq2Q6vqymybluCls4t1NNkCevTKd69KW1i7o=;
        b=SmWJ2oJWyX+KAikJvFgiE+A/ZY5uR56EGpz0Dwc8m1tYkJ0m2iAyj6kr6Zs2wqfMbS
         jM2k8BKTuAPrr34yrBTUgv7PwEKnku986cesBppa6RzKCK1vBPmWctbQ5myWjjSwSgrk
         ffi/mhpK9Skz51HJVig5Pct3HsMzCs7bNQr1G7a3woMOiLN3I7ZCeBBSzJvvGfSYgOtu
         hVPMg4CGeJujmbQrcXhnqzxw3ztgQwVx5p2sSrzxOGYY/oY7LGkxFwMQFxa3SCdK5lVk
         eEQA0kcJTSnwlDcCAXFyRYu1J+MLszbfDkOX1mjjAMdEsbH29q48axdVzTSV/jqZfOtD
         YPDw==
X-Forwarded-Encrypted: i=1; AJvYcCUiSdL9nZ78lE38LzLRiIG2bK9kkJUdy1z5F+oui5yFiNuZ1LO09OwiQzoNhVjQKCBPhUULwAXeQKPuq+7y3g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz597F40fBCcYFqxImka4pmwJP0lZz5giJ67tBMDZTxWLY06Ruh
	YvnpKjIEoAtWFwJIKPK9dQzLuO6nIeBwakO1lVx6/BLmqii24gWpCIot1djDzOrPaqU=
X-Gm-Gg: ASbGncuyvN0n5iiTh+fRWjn/ghdW6tdLhHbuxahr2uL5xS3czbTuSvaeprKzvI8mr4V
	11XU3TBkOAeXMH6WREq01BuFREUrc/xhb2aT7kbYRTi4UulpPgdegSfRCHZJlw7RgYkOGmPhQf7
	+KD9TlZLEuisFJzh2ImJ0uCcUVVvJZYidawC+yzSi29Wx9Tp113WJq40MpyLxciKcVs7cAOQ9Mj
	K0+SzNGeCthKUiqcBOLtwDbD9IYaic71Z4Au5LCPn+o8wORBAWQDBLvXouoNjAb5Z14Syjb+gz5
	0DV/EYaa+st5FF0XcTwzuXLrGw23H0A4coOT1lEosScgbfH92YqmKkmnQEQWN6/3KiTb8IR89NM
	sQouqxZL3m4Fq1QpY9jHo+dN7m2w1P7Dx/x0NOEN56nRTQCb0opn5UDaaQbvZZfFll2S+ATn+On
	cU
X-Google-Smtp-Source: AGHT+IEBhz4Vgcda0CmzO3ZZWUM5pIo4myqFp0/op8mgrMOJGUmsHkIt9o5tgVJoYdz7yYLG2MoAFg==
X-Received: by 2002:a17:902:fcc7:b0:24c:cc2c:9da9 with SMTP id d9443c01a7336-269ba43410dmr99531245ad.14.1758488824280;
        Sun, 21 Sep 2025 14:07:04 -0700 (PDT)
Received: from [192.168.68.63] (104-12-136-65.lightspeed.irvnca.sbcglobal.net. [104.12.136.65])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-269802e14f1sm110134725ad.71.2025.09.21.14.07.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 21 Sep 2025 14:07:03 -0700 (PDT)
Message-ID: <649ca4a6-3158-4c52-bad3-6c266edd177d@gmail.com>
Date: Sun, 21 Sep 2025 14:07:03 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] arm64: dts: rk3399-pinephone-pro: Add
 accelerometer sensor support
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megi@xff.cz>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250921-ppp_light_accel_mag_vol-down-v2-0-e6bcc6ca74ae@gmail.com>
 <20250921-ppp_light_accel_mag_vol-down-v2-2-e6bcc6ca74ae@gmail.com>
 <5b6ijumsm6bgqymsfc25frqzjlpiryq7iupuk2pokcb6d4bz56@yqrz6j3oj5ga>
Content-Language: en-US
From: Rudraksha Gupta <guptarud@gmail.com>
In-Reply-To: <5b6ijumsm6bgqymsfc25frqzjlpiryq7iupuk2pokcb6d4bz56@yqrz6j3oj5ga>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250921_140705_201755_DB9D2AE7 
X-CRM114-Status: GOOD (  10.18  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8sCgogPiBJJ20gbm90IHN1cmUgd2hlcmUgeW91IGdvdCB0aGlzIHBhdGNoLCBidXQgaXQn
cyBub3QgZnJvbSBtZSAoSSBrbm93IApmb3Igc3VyZQogPiBJIG5ldmVyIGRpZCBhbnkgbW91bnQt
bWF0cml4IHRlc3RpbmcvRFQgcGF0Y2hlcykgYW5kIHNob3VsZCBub3QgaGF2ZSBteQogPiBTaWdu
ZWQtb2YtYnkuCgpUaGlzIGlzIHdoZXJlIEkgc291cmNlZCBlYWNoIG9mIHRoZSBjb21taXRzOgoK
LSBBZGQgbGlnaHQvcHJveGltaXR5IHNlbnNvciBzdXBwb3J0CiDCoCAtIApodHRwczovL2NvZGVi
ZXJnLm9yZy9tZWdpL2xpbnV4L2NvbW1pdC9mMTcxYmM3MDEzYmM3YWQzZGU5YWY4MTdiZmJjYmZh
NTQ4ZWJlMDFjCi0gQWRkIGFjY2VsZXJvbWV0ZXIgc2Vuc29yIHN1cHBvcnQKIMKgIC0gCmh0dHBz
Oi8vY29kZWJlcmcub3JnL21lZ2kvbGludXgvY29tbWl0L2IwYmI3NjMzZTA3M2E2NzYwZmEyMTNi
OGM0YTc4ZWEyZTczYzdiZjEKLSBBZGQgbWFnbmV0b21ldGVyIHNlbnNvciBzdXBwb3J0CiDCoCAt
IApodHRwczovL2NvZGViZXJnLm9yZy9tZWdpL2xpbnV4L2NvbW1pdC8yZjdlNjdmNDUxZjE2ZWFm
MTViODFhYTFkYmRmMTI2ZDU0OTI3ZDM1Ci0gQWRkIG1vdW50LW1hdHJpeCBmb3IgbWFnbmV0b21l
dGVyCiDCoCAtIApodHRwczovL2NvZGViZXJnLm9yZy9tZWdpL2xpbnV4L2NvbW1pdC9kN2NkMmVh
YjkzMWUzMmZhOTQ0MDhhOTZkNzNiNGU2YzA2MTYxMDdhCi0gRml4IHZvbHRhZ2UgdGhyZXNob2xk
IGZvciB2b2x1bWUgZG93biBrZXkKIMKgIC0gCmh0dHBzOi8vY29kZWJlcmcub3JnL21lZ2kvbGlu
dXgvY29tbWl0LzdjNDk2YTVjYzI3ZWQ0ZTM4Yjc0MGYzNmMyZDhiMmM2MmY4MGFlNTQKCkkgd2ls
bCBhZGQgbXkgc291cmNlcyB0byB0aGUgY292ZXIgbGV0dGVyIG1vdmluZyBmb3J3YXJkLgoKCgog
PiBMb29raW5nIGF0IHdoZXJlIHRoZSBtYWduZXRvbWV0ZXIgaXMgbW91bnRlZCwgaXQncyBtb3Vu
dGVkIG9uIHRoZSAKYm90dG9tIHNpZGUgb2YKID4gdGhlIFBDQiAoVTI5IGNoaXApOgogPiAuLi4K
ID4gU28gYmFzZWQgb24gdGhhdCBtb3VudC1tYXRyaXggc2hvdWxkIGJlOgogPgogPsKgIMKgIMKg
IMKgIMKgbW91bnQtbWF0cml4ID0KID7CoCDCoCDCoCDCoCDCoCDCoCDCoCIwIiwgIjEiLCAiMCIs
CiA+wqAgwqAgwqAgwqAgwqAgwqAgwqAiMSIsICIwIiwgIjAiLAogPsKgIMKgIMKgIMKgIMKgIMKg
IMKgIjAiLCAiMCIsICItMSI7CgpUaGFua3MsIGFkZHJlc3NlZCBpbiB2MyEKCgpUaGFua3MsClJ1
ZHJha3NoYQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
