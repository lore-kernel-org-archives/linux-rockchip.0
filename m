Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D896CD8C85
	for <linux-rockchip@archiver.kernel.org>; Sat,  6 Jun 2026 20:50:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+EDAJiXnWxUE929c3rzjA8CfD9lzFCmAWuW8m++fD54=; b=HoOE0Q3Wa/wzL8
	UmLcwEPKHtZu04iGH9ob3xPFWeYbfNTLqMZ5PHNM+NFJ9+RRUJYYpWB7MYdXuHUd/gbbwXG2LiMy/
	ET6qHaVuCFDqd+V/Ow68zwMZQPL85pX6cIs2iG3ub4Rzam6wIHfI8oYNbO4jVvAsxh+v2c47UUz8I
	dDZk8eBeX86yZPkgjv/0wkModoQHNYTUS1O80RFnLEsrIo6+TDwCfSpDygLB6eqXCHCApqByDw6yl
	C9hVFfCKM59Ay1E1Q2aph+4Q0PsoY5zF15L/WCZm88kz30qXP33n7qQQEPerG6Jqf+VlDs59WfVKp
	ICn4EgcIWq+lMnJR4Agg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVxyM-00000001p87-1P0w;
	Sat, 06 Jun 2026 20:50:26 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVxyJ-00000001p7C-1sYT
	for linux-rockchip@lists.infradead.org;
	Sat, 06 Jun 2026 20:50:24 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-490b12270b3so18340215e9.1
        for <linux-rockchip@lists.infradead.org>; Sat, 06 Jun 2026 13:50:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780779021; x=1781383821; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KICvSmr67GVRpflb7Bqnkr43eQwEX55VG2vB71Ne/XY=;
        b=e2mN44uX4KmHFNqWWfbVXm+kuLtHNzLXHD0HgbEhObZcrcgbfdA0Dsd1If7OkXrbH1
         kJ2DoG0qgoF5rZ6GxmkbjUhM1yqAyKDPGTkoYKRRAmra/HvQMKauoPRFA3A73/aOU/Nj
         WFWR+AE6enxcc6HJSggCLGed0AqkULijrILXMy7HaJJwJTPdVcQN1+HCJ4pABjIraRR8
         SL2N8Uthj+XHQN+Qdw/hS9KST5OZJ8iZgcN80jioPove/Q/RQy0OnvryMg471zc924Hg
         0DHaPhDPkCfpypekWT+e4uKFcMcfYHAROuowLAOuYiNQJayFeNsyo9tq9EhhyNsLTWd3
         Pbyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780779021; x=1781383821;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KICvSmr67GVRpflb7Bqnkr43eQwEX55VG2vB71Ne/XY=;
        b=UktUErzD1zKVzsNB3dVegVtRCEXHAWu9M/+A5TlFMrBmrEBuAahrg8u6f0HTh1mWag
         G0eQ9XJZqhHcpT2K17cF5HnSsiczSWqifbVCcQMeW2yYdewEJ8Kwcgr7coDr605I5Nfu
         blT+/cd7Oa9M09wfMa4nCAvTKrz6/UWjNguzktNOYC8oH/Hfh+3vbL/2Nv/+2ZgOFRw3
         VUd8B2V2YNzHHtA+Aa0E9qdjCl6zfc45Ll7WnzXl8+uHG/2NjBqTqd3aq5JFl2jlNUOC
         vgN+Rsoc+6+omGmngLcyo2W328W5AQYClzq/p9L78HRcqLE+lkoGodK3pYCX29IVh3+9
         JT9Q==
X-Forwarded-Encrypted: i=1; AFNElJ8Hj0bVivjSvoHkvhyPevc5c0jfh2Eb4ODt4Rb0BZz4ebnqqNbGjFs7Ho9U5QCCzvX2npPkDHwaKmGjV0tNQg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyjdSAu0SqZyLYucUsfeCZNpDfhDkBWSfdtKbrG2Kg6Ad6iEmpj
	IJfxQ5mWJzWzke2UpHidHDs+3TIUM4kOnZ6ph0BqAKTQwkbF4p0L5JmS
