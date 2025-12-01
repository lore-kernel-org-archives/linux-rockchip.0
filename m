Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CC6BD116F3
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Dec 2025 17:35:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DondVjDKt/tIFnjKs2neJUs71WaLKPdEj4yFhjNc82g=; b=CBn+BWncUhB8i3
	EW9yqX6nNHvSz3AqLBp0/0pObXh/GBFtIzJ731kM1Cykyjj0pCiLn/rxc3vyxwkcJhVEfrC4g+CXO
	bYurDUg0UEoRRe4bIAXHdE1axPghVA9nd8OIFM0mUXnOaeG47uU7utxrrv+SrsB3B99jxXu8xiDjq
	aE/l2hBgCJohN8WtiAKSEO0dt+OO8+UMHjulceqgDGG30J5q2PuNFOyn1d+IqFx+o9F8JLENI2gty
	jg3WEUNQUxTwLp8CEK8ksz5fSnSRO9w8U+UbrnANwWvn+KvYgQGEG35B24Db9zwiKB29Dn46vX9WP
	BDR3nb5agywDNaLiSdkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ7o2-00000004MeM-1bgr;
	Mon, 01 Dec 2025 17:35:22 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ7nz-00000004Mdg-39JA
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Dec 2025 17:35:20 +0000
Received: by mail-qk1-x72f.google.com with SMTP id af79cd13be357-8b1f2fbaed7so406770285a.2
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Dec 2025 09:35:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764610518; x=1765215318; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HUy9/tMpZEG+dMBQoKUGEIkUyG26fQzLzLoG5fd72og=;
        b=czPi0kAaJZh70/R+gx8/sBoB/B2mBxDIa+YguRX5nCPJMqTq0ndpc0+qrLnJVtKjG1
         LrNd6YejSI2gxHsAAS2jbuWs9a2f0xWhLuJDQ2qLgEv7H5bj5Ch9mQ/o1RKm02PgeVSL
         AcdtuxtLFgiXa/P3/XQjer5I5RZPwAcfZrzLd2wL2IBzjqWJ0KhNR/GC/kwh+uCj+ZTK
         Pszi2v11fpwweu7DFZirYI4rwkQ+AdaRJpwtKUyh9kiYpELTqVP/ysFTQQes1mAMPKh3
         TOhwTQnJegx/3SKpNK7kU580wA86i/YuAdHTw5NQJZUPeSye2BZIAszCy/WY4rbe6Kv+
         zv5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764610518; x=1765215318;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HUy9/tMpZEG+dMBQoKUGEIkUyG26fQzLzLoG5fd72og=;
        b=jwDSq9Z9gVr/CqYZIVynkPvMC1VXbhe45jbW/FrHOzIsH4RX/JSxw2Z5z14Ksz0+ie
         XlSmUjO/J3J9oAIkVPCZk0+QIzfPkjzxcnvHw8hj7h04cgIUhbEs4CG3I/hrUkuYOni3
         FKN4vpSm3SDUsNipcXQ/yXJoF1+2nYlK+5KWSHytiJSVcTCgxuKXhsn5c9PH4qnaolaq
         75IwKySN0+UTmLeJSt1Ygl+oou97qdYXkjDczGxo3AsJOLTtxR9zOJdMQkNzmqerxNwq
         +UpPWVtWGbHdeuyiAuVn7OZuMvbPMQVd9FwnkdMchWQUdKVFzD/bY1EWp33SM7qCHT4T
         k7Pg==
X-Forwarded-Encrypted: i=1; AJvYcCXocvALinw23eBSj3OZkyKamk6v+gkGfviiWTIZofoXj4pPyUclVFssIBZcHqVa+WcFehepY5jBPDhh0BvldA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyFDaQQkjPvmTyTL5NHiBTlSN/G+HegqGk9Gkdln1Zi515pkRSq
	llu303iRhytbc2GEWoUoTe4IH3P3YSzskKBIOc9cLpCYTvGzG3uBNoQz3rpECZI5q8gK0oheiwO
	lgw2wUTIQDnGQ83tW708OOroVeUJ00Yk=
X-Gm-Gg: ASbGncvwfcndRQtGA7gYIkSFFHl0gDLgJ+lSvboDQqhDwPX0b1cSrDDbnYrTN+Juk6k
	oy2uMtQNgetbUwReKgDIOQxBpaQZ9I8Ws6EjqlKMjRMJgz6tbgniuXfng39rWXRdzvxau7WQvjy
	VqZmorUm2rCJkYOxBO3E7DzA3DpQrzTELptVbUjtOmSLjwQR6Dmxuj5zdfdbJDgjnKADp5yodVG
	ZjfvMQIKpKVA4ulD6TdT6a9Ck+KhI2rWu+9z1c+p7vQPzUj3fNmJJXoKuEfstHNUk0G7UxjZSY9
	qegQQfvTWxIR/xVnQqjOh9JE4dZQVsBL/uANDz8=
X-Google-Smtp-Source: AGHT+IG9z48YMtq1Hoc/6GZ1Q2125xNYsRwXEceD8NyRrDRi12uj4aXH0Nvq70m/GP3MOT/fvQpHE0zCpZJfWXVma+M=
X-Received: by 2002:a05:620a:1a25:b0:8b1:f2cd:76ad with SMTP id
 af79cd13be357-8b33d5ffadamr5603990885a.89.1764610518305; Mon, 01 Dec 2025
 09:35:18 -0800 (PST)
