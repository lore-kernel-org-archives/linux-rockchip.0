Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29324E776C0
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 16:12:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sLVo2gspQ4+AhoaUhtweHcIjYsDkgd7fE0c3vtnijvI=; b=g9DDnVeU6seNVZ
	zPJs2rZvCKesGp4CS49Xj5HZJ4PsM0+C/I6iG3tYyD1s7m2pmJR0nm+aTT5opaCmFipOilPlnFTPB
	VATsWDVJYtOllNvT3ncKTJgkJTKElHAuBbdh2RX4ZOryt9U9zgv42sR5wI/HFnaMTRqMZxMz8mzOI
	FBDsgHv0BnLbqVe4M0f9j6IZC5z5jxVxxYTVp1WjxRwr0lJ/wJPX1BdAKQiUo0LdZSEJanUBWUMZW
	KUT6D7cG9WbyOg/5BxZgdWdekhU1kpSpPtc/D2e9lBW8kcWEUy+NkaboKjw4Lpj2IALqWVRwWcl/0
	jrU7G4TkyApBth0wNOjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYRT0-0000000HChL-1mEC;
	Wed, 24 Dec 2025 16:12:04 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYRSy-0000000HCfy-2Gcl
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 16:12:01 +0000
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-b713c7096f9so965480066b.3
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Dec 2025 08:11:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766592718; x=1767197518; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rFryFaNSwdzD/vSDQgCvIb9qGKYtzkN+fGok+kNOoDo=;
        b=Txy08JKvCX4pYV19hvMlqNT2DikROkn1PjWqYuUDk0oacrMn/oDB3cUmXgoquLqFAy
         w4V2aaiigg8VkTR2wWrsqPIZwmHcy0HX62PRyq2XS4/lL/Lkx9Rmb1gLOW/MwPvVhClg
         j0K0H152aYc+r6iZQh/G6ACcAX77JKQh09pv4R202xMB19FOndTBBKJmkwhAP8Fgg+st
         n9rfA5YjeYGjqrOVYxRMIWCQBtAekthiqeBJMZGfLAJujSn3uB8sq8M0hiSZQGw9Sknc
         ZBAq82evHYCQUMV6r8+XPZO82Lx9r76QjZQYCicD3Oa4BayWklj7ZBejZ6k82kHsSIH9
         cnqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766592718; x=1767197518;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rFryFaNSwdzD/vSDQgCvIb9qGKYtzkN+fGok+kNOoDo=;
        b=DCpyIENr3UDXME/NT4SCPwO8saneXo1JyXoUcyWyFf/4LEv9kGIu93Q47KIQNJnHfm
         k9phx41VFP1fscnRRqIROPdOCe02gVawcwS8gsSLvAezy+lLv4hbBcriBfo8z0zlzqG7
         Hu+e6gbMHvRmyEwxVaMgmRsqQavtgoGKKHbSomOJp3kG8mT3SS8C/CZ+Tdr4OtxYuVcB
         V3bHgbouTgdR+hFJli4QtaELeXQJtCzcs2y73WZcofL5z22Fc218g3bJaz9wC0NuWDYh
         qgQqn+jrHKOIMfsbV4j2NLWLwx8jjlvIyiOX6IJegjlOgm2EnD22Oxxnvm1O/MIFUT2I
         fHcw==
X-Forwarded-Encrypted: i=1; AJvYcCVMO0xqCgG/iXjA45mgXOC+uZod9oC2YHPnIDaF2zkapjyoaJQO/x4H+vNOHw1bA34auK8AguHkFA4wUWb35g==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzyv0X+TqvyD90LKfuB9MvEs4PPUwYvXPw+qAmezaTZFOCzO6gP
	5DfgSv4VYERxxBLhNVXpVH0rherpbTH99NKRqhxcMDsqERI+qHGHNc8SXPwQ6lsni1zJHMb6teB
	ffnuSvOyhVaTamMj4AfwJrN0GiW3lqys=
