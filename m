Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C59FFE7717D
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 00:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bxmIz1AbP/78MGr9/DUmGRMZoFzbGzyt4efm2A3QFZg=; b=4XOXdvCq1jePmt
	ICQpz2tPBPavtbgWLUu3Sh0sjCMo/BXOa2FvQlVa949GXVudtNyAWFvcZOJC6L4tPO2Um/YFTX5xx
	j4dyuZlsslK70ga0XUvbGy49FwY0W5Hf5OWcPnMgcmchZAw/ZmQZhIM9nWoCcXmChMt2yeNBTrnYr
	Tqt6Oc3vUr6u1zki04aAVPFGHrL6zuyjZcBLyJv6DvM3twmaaigEtn1MOAuaagn7x6Fpfg5m+GkBp
	eJFhLpay9Qn/+wGE9Ke1Rw46wbNJALfZpkeIy0QlmM2W6idOtj+oNajUhmIC7aw+34vbn5M7w0o6D
	FOHIOsYVggUEnPcGmq3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKoIX-00000009jEu-3QNl;
	Tue, 10 Dec 2024 00:40:21 +0000
Received: from mail-qt1-x82b.google.com ([2607:f8b0:4864:20::82b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKoIV-00000009jEM-335o
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Dec 2024 00:40:20 +0000
Received: by mail-qt1-x82b.google.com with SMTP id d75a77b69052e-46774573043so6906811cf.2
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Dec 2024 16:40:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733791217; x=1734396017; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Blwa5F8sKfGOXhGTxGho/35swehqGQZvVQCQmXT0hwo=;
        b=XP6cJKegOhfS06NFiOZ74MTSTQhsECL3cpbn5u7UPTXLY1yki+mNNwxEITLFi+hUE6
         KwZKWuPiOzaXTdi8FBf462jR4ltbRSO1zCcIiJo2hoxfwsCbbXpTmcU4NczlByGQCcT/
         gkMPUFs452v2vBid8ufelXnoFte9gEML8Qbw3jX1QOk58Kxj9tY6ewmeH/8fmozH+e6q
         rDPxOsb7Jz1BEWcWOojmxjOShGULAf3RwlmoJj06BBgB3rbFLXbEti18wvOGCWiUXmVi
         MMt1BJT027NFcTHKW9w7l9I4lByNOzgsqLnH85rOplEevN2yQNy6ebC/Bgb9JTNlaryf
         GPaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733791217; x=1734396017;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Blwa5F8sKfGOXhGTxGho/35swehqGQZvVQCQmXT0hwo=;
        b=jvMaejiBRcplJqYK4CVbic9nKna8FgxFBjYYX9wzcIUfbZdDI8fla7QVtAD9slHGzW
         vci30OJvJZqvRFsKtZYvX5HU36UQGaNxLqCmn2I24NIFe0/Onp3YYKkA2srRrWKAzNsi
         Gzsj09ipXclo8k6GSKNFMvj3dJQgOLIWfBGGsAu3c3zTB1DymOpFSkDhCvtvtLQ6eaWa
         STGadBFm+HhkGuWfIfIEEgsNuvU6Gct+bcyf1p7rAaMuKDKT2xbLeSxh8V+hF4lg8dC5
         XSqWnC9OUgmpMlkME/cYksIWAIQ3cNVBxok/k4l0eNaXIejN1MpW8Uw4gcw2OpUlc1iK
         l79g==
X-Forwarded-Encrypted: i=1; AJvYcCWuK+XMcNijNhk1X0+hE18dpm+HLD35LeNSdrw8o7ywRlnqIVZFXohRAIUZ3hCqp+ICd6W+HOA1ZgW64Q7RxA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw1GUOGI9SWAguvUMvkpkONjd9crip48B48dHq4zFaMfqmMBykD
	E4c5JmtLEl9HisP2/GC49i5nh81tE28dx5ZDiYdE0z3vrB4kU1GrnwTb0WDm3//FwADUTae9D+1
	yh4OD/IFZpzPSge3eU4dkthP75zmK/pV0m5nBi4K5
X-Gm-Gg: ASbGncvKQJMj7FMX14lNolNGoKtBpE5M+vV7LBvTMGDG2m9qic4pL/B+4thoCYGJaQ/
	C3+c9KgNbmYRTVIa5QIkvTurqkT9c8JXwyQ==
X-Google-Smtp-Source: AGHT+IGNyhk20QJHN7gcHejjGIkaEDS5jrRjys0nGBN4P3yJXR1F5N0jED33Xdxb9sY7N+dIyopFILsJ+bxgwoYUgJU=
X-Received: by 2002:ac8:5d0c:0:b0:466:86aa:efd9 with SMTP id
 d75a77b69052e-46772046831mr42972491cf.51.1733791217663; Mon, 09 Dec 2024
 16:40:17 -0800 (PST)
MIME-Version: 1.0
References: <20241209125131.4101-1-naoki@radxa.com> <20241209125131.4101-4-naoki@radxa.com>
 <ae031ff8c8c5d9e5c266c73026d4dfab@manjaro.org> <CEFF3F7FDF50046C+6bccd571-3475-46b9-a7b9-e2e8cb94ed91@radxa.com>
In-Reply-To: <CEFF3F7FDF50046C+6bccd571-3475-46b9-a7b9-e2e8cb94ed91@radxa.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Tue, 10 Dec 2024 03:40:08 +0300
Message-ID: <CABjd4YyV1Pf5RZcwbvd0Ms8UA2kFzq2PuTzq=VVYC+EZtfNrog@mail.gmail.com>
Subject: Re: [PATCH v4 03/12] arm64: dts: rockchip: fix property for pwm-fan
 for Radxa ROCK 5C
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Dragan Simic <dsimic@manjaro.org>, heiko@sntech.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, sebastian.reichel@collabora.com, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_164019_767655_C84DC9D3 
X-CRM114-Status: GOOD (  15.43  )
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

SGkgTmFva2ksCgpPbiBUdWUsIERlYyAxMCwgMjAyNCBhdCAzOjMw4oCvQU0gRlVLQVVNSSBOYW9r
aSA8bmFva2lAcmFkeGEuY29tPiB3cm90ZToKPgo+IEhpLAo+Cj4gVGhhbmtzIGZvciB5b3VyIHJl
dmlldyEKPgo+IE9uIDEyLzEwLzI0IDAxOjMyLCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4gPiBIZWxs
byBGdWthdW1pLAo+ID4KPiA+IE9uIDIwMjQtMTItMDkgMTM6NTEsIEZVS0FVTUkgTmFva2kgd3Jv
dGU6Cj4gPj4gZml4IHB3bSBwZXJpb2QgdG8gbWF0Y2ggd2l0aCB2ZW5kb3Iga2VybmVsWzFdLgo+
ID4KPiA+IEluc3RlYWQgb2Ygc2ltcGx5IHJlZmVycmluZyB0byB0aGUgZG93bnN0cmVhbSB2ZW5k
b3Iga2VybmVsLCBpbiB0aGlzCj4gPiBzcGVjaWZpYyBjYXNlIHRoZSByZWFzb25zIGZvciBhZGp1
c3RpbmcgdGhlIGZhbiBQV00gcGFyYW1ldGVycyBzaG91bGQKPiA+IGJlIGV4cGxhaW5lZCBieSBy
ZWZlcnJpbmcgdG8gdGhlIGFjdHVhbCBmYW4gc2V0dXAgeW91J3JlIHVzaW5nLCB0aGUKPiA+IG9i
c2VydmVkIGZhbiBSUE0gYmVoYXZpb3IsIGV0Yy4KPgo+IG9yaWdpbmFsIGNvbW1pdCBtZXNzYWdl
IGlzOgo+Cj4gfCBhcm02NDogZHRzOiByb2NrY2hpcDogbW9kaWZ5IGZhbiBwd20gcGVyaW9kIHRv
IDYwdXMKPiB8IFJlZHVjZSBwd20gZnJlcXVlbmN5IHRvIDE2LjYgS0h6IGZvciBhIGxhcmdlciBh
ZGp1c3RhYmxlIHJhbmdlIG9mCj4gQU8zNDE2IG1vc2ZldC4KPgo+IEkgaGF2ZSBubyBrbm93bGVk
Z2UgYWJvdXQgdGhpcyBraW5kIG9mIHRoaW5ncy4gSXMgcXVvdGluZyB0aGlzIG1lc3NhZ2UKPiBl
bm91Z2g/CgpJIHRoaW5rIGl0IHdvdWxkIGJlIGJldHRlciB0byBleHBhbmQgYSBiaXQgdG8gbWFr
ZSBzdXJlIHRoZSBjb21taXQKbWVzc2FnZSBleHBsYWlucyB0aGUgd2hvbGUgcmF0aW9uYWxlIHdp
dGhvdXQgdG9vIG11Y2ggZXh0cmEgZGlnZ2luZy4KU29tZXRoaW5nIGxpa2UgdGhpczoKCmFybTY0
OiBkdHM6IHJvY2tjaGlwOiBVc2UgYSBsb25nZXIgUFdNIHBlcmlvZCBmb3IgdGhlIGZhbiBvbiBS
YWR4YSBST0NLIDVDCgpUaGUgZmFuIG9uIFJhZHhhIFJPQ0sgNUMgaXMgZHJpdmVuIHZpYSBhbiBB
TzM0MTYgTU9TRkVULCB3aGljaCBoYXMgYQp0b3RhbCBzd2l0Y2gtb24gdGltZSBvZiAwLDZ1cyBh
bmQgYSB0b3RhbCBzd2l0Y2gtb2ZmIHRpbWUgb2YgNnVzIFsxXSwKbWVhbmluZyB0aGF0IHRoZSBj
dXJyZW50IFBXTSBwZXJpb2Qgb2YganVzdCAxMHVzIGlzIHRvbyBzaG9ydCBmb3IKZmluZS1ncmFp
bmVkIGZhbiBzcGVlZCBjb250cm9sLiBJbmNyZWFzZSB0aGUgUFdNIHBlcmlvZCB0byA2MHVzLCBz
bwp0aGF0IHRoZSBzd2l0Y2gtb24gYW5kIHN3aXRjaC1vZmYgdGltZSBvZiB0aGUgTU9TRkVUIGZh
bGwgd2l0aGluIGEKbW9yZSByZWFzb25hYmxlIH4xMCUgb2YgdGhlIGZ1bGwgcGVyaW9kLCB0aHVz
IG1ha2luZyBsb3dlciBQV00gZHV0eQpjeWNsZXMgbWVhbmluZ2Z1bC4KClsxXSBodHRwczovL3d3
dy5hb3NtZC5jb20vcGRmcy9kYXRhc2hlZXQvQU8zNDE2LnBkZgoKQmVzdCByZWdhcmRzLApBbGV4
ZXkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