MIME-Version: 1.0
References: <20251201-evb1-pcie1-v1-1-c62bba5c1167@gmail.com>
In-Reply-To: <20251201-evb1-pcie1-v1-1-c62bba5c1167@gmail.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 1 Dec 2025 21:35:07 +0400
X-Gm-Features: AWmQ_bkh-_4MrBD8Z1igFWdl8lWvuEpvTQY628KgzrJmFFeIaNlOE_zlYPP9A-Y
Message-ID: <CABjd4YxiOsw0_vR=igLhGkXUp4kSfx_eWv6j=FrsX-qo5sR2hw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Add overlay for the PCIe slot on
 RK3576 EVB1
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_093519_804047_60B8C27B 
X-CRM114-Status: GOOD (  16.87  )
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

T24gTW9uLCBEZWMgMSwgMjAyNSBhdCA0OjM34oCvUE0gQWxleGV5IENoYXJrb3YgPGFsY2hhcmtA
Z21haWwuY29tPiB3cm90ZToKPgo+IFJvY2tjaGlwIFJLMzU3NiBFVkIxIGhhcyBhbiBvbmJvYXJk
IFBDSWUgc2xvdCAoUENJZSAyLjEsIHg0IG1lY2hhbmljYWxseSwKPiB4MSBlbGVjdHJpY2FsbHkp
LCBidXQgaXQgc2hhcmVzIHBpbnMgYW5kIFBIWSB3aXRoIHRoZSBvbmx5IFVTQjMgVHlwZS1BCj4g
cG9ydC4KPgo+IFRoZXJlIGlzIGEgcGh5c2ljYWwgc3dpdGNoIG5leHQgdG8gdGhlIHNsb3QgdG8g
dHJhbnNmZXIgcmVzcGVjdGl2ZSBwaW5zCj4gY29ubmVjdGlvbiBmcm9tIHRoZSBVU0IzIHBvcnQg
dG8gdGhlIFBDSWUgc2xvdCwgYnV0IGFwYXJ0IGZyb20gZmxpcHBpbmcKPiB0aGUgc3dpdGNoIG9u
ZSBtdXN0IGFsc28gZGlzYWJsZSB0aGUgVVNCMyBob3N0IGNvbnRyb2xsZXIgdG8gcHJldmVudCBp
dAo+IGZyb20gY2xhaW1pbmcgdGhlIFBIWSBiZWZvcmUgdGhlIFBDSWUgc2xvdCBjYW4gYmVjb21l
IHVzYWJsZS4KPgo+IEFkZCBhbiBvdmVybGF5IHRvIGRpc2FibGUgdGhlIFVTQjMgaG9zdCBwb3J0
IGFuZCBpbnN0ZWFkIGVuYWJsZSB0aGUKPiBQQ0llIHNsb3QsIGFsb25nIHdpdGggaXRzIHBpbiBj
b25maWdzLiBUaGUgcGh5c2ljYWwgc3dpdGNoIG11c3Qgc3RpbGwgYmUKPiBmbGlwcGVkIHRvIHRo
ZSAiT04gLSBQQ0llMSIgcG9zaXRpb24gZm9yIHRoaXMgdG8gd29yay4KPgo+IFNpZ25lZC1vZmYt
Ynk6IEFsZXhleSBDaGFya292IDxhbGNoYXJrQGdtYWlsLmNvbT4KPiAtLS0KPiAgYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmlsZSAgICAgICAgICAgICAgfCAgNCArKysKPiAgLi4u
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni1ldmIxLXYxMC1wY2llMS5kdHNvICAgfCAzMSArKysr
KysrKysrKysrKysrKysrKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwgMzUgaW5zZXJ0aW9ucygrKQo+
Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlCj4gaW5kZXggYWQ2ODRlMzgzMWJj
Li42MzE5OGE2MThhMmIgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9NYWtlZmlsZQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvTWFrZWZpbGUK
PiBAQCAtMjUyLDYgKzI1MiwxMCBAQCBkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmsz
NTc2LWFybXNvbS1zaWdlNS12MS4yLXdpZmlidC5kdGIKPiAgcmszNTc2LWFybXNvbS1zaWdlNS12
MS4yLXdpZmlidC1kdGJzIDo9IHJrMzU3Ni1hcm1zb20tc2lnZTUuZHRiIFwKPiAgICAgICAgIHJr
MzU3Ni1hcm1zb20tc2lnZTUtdjEuMi13aWZpYnQuZHRibwo+Cj4gK2R0Yi0kKENPTkZJR19BUkNI
X1JPQ0tDSElQKSArPSByazM1NzYtZXZiMS12MTAtcGNpZTEuZHRiCj4gK3JrMzU3Ni1ldmIxLXYx
MC1wY2llMS1kdGJzIDo9IHJrMzU3Ni1ldmIxLXYxMC5kdGIgXAo+ICsgICAgICAgcmszNTc2LWV2
YjEtdjEwLXBjaWUxLmR0Ym8KCk1pc3NlZCB0aGUgc2VwYXJhdGUgLmR0Ym8gdGFyZ2V0LiBXaWxs
IGFtZW5kIGluIHYyLiBTaG91bGQgaGF2ZQpzb21ldGhpbmcgbGlrZSB0aGlzIGZ1cnRoZXIgdXAg
aW4gdGhlIE1ha2VmaWxlOgpkdGItJChDT05GSUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTc2LWV2
YjEtdjEwLXBjaWUxLmR0Ym8KCkJlc3QgcmVnYXJkcywKQWxleGV5CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
