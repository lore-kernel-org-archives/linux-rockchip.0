Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A123BC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 15:19:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CmC6MhDLt2+0+IWMnz6sdCWFOshXNJwhwM514MMMI70=; b=eCE+J6RrT5M6H2
	L1obvkECn0FWTI45Ge7LKmX92cImIWx/iMdBwCtkgsbOaL3IzyabCCuQ444KmA2wXlkd4ZQAoxiif
	MkxMkZXvTfuKg5p28vULCiU0couSb376x8SagzHxE0Y9ewx0AQHnkT6hPp90F0K9nG1JIvVX3irFG
	3/6kw7GRE65O3Qb1xFgSvujAFrb33DYv2FuhtEuM+vYeTdYjjU87Hy/uH49sca5Kw3Zcz3eCUPD3x
	LPhjitCLH4hHIQRUIAO4JNR074B//y00mukCC9YvXt5USOVzePjp/CgnOyX47jSktseZFhVYuIjdQ
	UysOlSdfCZwyWjeatyMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p80rj-00G9Ko-0X; Wed, 21 Dec 2022 15:18:43 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p80oW-00G6qS-QP; Wed, 21 Dec 2022 15:15:26 +0000
Received: by mail-qk1-x733.google.com with SMTP id f28so6910383qkh.10;
        Wed, 21 Dec 2022 07:15:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JSVDVHaemmH+mIzEkud4Y2H9dpJqCTRHQXGqE74rkD4=;
        b=E/k1pESyDNT0fmW1KDXkxKlMKFHFb3TAsT+znKo0YfZMI9QeIXkZ28JdC8k6d0TEqg
         kMTIvOaAoylhQTqKE3dnvcd19ujmbkLlVMWPNPzSVa1F+bEOSCUpvDArCEW1W9F+vDuq
         mbZEkmhd6//gmp0dQmuLSGIPeQsLVDuDDmutxlK1e502Kn7VwAaIdlmwI93b5KaxygqC
         o1ACnkVs7NPlxhcldcVm4ymWHG2IXlTNS1IAlsGjwB3trRoAQ/GbJJo69kE5aw+GyJ3O
         DpCqOvapSJJFL2Sqo2awATJs/1gxX+RoJeKizKNS1uaVlNrjfy7qBea6ECcme/eMStSm
         lDeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JSVDVHaemmH+mIzEkud4Y2H9dpJqCTRHQXGqE74rkD4=;
        b=4ab0lJZY420eJjBofKmDwEuKf/pf0h5QhJ+yL0r33j3KdeYvTczQux3BIPjEw55Zzk
         c1F6CvDsjWUTCHm9RKTFJCxeJu9QsnkpxnYg0WQAgTZ6m1xqeMHU3HO5y1MonjeYN0FL
         nAqQvOYVbALNtOI0kcBp6WLjEnU3cWhMvxiRiG9TscRZ0yhZjpMNSw3mWn3qPwVlTNw7
         XEsOGxvNVrlaTpUkWz8UIv6F4KaBpLTz2KsATn5/oeNTnQi3CMTo91ga7Q/J5L6K1xAk
         wEDbILS6PdEM3Y6AeQ5aca/4xVkI4I8rxtHfYVrH4sQW5dsO4vYwIYSFfTFI5sXyLfCN
         HnAA==
X-Gm-Message-State: AFqh2koeP3zc/Z1wyhIYwWJdLulGgmc+V6l9f7+Az7jnB6jJeFYpCwpf
	qO4h0D7nJctfPiI9Z0xopq7rAUb3KN2wX7RCl3w=
X-Google-Smtp-Source: AMrXdXvw17YIL8LZxC1dLOjCHIOlH0nKaK9Wif0hLJqBKzaqabfdLwIZI/O1F7uLmtjuNcPwX4UrG1PLH4X90jqQ9aE=
X-Received: by 2002:a37:b93:0:b0:6ed:d040:c175 with SMTP id
 141-20020a370b93000000b006edd040c175mr68894qkl.536.1671635721427; Wed, 21 Dec
 2022 07:15:21 -0800 (PST)
MIME-Version: 1.0
References: <Y6MQ2b8JyST6fPVE@VM-66-53-centos> <0dda49c1-2162-d473-0c4c-591519096008@linaro.org>
In-Reply-To: <0dda49c1-2162-d473-0c4c-591519096008@linaro.org>
From: ty <zonyitoo@gmail.com>
Date: Wed, 21 Dec 2022 23:15:10 +0800
Message-ID: <CAMmci2UC0kG-4us+RO4NQ2-5kd_1m7jK5+PDWVXvR+khofcmGQ@mail.gmail.com>
Subject: Re: [PATCH v5 2/2] dt-bindings: arm: rockchip: Add EmbedFire LubanCat 1
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Peter Geis <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, DHDAXCW <lasstp5011@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221221_071524_921944_A4149C0F 
X-CRM114-Status: GOOD (  10.69  )
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

R290IGl0LiBTbyB0aGUgdHdvIFNvQiBsaW5lcyBzaG91bGQgYmUgc3dhcHBlZD8gVGhleSBzaG91
bGQgYmUgY2hhbmdlZCB0bzoKClNpZ25lZC1vZmYtYnk6IFdlbmhhbyBDdWkgPGxhc3N0cDUwMTFA
Z21haWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBZdXRlbmcgWmhvbmcgPHpvbnlpdG9vQGdtYWlsLmNv
bT4KCktyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4g
5LqOMjAyMuW5tDEy5pyIMjHml6XlkajkuIkgMjM6MDblhpnpgZPvvJoKPgo+IE9uIDIxLzEyLzIw
MjIgMTQ6NTcsIFl1dGVuZyBaaG9uZyB3cm90ZToKPiA+IEZyb206IERIREFYQ1cgPGxhc3N0cDUw
MTFAZ21haWwuY29tPgo+ID4KPiA+IEFkZCBkZXZpY2V0cmVlIGJpbmRpbmcgZG9jdW1lbnRhdGlv
biBmb3IgdGhlIEVtYmVkRmlyZSBMdWJhbkNhdCAxLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFl1
dGVuZyBaaG9uZyA8em9ueWl0b29AZ21haWwuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTogREhEQVhD
VyA8bGFzc3RwNTAxMUBnbWFpbC5jb20+Cj4gPiAtLS0KPgo+IFRoYW5rcyBmb3IgdGhlIGNoYW5n
ZXMuIFRoZSBTb0IgY2hhaW4gaXMgbm90IGNvcnJlY3QgLSB3cm9uZyBvcmRlci4KPiAiREhEQVhD
VyIgZG9lcyBub3QgbG9vayBwZXJzb24ncyBuYW1lIGFuZCB3ZSBuZWVkIHJlYWwgbmFtZXMuCj4K
PiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCj4KCgotLSAKWS4gVC4gWmhvbmcKU3R1ZGVudCBv
ZiBUaGUgVW5pdmVyc2l0eSBvZiBIb25nIEtvbmcsIG1ham9yIGluIENvbXB1dGVyIFNjaWVuY2Uu
CkUtbWFpbDogem9ueWl0b29AZ21haWwuY29tCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
