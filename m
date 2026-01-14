Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0FA9D30CDB
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 01:33:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GQPnfjg9u2VXiZhD2thb9TDFmsspGlG+ogoZOSZkRhY=; b=hS8NcMYSkxwqxR
	yoAge4w/f3lWkIfYjoKLOwM+WlOoc2XmbxOQIYoyR21+dljvPwV60ZK0rsOybwQ/Xrnt1vbnxdtHB
	2LHW5kPH4TRnjX/woevYy8suICxlxeDJAF6JsUklRtGKIarsxyD/r04Gp9uNxbvOJjz3hF0N4++tE
	MF/pGTr4Oq5brPfr/Q1xn8D8notin3iWLf5WmkRNeSi8MP7S3nXxdNVdTtgpgAE3+s6gbPyF3ytSg
	5OGGsjoB2VWJKihZsI6GopPTsCTSchtu7sijWQ0EnVeTLV+1YgEYU78myhGlSGUwVKEkpV7yL+INk
	zG+08tSe7k+XwbV1yayA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfpl0-00000007we8-2yQW;
	Wed, 14 Jan 2026 01:33:10 +0000
Received: from mail-m155106.qiye.163.com ([101.71.155.106])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfpkw-00000007wdj-1VBS
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jan 2026 01:33:09 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 308ba3e68;
	Wed, 14 Jan 2026 09:32:56 +0800 (GMT+08:00)
Message-ID: <1814707c-1ab1-414e-8f84-fce748b6f165@rock-chips.com>
Date: Wed, 14 Jan 2026 09:32:55 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Jingoo Han <jingoohan1@gmail.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-rockchip@lists.infradead.org,
 Niklas Cassel <cassel@kernel.org>, linux-pci@vger.kernel.org
Subject: Re: [PATCH] PCI: dw-rockchip: Disable BAR 0 and BAR 1 for RC mode
To: Manivannan Sadhasivam <mani@kernel.org>
References: <1766570461-138256-1-git-send-email-shawn.lin@rock-chips.com>
 <jrah3krizuwyfwhmvq67wjsye2eeompjflpuo4dz2mgugi5txt@np6gknrtbkqo>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <jrah3krizuwyfwhmvq67wjsye2eeompjflpuo4dz2mgugi5txt@np6gknrtbkqo>
X-HM-Tid: 0a9bba2269fa09cckunmeed149924252e5
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkwZGFYeH00fH04fGE4ZH0tWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=MTEX6kXVb9GwYym+vUUGXj0LzWIjA8mOHM1ygjN5OJ3/8S2sIxAU8C+p+aN/L/ohDAaUbTQ1ln7ZH8GqZo4YykFTzgwW4u087OC0Hg4z4be+kO3yQ2RN6Ik+sblWGa4MQRCeTFqTQDqmLLzCWg87IMcIXWY6usY7NbtunGSsedw=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=RwuldkTHkRdgDbBtixJ83jhlVo/aPu3UyniC5of32nU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_173306_911035_76702BCC 
X-CRM114-Status: GOOD (  20.35  )
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

