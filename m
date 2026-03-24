Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E0D56F54ACF
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Mar 2026 16:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IybY0BYB2sE2TUxmShiI+03nj98gZxBk5ozo/gNTHWA=; b=vJxc17ltKYbbMM
	tOzFG6XX4WaiC5QgYH9y2fDKKPNgzZ87ajFI1bWKZeTaON4wZOd0Ua3Yr5FUixFfcf3QwPnhJwdAS
	ft8Mskf4fsU46rDK9slQtlFxBVrJRLpppw+Xxph4Q+E+Yf3ItsT8Dd+GALv/CW2AQ8iiOBUSprazf
	tznvdor01lxMlzBuS/uBo8F2/Aoa6LoCSfn/LXP6GDv2vFzQuyDxGzGDxwiD4ds88kACYARBmQXxt
	KuA6q0wNatCTIZIe3v38vYpaC6LYS/EKgGkfZxBPGtD5cfCKMyl11zql+79o89h7MY7e11mrJljUR
	crq870dSGU+3fxOd8/aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w54cn-00000001t9K-1Wr8;
	Tue, 24 Mar 2026 16:29:01 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w54ck-00000001t8q-0YN6;
	Tue, 24 Mar 2026 16:28:59 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1774369730; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=eI9dMyF9lyTBU47/dNjJX4pYrTLhKGPqdtY8yk6tX5oCIOG4y8LQU+Jizxu15GDLuqrY4uqt2WHUvati3yXIze5uBujqYGwtFBY5H5mHTLvxHm2zWW4fFZ6BDhA9i4bMKiDSsiV2EQe5c+2jbNO0zcqCWfGLVuBX/wvk/vOyep8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1774369730; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=t5X3SqA0NrhU8AeVF5jet7aCXTAzqHe7Enn6xkPUCkU=; 
	b=FxFfhtT6NX1Ud2ZwoYXinAAViGyyojNLA8ssB0d+eFn4Pzwezq1KrBA29ZZljWyPz1GJpa/xtOLRWk2X5ckIfSFNgKTSzfohcI84yQORpBeVr0+Mp7RIbXmNb/vee68LX6S0+8MiV3G1t3ws2N7aG34q+3JSmjFLZUFpaSkEF18=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1774369730;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=t5X3SqA0NrhU8AeVF5jet7aCXTAzqHe7Enn6xkPUCkU=;
	b=ktXrz/zNw7uP6zfATbCvxvk+TSkFH+917YIv5Z8vAOMJP1mD9pejXujIsLd2f/wG
	U9hj/gBTuad5HtS3WfWSZJYkecZNVQZh/fpypDRSoKDwXQswj0oLcxOQb+V+l5bF0qK
	bIUZnFgrHbIgxYKBFxloim2OU3i+5tDxWK2YQUx4=
Received: by mx.zohomail.com with SMTPS id 1774369728573435.9502112379421;
	Tue, 24 Mar 2026 09:28:48 -0700 (PDT)
Message-ID: <e083e933-2746-4b26-ac33-3b32d362b28e@collabora.com>
Date: Tue, 24 Mar 2026 17:28:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 3/6] iommu: Add verisilicon IOMMU driver
To: Will Deacon <will@kernel.org>
Cc: joro@8bytes.org, robin.murphy@arm.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 nicolas.dufresne@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org
References: <20260216095144.107356-1-benjamin.gaignard@collabora.com>
 <20260216095144.107356-4-benjamin.gaignard@collabora.com>
 <acKxzGk1Z541yoZ4@willie-the-truck>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <acKxzGk1Z541yoZ4@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_092858_216138_F3736DBB 
X-CRM114-Status: GOOD (  25.09  )
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

