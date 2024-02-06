Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E10EC48297
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Feb 2024 21:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jzllzh2QihPafqTJgIPBgTcK0/eTrHQGLs/AvvJ4geM=; b=oSgC8SHTtjUccU
	Sl/cX8NQEdi15gvwspfkiXVj/KVpNloMZ0xr1IHWRGdVf6Yvc1KXKHe77al1gJOMZGsdCiPtuOrcJ
	e+mHaw77YYUbSBjZxEszTJN0gjv3J0Masgmep2+xUmLNBiThsdqWf3csyPrwUyJXs0Yl92vSjAKH8
	ftUpHmTpRuVOqDpvKgXLAYBGPg/d0XqD5ArkSP1ESU0pRFypVNfix1f2lmePRvHqiHP1faGanZILB
	ZdQu+DUK5yMfySebI55eFDOtTaIl8LzN34a8nebVEhVOBB01TzIfO/kKON1mYHr8CeoFbaNxPLRfV
	9nG9H33GreoIoBow6YAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXT2C-00000008zJa-1EaS;
	Tue, 06 Feb 2024 21:31:16 +0000
Received: from mail-yw1-x112c.google.com ([2607:f8b0:4864:20::112c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXT26-00000008zIY-2wkQ
	for linux-rockchip@lists.infradead.org;
	Tue, 06 Feb 2024 21:31:14 +0000
Received: by mail-yw1-x112c.google.com with SMTP id 00721157ae682-603fd31f5c2so8858847b3.0
        for <linux-rockchip@lists.infradead.org>; Tue, 06 Feb 2024 13:31:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=umich.edu; s=google-2016-06-03; t=1707255068; x=1707859868; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VhV9Y2ehoq2QR/dvYkGZ3565MBi13h4c1EWlFat09sM=;
        b=fDB3lsNfwC9YG/1MHP5WeiYYpAe9+19cDgiWdYLYkzHRYaSU+UO3Nbg6I7AiHkTdEV
         S5H3uCgpC2+kMuXHOy3/xJIpDSMb7zs79PiacLD2yv3RP5wvdEIFvkni4eO37F7t9Xso
         JKiQS3x4M0KIdCxClE8ADJfXWSGkbWEOHttiBzAt0Q59MiWD/VHCKK8lPKkOI4TsnT75
         qbJ9o+hLcMpdIN0l19eYXOd9Cc8RYVeQ+WIENMRLhHMOcjdgpy6MjZAXal5onUMmzKY7
         Q8AluwweqkrhsmNTY9lLa8n0XeYIa3Hc87y5iC7T0VGbyxaVBmvW4DmoR9EInvS1lKvM
         g40g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707255068; x=1707859868;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VhV9Y2ehoq2QR/dvYkGZ3565MBi13h4c1EWlFat09sM=;
        b=HKCQ38GcuOmcAXgjaV3G9kKllYXjNzrRte0I9eSI/bCu1scuXJF6HvoFbEuhIOXT3b
         e8EJnPipZ1M756DO3TJpz7Y9kUNpgSk1rAjajpkue3K036X3wSAaNzoWo9cOg+KDZgGl
         NaGnSGcH54qCz7X+uYKHr/tnTvW/TU+5cNBL9j4EYackqqV66+Y/O8kum5fdilEXXNny
         ZG8hoCF68MiZRjg6FUn30XCMTZtspa8+uqy1sBkEEzZXfvGCRBHljqL4Oq7ouo/RyDfw
         rGvqkmRkIhzd3KL752T6jrby8ltk3ZXvsraPk/nfFRNLnyyQr32SePpcxqm28i2kffzD
         QDcg==
X-Gm-Message-State: AOJu0YzYfUyojEA2N8707K4kdQj6f6kKcpprRZNzBQxG/ShL/3n8KEiz
	fQlr7+xVtyTvgZzRiA+7B0ZIoIByfZb5idY/zw9I8XUMXI/3gyB/Kzt+/b84QWrb4DAHR/TMCGB
	H2bMPGZaUNEzRwLXtOCnb3SpUiBbZLU5/dtMDgQ==
X-Google-Smtp-Source: AGHT+IFD2ZtVNg+yyFr7gOe+lmhrUgZsDA+InS6rti8MMhXWEbu1XvWLZZAzBuooSjg26Rp0Iuv+ch+bOB9DNvbOdYw=
X-Received: by 2002:a0d:db4f:0:b0:604:3ef:a729 with SMTP id
 d76-20020a0ddb4f000000b0060403efa729mr2685245ywe.15.1707255068386; Tue, 06
 Feb 2024 13:31:08 -0800 (PST)
MIME-Version: 1.0
References: <20240201-rockchip-rust-phy_depend-v2-0-c5fa4faab924@christina-quast.de>
 <20240201-rockchip-rust-phy_depend-v2-3-c5fa4faab924@christina-quast.de>
 <CALNs47tnwCgyvM2jBo=bTt1=2AJFt3b6W+JsTHM3Np2tbNJYCA@mail.gmail.com> <eb229460-0efc-448a-863f-ac0634a72f2c@christina-quast.de>
In-Reply-To: <eb229460-0efc-448a-863f-ac0634a72f2c@christina-quast.de>
From: Trevor Gross <tmgross@umich.edu>
Date: Tue, 6 Feb 2024 16:30:56 -0500
Message-ID: <CALNs47tfmcayLdbLbArPS=AHwETiaQKZ09h69_Q4HmfrMPk4-A@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] net: phy: add Rust Rockchip PHY driver
To: Christina Quast <chrysh@christina-quast.de>, Shashwat Kishore <kshashwat13@gmail.com>
Cc: Christina Quast <contact@christina-quast.de>, Miguel Ojeda <ojeda@kernel.org>, 
	Alex Gaynor <alex.gaynor@gmail.com>, Wedson Almeida Filho <wedsonaf@gmail.com>, 
	Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
	=?UTF-8?Q?Bj=C3=B6rn_Roy_Baron?= <bjorn3_gh@protonmail.com>, 
	Benno Lossin <benno.lossin@proton.me>, Andreas Hindborg <a.hindborg@samsung.com>, 
	Alice Ryhl <aliceryhl@google.com>, FUJITA Tomonori <fujita.tomonori@gmail.com>, 
	Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Heiko Stuebner <heiko@sntech.de>, rust-for-linux@vger.kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240206_133110_838946_6E6E95FE 
X-CRM114-Status: GOOD (  13.13  )
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

T24gVHVlLCBGZWIgNiwgMjAyNCBhdCAyOjIw4oCvUE0gQ2hyaXN0aW5hIFF1YXN0CjxjaHJ5c2hA
Y2hyaXN0aW5hLXF1YXN0LmRlPiB3cm90ZToKPgo+IEhpIFRyZXZvciEKPgo+IFRoYW5rcyBhIGxv
dCBmb3IgeW91ciByZXZpZXcsIEkgbGVhcm5lZCBhIGxvdCEgSSBmZWx0LCBmcm9tIHRoZSBmZWVk
YmFjawo+IGluIHRoZSBadWxpcCBmb3J1bSB0aGF0IHJld3JpdGluZyBtb3JlIHBoeSBkcml2ZXJz
IG1pZ2h0IGJlIGludGVyZXN0aW5nLAo+IGJ1dCBJIHRoaW5rIEkgbWlzdW5kZXJzdG9vZCBzb21l
dGhpbmcuCj4KPiBUaGVyZSBpcyBubyBzcGVjaWZpYyBnb2FsIGJlaGluZCB0aGUgcmV3cml0ZSwg
SSBqdXN0IHRob3VnaHQgaXQgd291bGQgYmUKPiB1c2VmdWwgdG8gYnJpbmcgbW9yZSBSdXN0IGlu
dG8gdGhlIEtlcm5lbC4KPgo+IENoZWVycywKPgo+IENocmlzdGluYQoKSGFwcHkgdG8gaGVscCA6
KQoKVGhlcmUgaXMgZGVmaW5pdGVseSBubyBoYXJtIGluIGV4cGVyaW1lbnRpbmcsIGJ1dCB0aGUg
Z2VuZXJhbAoocmVhc29uYWJsZSkgcnVsZSBpcyB0aGF0IHRoZXJlIHNob3VsZG4ndCBiZSBkdXBs
aWNhdGUgZHJpdmVycwppbi10cmVlLCBldmVuIGFjcm9zcyBsYW5ndWFnZXMuCgpXaGF0IHlvdSBw
cm9iYWJseSBzYXcgb24gWnVsaXAgaXMgdGhhdCB3ZSB3ZXJlIHRyeWluZyB0byBsb2NhdGUgbmV3
ZXIKcGh5cyB0aGF0IGRvbid0IGFscmVhZHkgaGF2ZSBhIEMgZHJpdmVyLiBTaGFzaHdhdCByZWFj
aGVkIG91dCB0byBhIGZldwpjb21wYW5pZXMgYW5kIG1lbnRpb25lZCB0aGF0IE1pY3JvY2hpcCB3
YXMgaW50ZXJlc3RlZCBpbiBkcml2ZXJzIGZvcgpzb21lIG9mIHRoZWlyIFZTQzg0eHgvODJ4eCBm
YW1pbGllcy4gVGhleSBhcmUgYSBiaXQgbW9yZSBjb21wbGljYXRlZAooTUFDU2VjLCBYRkkvU0ZQ
KykgYW5kIGFwcGFyZW50bHkgc29tZXdoYXQgZGlmZmljdWx0IHRvIGdldCBoYXJkd2FyZQpmb3Is
IGJ1dCB0aGF0IG1pZ2h0IGJlIGFuIG9wdGlvbiBpZiB5b3UgYXJlIGludGVyZXN0ZWQgaW4gd29y
a2luZyBvbgpzb21ldGhpbmcgbGlrZSB0aGlzLgoKQW5kcmV3IG1pZ2h0IGhhdmUgc29tZSBpZGVh
cyB0b28uIFRoZXJlIGFyZSBhIGxvdCBvZiBuZXcgcGh5cyBjb21pbmcKb3V0IHNpbmNlIE1BQ3Nl
YyBpcyBnZXR0aW5nIG1vcmUgcG9wdWxhciwgYWxzbyBzb21lIG5ld2VyIHNwZWNzIGxpa2UKMTBH
QmFzZS1UMSBhbmQgMTBCYXNlLVQxUy4KCi0gVHJldm9yCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
