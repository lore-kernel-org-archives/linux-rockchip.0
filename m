Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4A7DECF6D2C
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 14:13:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ib7f3HJovV/Dt3fmvgiGA1Tt4ptpHwfcTR+PtNTApM=; b=vt4BLEs2V3Rh+I
	j4fIAds+iKsPQQIZZFbPsSKnNHO+px3eYUHs7MHG3H6rxuzUNtIuY0AwE0+JDMiikQ21ZOQcQEC5O
	Pa+j6s6yZ3LKjCc2d2bihSVSSCE/Kx3hD9Ddp5TztCGv8J5zG9NbqnumTSLKzGVjPK3OgwXhTp0uT
	nTi7Ckt5W9Q4We0WfgrXVK8Cf4HvhGiK9TNFxeCRUIqup9vGAVCytEeZZqF8ZDa7z2Aqz2WnpJMR7
	Iefd4RrwouW4Z6I94loREv37cZzJxXlx7u9/zstc8H4WwyK9/1YdKPDOzwWCKuJCN1X/D54JcEome
	SYA+gTiyzTE/NAkK7Skg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sw06C-00000006KUr-3Hz9;
	Wed, 02 Oct 2024 14:13:04 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sw069-00000006KU4-46IW
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Oct 2024 14:13:03 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2fac47f0b1aso43552261fa.1
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Oct 2024 07:13:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727878380; x=1728483180; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/MwprdMA2CplfBjH2zCn7WBpr5tpPa87QKFYlk20vb4=;
        b=HI31XhXIczkPQpCOifwOY958cJX6HVOoyV7JBj7B2+A7tTGGGaxDYoMBJRfZ2pCCQl
         tforcdOvMPrPsE+lBaUfbZxHH4SwzWVP7Geuoc5ThK7jqACXqJC7y2C5lzSzVXFAzQFb
         Sy1Jn5pI4wlMaHG47U0JTHk4CFlZ0gKi9ALGiDXALW3kAGDbIw8vri2FVuDQVzIyo6u5
         DqVauvLN/nXrL2U7pAllj1eFU3XcroimbKS2bDC//Xbwh6Ebc3hRZUgXpu6+lmGIr8aJ
         vC1sWzJQR35QPXNKVPz3Z+cojqhm5G0aq7UAOgMIaMEZyZJyWrcF3NU7+piJw5eDWVfP
         ZbUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727878380; x=1728483180;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/MwprdMA2CplfBjH2zCn7WBpr5tpPa87QKFYlk20vb4=;
        b=cEBtNbsyW8XLrM6B3wVgVNwG2aGqbBsub898xc5R9bE6FnsEO7YFhSCU8LDG07TRXN
         kPmQqI7AWr3jkS5ZsQAkUuVVLcsbgS62g92GiREpN/k0LvOeawB6Q6Zj9GNDGyOTL2Ux
         YeV6McxYtt4FOr/RtzG8Z+56ypoJTXueW5DMOkZxVfOyfl0EegwbUriJlQdkm4CnJ7tM
         hJ76f8j8Y6ictIfQOC3VLGcLDhJ2DNRRHNJFdjKQ0EA/v4WSSPqsjAEiX05DokXHQEgC
         kxuF/8b6LSwu64uBQ2ywrjTS/ACMe7znUsrA6nDgvfXbRcKD+5mcV8GRTkn2iwheIBZz
         Km8Q==
X-Forwarded-Encrypted: i=1; AJvYcCXSCIdpFEAFCo7ga4aC0iqJhLhJupmG6RHxdZx20JGeRrcvlsy4D3kM0h7foT5xh6o2MhLvT+6fEtoNmL3i8A==@lists.infradead.org
X-Gm-Message-State: AOJu0YzW0Na6CL5rRW02xwByZYAE04UtroNsJL4QWoH/FpcUIqcpUSmb
	BItfBPNDZYMIYGOHTs+RGeJH2GRIzqBoi7NuSo50OCX9aeCtMTCHRnAl4j3N//E22QfbQ764ls+
	dipCSIMFUVOTI3Qhm9a2DkEKh+m2pRCr3CWgbsg==
