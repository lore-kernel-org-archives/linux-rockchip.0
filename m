Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B94CFF885A
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 May 2026 12:56:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XhZDHYxO8WhRkFN9WoQ9ofqnbUjWQbJBA8Ou1HFGHa4=; b=5BTGXhnOt6s4Dr
	wvHzO4NvPIRtfIrpCZm6gmn4j9/JYtifK4GmdKR/kWfA0hm2/nrKQBWodbioUx8EgBksMYniusH4K
	bq5gz2kavKR4ymzEDRHOS56h24lab7zvDg1LDVrindABBT5tZwMgbQ6qG6gND/8LyvkZyZ2P4vsxN
	wtR0QMwKa0d7M3r6uVztHL8cSR3yFACXXAN1K8Zyo1FOsBdjzsN8v2/Gd48isQcpxdRm6RWqPmIZv
	86E6b9dBcbKZhH5SGxcySkGGLFNtGHK0XF2lWZmHcFEzQw4YiWv9l3UCV/ORuPqxeqB+nvNhpS7X6
	wo35QMPB+mT/k5df80nQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKFKI-0000000GFgp-24W4;
	Tue, 05 May 2026 12:56:38 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKFKG-0000000GFfo-2h5w
	for linux-rockchip@lists.infradead.org;
	Tue, 05 May 2026 12:56:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id DE7DA6014C
	for <linux-rockchip@lists.infradead.org>; Tue,  5 May 2026 12:56:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 94EE1C2BCF4
	for <linux-rockchip@lists.infradead.org>; Tue,  5 May 2026 12:56:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777985795;
	bh=ZUs4wo3g3+7GpdmJ7ncT0CXa7bmF1VEsrvwglg4jLoE=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=hzodQ2NCG9zoh2XqXyjZl5yyYhCcjuWCm9xc/oDTNJN1WJLwwL4HFEEMw9c8vQxSB
	 //Xl5vKkviuGByHP5wUr5ppSPYKuYFZ9OO0iUFN3H3myUY7ktL+tolifDlitP26ngm
	 P2Ng3zfyVql6y1Oc8dn9tQA25C4f7gJ1V3P6lr+Dy5b8QDs61od9yKdadTwEqofx7E
	 Iux2b2dydeMXEVmqSYTJjk9HGstHpKXAO8vFfXpOiEYdHQ91v0SIZi5qVgvaVmyMys
	 EbFAso9I0L52rHJC+2erRMZ8fQaDgGu0r7ZbzddawxTG6n08oAPfF2l+Dt5FJRIgUN
	 IED1yLyvleX7A==
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-3937014be0cso31957071fa.0
        for <linux-rockchip@lists.infradead.org>; Tue, 05 May 2026 05:56:35 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ/3Nmis1uE8+vbgKJZTQdT0NhbBxxCo3Dj3CTNb6AbMfGCk7rKs3wLIp7jcA1JGdHVa2WhRSFrBTLkA3HNLEg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzwfYx+gz4AHjofNjbE/NnRHEBE+TfPdFSMzr4LujlGmLhwN+CT
	Yvg3VbfN5zpMW3VjsODaix5m+zBOCfZvfN3KI82G9Br4VYjBr0XAJ5BJjmM/rpcz5r2uaz+qrOX
	RSBSA3wuVJS5uelookz0B2361RNxfzZc=
X-Received: by 2002:a05:651c:324e:b0:38e:aeab:9ba6 with SMTP id
 38308e7fff4ca-3937850065bmr44277651fa.24.1777985794358; Tue, 05 May 2026
 05:56:34 -0700 (PDT)
MIME-Version: 1.0
References: <20260505094321.75040-3-krzysztof.kozlowski@oss.qualcomm.com>
In-Reply-To: <20260505094321.75040-3-krzysztof.kozlowski@oss.qualcomm.com>
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 5 May 2026 14:56:23 +0200
X-Gmail-Original-Message-ID: <CAD++jLmzzcp+CUKmr6-WLcDmB2zaOki_DTkvADOQ6V-1g710HA@mail.gmail.com>
X-Gm-Features: AVHnY4L5pGyidj4m0uJSds10p3ObB3yt2OdQMJ_NihpEGQGZ3UJKnYpGnOY1ZG8
Message-ID: <CAD++jLmzzcp+CUKmr6-WLcDmB2zaOki_DTkvADOQ6V-1g710HA@mail.gmail.com>
Subject: Re: [PATCH 1/2] pinctrl: bcm: Move MODULE_DEVICE_TABLE next to the
 table itself
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBNYXkgNSwgMjAyNiBhdCAxMTo0M+KAr0FNIEtyenlzenRvZiBLb3psb3dza2kKPGty
enlzenRvZi5rb3psb3dza2lAb3NzLnF1YWxjb21tLmNvbT4gd3JvdGU6Cgo+IEJ5IGNvbnZlbnRp
b24gTU9EVUxFX0RFVklDRV9UQUJMRSgpIGltbWVkaWF0ZWx5IGZvbGxvd3MgdGhlIElEIHRhYmxl
IGl0Cj4gZXhwb3J0cywgYmVjYXVzZSB0aGlzIGlzIGVhc2llciB0byByZWFkIGFuZCB2ZXJpZnku
ICBJdCBhbHNvIG1ha2VzIG1vcmUKPiBzZW5zZSBzaW5jZSAjaWZkZWYgZm9yIEFDUEkgb3IgT0Yg
Y291bGQgaGlkZSBib3RoIG9mIHRoZW0uCj4KPiBNb3N0IG9mIHRoZSBwaW4gY29udHJvbGxlciBk
cml2ZXJzIGFscmVhZHkgaGF2ZSB0aGlzIGNvcnJlY3RseSBwbGFjZWQsCj4gc28gYWRqdXN0IHRo
ZSBvdGhlciBkcml2ZXJzLiAgTm8gZnVuY3Rpb25hbCBpbXBhY3QuCj4KPiBTaWduZWQtb2ZmLWJ5
OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQG9zcy5xdWFsY29tbS5j
b20+CgpQYXRjaCBhcHBsaWVkLgoKWW91cnMsCkxpbnVzIFdhbGxlaWoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
