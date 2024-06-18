Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D85C0C27C4F
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Jun 2024 11:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A5MSDX8YJMJDYEhzhCbTYNydJCkTinWgmPKtHRxnU54=; b=H7rJ5f/Etu38fb
	2ZzjClXOpYixNC3iLOf5mhY3kDUnRI6jza4VmLHlnMEz5OHfj0TqOxugOHxmZeSlCI737KrsBd/QW
	V7yAirZuf/EFgKIgyG1JqtdKUr4hj/xjQIXrc9WKG6WzZZtKXJ53DC7oq0X6FIV0PIq9j6LhPdMJk
	UPDZlt6BrhWmnYTjVn/o8sZ8O4kh+Qzpi0I0jgmFQpi0Tbuuy/JUF71QUbAcScF6/W0Jonae5EfaA
	vBvTku8JfcP1z4NE7HLh67krSSispL60dra7ZEC45JI7Cgucbcey1OWMROLYuHo9Qe7m6TrDoJbAE
	GOVqQjttFueQkj0JEKOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJWxo-0000000Ebwu-2Occ;
	Tue, 18 Jun 2024 11:25:24 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJWxj-0000000Ebuk-3ulh;
	Tue, 18 Jun 2024 11:25:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1718709917;
	bh=laBbGW8u+C3wkt52DJVoyFfKIQuH6xetOZoiKmaKf20=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=AACNMWpJM4WRVJIsfDww72SFiSALFZZ5AdyZm+2NGuGCfsy5fYf8cOVvYQ3wAU3Qo
	 L/xCpy6rAKSFMNimFaCXcfttYFR++8IRzmk6NE8jtBPMosoFk4JF5bRUfqXY0HOXW8
	 NdDfVGxF5nqJ1KCkNhJSnvCdvIO6pHRlByaVagXDs8ARYVIj7RQmUwCBFM1arQYMsy
	 9hRlIUexe4XcwuG6oSlkBaP97yTc4ZoETNJAumFMvo/wAKAQH3Rn7c7oidVyR+TLAq
	 NLJQB5k1XXrl2cORp7Bfkedr+OdLGe+iSqVYH/oyLZNV9ijARWvO4iz+JHc5VnszGr
	 YCefW+0Mj5opQ==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id D33A5378217B;
	Tue, 18 Jun 2024 11:25:16 +0000 (UTC)
Message-ID: <af51905f-f249-4f4e-8aae-82ff5b585c87@collabora.com>
Date: Tue, 18 Jun 2024 14:25:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] phy: phy-rockchip-samsung-hdptx: Add clock provider
 support
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Algea Cao <algea.cao@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20240618-rk3588-hdmiphy-clkprov-v1-0-80e4aa12177e@collabora.com>
 <20240618-rk3588-hdmiphy-clkprov-v1-4-80e4aa12177e@collabora.com>
 <2910644.FA0FI3ke8A@diego>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <2910644.FA0FI3ke8A@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_042520_135329_8C28B751 
X-CRM114-Status: GOOD (  12.86  )
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

