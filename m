Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D653AC021B2
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Feb 2025 08:39:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SwbcjKuEO2l5PtfkaeuZhE2n8vWsSX9zNVUwG/hOkhg=; b=K/BuhmOuKa+L99
	d3qmychTuPr1f9Ky6eONVxNxBqM7ghQMLPoNHuCNqUUOEp4HdS9HiDDHcnZa9CO4hJnu5vUuSTJEU
	rN8fkYXbu7L9OZ5fvtljA4U7ERPlBy8v3ibJFNgOQdnYBCLgKAOTak5iLAmitUuak540OYK23mFqa
	vn7Dqny4JH5amsjWvBpxgAe7CSwYDXrVXhHx5pnH4s1MBAEAv1H2QcZ1hkNEPFEtweqvZpZpUpIOc
	i0+la+w9JtoaMsdtkGtotbvqZrF3lYeS4y729RAjcKtMBtur0TwWqjWQ5O5eh34vDd6d0je1ZKAsm
	0kA5wqslN7hBJhtgQWgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmqT5-0000000GPtS-0ftU;
	Tue, 25 Feb 2025 08:39:07 +0000
Received: from mail-m15574.qiye.163.com ([101.71.155.74])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmqT2-0000000GPsS-21Ic;
	Tue, 25 Feb 2025 08:39:06 +0000
Received: from [172.16.12.67] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id c1f11c0c;
	Tue, 25 Feb 2025 16:38:54 +0800 (GMT+08:00)
Message-ID: <478b8972-07b9-483b-a3ef-bdea10c4e4cc@rock-chips.com>
Date: Tue, 25 Feb 2025 16:38:54 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/2] dt-bindings: PCI: dw: rockchip: Add rk3576 support
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Simon Xue <xxm@rock-chips.com>, Conor Dooley <conor+dt@kernel.org>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-pci@vger.kernel.org, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?=
 <kw@linux.com>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-arm-kernel@lists.infradead.org
References: <20250224074928.2005744-1-kever.yang@rock-chips.com>
 <20250224-gifted-piculet-of-amplitude-a91ecd@krzk-bin>
Content-Language: en-US
From: Kever Yang <kever.yang@rock-chips.com>
In-Reply-To: <20250224-gifted-piculet-of-amplitude-a91ecd@krzk-bin>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQx0ZTVYZH0NJHRoYHR1ISkNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a953c4253a003afkunmc1f11c0c
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OTI6ERw5EDIOHRYjHB9MLRUU
	EB8aCRlVSlVKTE9LT0xJTEhNQ0pOVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFIT0xPNwY+
DKIM-Signature: a=rsa-sha256;
	b=WwmsGDczbRBij3SrocnQVsTJaDABZZZ39b0m72Yb797JBiACL+JGw6Mh3E8ANIgWQy+mGdZx1HvDwxj7H+dVw9Oxh3vYiqupcihCxfuvIPmmjPRctB0IS4h3HQCttRJXe8NCQF9KVRQCS4Hotu39VTGVMsIUYNwyZoGzqFwsO40=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=ltPMBWdpitIAr/1lqIvGJ/KYikU2UivViANg4djpIMI=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_003905_057074_C5B0577C 
X-CRM114-Status: GOOD (  18.84  )
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

