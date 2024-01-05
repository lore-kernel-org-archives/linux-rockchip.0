Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 389C6C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jan 2024 09:14:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5flUsmEj/wfN5yQWIF5dCrjTpc9l6aqafpZvQN+dUOo=; b=wygZ9S0bu4PZFc
	1pKBqiIHN3LGqiBpgnJ8EPUSpeYNcc07H8XcUtXR074DaDIuJQ8eKlW4xXRaud2uSd3nPH7FiWEvd
	t+PCJ5MTKHRWPREgCtzCUVGh6wdVCIfVa+qmXstnMj9FB238fHBdv7HecZ9N+cC+HHs8ZYbgxQ0Qu
	DCYUx2Cv+nmHYNUVEYKyCBbLc56YsPbRbVPXHpgpN//1RqEtamxEAnvI/Eyej2OTiGwB/7ZjjhF13
	kKebd5DEG/yrzfedRfZQTknvfP6Vcrj1wCOxNNHbQyyf6MzveDjCGdosU4vXwM131jaHcc86PqhHq
	h9qfOJkZm9YMC1MO54/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLgHU-00GLqY-1j;
	Fri, 05 Jan 2024 09:14:20 +0000
Received: from mail-m15595.qiye.163.com ([101.71.155.95])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLgHS-00GLq2-0m;
	Fri, 05 Jan 2024 09:14:20 +0000
DKIM-Signature: a=rsa-sha256;
	b=KSM370iFKjmw5xxrk6/QzaAkCHdhqtuv0hlvvSEvcmnQsIbTaoBRQ+eK0zJeDVa8sr6Jk7akmw5IQ2GDgQXF5O4mEuzR6f9qezacvcPdc475m6T+7tn0hprSt/f8dGel64uVjr/KEKMRL5/aGuhQF2qAm0dV5iKMMy1XwwJvHIM=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=B2Kpa4LwHRxteTEkl0iXK8SA2qrb5sEeEowWu1YDokw=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id 3AD6E780511;
	Fri,  5 Jan 2024 17:13:58 +0800 (CST)
Message-ID: <6812a957-dafd-4687-8094-074d8d2b5471@rock-chips.com>
Date: Fri, 5 Jan 2024 17:13:57 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/rockchip: vop2: Drop unused if_dclk_rate variable
Content-Language: en-US
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20240104143951.85219-1-cristian.ciocaltea@collabora.com>
 <20240104143951.85219-2-cristian.ciocaltea@collabora.com>
 <5867171.29KlJPOoH8@diego>
 <b017a3e2-f658-4a95-b972-6ffb87acfdc3@collabora.com>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <b017a3e2-f658-4a95-b972-6ffb87acfdc3@collabora.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkhLGVZCH0hNQ0ofHU0fSENVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSE1DVUpLS1VKQk
	tLWQY+
X-HM-Tid: 0a8cd8e69206b24fkuuu3ad6e780511
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NE06Ogw5PTwfLj88PksRTiEu
	MQ4aCw1VSlVKTEtPT09NS0hCSUlMVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBTkJOTDcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_011418_477409_CD54C814 
X-CRM114-Status: GOOD (  27.05  )
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