SGkgTWFuaQoK5ZyoIDIwMjYvMDEvMTMg5pif5pyf5LqMIDIyOjI5LCBNYW5pdmFubmFuIFNhZGhh
c2l2YW0g5YaZ6YGTOgo+IE9uIFdlZCwgRGVjIDI0LCAyMDI1IGF0IDA2OjAxOjAxUE0gKzA4MDAs
IFNoYXduIExpbiB3cm90ZToKPj4gVG8gc2xpdGVuY2UgdGhlIHVzZWxlc3MgYmFyIGFsbG9jYXRp
b24gZXJyb3IgbG9nIG9mIFJDIHdoZW4KPj4gc2Nhbm5pbmcgYnVzLCBhcyBSQyBkb2Vzbid0IG5l
ZWQgQkFScyBhdCBhbGwuCj4gCj4gSXQgaXMgbm90IFJDLCBidXQgUm9vdCBQb3J0LiBJdCBpcyBP
SyB0byBkaXNhYmxlIHRoZSBSb290IFBvcnQgQkFScyBpZiB0aGV5Cj4gZG9uJ3Qgc2VydmUgYW55
IHB1cnBvc2UsIGJ1dCBJIHRoaW5rIHRoZSBpc3N1ZSBpcyB0aGF0IHRoZSBCQVIgc2l6ZSBpcyBi
b2d1cy4KPiBCb3RoIEJBUnMgcmVwb3J0IDFHaUIgb2Ygc2l6ZSwgd2hpY2ggSSBkb24ndCB0aGlu
ayBpdCBtYWtlcyBzZW5zZSBmb3IgYSBSb290Cj4gUG9ydC4KPiAKClN1cmUsIGl0J3MgdGhlIHJv
b3QgcG9ydCByZXBvcnRzIHRoZSBib2d1cyBCQVJTIHNpemUuCgo+IENhbiBJIHJld29yZCB0aGUg
Y29tbWl0IG1lc3NhZ2UgYXM6Cj4gCj4gU29tZSBSb2NrY2hpcCBQQ0llIFJvb3QgUG9ydCByZXBv
cnQgYm9ndXMgc2l6ZSBvZiAxR2lCIGZvciB0aGUgQkFSIG1lbW9yaWVzIGFuZAo+IHRoZXkgY2F1
c2UgYmVsb3cgcmVzb3VyY2UgYWxsb2NhdGlvbiBpc3N1ZSBkdXJpbmcgcHJvYmUuIFNpbmNlIHRo
ZXJlIGlzIG5vIHVzZQo+IG9mIHRoZSBSb290IFBvcnQgQkFSIG1lbW9yaWVzLCBkaXNhYmxlIGJv
dGggb2YgdGhlbS4KPiAKCkxvb2tzIGZpbmUgdG8gbWUuIFdvdWxkIHlvdSBwcmVmZXIgYSB2MiBv
ciB5b3UgY291bGQgYW1lbmQgdGhlIGNvbW1pdAptc2cgd2hpbGUgYXBwbHlpbmcgdGhpcyBwYXRj
aD8KClRoYW5rcy4KCj4gLSBNYW5pCj4gCj4+Cj4+ICAgIHBjaSAwMDAwOjAwOjAwLjA6IFsxZDg3
OjM1ODhdIHR5cGUgMDEgY2xhc3MgMHgwNjA0MDAgUENJZSBSb290IFBvcnQKPj4gICAgcGNpIDAw
MDA6MDA6MDAuMDogQkFSIDAgW21lbSAweDAwMDAwMDAwLTB4M2ZmZmZmZmZdCj4+ICAgIHBjaSAw
MDAwOjAwOjAwLjA6IEJBUiAxIFttZW0gMHgwMDAwMDAwMC0weDNmZmZmZmZmXQo+PiAgICBwY2kg
MDAwMDowMDowMC4wOiBST00gW21lbSAweDAwMDAwMDAwLTB4MDAwMGZmZmYgcHJlZl0KPj4gCS4u
Lgo+PiAgICBwY2kgMDAwMDowMDowMC4wOiBCQVIgMCBbbWVtIDB4OTAwMDAwMDAwLTB4OTNmZmZm
ZmZmXTogYXNzaWduZWQKPj4gICAgcGNpIDAwMDA6MDA6MDAuMDogQkFSIDEgW21lbSBzaXplIDB4
NDAwMDAwMDBdOiBjYW4ndCBhc3NpZ247IG5vIHNwYWNlCj4+ICAgIHBjaSAwMDAwOjAwOjAwLjA6
IEJBUiAxIFttZW0gc2l6ZSAweDQwMDAwMDAwXTogZmFpbGVkIHRvIGFzc2lnbgo+PiAgICBwY2kg
MDAwMDowMDowMC4wOiBST00gW21lbSAweGYwMjAwMDAwLTB4ZjAyMGZmZmYgcHJlZl06IGFzc2ln
bmVkCj4+ICAgIHBjaSAwMDAwOjAwOjAwLjA6IEJBUiAwIFttZW0gMHg5MDAwMDAwMDAtMHg5M2Zm
ZmZmZmZdOiByZWxlYXNpbmcKPj4gICAgcGNpIDAwMDA6MDA6MDAuMDogUk9NIFttZW0gMHhmMDIw
MDAwMC0weGYwMjBmZmZmIHByZWZdOiByZWxlYXNpbmcKPj4gICAgcGNpIDAwMDA6MDA6MDAuMDog
QkFSIDAgW21lbSAweDkwMDAwMDAwMC0weDkzZmZmZmZmZl06IGFzc2lnbmVkCj4+ICAgIHBjaSAw
MDAwOjAwOjAwLjA6IEJBUiAxIFttZW0gc2l6ZSAweDQwMDAwMDAwXTogY2FuJ3QgYXNzaWduOyBu
byBzcGFjZQo+PiAgICBwY2kgMDAwMDowMDowMC4wOiBCQVIgMSBbbWVtIHNpemUgMHg0MDAwMDAw
MF06IGZhaWxlZCB0byBhc3NpZ24KPj4KPj4gU2lnbmVkLW9mZi1ieTogU2hhd24gTGluIDxzaGF3
bi5saW5Acm9jay1jaGlwcy5jb20+Cj4+IC0tLQo+Pgo+PiAgIGRyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYyB8IDggKysrKysrKysKPj4gICAxIGZpbGUgY2hhbmdl
ZCwgOCBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9s
bGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9w
Y2llLWR3LXJvY2tjaGlwLmMKPj4gaW5kZXggZjg2MDVmZS4uZTQyMWZhMCAxMDA2NDQKPj4gLS0t
IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4+ICsrKyBi
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+PiBAQCAtODAs
NiArODAsOCBAQAo+PiAgICNkZWZpbmUgIFBDSUVfTElOS1VQX01BU0sJCUdFTk1BU0soMTcsIDE2
KQo+PiAgICNkZWZpbmUgIFBDSUVfTFRTU01fU1RBVFVTX01BU0sJCUdFTk1BU0soNSwgMCkKPj4g
ICAKPj4gKyNkZWZpbmUgUENJRV9UWVBFMF9IRFJfREJJMl9PRkZTRVQgICAgICAweDEwMDAwMAo+
PiArCj4+ICAgc3RydWN0IHJvY2tjaGlwX3BjaWUgewo+PiAgIAlzdHJ1Y3QgZHdfcGNpZSBwY2k7
Cj4+ICAgCXZvaWQgX19pb21lbSAqYXBiX2Jhc2U7Cj4+IEBAIC0yOTIsNiArMjk0LDggQEAgc3Rh
dGljIGludCByb2NrY2hpcF9wY2llX2hvc3RfaW5pdChzdHJ1Y3QgZHdfcGNpZV9ycCAqcHApCj4+
ICAgCWlmIChpcnEgPCAwKQo+PiAgIAkJcmV0dXJuIGlycTsKPj4gICAKPj4gKwlwY2ktPmRiaV9i
YXNlMiA9IHBjaS0+ZGJpX2Jhc2UgKyBQQ0lFX1RZUEUwX0hEUl9EQkkyX09GRlNFVDsKPj4gKwo+
PiAgIAlyZXQgPSByb2NrY2hpcF9wY2llX2luaXRfaXJxX2RvbWFpbihyb2NrY2hpcCk7Cj4+ICAg
CWlmIChyZXQgPCAwKQo+PiAgIAkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gaW5pdCBpcnEgZG9t
YWluXG4iKTsKPj4gQEAgLTMwMiw2ICszMDYsMTAgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2ll
X2hvc3RfaW5pdChzdHJ1Y3QgZHdfcGNpZV9ycCAqcHApCj4+ICAgCXJvY2tjaGlwX3BjaWVfY29u
ZmlndXJlX2wxc3MocGNpKTsKPj4gICAJcm9ja2NoaXBfcGNpZV9lbmFibGVfbDBzKHBjaSk7Cj4+
ICAgCj4+ICsJLyogRGlzYWJsZSBSQydzIEJBUjAgYW5kIEJBUjEgKi8KPj4gKwlkd19wY2llX3dy
aXRlbF9kYmkyKHBjaSwgUENJX0JBU0VfQUREUkVTU18wLCAweDApOwo+PiArCWR3X3BjaWVfd3Jp
dGVsX2RiaTIocGNpLCBQQ0lfQkFTRV9BRERSRVNTXzEsIDB4MCk7Cj4+ICsKPj4gICAJcmV0dXJu
IDA7Cj4+ICAgfQo+PiAgIAo+PiAtLSAKPj4gMi43LjQKPj4KPj4KPiAKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
