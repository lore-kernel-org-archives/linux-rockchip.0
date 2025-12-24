Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2126E74903
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Dec 2025 05:39:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ihuBacERnLt8OTC9FDgVBDhxrov3ZD3eUQfKz+Wo1LM=; b=318wxgrKSWcb0a
	OJCO1mbjoQSXs2rXuegFhR8QNBWKDUV46OLIqdBGfkED2zKy6u94D5tVnLvwFHwiu0eyt7Mogs9hm
	Qdy9S/qvH4wTcgWEJTol9O3gMCuT8ku9ipn0ng83kF1iz6L7A/OghbWUC8RkGP5milSCsHF4FbYzA
	GZFPGEBhIJVDoobdPvAFi3YnUS9BzPkpQqy/F5ANWdyNnDFJJWzt3qhu1uny1WT9QWzp43lrB1Aac
	i7rkDvVkFGLeUueJ6i+HAGWdp5aS6C1sqwZ55Zzc2fvvCTYU0NKFzs8vWJAsaTzRtKAQi4vMMemar
	S0B+QIt28sK9HCGia+Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYHaL-0000000GS3z-1diz;
	Wed, 24 Dec 2025 05:38:57 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYHaI-0000000GS39-3CRX
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Dec 2025 05:38:56 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-37b99da107cso55430431fa.1
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Dec 2025 21:38:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766554732; x=1767159532; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gYJuqgstKIh0GJjfHL+Z+Y8jqbQuzP2SNZTadlMrpwc=;
        b=P5bHe/jgNQHMYi4q0+k9FPrYkhmoyG+XL5QG1MSl6IrG9G1B7IF96ZEhsCfl6xxlwj
         PWtP0HzkHl6FA+/1CJJKkk/+nl3wvoIGSRHpxsaWMQyP8mpCN75qlk6dXikNEHTx2qoW
         oUnvUJmlLUeiMWpbUhSJ6MPAkbnpM4U3jCSOmNIxU87UoeHYRstNo7YcAPwuauyRb9CF
         LQGiKkC2zf5uw8qaWroYiQrzNZ7vxoIfitXE4y9iNCnGV0z9pVxSgbFcEB6t6d5dsTii
         2jyzF8Of8XRKobcbPLP/PiTAA1OD3tmRpiWlVJJduPymyNpZIJh2abqVJvMdLxDAHF0v
         yjqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766554732; x=1767159532;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gYJuqgstKIh0GJjfHL+Z+Y8jqbQuzP2SNZTadlMrpwc=;
        b=J9HIP9kHpG6bh0QnErnpUKSqh3FFr8Yy5zeWUSXzGR8aiJp0jkL7yj6uVECglvrllJ
         b+y9RoWc1YeKeTtyVN+iqzuCzHR184rdBp7vnCr48Y1x/b3uuKoaCmoWoOU3UKVOcKqP
         JLl+inzO0+zk1A2gSqIfEf4cZSEcYthdeEUP5g3ix2zskLhQ+2A8YrqXk8QbeHA5u4qA
         Pu6rDyk/Cr1JbLi1KNlwePjo/FHh8zV+BJCgnl96aTTc4o7nOtuoVNjRGfCh6peIFrZD
         GpOFAFj/kMPSmGAzYTef+OZtYNNbHZelknA1LAcK9l2X1zNwGU8KP8epi1+B/ARrAzjH
         ipbw==
X-Forwarded-Encrypted: i=1; AJvYcCXHeMaJQHeb+We5kYFhECybxZfgMtgfzJuQLW8+HG5TeCaAOXnK9SOIeXVlS0sdLFDmqSO5O9ZsO9T2QHvQKg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyHZi2um9hdviWMkZ/ZfnivRIZeUAfcrtwdVi2BfN1VWvYDksxR
	z+YQ+A/XjBhlSf0of4HSDPpkKZu14MgylCgp7zBYJUZNdr0U55/t0VMnfnHMjGWZKPCSjlAvGuP
	rtJTghsp/HZybiRKXiPKbGZBlKhI9eCs=
X-Gm-Gg: AY/fxX4kTjYANhRhMijQgmJMF/gkQQz96IehHeL0d7m45g9x6Es2V/see/Vbx/47q7+
	dSIsOhEg2ZU9T6j2JbYgPA8BJZ4YxvM4ODZ7NPU5wrECSBHU3QI8eWSC7VtMuNBSpxEIT+IHVXH
	ssHRFRC30A9jJVTiacY/+HLE+VBz+RXtCZeJeFNm10OOSC6AGo+mPrtPMAr2PzWkLhCdlJzTN/e
	oA8Zb3D+JZrKFcI93Codcgr2MN9C97Gi3HvClLXnOqvhfg4AsNCl0qDocNfvfbdu5GZfvWmrNGP
	hpivlCU=
X-Google-Smtp-Source: AGHT+IEhBbHKWWQqJ0bLZ90EcsrdJcWpLU40nsZoqwzQPtLYH3hGZjtotZ2t+Nq21znTqVIk5zZUzbsS4uHKvlFDmMM=
X-Received: by 2002:a2e:be20:0:b0:36d:4e3b:f1e3 with SMTP id
 38308e7fff4ca-381215967a0mr50931101fa.13.1766554732253; Tue, 23 Dec 2025
 21:38:52 -0800 (PST)
