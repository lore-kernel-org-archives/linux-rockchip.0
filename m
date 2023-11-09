Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A538FC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 09:38:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4TmvPKcpkZyJ92mgfDZRazDazGP+vH2iVPtVuhk3iBI=; b=pjH9MWndBQbsDL
	1ynLpW1XRWvq6kwvUEc81GFgWITIi9a+zH2yRW4G8GuPd6cZi5ENplZyWHc1LK9M3Oktlx0AkEuEE
	53h3bivV6pr5yj7lwry40IzUmbGA+Y+TYIeVp9fvDSq59xb4Qov2rifKQH7iSd4lljif6mxAJuPJ4
	VI2iQ1i8xJWlU+EDLktXlXcxqkNQS2kzhlAZvo2kaOJVMEHMuJ8hKwTBEFZyDKTU2R50NRhJtsqPz
	oYKoz2TZWWM/xpS60KK0BZgs397jkxcEgP4m39RJWcovHACE08aCf/+iS4x3JkpZnX+Rg0voFfY7L
	y6ahrRylZ2MOn/aXma6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r11Ue-005nxX-2X;
	Thu, 09 Nov 2023 09:38:32 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r11Ua-005nw9-37;
	Thu, 09 Nov 2023 09:38:30 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BC86F6607412;
	Thu,  9 Nov 2023 09:38:25 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699522707;
	bh=F5eCvJZp5ZHGYJ0Dg13WChawV85jAIVEdBjM+7DBShE=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=h4x0LuYOIAo1skdu7fwYrmP1EsAl9jR5pHuC5CcWQpO+v/63t7EkfqoA2gudh/Yjj
	 S4tR4kKJFm7JRr7UHiuvBE87TNfl2fRXQunZrLnuQr37bLIRn4MZziVHGYQ6Ku1tzc
	 gPGykHkUX2YwpeDjllD73G6KszY5cOMwgmtOMKKItNacwHlljXwzspmnOOnL45nu3/
	 zTCSab62P7WQD6F687rgUKZCmo4HdOOonhCr/GRtefEBgsZ7VBvOJnzYi2xVWsrq7k
	 Y0d46UD2AWp+hNaPQtsBkjOcuthgIcEgj0MhBf1cy9+earEuxW4fIJnjL3aGlxI8PB
	 GydHiHn8gkRAg==
Message-ID: <b812aae8-a600-433e-81ba-d330f40dce21@collabora.com>
Date: Thu, 9 Nov 2023 10:38:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 15/56] media: visl: Use vb2_get_buffer() instead of
 directly access to buffers array
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com,
 Daniel Almeida <daniel.almeida@collabora.com>
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-16-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-16-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_013829_169519_3F3F2814 
X-CRM114-Status: GOOD (  16.32  )
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

