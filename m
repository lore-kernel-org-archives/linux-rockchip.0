Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A77ECAC5B9
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Sep 2025 16:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5iBeHpJF2wv6VqsmwZZxQWXlBdUBjVsG/9oHmZvO/N0=; b=umDPdTckfFgAO2
	/Gjis9pnfSgxmAp9recWdwWC0gn1o0pTx50HPI34eRYrpLTwhXQzgYrMEFSdzDk1B/fCP2JU3w2gw
	z5hjY1k7SHePwg3p/G/HCntI4E6vE0HFNSDz1tH4MU1BF6atB9zrsgjOjO9ckLl+yqZFgaMc3G/E8
	tAjYM7GuI/3Z7hNivHrVYvxdeinzr9e+K1w5nUEVABzTE5/nupTr4ngcoQDAuaoB1ptYBluAour/4
	AslYrX1pFUifxu2NYVH2MCzAlNenSZnP/gUfdAM4wWEJI/4BKkinfraS3kzDimqV6tN9FPTIad+3v
	TJX51I8k7NYF20Ewar+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3GaR-00000002xSs-1hgc;
	Mon, 29 Sep 2025 16:18:51 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v3GaP-00000002xSW-2MQ5
	for linux-rockchip@lists.infradead.org;
	Mon, 29 Sep 2025 16:18:50 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id F2C56486C2
	for <linux-rockchip@lists.infradead.org>; Mon, 29 Sep 2025 16:18:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0A67C113D0
	for <linux-rockchip@lists.infradead.org>; Mon, 29 Sep 2025 16:18:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759162728;
	bh=y1PFlnpoS8HMdd5eV23Hi5stegF7R3xRHDYNVRVCELc=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=cnTq070u68mayMVva5/URhtj0CzJoNBR8wl+UpUAivTgjFR6TukurKQzrsCY1HiwA
	 PmqMMW0IFapZoMa9IcGueprjukyJE3aNcHFGaWd1o3+cp2NxICIpmZ3jBwpujflZGt
	 amrO6KTTgDyRTcowIqHCfgPsS7rHAoGE2d53R/ZQ2uq8tumW3DR2Z5YxKOiDbYcVnf
	 C6KbQoubSSr8flfQc2b56uuxKTERwC7UFYlLQ1684XV/5IVCvsC4C2KSpMh2X0djUD
	 ZH7XLS0E63GqH/QQvJXvbIuUt6hQ3t1cpztVNCdXfIuTnnl1AoMXvbMYHimp/jZ1bM
	 lBwOEG256kBHQ==
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-afcb78ead12so849906966b.1
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Sep 2025 09:18:48 -0700 (PDT)
X-Gm-Message-State: AOJu0YztUf/AHJ71dUq2n/WgxVCxglxFsZ0YLw8qVjH6K6DTG3pEY24F
	PyumZkhhH+/ITxjPhAYzUrWUEoJ/Ln7Hi1CF80/ELTnIbBLiEcvuTkJiwoDK/jfgvqzwAZWO/5V
	1eHzR9jZAkPpzGgDpFOQ2BzeoCM1QKw==
X-Google-Smtp-Source: AGHT+IH4EdiPSx3uPpATy9sxikDxD325g38BsI88DHXzrLYBuhBcFvhw+KtcPr01sEC29n+VOeQjzjGDu5gZtwRkopk=
X-Received: by 2002:a17:907:6d29:b0:b40:52:19c2 with SMTP id
 a640c23a62f3a-b4000521c0fmr289546766b.20.1759162727425; Mon, 29 Sep 2025
 09:18:47 -0700 (PDT)
MIME-Version: 1.0
References: <20250904160530.66178-1-macroalpha82@gmail.com> <175760259503.1582479.14013409824773713781.b4-ty@kernel.org>
In-Reply-To: <175760259503.1582479.14013409824773713781.b4-ty@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Mon, 29 Sep 2025 11:18:36 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJy9XwNrcwgk4Dhf40ajn8WwD47v2YqZ3iYZz+CjEdv5g@mail.gmail.com>
X-Gm-Features: AS18NWD2pj_ibwVEK2mhOAIR-S-PjwlDtBsaiw-02MgcMYvm1KmFWHuD6-1e7ks
Message-ID: <CAL_JsqJy9XwNrcwgk4Dhf40ajn8WwD47v2YqZ3iYZz+CjEdv5g@mail.gmail.com>
Subject: Re: (subset) [PATCH v8 0/5] Add Texas Instruments BQ25703A Charger
To: Lee Jones <lee@kernel.org>
Cc: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, broonie@kernel.org, 
	lgirdwood@gmail.com, sre@kernel.org, heiko@sntech.de, conor+dt@kernel.org, 
	krzk+dt@kernel.org, Chris Morgan <macromorgan@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_091849_619913_693E50E8 