MIME-Version: 1.0
References: <cover.1763415705.git.geraldogabriel@gmail.com>
 <eaa9c75ca02a53f8bcc293b8bc73d013e26ec253.1763415706.git.geraldogabriel@gmail.com>
 <CANAwSgQ726J_vnDKEKd94Kq62kx8ToZzUGysz4r3tNAXvfAbGA@mail.gmail.com>
In-Reply-To: <CANAwSgQ726J_vnDKEKd94Kq62kx8ToZzUGysz4r3tNAXvfAbGA@mail.gmail.com>
From: Geraldo Nascimento <geraldogabriel@gmail.com>
Date: Wed, 24 Dec 2025 02:38:40 -0300
X-Gm-Features: AQt7F2qOfdS6yP1-vW3vU0Wj_YVm_E2b3cZOlrdQ3B5k7vwUx3LT0aqmG2BtcdU
Message-ID: <CAEsQvctSY7-RQEQF2TmJU2qKPZOe9TC5g-7Jat0LQKRHYz_6dQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] PCI: rockchip: limit RK3399 to 2.5 GT/s to prevent damage
To: Anand Moon <linux.amoon@gmail.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Jonker <jbx6244@gmail.com>, Dragan Simic <dsimic@manjaro.org>, 
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_213854_818507_2EB8BA42 
X-CRM114-Status: GOOD (  14.63  )
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

T24gV2VkLCBEZWMgMjQsIDIwMjUgYXQgMjoxOOKAr0FNIEFuYW5kIE1vb24gPGxpbnV4LmFtb29u
QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBIaSBHZXJhbGRvLAo+Cj4gT24gVHVlLCAxOCBOb3YgMjAy
NSBhdCAwMzoxNywgR2VyYWxkbyBOYXNjaW1lbnRvCj4gPGdlcmFsZG9nYWJyaWVsQGdtYWlsLmNv
bT4gd3JvdGU6Cj4gPgo+ID4gU2hhd24gTGluIGZyb20gUm9ja2NoaXAgaGFzIHJlaXRlcmF0ZWQg
dGhhdCB0aGVyZSBtYXkgYmUgZGFuZ2VyIGluIHVzaW5nCj4gPiB0aGVpciBQQ0llIHdpdGggNS4w
IEdUL3Mgc3BlZWRzLiBXYXJuIHRoZSB1c2VyIGlmIHRoZXkgbWFrZSBhIERUIGNoYW5nZQo+ID4g
ZnJvbSB0aGUgZGVmYXVsdCBhbmQgZHJpdmUgYXQgMi41IEdUL3Mgb25seSwgZXZlbiBpZiB0aGUg
RFQKPiA+IG1heC1saW5rLXNwZWVkIHByb3BlcnR5IGlzIGludmFsaWQgb3IgaW5leGlzdGVudC4K
PiA+Cj4gPiBUaGlzIGNoYW5nZSBpcyBjb3Jyb2JvcmF0ZWQgYnkgUkszMzk5IG9mZmljaWFsIGRh
dGFzaGVldCBbMV0sIHdoaWNoCj4gPiBzYXlzIG1heGltdW0gbGluayBzcGVlZCBmb3IgdGhpcyBw
bGF0Zm9ybSBpcyAyLjUgR1Qvcy4KPiA+Cj4gPiBbMV0gaHR0cHM6Ly9vcGVuc291cmNlLnJvY2st
Y2hpcHMuY29tL2ltYWdlcy9kL2Q3L1JvY2tjaGlwX1JLMzM5OV9EYXRhc2hlZXRfVjIuMS0yMDIw
MDMyMy5wZGYKPiA+Cj4gVG8gYWNjdXJhdGVseSBkZXRlcm1pbmUgdGhlIG9wZXJhdGluZyBzcGVl
ZCwgd2UgY2FuIGxldmVyYWdlIHRoZQo+IFBDSUVfQ0xJRU5UX0JBU0lDX1NUQVRVUzAvMSBmaWVs
ZHMuCj4gVGhpcyBwcm92aWRlcyBhIGR5bmFtaWMgbWVjaGFuaXNtIHRvIHJlc29sdmUgdGhlIGlz
c3VlLgo+Cj4gWzFdIGh0dHBzOi8vZ2l0aHViLmNvbS90b3J2YWxkcy9saW51eC9ibG9iL21hc3Rl
ci9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtZXAuYyNMNTMzLUw1OTUKPgo+
IFRoYW5rcwo+IC1BbmFuZAoKSGkgQW5hbmQsCgpub3QgdG8gcHV0IHlvdSBkb3duIGJ1dCBJIHRo
aW5rIHlvdXIgYXBwcm9hY2ggYWRkcyB1bm5lY2Vzc2FyeSBjb21wbGV4aXR5LgoKQWxsIEkgY2Fy
ZSByZWFsbHkgaXMgdGhhdCB0aGUgS2VybmVsIFByb2plY3QgaXNuJ3QgYmxhbWVkIGluIHRoZQpm
dXR1cmUgaWYgc29tZW9uZSBoYXBwZW5zIHRvIGxvc2UgdGhlaXIgZGF0YS4KClRoYW5rcywKR2Vy
YWxkbyBOYXNjaW1lbnRvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