VyBkbml1IDMxLjEwLjIwMjMgb8KgMTc6MzAsIEJlbmphbWluIEdhaWduYXJkIHBpc3plOgo+IFVz
ZSB2YjJfZ2V0X2J1ZmZlcigpIGluc3RlYWQgb2YgZGlyZWN0IGFjY2VzcyB0byB0aGUgdmIyX3F1
ZXVlIGJ1ZnMgYXJyYXkuCj4gVGhpcyBhbGxvd3MgdXMgdG8gY2hhbmdlIHRoZSB0eXBlIG9mIHRo
ZSBidWZzIGluIHRoZSBmdXR1cmUuCj4gQWZ0ZXIgZWFjaCBjYWxsIHRvIHZiMl9nZXRfYnVmZmVy
KCkgd2UgbmVlZCB0byBiZSBzdXJlIHRoYXQgd2UgZ2V0Cj4gYSB2YWxpZCBwb2ludGVyIHNvIGNo
ZWNrIHRoZSByZXR1cm4gdmFsdWUgb2YgYWxsIG9mIHRoZW0uCj4gCj4gU2lnbmVkLW9mZi1ieTog
QmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+CgpSZXZp
ZXdlZC1ieTogQW5kcnplaiBQaWV0cmFzaWV3aWN6IDxhbmRyemVqLnBAY29sbGFib3JhLmNvbT4K
Cj4gQ0M6IERhbmllbCBBbG1laWRhIDxkYW5pZWwuYWxtZWlkYUBjb2xsYWJvcmEuY29tPgo+IEND
OiBNYXVybyBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWJAa2VybmVsLm9yZz4KPiAtLS0KPiAgIGRy
aXZlcnMvbWVkaWEvdGVzdC1kcml2ZXJzL3Zpc2wvdmlzbC1kZWMuYyB8IDI4ICsrKysrKysrKysr
KysrKystLS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCA3IGRlbGV0
aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3Rlc3QtZHJpdmVycy92aXNs
L3Zpc2wtZGVjLmMgYi9kcml2ZXJzL21lZGlhL3Rlc3QtZHJpdmVycy92aXNsL3Zpc2wtZGVjLmMK
PiBpbmRleCAzMThkNjc1ZTU2NjguLmJhMjBlYTk5OGQxOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L21lZGlhL3Rlc3QtZHJpdmVycy92aXNsL3Zpc2wtZGVjLmMKPiArKysgYi9kcml2ZXJzL21lZGlh
L3Rlc3QtZHJpdmVycy92aXNsL3Zpc2wtZGVjLmMKPiBAQCAtMjkwLDEzICsyOTAsMjAgQEAgc3Rh
dGljIHZvaWQgdmlzbF90cGdfZmlsbChzdHJ1Y3QgdmlzbF9jdHggKmN0eCwgc3RydWN0IHZpc2xf
cnVuICpydW4pCj4gICAJZm9yIChpID0gMDsgaSA8IG91dF9xLT5udW1fYnVmZmVyczsgaSsrKSB7
Cj4gICAJCWNoYXIgZW50cnlbXSA9ICJpbmRleDogJXUsIHN0YXRlOiAlcywgcmVxdWVzdF9mZDog
JWQsICI7Cj4gICAJCXUzMiBvbGRfbGVuID0gbGVuOwo+IC0JCWNoYXIgKnFfc3RhdHVzID0gdmlz
bF9nZXRfdmIyX3N0YXRlKG91dF9xLT5idWZzW2ldLT5zdGF0ZSk7Cj4gKwkJc3RydWN0IHZiMl9i
dWZmZXIgKnZiMjsKPiArCQljaGFyICpxX3N0YXR1czsKPiArCj4gKwkJdmIyID0gdmIyX2dldF9i
dWZmZXIob3V0X3EsIGkpOwo+ICsJCWlmICghdmIyKQo+ICsJCQljb250aW51ZTsKPiArCj4gKwkJ
cV9zdGF0dXMgPSB2aXNsX2dldF92YjJfc3RhdGUodmIyLT5zdGF0ZSk7Cj4gICAKPiAgIAkJbGVu
ICs9IHNjbnByaW50ZigmYnVmW2xlbl0sIFRQR19TVFJfQlVGX1NaIC0gbGVuLAo+ICAgCQkJCSBl
bnRyeSwgaSwgcV9zdGF0dXMsCj4gLQkJCQkgdG9fdmIyX3Y0bDJfYnVmZmVyKG91dF9xLT5idWZz
W2ldKS0+cmVxdWVzdF9mZCk7Cj4gKwkJCQkgdG9fdmIyX3Y0bDJfYnVmZmVyKHZiMiktPnJlcXVl
c3RfZmQpOwo+ICAgCj4gLQkJbGVuICs9IHZpc2xfZmlsbF9ieXRlc3VzZWQodG9fdmIyX3Y0bDJf
YnVmZmVyKG91dF9xLT5idWZzW2ldKSwKPiArCQlsZW4gKz0gdmlzbF9maWxsX2J5dGVzdXNlZCh0
b192YjJfdjRsMl9idWZmZXIodmIyKSwKPiAgIAkJCQkJICAgJmJ1ZltsZW5dLAo+ICAgCQkJCQkg
ICBUUEdfU1RSX0JVRl9TWiAtIGxlbik7Cj4gICAKPiBAQCAtMzQyLDEzICszNDksMjAgQEAgc3Rh
dGljIHZvaWQgdmlzbF90cGdfZmlsbChzdHJ1Y3QgdmlzbF9jdHggKmN0eCwgc3RydWN0IHZpc2xf
cnVuICpydW4pCj4gICAJbGVuID0gMDsKPiAgIAlmb3IgKGkgPSAwOyBpIDwgY2FwX3EtPm51bV9i
dWZmZXJzOyBpKyspIHsKPiAgIAkJdTMyIG9sZF9sZW4gPSBsZW47Cj4gLQkJY2hhciAqcV9zdGF0
dXMgPSB2aXNsX2dldF92YjJfc3RhdGUoY2FwX3EtPmJ1ZnNbaV0tPnN0YXRlKTsKPiArCQlzdHJ1
Y3QgdmIyX2J1ZmZlciAqdmIyOwo+ICsJCWNoYXIgKnFfc3RhdHVzOwo+ICsKPiArCQl2YjIgPSB2
YjJfZ2V0X2J1ZmZlcihjYXBfcSwgaSk7Cj4gKwkJaWYgKCF2YjIpCj4gKwkJCWNvbnRpbnVlOwo+
ICsKPiArCQlxX3N0YXR1cyA9IHZpc2xfZ2V0X3ZiMl9zdGF0ZSh2YjItPnN0YXRlKTsKPiAgIAo+
ICAgCQlsZW4gKz0gc2NucHJpbnRmKCZidWZbbGVuXSwgVFBHX1NUUl9CVUZfU1ogLSBsZW4sCj4g
ICAJCQkJICJpbmRleDogJXUsIHN0YXR1czogJXMsIHRpbWVzdGFtcDogJWxsdSwgaXNfaGVsZDog
JWQiLAo+IC0JCQkJIGNhcF9xLT5idWZzW2ldLT5pbmRleCwgcV9zdGF0dXMsCj4gLQkJCQkgY2Fw
X3EtPmJ1ZnNbaV0tPnRpbWVzdGFtcCwKPiAtCQkJCSB0b192YjJfdjRsMl9idWZmZXIoY2FwX3Et
PmJ1ZnNbaV0pLT5pc19oZWxkKTsKPiArCQkJCSB2YjItPmluZGV4LCBxX3N0YXR1cywKPiArCQkJ
CSB2YjItPnRpbWVzdGFtcCwKPiArCQkJCSB0b192YjJfdjRsMl9idWZmZXIodmIyKS0+aXNfaGVs
ZCk7Cj4gICAKPiAgIAkJdHBnX2dlbl90ZXh0KCZjdHgtPnRwZywgYmFzZXAsIGxpbmUrKyAqIGxp
bmVfaGVpZ2h0LCAxNiwgJmJ1ZltvbGRfbGVuXSk7Cj4gICAJCWZyYW1lX2RwcmludGsoY3R4LT5k
ZXYsIHJ1bi0+ZHN0LT5zZXF1ZW5jZSwgIiVzIiwgJmJ1ZltvbGRfbGVuXSk7CgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
