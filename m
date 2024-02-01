Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 75537C48286
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 18:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oSvcw1STgdvTKOrdnXz4Q8G9OHcZBR/jZ8UfTdl6SDE=; b=yfkC2zGRqOJlD3
	pmMQkIdW8uiEiuayTFj8jVsawj+fVvzbix/zOic6lb5s4DeYhxQKPc0rnsVy4yO+aroxK7UmJ1hai
	LNyWrpocyN2pOgYA+bDCdi/k6X1chmpnUAXXvkCTQQGDVvaMa9Vk4kB3QciJ49TVbcyxOtYXbIAnJ
	IhgDNv+zrkqd64fXC2p5/UUMrmHz3QMlivnqhGifD6EQ7lDu/qUYAw0sWRBsajsKLoP1o7+RejsAX
	KqmsiOrYX8DkjJJpFiBcpsYSaE7YTSHFAR/OrH2MG2yPte0CDsp8yoQihEbdvZN71Szoqbh85m9qh
	PKiAXk+mJeglqDvG90pA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVbtJ-0000000924i-3Xo1;
	Thu, 01 Feb 2024 18:34:25 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVbtF-00000009235-46yE;
	Thu, 01 Feb 2024 18:34:23 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-5edfcba97e3so13229317b3.2;
        Thu, 01 Feb 2024 10:34:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706812459; x=1707417259; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2Fd7ZWV1LtdaA8VIvBJoCEjDaseHpe8ZGvyJPTjzAFU=;
        b=NKGM00EBKzKy+3B7rGYg1yEImMny4sl3Z5bhm9ATXOs0gPnI8h5kGGmsb5uq3IP1my
         Q+l9DHBrrSU20G0/84U3Yboi98SjZPCo6XT+heJXBcqzA3iYYygmUOorKLneIV81b8a9
         qXGigIckR85rkhReDtgAbAnYJIkYRuF9wc4hF4n+x15jW6pe6K3e7rw9u0bTGQAdUTrn
         F6r34C1+dyL6WYdwmYKHjHweIsJqdhzzsnnfIwBISzdfIseXWtx92msxADpfBwjQUzWh
         /eJGAUOAdd1SHDUrA88Bv2ID4uhh9CR6X8pKMiby2bFfPZu9avVI9BtezHgebu1QbE4s
         xhzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706812459; x=1707417259;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2Fd7ZWV1LtdaA8VIvBJoCEjDaseHpe8ZGvyJPTjzAFU=;
        b=sjnCQ+XSXksrE3+gQ/wnv4OVFSxt2XqMVWy1ExyScOsNHb7hg1aCqC3Q93m0/YyObr
         uzaw+ZvyHYvdDPxUiBSBnvtBBfa4PL4YW6WzxESVbuQIS5O5wlnoGFV0PmlHPyxtS9XS
         n8OB11SlHwMpqmJDIhYPm8KmRcwqeJJls/0Y7aqB7g1jb04Pflebzv3CCzFEAlMuZX/d
         qGq9qnvW8d/3RQZihbPiWergln+4UVr3CEEyym/dKYeQJZVpoyWrTX35oHVJFOPSLtVD
         2Lvn6rPXSy8FGoY35lVdsp1uK7dwZTcDeHKaqEzm7mkjHxcTJVtP/knxGiKonVDhySoP
         qLPA==
X-Gm-Message-State: AOJu0YzWGd2PzgY6GnOPgRNlOK3wkdyl2BouzdlkFA9lZ9hBgGiZbgQM
	nGVVlKJDpLDjdPtbRj/3xy/uKNnMwVGUxPUhWWReV/3hTHXn1wCj3WwIdHVJheC9NWwIvhNB4iQ
	ISOdYnaO3DwuSe08kI3MO/Zjxnt0=
X-Google-Smtp-Source: AGHT+IE1UzMW3ajeW1lZaI3w44rZhcB3D2va3eYE5sqzhtCO0UvDe9iJkrBl3dzQEm5YGU+2doCeOCar7s2MtUlbPZk=
X-Received: by 2002:a81:b64b:0:b0:602:cf62:6590 with SMTP id
 h11-20020a81b64b000000b00602cf626590mr5631484ywk.34.1706812459677; Thu, 01
 Feb 2024 10:34:19 -0800 (PST)
MIME-Version: 1.0
References: <20240201-rockchip-rust-phy_depend-v2-0-c5fa4faab924@christina-quast.de>
 <20240201-rockchip-rust-phy_depend-v2-1-c5fa4faab924@christina-quast.de>
In-Reply-To: <20240201-rockchip-rust-phy_depend-v2-1-c5fa4faab924@christina-quast.de>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 1 Feb 2024 19:34:08 +0100
Message-ID: <CANiq72nE6vy3dy3VTUkdKb3Vep72jxvHb=Jd2ykue8Nd1Vk-jg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] DONOTMERGE: rust: prelude: add bit function
To: Christina Quast <contact@christina-quast.de>
Cc: Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, 
	Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
	=?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
	Benno Lossin <benno.lossin@proton.me>, Andreas Hindborg <a.hindborg@samsung.com>, 
	Alice Ryhl <aliceryhl@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, 
	Trevor Gross <tmgross@umich.edu>, Andrew Lunn <andrew@lunn.ch>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Heiko Stuebner <heiko@sntech.de>, 
	rust-for-linux@vger.kernel.org, linux-kernel@vger.kernel.org, 
	netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240201_103422_053569_BE261565 
