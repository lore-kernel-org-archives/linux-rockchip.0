Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 541E0C4452E
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jan 2026 13:50:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kazuVp5ovKIQaiCWFWETO4+do1reNzG1uIZLiar0t9k=; b=oitrU7/6QRziki
	eAnAAIVOFbpSu5TsEsFUsm/qjPixRNbWIfc+OxeCqSC1ZE6B/duj47CnYJfyj6ZFBAJUqQO4JH00/
	tONKwj2B3CS32mAC2CMF0QgjTnjnUowFOq1P0hD24OtW5ChUo15Q1r18kRCby2qrzWX8PvgOfjtKB
	7SOR7+42srEsA5tLvRuHla+nIr5wt5viCOiDqgIPdXWzNMzF7te8o9UeE52koOHadq60Pvv7CILK4
	QxFY3oz7+9QQhnYACtOvFJXQTjZ2T3R7DfaGam0RdAwPRm6O/qGC+H9Lfw8YCAZ2UPIKNAb4LWWJY
	FZjBI1LJYG5PPnFWXdMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viYbb-00000005YCo-0Jr2;
	Wed, 21 Jan 2026 13:50:43 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viYbX-00000005YBx-30Y1;
	Wed, 21 Jan 2026 13:50:41 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1769003425; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=oMD3DvxuLuEzLSKEQ+n7wJ4m/xJbJL42ySs6VOCov2+etqD4CgyPmKR8dkzx4g41ouAyqQO62NoJmbCaOtROJc7sd0f6R40oSBIx78qL6ybgkLBuv2rDFMaO/5EhdG55m8UuI97tr7tzCiQJSiJ39lWOQviRPlrDP3vbU1zyLJM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1769003425; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=9j0aEnPsFf4ht23DVuEjYMMqdJpKWzWkgwC3q2GqT3A=; 
	b=AbgOsVL6Ef6WBq9f5iily7oU2CPu1sGMgiO0qjOsCI5xkur+8tRusuPAKEHZUEZ3V2aO1UJnSxkwDDRRNxoSiDYCwg7T835rgSWb67ZqHx9iJM1AxWy6Cv+DWVpo8cmOYYzFz3NM0AiKfr7u4ZoWj6luSFuJlyp8HjLuMnUGV10=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1769003425;
	s=zohomail; d=collabora.com; i=benjamin.gaignard@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=9j0aEnPsFf4ht23DVuEjYMMqdJpKWzWkgwC3q2GqT3A=;
	b=FgHTyAymulI5Ru9lYKyZMIbtyQLW1up5yzp5g/XMCPX5Snig5KqTiaTFvUb2GMG7
	AWA2tt6krbxfxurKZ0M2qTryuy+IwA/fgwMmdmw+uDE94mfzKFW4cGkVOfXbRGgfVsh
	qlJrHcSEgf5HEUGrk7+QkMbz0DL7z037nqsloBQM=
Received: by mx.zohomail.com with SMTPS id 1769003423843237.2758502026851;
	Wed, 21 Jan 2026 05:50:23 -0800 (PST)
Message-ID: <4b33b50f-f0c3-4db8-b394-dd2d4d6e3a55@collabora.com>
Date: Wed, 21 Jan 2026 14:50:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v11 3/7] iommu: Add verisilicon IOMMU driver
To: Will Deacon <will@kernel.org>
Cc: joro@8bytes.org, robin.murphy@arm.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de,
 nicolas.dufresne@collabora.com, p.zabel@pengutronix.de, mchehab@kernel.org,
 iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 kernel@collabora.com
References: <20260107101005.84039-1-benjamin.gaignard@collabora.com>
 <20260107101005.84039-4-benjamin.gaignard@collabora.com>
 <aWZui-rn5RDPwpEO@willie-the-truck>
 <68a49f8b-178c-4fa2-b4a9-315ad602271d@collabora.com>
 <aWeTQ50DOtntcniN@willie-the-truck>
 <db0950f1-b357-47c2-9829-e33262ab456d@collabora.com>
 <aW4kb5EbxbrhTOxK@willie-the-truck>
 <b8f43fe8-3e07-4d98-a50d-817c31370710@collabora.com>
 <aXDL2JH_4RCDmAJv@willie-the-truck>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <aXDL2JH_4RCDmAJv@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_055039_778476_5CD1FAD8 
X-CRM114-Status: GOOD (  22.18  )
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

