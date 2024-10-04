Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F7B1CFA746
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Oct 2024 04:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xEd9uRHVTLySVqolUjdrigqINmvKtYywb8iaPZQHm3Y=; b=C6DWewLI+C1ET7
	OBPHIQ+YEH7FGynhtVGkz2CKBWLjFk8OnrfIGSua8lcWr78GeAJQA6Xh9nxZ8CfYAxGTXtRCXZTef
	W7zp4tNzpwx/6aXbbCsgAp3jEfTdlJ2v7XOcHRXCtMhbS/a9RicbmOxLb4x63IP24o+oBeAscztpn
	nfY4AvtMO4SMBRIPx31/YaOVJyoTdq/g11XNzcGRD2Oxidlc+VSUvcW3AsaE+3n6apCuk8UJRb5G4
	bwpVDtAoSIOwG6TQtmWRjtKSSWESjx23dd5GHubjyFHk4uTFiWbU3hOEdw12tpit2/xJ6yIEUB7WT
	Y/Xu2eVti/VqDhV+LRSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1swZfA-0000000Ayqx-39PC;
	Fri, 04 Oct 2024 04:11:32 +0000
Received: from mail-oa1-x32.google.com ([2001:4860:4864:20::32])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1swZf7-0000000AyqQ-3mo5;
	Fri, 04 Oct 2024 04:11:31 +0000
Received: by mail-oa1-x32.google.com with SMTP id 586e51a60fabf-27d045a73easo914584fac.0;
        Thu, 03 Oct 2024 21:11:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728015088; x=1728619888; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7KG5NyyXcoddyKNeeQDgE4xPxgRSIlRvqW3eOyOluoc=;
        b=Zt2jjdrKmHOR05/CScLBBOnRBZjtXzneiD2N3JiQsIV9n4jKnRW2+4AtoM68pYTCsi
         49pQrZov72nXmbOHl1PN7znLjY2lsU3cutswvxlpv0TJ6uoTs75v74CHpP815Jd0edsI
         9pUJ48aUe9pEiWEz5LKmERmRlje6h49udqBE59Pzt5/GYMwzWK/GG2e6IB4HQJruG0eJ
         V8e7oJaEW38ZJUTHcdMgeDPBkRl9M24DYxV8FPF7zXGr4OH0gk11p+1R+ucS4+T6j1BF
         Jr4njGefeSLGznG1pDJfCxLt5zKczlJwX/ckrKDKpwCDQU1rIgwcp5snfNCluZvjpK4g
         L8eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728015088; x=1728619888;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7KG5NyyXcoddyKNeeQDgE4xPxgRSIlRvqW3eOyOluoc=;
        b=kI7pkPloQkwQyoFgyE7udU7F4e6xeeiXGi3W7e+kWsGxGmf8aY3x1p1cQl67VcRG+9
         UIs8VWC+fyLxz0ft2ONgU27YLlIKRR1yQxwQJtcLOpeYkDF1hHUm6U/iNHQJlK0fJ5W6
         AKV5A3VchtM4+zcsabu5+GLaj/Hw1070V2qTbfFvteG5zHdZyIr2apddgb2x8FTqBaQz
         KrPQjnjOdDVOInA9st3/XCszcexvsrgwfMYO6C15a88s3rGT23Qi9JDb1Zj0YD8/HV3W
         vRpVX7ljlLIYTx/g/5R2eqkX9/fccoIF2TQoAmY258wpJKiTFnVwzhkVvRaU5BZ960AT
         prCQ==
X-Forwarded-Encrypted: i=1; AJvYcCVlSxadV4u/Lz/w9JjRO0jd5rMKlYlBAGJFv0TmNWLSVXeBuOPDPPXmsxxXOEt1DCYzgnVQT75ywaFJ97DNoY7f@lists.infradead.org, AJvYcCWnrrDOnd8xEjjjmOtNYP7fBzSojv4+PxlEmOU2Rm9GuYlpKtMXaajfStjW/7yVHX/oxVkVKKwJz6u1Rm4wBNc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx1ENuJJNspL69NW7UB+pyLNNF9lDn/Tba89czfXmHp5BPEOhDL
	brvpWJ3skZUz9aXV5X24uFYpGbjHEU8aaEKuBzkMW235oWnmkyEJ1JwH8/9/1vAXywBKPRwl3h0
	/nGIuPnqMruV08LHv1PayhiPghtE=
