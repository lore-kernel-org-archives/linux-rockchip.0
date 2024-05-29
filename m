Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0BE16C25B7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 08:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z15aREmBE5NuvqaMshC1+o3hDiz1GHtBCOWm9Tz+eEk=; b=TiX1JIAwgPbkOZ
	JNJfTrupL/fmU8ZQuLMC68WkJm9sxmK53CVqQC6ntacE6Ie7ccX7rWhHkgsMTkLlc1C1iBKr/xdDI
	MGFMMX73+jl9NtfootU7s832D/D4rZ0ayK21mlCzN1itF6S/P+o2VQ8Ev/2rcJubBPGqf1HRBh1Ak
	m6vxD/4B07+eLt5P9t6ZmFxVdUvn4j02ZMeSe3VbB1Ic7N5afM5tEyy3KncAyvcVyiM2zeNnJ1Zhf
	qPeti5pkW8xa1KuKap9KNaHJ2o5WpzXCz5WcNwMPLw9wFKHkycmGNsP1q24SLvAf58bPRu8KyA3nP
	u2i13ZpcK3xexhRi1Plg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCF6b-00000003Xev-1ZEz;
	Wed, 29 May 2024 08:56:21 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCF6W-00000003Xcc-34DK
	for linux-rockchip@lists.infradead.org;
	Wed, 29 May 2024 08:56:19 +0000
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-dfa4ad7f6dfso345764276.1
        for <linux-rockchip@lists.infradead.org>; Wed, 29 May 2024 01:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716972974; x=1717577774; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DtXP8XIgulfp/10cegI2AvN9bdkVmyBIDSaD2r0yo3o=;
        b=suAc+AOcJErObllnzvMgdie8Ty3KhtYgnaqWxlKgHaX1pOaou3JtLPfO5sJ2i7jzJj
         dUaqkMmbyY3L0mt5zt7iZYhGfq6mWv0LmL+Dm/yR/Mypm+p7zceRCZAmt8KlZehd79Ng
         mEXkZ9dhxzBKUBmKOjI1Pj9A/Fna0YZyUa5lBu3Xh6r45uq2m5xzCZyrwecEVixf0dRe
         DmVN1vhJG4nvhaYdv6FeAqRcjfNhz02jHlLzDDXVQPd+qNjyn+oqQVgGi5RJ4nJUydB6
         zamqLi/rv0d24NOqqkarCOvkhwmkCCC15yNplq0vGdde0SC3Ke4M/ci8nstglYoKvXyu
         iD9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716972974; x=1717577774;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DtXP8XIgulfp/10cegI2AvN9bdkVmyBIDSaD2r0yo3o=;
        b=NQyzmFABtg1qrlipsvXmTl01RB4tcObiPQUa37DmAJjQyxyAKu6kqWr93m6tYyffNV
         7LLyi8gx1IV/L5ATznyF07NwhcXnm9g0CqzkFyOUTpO576I/7rNxpw9JkN5MuHYKjiCZ
         gsyKr2yHhp8Z/eqsxhyajitqyCZassunm0tzwCyqS4u6L68TVW6jBj54Qb7gvjFU1Bed
         486P+Gm/TJkOoiUtOG0Y+1K1IX65SOna18RRWDdtt8bIpqAX5WBIzyskOnr/8U2LoGUl
         WgcjliGF12o0XtjXmonVAeV7SpTL57uNT67RP2qPYvohtOir2fynqHji+ARd1bnahzx9
         +tdA==
X-Forwarded-Encrypted: i=1; AJvYcCUhtCj9zntH+GkpkpZoMNRtSTH3cdhd1tPoO02fKI2a6T3w3jkrdaSxrRq/bBR2K6vwAr8HsRUQWTLWdbVdS8sZkkt69xb5YgeSv6QKqq4gfvbu
X-Gm-Message-State: AOJu0YxcXxhHTwfNYGDgEUbT3NbCV3294D7Bmx0snXqY2kNfq9UnZN3I
	SIP8GQqj+NhXPHcaV9dXE1OG8zAgZcgnjVMajAFeVZPYYu2w3xODHfpJIil1ABSww3eyNVwBqvJ
	0PxnT+/1liSOIqdO1nQabdfAiEyUr4kmo3TouEQ==
X-Google-Smtp-Source: AGHT+IH4NQ4depklJARq4QXOQPL6SbQbymroEMtHHxC8aWGwiK8gNUj59IY6hl8YJF+EVgh8d/hNerEfUYlfaT+IpDw=
X-Received: by 2002:a25:241:0:b0:dfa:528d:e8f4 with SMTP id
 3f1490d57ef6-dfa528df61bmr104636276.33.1716972974547; Wed, 29 May 2024
 01:56:14 -0700 (PDT)
MIME-Version: 1.0
References: <20240515121634.23945-1-dmt.yashin@gmail.com> <20240515121634.23945-2-dmt.yashin@gmail.com>
In-Reply-To: <20240515121634.23945-2-dmt.yashin@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 29 May 2024 10:56:03 +0200
Message-ID: <CACRpkdYbYS4bdzF8oN3JGsfius+_WKJLvZ06m5T-Z+Xb5EEbbQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] pinctrl: rockchip: update rk3308 iomux routes
To: Dmitry Yashin <dmt.yashin@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, Jianqun Xu <jay.xu@rock-chips.com>, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_015616_816929_434DE11C 
X-CRM114-Status: UNSURE (   8.96  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBNYXkgMTUsIDIwMjQgYXQgMjoxN+KAr1BNIERtaXRyeSBZYXNoaW4gPGRtdC55YXNo
aW5AZ21haWwuY29tPiB3cm90ZToKCj4gU29tZSBvZiB0aGUgcmszMzA4IGlvbXV4IHJvdXRlcyBp
biByazMzMDhfbXV4X3JvdXRlX2RhdGEgYmVsb25nIHRvCj4gdGhlIHJrMzMwOGIgU29DLiBSZW1v
dmUgdGhlbSBhbmQgY29ycmVjdCBpMmMzIHJvdXRlcy4KPgo+IEZpeGVzOiA3ODI1YWViN2IyMDgg
KCJwaW5jdHJsOiByb2NrY2hpcDogYWRkIHJrMzMwOCBTb0Mgc3VwcG9ydCIpCj4gU2lnbmVkLW9m
Zi1ieTogRG1pdHJ5IFlhc2hpbiA8ZG10Lnlhc2hpbkBnbWFpbC5jb20+CgpUaGlzIHBhdGNoIGFw
cGxpZWQhCgpZb3VycywKTGludXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
