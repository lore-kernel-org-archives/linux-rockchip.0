Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07ABFCAC5AA
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Sep 2025 03:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=80b4t4wCPRfozZwLJtGFlTCCzQY2Z0WRe6DqQP4jxeg=; b=HUK+uo/qG9K0+b
	tmhPVPIKZxvW5MKm8fxLUgy+LfWTHL3FbGFoqo2+FCWc8d6lNYO0H2cZFQFc0bWXibh0641gsQMKR
	wVqECevQRxHzBxl7g2VDn48cofSs1InNgtGFJiKV+Y8oJwTfn8So2VuJDxnVf5ILeXEkCUXDnGH/u
	vSt/2Djl8YuKSj2o5Vq1MGVuHgbUE9U4OVDQhD5qe82JmcK1HrydDRrsewqmpDfBW4jaqHaYDDy0x
	Wl9tJATBMukIy/ei/uFfRD4qE3LXLQTgow+6YITP/hdzx0PeAb1T2rJe31tcldxNTuhBCeb3FJCsi
	spLB9vbWhGVrQqkDX0Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0ttT-0000000CFtu-1z0q;
	Tue, 23 Sep 2025 03:40:43 +0000
Received: from mail-m15573.qiye.163.com ([101.71.155.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0ttP-0000000CFsO-40me;
	Tue, 23 Sep 2025 03:40:42 +0000
Received: from [172.16.12.153] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 23b9177a0;
	Tue, 23 Sep 2025 11:40:35 +0800 (GMT+08:00)
Message-ID: <8396dd15-9111-4ceb-a561-6ed57727546f@rock-chips.com>
Date: Tue, 23 Sep 2025 11:40:33 +0800
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
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <mpyfe63tzxzxyyqf4vxwmrewzeosnaftlkko7pq2ynld6u3lcz@wlpixckov4hg>
X-HM-Tid: 0a9974a8abd103abkunm3cf890a4eb55b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ09KH1YfSxoZGkwYThkZS0hWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpPSE
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=cbNY1QVTq4ppl4jyOwF7tumwsvMIakcT3973cK6igiHD2I6Z1e6IdCjrWZtY5ojzKbDSYrp6+0OhklB+Z3gE5YRglgYHRYu9quejf9cfFM4iRQLujzUflTJ5byBxV+O07/oRwbu+7WqoenxLpysHAwH8PRjtVPn5yL+zs82jpdw=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=4KUKqQ7mqQ2zVDBXjqLvwFYHz4+0xl7oABzJGnrMKc8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_204040_180180_9734B589 
X-CRM114-Status: GOOD (  15.24  )
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

T24gOS8yMy8yMDI1IDExOjE3IEFNLCBEbWl0cnkgQmFyeXNoa292IHdyb3RlOgoKPiBPbiBUdWUs
IFNlcCAyMywgMjAyNSBhdCAwOTo1MzowNkFNICswODAwLCBDaGFveWkgQ2hlbiB3cm90ZToKPj4g
SGkgRG1pdHJ5LAo+Pgo+PiBPbiA5LzIzLzIwMjUgOToxMiBBTSwgRG1pdHJ5IEJhcnlzaGtvdiB3
cm90ZToKPj4+IE9uIE1vbiwgU2VwIDIyLCAyMDI1IGF0IDA5OjIwOjM0QU0gKzA4MDAsIENoYW95
aSBDaGVuIHdyb3RlOgo+Pj4+IEZyb206IENoYW95aSBDaGVuIDxjaGFveWkuY2hlbkByb2NrLWNo
aXBzLmNvbT4KPj4+Pgo+Pj4+IFRoZSBSSzMzOTkgU29DIGludGVncmF0ZXMgdHdvIFVTQi9EUCBj
b21ibyBQSFlzLCBlYWNoIG9mIHdoaWNoCj4+Pj4gc3VwcG9ydHMgc29mdHdhcmUtY29uZmlndXJh
YmxlIHBpbiBtYXBwaW5nIGFuZCBEaXNwbGF5UG9ydCBsYW5lCj4+Pj4gYXNzaWdubWVudC4gVGhl
c2UgY2FwYWJpbGl0aWVzIGVuYWJsZSB0aGUgUEhZIGl0c2VsZiB0byBoYW5kbGUgYm90aAo+Pj4+
IG1vZGUgc3dpdGNoaW5nIGFuZCBvcmllbnRhdGlvbiBzd2l0Y2hpbmcsIGJhc2VkIG9uIHRoZSBU
eXBlLUMgcGx1Zwo+Pj4+IG9yaWVudGF0aW9uIGFuZCBVU0IgUEQgbmVnb3RpYXRpb24gcmVzdWx0
cy4KPj4+Pgo+Pj4+IFdoaWxlIGFuIGV4dGVybmFsIFR5cGUtQyBjb250cm9sbGVyIGlzIHN0aWxs
IHJlcXVpcmVkIHRvIGRldGVjdCBjYWJsZQo+Pj4+IGF0dGFjaG1lbnQgYW5kIHJlcG9ydCBVU0Ig
UEQgZXZlbnRzLCB0aGUgYWN0dWFsIG1vZGUgYW5kIG9yaWVudGF0aW9uCj4+Pj4gc3dpdGNoaW5n
IGlzIHBlcmZvcm1lZCBpbnRlcm5hbGx5IGJ5IHRoZSBQSFkgdGhyb3VnaCBzb2Z0d2FyZQo+Pj4+
IGNvbmZpZ3VyYXRpb24uIFRoaXMgYWxsb3dzIHRoZSBQSFkgdG8gYWN0IGFzIGEgVHlwZS1DIG11
bHRpcGxleGVyIGZvcgo+Pj4+IGJvdGggZGF0YSByb2xlIGFuZCBEUCBhbHRtb2RlIGNvbmZpZ3Vy
YXRpb24uCj4+Pj4KPj4+PiBUbyByZWZsZWN0IHRoaXMgaGFyZHdhcmUgZGVzaWduLCB0aGlzIHBh
dGNoIGludHJvZHVjZXMgYSBuZXcKPj4+PiAibW9kZS1zd2l0Y2giIHByb3BlcnR5IGZvciB0aGUg
ZHAtcG9ydCBub2RlIGluIHRoZSBkZXZpY2UgdHJlZSBiaW5kaW5ncy4KPj4+PiBUaGlzIHByb3Bl
cnR5IGluZGljYXRlcyB0aGF0IHRoZSBjb25uZWN0ZWQgUEhZIGlzIGNhcGFibGUgb2YgaGFuZGxp
bmcKPj4+PiBUeXBlLUMgbW9kZSBzd2l0Y2hpbmcgaXRzZWxmLgo+Pj4+Cj4+Pj4gU2lnbmVkLW9m
Zi1ieTogQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29tPgo+Pj4+Cj4+Pj4g
QWNrZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJv
Lm9yZz4KPj4+PiAtLS0KPj4+Pgo+Pj4+IENoYW5nZXMgaW4gdjQ6Cj4+Pj4gLSBSZW1vdmUgInwi
IGluIGRlc2NyaXB0aW9uLgo+Pj4+Cj4+Pj4gQ2hhbmdlcyBpbiB2MzoKPj4+PiAtIEFkZCBtb3Jl
IGRlc2NyaXB0aW9ucyB0byBjbGFyaWZ5IHRoZSByb2xlIG9mIHRoZSBQSFkgaW4gc3dpdGNoaW5n
Lgo+Pj4+Cj4+Pj4gQ2hhbmdlcyBpbiB2MjoKPj4+PiAtIFJldXNlIGRwLXBvcnQvdXNiMy1wb3J0
IGluIHJrMzM5OS10eXBlYy1waHkgYmluZGluZy4KPj4+Pgo+Pj4+ICAgIC4uLi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BoeS9yb2NrY2hpcCxyazMzOTktdHlwZWMtcGh5LnlhbWwgIHwgNiArKysrKysK
Pj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCj4+Pj4KPj4+PiBkaWZmIC0t
Z2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9yb2NrY2hpcCxyazMz
OTktdHlwZWMtcGh5LnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5
L3JvY2tjaGlwLHJrMzM5OS10eXBlYy1waHkueWFtbAo+Pj4+IGluZGV4IDkxYzAxMWY2OGNkMC4u
ODNlYmNkZTA5NmVhIDEwMDY0NAo+Pj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9waHkvcm9ja2NoaXAscmszMzk5LXR5cGVjLXBoeS55YW1sCj4+Pj4gKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9yb2NrY2hpcCxyazMzOTktdHlwZWMt
cGh5LnlhbWwKPj4+PiBAQCAtNTEsNiArNTEsMTIgQEAgcHJvcGVydGllczoKPj4+PiAgICAgICAg
ICAnI3BoeS1jZWxscyc6Cj4+Pj4gICAgICAgICAgICBjb25zdDogMAo+Pj4+ICsgICAgICBtb2Rl
LXN3aXRjaDoKPj4+IEhhdmluZyB0aGUgbW9kZS1zd2l0Y2ggaGVyZSBpcyBhIGJpdCBzdHJhbmdl
LiBJIHRoaW5rIHRoZSB3aG9sZSBQSFkKPj4+IGRldmljZSBzaG91bGQgYmUgYW4gb3JpZW50YXRp
b24tc3dpdGNoIGFuZCBtb2RlLXN3aXRjaC4gT3RoZXJ3aXNlIGl0Cj4+PiBmZWVscyB3ZWlyZCB0
byBtZS4KPj4gSSB0aGluayB0aGlzIGlzIGEgZGlmZmVyZW5jZSBpbiBwcmFjdGljZS4gSW4gdGhl
IHByZXZpb3VzIGJpbmRpbmcsIHRoZXJlIHdhcyBhbHJlYWR5IGFuIG9yaWVudGF0aW9uLXN3aXRj
aCB1bmRlciB0aGUgdXNiLXBvcnQuIEkgdHJ5aW5nIHRvIGFkZCBib3RoIGFuIG9yaWVudGF0aW9u
LXN3aXRjaCBhbmQgYSBtb2RlLXN3aXRjaCB0byB0aGUgdG9wLWxldmVsIGRldmljZSBpbiB2Mi4g
QW5kwqBLcnp5c3p0b2YgcmVtaW5kZWQgbWUgdGhhdCBhZGRpbmcgYSBtb2RlLXN3aXRjaCB1bmRl
ciB0aGUgZHAtcG9ydCB3b3VsZCBiZSBiZXR0ZXIsIHNvIEkgY2hhbmdlZCBpdCB0byB0aGUgY3Vy
cmVudCBmb3JtIDopCj4gSSBjb3VsZG4ndCBmaW5kIHRoZSBjb21tZW50IG9uIGxvcmUuIENvdWxk
IHlvdSBwbGVhc2UgcG9pbnQgaXQgb3V0PwoKU29ycnksIGl0IGlzIHYxLiBJIGFkZGVkIGFuIG9y
aWVudGF0aW9uLXN3aXRjaCBhbmQgYSBtb2RlLXN3aXRjaCBpbiB0aGUgdG9wLWxldmVsIFBIWSBb
MF0uIENvbW1lbnQgaXMgaGVyZTogWzFdCgoKWzBdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2Fs
bC8yMDI1MDcxNTExMjQ1Ni4xMDEtNC1rZXJuZWxAYWlya3lpLmNvbS8KClsxXSBodHRwczovL2xv
cmUua2VybmVsLm9yZy9hbGwvNGRmZWQ5NGMtNjY1ZC00ZTA0LWI1MjctZGRkMzRmZDNkYjhmQGtl
cm5lbC5vcmcvCgoKCj4+Cj4+Cj4+Pj4gKyAgICAgICAgZGVzY3JpcHRpb246Cj4+Pj4gKyAgICAg
ICAgICBJbmRpY2F0ZXMgdGhlIFBIWSBjYW4gaGFuZGxlIGFsdG1vZGUgc3dpdGNoaW5nLiBJbiB0
aGlzIGNhc2UsCj4+Pj4gKyAgICAgICAgICByZXF1aXJlcyBhbiBleHRlcm5hbCBVU0IgVHlwZS1D
IGNvbnRyb2xsZXIgdG8gcmVwb3J0IFVTQiBQRCBtZXNzYWdlLgo+Pj4+ICsgICAgICAgIHR5cGU6
IGJvb2xlYW4KPj4+PiArCj4+Pj4gICAgICAgICAgcG9ydDoKPj4+PiAgICAgICAgICAgICRyZWY6
IC9zY2hlbWFzL2dyYXBoLnlhbWwjL3Byb3BlcnRpZXMvcG9ydAo+Pj4+ICAgICAgICAgICAgZGVz
Y3JpcHRpb246IENvbm5lY3Rpb24gdG8gVVNCIFR5cGUtQyBjb25uZWN0b3IKPj4+PiAtLSAKPj4+
PiAyLjQ5LjAKPj4+Pgo+PiAtLSAKPj4gQmVzdCwKPj4gQ2hhb3lpCj4+Ci0tIApCZXN0LApDaGFv
eWkKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
