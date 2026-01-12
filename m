Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA8C0D2502F
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jan 2026 03:56:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NuKlzNhJPaCUk6d2JbYaGPEIlKg0lVRI1cpdztAPF30=; b=2kOdysFC05k9JS
	2muic5oU8KsQn27hGf8qojX76Xwbmp2F+QgfEOPUAk8C6wpQaegt6Zonv/y6GpiuJiyQ8uxbTgj6d
	mnMSLt5OBWPf4xEYjQjTL0bTnolnKM4fc4rIf1h6151MKs0aOES/724aEPtfKcrMLJPs0j7j9sQ+O
	Pdg/6W3Xuz4ggTOrQdHHEe6uU1Jxvl3EWnJ+MFlQeqsu/e4JD+I11xXM0HyKt4FCvqPbWKSYzto0U
	r480glyvFiHdNHby6eso+X11jrKJRwvTQcVHCbgoZNvxFjm2510bi4HykFz0wLhflRNv6DqYzzWWQ
	ZjzrOmCl19l3WYf0w5Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vf92V-00000004jgH-25JN;
	Mon, 12 Jan 2026 03:56:23 +0000
Received: from mail-m19731114.qiye.163.com ([220.197.31.114])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vf92T-00000004jfl-0Vpv;
	Mon, 12 Jan 2026 03:56:22 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3044e44ca;
	Mon, 12 Jan 2026 11:56:16 +0800 (GMT+08:00)
Message-ID: <8536413c-8687-4d75-befb-8f25e54838bf@rock-chips.com>
Date: Mon, 12 Jan 2026 11:56:15 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-rockchip@lists.infradead.org,
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de, ulf.hansson@linaro.org
Subject: Re: [PATCH v1 0/3] mmc: dw_mmc-rockchip: Add stability quirk for
 NanoPi R76S
To: Marco Schirrmeister <mschirrmeister@gmail.com>
References: <20260110010715.1610159-1-mschirrmeister@gmail.com>
 <67ccb8f6-f9bd-4266-b79a-b688bd6d030b@rock-chips.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <67ccb8f6-f9bd-4266-b79a-b688bd6d030b@rock-chips.com>
X-HM-Tid: 0a9bb058ed4309cckunm6534380e27c895
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkhITFYaGRhMSB9CTUxKTE9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=gkLq5RkUHA/jjWV8Rk9VWuM4wzc6Zkhxh4l2+J8YzBQDeo+6LUx5DqvwVrTPt3RE8ZlKH9pOP2BWfyeSzwxRyYdR9RTR1NU1iIzSLk/0WsOZlyk+LQ43RybaNoXpmbjGiBQTewErGr5qmgbjF5TCVcD8xIDtHuhaRWh316d8Ktk=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=M5HkEfQNGnj6jOwDHh//dxwlKfw3KT7shLqCV0JgOhc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260111_195621_358372_DB7CA79B 
X-CRM114-Status: GOOD (  18.31  )
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

