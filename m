Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48696CE7A9A
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 09:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fHqiE8WPSuHLq6uNg+/B42k9/zwa+OUz1PUO0mjmdUc=; b=wojyGl4Ka1vdEW
	sBNFUToGh4t/odxAYFDdmGgX50E4pmon17oRbeStrgxh+QOp4hOFGBqkSSUXJoWrqdwlpwBiUFiww
	wCuVrTlG/DwTr7czuDrcbzF85c+9hG1w8zjjxQmA3Z/6hdynLzBCG0p6hGXirbxCOgqx3t6Z7WkRB
	ozoER+UQwRv5uwioy406/bjeaBBdeWivVp04FlAklX0da/RJWUuvf66m3kdCWEb1BIqtHDxwVQUFM
	PVRitrBn5wK7prS1F7HBngplQ4hMhKMVxltSacXdg/VleGP2mj5uCtWU07Wd26w4gF6IJg9PctiLm
	Mm1s6f/WlMgcfQdu7FIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJpv2-0000000BstZ-0vWT;
	Fri, 14 Nov 2025 09:16:36 +0000
Received: from mail-m1973171.qiye.163.com ([220.197.31.71])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJpuz-0000000Bspp-2T5V;
	Fri, 14 Nov 2025 09:16:35 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 29992e5be;
	Fri, 14 Nov 2025 17:16:22 +0800 (GMT+08:00)
Message-ID: <e8524bf8-a90c-423f-8a58-9ef05a3db1dd@rock-chips.com>
Date: Fri, 14 Nov 2025 17:16:21 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-pci <linux-pci@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>, krzk+dt <krzk+dt@kernel.org>,
 conor+dt <conor+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 Simon Glass <sjg@chromium.org>, Philipp Tomsich <philipp.tomsich@vrull.eu>,
 Kever Yang <kever.yang@rock-chips.com>, Tom Rini <trini@konsulko.com>,
 u-boot@lists.denx.de, =?UTF-8?B?5byg54Oo?= <ye.zhang@rock-chips.com>
Subject: Re: [PATCH] arm64: dts: rockchip: align bindings to PCIe spec
To: Geraldo Nascimento <geraldogabriel@gmail.com>
References: <4b5ffcccfef2a61838aa563521672a171acb27b2.1762321976.git.geraldogabriel@gmail.com>
 <ba120577-42da-424d-8102-9d085c1494c8@rock-chips.com>
 <aQsIXcQzeYop6a0B@geday>
 <67b605b0-7046-448a-bc9b-d3ac56333809@rock-chips.com>
 <aQ1c7ZDycxiOIy8Y@geday>
 <d9e257bd-806c-48b4-bb22-f1342e9fc15a@rock-chips.com>
 <aRLEbfsmXnGwyigS@geday>
 <AGsAmwCFJj0ZQ4vKzrqC84rs.3.1762847224180.Hmail.ye.zhang@rock-chips.com>
 <aRQ_R90S8T82th45@geday> <aRUvr0UggTYkkCZ_@geday> <aRazCssWVdAOmy7D@geday>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <aRazCssWVdAOmy7D@geday>
X-HM-Tid: 0a9a81a6c7ff09cckunm83f5efda44ea74
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhgYQlZCQx9JSU5DSkNPSh9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=OanU7ELuu0i6QxNwaBwYgLpQCUE6kBkXnosBpB5xJa+/1c8gaH9JjY3Crn4xM7igJavW9mLTplYkYMO2WXlXr40/yHnKDOGRpyQQRywI3wvtfothQLLLSpusqui0Vwx57upf1ejVQaFOQ/Bxnq8U70SFQxa91P3HMX8M5OD1UuE=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=pAiVqyQ+kiQN8Phi43cHK6Tl1rhV/2RbqIHqDBjVGzk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_011634_080695_7AA14A8D 
X-CRM114-Status: GOOD (  20.39  )
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

