Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52275CCD1BF
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Oct 2025 00:28:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9SUbFlDgoeatg5oK6wrGgekPb7rk84CFrecquPNyuNg=; b=DrW9LNt0AtcVlN
	FNHP6U3L9ee7v0JWxiYddPMD4ql+hHTUPg6X1pNvu+MOmeDyPqDmF/abyPbDgflat5r6biS36Yan7
	7Wk/xaEBFAbP8FuEPolDuLwvkegVF3WTbajYGjtXNWvUc81JRdFAZsHjHkV/5s205m5K1vnSxVehm
	fNH9IrKW1j1cp7JcFfGFtStURKUAxwUbJmq6vyATmMLr9iKovexS0xP/J6dDoPQ+tkaQp2gMFxUR/
	Im4kUaet9b1kFXATWafKih5/dycV141tINOqjmKdbV9+6fjUIG01wijMsh4fgtX9FiEWUOLgJDHef
	oN8NCJCuRKdbBqgsX9yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDu36-0000000Grbf-3aE9;
	Wed, 29 Oct 2025 00:28:24 +0000
Received: from mail-m1973177.qiye.163.com ([220.197.31.77])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDu33-0000000GrbC-3tL5;
	Wed, 29 Oct 2025 00:28:23 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 278abcfb1;
	Wed, 29 Oct 2025 08:28:13 +0800 (GMT+08:00)
Message-ID: <3fcd5562-a367-41e9-8bff-51e5990145e2@rock-chips.com>
Date: Wed, 29 Oct 2025 08:28:10 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Niklas Cassel <cassel@kernel.org>, Hans Zhang <18255117159@163.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1 1/2] PCI: dw-rockchip: Add remove callback for resource
 cleanup
To: Anand Moon <linux.amoon@gmail.com>
References: <20251027145602.199154-1-linux.amoon@gmail.com>
 <20251027145602.199154-2-linux.amoon@gmail.com>
 <4fe0ccf9-8866-443a-8083-4a2af7035ee6@rock-chips.com>
 <CANAwSgRXcg4tO00SNu77EKdp6Ay6X7+_f-ZoHxgkv1himxdi0Q@mail.gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <CANAwSgRXcg4tO00SNu77EKdp6Ay6X7+_f-ZoHxgkv1himxdi0Q@mail.gmail.com>
X-HM-Tid: 0a9a2d5d7fa609cckunm42001d6025423a
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUJKGlYdHRlOTRlIQ0MYQkxWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=EnhdmNK7UPDdSC1XgqbfxEnNOjTCjGjaaUnxh2iZtaj5IhIedJTIvIhcCv8kSzJCibxayqMndZwLbtjWAa0MSChiyaL9qn1PrpBiqijpLzyLMPj9MTV4tpwSc+SzHZbhlLbls67xsUtwKxdbSWyM9FPC6TLvQ0aYkJ2sb7BHuXI=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=VXeB1XRi1t4+hav00/PO85fUCGM4DHZek+mbIiPUEtA=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_172822_149320_32685223 
X-CRM114-Status: GOOD (  27.38  )
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

