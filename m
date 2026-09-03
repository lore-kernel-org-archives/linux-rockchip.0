Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA345C61DD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 06:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+YO43ZJXtUHD6Z2cgKdw5XRiwoT0NApSygy64Kcm9Ks=; b=rhrfzUSvWgjWv5
	CnoJME9u53EQxXJkUjt41WOm/XdH2xBCQefKf96yfZfs/oABVeuwaXmQKy1i95g49RMJcJgPKZe79
	UetiX7bbCcyOqgFj1Zu7r3he0d0VN1WYuLAare7iiWK4/Cn+FdKlLEGtgXI+860QKZ9BG+zb7kj1J
	KFUdvtQ+lf07MoXPwpV7nuiS5VY0iLrQfe+pPxW26A6m0xtqdSADT65s3WXhEdLrwAruOqZVTD++d
	jaNzVxRM++7vm3bVHGl+Xf7NiFvwyRjWvtivyUNkL17Y5x2ODKAMSvdiBn5hWFKthFuu8X+TgfwdB
	eswyFovCnZSmmXj2VM0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x21Hr-0000000GVlJ-1zH7;
	Thu, 03 Sep 2026 06:51:03 +0000
Received: from sender4-op-o11.zoho.com ([136.143.188.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x21Hp-0000000GVkm-1fVG;
	Thu, 03 Sep 2026 06:51:02 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1788418255; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Htifw8w1XJuFEgwMH8ihnz9TYB407OpNKpdYG8+wGBuE5+mC6i4TY9pywfys7BI0adxvWvtkWjvfUm3p648M+3fHNc3Q9mlWj0vVOa3fTPlR+okkUjoIKXy6NHMzcxJ3ZJwmXJBfzII1Wy6rvby56RBcc4xNPu1GLq5SsiMO8ZI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1788418255; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=IIzAYUjQg4plBJWnWFqp05IAzeGSDN5fbh7/cxBTBC8=; 
	b=dkcKfwYuDry7K+1HTTxv7NsZOaD5jNXBsL1h/RtMUR8X7D1hlL8efx2zD07F14AqxXBxwdZ2uqN/OCIiKiPRfvH3AIAVLLjrn+j1lmtKkjE24hvUIGFj7k5jjoLJE7gObbzx8gLklFvWg3zZX9PuJ37c82tthpFHGSOmd0A/j7c=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1788418255;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=IIzAYUjQg4plBJWnWFqp05IAzeGSDN5fbh7/cxBTBC8=;
	b=KQ2EefwCyA8qP65yiHebStBXg3nqVYNjlbfTITh7DCnJSeRZF7wKRlESZ6oB2+yW
	nou8wAE5KbJBVWCrrAOOGXp5ErpTWijKrbmI3wink3HgNkexday3lyMv9culRLdPozh
	ozE39pxIyJPwc3Z6GAdHIbgRs+ES7+5qe2XwkoaI=
Received: by mx.zohomail.com with SMTPS id 1788418254221442.9203953622582;
	Wed, 2 Sep 2026 23:50:54 -0700 (PDT)
Message-ID: <e56455f5-2213-49d5-9cd0-ab62f3b6edcc@collabora.com>
Date: Thu, 3 Sep 2026 08:50:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/9] media: v4l2-ctrls: validate AV1 tile counts
To: Michael Bommarito <michael.bommarito@gmail.com>,
 Hans Verkuil <hverkuil@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Yunfei Dong <yunfei.dong@mediatek.com>, Jonas Karlman <jonas@kwiboo.se>,
 Heiko Stuebner <heiko@sntech.de>, Kees Cook <kees@kernel.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20260617021906.2746743-1-michael.bommarito@gmail.com>
 <20260617021906.2746743-3-michael.bommarito@gmail.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20260617021906.2746743-3-michael.bommarito@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260902_235101_484188_964F1680 
X-CRM114-Status: GOOD (  19.56  )
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

CkxlIDE3LzA2LzIwMjYgw6AgMDQ6MTgsIE1pY2hhZWwgQm9tbWFyaXRvIGEgw6ljcml0wqA6Cj4g
VGhlIHN0YXRlbGVzcyBBVjEgZGVjb2RlcnMgdXNlIHRpbGVfaW5mby50aWxlX2NvbHMgYW5kIHRp
bGVfcm93cyBhcyBsb29wCj4gYm91bmRzIGFuZCBhcyBpbmRpY2VzIGludG8gdGhlIG1pXypfc3Rh
cnRzW10gYW5kICpfaW5fc2JzX21pbnVzXzFbXQo+IGFycmF5cywgYXMgdGhlIGRpdmlzb3IgZm9y
IGNvbnRleHRfdXBkYXRlX3RpbGVfaWQsIGFuZCB0aGVpciBwcm9kdWN0Cj4gYm91bmRzIHRoZSBw
ZXItdGlsZSBkZXNjcmlwdG9yIGJ1ZmZlcnMsIGJ1dCBzdGRfdmFsaWRhdGVfY29tcG91bmQoKSBk
b2VzCj4gbm90IGJvdW5kIHRoZXNlIHU4IGZpZWxkcy4gUmVqZWN0IGEgVjRMMl9DVFJMX1RZUEVf
QVYxX0ZSQU1FIHdob3NlCj4gdGlsZV9jb2xzIG9yIHRpbGVfcm93cyBleGNlZWRzIFY0TDJfQVYx
X01BWF9USUxFX0NPTFMgLyBfUk9XUywgb3Igd2hvc2UKPiBwcm9kdWN0IGV4Y2VlZHMgVjRMMl9B
VjFfTUFYX1RJTEVfQ09VTlQuIEEgemVybyB0aWxlIGNvdW50IGlzIGxlZnQgdG8gdGhlCj4gY29u
c3VtaW5nIGRyaXZlciBzbyB0aGUgemVyby1pbml0aWFsaXNlZCBjb250cm9sIHRoYXQgZXhpc3Rp
bmcgdXNlcnNwYWNlCj4gc3VibWl0cyBpcyBzdGlsbCBhY2NlcHRlZC4KPgo+IEZpeGVzOiA5ZGUz
MGY1Nzk5ODAgKCJtZWRpYTogQWRkIEFWMSB1QVBJIikKPiBBc3Npc3RlZC1ieTogQ2xhdWRlOmNs
YXVkZS1vcHVzLTQtOAo+IFNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgQm9tbWFyaXRvIDxtaWNoYWVs
LmJvbW1hcml0b0BnbWFpbC5jb20+CgpSZXZpZXdlZC1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJl
bmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+ICAgZHJpdmVycy9tZWRpYS92
NGwyLWNvcmUvdjRsMi1jdHJscy1jb3JlLmMgfCAyMCArKysrKysrKysrKysrKysrKysrKwo+ICAg
MSBmaWxlIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L21lZGlhL3Y0bDItY29yZS92NGwyLWN0cmxzLWNvcmUuYyBiL2RyaXZlcnMvbWVkaWEvdjRsMi1j
b3JlL3Y0bDItY3RybHMtY29yZS5jCj4gaW5kZXggNmQ0NzhlMWE1ZWYyMi4uZmIyMGFkMTNkZmVj
NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3Y0bDItY29yZS92NGwyLWN0cmxzLWNvcmUu
Ywo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvdjRsMi1jb3JlL3Y0bDItY3RybHMtY29yZS5jCj4gQEAg
LTc5MCwxMCArNzkwLDMwIEBAIHN0YXRpYyBpbnQgdmFsaWRhdGVfYXYxX2ZpbG1fZ3JhaW4oc3Ry
dWN0IHY0bDJfY3RybF9hdjFfZmlsbV9ncmFpbiAqZmcpCj4gICAJcmV0dXJuIDA7Cj4gICB9Cj4g
ICAKPiArc3RhdGljIGludCB2YWxpZGF0ZV9hdjFfdGlsZV9pbmZvKHN0cnVjdCB2NGwyX2F2MV90
aWxlX2luZm8gKnQpCj4gK3sKPiArCS8qCj4gKwkgKiB0aWxlX2NvbHMgYW5kIHRpbGVfcm93cyBp
bmRleCB0aGUgcGVyLXRpbGUgZGVzY3JpcHRvciBhcnJheXMgYW5kCj4gKwkgKiBib3VuZCB0aGUg
dGlsZSBsb29wcyBpbiB0aGUgc3RhdGVsZXNzIEFWMSBkcml2ZXJzOyB0aGUgcHJvZHVjdAo+ICsJ
ICogYm91bmRzIHRoZSB0b3RhbCB0aWxlIGRlc2NyaXB0b3IgY291bnQuCj4gKwkgKi8KPiArCWlm
ICh0LT50aWxlX2NvbHMgPiBWNEwyX0FWMV9NQVhfVElMRV9DT0xTIHx8Cj4gKwkgICAgdC0+dGls
ZV9yb3dzID4gVjRMMl9BVjFfTUFYX1RJTEVfUk9XUykKPiArCQlyZXR1cm4gLUVJTlZBTDsKPiAr
Cj4gKwlpZiAoKHUzMil0LT50aWxlX2NvbHMgKiB0LT50aWxlX3Jvd3MgPiBWNEwyX0FWMV9NQVhf
VElMRV9DT1VOVCkKPiArCQlyZXR1cm4gLUVJTlZBTDsKPiArCj4gKwlyZXR1cm4gMDsKPiArfQo+
ICsKPiAgIHN0YXRpYyBpbnQgdmFsaWRhdGVfYXYxX2ZyYW1lKHN0cnVjdCB2NGwyX2N0cmxfYXYx
X2ZyYW1lICpmKQo+ICAgewo+ICAgCWludCByZXQgPSAwOwo+ICAgCj4gKwlyZXQgPSB2YWxpZGF0
ZV9hdjFfdGlsZV9pbmZvKCZmLT50aWxlX2luZm8pOwo+ICsJaWYgKHJldCkKPiArCQlyZXR1cm4g
cmV0Owo+ICAgCXJldCA9IHZhbGlkYXRlX2F2MV9xdWFudGl6YXRpb24oJmYtPnF1YW50aXphdGlv
bik7Cj4gICAJaWYgKHJldCkKPiAgIAkJcmV0dXJuIHJldDsKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