5ZyoIDIwMjUvMTEvMTQg5pif5pyf5LqUIDEyOjQxLCBHZXJhbGRvIE5hc2NpbWVudG8g5YaZ6YGT
Ogo+IE9uIFdlZCwgTm92IDEyLCAyMDI1IGF0IDEwOjA5OjE1UE0gLTAzMDAsIEdlcmFsZG8gTmFz
Y2ltZW50byB3cm90ZToKPj4gSGkgWWUsIFNoYXduLAo+Pgo+PiBIZXJlJ3MgbW9yZSBjb250YWlu
ZWQgd29ya2Fyb3VuZCB3aXRob3V0IHJlc29ydGluZyB0byBjbGVhcmluZyBERFIgdG8KPj4gSU5Q
VVQgZm9yIGV2ZXJ5IEdQSU86Cj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9s
bGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJv
Y2tjaGlwLWhvc3QuYwo+PiBpbmRleCBlZTE4MjJjYTAxZGIuLjFkODkxMzFlYzZhYyAxMDA2NDQK
Pj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWhvc3QuYwo+PiAr
KysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jCj4+IEBAIC0z
MTUsNyArMzE1LDggQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX2hvc3RfaW5pdF9wb3J0KHN0
cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCkKPj4gICAJCQkgICAgUENJRV9DTElFTlRfQ09O
RklHKTsKPj4gICAKPj4gICAJbXNsZWVwKFBDSUVfVF9QVlBFUkxfTVMpOwo+PiAtCWdwaW9kX3Nl
dF92YWx1ZV9jYW5zbGVlcChyb2NrY2hpcC0+cGVyc3RfZ3BpbywgMSk7Cj4+ICsJZ3Bpb2RfZGly
ZWN0aW9uX2lucHV0KHJvY2tjaGlwLT5wZXJzdF9ncGlvKTsKPj4gKwlncGlvZF9kaXJlY3Rpb25f
b3V0cHV0KHJvY2tjaGlwLT5wZXJzdF9ncGlvLCAxKTsKPj4gICAKPj4gICAJbXNsZWVwKFBDSUVf
UkVTRVRfQ09ORklHX1dBSVRfTVMpOwo+PiAgIAo+PiBUaGlzIHJlc3VsdHMgaW4gd29ya2luZyBQ
Q0llIGZvciBtZSwgcGFzcyBpbml0aWFsIGxpbmsgdHJhaW5pbmcuCj4gCj4gU29ycnkgZm9yIHRo
ZSBpbmNvbnZlbmllbmNlIG9mIG1vcmUgbWFpbCwgYnV0IEknbSBwcm92aWRpbmcgYXMgbXVjaAo+
IGRldGFpbCBhcyBJIGNhbi4KPiAKCkRvbid0IHdvcnJ5LCBpdCdzIGhlbHBmdWwsIHNvIEkgdGhp
bmsgWWUgY291bGQgaGF2ZSBhIGxvb2suCk1heSBJIGFzayBpZiB0aGUgZmFpbHVyZSBvbmx5IGhh
cHBlbmVkIHRvIG9uZSBzcGVjaWZpYyBib2FyZD8KCkFub3RoZXIgdGhpbmcgSSBub3RpY2VkIGlz
IGFib3V0IG9uZSBjb21taXQ6CjExNGIwNmVlMTA4YyAoIlBDSTogcm9ja2NoaXA6IFNldCBUYXJn
ZXQgTGluayBTcGVlZCB0byA1LjAgR1QvcyBiZWZvcmUgCnJldHJhaW5pbmciKQoKSXQgc2FpZDog
IlJvY2tjaGlwIGNvbnRyb2xsZXJzIGNhbiBzdXBwb3J0IHVwIHRvIDUuMCBHVC9zIGxpbmsgc3Bl
ZWQuIgpCdXQgd2UgaXNzdWVkIGFuIGVycmF0YSBsb25nIHRpbWUgYWdvIHRvIGFubm91bmNlZCBp
dCBkb2Vzbid0LCB5b3UgY291bGQKYWxzbyBjaGVjayB0aGUgUENJZSBwYXJ0IG9mIFJLMzM5OSBk
YXRhc2hlZXQ6Cmh0dHBzOi8vb3BlbnNvdXJjZS5yb2NrLWNoaXBzLmNvbS9pbWFnZXMvZC9kNy9S
b2NrY2hpcF9SSzMzOTlfRGF0YXNoZWV0X1YyLjEtMjAyMDAzMjMucGRmCgpBbHNvIHdlIHNldCBt
YXgtbGluay1zcGVlZCB0byBPTkUgaW4gcmszMzk5LWJhc2UuZHRzaSBidXQgc2VlbXMgYW5vdGhl
cgpwYXRjaCBzbGlwIGluOiA3NTVmZmY1MjhiMWIgKCJhcm02NDogZHRzOiByb2NrY2hpcDogYWRk
IHZhcmlhYmxlcyBmb3IgCnBjaWUgY29tcGxldGlvbiB0byBoZWxpb3M2NCIpCgo+IFRoaXMgaGFj
ayBoYXMgYmVlbiBjb25maXJtZWQgdG8gd29yayBpbiBVLWJvb3QgYWxzby4KPiAKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9wY2kvcGNpZV9yb2NrY2hpcC5jIGIvZHJpdmVycy9wY2kvcGNpZV9yb2Nr
Y2hpcC5jCj4gaW5kZXggMTlmOWU1OGE2NDAuLjU3MDJiNjA3ZWU2IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvcGNpL3BjaWVfcm9ja2NoaXAuYwo+ICsrKyBiL2RyaXZlcnMvcGNpL3BjaWVfcm9ja2No
aXAuYwo+IEBAIC0zMjksOCArMzI5LDEwIEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9pbml0
X3BvcnQoc3RydWN0IHVkZXZpY2UgKmRldikKPiAgIAl3cml0ZWwoUENJRV9DTElFTlRfTElOS19U
UkFJTl9FTkFCTEUsCj4gICAJICAgICAgIHByaXYtPmFwYl9iYXNlICsgUENJRV9DTElFTlRfQ09O
RklHKTsKPiAgIAo+IC0JaWYgKGRtX2dwaW9faXNfdmFsaWQoJnByaXYtPmVwX2dwaW8pKQo+IC0J
CWRtX2dwaW9fc2V0X3ZhbHVlKCZwcml2LT5lcF9ncGlvLCAxKTsKPiArCWlmIChkbV9ncGlvX2lz
X3ZhbGlkKCZwcml2LT5lcF9ncGlvKSkgewo+ICsJCWRtX2dwaW9fc2V0X2Rpcl9mbGFncygmcHJp
di0+ZXBfZ3BpbywgKHByaXYtPmVwX2dwaW8uZmxhZ3MgJiB+R1BJT0RfSVNfT1VUKSB8IEdQSU9E
X0lTX0lOKTsKPiArCQlkbV9ncGlvX3NldF9kaXJfZmxhZ3MoJnByaXYtPmVwX2dwaW8sIChwcml2
LT5lcF9ncGlvLmZsYWdzICYgfkdQSU9EX0lTX0lOKSB8IEdQSU9EX0lTX09VVCB8IEdQSU9EX0lT
X09VVF9BQ1RJVkUpOwo+ICsJfQo+ICAgCj4gICAJcmV0ID0gcmVhZGxfcG9sbF9zbGVlcF90aW1l
b3V0Cj4gICAJCQkocHJpdi0+YXBiX2Jhc2UgKyBQQ0lFX0NMSUVOVF9CQVNJQ19TVEFUVVMxLAo+
IAo+IFNvIG15IHJlcG9ydCBzdWdnZXN0cyB0aGlzIGlzIG5vdCBzcGVjaWZpYyB0byBMaW51eCBh
bmQgYmVjYXVzZSBzYW1lCj4gd29ya2Fyb3VuZCB3b3JrcyBpbiBVLWJvb3Qgc2ltcGxpZmllZCBk
cml2ZXIgbW9kZWwgSSBzdWdnZXN0IHlvdSBjaGVjawo+IGZyb20geW91ciBzaWRlLgo+IAo+IFBy
ZXZpb3VzbHkgUENJZSBsaW5rIHRyYWluaW5nIHRpbWVvdXQsIG5vdCB3b3JraW5nLiBOb3cgSSdt
IHZlcnkgaGFwcHkKPiB3aXRoIHdvcmtpbmcgUENJZSBpbiBMaW51eCBhbmQgVS1ib290Lgo+IAo+
IFRoYW5rcywKPiBHZXJhbGRvIE5hc2NpbWVudG8KPiAKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
