Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8ED35C83F1D
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 09:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pNXW0ejS7lSCHtT/126nX4WSEtsKwkNcW/r852f8+t4=; b=y/6IFkTyCvgO/o
	7EHI/329v+mi4PIkAc+/RMBI1IMhUK0XYH9btsg16B5Tp2UOw8SdZ35Vly9cIq/FSHHDvEH043a/R
	he9sziV7aWULpl59FtHzEAK0qSf8rjyniEc2QyRtt6cL+kDjtL3A6Al1xpMKvwdwCpGBJ7hqodaaV
	LkIyERBEmFzlaCniSO1rtrktpKY9FeTCAih/5Tm2UOYlAvnqBL5OqTVVIEQZO/WBFDwh/W3VwfX/k
	NcnDCpNZhg1ZjlFtBVRi5+dvkLxy36bmdAqTdc0Zz4TnAVYK2QQuNEhgIKSAZpTy3HMHI0/RiyIcd
	IsFFYZc4S9wDN4otOerA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZnyB-0000000BOXG-2EhT;
	Thu, 10 Jul 2025 09:53:35 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZmcH-0000000BAU5-0rQP;
	Thu, 10 Jul 2025 08:26:54 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1752135991; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=UIVN/T8EgEA8ZWRjjnBLTVntc+IxhfMD6aHGUKeTQA/zAkWRha78G3UIhtJBF//0ZfU3UWy6WaTFa4uTCQU7+GQz42g5/fWmVMb0jC0f7Y1nsnOQkT6rZ6jJKnxJqdC49jJH0yKPlK9Xg9X1Zw4bPy0BlZLkUkWbbWA1frJS6QU=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1752135991; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=E84MMCBx0xpgoES+NnhMP12vSRnynaQmVJ5b2UIKw+U=; 
	b=JNywPzIAPiI4UaBnIxo40F7/q6agriArIReObqRi0c8C9xz8hej1juBMEARZ4TcOcJSt5OShK4lFRoDjol74+qfMS4ljVFNcxJCGsfy5WMnOjcDoXPlBD3qPc5xGi8Qbf43habnd6zlVucM+pPmE70MWnBKDej459OMr7XmA89k=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1752135991;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=E84MMCBx0xpgoES+NnhMP12vSRnynaQmVJ5b2UIKw+U=;
	b=SxXMR1Oij/dhJgr72YZNsBIf4bcHJllEF32lheb7Utsm0k/TWQ3ktodpS6VK9SXf
	mvpvDjhX4Jawd8e++ylmEVlybocCRm6Erb3iu3aTeM0YB8sOMlF9HhldjWbAW+5xFTy
	Tip3nmb/EOq2mFGzBYGMFm5qVzWLnphv2pFm/LS4=
Received: by mx.zohomail.com with SMTPS id 1752135988944558.2751903621047;
	Thu, 10 Jul 2025 01:26:28 -0700 (PDT)
Message-ID: <2759380e-51a5-4437-8caa-0039ccd79559@collabora.com>
Date: Thu, 10 Jul 2025 10:26:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/5] iommu: Add verisilicon IOMMU driver
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 nicolas.dufresne@collabora.com, iommu@lists.linux.dev,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
References: <20250709085337.53697-1-benjamin.gaignard@collabora.com>
 <20250709085337.53697-4-benjamin.gaignard@collabora.com>
 <20250709164533.GA1759573@ziepe.ca>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20250709164533.GA1759573@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_012653_302863_FC2C6BD2 
X-CRM114-Status: GOOD (  18.44  )
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

