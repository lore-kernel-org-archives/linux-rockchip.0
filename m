Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B342C3DA49
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 14:43:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jYbIQHLcA/ZXjiVijSYzx/xj1393zSqLw+fxtUvCJqg=; b=mQG3YvblY1v9PO
	ged8qIoRcPwCpoPBi07zYRgO87ExPcBkm0IDakxLjUssZj8C05jDEv8gdL/oZWhnzIqAGZ1LZPOAY
	wG036/36VY88M/wctffTQAsSI6PLjFZvYG1xOPbWrOk/LDRlVYs2XqBFHbMwEEPPQ047WRE+r3rD9
	t4lZzqSUdlgELbqMomGj6kxMKrNS9SUsxVt7NsYqv/5F2rEIb7rZYussO9Dl4HK3i/ZMw8LDMq5J9
	b2devyIGCqZtSyTgWYPDAaApLYvcOMYflvqnmp/RYB7gnuuAMBbiUzai9DwP4pUsM25baJtA0BSp0
	+YT9PLw5ZsZROjV+j35g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUSM8-0000000HJ5T-15Vp;
	Thu, 18 Jul 2024 14:43:40 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUSM1-0000000HJ1B-1lFK
	for linux-rockchip@lists.infradead.org;
	Thu, 18 Jul 2024 14:43:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721313809;
	bh=bIz6pGrabOkWqeOOLGp/7zatmKtlgXevjscXxYUc558=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=iPcPg/tQUnEWa7RbgKJmKryGWhd2xYuzpU21/acce0c88+cjY8RKrPCAuO11NlBEo
	 W1vHlpMjI9iq6pnFn8NXNwUKdNtkl/qTLgcwMPnLLeQgGUxbnyUZOvZhlDiEQuJI9F
	 IXV1YcFsCtbt7tOLg1yRpOe5x6DMbsMvj+9vv3zyJHInNnIX7mJCtld73T4IcFzF3p
	 e82XYcLNmHCCkBw6iDapviPylpMP0eEpGXkZaHkyLFE6ZvGEfn28ZDtCgVTrATksDP
	 X3ST4Cft+EXMN7qpq1ISt19JrbVWCQgdvLKGAENb66kP2WENk+AwVQZGjPh2FhskAB
	 0/2CFDIuoULWA==
Received: from [100.93.89.217] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 6A7C83780029;
	Thu, 18 Jul 2024 14:43:29 +0000 (UTC)
Message-ID: <069a9e2b-f0bc-46a7-aaec-f30157e9be2d@collabora.com>
Date: Thu, 18 Jul 2024 16:43:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] media: videodev2: Add flags to unconditionnaly
 enumerate pixels formats
To: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>
Cc: mchehab@kernel.org, ezequiel@vanguardiasur.com.ar,
 hverkuil-cisco@xs4all.nl, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
References: <20240717131430.159727-1-benjamin.gaignard@collabora.com>
 <20240717131430.159727-2-benjamin.gaignard@collabora.com>
 <2kbxr3hkjbcnaqescxmlcerziixg72icqpug6wa25eeggy2pnj@vqmxe4ojcwml>
 <dfc292f8-0014-4bf4-9429-31f729a176cd@collabora.com>
 <ok2a4ubzka6rhzyj2c5op73ij7pw35g6e75whc2jjget62fatx@zka2ewyt3kfv>
 <c8358d79bd51a9bfa5116b33ae5e7766b95d344d.camel@ndufresne.ca>
 <1faa7098-b108-480e-ae4b-ed25e0020e51@collabora.com>
 <7113029e2e192d43523a1ea5dae041fb53ae5948.camel@ndufresne.ca>
 <b454d93d607047c63663b3f003b3d3c23f07bac7.camel@ndufresne.ca>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <b454d93d607047c63663b3f003b3d3c23f07bac7.camel@ndufresne.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_074333_640345_EC986AA1 
X-CRM114-Status: GOOD (  21.29  )
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

