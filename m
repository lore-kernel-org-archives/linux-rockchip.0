Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00397C71157
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jun 2025 14:25:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OoBS8JzYC9LI4q/ES90+nfcHumMcFgm+ny0YJe4geOM=; b=Zb63/sI38F97+q
	Ol0i1cwS6UprOVunGM8BBORiNLOUpgLJQFpA67Gx5cdJyQHAnluwDsntXIlKL9KT18VpHsGgUr6pz
	ZYa4hFAGF0TGe3okYoZ868Smc1kAOJY+8OuD7kSlUZcRj5OnrLYsBpMSiTyvGB2g/nf32iGdGqRYH
	grRH7v3DxCZOos+EmtFeIAnjw6I4sThtapdivrdThn2Cv1UzP3M82YgKMgj8wx/SY3fkzxECHxUc6
	YAsVqXvtqMXQ8UzoG8c3/V4Sak85eVuS/osKX+RzKvzoim+sxayNmICsxAzudoNJtRluwr3S2xMYR
	NctgvyEvRqybCTZ7ncKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRXFJ-00000007XmF-2d98;
	Tue, 17 Jun 2025 14:25:05 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRWg7-00000007Q1v-32LO;
	Tue, 17 Jun 2025 13:48:44 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1750168101; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=RYsbxIlGajViXkOxtq2KEf8LaUDJCjs2cfVNQMck7jnzD0YFELOk4Xa46PPdaQdzez7xix5UJzDIKv5M4VIq9ujJICGT/zBOvItqnwiwbWLoNMhca/69lAZwnBzh4o35yTrisvCjwiUZSLVy4SVE7nSHjeDZ/MFXKZTr7z4ZQBs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1750168101; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=D4vJ4WUJydWruG0dqtzkAwR+nhnVb7UMToyievYWDJ8=; 
	b=IUmQzhrEo9hCGLNL4aD8A9gDxDumRgxrWh98mcRcJWaUN32W0PTlhuCxL2T0CeSSlVKE/0kXdq1cd3kWF7olhpFizl095mF29IPa32ApSMw6xH+7UC7mGpfD4ef1kTiLV3+ARZXvMJN9gBeWQ0OPKNAIyeOFKWZ0RvAzeA/dIHQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1750168101;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=D4vJ4WUJydWruG0dqtzkAwR+nhnVb7UMToyievYWDJ8=;
	b=O/Im1XKgABAsdhserORFX21ekFxftRdla9wGdCm60WC/2lpb522k498YpEm5afgi
	mAFRVWgct5SGPHMqENFUj6LbKkABgB/mrCWGJGi3mRzgYfZ7dreoOlKfpdfGzlnYxCx
	3immDWE3ee1SBTfTjqMhhmEPTZb1EDF7/c6i9lik=
Received: by mx.zohomail.com with SMTPS id 175016809925542.787085547648644;
	Tue, 17 Jun 2025 06:48:19 -0700 (PDT)
Message-ID: <2596fddc-aa76-4234-b182-1159c14b7cf8@collabora.com>
Date: Tue, 17 Jun 2025 15:48:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/5] iommu: Add verisilicon IOMMU driver
To: Diederik de Haas <didi.debian@cknow.org>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 nicolas.dufresne@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 kernel@collabora.com
References: <20250616145607.116639-1-benjamin.gaignard@collabora.com>
 <20250616145607.116639-4-benjamin.gaignard@collabora.com>
 <DAOTVW4YEC5Q.STXG6APE0YGN@cknow.org>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <DAOTVW4YEC5Q.STXG6APE0YGN@cknow.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_064843_829089_5F4824F0 
X-CRM114-Status: GOOD (  22.81  )
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

