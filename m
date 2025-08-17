Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B138CA0EDC
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Aug 2025 16:33:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KEU0xvf5MKbsnWobVcH1V0QSkPQFazt5lVHFBhh/Wo0=; b=M9AR6toHlnVEIZ
	O4L7OugIzbokBxwVlL6+Su6QClQ5ZqWZH4YTpR5N8GSYv4hPyQV1y4xkbC3w6brjdygf2zJdzc1JS
	iigVQDtG0zglfGYwr6LKdOzjWAbPjXij1aQVxkLPAwZFJGNfLX7EUgsTr71gztjy0ceQNlt+erfHN
	R0fuZxepGdDDSeAaeuNuoLq5cixFtBSfXAm5Z+zqOUY3ma/jatR2tjrCEDx5iCOTfQi8mN+a50Kzb
	DxX8UuFLe9BNAau5b17PmGP9GeIG+y+VfGNUd/MmzA8R79Tt/cF3RVpvPuXbPpinH1e5D954a/n+B
	uFkWr4VwHbv6shmZMzuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ungKA-00000005qgn-2j8l;
	Sun, 17 Aug 2025 16:33:38 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ungK7-00000005qg7-33Fs
	for linux-rockchip@lists.infradead.org;
	Sun, 17 Aug 2025 16:33:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1755448414;
 bh=05X/I2SqxVTRC5UNwPe0jX77RC5+lAMs+Sp0TwX0JKY=;
 b=oloXTaEWaNcG1u8Vr+ts7sYxUSkZpUJr0LhM7MGFrmmtpoQ512d+0Elv0322xkvKxiYwIijRH
 H09lgpvNje2ruMcifFCLshCvxZFU6LjSrPgYXKdd3yLHhSXQI5zr91MfY2LPaiL7eoCfcucsrQl
 TCpWA0W+rrqFdVBDRl/GMcbLR/jA2JDi22nZ4WvXeU0e3By6Iet7U4LSxz3p9e2DXPwjC2TBcrX
 I6UTtwSVI3KK1sDcq3DfxX8oe2k3FdT5GDsBThZ2NKlf7s1IMNAjgy1oplH5Of7OCKp3t8V8Pec
 4zzDNbFTUA3IVQQVy3FpD+D8poJXGLNomjoNjQM3riMg==
X-Forward-Email-ID: 68a204589a82a81f459cf7d1
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.2.4
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <f55f6c64-f720-437b-ac88-80b6930a9c2c@kwiboo.se>
Date: Sun, 17 Aug 2025 18:33:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/7] media: rkvdec: Add HEVC backend
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Alex Bee <knaerzche@gmail.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250810212454.3237486-1-jonas@kwiboo.se>
 <50162371fd54fc976a84fcf57c9b69112a892c46.camel@collabora.com>
 <1dd29158-0660-4254-ac00-1316768d9b82@kwiboo.se>
 <91864a1c047d2bdfce202b070716a694ede47d5e.camel@collabora.com>
 <a66feb89fa02f05b187e5603ffc3b1501ef3cbd5.camel@collabora.com>
 <efdf8c99-d166-4b78-afc5-d4a6eb5ac046@kwiboo.se>
 <25ce30446e8e8d038273fcdfb398c90995c242db.camel@collabora.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <25ce30446e8e8d038273fcdfb398c90995c242db.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250817_093335_812590_6FC2A784 
X-CRM114-Status: GOOD (  20.78  )
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