X-Gm-Gg: AY/fxX5EaptZvRJ3gi0jMq0NJswz7fB5lm1wmWioNGvpR7rzMOeIC14uZDPhee7z/6+
	9Bk4exSE291UIDSInRT0YtjR91dR50jUZBWcguoxjEx81OU9rEw30w2wa0VFdjjblAivQ1ijsNl
	n5ROqsbp/ieJg6uXi4onTbsX/9sx/4nqb9qTFlLD1TgPv0ZdDVJJ/y1VCE+ER1V/N7xib8TC3iJ
	uTLfkcwgfPJ1x1L632+VNSf5tz1aanBVE6FYsPudyXmmMLYE+2p3HSLES2ym+wbNlI=
X-Google-Smtp-Source: AGHT+IF8JwCFITnsLBTkXmiS0L4MmwBGPqpepuJqg06icSWw77Trn5dPC9ARbJb2q7e916O74g9D6jFvUiAyqH6N2Ek=
X-Received: by 2002:a17:906:2082:b0:b80:3fb7:84f with SMTP id
 a640c23a62f3a-b803fb70d84mr1260286766b.38.1766592716002; Wed, 24 Dec 2025
 08:11:56 -0800 (PST)
MIME-Version: 1.0
References: <cover.1763415705.git.geraldogabriel@gmail.com>
 <eaa9c75ca02a53f8bcc293b8bc73d013e26ec253.1763415706.git.geraldogabriel@gmail.com>
 <CANAwSgQ726J_vnDKEKd94Kq62kx8ToZzUGysz4r3tNAXvfAbGA@mail.gmail.com>
 <CAEsQvctSY7-RQEQF2TmJU2qKPZOe9TC5g-7Jat0LQKRHYz_6dQ@mail.gmail.com>
 <CANAwSgQPQUBi6VVb+hZNraMt71vnRpki+YK_at=Luo4aPVtOPg@mail.gmail.com> <0afea20b-be22-2404-5a8e-c798ed45f2fd@manjaro.org>
In-Reply-To: <0afea20b-be22-2404-5a8e-c798ed45f2fd@manjaro.org>
From: Anand Moon <linux.amoon@gmail.com>
Date: Wed, 24 Dec 2025 21:41:38 +0530
X-Gm-Features: AQt7F2q-4QkIrb7HCrmK7bnip5LMtE41U74PCnTtsggrekXUlmrVmrAckqk4Lqg
Message-ID: <CANAwSgS6UeR4PJnWDxxcQbdH8u_4uNiQxCTugQS35LcPvpiwMQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] PCI: rockchip: limit RK3399 to 2.5 GT/s to prevent damage
To: Dragan Simic <dsimic@manjaro.org>
Cc: Geraldo Nascimento <geraldogabriel@gmail.com>, Shawn Lin <shawn.lin@rock-chips.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Jonker <jbx6244@gmail.com>, linux-rockchip@lists.infradead.org, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251224_081200_589380_A3F3A7FB 
X-CRM114-Status: GOOD (  20.86  )
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

