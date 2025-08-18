Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 893E3CA0EE4
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Aug 2025 13:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WDxowa1DdL7y9nNRluKO6NE1Km13McdyUjFZYi7+mDA=; b=rKvurlf34Bk5OF
	OcgT91J4m2POiXu5gfF6MZ3hq/9l3GSAm9t3Dxm3nPCLEJwU7ZlY48SyKrjMSkPHBgR+ut/OkR/vI
	L/rO6GusbqqDDWO5kiZqgq+CcYAaqUXc2LE1Y/5gRXWgAfrmzZ0FH+Py9UBt7aAVkML0lPiKfvByY
	swIxu8vFs8yDveCdlduwKDGssVKF0HCPcyDnQ16O5U7JLJvt5RCl+kPuJxhlo4xJKEjUeZgGy9ePQ
	b7CPnChkvHG2Rgyn4rLilYVPtqdK/TPQ0vqDMkaMPgx5ua1Etmap8I2k4NVP7c8UjO/jBHxSjuv2w
	qGW9xqU5LTTi5tsAiBFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo03M-00000007UAW-4C0Y;
	Mon, 18 Aug 2025 13:37:37 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1unvCN-00000006wGI-429D;
	Mon, 18 Aug 2025 08:26:37 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1755505586; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=TkJ31jB1dC74/EBx/flkMf5oj39dXFkwhuGHCgNWMHshBoZwvchGHGGaLjonlfPpqgvfLjUrSldiTo2oevGRJV0Lxe4HcEjF5MqnEWAUBqNviLmUMnnyBleq+Tsu1uW/POR83UfsEVEKZ42FucmIKAJK7uka8HXXft2/7JHakF4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1755505586; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=tj2yGevcfo5KIS3N2gQc2IK6xq5EamVZy8KjuhEWC4g=; 
	b=PqLvXOzE7JsmOuiLkeNQpW6C6Ss9RuJxdxmj9VlOs0A1EyuMGiJ9/dNdOD+pwHb9e96QZ3t1QsqjyMlEVyrWOjQMdn9eu4RVi/WX4IPWcCN2X9Plb5eglP6XF07IoLEqOH+fhPvaS4EpcMSHMccPcGkinXnAZGF1yyfiQ4noLRk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1755505586;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=tj2yGevcfo5KIS3N2gQc2IK6xq5EamVZy8KjuhEWC4g=;
	b=UdZmtK5LGeSmkPXn3snFHzL0cEnDQv2TqrktxrtgQhUDAVyuoZYSchXasjg6Z5+e
	NClvxAnPJEmnI5f3CqlQxKGBH6QzG4VI0aRtiD64hpcuAAWZxMUiq9sxUiDlFanjmFH
	MIcPnxrtFGCBnWSho07TqHbBltep/zVYUH1aYLJA=
Received: by mx.zohomail.com with SMTPS id 1755505583162870.9854534398668;
	Mon, 18 Aug 2025 01:26:23 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Jonas Karlman <jonas@kwiboo.se>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Alex Bee <knaerzche@gmail.com>, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/7] media: rkvdec: Add HEVC backend
Date: Mon, 18 Aug 2025 04:25:58 -0400
Message-ID: <6183937.lOV4Wx5bFT@earth>
In-Reply-To: <d7446ed8-4af1-475f-88e0-07025c60d0b1@kwiboo.se>
References: <20250810212454.3237486-1-jonas@kwiboo.se> <13998356.uLZWGnKmhe@earth>
 <d7446ed8-4af1-475f-88e0-07025c60d0b1@kwiboo.se>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_012636_072644_087B4670 
X-CRM114-Status: GOOD (  39.87  )
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