SGkgTmljb2xhcywKCk9uIDgvMTIvMjAyNSA4OjI2IFBNLCBOaWNvbGFzIER1ZnJlc25lIHdyb3Rl
Ogo+IEhpIEpvbmFzLAo+IAo+IExlIG1hcmRpIDEyIGFvw7t0IDIwMjUgw6AgMTk6MzEgKzAyMDAs
IEpvbmFzIEthcmxtYW4gYSDDqWNyaXTCoDoKPj4gT24gOC8xMi8yMDI1IDI6NDQgUE0sIE5pY29s
YXMgRHVmcmVzbmUgd3JvdGU6Cj4+PiBJIGZvcmdvdCwgCj4+Pgo+Pj4gTGUgbWFyZGkgMTIgYW/D
u3QgMjAyNSDDoCAwODozOCAtMDQwMCwgTmljb2xhcyBEdWZyZXNuZSBhIMOpY3JpdMKgOgo+Pj4+
PiBKQ1QtVkMtSEVWQ19WMSBvbiBHU3RyZWFtZXItSC4yNjUtVjRMMlNMLUdzdDEuMDoKPj4+Pj4K
Pj4+Pj4gLSBEQkxLX0RfVklYU18yIChmYWlsKQo+Pj4+PiAtIERTTElDRV9BX0hISV81IChmYWls
KQo+Pj4+PiAtIEVYVF9BX2VyaWNzc29uXzQgKGZhaWwpCj4+Pj4+IC0gUElDU0laRV9BX0Jvc3Nl
bl8xIChlcnJvcikKPj4+Pj4gLSBQSUNTSVpFX0JfQm9zc2VuXzEgKGVycm9yKQo+Pj4+PiAtIFBJ
Q1NJWkVfQ19Cb3NzZW5fMSAoZXJyb3IpCj4+Pj4+IC0gUElDU0laRV9EX0Jvc3Nlbl8xIChlcnJv
cikKPj4+Pj4gLSBTQU9EQkxLX0FfTWFpbkNvbmNlcHRfNCAoZmFpbCkKPj4+Pj4gLSBTQU9EQkxL
X0JfTWFpbkNvbmNlcHRfNCAoZmFpbCkKPj4+Pj4gLSBUU1VORVFCRF9BX01BSU4xMF9UZWNobmlj
b2xvcl8yIChlcnJvcikKPj4+Cj4+PiBJJ21lIGdldHRpbmcgdGhlIHNhbWUgcmVzdWx0IGlmIEkg
Zm9yY2UgYSBzaW5nbGUgam9iIGluIGZsdXN0ZXIuIFRoZSB0ZXN0IEkKPj4+IHBvc3RlZCB3YXMg
d2l0aCAyIGpvYnMuIERldGxldiBmb3VuZCB0aGF0IHRoZSBpb21tdSByZXNldCBpcyByZXF1aXJl
ZCBpbgo+Pj4gbW9yZQo+Pj4gY2FzZXMgb24gUkszNTg4LzM1NzYsIHBlcmhhcHMgdGhlIEhFVkMg
ZGVjb2RlciBpbiBvbGRlciBoYXJkd2FyZSBuZWVkcyB0aGUKPj4+IHNhbWUsCj4+PiBJIHdpbGwg
dHJ5IGFuZCByZXBvcnQuCj4+Cj4+IFZlbmRvciBrZXJuZWwgWzFdIGNoZWNrIGZvbGxvd2luZyBi
aXRzIGZyb20gUktWREVDX1JFR19JTlRFUlJVUFQgcmVnIHRvCj4+IGRlY2lkZSBpZiBhIGZ1bGwg
SFcgcmVzZXQgc2hvdWxkIGJlIGRvbmUuCj4+Cj4+IMKgIGVycl9tYXNrID0gUktWREVDX0JVRl9F
TVBUWV9TVEEKPj4gwqDCoAnCoMKgIHwgUktWREVDX0JVU19TVEEKPj4gwqDCoAnCoMKgIHwgUktW
REVDX0NPTE1WX1JFRl9FUlJfU1RBCj4+IMKgwqAJwqDCoCB8IFJLVkRFQ19FUlJfU1RBCj4+IMKg
wqAJwqDCoCB8IFJLVkRFQ19USU1FT1VUX1NUQTsKPj4KPj4gQWRkaW5nIHByb3BlciByZXNldCBz
dXBwb3J0IGNhbiBiZSByYXRoZXIgaW52b2x2ZWQgYW5kIG1haW4gcmVhc29uIHdoeQo+PiB0aGlz
IHNlcmllcyBkb2VzIG5vdCBoYW5kbGUgaXQsIGJldHRlciBzdWl0ZWQgZm9yIGEgc2VwYXJhdGUg
ZnV0dXJlCj4+IHNlcmllcy4KPj4KPj4gUHJvcGVyIEhXIHJlc2V0IHdpbGwgcmVxdWlyZSBlLmcu
IGR0LWJpbmRpbmdzLCBEVCB1cGRhdGVzLCBwbXUgaWRsZQo+PiByZXF1ZXN0IGludGVncmF0aW9u
IGFuZCBmb3IgcmszMzI4IHZlbmRvciBldmVuIG1vdmVkIFZQVSByZXNldCB0byBURi1BLgo+Pgo+
PiBEb2luZyB0aGUgaW9tbXUgZGV0YWNoL2F0dGFjaCBkYW5jZSBub3Qgb25seSBvbiBSS1ZERUNf
U09GVFJFU0VUX1JEWQo+PiBjb3VsZCBwb3NzaWJsZSBpbXByb3ZlIHNvbWUgY2FzZXMsIHVudGls
IGZ1bGwgcmVzZXQgY2FuIGJlIGltcGxlbWVudGVkLgo+IAo+IFJvY2tjaGlwIGlzIGZvbGxvd2lu
ZyBWU0kgZGVzaWduIG9mICJzZWxmIHJlc2V0IiBvbiBlcnJvci4gQnV0IHNpbmNlIHRoZSBpb21t
dQo+IGlzIHBhcnQgb2YgdGhlIGRldmljZSwgaXQgYWxzbyBnZXRzIHJlc2V0LCB3aGljaCBpbXBs
eSBoYXZpbmcgdG8gcmVwcm9ncmFtIGl0Lgo+IFRoaXMgc2hvd2VkIHRvIGJlIHZlcnkgcmVsaWFi
bGUgbG9naWMsIGRlc3BpdGUgUksgZG9pbmcgYSBoYXJkIHJlc2V0Lgo+IAo+IFNpbmNlIHNlbGYg
cmVzZXQgaXMgZG9jdW1lbnRlZCBmb3IgUktWREVDX0JVU19TVEEsIFJLVkRFQ19FUlJfU1RBLAo+
IFJLVkRFQ19USU1FT1VUX1NUQSwgaXQgd291bGQgc2VlbSB0aGF0IFJLVkRFQ19CVUZfRU1QVFlf
U1RBIGlzIHJlZHVuZGFudCwgdW5sZXNzCj4gaXRzIGFzeW5jaHJvbm91cyBvcGVyYXRpb24gdGhh
dCBuZWVkIHRvIGJlIHBvbGxlZC4gUG9zc2libHkgc29tZXRoaW5nIHRvCj4gaW52ZXN0aWdhdGUu
IFJLVkRFQ19CVUZfRU1QVFlfU1RBIGFuZCBSS1ZERUNfQ09MTVZfUkVGX0VSUl9TVEEgYXJlIG5v
dAo+IGRvY3VtZW50ZWQgYSBzdWNoLCBzbyBpdHMgbm90IHF1aXRlIGxvZ2ljYWwgdG8gcmVwcm9n
cmFtIHRoZSBpb21tdS4KPiAKPiBJIGRvbid0IGltbWVkaWF0ZWx5IHRydXN0IHJlZmVyZW5jZSBz
b2Z0d2FyZSBmb3IgdGhlc2UgdHlwZSBvZiB0aGluZ3MsIHdlIHNob3VsZAo+IGZpbmQgd2hhdCB3
b3JrcyBiZXN0IGFuZCBoYXZlIGEgcmF0aW9uYWxlIGZvci4gVGhlIGhhcmQgcmVzZXQgaXMgZXZl
cnkKPiBleHBlbnNpdmUsIGFuZCBoYXJkIHRvIHVwc3RyZWFtLgoKSSBmdWxseSBhZ3JlZSwgYW5k
IEkgdHJpZWQgYSBmZXcgdGhpbmdzIGxpa2UgaXNzdWUgaW9tbXUgcmVzZXQgZm9yIG1vcmUKZXJy
b3JzLCBza2lwIHVzZSBvZiBpb21tdSBjb21wbGV0ZWx5LCBkaXNhYmxlIHVzZSBvZiBwZXJmb3Jt
YW5jZSBjYWNoZSwKd3JpdGUgMCBhbGwgcmVncyBiZWZvcmUgd3JpdGluZyBjb3JyZWN0IHZhbHVl
cyBhbmQgbm90aGluZyBzZWVtIHRvCnJlc29sdmUgdGhpcyBpc3N1ZS4KClNvIG1vcmUgaW52ZXN0
aWdhdGlvbiB3aWxsIGJlIG5lZWRlZCB0byBmdWxseSB1bmRlcnN0YW5kIHdoYXQgd2UgbmVlZCB0
bwpkbyB0byBnZXQgYSBtb3JlIHJlbGlhYmxlIHJlc3VsdC4KCldpbGwgZG8gYSB2aXN1YWwgaW5z
cGVjdGlvbiBvZiB0aGUgZGVjb2RlZCBmcmFtZXMgb24gdGhlIHRlc3RzIHRoYXQgaXMKZmxha3kg
dG8gc2VlIGlmIHRoYXQgY2FuIGdpdmUgYW55IGNsdWUgb24gdGhlIGV4dGVuZCBvZiB0aGUgaXNz
dWUuCgpSZWdhcmRzLApKb25hcwoKPiAKPiBOaWNvbGFzCj4gCj4+Cj4+IFsxXQo+PiBodHRwczov
L2dpdGh1Yi5jb20vS3dpYm9vL2xpbnV4LXJvY2tjaGlwL2Jsb2IvbGludXgtNi4xLXN0YW4tcmty
Ni4xL2RyaXZlcnMvdmlkZW8vcm9ja2NoaXAvbXBwL21wcF9ya3ZkZWMuYyNMOTI0LUw5MzEKPj4K
Pj4gUmVnYXJkcywKPj4gSm9uYXMKPj4KPj4+Cj4+PiBOaWNvbGFzCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
