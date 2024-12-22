Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 38064E77188
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Dec 2024 03:20:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gq8Q3/oHfdPnPHlB5DWmVW/sXRjphITRBx2N9Q3S9aM=; b=cwnTlFhgGMVhZ/
	SktSWLm3ulHACx28rKybMLwqIhKpmkVMqcEuWNOT6bT6vJ8qdKVJWeaiRaPY0solsPCKfuWpWsEd0
	zargudvBvyv+HHE1LmGDyldofJscZwEx9LSJjspHsvdXQ4CacGlGlQGDN6hjb0LJtRgaHrrOOi+85
	NdEXLQI5+Af5NR5eYjUP+Et619cpzmulpkpUZMfya/sRl+a5YDp29wlrLCbiMdkPp8bDTspCVHrw7
	mZzjbh6uCbzlJ63lZBqCZBk+c4LX9mCSw2Et7xeO1BupP9jfxT/oNkshmX61yokj7P/T1jWRI4V5L
	s4ukAbdoYYJy2cHOGbUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPCVi-00000007jnz-0lwj;
	Sun, 22 Dec 2024 03:20:06 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tPCVf-00000007jmr-1bud
	for linux-rockchip@lists.infradead.org;
	Sun, 22 Dec 2024 03:20:05 +0000
X-QQ-mid: bizesmtpip2t1734837497t7pbuus
X-QQ-Originating-IP: Hv7JhY9QfQx3kbGv6g4jg1IAps6nce7HytB7cks8nkk=
Received: from [IPV6:240f:10b:7440:1:75fe:f8f3 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sun, 22 Dec 2024 11:18:13 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 15497229287343789713
Message-ID: <F023D8BD1C0C2248+234bbc41-2871-49a9-be98-4475e4e6da49@radxa.com>
Date: Sun, 22 Dec 2024 12:18:13 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 04/12] arm64: dts: rockchip: Rename regulator for
 pcie2x1l2 for Radxa ROCK 5C
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-5-naoki@radxa.com>
 <f525d875-734b-4c41-95ba-be07b11f8e1c@kernel.org>
 <47B1D9F5B9EC2A94+55e35302-64c6-4651-8f27-416723b8218b@radxa.com>
 <57C678CDC48F30E6+634c520a-a0b8-478f-9b5b-8b746aa5ab9c@radxa.com>
 <99e54beb-fa4b-4d51-9ab7-b35cc61dc164@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <99e54beb-fa4b-4d51-9ab7-b35cc61dc164@kernel.org>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: OOZmLa3PEXtrKfF2/l4PZnr56iHEATFHHCTSNSCK/yx9wyPnIXqRf/lo
	LY4KUG8JEOJUHth0WVGMMtNjIKa1YMInaKDBkiKQbMdEhuAVSZzUv8AmG0/QgyIgwnolxyG
	kTeJGErKPhNI/3tGhGyEdgLFk52koOLKNpZUkPv4NjTNtV9hnCjkbI8y+uPbq/mePWogJAl
	I01PmwHrxo7wtQb9p9bkiR7C7/XicR1IIgRVz8RpQ6mEfJ35C6e/h6KQbY07OjzcZOP5YFg
	SC8lacJr7IQiNqvg+sQKwCXcu73s8Gl1mqDLeaON7nb4fPjiL/aO472E1/mo8JmErvW1ypB
	4DPBLYo9O5mh+lw/HKPC/xbnEjhddNd6hLQzGlqe94dgwRCIj/WLX1CuaDuDgeH6pzBuCf1
	GmJi9liRrprNx3LqjUEiBuoKLTnItpnvByUxJnzhWxX0QoerKnRcizUz2quovGZUcI4N8FL
	+aFMOr1ru+caA6KEaneFBgxqpnDMhb3vyMN8l/+0ShLHhRwTG4/5VVaC30eeWdKqMUgNmvN
	jzFAYPndRuXwaXX5G8ezovWjiSGNOyoI5iyAC28YI5rjMNsV9kXxWjP2XasmtadvmFlKaBA
	ic4rJ7eZAioPxfoOnPU6x/w2RbxJZuodsdvrkKx4ogjqKh2jrLrtzOdJHd+WNoKVEXOsag1
	TIWPKgrDcPqDvBGpworcqTWSAS0l6UJuKWXKkAGTi08cgPYK7+0b/E7LWtmZnhmBLApcd/I
	FBR0rlc5zVYv5J6Ron+wygytX6rfStTCANgv9mdJnm/p4dV772GM5oxgpKdHe/hMV5k/5it
	C0JNigcpRq5zu2HddyVbccX85jDQktw49XfnGvOzL8MUPl3HphkLTGpxWUMbFkvZIZo44FL
	aDVtjbP1wXPiRi7OnxMUVjqD2SoDUEbDWKgz3h9CXMBPFFvKLiRLLuYf1JlpEG/S
