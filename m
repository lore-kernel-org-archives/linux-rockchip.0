Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 850CBC4452D
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jul 2026 19:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6GaP9buVEp34vH0obVaUr84+zuA6KVCwmNIFobvdnRQ=; b=C4BaPXmscf1rYs
	65y5RFERHODQW+pn4zbAgf/CVQ3LcrMRhdPOdOvMQMI0PUPPp1T+Xz7+HHqRwHs3MXbAUzbDXnkso
	N41B9NZ8M8y508qlibPP/+ugF4P6EMw6iByMB98TBcjc8HN6njhCE/73A7H5GNYAuWjqQqx3V9KYS
	uuAoWZmv6ZcrDQume1avFoB0FffHC2/MITJWpZo5i5UE/RjNm0Cz7C7NTFEyHW4/AwjmBvMgXIqZI
	NCjNFOPVFm+JcZsS1CeDJRo8fYIYWBMUcmYZKokoopmn4lUxSPDiT+b4DUq6DJONdu/u562J6L8OJ
	7XRzD4PYlP82O74+vuAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wltbq-00000007kYG-3Xpc;
	Mon, 20 Jul 2026 19:25:02 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wltbn-00000007kWj-1oIS;
	Mon, 20 Jul 2026 19:25:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784575497;
	bh=jmv02YI047x2xL6OXfQ0v6pTfoWDZauPaF6Dqs8le1M=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=K6MY+65pr1hcVX1aj8V2TeKS8e9QQ5ekOsZRaE+/XU564qamyoZs0cuAPK0yCcMci
	 P8qG2mOvZl1nehFQOZ5E5nhB74aMOcE1NNrm8PArL/gUmI1j0LdH1OQEVgJoUF53uJ
	 HP5uwKt1lRVIODh/2r3rEhsSZYgtUwDQDp/iOfWNXHsdC2O5ainOdJx6kAwjrLOhMF
	 Gewf2Fb39K7g3LLKtx07sQooh2ECtnfQw6DtxJrNp44IC/gnjZaKjGh1L5mKsMIpwC
	 NAoJq47rU4Vkz+i9zCn9abVd7sLPZRG4tS7x99fDXF29AF43+KS+MDXIN9x/Aic5GC
	 j6I0Junvafq9Q==
Received: from [100.64.0.241] (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id C4A6017E09A3;
	Mon, 20 Jul 2026 21:24:56 +0200 (CEST)
Message-ID: <b2dfe89d-303e-485c-9d99-439a42f07811@collabora.com>
Date: Mon, 20 Jul 2026 22:24:56 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/8] phy: rockchip: samsung-hdptx: Drop TMDS rate setup
 workaround
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Algea Cao <algea.cao@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>,
 kernel@collabora.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, =?UTF-8?Q?Thomas_Niederpr=C3=BCm?=
 <dubito@online.de>, Simon Wright <simon@symple.nz>
References: <20260612-hdptx-clk-fixes-v4-0-ce5e1d456cda@collabora.com>
 <20260612-hdptx-clk-fixes-v4-5-ce5e1d456cda@collabora.com>
 <al4ujA5d6B5s23C4@umbar.lan>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <al4ujA5d6B5s23C4@umbar.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260720_122459_636072_F290A741 
X-CRM114-Status: GOOD (  16.46  )
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

