Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C79C5C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Mar 2022 08:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FzicH4/N4BLAYVMb+b2y5EoSgjS9B1pkL1J2pIERjgY=; b=UjGQq6W5ojOvW4
	Jab8Hr79g6hGf1L3mc36avzlllMS1H+DvzldJBNGXytS0YqNUlY7cP24PbQ0lUrAdKw6GcVqnHUNj
	bXm+MVfCuwNBLIAKtuQT1pfyBwz4j15t9VkdXaMUv4CM+f3+HLEQU5O1mDt6xug/gRmQenDEaLDNX
	vLJOHr8Nwk8IlMPb53veiphIljiWmHoR9GwJht2Yjqni1ZvDFqqv0td2g5Kx9Z6cBjFRcnjH2UBzo
	tsnedv11M+L8nSUfSK4U2fpoEmQVugP82bgVu0Yw1dlwVhjVGg3+davTqWr662IL6U9a4/P/anLPa
	vFIeGiTGTu+7KpjMQC5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRVQK-003JKA-Gz; Tue, 08 Mar 2022 08:42:28 +0000
Received: from mail-m121144.qiye.163.com ([115.236.121.144])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRVQ7-003JI1-Tr; Tue, 08 Mar 2022 08:42:18 +0000
Received: from [172.16.12.141] (unknown [58.22.7.114])
 by mail-m121144.qiye.163.com (Hmail) with ESMTPA id 2F016AC0510;
 Tue,  8 Mar 2022 16:42:11 +0800 (CST)
Message-ID: <ae4314db-09c0-049b-ccc9-f6b1c3003dcb@rock-chips.com>
Date: Tue, 8 Mar 2022 16:42:10 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v7 22/24] drm: rockchip: Add VOP2 driver
Content-Language: en-US
To: Daniel Stone <daniel@fooishbar.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Peter Geis <pgwipeout@gmail.com>, linux-arm-kernel@lists.infradead.org
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-23-s.hauer@pengutronix.de>
 <bb077f34-333e-a07a-1fcb-702a6807f941@rock-chips.com>
 <CAPj87rO2sztocJrE-CeSQWry9j_cSe2uv9F1Yf81pGnBXdu2Ag@mail.gmail.com>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <CAPj87rO2sztocJrE-CeSQWry9j_cSe2uv9F1Yf81pGnBXdu2Ag@mail.gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWUNPGUJWT0xNT0IaTU
 MaQkoYVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktDSUNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OT46FTo*IT4MMzJOGDgYVjET
 AR1PC01VSlVKTU9NTElDQkhKQk9MVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
 WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT0JDSjcG