X-Google-Smtp-Source: AGHT+IGl17gRjgNnOMS/iAMQMN4J8biS0TRxU905QubH8vQVNaxcsist3JF9+CzeIGPLsDpKZ+I+rdokSFbiRj+qXpo=
X-Received: by 2002:a05:651c:210e:b0:2fa:d386:c8a4 with SMTP id
 38308e7fff4ca-2fae103c83emr21489031fa.12.1727878380034; Wed, 02 Oct 2024
 07:13:00 -0700 (PDT)
MIME-Version: 1.0
References: <20241002-pinctrl-rockchip-error-modulo-4-v1-1-4addb4e5732a@cherry.de>
In-Reply-To: <20241002-pinctrl-rockchip-error-modulo-4-v1-1-4addb4e5732a@cherry.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 2 Oct 2024 16:12:41 +0200
Message-ID: <CACRpkdY1weM7+iRas0-7ZiWkf2YwH1CrejjWbH0L0soawrhCcA@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: rockchip: improve error message for incorrect
 rockchip,pins property
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Quentin Schulz <quentin.schulz@cherry.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_071302_045958_29D759EF 
X-CRM114-Status: GOOD (  14.10  )
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

T24gV2VkLCBPY3QgMiwgMjAyNCBhdCAyOjAz4oCvUE0gUXVlbnRpbiBTY2h1bHogPGZvc3Mra2Vy
bmVsQDBsZWlsLm5ldD4gd3JvdGU6Cgo+IEZyb206IFF1ZW50aW4gU2NodWx6IDxxdWVudGluLnNj
aHVsekBjaGVycnkuZGU+Cj4KPiBJZiBvbmUgaW1wcm9wZXJseSB3cml0ZXMgYSByb2NrY2hpcCxw
aW5zIHByb3BlcnR5LCB0aGUgcGluY3RybCBkcml2ZXIKPiBiYXNpY2FsbHkganVzdCBzdGF0ZXMg
dGhhdCBvbmUgaW4gdGhlIG15cmlhZCBvZiBwaW5jdHJsIG5vZGVzIGlzCj4gaW1wcm9wZXIgYnV0
IGRvZXMgbm90IHRlbGwgeW91IHdoaWNoIG9uZS4KPgo+IEluc3RlYWQsIGxldCdzIHByaW50IHRo
ZSBmdWxsIG5hbWUgb2YgdGhlIERldmljZSBUcmVlIG5vZGUgdGhhdCBpcwo+IGltcHJvcGVyIGFz
IHdlbGwgYXMgcHJvdmlkZSBtb3JlIGNvbnRleHQgb24gd2hhdCB0aGUgZXhwZWN0ZWQgY29udGVu
dAo+IGlzLgo+Cj4gTm90ZSB0aGF0IHRoaXMgc2hvdWxkIGJlIHJhdGhlciB1bm5lY2Vzc2FyeSBp
ZiBvbmUgcmVhZHMgdGhlIG91dHB1dCBvZgo+IHRoZSBkdGJzX2NoZWNrIGFzIGl0IHdvdWxkIGJl
IGhpZ2hsaWdodGVkIGFzIGFuIGVycm9yLgo+Cj4gU2lnbmVkLW9mZi1ieTogUXVlbnRpbiBTY2h1
bHogPHF1ZW50aW4uc2NodWx6QGNoZXJyeS5kZT4KClBhdGNoIGFwcGxpZWQhCjIgaG91cnMhIFJl
Y29yZCB0aW1lIQpCdXQgSGVpa28gd2FzIHRoZXJlIHRvIEFDSyBpdCBzbyB3aHkgbm90IDopCgpZ
b3VycywKTGludXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
