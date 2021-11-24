Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06E54C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Nov 2021 12:45:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TecAJYmMKcjwRopovh/hqf/VH3Wxxd1uramL0enct+4=; b=26ykayQjrtSzK0
	VdLjnesu1E4ITeQgM4S+zvPmGDjLotPBDkHtFriWJWlN0PnEJB8MUYfhWfhb4Tqv7AMXzmMhFFZjI
	BgmtirkcKpA71hoffLAMw05xUe8GQIH0jRI9UTeuuQ3VN9g2tCOFN/P3C93BB6Gh1DPPqxqlqe3Au
	8ldk76E3lXNkUy6xXTjrf7J2wP5y66+P5Nd/OpfAkB7NwlBx0E4i3jVOY37GAkNLlX+18njs9us/y
	i3BqvrsamnaXOpNqHGTWLhDDIN/lmrk/KrB8XqGZr2FAk+ME7qs/b/f8fy+SHuoqgy8WQxYssBBi7
	9M6KUGwdvzE23grtcN1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpre1-004kOj-SE; Wed, 24 Nov 2021 12:45:01 +0000
Received: from mail-yb1-xb32.google.com ([2607:f8b0:4864:20::b32])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mprdm-004kFi-4G; Wed, 24 Nov 2021 12:44:47 +0000
Received: by mail-yb1-xb32.google.com with SMTP id j2so6866264ybg.9;
 Wed, 24 Nov 2021 04:44:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=6YcgzZLwDUNcL02PHE9Uaenl/CwhsN1SwBv9B1Ruuzc=;
 b=eo3Rc02HwuWVktpOIxv+10QH9q901HbfiAdG925qhXSyAdU5Tpdm6+D2e55a67DWhJ
 zAXb/sN2oDHTRAncZ5KFNY+yw5oOT4J0yZMVDgUl+HN6HjR+Zb7olKXgmRfMsGLQyrBg
 u5XAg51I5akwR8REPC6Ux9GjZHA+l3+yULmXTWwJJ3TJzKGTh1bk92wu3iPadLuEwckb
 Alh9sQuApLdhl2b4zJ/sxeU8KP+Tmv3EloyPoB7WplvZ3pp7lvqvSWhPULsF35JWMtIi
 9p5epIEEXrS7JX+LAHKjDqIqYJ6/zagARF5ePSp3dVvVUir+cYQzZ/IWa+qi0wgBjQJb
 A0BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=6YcgzZLwDUNcL02PHE9Uaenl/CwhsN1SwBv9B1Ruuzc=;
 b=VmzIexlzH8hwSH8nrcMLdckRUPdBfCET/PQJsCfDXSyRMewOJvPNkfYNc4r/MPiC1u
 DoH2qe6P9ipjozBJj3OtCjLtAmE6fh6l10HOLtvqmz2/TLjIV6ktvPDyUnQN0w7UzUPf
 aLqxelLX3Tspb1PtD2siTnvBT1n9rmpkIDsFYPXhaRH0/m+n+eAUtmLgXbIW+BY083jn
 GHbrIchaMCj8V8i0aWtGVtctxFFmB0zRX+8wjNb8V04EJkDrv+NTar4ihSib0zTFQAAF
 T5SbaAs+2iyZPXmBLyaxVk+7TbO9YmF6IZXUE1q9DRgQc5yZyuOhNrUDFWca/cbuUGu7
 KFSg==
X-Gm-Message-State: AOAM5337SJDWXNt0q2uE96/x+0UpRIciF1qULbA/M6MCty7afwLCNkL3
 8WpcVhvl36OFi2ju5j4xlFW5C7tvqeygB/Ut66U=
X-Google-Smtp-Source: ABdhPJysYTZnsf7KZmH2S6chrFbipTzxZtp2LIae4nRuHTZSh4Lg/2XMgNatlNQNMjW97PSDu9QTKTA1qcAgFyAK6VY=
X-Received: by 2002:a25:45:: with SMTP id 66mr18207748yba.464.1637757883804;
 Wed, 24 Nov 2021 04:44:43 -0800 (PST)
MIME-Version: 1.0
References: <20211124021325.858139-1-knaerzche@gmail.com>
 <2895944.ZOkXcVNkQQ@diego>
