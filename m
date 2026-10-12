Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AA58CA9ECF
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2026 01:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0uCdzPegTFsfNHD3bVDWl/iWA1GuaLcbvVwzkkHVW/0=; b=jWU1FTYSmy8YCa
	bNpn/NkyywrbtjIiXoPyjpB+9qCT0Qwj4I1eNKvGN81QH+vQ5SfWn1jJfz8aZjOf0UNSR5YmQKcnI
	8xB5hpq2PiE2eBwYVOy+HFIB5WvRrdwfmeoJb2rAaWb4qvCrVcbzW3ySWOPSWXRSSiYh7ZWhjxuY8
	K+TVkY43/ihT8lnM8iGlPUhtdBhaPNXo6zimZP2FL+KxXXyS516R01UJcCTqPqA16MvD+PmTArpP4
	67q2IysJ/VRSSdk+58z7jFWB901uzZlAmszEooqWIITX86LapYs9z6CfgaxaSlvAxf7bCxJNuuIDG
	KtkvJtRQ3o63OyOsbtog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG4ug-00000009YWS-25Eb;
	Mon, 12 Oct 2026 01:33:14 +0000
Received: from mail-oa1-x30.google.com ([2001:4860:4864:20::30])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xG4ue-00000009YVR-14Eo
	for linux-rockchip@lists.infradead.org;
	Mon, 12 Oct 2026 01:33:13 +0000
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-49e13495e5cso2472118fac.0
        for <linux-rockchip@lists.infradead.org>; Sun, 11 Oct 2026 18:33:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791768791; cv=none;
        d=google.com; s=arc-20260327;
        b=YbPFhHX5KRPCdZMVFz/RX0fRDowop+5nSKah2m2GDh7AIgVnXNSkn+14qPrBFQxfm8
         p261j2J833A4pC40Ly4/bHPDtd356A4hYev4TMCU46hd5ZG1rfLgtWADB0l6BfFLhFIv
         gFnXBfFBUdUK4fvn0hYw6TyD6rUJ2FEgALOFVDax9q9wirx0kQAm9oLYgjaqGCDKgNN9
         w9ikTzAu9i+jlyIR7zLs1GJbLmwF0IlPx/dNvP3PsoJ4DvZctObBjnvOD9jmS69Tx+AY
         aWiOUqtKCMDgsrqlC6eCB7aWT1GjH+kksosOUthldR/8CmGzB8371ZPIXlyDDqR6AOPu
         Petw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=yy605aOeAHaRRlQZ49hSeMe89YDd8h55bKBGCHpbQWs=;
        fh=lNNMe6sfy+zON5xO5Qi3ujUbpLOVlBP7ZC4jhB9L58Q=;
        b=RrMA4SuPRpw7CQkiSWYMk/DVtdi9nX1/08hMweKApjTR+3TvNF34RPHW4QUYFI39ng
         GPEcz8UpNM13h4bIuhDHi689mWKXvC7ga6igIaliWawFLP6WOgD9aPUVdxGCzr8FaJ6L
         mkLlSncxIdzrc7UB36NXn1nn6sVK1EvrwdfFBwxhcmh9agjZ+YVlr4yriQRgtVUM2xwL
         dbhlvW7U539FKFTmRG3o1Oyh4Ojb0bI/3l4O0flVn14xEAkbCwde1GUDdreqABx7bLYR
         S9puLWcKm7wOx96O46Ca/MMkstkTBTUbQM4hRfbkLzQm40zSUChekK8STxM22OvQPJsl
         8AyQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791768791; x=1792373591; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=yy605aOeAHaRRlQZ49hSeMe89YDd8h55bKBGCHpbQWs=;
        b=gbuVWBUaXO+KaB6572DxdPDTbHHd7DQKiCEZxVSv2loOMneyhOly/xS3FiXvkoOkSx
         VQcwtsAxrnH/0HcrChjSfvNNme6bVt9H5ZGd8FButk78hpxkgNn1ES8yK/JceoIxucOm
         TaSQMgvi80ITRcF8ADQsxHRhB0NUtMwWmJogEEMJjsAscOiiwd2+DV8Y8Q5/fQqxvVkG
         Z0tuODvdQv7JDQRV6J+HuS3hS9gHe/gcWhTlICnGZ6+EX4CihDCBcBS06a6Wh/jNprQK
         MHkkW+1fFnslupuYTRN1iWz2yQg1J9d0wCwuS+lHAPZrGvsdznXxzRqIC8ImiczbENM1
         Mz8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791768791; x=1792373591;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=yy605aOeAHaRRlQZ49hSeMe89YDd8h55bKBGCHpbQWs=;
        b=f6RFgUPZ57O0j2GhcTxJGvAfsD8zYYXhhuccmNuffAtuJdLIGK1CsP2aEoOGvwwrpp
         f+mcdAab+eduMM5Z9yF/j1qTOn9nMmDVCcJf4Od2z88f7hBc2qfKEawe2wg5EmRyXCIw
         vGWpaFOAilRp7s7rhhT/ZHPiS/DhfKeMdYnN/LujXy1DrV8UfyqzpoZfieBN+dXAl6EZ
         +B7s11QKAKGvysRV2TmHobXpR5/+L1YlOjeORgkYU8qYI28tnlcEleFyKAXVJLlQpkL3
         qSQy+x4RTpVWVHpt+etm5NfexeLHT1kvNP49X2Yeh3vy5sDz1UCElHL4QRUT3X0y265y
         8jGA==
