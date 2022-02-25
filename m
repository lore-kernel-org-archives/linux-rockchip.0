Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23584C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Feb 2022 12:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hdPjlPQwfCyx7tMsmZVw+MU8h+DhK1i+wL119OcDw80=; b=X4H3tS1lu8YOhl
	GL1c1EypGCo/69BtQEi8iLj4Za7rjp5CJnf5tOtlGR7FkZOaTZolGmGTiGb5X6kaqvV3xuMeX5QVF
	v/65Hbc+C2PInd/dPnXIX8d6wzwKVm1njl+1F7TdS07ATfJUH7fgwV78IXkGCUMil/iwE122dlxtM
	kSRh4VwhWzCa7qef7FjGIm99PTuzqsz2L3Tzwv5p/4mMtVKsbKNB3RiBhv74mE+nu5UdewvMB1Qrz
	CL2LlLJPn08B+wsJ8XHTT1KbDL/OsKt6kj75Yt4/oqzjWSZearSWGv/bOG200Z2rkK9uxyKXFHnVx
	2HylvKWvPNQGIDVPIGtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNZut-004sme-AU; Fri, 25 Feb 2022 12:41:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNZud-004shp-WE; Fri, 25 Feb 2022 12:41:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7F785ED1;
 Fri, 25 Feb 2022 04:41:29 -0800 (PST)
Received: from [10.57.39.47] (unknown [10.57.39.47])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AE4753F5A1;
 Fri, 25 Feb 2022 04:41:27 -0800 (PST)
Message-ID: <90c61299-f02c-607b-4734-7134852ef0a6@arm.com>
Date: Fri, 25 Feb 2022 12:41:23 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.1
Subject: Re: [PATCH v7 10/24] drm/rockchip: dw_hdmi: Add support for hclk
Content-Language: en-GB
To: Dmitry Osipenko <digetx@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Peter Geis <pgwipeout@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>, linux-arm-kernel@lists.infradead.org
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-11-s.hauer@pengutronix.de>
 <47ddcaf3-4544-2b7c-a2f6-1f6346907f33@gmail.com>
 <20220225104924.GC19585@pengutronix.de>
 <78207d97-b5a1-9792-8ec9-11fcf2e00370@gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <78207d97-b5a1-9792-8ec9-11fcf2e00370@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_044132_145172_3C5AD150 
X-CRM114-Status: GOOD (  20.11  )
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