In-Reply-To: <2895944.ZOkXcVNkQQ@diego>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 24 Nov 2021 07:44:32 -0500
Message-ID: <CAMdYzYo=6H3NaBDZ2rQnDUr89rnA0rvxWGfEbRP6sQGt7+vB3w@mail.gmail.com>
Subject: Re: [PATCH] iommu/rockchip: Fix PAGE_DESC_HI_MASKs for RK3568
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
 Alex Bee <knaerzche@gmail.com>, 
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 iommu <iommu@lists.linux-foundation.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_044446_203541_8EB92840 
X-CRM114-Status: GOOD (  25.92  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gV2VkLCBOb3YgMjQsIDIwMjEgYXQgNTozNiBBTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250
ZWNoLmRlPiB3cm90ZToKPgo+IEFtIE1pdHR3b2NoLCAyNC4gTm92ZW1iZXIgMjAyMSwgMDM6MTM6
MjUgQ0VUIHNjaHJpZWIgQWxleCBCZWU6Cj4gPiBXaXRoIHRoZSBzdWJtaXNzaW9uIG9mIGlvbW11
IGRyaXZlciBmb3IgUkszNTY4IGEgc3VidGxlIGJ1ZyB3YXMKPiA+IGludHJvZHVjZWQ6IFBBR0Vf
REVTQ19ISV9NQVNLMSBhbmQgUEFHRV9ERVNDX0hJX01BU0syIGhhdmUgdG8gYmUKPiA+IHRoZSBv
dGhlciB3YXkgYXJyb3VuZCAtIHRoYXQgbGVhZHMgdG8gcmFuZG9tIGVycm9ycywgZXNwZWNpYWxs
eSB3aGVuCj4gPiBhZGRyZXNzZXMgYmV5b25kIDMyIGJpdCBhcmUgdXNlZC4KPiA+Cj4gPiBGaXgg
aXQuCj4gPgo+ID4gRml4ZXM6IGM1NTM1NmM1MzRhYSAoImlvbW11OiByb2NrY2hpcDogQWRkIHN1
cHBvcnQgZm9yIGlvbW11IHYyIikKPiA+IFNpZ25lZC1vZmYtYnk6IEFsZXggQmVlIDxrbmFlcnpj
aGVAZ21haWwuY29tPgo+ID4gLS0tCj4gPgo+ID4gSSd2ZSBmb3VuZCB0aGlzIGJ1Zywgd2hlbiB0
ZXN0aW5nIHRoZSByZWNlbnQgVk9QMiBzdWJtaXNzaW9uLCB3aGljaCBpcwo+ID4gdGhlIGZpcnN0
IHBlcnBoZXJpYWwgd2hpY2ggdXNlcyBpb21tdSBmb3IgUkszNTZ4LiBJIGNvdWxkIHVzZSBpdCBv
biBteQo+ID4gcXVhcnR6NjQgOEdCIGJvYXJkIG9ubHksIHdoZW4gbGltaXRpbmcgdGhlIGF2YWls
YWJsZSBtZW1vcnkgdG8gbGVzcyA0R0IuCj4gPgo+ID4gVGhpcyBwYXRjaCBmaXhlcyBpdC4KPiA+
Cj4gPiAgZHJpdmVycy9pb21tdS9yb2NrY2hpcC1pb21tdS5jIHwgNCArKy0tCj4gPiAgMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9pb21tdS9yb2NrY2hpcC1pb21tdS5jIGIvZHJpdmVycy9pb21tdS9yb2Nr
Y2hpcC1pb21tdS5jCj4gPiBpbmRleCA1Y2IyNjA4MjBlZGEuLjdmMjNhZDYxYzA5NCAxMDA2NDQK
PiA+IC0tLSBhL2RyaXZlcnMvaW9tbXUvcm9ja2NoaXAtaW9tbXUuYwo+ID4gKysrIGIvZHJpdmVy
cy9pb21tdS9yb2NrY2hpcC1pb21tdS5jCj4gPiBAQCAtMjAwLDggKzIwMCw4IEBAIHN0YXRpYyBp
bmxpbmUgcGh5c19hZGRyX3QgcmtfZHRlX3B0X2FkZHJlc3ModTMyIGR0ZSkKPiA+ICAjZGVmaW5l
IERURV9ISV9NQVNLMiBHRU5NQVNLKDcsIDQpCj4gPiAgI2RlZmluZSBEVEVfSElfU0hJRlQxICAg
ICAgICAyNCAvKiBzaGlmdCBiaXQgOCB0byBiaXQgMzIgKi8KPiA+ICAjZGVmaW5lIERURV9ISV9T
SElGVDIgICAgICAgIDMyIC8qIHNoaWZ0IGJpdCA0IHRvIGJpdCAzNiAqLwo+ID4gLSNkZWZpbmUg
UEFHRV9ERVNDX0hJX01BU0sxICAgR0VOTUFTS19VTEwoMzksIDM2KQo+ID4gLSNkZWZpbmUgUEFH
RV9ERVNDX0hJX01BU0syICAgR0VOTUFTS19VTEwoMzUsIDMyKQo+ID4gKyNkZWZpbmUgUEFHRV9E
RVNDX0hJX01BU0sxICAgR0VOTUFTS19VTEwoMzUsIDMyKQo+ID4gKyNkZWZpbmUgUEFHRV9ERVND
X0hJX01BU0syICAgR0VOTUFTS19VTEwoMzksIDM2KQo+Cj4gV2l0aCB0aGlzIGNoYW5nZSB0aGUg
UEFHRV9ERVNDX0hJX01BU0sqIG5vdyBtYXRjaCB0aGUgb3RoZXIKPiBjb25zdGFudHMgYWJvdmUg
dGhlbSBpbiB3aGF0IGJpdHMgdGhleSBhY2Nlc3MsIHNvCj4KPiBSZXZpZXdlZC1ieTogSGVpa28g
U3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPgo+CgpUZXN0ZWQgb24gdGhlIHF1YXJ0ejY0LWEg
Ym9hcmQgd2l0aCB0aGUgZXhwZXJpbWVudGFsIHZvcDIgZHJpdmVyLApjb25maXJtZWQgaXQgZml4
ZWQgdGhlIGlzc3VlLgoKVGVzdGVkLWJ5OiBQZXRlciBHZWlzIDxwZ3dpcGVvdXRAZ21haWwuY29t
PgoKPgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