X-Forwarded-Encrypted: i=1; AKwUvBxkWMQE4yDP1NJNz04T/TbJvHXcOtLyhq4zrfZm/0te1nSYdP5HlrxIXlK1ePM8cR+YKsy0wDBHbjJ7MBoW/g==@lists.infradead.org
X-Gm-Message-State: AFq9FYKwm7QNhcly4a43ReeflGCvOBJrcjTCWnsFKOYuqcvStWY3SQ+X
	6oP4zFHLr/nKL19BLKmf0um2tEYDftOwM9w5OyVyfc8vQffQ1LVGaBS5IGDFdMNNl3mG4V9QoQc
	avKpUViDd5tVjF0+3ulk1kr6ELSf6UbogTeRl/zU=
X-Gm-Gg: AYBFou2PqT9j6FylGTGJQgJx1wcUr6isQR12YDkPZRm2yAr2QGcYpSaYVx6BFEWlpxv
	ZujBcgSEj6dGC8NKTztxxro/NwbHMstduzJ4gR3zvH4gLBWJwFVjo3Hwc8uh0V7BuXbmuVbB31L
	fY4Ao4tVILfYtPOwvq0iQKjrsx3JPa7op+cSei63/VXpqk4xRZIe+HPV38051u/8tjaUpjgL/Zw
	WMLqHl4q6+xWbkZksnKKMtscqlcSii3gvdkHnC2+7smXir6SDg8jlS1p2/O0OfDZdBTK+ND+Mqi
	CPiZAsbPhra1M68MpnA5jqXI7Jlcy0M5DukhsWxLeKvT4SVQAAkhyVY=
X-Received: by 2002:a05:6870:31a9:b0:462:ef7d:2a4c with SMTP id
 586e51a60fabf-4a2a894fad5mr5424931fac.8.1791768791364; Sun, 11 Oct 2026
 18:33:11 -0700 (PDT)
MIME-Version: 1.0
References: <20261008030214.368347-1-finley.xiao@rock-chips.com>
In-Reply-To: <20261008030214.368347-1-finley.xiao@rock-chips.com>
From: Jassi Brar <jassisinghbrar@gmail.com>
Date: Sun, 11 Oct 2026 20:32:59 -0500
X-Gm-Features: AclHuK_QmkadvsvdD-zCdomyYwJKXc2L9BPDK2A4NqNEwXXLVrtwrCa7y00XQ18
Message-ID: <CABb+yY38GBk=OHZQ9GbDHhFr3Ny8+tavMdyK9qpRHg1yAw+jyQ@mail.gmail.com>
Subject: Re: [PATCH v2] mailbox: arm_mhuv3: Keep the combined IRQ enabled
 during system suspend
To: Finley Xiao <finley.xiao@rock-chips.com>
Cc: heiko@sntech.de, Sudeep Holla <sudeep.holla@kernel.org>, 
	Cristian Marussi <cristian.marussi@arm.com>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	tony.xie@rock-chips.com, huangtao@rock-chips.com, frank.wang@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261011_183312_320699_B3332B04 