SGkgQ3Jpc3RpYW46CgpPbiAxLzUvMjQgMDM6MTIsIENyaXN0aWFuIENpb2NhbHRlYSB3cm90ZToK
PiBIaSBIZWlrbywKPiAKPiBPbiAxLzQvMjQgMTc6NTgsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+
PiBIaSBDaHJpc3RpYW4sIEFuZHksCj4+Cj4+IEFtIERvbm5lcnN0YWcsIDQuIEphbnVhciAyMDI0
LCAxNTozOTo1MCBDRVQgc2NocmllYiBDcmlzdGlhbiBDaW9jYWx0ZWE6Cj4+PiBDb21taXQgNWEw
MjhlOGYwNjJmICgiZHJtL3JvY2tjaGlwOiB2b3AyOiBBZGQgc3VwcG9ydCBmb3IgcmszNTg4IikK
Pj4+IGludHJvZHVjZWQgYSB2YXJpYWJsZSB3aGljaCBlbmRlZCB1cCBiZWluZyB1bnVzZWQuICBS
ZW1vdmUgaXQuCj4+Pgo+Pj4gcm9ja2NoaXBfZHJtX3ZvcDIuYzoxNjg4OjIzOiB3YXJuaW5nOiB2
YXJpYWJsZSDigJhpZl9kY2xrX3JhdGXigJkgc2V0IGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtYnV0
LXNldC12YXJpYWJsZV0KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEg
PGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPgo+Pgo+PiBpbiBnZW5lcmFsLCBwbGVh
c2UgZG9uJ3Qgc2VuZCBub24tc2VyaWVzIHBhdGNoZXMgYXMgcmVwbGllcyB0byBvdGhlciBwYXRj
aGVzLgo+PiBJdCBjb25mdXNlcyB0b29saW5nIGxpa2UgYjQgd2F5IHRvbyBvZnRlbiwgYXMgdGhp
cyBwYXRjaCBpcyBub3QgZGVzaWduYXRlZAo+PiBhcyBhIDIvMiAoc2ltaWxhciB0byB0aGUgZmly
c3Qgb25lIG5vdCBiZWluZyAxLzIpLgo+IAo+IFRoYXQgd2FzIHVuaW50ZW50aW9uYWwsIHNvcnJ5
ISAgSSB3cm9uZ2x5IGFzc3VtZWQgJ2dpdCBzZW5kLWVtYWlsJyBpcwo+IGFibGUgdG8gY29ycmVj
dGx5IGhhbmRsZSBtdWx0aXBsZSBwYXRjaGVzIHdoaWNoIGFyZSBub3QgcGFydCBvZiBhCj4gc2Vy
aWVzLiAgSSdtIG5vdCBzdXJlIGlmIHRoZSAnLS1uby10aHJlYWQnIGZsYWcgd291bGQgaGF2ZSBo
ZWxwZWQuCj4gCj4+PiAtLS0KPj4+ICAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlw
X2RybV92b3AyLmMgfCAyIC0tCj4+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGRlbGV0aW9ucygtKQo+
Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJt
X3ZvcDIuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4+
PiBpbmRleCA0NDUwOGMyZGQ2MTQuLjkyMzk4NWQ0MTYxYiAxMDA2NDQKPj4+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4+PiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwo+Pj4gQEAgLTE2ODUsNyArMTY4
NSw2IEBAIHN0YXRpYyB1bnNpZ25lZCBsb25nIHJrMzU4OF9jYWxjX2NydV9jZmcoc3RydWN0IHZv
cDJfdmlkZW9fcG9ydCAqdnAsIGludCBpZCwKPj4+ICAgCXVuc2lnbmVkIGxvbmcgZGNsa19jb3Jl
X3JhdGUgPSB2X3BpeGNsayA+PiAyOwo+Pj4gICAJdW5zaWduZWQgbG9uZyBkY2xrX3JhdGUgPSB2
X3BpeGNsazsKPj4+ICAgCXVuc2lnbmVkIGxvbmcgZGNsa19vdXRfcmF0ZTsKPj4+IC0JdW5zaWdu
ZWQgbG9uZyBpZl9kY2xrX3JhdGU7Cj4+PiAgIAl1bnNpZ25lZCBsb25nIGlmX3BpeGNsa19yYXRl
Owo+Pj4gICAJaW50IEsgPSAxOwo+Pj4gICAKPj4+IEBAIC0xNzAwLDcgKzE2OTksNiBAQCBzdGF0
aWMgdW5zaWduZWQgbG9uZyByazM1ODhfY2FsY19jcnVfY2ZnKHN0cnVjdCB2b3AyX3ZpZGVvX3Bv
cnQgKnZwLCBpbnQgaWQsCj4+PiAgIAkJfQo+Pj4gICAKPj4+ICAgCQlpZl9waXhjbGtfcmF0ZSA9
IChkY2xrX2NvcmVfcmF0ZSA8PCAxKSAvIEs7Cj4+PiAtCQlpZl9kY2xrX3JhdGUgPSBkY2xrX2Nv
cmVfcmF0ZSAvIEs7Cj4+PiAgIAkJLyoKPj4+ICAgCQkgKiAqaWZfcGl4Y2xrX2RpdiA9IGRjbGtf
cmF0ZSAvIGlmX3BpeGNsa19yYXRlOwo+Pj4gICAJCSAqICppZl9kY2xrX2RpdiA9IGRjbGtfcmF0
ZSAvIGlmX2RjbGtfcmF0ZTsKPj4+ICAgCQkgKi8KPj4gCQkqaWZfcGl4Y2xrX2RpdiA9IDI7Cj4+
IAkJKmlmX2RjbGtfZGl2ID0gNDsKPj4KPj4gd2l0aCB0aGUgY29kZSBjb250aW51aW5nIHdpdGgg
dGhvc2Ugc3RhdGljIGNvbnN0YW50cyBidXQgdGhlIGNvbW1lbnQKPj4gc2hvd2luZyBhIGZvcnVt
dWxhLCBJIGRvIGhvcGUgQW5keSBjYW4gcHJvdmlkZSBhIGJpdCBvZiBpbnNpZ2h0IGludG8KPj4g
d2hhdCBpcyBoYXBwZW5pbmcgaGVyZS4KPj4KPj4gSS5lLiBJJ2QgcmVhbGx5IGxpa2UgdG8gdW5k
ZXJzdGFuZCBpZiB0aGF0IHJlYWxseSBpcyBqdXN0IGEgcmVtbmFudCBvcgo+PiBzb21ldGhpbmcg
ZGlmZmVyZW50IGlzIG5lZWRlZC4KPiAKPiBUaGUgY3VycmVudCBpbXBsZW1lbnRhdGlvbiBpcyBu
b3QgYWJsZSB0byBoYW5kbGUgYWxsIGRpc3BsYXkgbW9kZXMKPiBzdXBwb3J0ZWQgYnkgY29ubmVj
dGVkIGRpc3BsYXlzLCBlLmcuIGluIG15IHRlc3RpbmcgZW52aXJvbm1lbnQgSQo+IGVuY291bnRl
cmVkIGlzc3VlcyB3aXRoIDI1NjB4MTQ0MC03NS4wMEh6LCAyMDQ4eDExNTItNjAuMDBIeiwKPiAx
MDI0eDc2OC02MC4wMEh6LiAgQWRkaXRpb25hbGx5LCBpdCBkb2Vzbid0IHNlZW0gdG8gY29wZSB3
ZWxsIHdpdGgKPiBub24taW50ZWdlciByZWZyZXNoIHJhdGVzIGxpa2UgNTkuOTQsIDI5Ljk3LCAy
My45OCwgZXRjLgoKSSB0aGluayB0aGlzIGlzIGJlY2F1c2UgdGhlIHRoZWUgUExMIGZyb20gY3J1
IGNhbid0IGRpdmlkZSBhY2N1cmF0ZSBjbG9jayBmb3IgdGhlc2UKbm9uLWludGVnZXIgcmVmcmVz
aCByYXRlcy4KPiAKPiBNeSB0ZW1wb3Jhcnkgd29ya2Fyb3VuZCByZWxpZXMgb24gdXNpbmcgdGhl
IEhETUkgUEhZIFBMTCBpbiBjb25qdW5jdGlvbgo+IHdpdGggYSBkb3duc3RyZWFtLWJhc2VkIGhh
Y2sgdG8gY29tcHV0ZSB0aGUgY2xvY2sgcmF0ZXMuICBJJ20gbm90IHN1cmUKPiB0aGF0IHdvdWxk
IGJlIGFuIHVwc3RyZWFtYWJsZSBzb2x1dGlvbiwgc28gSSB3b3VsZCBsZXQgQW5keSBzaGVkIHNv
bWUKPiBsaWdodCBvbiB0aGUgdG9waWMuCgpZZXMsIHVzZSBQTEwgZnJvbSBIRE1JIFBIWSBjYW4g
Z2l2ZSBtb3JlIGZsZXhpYmxlIGNsb2NrIHJhdGVzIHRvIHN1cHBvcnQgbW9yZSBkaXNwbGF5IG1v
ZGUuCldlIGFsc28gdXNlIGl0IGluIG91ciBic3Aga2VybmVsLCBidXQgb25lIHRoaW5nIHNob3Vs
ZCAga2VlcCBpbiBtaW5kIHRoYXQgIHVzZSBIRE1JIFBIWSBwbGwKYXMgZGNsayBzb3VyY2UgY2Fu
IG9ubHkgd29yayBmb3IgSERNSSAyLjAgb3IgYmVsbG93LCBpZiBjYW4ndCBiZSB1c2VkIGluIGhk
bWkgMi4xIG1vZGUoc3VjaCBhcyA0SzEyMCksCnNvIHdlIG5lZWQgdG8gc3dpdGNoIHRoZSBjbG9j
ayBzb3VyY2UgYnkgaGRtaSB3b3JrIG1vZGUuCgpUaGUgZGlmZmljdWx0IHRoaW5nIGlzIGhvdyB0
byBtYWtlIHRoaXMgYWNjZXB0ZWQgYnkgdXBzdHJlYW0uCj4gCj4gVGhhbmtzLAo+IENyaXN0aWFu
Cj4gCj4+Cj4+IEhlaWtvCj4+Cj4+Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