T24gMjAyMi0wMi0yNSAxMToxMCwgRG1pdHJ5IE9zaXBlbmtvIHdyb3RlOgo+IDI1LjAyLjIwMjIg
MTM6NDksIFNhc2NoYSBIYXVlciDQv9C40YjQtdGCOgo+PiBPbiBGcmksIEZlYiAyNSwgMjAyMiBh
dCAwMToyNjoxNFBNICswMzAwLCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+PiAyNS4wMi4yMDIy
IDEwOjUxLCBTYXNjaGEgSGF1ZXIg0L/QuNGI0LXRgjoKPj4+PiBUaGUgcmszNTY4IEhETUkgaGFz
IGFuIGFkZGl0aW9uYWwgY2xvY2sgdGhhdCBuZWVkcyB0byBiZSBlbmFibGVkIGZvciB0aGUKPj4+
PiBIRE1JIGNvbnRyb2xsZXIgdG8gd29yay4gVGhlIHB1cnBvc2Ugb2YgdGhhdCBjbG9jayBpcyBu
b3QgY2xlYXIuIEl0IGlzCj4+Pj4gbmFtZWQgImhjbGsiIGluIHRoZSBkb3duc3RyZWFtIGRyaXZl
ciwgc28gdXNlIHRoZSBzYW1lIG5hbWUuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBTYXNjaGEg
SGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+Cj4+Pj4gLS0tCj4+Pj4KPj4+PiBOb3RlczoK
Pj4+PiAgICAgIENoYW5nZXMgc2luY2UgdjU6Cj4+Pj4gICAgICAtIFVzZSBkZXZtX2Nsa19nZXRf
b3B0aW9uYWwgcmF0aGVyIHRoYW4gZGV2bV9jbGtfZ2V0Cj4+Pj4KPj4+PiAgIGRyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9kd19oZG1pLXJvY2tjaGlwLmMgfCAxNiArKysrKysrKysrKysrKysrCj4+
Pj4gICAxIGZpbGUgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pLXJvY2tjaGlwLmMgYi9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaS1yb2NrY2hpcC5jCj4+Pj4gaW5kZXggZmU0Zjk1NTYy
MzlhYy4uYzZjMDBlODc3OWFiNSAxMDA2NDQKPj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9j
a2NoaXAvZHdfaGRtaS1yb2NrY2hpcC5jCj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tj
aGlwL2R3X2hkbWktcm9ja2NoaXAuYwo+Pj4+IEBAIC03Niw2ICs3Niw3IEBAIHN0cnVjdCByb2Nr
Y2hpcF9oZG1pIHsKPj4+PiAgIAljb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfaGRtaV9jaGlwX2RhdGEg
KmNoaXBfZGF0YTsKPj4+PiAgIAlzdHJ1Y3QgY2xrICpyZWZfY2xrOwo+Pj4+ICAgCXN0cnVjdCBj
bGsgKmdyZl9jbGs7Cj4+Pj4gKwlzdHJ1Y3QgY2xrICpoY2xrX2NsazsKPj4+PiAgIAlzdHJ1Y3Qg
ZHdfaGRtaSAqaGRtaTsKPj4+PiAgIAlzdHJ1Y3QgcmVndWxhdG9yICphdmRkXzB2OTsKPj4+PiAg
IAlzdHJ1Y3QgcmVndWxhdG9yICphdmRkXzF2ODsKPj4+PiBAQCAtMjI5LDYgKzIzMCwxNCBAQCBz
dGF0aWMgaW50IHJvY2tjaGlwX2hkbWlfcGFyc2VfZHQoc3RydWN0IHJvY2tjaGlwX2hkbWkgKmhk
bWkpCj4+Pj4gICAJCXJldHVybiBQVFJfRVJSKGhkbWktPmdyZl9jbGspOwo+Pj4+ICAgCX0KPj4+
PiAgIAo+Pj4+ICsJaGRtaS0+aGNsa19jbGsgPSBkZXZtX2Nsa19nZXRfb3B0aW9uYWwoaGRtaS0+
ZGV2LCAiaGNsayIpOwo+Pj4+ICsJaWYgKFBUUl9FUlIoaGRtaS0+aGNsa19jbGspID09IC1FUFJP
QkVfREVGRVIpIHsKPj4+Cj4+PiBIYXZlIHlvdSB0cmllZCB0byBpbnZlc3RpZ2F0ZSB0aGUgaGNs
az8gSSdtIHN0aWxsIHRoaW5raW5nIHRoYXQncyBub3QKPj4+IG9ubHkgSERNSSB0aGF0IG5lZWRz
IHRoaXMgY2xvY2sgYW5kIHRoZW4gdGhlIGhhcmR3YXJlIGRlc2NyaXB0aW9uCj4+PiBkb2Vzbid0
IGxvb2sgY29ycmVjdC4KPj4KPj4gSSBhbSBzdGlsbCBub3Qgc3VyZSB3aGF0IHlvdSBtZWFuLiBZ
ZXMsIGl0J3Mgbm90IG9ubHkgdGhlIEhETUkgdGhhdAo+PiBuZWVkcyB0aGlzIGNsb2NrLiBUaGUg
Vk9QMiBuZWVkcyBpdCBhcyB3ZWxsIGFuZCB0aGUgZHJpdmVyIGhhbmRsZXMgdGhhdC4KPiAKPiBJ
J20gY3VyaW91cyB3aGV0aGVyIERTSS9EUCBhbHNvIG5lZWQgdGhhdCBjbG9jayB0byBiZSBlbmFi
bGVkLiBJZiB0aGV5Cj4gZG8sIHRoZW4geW91IGFyZW4ndCBtb2RlbGluZyBoL3cgcHJvcGVybHkg
QUZBSUNTLgoKQXNzdW1pbmcgbm9ib2R5IGF0IFJvY2tjaGlwIGRlY2lkZWQgdG8gbWFrZSB0aGlu
Z3MgbmVlZGxlc3NseSAKaW5jb25zaXN0ZW50IHdpdGggcHJldmlvdXMgU29DcywgSENMS19WT1Ag
c2hvdWxkIGJlIHRoZSBjbG9jayBmb3IgdGhlIApWT1AncyBBSEIgc2xhdmUgaW50ZXJmYWNlLiBV
c3VhbGx5LCBpZiB0aGF0IGFmZmVjdGVkIGFueXRoaW5nIG90aGVyIHRoYW4gCmFjY2Vzc2luZyBW
T1AgcmVnaXN0ZXJzLCBpbmRlZWQgaXQgd291bGQgc21lbGwgb2Ygc29tZXRoaW5nIGJlaW5nIHdy
b25nIAppbiB0aGUgY2xvY2sgdHJlZSwgYnV0IGluIHRoaXMgY2FzZSBJJ2QgYWxzbyBiZSBzdXNw
aWNpb3VzIG9mIHdoZXRoZXIgaXQgCm1pZ2h0IGhhdmUgZW5kZWQgdXAgY2xvY2tpbmcgcmVsYXRl
ZCBHUkYgcmVnaXN0ZXJzIGFzIHdlbGwgKGVpdGhlciAKZGlyZWN0bHksIG9yIGluZGlyZWN0bHkg
dmlhIHNvbWUgZ2F0ZSB0aGF0IHRoZSBjbG9jayBkcml2ZXIgaGFzbid0IAptb2RlbGxlZCB5ZXQp
LgoKSWYgdGhlIHN5bXB0b20gb2Ygbm90IGNsYWltaW5nIEhDTEtfVk9QIGlzIGhhbmdpbmcgb24g
c29tZSByZWdpc3RlciAKYWNjZXNzIGluIHRoZSBIRE1JIGRyaXZlciB3aGlsZSB0aGUgVk9QIGlz
IGlkbGUsIHRoZW4gaXQgc2hvdWxkIGJlIApyZWxhdGl2ZWx5IHN0cmFpZ2h0Zm9yd2FyZCB0byBu
YXJyb3cgZG93biB3aXRoIHNvbWUgbG9nZ2luZywgYW5kIHNlZSBpZiAKaXQgbG9va3MgbGlrZSB0
aGlzIGlzIHJlYWxseSBqdXN0IGFub3RoZXIgImdyZiIgY2xvY2suIElmIG5vdCwgdGhlbiAKd2Un
cmUgYmFjayB0byBzdXNwZWN0aW5nIHNvbWV0aGluZyBtb3JlIGluc2lkaW91c2x5IHdyb25nIGVs
c2V3aGVyZS4KClJvYmluLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
