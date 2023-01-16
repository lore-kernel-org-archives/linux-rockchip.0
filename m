Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 139F8C46467
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Jan 2023 08:23:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PRA+tMiXRlfpPAL4VbztawnPLyXM2bMxCrxaE2ldOgk=; b=nzfJ97vPEhi3Ol
	YUhCs3P4WDPNQwstw3ofY0KvpVQt8Ag5AFRhnTHuneS1bQky26V32bmYBojsXvZh49SIOjxnC4huD
	ma8e30/sRKIKsk/gmsWIT1nTuJDqfJgUQxfFgyDxVIy2Vt/v/l4bbYKfNoYYybp7YyeCCUPv4Omq1
	jQsf7HnZUZsXt/cZ+cmpvP9fMUSkZBiQ5UZg76XS4HsC6ZvKlG/oDSwoSMdHkEMsUYmfzgxxrgdjW
	iaijhsUbqXB/tdnZM7JPsHGhUAQpOkRMREYREEp1Edy3jgMmdEsEN64B5TMukyjmI1TJmjT/Kp08V
	/B5Rb4/92/EmDbgkiJZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHKm3-009A6L-A2; Mon, 16 Jan 2023 08:23:23 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHKm0-009A5G-JA
	for linux-rockchip@lists.infradead.org; Mon, 16 Jan 2023 08:23:21 +0000
Received: from [192.168.15.130] (unknown [194.152.46.21])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D266B6602BBC;
	Mon, 16 Jan 2023 08:23:17 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1673857398;
	bh=0oEXBLaXBkw2yiI3T0rNElgIM6GXeR/1APFK7PWIKIU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Q+wx2+LaBSyOuWoLDAuOqnRo3FT0DXhpU5z+BeOun7NQL7t5MKyLPaRPrXPahTtbV
	 4ydtz5i9RsPiNd6DcB0TEaPfqdrMtXc3YfYRnOJh+F5JavHNarSJIVjo18WURIYu0i
	 lSePYzJero/OMjWKuhybnqZ+hFHtzDbVVFPNywfIxa+TQ3RskXNPmmB5Eq99QM95no
	 aWYb0qFUqqjKYTHHovbRVOHIXLn59HsnCMyKebLdWV2z59Ngq11GMQlIRl5RFWPWTx
	 2bswoAW69vApp9Vg1FjHNFKIrpzafbLg+Fc6GK98qAAUywoJjQD3gbrNPklP/djusa
	 00/t98Xosq+uA==
Message-ID: <e154b22c-1cb4-dbb1-40e0-91fad130363d@collabora.com>
Date: Mon, 16 Jan 2023 09:23:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 04/12] staging: media: rkvdec: Block start streaming
 until both queues run
Content-Language: en-US
To: Sebastian Fricke <sebastian.fricke@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 Jonas Karlman <jonas@kwiboo.se>, Alex Bee <knaerzche@gmail.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Collabora Kernel-domain <kernel@collabora.com>,
 Robert Beckett <bob.beckett@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
References: <20230101-patch-series-v2-6-2-rc1-v2-0-fa1897efac14@collabora.com>
 <20230101-patch-series-v2-6-2-rc1-v2-4-fa1897efac14@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20230101-patch-series-v2-6-2-rc1-v2-4-fa1897efac14@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_002320_782901_74854C18 