X-CRM114-Status: GOOD (  14.15  )
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

T24gVGh1LCBTZXAgMTEsIDIwMjUgYXQgOTo1NuKAr0FNIExlZSBKb25lcyA8bGVlQGtlcm5lbC5v
cmc+IHdyb3RlOgo+Cj4gT24gVGh1LCAwNCBTZXAgMjAyNSAxMTowNToyNSAtMDUwMCwgQ2hyaXMg
TW9yZ2FuIHdyb3RlOgo+ID4gRnJvbTogQ2hyaXMgTW9yZ2FuIDxtYWNyb21vcmdhbkBob3RtYWls
LmNvbT4KPiA+Cj4gPiBBZGQgc3VwcG9ydCBmb3IgdGhlIFRleGFzIEluc3RydW1lbnRzIEJRMjU3
MDNBIGNoYXJnZXIgbWFuYWdlci4gVGhlCj4gPiBkZXZpY2UgaW50ZWdyYXRlcyBhIGJvb3N0IGNv
bnZlcnRlciB3aXRoIHRoZSBjaGFyZ2VyIG1hbmFnZXIuIFRoaXMKPiA+IHNlcmllcyBhZGRzIHRo
ZSBkZXZpY2UgYXMgYW4gTUZEIHdpdGggc2VwYXJhdGUgcmVndWxhdG9yIGFuZCBwb3dlcgo+ID4g
c3VwcGx5IGRyaXZlcnMuIFRoaXMgYWxsb3dzIHVzIHRvIG1hbmFnZSBhIGNpcmN1bGFyIGRlcGVu
ZGVuY3kgd2l0aAo+ID4gYSB0eXBlLWMgcG9ydCBtYW5hZ2VyIHdoaWNoIGRlcGVuZHMgb24gdGhl
IHJlZ3VsYXRvciBmb3IgdXNiLW90Zwo+ID4gYnV0IHN1cHBsaWVzIHBvd2VyIHRvIHRoZSBCUTI1
NzAzQSBjaGFyZ2VyLgo+ID4KPiA+IFsuLi5dCj4KPiBBcHBsaWVkLCB0aGFua3MhCj4KPiBbMS81
XSBkdC1iaW5kaW5nczogbWZkOiB0aSxicTI1NzAzYTogQWRkIFRJIEJRMjU3MDNBIENoYXJnZXIK
PiAgICAgICBjb21taXQ6IDc2YmMyMjAzYTQ2ZWY3MDRhNGNkODAwMzk4NmY2YmQ3NDEzOWEzNjcK
Ckl0IHNlZW1zIHRoaXMgaXMgc3RpbGwgbm90IGluIGxpbnV4LW5leHQ/Cgo+IFsyLzVdIG1mZDog
YnEyNTd4eDogQWRkIHN1cHBvcnQgZm9yIEJRMjU3MDNBIGNvcmUgZHJpdmVyCj4gICAgICAgY29t
bWl0OiAzYjFiYmZiNWZjZTNjYTlmZmZjOTJhYzFiMDUzYjBjZmJiMWYzMjJiCj4gWzMvNV0gcG93
ZXI6IHN1cHBseTogYnEyNTd4eDogQWRkIHN1cHBvcnQgZm9yIEJRMjU3WFggY2hhcmdlcgo+ICAg
ICAgIGNvbW1pdDogMWNjMDE3YjdmOWM3YjdjZDg2ZmRkYTRhZWUzNmI5MmQ5MWNjMmFkMgo+IFs0
LzVdIHJlZ3VsYXRvcjogYnEyNTd4eDogQWRkIGJxMjU3eHggYm9vc3QgcmVndWxhdG9yIGRyaXZl
cgo+ICAgICAgIGNvbW1pdDogOTgxZGQxNjJiNjM1NzhhZWUzNGI1YzY4Nzk1ZTI0NjczNGI3NmQ3
MAo+Cj4gLS0KPiBMZWUgSm9uZXMgW+adjueQvOaWr10KPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