X-Google-Smtp-Source: AGHT+IH/oQQS/mnVkBMVZavu+1GJwds/AMzKCb97mcp7UAcOj1YhpcUbl3S8U4Ofo7beYWzVZu+XAyXSDZXvx8Nnsww=
X-Received: by 2002:a05:6870:2191:b0:261:1f7d:cf70 with SMTP id
 586e51a60fabf-287c2154afamr1028179fac.36.1728015088169; Thu, 03 Oct 2024
 21:11:28 -0700 (PDT)
MIME-Version: 1.0
References: <tdxrmmqyzcufupnwkdbg7lwgadizm7v3lxjirykijbml7x54ze@upbdzycdsilm> <20241003215217.GA326383@bhelgaas>
In-Reply-To: <20241003215217.GA326383@bhelgaas>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Fri, 4 Oct 2024 06:11:17 +0200
Message-ID: <CAMhs-H8q95jAvo65yQ5x0NxyU3Hzu0HeNQxZSa+5CHd7REgQuA@mail.gmail.com>
Subject: Re: [PATCH] PCI: controller: Switch back to struct platform_driver::remove()
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	linux-pci@vger.kernel.org, vigneshr@ti.com, s-vadapalli@ti.com, 
	lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org, 
	robh@kernel.org, bhelgaas@google.com, jingoohan1@gmail.com, krzk@kernel.org, 
	alim.akhtar@samsung.com, shawn.guo@linaro.org, songxiaowei@hisilicon.com, 
	marek.vasut+renesas@gmail.com, yoshihiro.shimoda.uh@renesas.com, 
	thierry.reding@gmail.com, jonathanh@nvidia.com, thomas.petazzoni@bootlin.com, 
	pali@kernel.org, florian.fainelli@broadcom.com, 
	angelogioacchino.delregno@collabora.com, ryder.lee@mediatek.com, 
	heiko@sntech.de, kevin.xie@starfivetech.com, kishon@kernel.org, 
	dlemoal@kernel.org, shawn.lin@rock-chips.com, 
	linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, linux-omap@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241003_211129_965989_075B3088 
X-CRM114-Status: GOOD (  12.44  )
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

T24gVGh1LCBPY3QgMywgMjAyNCBhdCAxMTo1MuKAr1BNIEJqb3JuIEhlbGdhYXMgPGhlbGdhYXNA
a2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBUaHUsIE9jdCAwMywgMjAyNCBhdCAxMjoxNzowOFBN
ICswMjAwLCBVd2UgS2xlaW5lLUvDtm5pZyB3cm90ZToKPiA+IEhlbGxvLAo+ID4KPiA+IEkgZm91
bmQgdGhpcyBwYXRjaCBpbiBuZXh0IGFzIDcxMjM1OWNiNWU5ZDk1NTNjMTM4M2ZjNTAwNTU5M2Fh
MTk4OGVmYzQuCj4gPgo+ID4gV2hpbGUgcmViYXNpbmcgbXkgcGF0Y2hlcyB3aXRoIHRoZSBzYW1l
IHB1cnBvc2UgSSBmb3VuZCB0aGF0IHRoaXMgcGF0Y2gKPiA+IGhhbmRsZWQgdGhlIGluZGVudGlv
biBkaWZmZXJlbnRseSB0aGFuIEkgZGlkIGZvciB0d28gZmlsZXM6Cj4KPiBVcGRhdGVkIDcxMjM1
OWNiNWU5ZCAoIlBDSTogY29udHJvbGxlcjogU3dpdGNoIGJhY2sgdG8gc3RydWN0Cj4gcGxhdGZv
cm1fZHJpdmVyOjpyZW1vdmUoKSIpIHRvIGFkb3B0IHlvdXIgaW5kZW50YXRpb24gY2hhbmdlcyBh
bmQgYWxzbwo+IGNvbnZlcnQgZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXhpbGlueC1ud2wu
YywgdGhhbmsgeW91IHZlcnkgbXVjaAo+IGZvciBub3RpY2luZyB0aGlzIQoKVGhhbmtzIGEgbG90
IGZvciBub3RpY2luZyBhbmQgY29ycmVjdGluZyB0aGlzIQoKQmVzdCByZWdhcmRzLAogICAgU2Vy
Z2lvIFBhcmFjdWVsbG9zCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