X-QQ-XMRINFO: NI4Ajvh11aEj8Xl/2s1/T8w=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241221_192003_915217_60141F3E 
X-CRM114-Status: GOOD (  15.14  )
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

T24gMTIvMjIvMjQgMDU6MTUsIEtyenlzenRvZiBLb3psb3dza2kgd3JvdGU6Cj4gT24gMjAvMTIv
MjAyNCAwNzo1MSwgRlVLQVVNSSBOYW9raSB3cm90ZToKPj4gSGkgS3J6eXN6dG9mLAo+Pgo+PiBD
b3VsZCB5b3UgcGxlYXNlIHJlcGx5IHRvIHRoaXMgZW1haWw/Cj4+IChOb3QgZm9yIG1lLCBidXQg
Zm9yIGV2ZXJ5b25lKQo+IAo+IFlvdSBoYXZlIG1lIGhvdyBtdWNoIHRpbWUuLi4gMyBkYXlzIHRv
IHJlcGx5PwoKc29ycnkuCgo+PiBCZXN0IHJlZ2FyZHMsCj4+Cj4+IC0tCj4+IEZVS0FVTUkgTmFv
a2kKPj4gUmFkeGEgQ29tcHV0ZXIgKFNoZW56aGVuKSBDby4sIEx0ZC4KPj4KPj4gT24gMTIvMTcv
MjQgMTA6MTEsIEZVS0FVTUkgTmFva2kgd3JvdGU6Cj4+PiBPbiAxMi8xNi8yNCAyMjozOCwgS3J6
eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4+PiBPbiAxNi8xMi8yMDI0IDEyOjMwLCBGVUtBVU1J
IE5hb2tpIHdyb3RlOgo+Pj4+PiBVc2UgY29uc2lzdGVudCBuYW1lIHdpdGggb3RoZXIgcmVndWxh
dG9ycy4gTm8gZnVuY3Rpb25hbCBjaGFuZ2UuCj4+Pj4+Cj4+Pj4+IEZpeGVzOiAzZGRmNWNkYjc3
ZTYgKCJhcm02NDogZHRzOiByb2NrY2hpcDogYWRkIFJhZHhhIFJPQ0sgNUMiKQo+Pj4+PiBTaWdu
ZWQtb2ZmLWJ5OiBGVUtBVU1JIE5hb2tpIDxuYW9raUByYWR4YS5jb20+Cj4+Pj4+IC0tLQo+Pj4+
PiBDaGFuZ2VzIGluIHY1Ogo+Pj4+PiAtIFJld29yZCBjb21taXQgbWVzc2FnZQo+Pj4+PiBDaGFu
Z2VzIGluIHY0Ogo+Pj4+PiAtIHJld29yZCBjb21taXQgbWVzc2FnZQo+Pj4+PiBDaGFuZ2VzIGlu
IHYzOgo+Pj4+PiAtIG5vbmUKPj4+Pj4gQ2hhbmdlcyBpbiB2MjoKPj4+Pj4gLSBuZXcKPj4+Pj4g
LS0tCj4+Pj4+ICDCoCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtcm9jay01
Yy5kdHMgfCA2ICsrKy0tLQo+Pj4+PiAgwqAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygr
KSwgMyBkZWxldGlvbnMoLSkKPj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTg4cy1yb2NrLTVjLmR0cyBiL2FyY2gvCj4+Pj4+IGFybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtcm9jay01Yy5kdHMKPj4+Pj4gaW5kZXggODU1ODlkMWE2
ZDNiLi42MWQ3NWFiNTAzYjIgMTAwNjQ0Cj4+Pj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4cy1yb2NrLTVjLmR0cwo+Pj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OHMtcm9jay01Yy5kdHMKPj4+Pj4gQEAgLTc2LDEzICs3NiwxMyBA
QCBwd20tZmFuIHsKPj4+Pj4gIMKgwqDCoMKgwqDCoMKgwqDCoCBwd21zID0gPCZwd20zIDAgNjAw
MDAgMD47Cj4+Pj4+ICDCoMKgwqDCoMKgIH07Cj4+Pj4+IC3CoMKgwqAgcGNpZTJ4MWwyXzN2Mzog
cmVndWxhdG9yLXBjaWUyeDFsMi0zdjMgewo+Pj4+PiArwqDCoMKgIHZjYzN2M19wY2llMngxbDI6
IHJlZ3VsYXRvci12Y2MzdjNfcGNpZTJ4MWwyIHsKPj4+Pgo+Pj4+IE5vLCBuZWl0aGVyIGV4cGxh
aW5lZCwgbm9yIGNvcnJlY3QuIFNlZSBEVFMgY29kaW5nIHN0eWxlLgo+Pj4+Cj4+Pj4gUGxlYXNl
IHVzZSBuYW1lIGZvciBhbGwgZml4ZWQgcmVndWxhdG9ycyB3aGljaCBtYXRjaGVzIGN1cnJlbnQg
Zm9ybWF0Cj4+Pj4gcmVjb21tZW5kYXRpb246ICdyZWd1bGF0b3ItWzAtOV12WzAtOV0nCj4+Pj4K
Pj4+PiBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2
YWxkcy9saW51eC5naXQvCj4+Pj4gdHJlZS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvcmVndWxhdG9yL2ZpeGVkLXJlZ3VsYXRvci55YW1sPwo+Pj4+IGg9djYuMTEtcmMxI240Ngo+
Pj4KPj4+ICdyZWd1bGF0b3ItWzAtOV12WzAtOV0nIGlzIHByZWZlcnJlZCwgYnV0ICdyZWd1bGF0
b3ItWzAtOWEtei1dKycgaXMgYWxzbwo+Pj4gcGVybWl0dGVkLCByaWdodD8KPj4+Cj4+PiBpLmUu
IHJlZ3VsYXRvci12Y2MzdjNfcGNpZTJ4MWwyIHNob3VsZCBiZSByZWd1bGF0b3ItdmNjM3YzLXBj
aWUyeDFsMgo+Pj4KPj4+Cj4+PiBPciwgc2hvdWxkIHdlIHJldmVydCBiZWxvdyBwYXRjaCBhbmQg
dXNlICdyZWd1bGF0b3ItWzAtOV12WzAtOV0nPwo+Pj4KPj4+ICAgwqBodHRwczovL2xvcmUua2Vy
bmVsLm9yZy8KPj4+IGFsbC8wYWU0MDQ5My05M2U5LTQwY2QtOWNhOS05OTBhZTA2NGYyMWFAZ21h
aWwuY29tLwo+Pj4KPj4+IElzICdyZWd1bGF0b3ItMHYwJyB2YWxpZD8KPiAKPiBXaHkgd291bGQg
aXQgYmUgdmFsaWQ/IENhbiB5b3UgaGF2ZSByZWd1bGF0b3Igd2l0aCAwIHZvbHRzPwoKVGhlcmUg
bWF5IGJlIGEgLmR0c2kgdGhhdCBpcyBzaGFyZWQgYWNyb3NzIG11bHRpcGxlIC5kdHMsIHNvIHNv
bWUgCnJlZ3VsYXRvcnMgbWF5IG5vdCBiZSBhYmxlIHRvIHNldCBhIHNwZWNpZmljIHZvbHRhZ2Ug
aW4gdGhlIC5kdHNpLgoKSG93IHNob3VsZCBJIGRlc2NyaWJlIGl0PwoKPj4+IElzICdyZWd1bGF0
b3ItMTJ2MCcgaW52YWxpZD8KPiAKPiBSZWFkIHRoZSBiaW5kaW5nLiBJIGdhdmUgeW91IHZlcnkg
c3BlY2lmaWMgbGluay4KCjQ2fCAgICAgICAtIGRlc2NyaXB0aW9uOiBQcmVmZXJyZWQgbmFtZSBp
cyAncmVndWxhdG9yLVswLTlddlswLTldJwo0N3wgICAgICAgICBwYXR0ZXJuOiAnXnJlZ3VsYXRv
cigtWzAtOV0rdlswLTldK3wtWzAtOWEtei1dKyk/JCcKClRoZSAiZGVzY3JpcHRpb24iIGFuZCAi
cGF0dGVybiIgZG9uJ3QgbWF0Y2guIFdoYXQgeW91IHByb3ZpZGVkIGlzIGEgbGluayAKdG8gdGhl
ICJkZXNjcmlwdGlvbiIuCgo+Pj4gSG93IHNob3VsZCB3ZSBoYW5kbGUgbXVsdGlwbGUgMXY4LzN2
My81djAgcmVndWxhdG9ycz8KPiAKPiBKdXN0IGFkZCBzdWZmaXguIEJ1dCB1c3VhbGx5IG1vcmUg
dGhhbiBvbmUgc3VmZml4LCB2Y2MrM3YzK3BjaWVfMngxbDIsCj4gbWVhbnMgeW91IGNyZWF0ZWQg
YSB2ZXJ5IHNwZWNpZmljIG5hbWUuCgpTbyBzaG91bGRuJ3Qgd2UgcmVmZXIgdG8gdGhlIHNjaGVt
YXRpYz8KCkJlc3QgcmVnYXJkcywKCi0tCkZVS0FVTUkgTmFva2kKUmFkeGEgQ29tcHV0ZXIgKFNo
ZW56aGVuKSBDby4sIEx0ZC4KCj4gQmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgo+IAoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