T24gNy8yMC8yNiA1OjE5IFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+IE9uIEZyaSwgSnVu
IDEyLCAyMDI2IGF0IDAyOjQ1OjI0QU0gKzAzMDAsIENyaXN0aWFuIENpb2NhbHRlYSB3cm90ZToK
Pj4gU2luY2UgY29tbWl0IGJhOWMyZmUxOGMxNyAoImRybS9yb2NrY2hpcDogZHdfaGRtaV9xcDog
U3dpdGNoIHRvCj4+IHBoeV9jb25maWd1cmUoKSIpIHRoZSBUTURTIHJhdGUgc2V0dXAgZG9lc24n
dCByZWx5IGFueW1vcmUgb24gdGhlCj4+IHVuY29udmVudGlvbmFsIHVzYWdlIG9mIHRoZSBidXMg
d2lkdGgsIGluc3RlYWQgaXQgaXMgbWFuYWdlZCBleGNsdXNpdmVseQo+PiB0aHJvdWdoIHRoZSBI
RE1JIFBIWSBjb25maWd1cmF0aW9uIEFQSS4KPj4KPj4gRHJvcCB0aGUgbm93IG9ic29sZXRlIHdv
cmthcm91bmQgdG8gcmV0cmlldmUgdGhlIFRNRFMgY2hhcmFjdGVyIHJhdGUgdmlhCj4+IHBoeV9n
ZXRfYnVzX3dpZHRoKCkgZHVyaW5nIHBvd2VyX29uKCkuCj4+Cj4+IFdoaWxlIGF0IGl0LCBnZXQg
cmlkIG9mIHRoZSBleHRyYSBjYWxsIHRvIHJrX2hkcHR4X3BoeV9jb25zdW1lcl9wdXQoKSBieQo+
PiBtb3ZpbmcgdGhlIHN0YXRlbWVudCBhdCB0aGUgZW5kIG9mIHRoZSBmdW5jdGlvbi4KPj4KPj4g
VGVzdGVkLWJ5OiBUaG9tYXMgTmllZGVycHLDvG0gPGR1Yml0b0BvbmxpbmUuZGU+Cj4+IFRlc3Rl
ZC1ieTogU2ltb24gV3JpZ2h0IDxzaW1vbkBzeW1wbGUubno+Cj4+IFNpZ25lZC1vZmYtYnk6IENy
aXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3RpYW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+Cj4+IC0t
LQo+PiAgZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmctaGRwdHguYyB8
IDI3ICsrKysrLS0tLS0tLS0tLS0tLS0tLS0tCj4+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRp
b25zKCspLCAyMSBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3Jv
Y2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LmMgYi9kcml2ZXJzL3BoeS9yb2NrY2hp
cC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jCj4+IGluZGV4IDI1YmQ4MjFjZDAzOS4uMzU5
OTcwODdkNjFjIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2No
aXAtc2Ftc3VuZy1oZHB0eC5jCj4+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2Nr
Y2hpcC1zYW1zdW5nLWhkcHR4LmMKPj4gQEAgLTE2NjAsMjIgKzE2NjAsNiBAQCBzdGF0aWMgaW50
IHJrX2hkcHR4X3BoeV9wb3dlcl9vbihzdHJ1Y3QgcGh5ICpwaHkpCj4+ICAJZW51bSBwaHlfbW9k
ZSBtb2RlID0gcGh5X2dldF9tb2RlKHBoeSk7Cj4+ICAJaW50IHJldCwgbGFuZTsKPj4gIAo+PiAt
CWlmIChtb2RlICE9IFBIWV9NT0RFX0RQKSB7Cj4+IC0JCWlmICghaGRwdHgtPmhkbWlfY2ZnLnJh
dGUgJiYgaGRwdHgtPmhkbWlfY2ZnLm1vZGUgIT0gUEhZX0hETUlfTU9ERV9GUkwpIHsKPj4gLQkJ
CS8qCj4+IC0JCQkgKiBGSVhNRTogVGVtcG9yYXJ5IHdvcmthcm91bmQgdG8gc2V0dXAgVE1EUyBj
aGFyIHJhdGUKPj4gLQkJCSAqIGZyb20gdGhlIFJLIERXIEhETUkgUVAgYnJpZGdlIGRyaXZlci4K
Pj4gLQkJCSAqIFdpbGwgYmUgcmVtb3ZlZCBhcyBzb29uIHRoZSBzd2l0Y2ggdG8gdGhlIEhETUkg
UEhZCj4+IC0JCQkgKiBjb25maWd1cmF0aW9uIEFQSSBoYXMgYmVlbiBjb21wbGV0ZWQgb24gYm90
aCBlbmRzLgo+PiAtCQkJICovCj4+IC0JCQloZHB0eC0+aGRtaV9jZmcucmF0ZSA9IHBoeV9nZXRf
YnVzX3dpZHRoKGhkcHR4LT5waHkpICYgMHhmZmZmZmZmOwo+PiAtCQkJaGRwdHgtPmhkbWlfY2Zn
LnJhdGUgKj0gMTAwOwo+PiAtCQl9Cj4+IC0KPj4gLQkJZGV2X2RiZyhoZHB0eC0+ZGV2LCAiJXMg
cmF0ZT0lbGx1IGJwYz0ldVxuIiwgX19mdW5jX18sCj4+IC0JCQloZHB0eC0+aGRtaV9jZmcucmF0
ZSwgaGRwdHgtPmhkbWlfY2ZnLmJwYyk7Cj4+IC0JfQo+PiAtCj4+ICAJcmV0ID0gcmtfaGRwdHhf
cGh5X2NvbnN1bWVyX2dldChoZHB0eCk7Cj4+ICAJaWYgKHJldCkKPj4gIAkJcmV0dXJuIHJldDsK
Pj4gQEAgLTE3MDEsOSArMTY4NSwxMCBAQCBzdGF0aWMgaW50IHJrX2hkcHR4X3BoeV9wb3dlcl9v
bihzdHJ1Y3QgcGh5ICpwaHkpCj4+ICAJCXJrX2hkcHR4X2RwX3BsbF9pbml0KGhkcHR4KTsKPj4g
IAo+PiAgCQlyZXQgPSBya19oZHB0eF9kcF9hdXhfaW5pdChoZHB0eCk7Cj4+IC0JCWlmIChyZXQp
Cj4+IC0JCQlya19oZHB0eF9waHlfY29uc3VtZXJfcHV0KGhkcHR4LCB0cnVlKTsKPj4gIAl9IGVs
c2Ugewo+PiArCQlkZXZfZGJnKGhkcHR4LT5kZXYsICIlcyByYXRlPSVsbHUgYnBjPSV1XG4iLCBf
X2Z1bmNfXywKPj4gKwkJCWhkcHR4LT5oZG1pX2NmZy5yYXRlLCBoZHB0eC0+aGRtaV9jZmcuYnBj
KTsKPj4gKwo+PiAgCQlpZiAoaGRwdHgtPnBsbF9jb25maWdfZGlydHkpCj4+ICAJCQlyZXQgPSBy
a19oZHB0eF9wbGxfY21uX2NvbmZpZyhoZHB0eCk7Cj4+ICAKPj4gQEAgLTE3MTYsMTEgKzE3MDEs
MTEgQEAgc3RhdGljIGludCBya19oZHB0eF9waHlfcG93ZXJfb24oc3RydWN0IHBoeSAqcGh5KQo+
PiAgCQkJZWxzZQo+PiAgCQkJCXJldCA9IHJrX2hkcHR4X3RtZHNfcm9wbGxfbW9kZV9jb25maWco
aGRwdHgpOwo+PiAgCQl9Cj4+IC0KPj4gLQkJaWYgKHJldCkKPj4gLQkJCXJrX2hkcHR4X3BoeV9j
b25zdW1lcl9wdXQoaGRwdHgsIHRydWUpOwo+PiAgCX0KPj4gIAo+PiArCWlmIChyZXQpCj4+ICsJ
CXJrX2hkcHR4X3BoeV9jb25zdW1lcl9wdXQoaGRwdHgsIHRydWUpOwo+IAo+IFRoaXMgbG9va3Mg
bGlrZXMgYW4gdW5yZWxhdGVkIGNoYW5nZS4gQ291bGQgeW91IHBsZWFzZSBzcGxpdCBpdCB0byBh
Cj4gc2VwYXJhdGUgY29tbWl0PwoKQWNrLgoKVGhhbmtzLApDcmlzdGlhbgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
