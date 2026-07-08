Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 799D3C43602
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Jul 2026 10:21:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d/NcmfQKd9+fMUblKNmeszyfDugOery1tsnS0NW7fu0=; b=AJ68jJB3bvnfW2
	lm1FH8i+udY4Rq8P90RNdVy/wdAUuynMfVFVigiuYuKaAuKAeNVv/gJdw9rN2Xt73ohiYYj/2agmd
	2ozZJL42gH8efEVTmBtHw0zSzonZr0h0s8dC4mcYpGcEBOaqnBzcxbJQxWe94mpUZfrQiPCPK+8rc
	FqgMLmK5/ls1M+EP3DqC+pMp2qMBmZAU+aeVHShUTpyT3gyiibomwr0f0Lzm5jsx327gsgbcF0Pf5
	PlOn+SHXIzZe18nLYxeLvTSa0Nozl7VigniVL/xuVLfcohjY1DB76xjBbZfYKGGj8U6Ic5T77abuO
	OQLaZhKciLoBAr1Du6Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whPPS-0000000GsZD-1cqp;
	Wed, 08 Jul 2026 10:21:42 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whPPP-0000000GsXu-130v
	for linux-rockchip@lists.infradead.org;
	Wed, 08 Jul 2026 10:21:40 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-3825c406ffeso562769a91.0
        for <linux-rockchip@lists.infradead.org>; Wed, 08 Jul 2026 03:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783506097; x=1784110897; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=93EN29IqJ6bd5F8a4d6goWGreJMuVVomREVtrVg8Odk=;
        b=pr2m2y1ErplqchrPSxhW7DiJFHNJcodEc1O+qY7hXmzuKKhbq2QX4dDz9X2QzQAQIL
         hXb6SiChTA9BzPO2sEnxN4zBpeQVnf8RWKibVydntfi4/ePQCHq9743pZLfqjN06pmqa
         0t+KC/XQ24uEMPMls7FvwEHQKsu/vzkWz9PsCNkX75kjPZL7Yfp2+qDi0TSpc/HvxpvC
         IqYu2Z0Z4UD27cXUcZ6UhBWSsMVl+sEWH4dpYpi4H87/5K1KKMacviedVfnLL495rEvE
         iKnOqR7+sxoQJdYYsQFEEkWfQmw4J0f9q4PFBqqlyAZ7sk8j0rn5Fe7PABytiXkxX/Al
         Fpkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783506097; x=1784110897;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :content-type:mime-version:references:message-id:subject:cc:to:from
         :date:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=93EN29IqJ6bd5F8a4d6goWGreJMuVVomREVtrVg8Odk=;
        b=oji12LFowJ6J6I4c0LJk1yUDAaDCRGb3JzciQIBAX6Y7nRDSLb6xVEr6vzUhiHDFLh
         U9vLHgkgZgthL9lrWuo751XzL1mWnhVqHKFcJeueML2vatSG82/Isb988aIcL3bD6k8z
         vf9Pbf6gfm8h+XeWkEwH0iwwr2zD07ga38WOqjCkXnQyadfha6FoweW9Mykl5dY+NdO9
         QSnj8menxd9PplqHKxg1En8aQKKj+v0Y1J5fIm3kh25sdiawakgvTqisN9zGRMu8TEvD
         7B7xiUZUaT7UyV/3n5CoiH5uZGCYGkYjMtEJSAAEaeDPxlNu0fQgvA+9Kb1A75qLFAEQ
         wKLA==
X-Forwarded-Encrypted: i=1; AHgh+RqF3py4fuioIOlivzGz9ylb2ZhGiZ0UGxnTFunW6Fb9Gusw2ce2/J/DPum6fSyRktN4EKd75sb2gpIBc1n/eQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyHttEmL36SZW07hpsTPJvBLK8cWXjJ4RwUvpsO42cCccdj/nQv
	LKRKrM4FouMQ315wv4OT0KNulnijcs40RTunWRc4FQpUE9IpZh7KBffX
X-Gm-Gg: AfdE7cmy3kVYHgS/05l3SUoKVvoAd+SjoYo7gXmIJTO9+cnz5NAUKUR4q86WckfTNwP
	XNxXrH81XTK8eYZYVdpuSvOhpS3Hbo/2+CKgnwMzmAJpvlDmncSl2xisXVe3KKfkprY0krHmcD5
	4NrbHPsZC9ZgitFU1OFyfHwyFnDAGpzveK4VdC+Oxg56ctHWaTCgEpcLe7BfO2/Te5kqHhCvJTF
	WcheQuzoZ7duZbVjejgu8bn1gA+0odbB0yIaMpl+9kFWDKavKhh3KM3bqc5R0cxlI55mgrU2SZ+
	8e0RBOSpu4dhgD3g4C8Nf+H+oGgaHmvDZAgkXOlWhfl1aWdmBBP3Rvsk7hiT3Csrh7f5taW4G4g
	88y6xjDVCuODAipS7tSX/YZ0U73lRu5gtdM5oF78ZZkt3j/7vig+rYp/nRikkTzEBTfmu/9g+kj
	s63SJ8zRjc2UoLnvVSd6p6se5p/Ogp3g==