5ZyoIDIwMjYvMDEvMTIg5pif5pyf5LiAIDk6MzIsIFNoYXduIExpbiDlhpnpgZM6Cj4g5ZyoIDIw
MjYvMDEvMTAg5pif5pyf5YWtIDk6MDcsIE1hcmNvIFNjaGlycm1laXN0ZXIg5YaZ6YGTOgo+PiBU
aGlzIHNlcmllcyBhZGRyZXNzZXMgYSBtaWNyb1NEIHN0YWJpbGl0eSBpc3N1ZSBvbiB0aGUgRnJp
ZW5kbHlFbGVjCj4+IE5hbm9QaSBSNzZTIChSSzM1NzYpLiBUaGUgYm9hcmQgY3VycmVudGx5IHN1
ZmZlcnMgZnJvbSBhIDQwMGtIego+PiByZXR1bmluZyBsb29wIHdoZW4gdGhlIGNvbnRyb2xsZXIg
YXR0ZW1wdHMgdG8gZW50ZXIgcnVudGltZS1zdXNwZW5kCj4+IGR1cmluZyBpZGxlIHBlcmlvZHMu
Cj4+Cj4+IEV2aWRlbmNlIG9mIHRoZSBmYWlsdXJlIGluIGRtZXNnOgo+PiBbRnJpIEphbsKgIDIg
MDE6Mjg6MDIgMjAyNl0gbW1jX2hvc3QgbW1jMTogQnVzIHNwZWVkIChzbG90IDApID0gNDAwMDAw
SHoKPj4gW0ZyaSBKYW7CoCAyIDAxOjI4OjAzIDIwMjZdIG1tY19ob3N0IG1tYzE6IEJ1cyBzcGVl
ZCAoc2xvdCAwKSA9IAo+PiAxOTgwMDAwMDBIego+PiBbRnJpIEphbsKgIDIgMDE6Mjg6MDMgMjAy
Nl0gZHdtbWNfcm9ja2NoaXAgMmEzMTAwMDAubW1jOiBTdWNjZXNzZnVsbHkgCj4+IHR1bmVkIHBo
YXNlIHRvIDIzMwo+PiBbRnJpIEphbsKgIDIgMDE6Mjg6MDQgMjAyNl0gbW1jX2hvc3QgbW1jMTog
QnVzIHNwZWVkIChzbG90IDApID0gNDAwMDAwSHoKPj4KPiAKPiBEb2VzIHRoaXMgcHJvYmxlbSBo
YXBwZW4gd2l0aCBhbGwgbWljcm9TRHMgb3IganVzdCAqYSogbWljcm9TRCBwZXIKPiB5b3VyIGRl
c2NyaXB0aW9uPwo+IEhhdmUgeW91IGV2ZXIgdHJpZWQgdG8gZGlzYWJsZSBTRFIxMDQgc3VwcG9y
dD8KPiAKCkEgcXVpY2sgdXBkYXRlLgoKSSBmb3VuZCBzZXZlcmFsIHByb2JsZW1zIG9uIFJLMzU3
NiBmb3Igc3VwcG9ydGluZyBzZCBjYXJkcy4gSSB3b25kZXJlZApob3cgYWxsIHVwc3RyZWFtIFJL
MzU3NiBib2FyZHMgY2xhaW1pbmcgU0Qgc3VwcG9ydCB3b3JrPyBBbnl3YXksIEkgc2VudAphIHNl
cmllcyB0byB0aGUgbGlzdFsxXSwgbm90IHN1cmUgaWYgaXQgZml4ZXMgdGhlIHByb2JsZW0geW91
IGZhY2VkLCBidXQKdGhlc2Ugc2hvdWxkIGJlIHRoZSByaWdodCBwYXRjaGVzIHlvdSBzaG91bGQg
aGF2ZSBhIHRyeS4KCgpbMV1odHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8x
NzY4MTg5NzY4LTk2MzMzLTEtZ2l0LXNlbmQtZW1haWwtc2hhd24ubGluQHJvY2stY2hpcHMuY29t
L1QvI3QKCj4+IFRlc3RpbmcgY29uZmlybWVkIHRoYXQgdGhlIGlzc3VlIGNhbiBiZSBtYW51YWxs
eSBhZGRyZXNzZWQgYnkKPj4gZGlzYWJsaW5nIHJ1bnRpbWUgUE0gdmlhIHN5c2ZzOgo+PiBlY2hv
IG9uID4gL3N5cy9kZXZpY2VzL3BsYXRmb3JtL3NvYy8yYTMxMDAwMC5tbWMvcG93ZXIvY29udHJv
bAo+Pgo+PiBJIGV4cGVyaW1lbnRlZCB3aXRoIHZhcmlvdXMgY2hhbmdlcyBpbiB0aGUgRGV2aWNl
IFRyZWUsIGluY2x1ZGluZwo+PiBsb3dlcmluZyB0aGUgYnVzIGZyZXF1ZW5jeSBhbmQgYXR0ZW1w
dGluZyB0byBrZWVwIHRoZSBwb3dlciBkb21haW5zCj4+IGFjdGl2ZSwgYnV0IG5vdGhpbmcgc3Rv
cHBlZCB0aGUgcmV0dW5pbmcgbG9vcC4KPj4gVGhlIGlzc3VlIG9ubHkgd2VudCBhd2F5IHdoZW4g
SSBmb3JjZWQgdGhlIGNvbnRyb2xsZXIgdG8gc3RheSBhY3RpdmUKPj4gYnkgZGlzYWJsaW5nIHRo
ZSBydW50aW1lIHBvd2VyIG1hbmFnZW1lbnQuCj4+Cj4+IFRoaXMgcXVpcmsgaXMgdGhlIG9ubHkg
d2F5IEkgaGF2ZSBmb3VuZCB0byBrZWVwIHRoZSBTRFIxMDQgbGluayBmcm9tCj4+IGNyYXNoaW5n
IG9uIHRoZSBOYW5vUGkgUjc2UywgSSBhbSBvcGVuIHRvIHN1Z2dlc3Rpb25zIGlmIHRoZXJlIGlz
Cj4+IGEgYmV0dGVyIHdheSB0byBoYW5kbGUgdGhpcyBpbiB0aGUgZHJpdmVyIG9yIHRoZSBEVFMu
Cj4+Cj4+IE1hcmNvIFNjaGlycm1laXN0ZXIgKDMpOgo+PiDCoMKgIGR0LWJpbmRpbmdzOiBtbWM6
IHJvY2tjaGlwLWR3LW1zaGM6IGFkZCByb2NrY2hpcCxkaXNhYmxlLXJ1bnRpbWUtcG0KPj4gwqDC
oCBtbWM6IGhvc3Q6IGR3X21tYy1yb2NrY2hpcDogYWRkIHJvY2tjaGlwLGRpc2FibGUtcnVudGlt
ZS1wbSBxdWlyawo+PiDCoMKgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBhZGQgc3RhYmlsaXR5IHF1
aXJrIHRvIE5hbm9QaSBSNzZTCj4+Cj4+IMKgIC4uLi9iaW5kaW5ncy9tbWMvcm9ja2NoaXAtZHct
bXNoYy55YW1swqDCoMKgwqDCoMKgwqAgfMKgIDggKysrKysrCj4+IMKgIC4uLi9ib290L2R0cy9y
b2NrY2hpcC9yazM1NzYtbmFub3BpLXI3NnMuZHRzwqAgfMKgIDEgKwo+PiDCoCBkcml2ZXJzL21t
Yy9ob3N0L2R3X21tYy1yb2NrY2hpcC5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDI1ICsrKysr
KysrKysrKysrKystLS0KPj4gwqAgMyBmaWxlcyBjaGFuZ2VkLCAzMSBpbnNlcnRpb25zKCspLCAz
IGRlbGV0aW9ucygtKQo+Pgo+IAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