SGkgS3J6eXN6dG9mLAoKIMKgwqDCoCBUaGFua3MgZm9yIHlvdXIgcmV2aWV3LgoKT24gMjAyNS8y
LzI0IDE3OjI4LCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+IE9uIE1vbiwgRmViIDI0LCAy
MDI1IGF0IDAzOjQ5OjI3UE0gKzA4MDAsIEtldmVyIFlhbmcgd3JvdGU6Cj4+IHJrMzU3NiBpcyB1
c2luZyBEV0MgUENJZSBjb250cm9sbGVyLCB3aXRoIG1zaSBpbnRlcnJ1cHQgZGlyZWN0bHkgdG8g
R0lDCj4+IGluc3RlYWQgb2YgdXNpbmcgR0lDIElUUywgc28KPj4gLSBubyBJVFMgc3VwcG9ydCBp
cyByZXF1aXJlZCBhbmQgdGhlICdtc2ktbWFwJyBpcyBub3QgcmVxdWlyZWQsCj4+IC0gYSBuZXcg
J21zaScgaW50ZXJydXB0IGlzIG5lZWRlZC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogS2V2ZXIgWWFu
ZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFu
IFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+Cj4+IC0tLQo+Pgo+PiBD
aGFuZ2VzIGluIHY2Ogo+PiAtIEZpeCBtYWtlIGR0X2JpbmRpbmdfY2hlY2sgYW5kIG1ha2UgQ0hF
Q0tfRFRCUz15Cj4+Cj4+IENoYW5nZXMgaW4gdjU6Cj4+IC0gQWRkIGNvbnN0cmFpbnRzIHBlciBk
ZXZpY2UgZm9yIGludGVycnVwdC1uYW1lcyBkdWUgdG8gdGhlIGludGVycnVwdCBpcwo+PiBkaWZm
ZXJlbnQgZnJvbSByazM1ODguCj4+Cj4+IENoYW5nZXMgaW4gdjQ6Cj4+IC0gRml4IHdyb25nIGlu
ZGVudGF0aW9uIGluIGR0X2JpbmRpbmdfY2hlY2sgcmVwb3J0IGJ5IFJvYgo+Pgo+PiBDaGFuZ2Vz
IGluIHYzOgo+PiAtIEZpeCBkdGIgY2hlY2sgYnJva2VuIG9uIHJrMzU4OAo+PiAtIFVwZGF0ZSBj
b21taXQgbWVzc2FnZQo+Pgo+PiBDaGFuZ2VzIGluIHYyOgo+PiAtIHJlbW92ZSByZXF1aXJlZCAn
bXNpLW1hcCcKPj4gLSBhZGQgaW50ZXJydXB0IG5hbWUgJ21zaScKPj4KPj4gICAuLi4vYmluZGlu
Z3MvcGNpL3JvY2tjaGlwLWR3LXBjaWUtY29tbW9uLnlhbWwgfCA0MSArKysrKysrKysrKysrKysr
KystCj4+ICAgLi4uL2JpbmRpbmdzL3BjaS9yb2NrY2hpcC1kdy1wY2llLnlhbWwgICAgICAgIHwg
MTkgKysrKysrLS0tCj4+ICAgMiBmaWxlcyBjaGFuZ2VkLCA1MiBpbnNlcnRpb25zKCspLCA4IGRl
bGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3BjaS9yb2NrY2hpcC1kdy1wY2llLWNvbW1vbi55YW1sIGIvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9yb2NrY2hpcC1kdy1wY2llLWNvbW1vbi55YW1sCj4+IGlu
ZGV4IGNjOWFkZmM3NjExYy4uZTFjYThlMmYzNWZlIDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3JvY2tjaGlwLWR3LXBjaWUtY29tbW9uLnlhbWwK
Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9yb2NrY2hpcC1k
dy1wY2llLWNvbW1vbi55YW1sCj4+IEBAIC02NSw3ICs2NSwxMSBAQCBwcm9wZXJ0aWVzOgo+PiAg
ICAgICAgICAgICB0eF9jcGxfdGltZW91dCwgY29yX2Vycl9zZW50LCBuZl9lcnJfc2VudCwgZl9l
cnJfc2VudCwgY29yX2Vycl9yeCwKPj4gICAgICAgICAgICAgbmZfZXJyX3J4LCBmX2Vycl9yeCwg
cmFkbV9xb3ZlcmZsb3cKPj4gICAgICAgICAtIGRlc2NyaXB0aW9uOgo+PiAtICAgICAgICAgIGVE
TUEgd3JpdGUgY2hhbm5lbCAwIGludGVycnVwdAo+PiArICAgICAgICAgIElmIHRoZSBtYXRjaGlu
ZyBpbnRlcnJ1cHQgbmFtZSBpcyAibXNpIiwgdGhlbiB0aGlzIGlzIHRoZSBjb21iaW5kZWQKPj4g
KyAgICAgICAgICBNU0kgbGluZSBpbnRlcnJ1cHQsIHdoaWNoIGlzIHRvIHN1cHBvcnQgTVNJIGlu
dGVycnVwdHMgb3V0cHV0IHRvIEdJQwo+PiArICAgICAgICAgIGNvbnRyb2xsZXIgdmlhIEdJQyBT
UEkgaW50ZXJydXB0IGluc3RlYWQgb2YgR0lDIGl0cyBpbnRlcnJ1cHQuCj4+ICsgICAgICAgICAg
SWYgdGhlIG1hdGNoaW5nIGludGVycnVwdCBuYW1lIGlzICJkbWEwIiwgdGhlbiB0aGlzIGlzIHRo
ZSBlRE1BIHdyaXRlCj4+ICsgICAgICAgICAgY2hhbm5lbCAwIGludGVycnVwdC4KPj4gICAgICAg
ICAtIGRlc2NyaXB0aW9uOgo+PiAgICAgICAgICAgICBlRE1BIHdyaXRlIGNoYW5uZWwgMSBpbnRl
cnJ1cHQKPj4gICAgICAgICAtIGRlc2NyaXB0aW9uOgo+PiBAQCAtODEsNyArODUsOSBAQCBwcm9w
ZXJ0aWVzOgo+PiAgICAgICAgIC0gY29uc3Q6IG1zZwo+PiAgICAgICAgIC0gY29uc3Q6IGxlZ2Fj
eQo+PiAgICAgICAgIC0gY29uc3Q6IGVycgo+PiAtICAgICAgLSBjb25zdDogZG1hMAo+PiArICAg
ICAgLSBlbnVtOgo+PiArICAgICAgICAgIC0gbXNpCj4+ICsgICAgICAgICAgLSBkbWEwCj4+ICAg
ICAgICAgLSBjb25zdDogZG1hMQo+PiAgICAgICAgIC0gY29uc3Q6IGRtYTIKPj4gICAgICAgICAt
IGNvbnN0OiBkbWEzCj4+IEBAIC0xMjMsNCArMTI5LDM1IEBAIHJlcXVpcmVkOgo+PiAgIAo+PiAg
IGFkZGl0aW9uYWxQcm9wZXJ0aWVzOiB0cnVlCj4+ICAgCj4+ICthbnlPZjoKPiBUaGVyZSBpcyBu
ZXZlciBzeW50YXggbGlrZSB0aGF0LiBXaGVyZSBkaWQgeW91IGZpbmQgaXQgKHNvIHdlIGNhbiBm
aXgKPiBpdCk/Cj4KPj4gKyAgLSBpZjoKPj4gKyAgICAgIHByb3BlcnRpZXM6Cj4+ICsgICAgICAg
IGNvbXBhdGlibGU6Cj4+ICsgICAgICAgICAgY29udGFpbnM6Cj4+ICsgICAgICAgICAgICBjb25z
dDogcm9ja2NoaXAscmszNTc2LXBjaWUKPiBUaGlzIGRvZXMgbm90IGJlbG9uZyB0byBjb21tb24g
c2NoZW1hLCBidXQgdG8gZGV2aWNlIHNwZWNpZmljLiBJIGRvbid0Cj4gc2VlIHRoaXMgY29tcGF0
aWJsZSBpbiB0aGlzIGNvbW1vbiBzY2hlbWEgYXQgYWxsLgoKVGhlIGNvbW1vbiBzY2hlbWEgY292
ZXJzIHJvY2tjaGlwLWR3LXBjaWUueWFtbCBhbmQgcm9ja2NoaXAtZHctcGNpZS1lcC55YW1sLAoK
c28gSSB0aG91Z2ggSSBzaG91bGQgYWRkIHRoZSBpZiBjb25kaXRpb24gaGVyZS4KCgo+Cj4+ICsg
ICAgdGhlbjoKPj4gKyAgICAgIHByb3BlcnRpZXM6Cj4gaW50ZXJydXB0czoKPiAgICBtaW5JdGVt
czogNgo+ICAgIG1heEl0ZW1zOiA2CldpbGwgYWRkIHRoaXMgYmFjay4KClRoYW5rcywKLSBLZXZl
cgo+PiArICAgICAgICBpbnRlcnJ1cHQtbmFtZXM6Cj4+ICsgICAgICAgICAgaXRlbXM6Cj4+ICsg
ICAgICAgICAgICAtIGNvbnN0OiBzeXMKPj4gKyAgICAgICAgICAgIC0gY29uc3Q6IHBtYwo+PiAr
ICAgICAgICAgICAgLSBjb25zdDogbXNnCj4+ICsgICAgICAgICAgICAtIGNvbnN0OiBsZWdhY3kK
Pj4gKyAgICAgICAgICAgIC0gY29uc3Q6IGVycgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YK
Pgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