SGkgSm9uYXMsCgpPbiBTdW5kYXksIDE3IEF1Z3VzdCAyMDI1IDEyOjM5OjAxIEVEVCBKb25hcyBL
YXJsbWFuIHdyb3RlOgo+IEhpIERldGxldiwKPiAKPiBPbiA4LzEyLzIwMjUgOTo1NCBQTSwgRGV0
bGV2IENhc2Fub3ZhIHdyb3RlOgo+ID4gT24gVHVlc2RheSwgMTIgQXVndXN0IDIwMjUgMDk6MDc6
MzMgRURUIE5pY29sYXMgRHVmcmVzbmUgd3JvdGU6Cj4gPj4gTGUgbWFyZGkgMTIgYW/Du3QgMjAy
NSDDoCAwMjo1OCArMDIwMCwgSm9uYXMgS2FybG1hbiBhIMOpY3JpdCA6Cj4gPj4+IEhpIE5pY29s
YXMsCj4gPj4+IAo+ID4+PiBPbiA4LzExLzIwMjUgMTE6MDcgUE0sIE5pY29sYXMgRHVmcmVzbmUg
d3JvdGU6Cj4gPj4+PiBGaXJzdCBwYXNzIG9mIHJldmlldywKPiA+Pj4+IAo+ID4+Pj4gVGhlcmUg
aXMgb2J2aW91cyBjb25mbGljdCBiZXR3ZWVuIERldGxldiBSSzMzODgvMzU3NiBzZXJpZXMsIHBs
ZWFzZQo+ID4+Pj4gY29vcmRpbmF0ZS4gQnkgcGlja2luZyB0aGUgc2FtZSBkaXJlY3Rpb24sIHRo
ZSBjb21tb24gY29kZSBjYW4gYmUgc3BsaXQKPiA+Pj4+IGZyb20gcGxhdGZvcm0gY29kZSwgYW5k
IHRoZW4gYm90aCBzZXRzIGNhbiBzaGFyZSB0aGF0IGNvbW1vbiBjb2RlIGFuZAo+ID4+Pj4gYXZv
aWQgY29uZmxpY3RzLj4KPiA+Pj4gCj4gPj4+IFllcywgaXQgaXMgdmVyeSB1bmZvcnR1bmF0ZSB0
aGF0IERldGxldiBkaWQgbm90IGJhc2UgdGhlIHdvcmsgb24gdjEgb2YKPiA+Pj4gdGhpcyBzZXJp
ZXMsIHRoaXMgaGFzIGJlZW4gc2l0dGluZyBpZGxlIG9uIHRoZSBsaXN0IGZvciBhbG1vc3QgMiB5
ZWFycwo+ID4+PiBvbmx5IHdhaXRpbmcgb24gaXRzIGRlcGVuZGVudCBIMjY0IEhpZ2gxMC80OjI6
MiBzZXJpZXMgdG8gYmUgbWVyZ2VkLgo+ID4+PiAKPiA+Pj4gTW9zdCBmZWVkYmFjayBmb3IgdjEg
d2FzIHJlbGF0ZWQgdG8gdW5zdGFnaW5nIGFuZCB0aGUgc2VyaWVzIGNvdWxkIGJlCj4gPj4+IGFw
cGxpZWQgY2xlYW4gdW50aWwgaW9tbXUgZGV0YWNoL2F0dGFjaCB3YXMgaW50cm9kdWNlZCB2ZXJ5
IHJlY2VudGx5Lgo+ID4+PiAKPiA+Pj4gVGhpcyBzZXJpZXMgaGFzIGFsc28gYmVlbiByZWZlcmVu
Y2VkIGluIG11bHRpcGxlIHRocmVhZHMgcmVsYXRlZCB0bwo+ID4+PiBya3ZkZWMyIHdvcmssIG1v
c3QgcmVjZW50IGF0IFsxXS4gVW5mb3J0dW5hdGVseSwgSSBoYXZlIG1pc3NlZCBib3RoIHYxCj4g
Pj4+IGFuZCB2MiBvZiBEZXRsZXYncyBuZXcgcmt2ZGVjMiBzZXJpZXMsIGFuZCB3YXMgbm90IGFi
bGUgdG8gc2VuZCBhIHYyIG9mCj4gPj4+IHRoaXMgdW50aWwgbm93IGR1ZSB0byBmYW1pbHkgdHJh
Z2VkeS4KPiA+Pj4gCj4gPj4+IEkgd2lsbCB0YWtlIGEgY2xvc2VyIGxvb2sgYXQgRGV0bGV2J3Mg
bmV3IHJrdmRlYzIgc2VyaWVzIGFuZCBzZWUgd2hhdCBJCj4gPj4+IGNhbiBkbyBpbiBhIHYzIHRv
IGVhc2UgYW55IG1lcmdlIGNvbmZsaWN0cy4KPiA+PiAKPiA+PiBBbGwgaW4gYWxsLCBJJ2QgbGlr
ZSB0byBoYXZlIGJvdGggb2YgdGhlc2Ugc2VyaWVzIHJlYWR5IGZvciA2LjE4LiBUbwo+ID4+IGF2
b2lkCj4gPj4gdGhlIG5lZWQgZm9yIGRlcGVuZGFudCBzZXJpZXMsIEkgY2FuIHBpY2sgdG9wIHBh
dGNoZXMgaWYgdGhlIHByZXBhcmF0aW9uCj4gPj4gaXMKPiA+PiBwcm9wZXJseSBzcGxpdCBmcm9t
IHRoZSBwbGF0Zm9ybSBzcGVjaWZpYyBjb2RlLiBQbGVhc2UgbWFrZSB5b3UKPiA+PiByZWNvbW1l
bmRhdGlvbi4KPiA+PiAKPiA+PiBNeSBtYWluIGNvbmNlcm4gYXQgdGhlIG1vbWVudCBpcyB0aGUg
YmFjayBhbmQgZm9ydGggZnJvbSByZWdpc3RlciB0bwo+ID4+IHN0cnVjdHVyZSwgRGV0bGV2IGFs
cmVhZHkgcG9ydGVkIGV2ZXJ5dGhpbmcgZWxzZSB0byBzdHJ1Y3R1cmVzLCBzbwo+ID4+IHBvcnRp
bmcKPiA+PiBhIHNpbmdsZSBjb2RlYyBmb3IgYSBzaW5nbGUgU29DIHNlZW1zIGxpa2UgdGhlIGxl
YXN0IGFtb3VudCBvZiB3b3JrLiBJJ2QKPiA+PiBsaWtlIHRvIGVhciBpZiBhbnkgb2YgeW91IHdv
dWxkIGJlIHdpbGxpbmcgdG8gY29udmVydCBpdC4gVGhpcyB3YXkgSSBjYW4KPiA+PiBsYW5kIHRo
ZSBjb252ZXJzaW9uIGVhcmx5LCBhbmQgd2UgcmVtb3ZlIG9uZSBtYXNzaXZlIGNsYXNoIGJldHdl
ZW4gdGhlCj4gPj4gdHdvCj4gPj4gc2V0cy4KPiA+IAo+ID4gVGhlIGNvbnZlcnNpb24gd29uJ3Qg
YmUgdG9vIGRpZmZpY3VsdCB0byBtYW5hZ2UsIEkgY2FuIGRvIGl0IGFzIEkgZGlkIGZvcgo+ID4g
aDI2NCBhbmQgYWRkIHRoYXQgdG8gbXkgc2VyaWUgb3ZlciB0aGlzIG9uZS4KPiAKPiBUaGFua3Ms
IEkgdmVyeSBtdWNoIGFwcHJlY2lhdGUgdGhhdCEsIEkgd29uJ3QgaGF2ZSB0aW1lIHRvIGxvb2sg
aW50byBhCj4gY29udmVyc2lvbiB1bnRpbCBhdCBlYXJsaWVzdCBuZXh0IHdlZWtlbmQuCgpJIHB1
c2hlZCBhIGJyYW5jaCB3aXRoIG15IHNlcmllcyByZWJhc2VkIG9uIHlvdXJzWzFdLiBJdCBwb3J0
cyB0aGUgaGV2YyBjb2RlIAp0byB1c2luZyBzdHJ1Y3RzIChmb3IgcmVnaXN0ZXJzKS4KQWxzbyBt
b3ZlIHRoZSBjYWJhYyB0YWJsZSBhbmQgY29tbW9uIGhldmMgZnVuY3Rpb25zLgoKUmVwb3J0cyBp
bmRpY2F0ZSB0aGF0IGFsbCB3b3JrcyB3ZWxsIDopCgo+ID4gQXMgbXkgc2VyaWVzIGlzIGFscmVh
ZHkgZG9pbmcgYSBjb252ZXJzaW9uLCBJJ20gbm90IGFnYWluc3Qga2VlcGluZyB0aGlzCj4gPiBv
bmUgd2l0aG91dCBzdHJ1Y3RzIGFuZCBzaW1wbHkgZG8gdGhlIGNvbnZlcnNpb24gbGF0ZXIsIGV2
ZW4gaWYgdGhhdAo+ID4gbWVhbnMgbWVyZ2luZyBjb2RlIHdlIGtub3cgd2lsbCBjaGFuZ2UgbGF0
ZXIuCj4gPiAKPiA+IEknZCBhbHNvIGxpa2UgdG8gbWVudGlvbiB0aGF0IGN1cnJlbnRseSwgbXkg
c2VyaWUgY2hhbmdlcyB0aGUgd3JpdGVsIHRvCj4gPiBzdHJ1Y3RzIG9ubHkgZm9yIHRoZSByZWdp
c3RlcnMsIG5vdCBmb3IgUFBTIGFuZCBTUFMuCj4gPiBTbyBJIGRvbid0IG1pbmQga2VlcGluZyB0
aGF0IHBhcnQgYXMgaXMgZm9yIHJrdmRlYy1oZXZjLgo+ID4gCj4gPiBGb3IgdGhlIHZhcmlhbnRz
IHN1cHBvcnQsIEkgY2FuIGFsc28gbWVyZ2UgaW4gbXkgY2hhbmdlczogbXkgcmt2ZGVjX2NvbmZp
Zwo+ID4gd291bGQganVzdCBiZWNvbWUgYW4gZXh0ZW50aW9uIHlvdXIgcmt2ZGVjX3ZhcmlhbnQu
Cj4gPiAKPiA+IEZpbmFsbHksIHRoaXMgc2VyaWVzIGhhcyBiZWVuIGhlcmUgZm9yIGxvbmdlciB0
aGFuIG1pbmUsIHNvIGl0J3Mgb25seSBmYWlyCj4gPiB0byBoYXZlIG1lIHJlYmFzZSBtaW5lLCBl
c3BlY2lhbGx5IGJlY2F1c2UgaXQgbWVhbnMgZG9pbmcgYSBiaXQgbW9yZSBvZgo+ID4gd2hhdCBJ
IGFscmVhZHkgZGlkLgo+IAo+IEdyZWF0LCBJIHdpbGwgdHJ5IHRvIGdldCBhIHYzIG91dCBpbiBu
ZXh0IGZldyBkYXlzIGFmdGVyIGFkZHJlc3Npbmcgc29tZQo+IG9mIHRoZSBmZWVkYmFjay4KCkkg
d2lsbCByZWJhc2Ugb24geW91ciB2MyBhbmQgc2VuZCBteSB2MyB3aGVuIHRoaXMgb25lIGlzIGFj
Y2VwdGVkLgoKClsxXTogaHR0cHM6Ly9naXRsYWIuY29sbGFib3JhLmNvbS9kZXRsZXYvbGludXgv
LS9jb21taXRzL2FkZC12ZHB1MzgxLWFuZC0zODMtdG8tcmt2ZGVjLXYzClJlZ2FyZHMsCkRldGxl
di4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