X-HM-Tid: 0a7f68b168bcb039kuuu2f016ac0510
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_004216_130783_551A4DB5 
X-CRM114-Status: GOOD (  16.52  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgRGFuaWVsOgoKT24gMy83LzIyIDIxOjA5LCBEYW5pZWwgU3RvbmUgd3JvdGU6Cj4gSGkgQW5k
eSwKPgo+IE9uIE1vbiwgNyBNYXIgMjAyMiBhdCAxMjoxOCwgQW5keSBZYW4gPGFuZHkueWFuQHJv
Y2stY2hpcHMuY29tPiB3cm90ZToKPj4gT24gMi8yNS8yMiAxNTo1MSwgU2FzY2hhIEhhdWVyIHdy
b3RlOgo+Pj4gVGhlIFZPUDIgdW5pdCBpcyBmb3VuZCBvbiBSb2NrY2hpcCBTb0NzIGJlZ2lubmlu
ZyB3aXRoIHJrMzU2Ni9yazM1NjguCj4+PiBJdCByZXBsYWNlcyB0aGUgVk9QIHVuaXQgZm91bmQg
aW4gdGhlIG9sZGVyIFJvY2tjaGlwIFNvQ3MuCj4+Pgo+Pj4gVGhpcyBkcml2ZXIgaGFzIGJlZW4g
ZGVyaXZlZCBmcm9tIHRoZSBkb3duc3RyZWFtIFJvY2tjaGlwIEtlcm5lbCBhbmQKPj4+IGhlYXZp
bHkgbW9kaWZpZWQ6Cj4+Pgo+Pj4gLSBBbGwgbm9uc3RhbmRhcmQgRFJNIHByb3BlcnRpZXMgaGF2
ZSBiZWVuIHJlbW92ZWQKPj4+IC0gZHJvcHBlZCBzdHJ1Y3Qgdm9wMl9wbGFuZV9zdGF0ZSBhbmQg
cGFzcyBhcm91bmQgbGVzcyBkYXRhIGJldHdlZW4KPj4+ICAgICBmdW5jdGlvbnMKPj4+IC0gRHJv
cHBlZCBhbGwgRFJNX0ZPUk1BVF8qIG5vdCBrbm93biBvbiB1cHN0cmVhbQo+Pj4gLSByZXdvcmsg
cmVnaXN0ZXIgYWNjZXNzIHRvIGdldCByaWQgb2YgZXhjZXNzaXZlbHkgdXNlZCBtYWNyb3MKPj4+
IC0gRHJvcCBhbGwgd2FpdGluZyBmb3IgZnJhbWVzeW5jcwo+Pj4KPj4+IFRoZSBkcml2ZXIgaXMg
dGVzdGVkIHdpdGggSERNSSBhbmQgTUlQSS1EU0kgZGlzcGxheSBvbiBhIFJLMzU2OC1FVkIKPj4+
IGJvYXJkLiBPdmVybGF5IHN1cHBvcnQgaXMgdGVzdGVkIHdpdGggdGhlIG1vZGV0ZXN0IHV0aWxp
dHkuIEFGQkMgc3VwcG9ydAo+Pj4gb24gdGhlIGNsdXN0ZXIgd2luZG93cyBpcyB0ZXN0ZWQgd2l0
aCB3ZXN0b24tc2ltcGxlLWRtYWJ1Zi1lZ2wgb24KPj4+IHdlc3RvbiB1c2luZyB0aGUgKHlldCB0
byBiZSB1cHN0cmVhbWVkKSBwYW5mcm9zdCBkcml2ZXIgc3VwcG9ydC4KPj4gV2hlbiBydW4gYSB3
ZXN0b24gMTAuMC4wOgo+Pgo+PiAgICAjIGV4cG9ydCBYREdfUlVOVElNRV9ESVI9L3RtcAo+PiAg
ICAjIHdlc3RvbiAtLWJhY2tlbmQ9ZHJtLWJhY2tlbmQuc28gLS11c2UtcGl4bWEgLS10dHk9Mgo+
PiAtLWNvbnRpbnVlPXdpdGhvdXQtaW5wdXQKPj4KPj4gSSBnb3QgdGhlIGZvbGxvd2luZyBlcnJv
cjoKPj4KPj4gZHJtX2F0b21pY19jaGVja19vbmx5IFtQTEFORTozMTpTbWFydDAtd2luMF0gQ1JU
QyBzZXQgYnV0IG5vIEZCCj4gQ2FuIHlvdSBwbGVhc2Ugc3RhcnQgV2VzdG9uIHdpdGggLS1sb2dn
ZXItc2NvcGVzPWxvZyxkcm0tYmFja2VuZCBhbmQKPiBhdHRhY2ggdGhlIG91dHB1dD8KClBsZWFz
ZSBzZWUgdGhlIHdlc3RvbiBvdXB1dCBoZXJlWzBdCgoKVGhpcyBmYWlsZWQgaXMgZnJvbSDCoCBk
cm1fYXRvbV9wbGFuZV9jaGVjazogYm90aCBDUlRDIGFuZCBGQiBtdXN0IGJlIHNldCAKb3IgbmVp
dGhlci4KCnN0YXRpYyBpbnQgZHJtX2F0b21pY19wbGFuZV9jaGVjayhjb25zdCBzdHJ1Y3QgZHJt
X3BsYW5lX3N0YXRlIAoqb2xkX3BsYW5lX3N0YXRlLAogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBk
cm1fcGxhbmVfc3RhdGUgCipuZXdfcGxhbmVfc3RhdGUpCnsKIMKgwqDCoMKgwqDCoMKgIHN0cnVj
dCBkcm1fcGxhbmUgKnBsYW5lID0gbmV3X3BsYW5lX3N0YXRlLT5wbGFuZTsKIMKgwqDCoMKgwqDC
oMKgIHN0cnVjdCBkcm1fY3J0YyAqY3J0YyA9IG5ld19wbGFuZV9zdGF0ZS0+Y3J0YzsKIMKgwqDC
oMKgwqDCoMKgIGNvbnN0IHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiID0gbmV3X3BsYW5lX3N0
YXRlLT5mYjsKIMKgwqDCoMKgwqDCoMKgIHVuc2lnbmVkIGludCBmYl93aWR0aCwgZmJfaGVpZ2h0
OwogwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRybV9tb2RlX3JlY3QgKmNsaXBzOwogwqDCoMKgwqDC
oMKgwqAgdWludDMyX3QgbnVtX2NsaXBzOwogwqDCoMKgwqDCoMKgwqAgaW50IHJldDsKCiDCoMKg
wqDCoMKgwqDCoCAvKiBlaXRoZXIgKmJvdGgqIENSVEMgYW5kIEZCIG11c3QgYmUgc2V0LCBvciBu
ZWl0aGVyICovCiDCoMKgwqDCoMKgwqDCoCBpZiAoY3J0YyAmJiAhZmIpIHsKIMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCBkcm1fZGJnX2F0b21pYyhwbGFuZS0+ZGV2LCAiW1BMQU5FOiVk
OiVzXSBDUlRDIHNldCBidXQgCm5vIEZCXG4iLAogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHBsYW5lLT5iYXNlLmlkLCBwbGFuZS0+
bmFtZSk7CiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FSU5WQUw7CiDC
oMKgwqDCoMKgwqDCoCB9IGVsc2UgaWYgKGZiICYmICFjcnRjKSB7CiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgZHJtX2RiZ19hdG9taWMocGxhbmUtPmRldiwgIltQTEFORTolZDolc10g
RkIgc2V0IGJ1dCBubyAKQ1JUQ1xuIiwKIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBwbGFuZS0+YmFzZS5pZCwgcGxhbmUtPm5hbWUp
OwogwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRUlOVkFMOwogwqDCoMKg
wqDCoMKgwqAgfQoKWzBdaHR0cHM6Ly9wYXN0ZWJpbi5jb20vbUdYS3FEMlMKCj4gQ2hlZXJzLAo+
IERhbmllbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
