Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A528FC4828D
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Feb 2024 20:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4d4fmU2uD6dNg5CRwaGM7Rm7e0ie7+FiUtPv7fSqUGU=; b=l6ndewyp7qtzAY
	5ReiEPTM+11gLbaM1hB4P2FXOo1UJSzELWpR+cH76N7AfLQPQajyHZqeG2zMgpJ/1du/YFFP/VVrQ
	CaLWq2V3JCIEXgzThHaMGnh3KpX2YOAP3zARTRe/HIond+ztbZXZb5r7//teEPLVEUUOHwRjWmE5L
	eShPmGnuFBNNE2ex9Qn9+70dQAjQe3RxjzSXL/2lg6ZuBq9jHY2yWoV8Vp5ulQlc/iu3z+AWxUtqd
	FBQuEFNlUUXVNIZgVlu1GYFd0Y6awj0N2/rizHIc5rz55t42cN2M39T6MvsLGev0qeaBo78E4xAcb
	LQPxGwT5Px2MyCHfJfXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVdGW-00000009FAe-3wYT;
	Thu, 01 Feb 2024 20:02:28 +0000
Received: from mail-oi1-x22d.google.com ([2607:f8b0:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVdGT-00000009F83-43oe
	for linux-rockchip@lists.infradead.org;
	Thu, 01 Feb 2024 20:02:27 +0000
Received: by mail-oi1-x22d.google.com with SMTP id 5614622812f47-3bbbc6e51d0so876923b6e.3
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Feb 2024 12:02:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=umich.edu; s=google-2016-06-03; t=1706817734; x=1707422534; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oKtKU9ec/rsz7HBSzIU5uqFOSZbUdu+2rlARf46Czpw=;
        b=U0hyfl9rcq3qak4PJqczT773VLjc0y+4v8Ky6ln5eXMTRyXyV998USNg6RcDNQrmkP
         sAHfy886gRY6Nmlq7T4wmkgZiYSxhQx6VUcJ/vdifi4E8eGsz1x1LqDJqfhB3tw54tPx
         xFVbRV6tVqKNvDuJqo2UqU9VGcjJ+RHCTXvrXQpkizDsp3sAbhCjFhP3+3wn3p1NrGhi
         BoPBowTlSDOgfFKZs55qMClSfoDPnxAMfz64o5mZO/PsKXf2+UQwGq95N2PSQC6O0p1t
         6146ag1Na9MFyfv91UkcM+ZF/SoYKDjWHzKkQQBVYEv+SCnYD/QD4sU3CIXBj6lKFLcK
         Jv7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706817734; x=1707422534;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oKtKU9ec/rsz7HBSzIU5uqFOSZbUdu+2rlARf46Czpw=;
        b=PRXUHqD7+I3VJS5tnjtf76Z+jr4sY3cI704zXYHX4AoFzJ9DEEkkVupgKNaLPvEY5D
         tE1MqS+5rGGRZzIGfAZLpJ7RQfvpv2M6RA6+5sYjM8Tv7nVshW/nHz/JuLXi2TrQGQcT
         dCVhIRYjcENeGJbUEUubxj9uOwKzJwwtL9SFifk8R+VySmlz6rXPnDTm7brMdwlStaDY
         02R/Mo9TAxI2wvnU4h7RFT9rhl27d4rmrCkHJoDsKLhEL/um63BKnxFzn6g4MMlV2mix
         p/jKAb2StPD6iOO5/hU7NfZIKUvER++nCopQBoYhlZHr4wZN6pEEK6KfMMN5Yr+lcdNQ
         9/uA==
X-Gm-Message-State: AOJu0Yylk1FP7vEx28XpKFFH7XpoTvXFu7j/R3+Z5ll3BJa30VWxoqfx
	i1NYifwS117h04XAmRFfQ+NuRJVqHIwCnYhjSgH02W7BcBc27f93w+SGv1Y2mppJ4o5rWCXHQns
	f8zCbV/JxF8+Th2TaHUNZEkkz/NyKg+I/eDROmg==
X-Google-Smtp-Source: AGHT+IGkopw9KI9BmtHxGeMn+uc0bvHsWIA3VKpCBS/bF9G1Oq6uAmfg6Qe9qX+sxvKiL3uBS6W453i2/9uWDYwy3Dw=
X-Received: by 2002:a05:6808:640e:b0:3be:aafd:cc6 with SMTP id
 fg14-20020a056808640e00b003beaafd0cc6mr3387394oib.17.1706817734567; Thu, 01
 Feb 2024 12:02:14 -0800 (PST)
MIME-Version: 1.0
References: <20240201-rockchip-rust-phy_depend-v2-0-c5fa4faab924@christina-quast.de>
 <20240201-rockchip-rust-phy_depend-v2-2-c5fa4faab924@christina-quast.de>
In-Reply-To: <20240201-rockchip-rust-phy_depend-v2-2-c5fa4faab924@christina-quast.de>
From: Trevor Gross <tmgross@umich.edu>
Date: Thu, 1 Feb 2024 14:02:03 -0600
Message-ID: <CALNs47tWNNi2GXHAwwT=A1LP=xWwXvrPy4xVapqMQOeyeN0+9Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] rust: phy: add some phy_driver and genphy_ functions
To: Christina Quast <contact@christina-quast.de>
Cc: Miguel Ojeda <ojeda@kernel.org>, Alex Gaynor <alex.gaynor@gmail.com>, 
	Wedson Almeida Filho <wedsonaf@gmail.com>, Boqun Feng <boqun.feng@gmail.com>, Gary Guo <gary@garyguo.net>, 
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
X-CRM114-CacheID: sfid-20240201_120226_013035_F74AC1EE 
X-CRM114-Status: GOOD (  20.81  )
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

T24gVGh1LCBGZWIgMSwgMjAyNCBhdCAxMjowN+KAr1BNIENocmlzdGluYSBRdWFzdAo8Y29udGFj
dEBjaHJpc3RpbmEtcXVhc3QuZGU+IHdyb3RlOgo+IGRpZmYgLS1naXQgYS9ydXN0L2tlcm5lbC9u
ZXQvcGh5LnJzIGIvcnVzdC9rZXJuZWwvbmV0L3BoeS5ycwo+IGluZGV4IGU0NTdiM2M3Y2IyZi4u
MzczYTRkMzU4ZTlmIDEwMDY0NAo+IC0tLSBhL3J1c3Qva2VybmVsL25ldC9waHkucnMKPiArKysg
Yi9ydXN0L2tlcm5lbC9uZXQvcGh5LnJzCj4gQEAgLTk1LDYgKzk1LDIyIEBAIHB1YiBmbiBwaHlf
aWQoJnNlbGYpIC0+IHUzMiB7Cj4gICAgICAgICAgdW5zYWZlIHsgKCpwaHlkZXYpLnBoeV9pZCB9
Cj4gICAgICB9Cj4KPiArICAgIC8vLyBHZXRzIHRoZSBjdXJyZW50IGNyb3Nzb3ZlciBvZiB0aGUg
UEhZLgo+ICsgICAgcHViIGZuIG1kaXgoJnNlbGYpIC0+IHU4IHsKCkFyZSBwb3NzaWJsZSB2YWx1
ZXMgZm9yIG1kaXggYWx3YXlzIEVUSF9UUF9NREl7LF9JTlZBTElELF9YLF9BVVRPfT8gSWYKc28s
IHRoaXMgd291bGQgYmUgYmV0dGVyIGFzIGFuIGVudW0uCgo+ICsgICAgICAgIGxldCBwaHlkZXYg
PSBzZWxmLjAuZ2V0KCk7Cj4gKyAgICAgICAgLy8gU0FGRVRZOiBUaGUgc3RydWN0IGludmFyaWFu
dCBlbnN1cmVzIHRoYXQgd2UgbWF5IGFjY2Vzcwo+ICsgICAgICAgIC8vIHRoaXMgZmllbGQgd2l0
aG91dCBhZGRpdGlvbmFsIHN5bmNocm9uaXphdGlvbi4KPiArICAgICAgICB1bnNhZmUgeyAoKnBo
eWRldikubWRpeCB9Cj4gKyAgICB9Cgo+ICsKPiAgICAgIC8vLyBHZXRzIHRoZSBzdGF0ZSBvZiBQ
SFkgc3RhdGUgbWFjaGluZSBzdGF0ZXMuCj4gICAgICBwdWIgZm4gc3RhdGUoJnNlbGYpIC0+IERl
dmljZVN0YXRlIHsKPiAgICAgICAgICBsZXQgcGh5ZGV2ID0gc2VsZi4wLmdldCgpOwo+IEBAIC0z
MDAsNiArMzE2LDE1IEBAIHB1YiBmbiBnZW5waHlfcmVhZF9hYmlsaXRpZXMoJm11dCBzZWxmKSAt
PiBSZXN1bHQgewo+ICAgICAgICAgIC8vIFNvIGl0J3MganVzdCBhbiBGRkkgY2FsbC4KPiAgICAg
ICAgICB0b19yZXN1bHQodW5zYWZlIHsgYmluZGluZ3M6OmdlbnBoeV9yZWFkX2FiaWxpdGllcyhw
aHlkZXYpIH0pCj4gICAgICB9Cj4gKwo+ICsgICAgLy8vIFdyaXRlcyBCTUNSCj4gKyAgICBwdWIg
Zm4gZ2VucGh5X2NvbmZpZ19hbmVnKCZtdXQgc2VsZikgLT4gUmVzdWx0IHsKClRoZSBkb2NzIG5l
ZWQgYW4gdXBkYXRlIGhlcmUKCj4gKyAgICAgICAgbGV0IHBoeWRldiA9IHNlbGYuMC5nZXQoKTsK
PiArICAgICAgICAvLyBTQUZFVFk6IGBwaHlkZXZgIGlzIHBvaW50aW5nIHRvIGEgdmFsaWQgb2Jq
ZWN0IGJ5IHRoZSB0eXBlIGludmFyaWFudCBvZiBgU2VsZmAuCj4gKyAgICAgICAgLy8gU28gaXQn
cyBqdXN0IGFuIEZGSSBjYWxsLgo+ICsgICAgICAgIC8vIHNlY29uZCBwYXJhbSA9IGZhbHNlID0+
IGF1dG9uZWcgbm90IHJlcXVlc3RlZAo+ICsgICAgICAgIHRvX3Jlc3VsdCh1bnNhZmUgeyBiaW5k
aW5nczo6X19nZW5waHlfY29uZmlnX2FuZWcocGh5ZGV2LCBmYWxzZSkgfSkKCkkgYXNzdW1lIHlv
dSBkaWQgdGhpcyBzaW5jZSB0aGUgbm9uLWR1bmRlciBgZ2VucGh5X2NvbmZpZ19hbmVnYCBpcwpp
bmxpbmUuIEkgdGhpbmsgdGhhdCBpcyBvayBzaW5jZSB0aGUgaW1wbGVtZW50YXRpb24gaXMgc28g
bWluaW1hbCwgYnV0CnlvdSBjb3VsZCBhbHNvIGFkZCBhIGJpbmRpbmcgaGVscGVyIGFuZCBjYWxs
IHRoYXQgKHJ1c3QvaGVscGVycy5jKS4KCj4gKyAgICB9Cj4gIH0KPgo+ICAvLy8gRGVmaW5lcyBj
ZXJ0YWluIG90aGVyIGZlYXR1cmVzIHRoaXMgUEhZIHN1cHBvcnRzIChsaWtlIGludGVycnVwdHMp
Lgo+IEBAIC01ODMsNiArNjA4LDEyIEBAIGZuIHNvZnRfcmVzZXQoX2RldjogJm11dCBEZXZpY2Up
IC0+IFJlc3VsdCB7Cj4gICAgICAgICAgRXJyKGNvZGU6OkVOT1RTVVBQKQo+ICAgICAgfQo+Cj4g
KyAgICAvLy8gQ2FsbGVkIHRvIGluaXRpYWxpemUgdGhlIFBIWSwKPiArICAgIC8vLyBpbmNsdWRp
bmcgYWZ0ZXIgYSByZXNldAoKRG9jcyB3cmFwcGluZwoKPiArICAgIGZuIGNvbmZpZ19pbml0KF9k
ZXY6ICZtdXQgRGV2aWNlKSAtPiBSZXN1bHQgewo+ICsgICAgICAgIEVycihjb2RlOjpFTk9UU1VQ
UCkKPiArICAgIH0KClRoZXNlIGhhdmUgYmVlbiBjaGFuZ2VkIHRvIHJhaXNlIGEgYnVpbGQgZXJy
b3IgcmF0aGVyIHRoYW4gRU5PVFNVUFAgaW4KcmVjZW50ICwgc2VlIFsxXS4gVGhhdCBwYXRjaCBp
cyBpbiBuZXQtbmV4dCBzbyB5b3Ugc2hvdWxkIHNlZSBpdCBuZXh0CnRpbWUgeW91IHJlYmFzZS4K
CkFsc28gLSB0aGVzZSBmdW5jdGlvbnMgYXJlIG1lYW50IGZvciB0aGUgdnRhYmxlIGFuZCBkb24n
dCBkbyBhbnl0aGluZwppZiB0aGV5IGFyZSBub3Qgd2lyZWQgdXAuIFNlZSB0aGUgY3JlYXRlX3Bo
eV9kcml2ZXIgZnVuY3Rpb24sIHlvdSB3aWxsCm5lZWQgdG8gYWRkIHRoZSBmaWVsZC4KCj4gICAg
ICAvLy8gUHJvYmVzIHRoZSBoYXJkd2FyZSB0byBkZXRlcm1pbmUgd2hhdCBhYmlsaXRpZXMgaXQg
aGFzLgo+ICAgICAgZm4gZ2V0X2ZlYXR1cmVzKF9kZXY6ICZtdXQgRGV2aWNlKSAtPiBSZXN1bHQg
ewo+ICAgICAgICAgIEVycihjb2RlOjpFTk9UU1VQUCkKPgo+IC0tCj4gMi40My4wCj4KClsxXTog
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvcnVzdC1mb3ItbGludXgvMjAyNDAxMjUwMTQ1MDIuMzUy
NzI3NS0yLWZ1aml0YS50b21vbm9yaUBnbWFpbC5jb20vCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