X-Received: by 2002:a17:90b:3b43:b0:381:3b5d:30f4 with SMTP id 98e67ed59e1d1-38941102113mr1927534a91.1.1783506097233;
        Wed, 08 Jul 2026 03:21:37 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-387d3a65609sm2512387a91.14.2026.07.08.03.21.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 03:21:36 -0700 (PDT)
Date: Wed, 8 Jul 2026 15:51:30 +0530
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 0/2] arm64: dts: rockchip: add Vicharak Axon board
 support
Message-ID: <kzl6ykopmcj7nl6jnf4uav75cdn2znd3jb4vjlrde364homti6@2y2zfyvwni4x>
References: <20260608060940.52549-1-hrushirajg23@gmail.com>
 <178301901903.3838694.3276523670393868229.b4-ty@sntech.de>
 <20260707160354.GB3176120-robh@kernel.org>
 <14045151.uLZWGnKmhe@phil>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <14045151.uLZWGnKmhe@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_032139_691247_3F355517 
X-CRM114-Status: GOOD (  21.22  )
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

T24gVHVlLCBKdWwgMDcsIDIwMjYgYXQgMDg6MjM6NDdQTSArMDIwMCwgSGVpa28gU3R1ZWJuZXIg
d3JvdGU6Cj4gQW0gRGllbnN0YWcsIDcuIEp1bGkgMjAyNiwgMTg6MDM6NTQgTWl0dGVsZXVyb3DD
pGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBSb2IgSGVycmluZzoKPiA+IE9uIFRodSwgSnVsIDAy
LCAyMDI2IGF0IDA5OjA0OjU1UE0gKzAyMDAsIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+ID4gPiAK
PiA+ID4gT24gTW9uLCAwOCBKdW4gMjAyNiAxMTozOTozOCArMDUzMCwgSHJ1c2hpcmFqIEdhbmRo
aSB3cm90ZToKPiA+ID4gPiBUaGlzIHNlcmllcyBhZGRzIGluaXRpYWwgZGV2aWNlIHRyZWUgc3Vw
cG9ydCBmb3IgdGhlIFZpY2hhcmFrIEF4b24KPiA+ID4gPiBzaW5nbGUtYm9hcmQgY29tcHV0ZXIs
IHdoaWNoIGlzIGJhc2VkIG9uIHRoZSBSb2NrY2hpcCBSSzM1ODggU29DLgo+ID4gPiA+IAo+ID4g
PiA+IFRoZSBWaWNoYXJhayBBeG9uIGlzIGEgZmVhdHVyZS1yaWNoIFNCQyB0YXJnZXRpbmcgZGV2
ZWxvcGVyIGFuZCBlbWJlZGRlZAo+ID4gPiA+IHVzZSBjYXNlcy4gSXQgc2hpcHMgd2l0aDoKPiA+
ID4gPiAKPiA+ID4gPiAgIC0gUm9ja2NoaXAgUkszNTg4ICg0eCBDb3J0ZXgtQTc2ICsgNHggQ29y
dGV4LUE1NSkKPiA+ID4gPiAgIC0gUks4MDYgUE1JQyBwcm92aWRpbmcgYWxsIFNvQyBwb3dlciBk
b21haW5zCj4gPiA+ID4gICAtIGVNTUMgNS4xIChvbi1ib2FyZCkgYW5kIG1pY3JvU0Qgc2xvdAo+
ID4gPiA+ICAgLSBHaWdhYml0IEV0aGVybmV0IHZpYSBSR01JSSAoUlRMODIxMUYpCj4gPiA+ID4g
ICAtIER1YWwgSERNSSAyLjEgb3V0cHV0IGFuZCBvbmUgSERNSSAyLjAgaW5wdXQgKHJlY2VpdmVy
KQo+ID4gPiA+ICAgLSBQQ0llIDMuMCB4NCBhbmQgdHdvIFBDSWUgMi4wIHNsb3RzCj4gPiA+ID4g
ICAtIFNBVEEgMy4wCj4gPiA+ID4gICAtIFVTQiAyLjAgaG9zdCBwb3J0cyAoRUhDSS9PSENJKQo+
ID4gPiA+ICAgLSBOWFAgUENBOTU1NCBJL08gZXhwYW5kZXIgZm9yIHN0YXR1cyBMRURzCj4gPiA+
ID4gICAtIEhhb3l1IEhZTTg1NjMgUlRDCj4gPiA+ID4gCj4gPiA+ID4gWy4uLl0KPiA+ID4gCj4g
PiA+IEFwcGxpZWQsIHRoYW5rcyEKPiA+ID4gCj4gPiA+IFsxLzJdIGR0LWJpbmRpbmdzOiBhcm06
IHJvY2tjaGlwOiBhZGQgVmljaGFyYWsgQXhvbiBib2FyZAo+ID4gPiAgICAgICBjb21taXQ6IGUw
MDA4YjEwOGFhZjhjNWFhMjI5MzBiMmNlYWRmOGY4OTQ1NjJhY2IKPiA+ID4gWzIvMl0gYXJtNjQ6
IGR0czogcm9ja2NoaXA6IGFkZCBWaWNoYXJhayBBeG9uIGJvYXJkCj4gPiA+ICAgICAgIGNvbW1p
dDogZTA4YzMzODljNzhkYmVmZDMxYTU3ZGY4ODA3Y2Y1N2VmNmYzYzliMQo+ID4gCj4gPiBCb3Ro
IGhhdmUgaXNzdWVzIGFuZCBzaG91bGQgYmUgZHJvcHBlZC4KPiAKPiBJJ3ZlIGRyb3BwZWQgYm90
aCB0aGUgQXhvbiBhcyB3ZWxsIGFzIHRoZSBWYWFtYW4yIGJvYXJkIGZyb20gdGhlCj4gc2FtZSB2
ZW5kb3Igbm93Lgo+IAo+IFRoZSB3aG9sZSB0aGluZyBpcyBjb25mdXNpbmcuCj4gCj4gSSBzaG91
bGQndmUgY2F1Z2h0IHRoZSBwaW5jdHJsIGlzc3VlLCBhbmQgZG8gcmVtZW1iZXIgcnVubmluZyBh
IGR0YnNjaGVjawo+IG9uIGF0IGxlYXN0IG9uZSBWY2hhcmFrIGJvYXJkIC0gYnV0IHRoYXQgbXVz
dCBoYXZlIGJlZW4gdGhlIFZhYW1hbjIgYm9hcmQKPiBiZWNhdXNlIHRoZXJlIHRoZSBwbWljIGZ1
bGxmaWxscyB0aGUgYmluZGluZyAoYW5kIGdlbmVyYWwgc2V0dXAgb2Ygb3RoZXIKPiByazM1ODgg
Ym9hcmRzKS4KPiAKPiBUaGUgdmVuZG9yLXByZWZpeCBpcyBtaXNzaW5nIGluZGVlZC4gSSBmb3Vu
ZCBlYXJsaWVyIHZlcnNpb25zIG9mIHRoZQo+IHZlcnNpb24tYXZhbGFuY2hlIGhhZCBpdCwgdXAg
dW50aWwgdjYgWzBdIC4gVGhvdWdoIEkgaGF2ZW4ndCBmaWd1cmVkIG91dAo+IHlldCB3aHkgaXQg
d2FzIGxvc3QuCgpSZWdhcmRpbmcgdGhlIG1pc3NpbmcgdmVuZG9yIHByZWZpeCAndmljaGFyYWsn
IHRoYXQgd2FzIG5vdGVkOiB0aGUgcHJlZml4IAp3YXMgYWxyZWFkeSBzdWJtaXR0ZWQgc2VwYXJh
dGVseSB1cHN0cmVhbSBieSBteSB0ZWFtIGluIGEgZGlmZmVyZW50IHBhdGNoIFsxXS4gCkJlY2F1
c2UgaXQgd2FzIGFscmVhZHkgc3VibWl0dGVkLCBLcnp5c3p0b2YgYXNrZWQgdXMgdG8gZHJvcCBp
dCBmcm9tIG91ciAKb3duIHNlcmllcyB0byBhdm9pZCBkdXBsaWNhdGVzIFsyXS4gCgpbMV0gaHR0
cHM6Ly9sa21sLm9yZy9sa21sLzIwMjYvNi8yNC85MjkKWzJdIGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xpbnV4LXJvY2tjaGlwLzk2YzliMWViLTlmOGUtNDMwZC05YzM4LWViNGQ0ODlkN2QyNEBr
ZXJuZWwub3JnLwoKPiAKPiBIZW5jZSBJIGRyb3BwZWQgYm90aCBib2FyZHMuCj4gCj4gCj4gSHJ1
c2hpcmFqOiBwbGVhc2Ugc3RhcnQgYW5ldyB3aXRoIGJvdGggYm9hcmRzLgo+IAo+IEJ1dCBpbmNs
dWRlIGFsbCB0aGUgdGFncyB5b3UgcmVjZWl2ZWQgaW4gcHJldmlvdXMgdmVyc2lvbnMuCj4gCj4g
Cj4gSGVpa28KPiAKPiAKPiBbMF0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2No
aXAvMjAyNjA2MDExNjIxNDMuMTcwMDMwLTItaHJ1c2hpcmFqZzIzQGdtYWlsLmNvbS8KPiAKPiAK
CkhydXNoaXJhaiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