X-Gm-Gg: Acq92OFQhaDDOUijP7ZrHAzLYKA5l4/YpDSNlesaEdDn3iNklEk7Cl8mqNbEoteI8Zp
	6FKiSo1iej/SPrEIROPSPcbCluVig8Ih5fUjjlRT8BlIDVqQeFcRwhnwMFrLeiJ6lCb2/XO4ubV
	4DDnvp/b0qlVFZXckOjKfRV8Ca6iukdOBaMVbGde78heKCaj/WKjauAJRvmR9OE+KW5uSzfrAq0
	UDzKlMITUDw3+Z1ks01g/4upKC+evWMhR+LY89IpE1ZVmvu4p8vNG1s0C6/NqCOn0Ut6LhSBNpI
	BP44jpZOiOJ3i9vaoKz7Z+L6CG9M4r5KfpW1DI4ZM9p5eq4PBBTP0uoa6jnrMGXQ3RmUX8uDv5o
	Me+pmPPWc3QnswvPZ52XHDDdqh202n+p7YWvyL+6c88bCgPbqnGOc5NE4Ax6OyxSMpXwF1dydZA
	G3d8P03lyvy11cIk645XU8SQyVVW2UZxIYK41JnGIArrDUaKcQnnjiZ8IYKy0u/XtjTtJ2hbcxA
	eag7akw3oDj1EolCMyLoKEdps3qJub5j+EvMK+OA0zsw93g7y9gp+rF1P9vtp1OwdSiQ1A=
X-Received: by 2002:a05:600c:4708:b0:48a:6fd4:d3d3 with SMTP id 5b1f17b1804b1-490c2604735mr151296265e9.20.1780779020992;
        Sat, 06 Jun 2026 13:50:20 -0700 (PDT)