X-CRM114-Status: GOOD (  20.82  )
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

T24gVGh1LCBGZWIgMSwgMjAyNCBhdCA3OjA34oCvUE0gQ2hyaXN0aW5hIFF1YXN0Cjxjb250YWN0
QGNocmlzdGluYS1xdWFzdC5kZT4gd3JvdGU6Cj4KPiBJbiBvcmRlciB0byBjcmVhdGUgbWFza3Mg
ZWFzaWx5LCB0aGUgZGVmaW5lIEJJVCgpIGlzIHVzZWQgaW4gQyBjb2RlLgo+IFRoaXMgY29tbWl0
IGFkZHMgdGhlIHNhbWUgZnVuY3Rpb25hbGl0eSB0byB0aGUgcnVzdCBrZXJuZWwuCgpOb3RlIHRo
YXQgaXQgaXMgdGhlIHNhbWUga2VybmVsIDopIFR5cGljYWxseSB3ZSB3b3VsZCBzYXkgInRvIHRo
ZSBSdXN0CnNpZGUiIG9yIHNpbWlsYXIuCgo+IERvIG5vdCBtZXJnZSB0aGlzIGNvbW1pdCwgYmVj
YXVzZSBydXN0L2tlcm5lbC90eXBlcy5ycyBpbiBSdXN0LWZvci1MaW51eAo+IGFscmVhZHkgY29u
dGFpbnMgdGhpcyBmdW5jdGlvbmFsaXR5IGFuZCB3aWxsIGJlIG1lcmdlZCBpbnRvIG5leHQtbmV0
Cj4gc29vbi4KCkkgdGhpbmsgeW91IG1lYW4gdGhlIGFyY2hpdmVkIGBydXN0YCBicmFuY2ggKGl0
IGlzIHVzZWZ1bCB0byBwb2ludAp0aGlzIG91dCAtLSBSdXN0IGZvciBMaW51eCBpcyBub3QganVz
dCB0aGF0IGJyYW5jaCkuCgpIb3dldmVyLCBoYXMgdGhlIGBCaXRgIHR5cGUgKGFzc3VtaW5nIHlv
dSBtZWFuIHRoYXQpIGJlZW4gc3VibWl0dGVkPyBJCmRvbid0IHJlY2FsbCBzZWVpbmcgaXQsIGFu
ZCBub3JtYWxseSBzb21ldGhpbmcgbGlrZSB0aGF0IHdvdWxkIG5vdCBnbwp0aHJvdWdoIGBuZXQt
bmV4dGAuIElmIGl0IGhhcyBiZWVuLCBjb3VsZCB5b3UgcGxlYXNlIHNlbmQgdGhlIExvcmUKbGlu
az8KCj4gQnV0IHRoaXMgZHJpdmVyIGRvZXMgbm90IGNvbXBpbGUgd2l0aG91dCB0aGlzIGNvbW1p
dCwgc28gSSBhbSBhZGRpbmcgaXQKPiB0byB0aGUgcGF0Y2hzZXQgdG8gZ2V0IG1vcmUgZmVlZGJh
Y2sgb24gdGhlIGFjdHVhbCBkcml2ZXIuCgpBc3N1bWluZyB0aGUgcGF0Y2ggd2FzIG5vdCBzZW50
LCBJIHdvdWxkIHN1Z2dlc3QgcmVwbGFjaW5nIHRoaXMgY29tbWl0CndpdGggdGhlIGRlcGVuZGVu
Y3kgeW91IHdhbnQgdG8gdXNlLCBlLmcuIHRoZSBgQml0YCB0eXBlLCBzaW5jZSBpdCBpcwphIHNt
YWxsIGVub3VnaCBvbmUuCgpJbiBhZGRpdGlvbiwgdGhpcyBzZXJpZXMgaGFzIHYyIGluIHRoZSB0
aXRsZSAtLSBJIHRoaW5rIHlvdSBkaWQgdGhhdApiZWNhdXNlIHRoaXMgcGF0Y2ggd2FzIGFscmVh
ZHkgc3VibWl0dGVkLCBidXQgdGhpcyBpcyBub3QgcmVhbGx5IGEgdjIKb2YgdGhhdCBzZXJpZXMg
c2luY2UgdGhpcyBpcyBtYWlubHkgYWJvdXQgdGhlIGRyaXZlciAoYW5kIGFueXdheSB0aGlzCnBh
dGNoIGluIHBhcnRpY3VsYXIgaXMgbm90IG1lYW50IHRvIGJlIG1lcmdlZDsgcGx1cyB5b3UgZGlk
bid0IGNoYW5nZQppdCBmcm9tIHdoYXQgSSBjYW4gc2VlKS4KClRoYW5rcyEKCkNoZWVycywKTWln
dWVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