CkxlIDE3LzA2LzIwMjUgw6AgMTU6MDQsIERpZWRlcmlrIGRlIEhhYXMgYSDDqWNyaXTCoDoKPiBI
aSwKPgo+IE9uIE1vbiBKdW4gMTYsIDIwMjUgYXQgNDo1NSBQTSBDRVNULCBCZW5qYW1pbiBHYWln
bmFyZCB3cm90ZToKPj4gVmVyaXNpbGljb24gSU9NTVUgaGFyZHdhcmUgYmxvY2sgY2FuIGJlIGZv
dW5kIGluIGNvbWJpbmF0aW9uCj4gQ2FuIHRoZXJlIGJlIG9ubHkgMSBoYXJkd2FyZSBibG9jayBv
ciBpcyBtdWx0aXBsZSBwb3NzaWJsZT8KPiBJZiBvbmx5IDEsIHRoZW4gSSdkIHN0YXJ0IHdpdGgg
IlRoZSBWZXJpc2lsaWNvbiAuLi4iLgo+IElmIG1vcmUgdGhlbiBvbmUsIHRoZW4gSSdkIHVzZSAi
YmxvY2tzIi4KPgo+PiB3aXRoIGhhcmR3YXJlIHZpZGVvIGNvZGVjcyAoZW5jb2RlcnMgb3IgZGVj
b2RlcnMpIG9uCj4+IGRpZmZlcmVudCBTb0NzLgo+IFRoaXMgbWFrZXMgaXQgc291bmQgbGlrZSBp
dCBjYW4gYWxzbyBiZSB1c2VkIHdpdGggbm9uLVZlcmlzaWxpY29uIGNvZGVjcwo+IGFuZCBiYXNl
ZCBvbiB0aGUgRFQgYmluZGluZyBkZXNjcmlwdGlvbiwgSSBnZXQgdGhlIF9pbXByZXNzaW9uXyB0
aGF0Cj4gdGhhdCBpcyBub3QgdGhlIGNhc2U/Cj4gQnV0IGl0J3MgYWN0dWFsbHkgbm90IGNsZWFy
IHRvIG1lIGlmIHRoYXQncyB0aGUgY2FzZSBvciBub3QuCgpPbmx5IG9uZSBoYXJkd2FyZSBibG9j
ayBleGlzdHMgb24gcmszNTg4IGFuZCBpdCBjYW4gb25seSBiZSB1c2VkCmJ5IFZlcmlzaWxpY29u
IEFWMSBjb2RlYy4KCj4KPj4gRW5hYmxlIGl0IHdpbGwgYWxsb3dzIHRvIHVzZSBub24gY29udGln
dW91cyBtZW1vcnkKPiAiRW5hYmxpbmcgaXQgd2lsbCBhbGxvdyB1cyB0byB1c2Ugbm9uIC4uLiIg
b3IgIkVuYWJsZSBpdCB0byBhbGxvdyBbdGhlXQo+IHVzZSBvZiBub24gLi4uIiBvciAiRW5hYmxp
bmcgYWxsb3dzIHRoZSB1c2Ugb2Ygbm9uIC4uLiIKPgo+PiBhbGxvY2F0b3JzIGZvciBWZXJpc2ls
aWNvbiB2aWRlbyBjb2RlY3MuCj4gQW5kIHRoZSB3cmFwcGluZyBvZiB0aGUgd2hvbGUgY29tbWl0
IG1lc3NhZ2UgaXMgbm90IGZvbGxvd2luZyB0aGUKPiBzdGFuZGFyZHMuCj4KPj4gU2lnbmVkLW9m
Zi1ieTogQmVuamFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+
Cj4+IC0tLQo+PiAgIGRyaXZlcnMvaW9tbXUvS2NvbmZpZyAgICAgfCAgIDggKwo+PiAgIGRyaXZl
cnMvaW9tbXUvTWFrZWZpbGUgICAgfCAgIDEgKwo+PiAgIGRyaXZlcnMvaW9tbXUvdnNpLWlvbW11
LmMgfCA5MDAgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKPj4gICAzIGZp
bGVzIGNoYW5nZWQsIDkwOSBpbnNlcnRpb25zKCspCj4+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvaW9tbXUvdnNpLWlvbW11LmMKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW9tbXUv
S2NvbmZpZyBiL2RyaXZlcnMvaW9tbXUvS2NvbmZpZwo+PiBpbmRleCAwYTMzZDk5NWQxNWQuLjRj
ZjQ1MDRkY2MyNSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9pb21tdS9LY29uZmlnCj4+ICsrKyBi
L2RyaXZlcnMvaW9tbXUvS2NvbmZpZwo+PiBAQCAtMzgzLDQgKzM4MywxMiBAQCBjb25maWcgU1BS
RF9JT01NVQo+PiAgIAo+PiAgIAkgIFNheSBZIGhlcmUgaWYgeW91IHdhbnQgdG8gdXNlIHRoZSBt
dWx0aW1lZGlhIGRldmljZXMgbGlzdGVkIGFib3ZlLgo+PiAgIAo+PiArY29uZmlnIFZTSV9JT01N
VQo+PiArCWJvb2wgIlZlcmlzaWxpY29uIElPTU1VIFN1cHBvcnQiCj4+ICsJZGVwZW5kcyBvbiBB
Uk02NAo+PiArCXNlbGVjdCBJT01NVV9BUEkKPj4gKwlzZWxlY3QgQVJNX0RNQV9VU0VfSU9NTVUK
Pj4gKwloZWxwCj4+ICsJICBTdXBwb3J0IGZvciBJT01NVXMgdXNlZCBieSBWZXJpc2lsaWNvbiB2
aWRlbyBkZWNvZGVycy4KPj4gKwo+PiAgIGVuZGlmICMgSU9NTVVfU1VQUE9SVAo+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9pb21tdS9NYWtlZmlsZSBiL2RyaXZlcnMvaW9tbXUvTWFrZWZpbGUKPj4g
aW5kZXggMzU1Mjk0ZmE5MDMzLi42OGFlZmYzMWFmOGIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
aW9tbXUvTWFrZWZpbGUKPj4gKysrIGIvZHJpdmVycy9pb21tdS9NYWtlZmlsZQo+PiBAQCAtMzQs
MyArMzQsNCBAQCBvYmotJChDT05GSUdfSU9NTVVfU1ZBKSArPSBpb21tdS1zdmEubwo+PiAgIG9i
ai0kKENPTkZJR19JT01NVV9JT1BGKSArPSBpby1wZ2ZhdWx0Lm8KPj4gICBvYmotJChDT05GSUdf
U1BSRF9JT01NVSkgKz0gc3ByZC1pb21tdS5vCj4+ICAgb2JqLSQoQ09ORklHX0FQUExFX0RBUlQp
ICs9IGFwcGxlLWRhcnQubwo+PiArb2JqLSQoQ09ORklHX1ZTSV9JT01NVSkgKz0gdnNpLWlvbW11
Lm8KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvaW9tbXUvdnNpLWlvbW11LmMgYi9kcml2ZXJzL2lv
bW11L3ZzaS1pb21tdS5jCj4+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4+IGluZGV4IDAwMDAwMDAw
MDAwMC4uZjJmYTExOTc5MTZjCj4+IC0tLSAvZGV2L251bGwKPj4gKysrIGIvZHJpdmVycy9pb21t
dS92c2ktaW9tbXUuYwo+PiBAQCAtMCwwICsxLDkwMCBAQAo+PiArLy8gU1BEWC1MaWNlbnNlLUlk
ZW50aWZpZXI6IEdQTC0yLjAtb25seQo+PiArCj4gTm8gY29weXJpZ2h0IHN0YXRlbWVudD8gKG9y
IGFuIGluZm9ybWF0aW9uYWwgaGVhZGVyIGJsb2NrPykKPgo+IENoZWVycywKPiAgICBEaWVkZXJp
awo+Cj4+ICsjaW5jbHVkZSA8bGludXgvY2xrLmg+Cj4+ICsgPHNuaXA+CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