T24gNi8xOC8yNCAxMDo1NSBBTSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gTW9udGFnLCAx
Ny4gSnVuaSAyMDI0LCAyMzo0ODoxMiBDRVNUIHNjaHJpZWIgQ3Jpc3RpYW4gQ2lvY2FsdGVhOgo+
PiBUaGUgSERNSSBQSFkgUExMIGNhbiBiZSB1c2VkIGFzIGFuIGFsdGVybmF0aXZlIGRjbGsgc291
cmNlIHRvIFJLMzU4OCBTb0MKPj4gQ1JVLiBJdCBwcm92aWRlcyBtb3JlIGFjY3VyYXRlIGNsb2Nr
IHJhdGVzIHJlcXVpcmVkIGJ5IFZPUDIgdG8gaW1wcm92ZQo+PiBleGlzdGluZyBzdXBwb3J0IGZv
ciBkaXNwbGF5IG1vZGVzIGhhbmRsaW5nLCB3aGljaCBpcyBrbm93biB0byBiZQo+PiBwcm9ibGVt
YXRpYyB3aGVuIGRlYWxpbmcgd2l0aCBub24taW50ZWdlciByZWZyZXNoIHJhdGVzLCBhbW9uZyBv
dGhlcnMuCj4+Cj4+IEl0IGlzIHdvcnRoIG5vdGluZyB0aGlzIG9ubHkgd29ya3MgZm9yIEhETUkg
Mi4wIG9yIGJlbG93LCBlLmcuIGNhbm5vdCBiZQo+PiB1c2VkIHRvIHN1cHBvcnQgSERNSSAyLjEg
NEtAMTIwSHogbW9kZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxj
cmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KPj4gLS0tCj4+ICBkcml2ZXJzL3BoeS9y
b2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jIHwgMTg5ICsrKysrKysrKysrKysr
KysrKystLS0KPj4gIDEgZmlsZSBjaGFuZ2VkLCAxNjcgaW5zZXJ0aW9ucygrKSwgMjIgZGVsZXRp
b25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
aXAtc2Ftc3VuZy1oZHB0eC5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNh
bXN1bmctaGRwdHguYwo+PiBpbmRleCA3MmRlMjg3MjgyZWIuLmFkM2ZkNDA4NDM3NyAxMDA2NDQK
Pj4gLS0tIGEvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmctaGRwdHgu
Ywo+PiArKysgYi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0
eC5jCj4gCj4+ICBzdGF0aWMgaW50IHJrX2hkcHR4X3BoeV9wb3dlcl9vbihzdHJ1Y3QgcGh5ICpw
aHkpCj4+ICB7Cj4+ICAJc3RydWN0IHJrX2hkcHR4X3BoeSAqaGRwdHggPSBwaHlfZ2V0X2RydmRh
dGEocGh5KTsKPj4gIAlpbnQgYnVzX3dpZHRoID0gcGh5X2dldF9idXNfd2lkdGgoaGRwdHgtPnBo
eSk7Cj4+ICsJaW50IHJldDsKPj4gKwo+PiAgCS8qCj4+ICAJICogRklYTUU6IFRlbXBvcmFyeSB3
b3JrYXJvdW5kIHRvIHBhc3MgcGl4ZWxfY2xrX3JhdGUKPj4gIAkgKiBmcm9tIHRoZSBIRE1JIGJy
aWRnZSBkcml2ZXIgdW50aWwgcGh5X2NvbmZpZ3VyZV9vcHRzX2hkbWkKPj4gQEAgLTg3MSwyMCAr
OTI1LDE4IEBAIHN0YXRpYyBpbnQgcmtfaGRwdHhfcGh5X3Bvd2VyX29uKHN0cnVjdCBwaHkgKnBo
eSkKPj4gIAlkZXZfZGJnKGhkcHR4LT5kZXYsICIlcyBidXNfd2lkdGg9JXggcmF0ZT0ldVxuIiwK
Pj4gIAkJX19mdW5jX18sIGJ1c193aWR0aCwgcmF0ZSk7Cj4+ICAKPj4gLQlyZXR1cm4gcmtfaGRw
dHhfcm9wbGxfdG1kc19tb2RlX2NvbmZpZyhoZHB0eCwgcmF0ZSk7Cj4+ICsJcmV0ID0gcmtfaGRw
dHhfcGh5X2NvbnN1bWVyX2dldChoZHB0eCwgcmF0ZSk7Cj4+ICsJaWYgKCFyZXQpCj4+ICsJCXJl
dCA9IHJrX2hkcHR4X3JvcGxsX3RtZHNfbW9kZV9jb25maWcoaGRwdHgsIHJhdGUpOwo+IAo+IEkg
dGhpbmsgdGhpcyB3aWxsIG5lZWQgYSBwdXQgaWYgX21vZGVfY29uZmlnIGZhaWxzPwoKSW5kZWVk
LCBhIGZvcmNlZCBwdXQgdmFyaWFudCB3b3VsZCBiZSByZXF1aXJlZCB0byBpZ25vcmUgYW55CnJl
Z21hcF9yZWFkKCkgZXJyb3JzIGFuZCBrZWVwIHVzYWdlX2NvdW50IGRlY3JlbWVudGVkLiAgVGhp
cyBzaG91bGQgYmUKYWxzbyB1c2VkIGluIHJrX2hkcHR4X3BoeV9jbGtfdW5wcmVwYXJlKCksIHNp
bmNlIC0+dW5wcmVwYXJlKCkgY2FsbGJhY2sKY2Fubm90IGZhaWwuCgpXaWxsIGdldCB0aGlzIGZp
eGVkIGluIHYyLgoKVGhhbmtzIGZvciByZXZpZXdpbmchCgpDcmlzdGlhbgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