CkxlIDIxLzAxLzIwMjYgw6AgMTM6NTEsIFdpbGwgRGVhY29uIGEgw6ljcml0wqA6Cj4gT24gTW9u
LCBKYW4gMTksIDIwMjYgYXQgMDM6MDM6NDRQTSArMDEwMCwgQmVuamFtaW4gR2FpZ25hcmQgd3Jv
dGU6Cj4+Pj4+Pj4+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGlvbW11X29wcyB2c2lfaW9tbXVfb3Bz
ID0gewo+Pj4+Pj4+PiArCS5pZGVudGl0eV9kb21haW4gPSAmdnNpX2lkZW50aXR5X2RvbWFpbiwK
Pj4+Pj4+Pj4gKwkucmVsZWFzZV9kb21haW4gPSAmdnNpX2lkZW50aXR5X2RvbWFpbiwKPj4+Pj4+
Pj4gKwkuZG9tYWluX2FsbG9jX3BhZ2luZyA9IHZzaV9pb21tdV9kb21haW5fYWxsb2NfcGFnaW5n
LAo+Pj4+Pj4+PiArCS5vZl94bGF0ZSA9IHZzaV9pb21tdV9vZl94bGF0ZSwKPj4+Pj4+Pj4gKwku
cHJvYmVfZGV2aWNlID0gdnNpX2lvbW11X3Byb2JlX2RldmljZSwKPj4+Pj4+Pj4gKwkucmVsZWFz
ZV9kZXZpY2UgPSB2c2lfaW9tbXVfcmVsZWFzZV9kZXZpY2UsCj4+Pj4+Pj4+ICsJLmRldmljZV9n
cm91cCA9IGdlbmVyaWNfc2luZ2xlX2RldmljZV9ncm91cCwKPj4+Pj4+Pj4gKwkub3duZXIgPSBU
SElTX01PRFVMRSwKPj4+Pj4+Pj4gKwkuZGVmYXVsdF9kb21haW5fb3BzID0gJihjb25zdCBzdHJ1
Y3QgaW9tbXVfZG9tYWluX29wcykgewo+Pj4+Pj4+PiArCQkuYXR0YWNoX2RldgkJPSB2c2lfaW9t
bXVfYXR0YWNoX2RldmljZSwKPj4+Pj4+Pj4gKwkJLm1hcF9wYWdlcwkJPSB2c2lfaW9tbXVfbWFw
LAo+Pj4+Pj4+PiArCQkudW5tYXBfcGFnZXMJCT0gdnNpX2lvbW11X3VubWFwLAo+Pj4+Pj4+PiAr
CQkuZmx1c2hfaW90bGJfYWxsCT0gdnNpX2lvbW11X2ZsdXNoX3RsYl9hbGwsCj4+Pj4+Pj4gVGhp
cyBoYXMgbm8gY2FsbGVycyBhbmQgc28geW91ciB1bm1hcCByb3V0aW5lIGFwcGVhcnMgdG8gYmUg
YnJva2VuLgo+Pj4+Pj4gSXQgaXMgYSBsZWZ0b3ZlciBvZiBwcmV2aW91cyBhdHRlbXB0IHRvIGFs
bG93IHZpZGVvIGRlY29kZXIgdG8gY2xlYW4vZmx1c2gKPj4+Pj4+IHRoZSBpb21tdSBieSB1c2lu
ZyBhIGZ1bmN0aW9uIGZyb20gdGhlIEFQSS4KPj4+Pj4+IE5vdyBpdCBpcyB1c2luZyB2c2lfaW9t
bXVfcmVzdG9yZV9jdHgoKS4KPj4+Pj4+IEkgd2hpbGUgcmVtb3ZlIGl0IGluIHZlcnNpb24gMTIu
Cj4+Pj4+IERvbid0IHlvdSBzdGlsbCBuZWVkIHNvbWUgaW52YWxpZGF0aW9uIG9uIHRoZSB1bm1h
cCBwYXRoPwo+Pj4+IEluIHZzaV9pb21tdV91bm1hcF9pb3ZhKCkgcGFnZSBpcyBpbnZhbGlkZWQg
YnkgY2FsbGluZyB2c2lfbWtfcHRlX2ludmFsaWQoKS4KPj4+IEJ1dCB0aGF0IGp1c3Qgd3JpdGVz
IGFuIGludmFsaWQgZGVzY3JpcHRvciBhbmQgZG9lc24ndCBhcHBlYXIgdG8gaW52YWxpZGF0ZQo+
Pj4gdGhlIFRMQiBhdCBhbGwuCj4+Pgo+Pj4+IFRoYXQgY2xlYXIgQklUKDApIHNvIHRoZSBoYXJk
d2FyZSBrbm93cyB0aGUgcGFnZSBpcyBpbnZhbGlkLgo+Pj4+IERvIEkgaGF2ZSBtaXNzIHNvbWV0
aGluZyBoZXJlID8KPj4+IFllcywgdGhlIFRMQiBzdHJ1Y3R1cmUgbmVlZHMgdG8gYmUgaW52YWxp
ZGF0ZWQgc28gdGhhdCB0aGUgcGFnZS10YWJsZQo+Pj4gd2Fsa2VyIHNlZXMgdGhlIG5ldyB2YWx1
ZSB0aGF0IHlvdSBoYXZlIHdyaXR0ZW4gaW4gbWVtb3J5Lgo+Pj4KPj4+IFRoZSByb2NrY2hpcCBk
cml2ZXIgZ2V0cyB0aGlzIGNvcnJlY3QuLi4KPj4gUm9ja2NoaXAgaGFyZHdhcmUgaGF2ZSBhIFpB
UF9PTkVfTElORSByZWdpc3RlciB3aGljaCBkaWRuJ3QgZXhpc3Qgb24gVmVyaXNpbGljb24KPj4g
aGFyZHdhcmUuCj4gUHJlc3VtYWJseSB5b3UgaGF2ZSBzb21lIHNvcnQgb2YgVmVyaXNpbGljb24g
ZGF0YXNoZWV0IG9yIGRvd25zdHJlYW0gZHJpdmVyCj4gZnJvbSB3aGljaCB5b3UgY2FuIGluZmVy
IHRoZSBUTEIgaW52YWxpZGF0aW9uIHJ1bmVzPwoKSSBoYXZlIG9ubHkgdGhpcyBkb3duc3RyZWFt
IGRyaXZlcjoKaHR0cHM6Ly9naXRodWIuY29tL3JvY2tjaGlwLWxpbnV4L2tlcm5lbC9ibG9iL2Rl
dmVsb3AtNi4xL2RyaXZlcnMvaW9tbXUvcm9ja2NoaXAtaW9tbXUtYXYxZC5jCk5vIGRhdGFzaGVl
dC4uLgoKPgo+PiBJIGhhdmUgdHJpZWQgdG8gdXNlIFZTSV9NTVVfQklUX0ZMVVNIIG9uIFZTSSBk
cml2ZXIgYWZ0ZXIgdW5tYXBwaW5nIGlvdmEKPj4gYnV0IGl0IGRvZXNuJ3Qgd29yay4KPiBXaGF0
IGRvIHlvdSBtZWFuIGJ5ICJkb2Vzbid0IHdvcmsiPyBJZiBpdCB3b3JrcyB3aXRob3V0IGRvaW5n
IGFueQo+IGludmFsaWRhdGlvbiBhdCBhbGwsIHRoZW4gaXQncyB2ZXJ5IHBlY3VsaWFyIHRoYXQg
YWRkaW5nIHRoZSBpbnZhbGlkYXRpb24KPiB3b3VsZCBpbnRyb2R1Y2UgaXNzdWVzLgoKSSBtZWFu
IFZTSV9NTVVfQklUX0ZMVVNIIHJlZ2lzdGVyIGNhbid0IGJlIHVzZWQgdG8gaW52YWxpZCB0aGUg
VExCLgpJIHRoaW5rIHRoZSBoYXJkd2FyZSBpdGVyYXRlcyBvdmVyIHRoZSBwYWdlcyB0YWJsZXMg
aW4gbWVtb3J5IGFuZApjaGVjayB0aGUgdmFsaWQvaW52YWxpZCBiaXQuCgpCZW5qYW1pbgoKPgo+
PiBTbyBmYXIgY2FsbGluZyBkbWFfc3luY19zaW5nbGVfZm9yX2RldmljZSgpIHNlZW1zIHRvIGJl
IGVub3VnaCB0byBtYWtlIGlvbW11Cj4+IGFuZCB2aWRlbyBkZWNvZGVyIHdvcmsgdG9nZXRoZXIu
Cj4gSSBkb24ndCB0aGluayB3ZSBzaG91bGQgc2V0dGxlIGZvciAic2VlbXMgdG8gZW5vdWdoIiEg
SWYgd2UgY2FuIHJlYXNvbgo+IGFib3V0IHRoZSBvcGVyYXRpb24gb2YgdGhlIGhhcmR3YXJlIHRo
ZW4gdGhlIGRyaXZlciB3aWxsIGJlIHVuZGVidWdnYWJsZQo+IHdoZW4gaXQgZXZlbnR1YWxseSBn
b2VzIHdyb25nLgo+Cj4gV2lsbAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