CkxlIDI0LzAzLzIwMjYgw6AgMTY6NDYsIFdpbGwgRGVhY29uIGEgw6ljcml0wqA6Cj4gT24gTW9u
LCBGZWIgMTYsIDIwMjYgYXQgMTA6NTE6MzVBTSArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3Jv
dGU6Cj4+IFRoZSBWZXJpc2lsaWNvbiBJT01NVSBoYXJkd2FyZSBibG9jayBjYW4gYmUgZm91bmQg
aW4gY29tYmluYXRpb24KPj4gd2l0aCBWZXJpc2lsaWNvbiBoYXJkd2FyZSB2aWRlbyBjb2RlY3Mg
KGVuY29kZXJzIG9yIGRlY29kZXJzKSBvbgo+PiBkaWZmZXJlbnQgU29Dcy4KPj4gRW5hYmxlIGl0
IHdpbGwgYWxsb3cgdXMgdG8gdXNlIG5vbiBjb250aWd1b3VzIG1lbW9yeSBhbGxvY2F0b3JzCj4+
IGZvciBWZXJpc2lsaWNvbiB2aWRlbyBjb2RlY3MuCj4+IElmIGJvdGggZGVjb2RlciBhbmQgdGhp
cyBpb21tdSBkcml2ZXIgYXJlIGNvbXBpbGVkIGhhcyBtb2R1bGVzCj4+IHRoZXJlIGlzIHVuZGVm
aW5lZCBzeW1ib2xlcyBpc3N1ZXMgc28gdGhpcyBpb21tdSBkcml2ZXIgY291bGQKPj4gb25seSBi
ZSBjb21waWxlZCBoYXMgYnVpbHQtaW4uCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdh
aWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+PiAtLS0KPj4gICBNQUlO
VEFJTkVSUyAgICAgICAgICAgICAgIHwgICA4ICsKPj4gICBkcml2ZXJzL2lvbW11L0tjb25maWcg
ICAgIHwgIDExICsKPj4gICBkcml2ZXJzL2lvbW11L01ha2VmaWxlICAgIHwgICAxICsKPj4gICBk
cml2ZXJzL2lvbW11L3ZzaS1pb21tdS5jIHwgNzk0ICsrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrCj4+ICAgaW5jbHVkZS9saW51eC92c2ktaW9tbXUuaCB8ICAyMSArCj4+ICAg
NSBmaWxlcyBjaGFuZ2VkLCA4MzUgaW5zZXJ0aW9ucygrKQo+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL2lvbW11L3ZzaS1pb21tdS5jCj4+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGluY2x1
ZGUvbGludXgvdnNpLWlvbW11LmgKPiBbLi4uXQo+Cj4+ICtzdGF0aWMgc2l6ZV90IHZzaV9pb21t
dV91bm1hcChzdHJ1Y3QgaW9tbXVfZG9tYWluICpkb21haW4sIHVuc2lnbmVkIGxvbmcgX2lvdmEs
Cj4+ICsJCQkgICAgICBzaXplX3Qgc2l6ZSwgc2l6ZV90IGNvdW50LCBzdHJ1Y3QgaW9tbXVfaW90
bGJfZ2F0aGVyICpnYXRoZXIpCj4+ICt7Cj4+ICsJc3RydWN0IHZzaV9pb21tdV9kb21haW4gKnZz
aV9kb21haW4gPSB0b192c2lfZG9tYWluKGRvbWFpbik7Cj4+ICsJZG1hX2FkZHJfdCBwdGVfZG1h
LCBpb3ZhID0gKGRtYV9hZGRyX3QpX2lvdmE7Cj4+ICsJdW5zaWduZWQgbG9uZyBmbGFnczsKPj4g
KwlwaHlzX2FkZHJfdCBwdF9waHlzOwo+PiArCXUzMiBkdGU7Cj4+ICsJdTMyICpwdGVfYWRkcjsK
Pj4gKwlzaXplX3QgdW5tYXBfc2l6ZSA9IDA7Cj4+ICsKPj4gKwlzcGluX2xvY2tfaXJxc2F2ZSgm
dnNpX2RvbWFpbi0+bG9jaywgZmxhZ3MpOwo+PiArCj4+ICsJZHRlID0gdnNpX2RvbWFpbi0+ZHRb
dnNpX2lvdmFfZHRlX2luZGV4KGlvdmEpXTsKPj4gKwkvKiBKdXN0IHJldHVybiAwIGlmIGlvdmEg
aXMgdW5tYXBwZWQgKi8KPj4gKwlpZiAoIXZzaV9kdGVfaXNfcHRfdmFsaWQoZHRlKSkKPj4gKwkJ
Z290byB1bmxvY2s7Cj4+ICsKPj4gKwlwdF9waHlzID0gdnNpX2R0ZV9wdF9hZGRyZXNzKGR0ZSk7
Cj4+ICsJcHRlX2FkZHIgPSAodTMyICopcGh5c190b192aXJ0KHB0X3BoeXMpICsgdnNpX2lvdmFf
cHRlX2luZGV4KGlvdmEpOwo+PiArCXB0ZV9kbWEgPSBwdF9waHlzICsgdnNpX2lvdmFfcHRlX2lu
ZGV4KGlvdmEpICogc2l6ZW9mKHUzMik7Cj4+ICsJdW5tYXBfc2l6ZSA9IHZzaV9pb21tdV91bm1h
cF9pb3ZhKHZzaV9kb21haW4sIHB0ZV9hZGRyLCBwdGVfZG1hLCBzaXplKTsKPj4gKwo+PiArdW5s
b2NrOgo+PiArCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnZzaV9kb21haW4tPmxvY2ssIGZsYWdz
KTsKPj4gKwo+PiArCXJldHVybiB1bm1hcF9zaXplOwo+PiArfQo+IEkgc3RpbGwgdGhpbmsgeW91
IG5lZWQgVExCIGludmFsaWRhdGlvbiBoZXJlLgo+Cj4gSSBsb29rZWQgYXQgdGhlIGRvd25zdHJl
YW0gY29kZSB0aGF0IHlvdSBsaW5rZWQgdG8gYW5kIGl0IGxpdHRlcnMgdGhlCj4gaW52YWxpZGF0
aW9uIGluIHRoZSBjYWxsZXJzIHZpYSBtcHBfaW9tbXVfZmx1c2hfdGxiKCksIHdoaWNoIHRlbmQg
dG8KPiBpbnZhbGlkYXRlIF9iZWZvcmVfIHN0YXJ0aW5nIGFuIG9wZXJhdGlvbi4gVGhhdCdzIHZl
cnkgbGlrZWx5IGJ1Z2d5IGFuZAo+IGNlcnRhaW5seSBub3Qgc29tZXRoaW5nIHdlIHdhbnQgdXBz
dHJlYW0uCj4KPiBUaGUgdW5tYXAgcm91dGluZSBzaG91bGQgZG8gdGhlIGludmFsaWRhdGlvbiBz
byB0aGF0LCB3aGVuIGl0IHJldHVybnMsCj4gdGhlIHBhZ2VzIHJlYWxseSBhcmUgdW5tYXBwZWQg
ZnJvbSB0aGUgZGV2aWNlIChhc3N1bWluZyBzdHJpY3QgbW9kZSkuCj4KPiBJIGtub3cgeW91IHNh
aWQgdGhhdCB5b3UgdHJpZWQgdG8gYWRkIGludmFsaWRhdGlvbiBoZXJlIGFuZCBpdCAiZGlkbid0
Cj4gd29yayIsIGJ1dCB0aGF0J3Mgbm90IHNvbWV0aGluZyBJIGNhbiByZWFsbHkgaGVscCB5b3Ug
d2l0aC4KCkkga25vdyB5b3UgZXhwZWN0IHRoZSBoYXJkd2FyZSB0byB3b3JrIGxpa2UgdGhhdCBi
dXQgdGhhdCBpc24ndCBub3QgdGhlIGNhc2UuCkkgc3BlbmQgcXVpdGUgbG9uZyB0byB0cnkgdG8g
Zm91bmQgaGlkZGVuIGJpdChzKSBvciBhbiBvdGhlciB3YXkgdG8gZG8gbGlrZQp5b3Ugd2FudCBi
dXQgSSBjYW4ndCBmaW5kIGFueSBzb2x1dGlvbi4KQXMgeW91IG1lbnRpb24gdGhlIGRvd25zdHJl
YW0gY29kZSBzdWdnZXN0IHRoYXQgdGhlIGlvbW11IGNhbid0IGludmFsaWRhdGUKVExCIGluIHVu
bWFwIHJvdXRpbmUgc28gSSBkb24ndCBzZWUgaG93IHRvIHByb2dyZXNzLgpNYXliZSB3ZSBzaG91
bGQganVzdCBhZG1pdCB0aGF0IGlzIGhvdyB0aGUgaGFyZHdhcmUgd29yay4KVGhpcyB2MTMgaGFz
IGZpeGVkIHRoZSBkb2N1bWVudGF0aW9uIHNvIEkgZG9uJ3QgcGxhbiB0byBzcGVuZCBtb3JlIHRp
bWUgb24gdGhpcyBkcml2ZXIuCgpCZW5qYW1pbgoKPgo+IFdpbGwKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