X-CRM114-Status: GOOD (  17.61  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgU2ViYXN0aWFuLAoKRXplcXVpZWwgYW5kIERhbiBoYXZlIGhhZCBzb21lIGNvbW1lbnRzLCB0
aGV5IG5lZWQgYWRkcmVzc2luZy4KCklmLCBhcyBhIHJlc3VsdCwgdGhlIGxvZ2ljIG9mIHRoaXMg
cGF0Y2ggcmVtYWlucyBpbiBwbGFjZSB0aGVuOgoKVyBkbml1IDEyLjAxLjIwMjMgb8KgMTM6NTYs
IFNlYmFzdGlhbiBGcmlja2UgcGlzemU6Cj4gRW5zdXJlIHRoYXQgYm90aCB0aGUgQ0FQVFVSRSBh
bmQgdGhlIE9VVFBVVCBxdWV1ZSBhcmUgcnVubmluZyAoZS5nLiBidXN5Cj4gLT4gaGF2ZSBidWZm
ZXJzIGFsbG9jYXRlZCkgYmVmb3JlIHN0YXJ0aW5nIHRoZSBhY3R1YWwgc3RyZWFtaW5nIHByb2Nl
c3MuCj4gCj4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIEZyaWNrZSA8c2ViYXN0aWFuLmZyaWNr
ZUBjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9y
a3ZkZWMuYyB8IDcgKysrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5jIGIv
ZHJpdmVycy9zdGFnaW5nL21lZGlhL3JrdmRlYy9ya3ZkZWMuYwo+IGluZGV4IGM4NDlmNmMyMDI3
OS4uZTBlOTVkMDZlMjE2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9ya3Zk
ZWMvcmt2ZGVjLmMKPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvcmt2ZGVjL3JrdmRlYy5j
Cj4gQEAgLTU2Miw2ICs1NjIsMTMgQEAgc3RhdGljIGludCBya3ZkZWNfc3RhcnRfc3RyZWFtaW5n
KHN0cnVjdCB2YjJfcXVldWUgKnEsIHVuc2lnbmVkIGludCBjb3VudCkKPiAgIAlpZiAoVjRMMl9U
WVBFX0lTX0NBUFRVUkUocS0+dHlwZSkpCj4gICAJCXJldHVybiAwOwo+ICAgCj4gKwkvKgo+ICsJ
ICogTWFrZSBzdXJlIHRoYXQgYm90aCB0aGUgb3V0cHV0IGFuZCB0aGUgY2FwdHVyZSBxdWV1ZSBh
cmUgcnVubmluZwo+ICsJICovCj4gKwlpZiAocmt2ZGVjX3F1ZXVlX2J1c3koY3R4LCBWNEwyX0JV
Rl9UWVBFX1ZJREVPX0NBUFRVUkVfTVBMQU5FKSA9PSAwIHx8Cj4gKwkgICAgcmt2ZGVjX3F1ZXVl
X2J1c3koY3R4LCBWNEwyX0JVRl9UWVBFX1ZJREVPX09VVFBVVF9NUExBTkUpID09IDApCgppZiB5
b3UgY29udmVydCB0byBhIG1hY3JvIGluIFBBVENIIDAzLzEyIHRoZW4gdGhlIGNvbmRpdGlvbnMg
Y2FuIGJlIHJld3JpdHRlbiBhcwoKIXJrdmRlY19xdWV1ZV9idXN5KC4uLi4uKQoKaW5zdGVhZCBv
ZiBjb21wYXJpbmcgdG8gMC4gKGFjdHVhbGx5LCB0aGlzIGNhbiBiZSBkb25lIHJlZ2FyZGxlc3Ms
IGJ1dCBtYWtlcyAKbW9yZSBzZW5zZSBpZiB0aGUgcmVzdWx0IG9mIHJrdmRlY19xdWV1ZV9idXN5
KCkgaXMgYm9vbGVhbiB3aGljaCBpdCBpcyB3aGVuCml0IGJlY29tZXMgYSBtYWNybyBhcyBzdWdn
ZXN0ZWQpCgpUaGVuIHlvdSBjYW4gb3B0aW9uYWxseSBmb2xsb3cgRGUgTW9yZ2FuJ3MgbGF3OgoK
aWYgKCEocmt2ZGVjX3F1ZXVlX2J1c3koKSAmJiBya3ZkZWNfcXVldWVfYnVzeSgpKSkKCXJldHVy
biAtRUFHQUlOOwoKYW5kIHlvdSBnZXQgb25lIG5lZ2F0aW9uIGxlc3MuCgpSZWdhcmRzLAoKQW5k
cnplagoKPiArCQlyZXR1cm4gLUVBR0FJTjsKPiArCj4gICAJZGVzYyA9IGN0eC0+Y29kZWRfZm10
X2Rlc2M7Cj4gICAJaWYgKFdBUk5fT04oIWRlc2MpKQo+ICAgCQlyZXR1cm4gLUVJTlZBTDsKPiAK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