CkxlIDA5LzA3LzIwMjUgw6AgMTg6NDUsIEphc29uIEd1bnRob3JwZSBhIMOpY3JpdMKgOgo+IE9u
IFdlZCwgSnVsIDA5LCAyMDI1IGF0IDEwOjUzOjI4QU0gKzAyMDAsIEJlbmphbWluIEdhaWduYXJk
IHdyb3RlOgo+PiArc3RhdGljIGludCB2c2lfaW9tbXVfYXR0YWNoX2RldmljZShzdHJ1Y3QgaW9t
bXVfZG9tYWluICpkb21haW4sCj4+ICsJCQkJICAgc3RydWN0IGRldmljZSAqZGV2KQo+PiArewo+
PiArCXN0cnVjdCB2c2lfaW9tbXUgKmlvbW11ID0gZGV2X2lvbW11X3ByaXZfZ2V0KGRldik7Cj4+
ICsJc3RydWN0IHZzaV9pb21tdV9kb21haW4gKnZzaV9kb21haW4gPSB0b192c2lfZG9tYWluKGRv
bWFpbik7Cj4+ICsJdW5zaWduZWQgbG9uZyBmbGFnczsKPj4gKwlpbnQgcmV0ID0gMDsKPj4gKwo+
PiArCXJldCA9IHBtX3J1bnRpbWVfcmVzdW1lX2FuZF9nZXQoaW9tbXUtPmRldik7Cj4+ICsJaWYg
KHJldCA8IDApCj4+ICsJCXJldHVybiByZXQ7Cj4+ICsKPj4gKwlzcGluX2xvY2tfaXJxc2F2ZSgm
aW9tbXUtPmxvY2ssIGZsYWdzKTsKPj4gKwkvKiBpb21tdSBhbHJlYWR5IGF0dGFjaGVkICovCj4+
ICsJaWYgKGlvbW11LT5kb21haW4gPT0gZG9tYWluKQo+PiArCQlnb3RvIHVubG9jazsKPj4gKwo+
PiArCXZzaV9pb21tdV9lbmFibGUoaW9tbXUsIGRvbWFpbik7Cj4+ICsJbGlzdF9hZGRfdGFpbCgm
aW9tbXUtPm5vZGUsICZ2c2lfZG9tYWluLT5pb21tdXMpOwo+PiArCWlvbW11LT5kb21haW4gPSBk
b21haW47Cj4+ICsKPj4gK3VubG9jazoKPj4gKwlzcGluX3VubG9ja19pcnFyZXN0b3JlKCZpb21t
dS0+bG9jaywgZmxhZ3MpOwo+PiArCXBtX3J1bnRpbWVfcHV0X2F1dG9zdXNwZW5kKGlvbW11LT5k
ZXYpOwo+PiArCXJldHVybiByZXQ7Cj4gSSB0aG91Z2h0IHRoaXMgd2FzIG1lbnRpb25lZCBiZWZv
cmUsIGJ1dCB0aGlzIGRvZXNuJ3QgaGFuZGxlCj4gYXR0YWNoX2RldmljZSBiZWluZyBjYWxsZWQg
dHdpY2Ugd2l0aG91dCBhbiBpZGVudGl0eSBhdHRhY2ggaW4KPiBiZXR3ZWVuLgo+Cj4gQW5kIG5v
dyB0aGUgbmV3IGxvY2tpbmcgZG9lc24ndCBwcm90ZWN0IGNvbmN1cnJlbnQgaW52YWxpZGF0aW9u
IHJhY2VzLAo+IHRoZSBsb2NrIGlzIGluIHRoZSB3cm9uZyBwbGFjZS4KPgo+IGhvbGQgdGhlIGRv
bWFpbiBsb2NrIGFjcm9zcyB0aGUgd2hvbGUgc2VxdWVuY2UgdG8gaG9sZCBvZmYgYW55Cj4gaW52
YWxpZGF0aW9uIHVudGlsIHRoZSBsaW5rZWQgbGlzdCBpcyBjb25zaXN0ZW50IHdpdGggdGhlIEhX
Cj4gcHJvZ3JhbW1pbmc6Cj4KPiAgIHNwaW5fbG9ja19pcnFzYXZlKCZ2c2lfZG9tYWluLT5sb2Nr
LCBmbGFnczIpOyAvLyBQcmV2ZW50IGludmFsaWRhdGlvbgo+Cj4gICB2c2lfaW9tbXVfZW5hYmxl
KGlvbW11LCBkb21haW4pOwo+ICAgbGlzdF9kZWwoJmlvbW11LT5ub2RlKTsKPiAgIGxpc3RfYWRk
X3RhaWwoJmlvbW11LT5ub2RlLCAmdnNpX2RvbWFpbi0+aW9tbXVzKTsKPgo+ICAgc3Bpbl91bmxv
Y2tfaXJxcmVzdG9yZSgmdnNpX2RvbWFpbi0+bG9jaywgZmxhZ3MpOwo+Cj4gVGhlbiByZW1vdmUg
dGhpczoKPgo+ICAgKwkvKiBpb21tdSBhbHJlYWR5IGF0dGFjaGVkICovCj4gICArCWlmIChpb21t
dS0+ZG9tYWluID09IGRvbWFpbikKPiAgICsJCWdvdG8gdW5sb2NrOwo+Cj4gU2luY2UgdGhlIGZp
eCBhYm92ZSBtYWtlcyBpdCBzYWZlIHJlZ2FyZGxlc3MuCj4KPiBBbmQsIGFsc28gZmVlbHMgbGlr
ZSBhZ2FpbiwgYnV0IHZzaV9pb21tdV9lbmFibGUoKSBuZWVkcyB0byBmdWxseQo+IGZsdXNoIHRo
ZSBjYWNoZSBzaW5jZSB0aGUgdHJhbnNsYXRpb24gaXMgYmVpbmcgY2hhbmdlZCwgc2hvdWxkbid0
Cj4gdGhlcmUgYWxzbyBiZSB3cml0ZXMgdG8gVlNJX01NVV9GTFVTSF9CQVNFID8KPgo+IE90aGVy
d2lzZSB0aGUgbG9ja2luZyBjaGFuZ2UgbG9va3MgT0sgYW5kIEkgZG9uJ3QgaGF2ZSBvdGhlciBj
b21tZW50cy4KCkkgaGF2ZSBmaXggdGhhdCBpbiB2Ni4KClRoYW5rcyBhIGxvdCBmb3IgeW91ciBy
ZXZpZXcuCgpCZW5qYW1pbgoKPgo+IEphc29uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
