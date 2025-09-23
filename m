Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20F19CAC5A7
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Sep 2025 07:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pDXYc8VKZ1j6QR0XWx88zwirRz3ByOr1sZQbY4WRjr8=; b=CEMF6//YK+NfL0
	DjgR25ziVrxFjjztGIv6PTKKFP1qRj/0AgCS339E+aWYDnxUUPTSld9VdE3emLAsI126cXi948RKz
	ARqi2nkJuM4STVDGzP6wEToeP+3tSXYZUM+bcYtQLFGNENqWkaQbw7pF6yB4QWUUGVF07Zx9mVT8M
	YUYbL++IB/Kw7HJWxBsBoULAEdUejefLV0Qa6Xtmd6cWF09gx6kauTiJOk2+TC3UsR8fjfigsOojM
	3a6OrzP6oGKcXkaWZA/VA4k0zTbWY/+fo7orDUfnyGOY8AgVnCSbHCH46yXvEKrJ0gTwjub/FnlZz
	qk9aKpVJStqkR+kyT4Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0xHI-0000000CfTk-1TTd;
	Tue, 23 Sep 2025 07:17:32 +0000
Received: from mail-m32111.qiye.163.com ([220.197.32.111])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0xHE-0000000CfST-08jD;
	Tue, 23 Sep 2025 07:17:30 +0000
Received: from [172.16.12.153] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 23c09b919;
	Tue, 23 Sep 2025 15:17:21 +0800 (GMT+08:00)
Message-ID: <dc554831-4368-43f0-b92b-896fd920e239@rock-chips.com>
Date: Tue, 23 Sep 2025 15:17:20 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/7] dt-bindings: phy: rockchip: rk3399-typec-phy:
 Support mode-switch
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Chaoyi Chen <kernel@airkyi.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
References: <20250922012039.323-1-kernel@airkyi.com>
 <20250922012039.323-3-kernel@airkyi.com>
 <eb6ogrepo5acwcj5gpdolxxyg3xrx7kz6zrbizzseqyavvitfd@cnzurelqeh4t>
 <533d41bd-9293-4808-85f3-8fb6dc8bcda7@rock-chips.com>
 <mpyfe63tzxzxyyqf4vxwmrewzeosnaftlkko7pq2ynld6u3lcz@wlpixckov4hg>
 <8396dd15-9111-4ceb-a561-6ed57727546f@rock-chips.com>
 <jm32ujhxslsx5snes4o66t2grb5uxhsaapjqahektfck66g6hb@fx6f53yojlcr>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <jm32ujhxslsx5snes4o66t2grb5uxhsaapjqahektfck66g6hb@fx6f53yojlcr>
X-HM-Tid: 0a99756f218d03abkunm5591869a139fab
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUgZT1ZNSE0dGUJJHklDTxhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpPSE
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=OuYfjoI0/KRTSG9Mvp5kZYif7pjSs177Xu8KZpj87g1akZkEF+pMJzmwB3eSidvVAne+dtdEcqRxOUpwCka9htscgTlWFbmWMlv7ZiMuYOV8WMKcRTDPeqIot1jzjkJ8XCw5tP08afglgbemTqC93ar2xwElmLvVYzlSaQtWkqc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=YXgNszLNxTgYBQeXLiuoM2pl3d7cCmFzHYl2QZT0EDg=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_001728_683144_C4E23D24 
X-CRM114-Status: GOOD (  22.55  )
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