SGkgRHJhZ2FuLAoKT24gV2VkLCAyNCBEZWMgMjAyNSBhdCAxODoyNSwgRHJhZ2FuIFNpbWljIDxk
c2ltaWNAbWFuamFyby5vcmc+IHdyb3RlOgo+Cj4gSGVsbG8gQW5hbmQsCj4KPiBPbiBXZWRuZXNk
YXksIERlY2VtYmVyIDI0LCAyMDI1IDA5OjA0IENFVCwgQW5hbmQgTW9vbiA8bGludXguYW1vb25A
Z21haWwuY29tPiB3cm90ZToKPiA+IE9uIFdlZCwgMjQgRGVjIDIwMjUgYXQgMTE6MDgsIEdlcmFs
ZG8gTmFzY2ltZW50bwo+ID4gPGdlcmFsZG9nYWJyaWVsQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+
IE9uIFdlZCwgRGVjIDI0LCAyMDI1IGF0IDI6MTjigK9BTSBBbmFuZCBNb29uIDxsaW51eC5hbW9v
bkBnbWFpbC5jb20+IHdyb3RlOgo+ID4gPiA+IE9uIFR1ZSwgMTggTm92IDIwMjUgYXQgMDM6MTcs
IEdlcmFsZG8gTmFzY2ltZW50bwo+ID4gPiA+IDxnZXJhbGRvZ2FicmllbEBnbWFpbC5jb20+IHdy
b3RlOgo+ID4gPiA+ID4gU2hhd24gTGluIGZyb20gUm9ja2NoaXAgaGFzIHJlaXRlcmF0ZWQgdGhh
dCB0aGVyZSBtYXkgYmUgZGFuZ2VyIGluIHVzaW5nCj4gPiA+ID4gPiB0aGVpciBQQ0llIHdpdGgg
NS4wIEdUL3Mgc3BlZWRzLiBXYXJuIHRoZSB1c2VyIGlmIHRoZXkgbWFrZSBhIERUIGNoYW5nZQo+
ID4gPiA+ID4gZnJvbSB0aGUgZGVmYXVsdCBhbmQgZHJpdmUgYXQgMi41IEdUL3Mgb25seSwgZXZl
biBpZiB0aGUgRFQKPiA+ID4gPiA+IG1heC1saW5rLXNwZWVkIHByb3BlcnR5IGlzIGludmFsaWQg
b3IgaW5leGlzdGVudC4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBUaGlzIGNoYW5nZSBpcyBjb3Jyb2Jv
cmF0ZWQgYnkgUkszMzk5IG9mZmljaWFsIGRhdGFzaGVldCBbMV0sIHdoaWNoCj4gPiA+ID4gPiBz
YXlzIG1heGltdW0gbGluayBzcGVlZCBmb3IgdGhpcyBwbGF0Zm9ybSBpcyAyLjUgR1Qvcy4KPiA+
ID4gPiA+Cj4gPiA+ID4gPiBbMV0gaHR0cHM6Ly9vcGVuc291cmNlLnJvY2stY2hpcHMuY29tL2lt
YWdlcy9kL2Q3L1JvY2tjaGlwX1JLMzM5OV9EYXRhc2hlZXRfVjIuMS0yMDIwMDMyMy5wZGYKPiA+
ID4gPiA+Cj4gPiA+ID4gVG8gYWNjdXJhdGVseSBkZXRlcm1pbmUgdGhlIG9wZXJhdGluZyBzcGVl
ZCwgd2UgY2FuIGxldmVyYWdlIHRoZQo+ID4gPiA+IFBDSUVfQ0xJRU5UX0JBU0lDX1NUQVRVUzAv
MSBmaWVsZHMuCj4gPiA+ID4gVGhpcyBwcm92aWRlcyBhIGR5bmFtaWMgbWVjaGFuaXNtIHRvIHJl
c29sdmUgdGhlIGlzc3VlLgo+ID4gPiA+Cj4gPiA+ID4gWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS90
b3J2YWxkcy9saW51eC9ibG9iL21hc3Rlci9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9j
a2NoaXAtZXAuYyNMNTMzLUw1OTUKPiA+ID4KPiA+ID4gbm90IHRvIHB1dCB5b3UgZG93biBidXQg
SSB0aGluayB5b3VyIGFwcHJvYWNoIGFkZHMgdW5uZWNlc3NhcnkgY29tcGxleGl0eS4KPiA+ID4K
PiA+ID4gQWxsIEkgY2FyZSByZWFsbHkgaXMgdGhhdCB0aGUgS2VybmVsIFByb2plY3QgaXNuJ3Qg
YmxhbWVkIGluIHRoZQo+ID4gPiBmdXR1cmUgaWYgc29tZW9uZSBoYXBwZW5zIHRvIGxvc2UgdGhl
aXIgZGF0YS4KPiA+ID4KPiA+IEFsbG93IHRoZSBoYXJkd2FyZSB0byBuZWdvdGlhdGUgdGhlIGxp
bmsgc3BlZWQgYmFzZWQgb24gdGhlCj4gPiBhdmFpbGFibGUgbnVtYmVyIG9mIGxhbmVzLgo+ID4g
SSBkb27igJl0IGFudGljaXBhdGUgYW55IGRhdGEgbG9zcywgc2luY2UgUENJZSB3aWxsIGF1dG9t
YXRpY2FsbHkKPiA+IGNvbmZpZ3VyZSB0aGUgZGV2aWNlIHNwZWVkIHdpdGggbGluayB0cmFpbmlu
Zy4uCj4KPiBQbGVhc2UsIG5vdGUgdGhhdCB0aGlzIGlzbid0IGFib3V0IHBlcmZvcm1pbmcgYXV0
byBuZWdvdGlhdGlvbgo+IGFuZCBmb2xsb3dpbmcgaXRzIHJlc3VsdHMsIGJ1dCBhYm91dCAiYXJ0
aWZpY2lhbGx5IiBsaW1pdGluZyB0aGUKPiBQQ0llIGxpbmsgc3BlZWQgdG8gMi41IEdUL3Mgb24g
UkszMzk5LCBiZWNhdXNlIGl0J3Mgd2VsbCBrbm93bgo+IGJ5IFJvY2tjaGlwIHRoYXQgNSBHVC9z
IG9uIFJLMzM5OSdzIFBDSWUgaW50ZXJmYWNlIG1heSBjYXVzZQo+IGlzc3VlcyBhbmQgZGF0YSBj
b3JydXB0aW9uIGluIGNlcnRhaW4gY29ybmVyIGNhc2VzLgo+Ckl04oCZcyBwb3NzaWJsZSB0aGUg
bGluayBzcGVlZCB3YXNu4oCZdCBwcm9wZXJseSB0dW5lZC4gT24gbXkgb2xkZXIKZGV2ZWxvcG1l
bnQgYm9hcmQsCndoaWNoIHN1cHBvcnRzIHRoaXMgY29uZmlndXJhdGlvbiwgSSBoYXZlbuKAmXQg
b2JzZXJ2ZWQgYW55IGRhdGEgbG9zcy4KCnN1ZG8gbHNwY2kgLXZ2diB8IGdyZXAgU3BlZWQKICAg
ICAgICAgICAgICAgIExua0NhcDogUG9ydCAjMCwgU3BlZWQgNUdUL3MsIFdpZHRoIHgxLCBBU1BN
IEwxLCBFeGl0CkxhdGVuY3kgTDEgPDh1cwogICAgICAgICAgICAgICAgTG5rU3RhOiBTcGVlZCA1
R1QvcywgV2lkdGggeDEKICAgICAgICAgICAgICAgIExua0N0bDI6IFRhcmdldCBMaW5rIFNwZWVk
OiA1R1QvcywgRW50ZXJDb21wbGlhbmNlLSBTcGVlZERpcy0KICAgICAgICAgICAgICAgIExua0Nh
cDogUG9ydCAjMSwgU3BlZWQgNUdUL3MsIFdpZHRoIHgxLCBBU1BNIEwwcyBMMSwKRXhpdCBMYXRl
bmN5IEwwcyB1bmxpbWl0ZWQsIEwxIDwydXMKICAgICAgICAgICAgICAgIExua1N0YTogU3BlZWQg
NUdUL3MsIFdpZHRoIHgxCiAgICAgICAgICAgICAgICBMbmtDdGwyOiBUYXJnZXQgTGluayBTcGVl
ZDogNUdUL3MsIEVudGVyQ29tcGxpYW5jZS0gU3BlZWREaXMtCgpUaGFua3MKLUFuYW5kCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