CkxlIDE4LzA3LzIwMjQgw6AgMTY6MDIsIE5pY29sYXMgRHVmcmVzbmUgYSDDqWNyaXTCoDoKPiBM
ZSBqZXVkaSAxOCBqdWlsbGV0IDIwMjQgw6AgMDk6NTYgLTA0MDAsIE5pY29sYXMgRHVmcmVzbmUg
YSDDqWNyaXTCoDoKPj4gSGksCj4+Cj4+IExlIGpldWRpIDE4IGp1aWxsZXQgMjAyNCDDoCAwOTow
NCArMDIwMCwgQmVuamFtaW4gR2FpZ25hcmQgYSDDqWNyaXTCoDoKPj4+IExlIDE3LzA3LzIwMjQg
w6AgMTk6NTAsIE5pY29sYXMgRHVmcmVzbmUgYSDDqWNyaXTCoDoKPj4gWy4uLl0KPj4KPj4+Pj4+
Pj4gQEAgLTE1NjksNiArMTU2OSw3IEBAIHN0YXRpYyBpbnQgdjRsX2VudW1fZm10KGNvbnN0IHN0
cnVjdCB2NGwyX2lvY3RsX29wcyAqb3BzLAo+Pj4+Pj4+PiAgICAgCWludCByZXQgPSBjaGVja19m
bXQoZmlsZSwgcC0+dHlwZSk7Cj4+Pj4+Pj4+ICAgICAJdTMyIG1idXNfY29kZTsKPj4+Pj4+Pj4g
ICAgIAl1MzIgY2FwX21hc2s7Cj4+Pj4+Pj4+ICsJdTMyIGZsYWdzOwo+Pj4+Pj4+Pgo+Pj4+Pj4+
PiAgICAgCWlmIChyZXQpCj4+Pj4+Pj4+ICAgICAJCXJldHVybiByZXQ7Cj4+Pj4+Pj4+IEBAIC0x
NTc4LDggKzE1NzksMTAgQEAgc3RhdGljIGludCB2NGxfZW51bV9mbXQoY29uc3Qgc3RydWN0IHY0
bDJfaW9jdGxfb3BzICpvcHMsCj4+Pj4+Pj4+ICAgICAJCXAtPm1idXNfY29kZSA9IDA7Cj4+Pj4+
Pj4+Cj4+Pj4+Pj4+ICAgICAJbWJ1c19jb2RlID0gcC0+bWJ1c19jb2RlOwo+Pj4+Pj4+PiArCWZs
YWdzID0gcC0+ZmxhZ3MgJiBWNEwyX0ZNVF9GTEFHX0VOVU1fQUxMX0ZPUk1BVFM7Cj4+Pj4+Pj4+
ICAgICAJbWVtc2V0X2FmdGVyKHAsIDAsIHR5cGUpOwo+Pj4+Pj4+PiAgICAgCXAtPm1idXNfY29k
ZSA9IG1idXNfY29kZTsKPj4+Pj4+Pj4gKwlwLT5mbGFncyA9IGZsYWdzOwo+Pj4+Pj4+IFdvbid0
IHRoaXMgc2V0IFY0TDJfRk1UX0ZMQUdfRU5VTV9BTExfRk9STUFUUyAoaWYgcHJlc2VudCkgaW4g
dGhlCj4+Pj4+Pj4gZmxhZ3MgcmV0dXJuZWQgdG8gdXNlcnNwYWNlID8gU2hvdWxkbid0IGJlIGRy
aXZlcnMgdG8gc2V0Cj4+Pj4+Pj4gVjRMMl9GTVRfRkxBR19BTExfRk9STUFUUyBpbnN0ZWFkID8K
Pj4+Pj4+IG1lbXNldF9hZnRlciB6ZXJvZWQgZmxhZ3MgZmllbGQgc28gd2UgbmVlZCB0aGlzIHRv
IHNlbmQgVjRMMl9GTVRfRkxBR19FTlVNX0FMTF9GT1JNQVRTCj4+Pj4+PiBmbGFnIHRvIGRyaXZl
cnMuIFJldHVybiBpdCB0byB1c2Vyc3BhY2UgaXMgYSBzaWRlIGVmZmVjdCBidXQgSSBkb24ndCB0
aGF0IGlzIHByb2JsZW0KPj4+Pj4+IHNpbmNlIGl0IHNldCBpdCBhbnl3YXkuCj4+Pj4+Pgo+Pj4+
PiBPaywgaWYgdGhlIGV4cGVjdGF0aW9uIGlzIHRoYXQgdGhlIGZsYWcgaXMgcHJlc2VydmVkIHRo
cm91Z2ggdGhlIGlvY3RsCj4+Pj4+IGNhbGwsIHRoaXMgaXMgZmluZSB3aXRoIG1lCj4+Pj4gSSBt
aWdodCBiZSBtaXNzaW5nIHNvbWV0aGluZyBvdGhlciBzaW1pbGFyIGZlYXR1cmVzIGFyZSBleHBs
aWNpdGx5IGFkdmVydGlzZWQgYnkKPj4+PiBkcml2ZXJzLiBUaGlzIHdheSwgdGhlIGdlbmVyaWMg
bGF5ZXIgY2FuIGtlZXAgb3IgY2xlYXIgdGhlIGZsYWcgYmFzZWQgb2YgaWYgaXRzCj4+Pj4gc3Vw
cG9ydGVkLiBUaGUgZmFjdCB0aGUgZmxhZyBwZXJzaXN0IHRoZSBpb2N0bCgpIG9yIG5vdCBlbmR1
cCBoYXZpbmcgYSB1c2VmdWwKPj4+PiBzZW1hbnRpYy4KPj4+Pgo+Pj4+IENvdWxkIHdlIGRvIHRo
ZSBzYW1lPwo+Pj4gSXQgaXMgdGhlIG9ubHkgZmxhZyBzZXQgYnkgdXNlcnNwYWNlIHdoZW4gY2Fs
bGluZyB0aGUgaW9jdGwoKSwgYWxsIG90aGVycwo+Pj4gYXJlIHNldCBieSB0aGUgZHJpdmVycy4K
Pj4+IEkgY2FuIGNsZWFuIGl0IGZyb20gdGhlIGlvY3RsKCkgc3RydWN0dXJlIGFmdGVyIGRyaXZl
ciBjYWxsIGJ1dCB0aGF0IHdvbid0IGNoYW5nZSBhbnl0aGluZy4KPj4gVGhpcyBkb2VzIG5vdCBh
bnN3ZXIgbXkgcXVlc3Rpb24uIEluIG90aGVyIHNpbWlsYXIgZmVhdHVyZSwgd2UgaGF2ZSBhbgo+
PiAqKmludGVybmFsKiogZmxhZyBzZXQgYnkgZHJpdmVycyB0byB0ZWxsIHRoZSBmcmFtZXdvcmsg
dGhhdCBzdWNoIGZlYXR1cmUgaXMKPj4gYWJsZWQuIFVzaW5nIHRoYXQsIHRoZSBmcmFtZXdvcmsg
Y2FuIGtlZXAgb3IgcmVtb3ZlIHRoYXQgZmxhZyBiYXNlZCBvbiBpZiBpdHMKPj4gc3VwcG9ydGVk
IG9yIG5vdC4gVGhpcyB3YXksIHVzZXJzcGFjZSBoYXZlIGEgY2x1ZSBpZiB0aGUgZHJpdmVyIGRv
IGhhdmUgdGhpcwo+PiBzdXBwb3J0IG9yIGlmIHRoZSByZXR1cm5lZCByZXN1bHQgKGluIHRoYXQg
Y2FzZSkgaXMganVzdCBhIHN1YnNldCBtYXRjaGluZyB0aGUKPj4gY29uZmlndXJhdGlvbi4gV2Ug
ZG9uJ3Qgc2VlbSB0byBoYXZlIGRvbmUgdGhlIHNhbWUgbGV2ZWwgb2YgZWZmb3J0IGhlcmUuCj4g
Rm9yIHRoZSByZWZlcmVuY2UsIHlvdSBhY3R1YWxseSB1c2UgdGhhdCBzZW1hbnRpYyBpbiBHU3Ry
ZWFtZXIgaW1wbGVtZW50YXRpb24sCj4gYnV0IHRoZSBrZXJuZWwgY29kZSBzZWVtcyBicm9rZW4u
Cj4KPiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZ3N0cmVhbWVyL2dzdHJlYW1lci8t
L21lcmdlX3JlcXVlc3RzLzcwNzgvZGlmZnMjZWI5MGQ1NDk1ZGYyZjA4NWYxNjM5OTYwMTRjNzQ4
YTM2ZjE0M2Y3Nl81MTZfNTI3CgpkZXZpY2VfY2FwcyB1MzIgZmllbGQgaXMgYWxyZWFkeSBhbG1v
c3QgZnVsbHkgdXNlZCwgb25seSBvbmUgMSBiaXQgaXMgZnJlZS4KSSBjb3VsZCB1c2UgaXQgYnV0
LCBmb3IgbWUsIHRoZSBjYXBhYmlsaXR5IHRvIGVudW1lcmF0ZSBhbGwgdGhlIGZvcm1hdHMKZG9l
c24ndCBmaXQgd2VsbCBpbiB0aGUgZXhpc3RpbmcgbGlzdC4KCkJlbmphbWluCgo+Cj4+IE5pY29s
YXMKPj4KPj4+Pj4gUmV2aWV3ZWQtYnk6IEphY29wbyBNb25kaSA8amFjb3BvLm1vbmRpQGlkZWFz
b25ib2FyZC5jb20+Cj4+Pj4+Cj4+Pj4+Pj4+ICAgICAJc3dpdGNoIChwLT50eXBlKSB7Cj4+Pj4+
Pj4+ICAgICAJY2FzZSBWNEwyX0JVRl9UWVBFX1ZJREVPX0NBUFRVUkU6Cj4+Pj4+Pj4+IGRpZmYg
LS1naXQgYS9pbmNsdWRlL3VhcGkvbGludXgvdmlkZW9kZXYyLmggYi9pbmNsdWRlL3VhcGkvbGlu
dXgvdmlkZW9kZXYyLmgKPj4+Pj4+Pj4gaW5kZXggZmU2YjY3ZTgzNzUxLi5iNmE1ZGE3OWJhMjEg
MTAwNjQ0Cj4+Pj4+Pj4+IC0tLSBhL2luY2x1ZGUvdWFwaS9saW51eC92aWRlb2RldjIuaAo+Pj4+
Pj4+PiArKysgYi9pbmNsdWRlL3VhcGkvbGludXgvdmlkZW9kZXYyLmgKPj4+Pj4+Pj4gQEAgLTg4
Niw2ICs4ODYsOCBAQCBzdHJ1Y3QgdjRsMl9mbXRkZXNjIHsKPj4+Pj4+Pj4gICAgICNkZWZpbmUg
VjRMMl9GTVRfRkxBR19DU0NfSFNWX0VOQwkJVjRMMl9GTVRfRkxBR19DU0NfWUNCQ1JfRU5DCj4+
Pj4+Pj4+ICAgICAjZGVmaW5lIFY0TDJfRk1UX0ZMQUdfQ1NDX1FVQU5USVpBVElPTgkJMHgwMTAw
Cj4+Pj4+Pj4+ICAgICAjZGVmaW5lIFY0TDJfRk1UX0ZMQUdfTUVUQV9MSU5FX0JBU0VECQkweDAy
MDAKPj4+Pj4+Pj4gKyNkZWZpbmUgVjRMMl9GTVRfRkxBR19FTlVNX0FMTF9GT1JNQVRTCQkweDA0
MDAKPj4+Pj4+Pj4gKyNkZWZpbmUgVjRMMl9GTVRfRkxBR19BTExfRk9STUFUUwkJMHgwODAwCj4+
Pj4+Pj4+Cj4+Pj4+Pj4+ICAgICAJLyogRnJhbWUgU2l6ZSBhbmQgZnJhbWUgcmF0ZSBlbnVtZXJh
dGlvbiAqLwo+Pj4+Pj4+PiAgICAgLyoKPj4+Pj4+Pj4gLS0KPj4+Pj4+Pj4gMi40My4wCj4+Pj4+
Pj4+Cj4+Pj4+Pj4+Cj4+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPj4+Pj4+PiBLZXJuZWwgbWFpbGluZyBsaXN0IC0tIGtlcm5lbEBtYWlsbWFu
LmNvbGxhYm9yYS5jb20KPj4+Pj4+PiBUbyB1bnN1YnNjcmliZSBzZW5kIGFuIGVtYWlsIHRvIGtl
cm5lbC1sZWF2ZUBtYWlsbWFuLmNvbGxhYm9yYS5jb20KPj4+Pj4+PiBUaGlzIGxpc3QgaXMgbWFu
YWdlZCBieSBodHRwczovL21haWxtYW4uY29sbGFib3JhLmNvbQo+Pj4gX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4+IEtlcm5lbCBtYWlsaW5nIGxpc3Qg
LS0ga2VybmVsQG1haWxtYW4uY29sbGFib3JhLmNvbQo+Pj4gVG8gdW5zdWJzY3JpYmUgc2VuZCBh
biBlbWFpbCB0byBrZXJuZWwtbGVhdmVAbWFpbG1hbi5jb2xsYWJvcmEuY29tCj4+PiBUaGlzIGxp
c3QgaXMgbWFuYWdlZCBieSBodHRwczovL21haWxtYW4uY29sbGFib3JhLmNvbQo+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBLZXJuZWwgbWFpbGlu
ZyBsaXN0IC0tIGtlcm5lbEBtYWlsbWFuLmNvbGxhYm9yYS5jb20KPj4gVG8gdW5zdWJzY3JpYmUg
c2VuZCBhbiBlbWFpbCB0byBrZXJuZWwtbGVhdmVAbWFpbG1hbi5jb2xsYWJvcmEuY29tCj4+IFRo
aXMgbGlzdCBpcyBtYW5hZ2VkIGJ5IGh0dHBzOi8vbWFpbG1hbi5jb2xsYWJvcmEuY29tCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