X-CRM114-Status: GOOD (  23.29  )
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

T24gV2VkLCBPY3QgNywgMjAyNiBhdCAxMDowM+KAr1BNIEZpbmxleSBYaWFvIDxmaW5sZXkueGlh
b0Byb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4KPiBXaGVuIE1IVXYzIGlzIHVzZWQgYXMgdGhlIFND
TUkgbWFpbGJveCB0cmFuc3BvcnQgKGFybSxzY21pLW1haWxib3gpLAo+IFNDTUkgY2xvY2sgYW5k
IHBvd2VyLWRvbWFpbiBvcGVyYXRpb25zIHN0aWxsIG5lZWQgdG8gd29yayBpbiB0aGUgbm9pcnEK
PiBwaGFzZSBvZiBzeXN0ZW0gc3VzcGVuZDogZ2VucGQgbWF5IHBvd2VyIG9mZiBhIGRldmljZSdz
IHBhcmVudCBkb21haW4KPiBmcm9tIGdlbnBkX3N1c3BlbmRfbm9pcnEoKSwgd2hpY2ggaXNzdWVz
IHNjbWlfY2xvY2tfY29uZmlnX3NldCgpIC8KPiBzY21pX3Bvd2VyX3N0YXRlX3NldCgpIGFuZCB3
YWl0cyBmb3IgdGhlIGZpcm13YXJlIHJlcGx5IHZpYSB0aGUgbWFpbGJveAo+IFJYIElSUS4KPgo+
IEhvd2V2ZXIsIGRwbV9zdXNwZW5kX25vaXJxKCkgY2FsbHMgc3VzcGVuZF9kZXZpY2VfaXJxcygp
IGJlZm9yZSBydW5uaW5nCj4gdGhlIHN1c3BlbmRfbm9pcnEgY2FsbGJhY2tzLCBzbyB0aGUgY29t
YmluZWQgaW50ZXJydXB0cyBhcmUgYWxyZWFkeQo+IG1hc2tlZCBhdCB0aGF0IHBvaW50IGFuZCB0
aGUgU0NNSSB0cmFuc2ZlciB0aW1lcyBvdXQgd2hpbGUgd2FpdGluZyBmb3IKPiB0aGUgcmVwbHku
Cj4KPiBCb3RoIHRoZSBQQlggYW5kIE1CWCBjb21iaW5lZCBpbnRlcnJ1cHRzIGFyZSByZXF1ZXN0
ZWQgYXMgdGhyZWFkZWQKPiBJUlFzIHdpdGggb25seSBJUlFGX09ORVNIT1QuIFRoZSBNQlggY29t
YmluZWQgSVJRIG11c3Qgc3RheSBlbmFibGVkIHNvCj4gdGhhdCBmaXJtd2FyZSByZXBsaWVzIGFy
ZSBkZWxpdmVyZWQsIGFuZCB0aGUgUEJYIGNvbWJpbmVkIElSUSwgdXNlZAo+IGZvciB0eGRvbmUg
YnkgSVJRIHdoZW4gbm90IGluIHBvbGxpbmcgbW9kZSwgbmVlZHMgdGhlIHNhbWUgdHJlYXRtZW50
Lgo+Cj4gSVJRIHRocmVhZHMgYXJlIG5vdCBmcm96ZW4gZHVyaW5nIHN5c3RlbSBzdXNwZW5kLCBz
byB3aXRoCj4gSVJRRl9OT19TVVNQRU5EIHRoZSB0aHJlYWRlZCBjb21iaW5lZC1JUlEgaGFuZGxl
cnMgc3RpbGwgcnVuIGluIHRoZQo+IG5vaXJxIHBoYXNlLgo+Cj4gQWRkIElSUUZfTk9fU1VTUEVO
RCB0byB0aGUgTUhVdjMgY29tYmluZWQgSVJRIHJlZ2lzdHJhdGlvbnMgc28gdGhhdAo+IFNDTUkg
cmVtYWlucyBmdW5jdGlvbmFsIHRocm91Z2hvdXQgdGhlIHN1c3BlbmQvcmVzdW1lIGN5Y2xlLiBO
b3RlIHRoYXQKPiB0aGlzIG9ubHkga2VlcHMgdGhlIElSUXMgZnVuY3Rpb25hbCBkdXJpbmcgdGhl
IHN1c3BlbmQvcmVzdW1lIGN5Y2xlIGFuZAo+IGRvZXMgbm90IG1ha2UgdGhlIG1haWxib3ggYSB3
YWtldXAgc291cmNlLgo+Cj4gU2lnbmVkLW9mZi1ieTogRmlubGV5IFhpYW8gPGZpbmxleS54aWFv
QHJvY2stY2hpcHMuY29tPgo+IFJldmlld2VkLWJ5OiBTdWRlZXAgSG9sbGEgPHN1ZGVlcC5ob2xs
YUBrZXJuZWwub3JnPgo+IC0tLQo+Cj4gQ2hhbmdlcyBpbiB2MjoKPiAtIEFkZCBTdWRlZXAncyBS
ZXZpZXdlZC1ieSB0YWcKPiAtIENsYXJpZnkgdGhhdCB0aGlzIGRvZXMgbm90IG1ha2UgdGhlIG1h
aWxib3ggYSB3YWtldXAgc291cmNlCj4KPiAgZHJpdmVycy9tYWlsYm94L2FybV9taHV2My5jIHwg
NiArKysrLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMo
LSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21haWxib3gvYXJtX21odXYzLmMgYi9kcml2ZXJz
L21haWxib3gvYXJtX21odXYzLmMKPiBpbmRleCBhMWM1MjhiZTQ3ZjMuLjA0OTk4ZTEzNDZjNSAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL21haWxib3gvYXJtX21odXYzLmMKPiArKysgYi9kcml2ZXJz
L21haWxib3gvYXJtX21odXYzLmMKPiBAQCAtOTgwLDcgKzk4MCw4IEBAIHN0YXRpYyBpbnQgbWh1
djNfc2V0dXBfcGJ4KHN0cnVjdCBtaHV2MyAqbWh1KQo+Cj4gICAgICAgICAgICAgICAgIHJldCA9
IGRldm1fcmVxdWVzdF90aHJlYWRlZF9pcnEoZGV2LCBtaHUtPmNtYl9pcnEsIE5VTEwsCj4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgbWh1djNfcGJ4X2Nv
bWJfaW50ZXJydXB0LAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIElSUUZfT05FU0hPVCwgIm1odXYzLXBieCIsIG1odSk7Cj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgSVJRRl9PTkVTSE9UIHwgSVJRRl9OT19T
VVNQRU5ELAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICJtaHV2My1wYngiLCBtaHUpOwo+ICAgICAgICAgICAgICAgICBpZiAocmV0KQo+ICAgICAgICAg
ICAgICAgICAgICAgICAgIHJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgcmV0LAo+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJGYWlsZWQgdG8gcmVxdWVzdCBQ
QlggSVJRXG4iKTsKPiBAQCAtMTAxNyw3ICsxMDE4LDggQEAgc3RhdGljIGludCBtaHV2M19zZXR1
cF9tYngoc3RydWN0IG1odXYzICptaHUpCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICJNQlggY29tYmluZWQgSVJRIGlzIG1pc3NpbmcgIVxuIik7Cj4KPiAgICAgICAgIHJl
dCA9IGRldm1fcmVxdWVzdF90aHJlYWRlZF9pcnEoZGV2LCBtaHUtPmNtYl9pcnEsIE5VTEwsCj4g
LSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIG1odXYzX21ieF9jb21iX2lu
dGVycnVwdCwgSVJRRl9PTkVTSE9ULAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBtaHV2M19tYnhfY29tYl9pbnRlcnJ1cHQsCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIElSUUZfT05FU0hPVCB8IElSUUZfTk9fU1VTUEVORCwKPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIm1odXYzLW1ieCIsIG1odSk7Cj4g
ICAgICAgICBpZiAocmV0KQo+ICAgICAgICAgICAgICAgICByZXR1cm4gZGV2X2Vycl9wcm9iZShk
ZXYsIHJldCwgIkZhaWxlZCB0byByZXF1ZXN0IE1CWCBJUlFcbiIpOwo+IC0tCj4gMi40My4wCj4K
QXBwbGllZCB0byBtYWlsYm94L2Zvci1uZXh0CgpUaGFua3MKSmFzc2kKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