CuWcqCAyMDI1LzEwLzI4IOaYn+acn+S6jCAxNzozNCwgQW5hbmQgTW9vbiDlhpnpgZM6Cj4gSGkg
U2hhd24sCj4gCj4gVGhhbmtzIGZvciB5b3VyIHJldmlldyBjb21tZW50cy4KPiAKPiBPbiBUdWUs
IDI4IE9jdCAyMDI1IGF0IDA1OjU2LCBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNv
bT4gd3JvdGU6Cj4+Cj4+IOWcqCAyMDI1LzEwLzI3IOaYn+acn+S4gCAyMjo1NSwgQW5hbmQgTW9v
biDlhpnpgZM6Cj4+PiBJbnRyb2R1Y2UgYSAucmVtb3ZlKCkgY2FsbGJhY2sgdG8gdGhlIFJvY2tj
aGlwIERlc2lnbldhcmUgUENJZQo+Pj4gY29udHJvbGxlciBkcml2ZXIgdG8gZW5zdXJlIHByb3Bl
ciByZXNvdXJjZSBkZWluaXRpYWxpemF0aW9uIGR1cmluZwo+Pj4gZGV2aWNlIHJlbW92YWwuIFRo
aXMgaW5jbHVkZXMgZGlzYWJsaW5nIGNsb2NrcyBhbmQgZGVpbml0aWFsaXppbmcgdGhlCj4+PiBQ
Q0llIFBIWS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBBbmFuZCBNb29uIDxsaW51eC5hbW9vbkBn
bWFpbC5jb20+Cj4+PiAtLS0KPj4+ICAgIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUt
ZHctcm9ja2NoaXAuYyB8IDExICsrKysrKysrKysrCj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgMTEg
aW5zZXJ0aW9ucygrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ll
LWR3LXJvY2tjaGlwLmMKPj4+IGluZGV4IDg3ZGQyZGQxODhiNC4uYjg3OGFlOGUyYjNlIDEwMDY0
NAo+Pj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5j
Cj4+PiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMK
Pj4+IEBAIC03MTcsNiArNzE3LDE2IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9wcm9iZShz
dHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+Pj4gICAgICAgIHJldHVybiByZXQ7Cj4+PiAg
ICB9Cj4+Pgo+Pj4gK3N0YXRpYyB2b2lkIHJvY2tjaGlwX3BjaWVfcmVtb3ZlKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYpCj4+PiArewo+Pj4gKyAgICAgc3RydWN0IGRldmljZSAqZGV2ID0g
JnBkZXYtPmRldjsKPj4+ICsgICAgIHN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCA9IGRl
dl9nZXRfZHJ2ZGF0YShkZXYpOwo+Pj4gKwo+Pj4gKyAgICAgLyogUGVyZm9ybSBvdGhlciBjbGVh
bnVwcyBhcyBuZWNlc3NhcnkgKi8KPj4+ICsgICAgIGNsa19idWxrX2Rpc2FibGVfdW5wcmVwYXJl
KHJvY2tjaGlwLT5jbGtfY250LCByb2NrY2hpcC0+Y2xrcyk7Cj4+PiArICAgICByb2NrY2hpcF9w
Y2llX3BoeV9kZWluaXQocm9ja2NoaXApOwo+Pj4gK30KPj4KPj4gVGhhbmtzIGZvciB0aGUgcGF0
Y2guCj4+Cj4+IERvdSB5b3UgbmVlZCB0byBjYWxsIGR3X3BjaWVfaG9zdF9kZWluaXQoKT8KPiBJ
IGZlZWwgdGhlIHJvY2tjaGlwX3BjaWVfcGh5X2RlaW5pdCB3aWxsIHBvd2VyIG9mZiB0aGUgcGh5
Cj4+IEFuZCBJIHRoaW5rIHlvdSBzaG91bGQgYWxzbyB0cnkgdG8gbWFzayBQQ0lFX0NMSUVOVF9J
TlRSX01BU0tfTUlTQyBhbmQKPj4gcmVtb3ZlIHRoZSBpcnEgZG9tYWluIGFzIHdlbGwuCj4+Cj4+
IGlmIChyb2NrY2hpcC0+aXJxX2RvbWFpbikgewo+PiAgICAgICAgICBpbnQgdmlycSwgajsKPj4g
ICAgICAgICAgZm9yIChqID0gMDsgaiA8IFBDSV9OVU1fSU5UWDsgaisrKSB7Cj4+ICAgICAgICAg
ICAgICAgICAgdmlycSA9IGlycV9maW5kX21hcHBpbmcocm9ja2NoaXAtPmlycV9kb21haW4sIGop
Owo+PiAgICAgICAgICAgICAgICAgIGlmICh2aXJxID4gMCkKPj4gICAgICAgICAgICAgICAgICAg
ICAgICAgIGlycV9kaXNwb3NlX21hcHBpbmcodmlycSk7Cj4+ICAgICAgICAgICB9Cj4+ICAgICAg
ICAgIGlycV9zZXRfY2hhaW5lZF9oYW5kbGVyX2FuZF9kYXRhKHJvY2tjaGlwLT5pcnEsIE5VTEws
IE5VTEwpOwo+PiAgICAgICAgICBpcnFfZG9tYWluX3JlbW92ZShyb2NrY2hpcC0+aXJxX2RvbWFp
bik7Cj4+IH0KPj4KPiBJIGhhdmUgaW1wbGVtZW50ZWQgcmVzb3VyY2UgY2xlYW51cCBpbiByb2Nr
Y2hpcF9wY2llX3JlbW92ZSwKPiB3aGljaCBpcyBpbnZva2VkIHdoZW4gdGhlIHN5c3RlbSBpcyBz
aHV0dGluZyBkb3duLgo+IFlvdXIgZmVlZGJhY2sgb24gdGhlIHVwZGF0ZWQgY29kZSBpcyB3ZWxj
b21lLgo+IAo+IHN0YXRpYyB2b2lkIHJvY2tjaGlwX3BjaWVfcmVtb3ZlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCj4gewo+ICAgICAgICAgIHN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2
LT5kZXY7Cj4gICAgICAgICAgc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwID0gZGV2X2dl
dF9kcnZkYXRhKGRldik7Cj4gICAgICAgICAgaW50IGlycTsKPiAKPiAgICAgICAgICBpcnEgPSBv
Zl9pcnFfZ2V0X2J5bmFtZShkZXYtPm9mX25vZGUsICJsZWdhY3kiKTsKPiAgICAgICAgICBpZiAo
aXJxIDwgMCkKPiAgICAgICAgICAgICAgICAgIHJldHVybjsKPiAKPiAgICAgICAgICAvKiBQZXJm
b3JtIG90aGVyIGNsZWFudXBzIGFzIG5lY2Vzc2FyeSAqLwo+ICAgICAgICAgIC8qIGNsZWFyIHVw
IElOVFIgc3RhYXR1cyByZWdpc3RlciAqLwo+ICAgICAgICAgIHJvY2tjaGlwX3BjaWVfd3JpdGVs
X2FwYihyb2NrY2hpcCwgMHhmZmZmZmZmZiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgUENJRV9DTElFTlRfSU5UUl9TVEFUVVNfTUlTQyk7Cj4gICAgICAgICAgaWYgKHJvY2tj
aGlwLT5pcnFfZG9tYWluKSB7Cj4gICAgICAgICAgICAgICAgICBpbnQgdmlycSwgajsKPiAgICAg
ICAgICAgICAgICAgIGZvciAoaiA9IDA7IGogPCBQQ0lfTlVNX0lOVFg7IGorKykgewo+ICAgICAg
ICAgICAgICAgICAgICAgICAgICB2aXJxID0gaXJxX2ZpbmRfbWFwcGluZyhyb2NrY2hpcC0+aXJx
X2RvbWFpbiwgaik7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgIGlmICh2aXJxID4gMCkKPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBpcnFfZGlzcG9zZV9tYXBwaW5nKHZpcnEp
Owo+ICAgICAgICAgICAgICAgICAgfQo+ICAgICAgICAgICAgICAgICAgaXJxX3NldF9jaGFpbmVk
X2hhbmRsZXJfYW5kX2RhdGEoaXJxLCBOVUxMLCBOVUxMKTsKPiAgICAgICAgICAgICAgICAgIGly
cV9kb21haW5fcmVtb3ZlKHJvY2tjaGlwLT5pcnFfZG9tYWluKTsKPiAgICAgICAgICB9Cj4gCj4g
ICAgICAgICAgY2xrX2J1bGtfZGlzYWJsZV91bnByZXBhcmUocm9ja2NoaXAtPmNsa19jbnQsIHJv
Y2tjaGlwLT5jbGtzKTsKPiAgICAgICAgICAvKiBwb3dlcm9mZiB0aGUgcGh5ICovCj4gICAgICAg
ICAgcm9ja2NoaXBfcGNpZV9waHlfZGVpbml0KHJvY2tjaGlwKTsKPiAgICAgICAgICAvKiByZWxl
YXNlIHRoZSByZXNldCAqLwoKcmVsZWFzZT8gT3IgInJlc2V0IHRoZSBjb250cm9sbGVyIj8KCj4g
ICAgICAgICAgcmVzZXRfY29udHJvbF9hc3NlcnQocm9ja2NoaXAtPnJzdCk7Cj4gICAgICAgICAg
cG1fcnVudGltZV9wdXRfc3luYyhkZXYpOwo+ICAgICAgICAgIHBtX3J1bnRpbWVfZGlzYWJsZShk
ZXYpOwo+ICAgICAgICAgIHBtX3J1bnRpbWVfbm9fY2FsbGJhY2tzKGRldik7Cj4gfQo+IAo+PiBB
bm90aGVyIHRoaW4gSSBub3RpY2VkIGlzIHNob3VsZCB3ZSBjYWxsIHBtX3J1bnRpbWVfKiBoZXJl
IGZvciBob3BlIHRoYXQKPj4gZ2VucGQgY291bGQgYmUgcG93ZXJlZCBkb253IG9uY2UgcmVtb3Zl
ZD8KPj4KPiBJIGNvdWxkIG5vdCBmaW5kICdnZW5wZCcgKHBvd2VyIGRvbWFpbikgdXNlZCBpbiB0
aGUgUENJZSBkcml2ZXIKPiBJZiB3ZSBoYXZlIGFuIGV4YW1wbGUgdG8gdXNlIGdlbnBkIEkgd2ls
bCB1cGRhdGUgdGhpcy4KID4gPiBJIGFtIGFsc28gbG9va2luZyBpbnRvIGFkZGluZyBOT0lSUV9T
WVNURU1fU0xFRVBfUE1fT1BTCgpUaGF0IHNvdW5kcyBnb29kLCB5b3UgY2FuIHBpY2sgdXAgbXkg
cGF0Y2hbMV0gaWYgeW91J2QgbGlrZSB0byBjb250aW51ZQphZGRyZXNzaW5nIHRoZSBjb21tZW50
cyB0aGF0IEkgaGF2ZW4ndCBoYWQgdGltZSB0byB0aGluayBtb3JlLgoKWzFdIGh0dHBzOi8vd3d3
LnNwaW5pY3MubmV0L2xpc3RzL2xpbnV4LXBjaS9tc2cxNzE4NDYuaHRtbAoKPiAKPiBUaGFua3MK
PiAtQW5hbmQKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