T24gOS8yMy8yMDI1IDEyOjUxIFBNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgoKPiBPbiBUdWUs
IFNlcCAyMywgMjAyNSBhdCAxMTo0MDozM0FNICswODAwLCBDaGFveWkgQ2hlbiB3cm90ZToKPj4g
T24gOS8yMy8yMDI1IDExOjE3IEFNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgo+Pgo+Pj4gT24g
VHVlLCBTZXAgMjMsIDIwMjUgYXQgMDk6NTM6MDZBTSArMDgwMCwgQ2hhb3lpIENoZW4gd3JvdGU6
Cj4+Pj4gSGkgRG1pdHJ5LAo+Pj4+Cj4+Pj4gT24gOS8yMy8yMDI1IDk6MTIgQU0sIERtaXRyeSBC
YXJ5c2hrb3Ygd3JvdGU6Cj4+Pj4+IE9uIE1vbiwgU2VwIDIyLCAyMDI1IGF0IDA5OjIwOjM0QU0g
KzA4MDAsIENoYW95aSBDaGVuIHdyb3RlOgo+Pj4+Pj4gRnJvbTogQ2hhb3lpIENoZW4gPGNoYW95
aS5jaGVuQHJvY2stY2hpcHMuY29tPgo+Pj4+Pj4KPj4+Pj4+IFRoZSBSSzMzOTkgU29DIGludGVn
cmF0ZXMgdHdvIFVTQi9EUCBjb21ibyBQSFlzLCBlYWNoIG9mIHdoaWNoCj4+Pj4+PiBzdXBwb3J0
cyBzb2Z0d2FyZS1jb25maWd1cmFibGUgcGluIG1hcHBpbmcgYW5kIERpc3BsYXlQb3J0IGxhbmUK
Pj4+Pj4+IGFzc2lnbm1lbnQuIFRoZXNlIGNhcGFiaWxpdGllcyBlbmFibGUgdGhlIFBIWSBpdHNl
bGYgdG8gaGFuZGxlIGJvdGgKPj4+Pj4+IG1vZGUgc3dpdGNoaW5nIGFuZCBvcmllbnRhdGlvbiBz
d2l0Y2hpbmcsIGJhc2VkIG9uIHRoZSBUeXBlLUMgcGx1Zwo+Pj4+Pj4gb3JpZW50YXRpb24gYW5k
IFVTQiBQRCBuZWdvdGlhdGlvbiByZXN1bHRzLgo+Pj4+Pj4KPj4+Pj4+IFdoaWxlIGFuIGV4dGVy
bmFsIFR5cGUtQyBjb250cm9sbGVyIGlzIHN0aWxsIHJlcXVpcmVkIHRvIGRldGVjdCBjYWJsZQo+
Pj4+Pj4gYXR0YWNobWVudCBhbmQgcmVwb3J0IFVTQiBQRCBldmVudHMsIHRoZSBhY3R1YWwgbW9k
ZSBhbmQgb3JpZW50YXRpb24KPj4+Pj4+IHN3aXRjaGluZyBpcyBwZXJmb3JtZWQgaW50ZXJuYWxs
eSBieSB0aGUgUEhZIHRocm91Z2ggc29mdHdhcmUKPj4+Pj4+IGNvbmZpZ3VyYXRpb24uIFRoaXMg
YWxsb3dzIHRoZSBQSFkgdG8gYWN0IGFzIGEgVHlwZS1DIG11bHRpcGxleGVyIGZvcgo+Pj4+Pj4g
Ym90aCBkYXRhIHJvbGUgYW5kIERQIGFsdG1vZGUgY29uZmlndXJhdGlvbi4KPj4+Pj4+Cj4+Pj4+
PiBUbyByZWZsZWN0IHRoaXMgaGFyZHdhcmUgZGVzaWduLCB0aGlzIHBhdGNoIGludHJvZHVjZXMg
YSBuZXcKPj4+Pj4+ICJtb2RlLXN3aXRjaCIgcHJvcGVydHkgZm9yIHRoZSBkcC1wb3J0IG5vZGUg
aW4gdGhlIGRldmljZSB0cmVlIGJpbmRpbmdzLgo+Pj4+Pj4gVGhpcyBwcm9wZXJ0eSBpbmRpY2F0
ZXMgdGhhdCB0aGUgY29ubmVjdGVkIFBIWSBpcyBjYXBhYmxlIG9mIGhhbmRsaW5nCj4+Pj4+PiBU
eXBlLUMgbW9kZSBzd2l0Y2hpbmcgaXRzZWxmLgo+Pj4+Pj4KPj4+Pj4+IFNpZ25lZC1vZmYtYnk6
IENoYW95aSBDaGVuIDxjaGFveWkuY2hlbkByb2NrLWNoaXBzLmNvbT4KPj4+Pj4+Cj4+Pj4+PiBB
Y2tlZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8u
b3JnPgo+Pj4+Pj4gLS0tCj4+Pj4+Pgo+Pj4+Pj4gQ2hhbmdlcyBpbiB2NDoKPj4+Pj4+IC0gUmVt
b3ZlICJ8IiBpbiBkZXNjcmlwdGlvbi4KPj4+Pj4+Cj4+Pj4+PiBDaGFuZ2VzIGluIHYzOgo+Pj4+
Pj4gLSBBZGQgbW9yZSBkZXNjcmlwdGlvbnMgdG8gY2xhcmlmeSB0aGUgcm9sZSBvZiB0aGUgUEhZ
IGluIHN3aXRjaGluZy4KPj4+Pj4+Cj4+Pj4+PiBDaGFuZ2VzIGluIHYyOgo+Pj4+Pj4gLSBSZXVz
ZSBkcC1wb3J0L3VzYjMtcG9ydCBpbiByazMzOTktdHlwZWMtcGh5IGJpbmRpbmcuCj4+Pj4+Pgo+
Pj4+Pj4gICAgIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9yb2NrY2hpcCxyazMzOTktdHlw
ZWMtcGh5LnlhbWwgIHwgNiArKysrKysKPj4+Pj4+ICAgICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNl
cnRpb25zKCspCj4+Pj4+Pgo+Pj4+Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9waHkvcm9ja2NoaXAscmszMzk5LXR5cGVjLXBoeS55YW1sIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9yb2NrY2hpcCxyazMzOTktdHlwZWMtcGh5
LnlhbWwKPj4+Pj4+IGluZGV4IDkxYzAxMWY2OGNkMC4uODNlYmNkZTA5NmVhIDEwMDY0NAo+Pj4+
Pj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9yb2NrY2hpcCxy
azMzOTktdHlwZWMtcGh5LnlhbWwKPj4+Pj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9waHkvcm9ja2NoaXAscmszMzk5LXR5cGVjLXBoeS55YW1sCj4+Pj4+PiBAQCAt
NTEsNiArNTEsMTIgQEAgcHJvcGVydGllczoKPj4+Pj4+ICAgICAgICAgICAnI3BoeS1jZWxscyc6
Cj4+Pj4+PiAgICAgICAgICAgICBjb25zdDogMAo+Pj4+Pj4gKyAgICAgIG1vZGUtc3dpdGNoOgo+
Pj4+PiBIYXZpbmcgdGhlIG1vZGUtc3dpdGNoIGhlcmUgaXMgYSBiaXQgc3RyYW5nZS4gSSB0aGlu
ayB0aGUgd2hvbGUgUEhZCj4+Pj4+IGRldmljZSBzaG91bGQgYmUgYW4gb3JpZW50YXRpb24tc3dp
dGNoIGFuZCBtb2RlLXN3aXRjaC4gT3RoZXJ3aXNlIGl0Cj4+Pj4+IGZlZWxzIHdlaXJkIHRvIG1l
Lgo+Pj4+IEkgdGhpbmsgdGhpcyBpcyBhIGRpZmZlcmVuY2UgaW4gcHJhY3RpY2UuIEluIHRoZSBw
cmV2aW91cyBiaW5kaW5nLCB0aGVyZSB3YXMgYWxyZWFkeSBhbiBvcmllbnRhdGlvbi1zd2l0Y2gg
dW5kZXIgdGhlIHVzYi1wb3J0LiBJIHRyeWluZyB0byBhZGQgYm90aCBhbiBvcmllbnRhdGlvbi1z
d2l0Y2ggYW5kIGEgbW9kZS1zd2l0Y2ggdG8gdGhlIHRvcC1sZXZlbCBkZXZpY2UgaW4gdjIuIEFu
ZMKgS3J6eXN6dG9mIHJlbWluZGVkIG1lIHRoYXQgYWRkaW5nIGEgbW9kZS1zd2l0Y2ggdW5kZXIg
dGhlIGRwLXBvcnQgd291bGQgYmUgYmV0dGVyLCBzbyBJIGNoYW5nZWQgaXQgdG8gdGhlIGN1cnJl
bnQgZm9ybSA6KQo+Pj4gSSBjb3VsZG4ndCBmaW5kIHRoZSBjb21tZW50IG9uIGxvcmUuIENvdWxk
IHlvdSBwbGVhc2UgcG9pbnQgaXQgb3V0Pwo+PiBTb3JyeSwgaXQgaXMgdjEuIEkgYWRkZWQgYW4g
b3JpZW50YXRpb24tc3dpdGNoIGFuZCBhIG1vZGUtc3dpdGNoIGluIHRoZSB0b3AtbGV2ZWwgUEhZ
IFswXS4gQ29tbWVudCBpcyBoZXJlOiBbMV0KPiBNeSBpbnRlcnByZXRhdGlvbiBvZiBbMV0gZG9l
c24ndCBxdWl0ZSBtYXRjaCB5b3Vycy4gSXQgZG9lc24ndCBzYXkKPiBhbnl0aGluZyBhYm91dCBt
b3ZpbmcgbW9kZS1zd2l0Y2ggdG8gZHAtcG9ydC4gSXQgYmFzaWNhbGx5IHBvaW50ZWQgb3V0Cj4g
dGhhdCB5b3UgYWxyZWFkeSBoYXZlIHR3byBwb3J0cy4KClllcywgSSB0aGluayB0aGlzIGNhbiBi
ZSBlYXNpbHkgY2hhbmdlZCwgYXMgbG9uZyBhcyB0aGUgaXNzdWUgeW91IG1lbnRpb25lZCBiZWxv
dyBpcyByZXNvbHZlZC4KCgo+Cj4gQWxzbywgSSdtIG5vdCBzdXJlIGhvdyB0aGUgY3VycmVudCBj
b25zdHJ1Y3Rpb24gd29ya3M6IHlvdSByZWdpc3Rlcgo+IHN3aXRjaCBhbmQgbXV4IGZvciB0aGUg
ZGV2X2Z3bm9kZSh0Y3BoeS0+ZGV2KSwgaG93ZXZlciB0aGUgbG9va2Z1cAo+IGZ1bmN0aW9ucyBz
aG91bGQgYmUgbG9va2luZyBmb3IgYSBkZXZpY2UgY29ycmVzcG9uZGluZyB0byB0aGUgcG9ydCBP
Rgo+IG5vZGUgKHdoaWNoIGRvZXNuJ3QgZXhpc3QpLgoKSW4gdjEsIHRoYXQgaXMgZndub2RlID0g
ZGV2X2Z3bm9kZSh0Y3BoeS0+ZGV2KSAuwqAgQW5kIGR0IGxpa2UgaXM6CgoKJnRjcGh5IHsKIMKg
IMKgIHBvcnQgewogwqAgwqAgwqAgwqAgdGNwaHkwX29yaWVudGF0aW9uX3N3aXRjaDogZW5kcG9p
bnRAMCB7IC4uLiB9OwogwqAgwqAgwqAgwqAgdGNwaHlfZHBfYWx0bW9kZV9zd2l0Y2g6IGVuZHBv
aW50QDEgeyAuLi4gfTsKIMKgIMKgIH07Cn07CgoKU2luY2UgdGhlIGJpbmRpbmcgYWxyZWFkeSBp
bmNsdWRlcyBhICJ1c2IzLXBvcnQiIGFuZCBhICJkcC1wb3J0IiwgaXQgY2FuIG5vdCBhZGQgYW5v
dGhlciBuZXcgcG9ydC4KClNvIGFmdGVyIHYxLCB0aGF0IGlzIGZ3bm9kZSA9IGRldmljZV9nZXRf
bmFtZWRfY2hpbGRfbm9kZSh0Y3BoeS0+ZGV2LCAidXNiMy1wb3J0IikgLiBBbmQgZHQgbGlrZSB0
aGlzOgoKCiZ0Y3BoeTBfZHAgewogwqAgwqAgcG9ydCB7IC4uLiB9Owp9OwoKJnRjcGh5MF91c2Iz
IHsKIMKgIMKgIHBvcnQgeyAuLi4gfTsKfTsKCgpTb3JyeSwgdGhpcyBsb29rcyBhIGJpdCBoYWNr
eS4gRG8geW91IGhhdmUgYSBiZXR0ZXIgaWRlYT8gVGhhbmsgeW91LgoKCj4KPj4KPj4gWzBdIGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI1MDcxNTExMjQ1Ni4xMDEtNC1rZXJuZWxAYWly
a3lpLmNvbS8KPj4KPj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC80ZGZlZDk0Yy02
NjVkLTRlMDQtYjUyNy1kZGQzNGZkM2RiOGZAa2VybmVsLm9yZy8KPj4KPj4KPj4KPj4+Pgo+Pj4+
Pj4gKyAgICAgICAgZGVzY3JpcHRpb246Cj4+Pj4+PiArICAgICAgICAgIEluZGljYXRlcyB0aGUg
UEhZIGNhbiBoYW5kbGUgYWx0bW9kZSBzd2l0Y2hpbmcuIEluIHRoaXMgY2FzZSwKPj4+Pj4+ICsg
ICAgICAgICAgcmVxdWlyZXMgYW4gZXh0ZXJuYWwgVVNCIFR5cGUtQyBjb250cm9sbGVyIHRvIHJl
cG9ydCBVU0IgUEQgbWVzc2FnZS4KPj4+Pj4+ICsgICAgICAgIHR5cGU6IGJvb2xlYW4KPj4+Pj4+
ICsKPj4+Pj4+ICAgICAgICAgICBwb3J0Ogo+Pj4+Pj4gICAgICAgICAgICAgJHJlZjogL3NjaGVt
YXMvZ3JhcGgueWFtbCMvcHJvcGVydGllcy9wb3J0Cj4+Pj4+PiAgICAgICAgICAgICBkZXNjcmlw
dGlvbjogQ29ubmVjdGlvbiB0byBVU0IgVHlwZS1DIGNvbm5lY3Rvcgo+Pj4+Pj4gLS0gCj4+Pj4+
PiAyLjQ5LjAKPj4+Pj4+Cj4+Pj4gLS0gCj4+Pj4gQmVzdCwKPj4+PiBDaGFveWkKPj4+Pgo+PiAt
LSAKPj4gQmVzdCwKPj4gQ2hhb3lpCj4+Cj4+Cj4+IC0tIAo+PiBsaW51eC1waHkgbWFpbGluZyBs
aXN0Cj4+IGxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCj4+IGh0dHBzOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQoKLS0gCkJlc3QsCkNoYW95aQoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