Received: from ?IPV6:2003:ea:8f4a:1a00:ac2e:7640:d3:7bd5? (p200300ea8f4a1a00ac2e764000d37bd5.dip0.t-ipconnect.de. [2003:ea:8f4a:1a00:ac2e:7640:d3:7bd5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490bc3cbfe4sm259925885e9.7.2026.06.06.13.50.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 Jun 2026 13:50:20 -0700 (PDT)
Message-ID: <667f64e0-2b3e-41bf-9c97-3562696d3af7@gmail.com>
Date: Sat, 6 Jun 2026 22:50:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: net: add Realtek r8169 family PCIe
 Ethernet
To: Ricardo Pardini <ricardo@pardini.net>, nic_swsd@realtek.com,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20260605-rk3588-dts-rtl-eth-describe-dt-alias-v3-0-8a8857b39daf@pardini.net>
 <20260605-rk3588-dts-rtl-eth-describe-dt-alias-v3-1-8a8857b39daf@pardini.net>
 <b7cc8eba-ff6e-417d-8e74-b3bb24e08a26@gmail.com>
 <26da1dfa-3408-4654-9046-36ed6d57059c@pardini.net>
Content-Language: en-US
From: Heiner Kallweit <hkallweit1@gmail.com>
In-Reply-To: <26da1dfa-3408-4654-9046-36ed6d57059c@pardini.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260606_135023_519997_2A59F7F2 
X-CRM114-Status: GOOD (  17.69  )
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

T24gMDYuMDYuMjAyNiAwNzowMywgUmljYXJkbyBQYXJkaW5pIHdyb3RlOgo+IE9uIDA1LzA2LzIw
MjYgMTc6NDgsIEhlaW5lciBLYWxsd2VpdCB3cm90ZToKPj4gT24gMDUuMDYuMjAyNiAxMzo0OSwg
UmljYXJkbyBQYXJkaW5pIHZpYSBCNCBSZWxheSB3cm90ZToKPj4+IEZyb206IFJpY2FyZG8gUGFy
ZGluaSA8cmljYXJkb0BwYXJkaW5pLm5ldD4KPj4+Cj4+PiBBZGQgYSBiaW5kaW5nIGZvciBmaXhl
ZC9zb2xkZXJlZCBSZWFsdGVrIFBDSWUgRXRoZXJuZXQgY29udHJvbGxlcnMKPj4+IGRyaXZlbiBi
eSB0aGUgcjgxNjkgZHJpdmVyIChSVEw4MTI1LzgxMjYvODEyNy84MTY4IGFuZCB2YXJpYW50cyku
Cj4+Pgo+Pj4gVGhlICJwY2lWVlZWLEREREQiIGNvbXBhdGlibGVzIGFyZSB0aGUgT3BlbiBGaXJt
d2FyZSBQQ0kgQnVzIEJpbmRpbmcKPj4+IHNwZWxsaW5nLCBhdXRvLWRlcml2ZWQgZnJvbSBQQ0kt
U0lHIHZlbmRvci9kZXZpY2UgSURzLCBidXQgdGhleSBzdGlsbAo+Pj4gbmVlZCBhIGJpbmRpbmcg
d2hlbiB1c2VkIGluIGEgYm9hcmQgRFQgLSBhbmFsb2dvdXMgdG8gInVzYlZWVlYsUFBQUCIKPj4+
IGNvbXBhdGlibGVzIGRvY3VtZW50ZWQgaW4gdGhlaXIgb3duIGJpbmRpbmdzIChlLmcuIG1pY3Jv
Y2hpcCxsYW45NXh4KQo+Pj4gc28gYm9hcmQgRFRzIGF0dGFjaGluZyBwcm9wZXJ0aWVzIChmaXhl
ZCBNQUMsIG52bWVtIGNlbGwsIC4uLikgdG8KPj4+IHRoZXNlIFBDSSBmdW5jdGlvbiBub2RlcyBj
YW4gYmUgdmFsaWRhdGVkLgo+Pj4KPj4KPj4gVGhlIG9mIG5vZGUgc2VlbXMgdG8gYmUgY3JlYXRl
ZCBieSBvZl9wY2lfbWFrZV9kZXZfbm9kZSgpLiBCdXQgdGhpcwo+PiBmdW5jdGlvbiBpcyBjYWxs
ZWQgZm9yIGJyaWRnZXMgb25seSBpbiBwY2lfYnVzX2FkZF9kZXZpY2UoKS4KPj4gU28gd2hlcmUg
aXMgdGhlIG5vZGUgY3JlYXRlZCBpbiB5b3VyIGNhc2U/IERpZCB5b3UgdGVzdCBub2RlIGNyZWF0
aW9uPwo+Pgo+IAo+IEhpIEhlaW5lciwKPiAKPiBTZWVtcyB0byBtZSBvZl9wY2lfbWFrZV9kZXZf
bm9kZSgpIGlzIG5vdCBhdCBwbGF5IGhlcmUgLSB0aGF0J3MgdGhlIERULXN5bnRoZXNpcyBwYXRo
LiBGb3Igbm9kZXMgYWxyZWFkeSBwcmVzZW50IGluIERULCB0aGUgb2Zfbm9kZSBpcyBib3VuZCBl
YXJsaWVyLCBkdXJpbmcgcGNpX3NldHVwX2RldmljZSgpIC0+IHBjaV9zZXRfb2Zfbm9kZSgpIC0+
IG9mX3BjaV9maW5kX2NoaWxkX2RldmljZSgpIHZpYSB0aGUgNS1jZWxsIHJlZy4KPiAKSSBzZWUs
IHRoYW5rcy4gSWYgdGhlIG1hdGNoaW5nIGlzIGRvbmUgYmFzZWQgb24gdGhlIHJlZyBwcm9wZXJ0
eSwgdGhlbiBJIGp1c3Qgd29uZGVyCmlmIGFuZCB3aGVyZSB0aGUgY29tcGF0aWJsZSBzdHJpbmcg
aXMgdXNlZC4gT3Igd291bGQgdGhlIGxvZ2ljIGFsc28gd29yayB3aXRoIGEKcmFuZG9tIGNvbXBh
dGlibGUgc3RyaW5nPwoKPiBSZWYgdGVzdGluZzogeWVzOyB3aXRoIHRoaXMgc2VyaWVzIG9uIGEg
TmFub1BDLVQ2IEkgZ2V0LCBmb3IgZXhhbXBsZToKPiAvc3lzL2J1cy9wY2kvZGV2aWNlcy8wMDA0
OjQxOjAwLjAvb2Zfbm9kZSAtPiAvc3lzL2Zpcm13YXJlL2RldmljZXRyZWUvYmFzZS9wY2llQGZl
MTkwMDAwL3BjaWVAMCwwL2V0aGVybmV0QDAsMCBhbmQgdS1ib290IGNvcnJlY3RseSBhZGRzIGxv
Y2FsLW1hYy1hZGRyZXNzIHByb3BlcnR5IHRoZXJlIHdoaWNoIGlzIGNvcnJlY3RseSBwaWNrZWQg
dXAga2VybmVsLXNpZGU6Cj4gCj4gPT4gc2V0ZW52IGV0aDFhZGRyIDhlOmI0OjkwOjY2OjY2OjY2
Cj4gPT4gYm9vdAo+IAo+IC4uLgo+IAo+ICMgcmVhZGxpbmsgLWYgL3N5cy9idXMvcGNpL2Rldmlj
ZXMvMDAwNDo0MTowMC4wL29mX25vZGUKPiAvc3lzL2Zpcm13YXJlL2RldmljZXRyZWUvYmFzZS9w
Y2llQGZlMTkwMDAwL3BjaWVAMCwwL2V0aGVybmV0QDAsMAo+IAo+ICMgeHhkIC9zeXMvYnVzL3Bj
aS9kZXZpY2VzLzAwMDQ6NDE6MDAuMC9vZl9ub2RlL2xvY2FsLW1hYy1hZGRyZXNzCj4gMDAwMDAw
MDA6IDhlYjQgOTA2NiA2NjY2wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoCAuLi5mZmYKPiAKPiAjIGlwIGxpbmsgc2hvdyBkZXYgZW5kMSB8IGdyZXAg
ZXRoZXIKPiDCoMKgwqAgbGluay9ldGhlciA4ZTpiNDo5MDo2Njo2Njo2NiBicmQgZmY6ZmY6ZmY6
ZmY6ZmY6ZmYKPiAKPiAKPj4+ICtwcm9wZXJ0aWVzOgo+Pj4gK8KgIGNvbXBhdGlibGU6Cj4+PiAr
wqDCoMKgIGVudW06Cj4+PiArwqDCoMKgwqDCoCAtIHBjaTEwZWMsODEyNcKgICMgUlRMODEyNSAy
LjVHYkUKPj4+ICvCoMKgwqDCoMKgIC0gcGNpMTBlYyw4MTI2wqAgIyBSVEw4MTI2IDVHYkUKPj4+
ICvCoMKgwqDCoMKgIC0gcGNpMTBlYyw4MTI3wqAgIyBSVEw4MTI3Cj4+PiArwqDCoMKgwqDCoCAt
IHBjaTEwZWMsODE2McKgICMgUlRMODE2OCB2YXJpYW50Cj4+PiArwqDCoMKgwqDCoCAtIHBjaTEw
ZWMsODE2MsKgICMgUlRMODE2OCB2YXJpYW50Cj4+PiArwqDCoMKgwqDCoCAtIHBjaTEwZWMsODE2
OMKgICMgUlRMODE2OC84MTExIEdiRQo+Pgo+PiBUaGlzIGxpc3QgcmVmbGVjdHMganVzdCBzb21l
IG9mIHRoZSBQQ0kgaWQncyBoYW5kbGVkIGJ5IHI4MTY5Lgo+PiBBbnkgc3BlY2lmaWMgcmVhc29u
IGZvciB0aGlzIGV4YWN0IHNlbGVjdGlvbj8KPiBJIHdlbnQgZm9yICJjaGlwcyBsaWtlbHkgdG8g
YmUgc29sZGVyZWQgZG93biBvbiBhbiBTQkMiLCBidXQgdGhhdCB3YXMgaW5kZWVkIHNwZWN1bGF0
aXZlLgo+IAo+IEkgZ3Vlc3MgSSBzaG91bGQgdHJpbSB0byBwY2kxMGVjLDgxMjUsIHdoaWNoIGlz
IGFsbCB0aGlzIHNlcmllcyBkZXNjcmliZXM/IChmdXJ0aGVyIElEcyBjYW4gYmUgYWRkZWQgYnkg
dGhlIHBhdGNoZXMgdGhhdCBpbnRyb2R1Y2UgYm9hcmRzIHVzaW5nIHRoZW0pCj4gClllcywgSSdk
IHByZWZlciB0aGlzIGFwcHJvYWNoLiBDb25zaWRlcmluZyB0aGF0IFJUTDgxNjggaGFzIGJlZW4g
c3VwcG9ydGVkIGZvcgphYm91dCAyMHlycyBub3csIHlvdXIgdXNlIGNhc2Ugc2VlbXMgdG8gYmUg
ZXhvdGljLiBPdGhlcndpc2UgSSB3b3VsZCBoYXZlCnN1Y2ggYSBwYXRjaCBtdWNoIGVhcmxpZXIu
Cgo+IC0tIAo+IFJlZ2FyZHMsCj4gUmljYXJkbwo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
