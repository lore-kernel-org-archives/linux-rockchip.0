Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EF2AACAC5A7
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Sep 2025 01:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KfnK8kfIl6Qx2TIA85kRWiYUefQlv28aJX9LRcwaFpY=; b=2Cv9p254cgM/JZ
	I6gAd98EnNtRnDOXtFmOWFRPq4qsqiEYgAj/ruJhISknz60Y4qD93z97kffaz4WtfSG9DEqPxSyi+
	yOdBom4JvlUtQcQFRnmJr0+eGG7RBoQe+CdCobnkn7Nrga3Ndw5Bxv9vMj443ap7thpvT33+9y8Ax
	Ymc+Vg5R29M0nM2O+b749an+AkgJtXmyLXjMjcV4ZnwNuClF4/rGil2SQ4EBRy++qM+9/jJxmNY3Y
	y9E3tLSnxWIbqqhqNaJdupFMSDz967kk4DivxDyQ1dG0tlgvF+FWspidbXq7NBm4zLROQNNu8eKTU
	bxZ7rRUPsZNeFBb2yw5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0sDW-0000000C44n-0f2g;
	Tue, 23 Sep 2025 01:53:18 +0000
Received: from mail-m3268.qiye.163.com ([220.197.32.68])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v0sDS-0000000C447-2QvS;
	Tue, 23 Sep 2025 01:53:15 +0000
Received: from [172.16.12.153] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 23b4ad8a0;
	Tue, 23 Sep 2025 09:53:08 +0800 (GMT+08:00)
Message-ID: <533d41bd-9293-4808-85f3-8fb6dc8bcda7@rock-chips.com>
Date: Tue, 23 Sep 2025 09:53:06 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/7] dt-bindings: phy: rockchip: rk3399-typec-phy:
 Support mode-switch
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
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
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <eb6ogrepo5acwcj5gpdolxxyg3xrx7kz6zrbizzseqyavvitfd@cnzurelqeh4t>
X-HM-Tid: 0a9974464da503abkunm22f00280b9170
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkJCS1ZMS0JNSEhIGktMGUtWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpPSE
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=FVAuvIC6WtCOkl7iGSCNBPn3NST+u7LAfgkkz8bBSPG57/anneDVRUxQD3phPFobGTw+H2FPJ/3RW8oPuZRKAoRqzyfzCBiMzGiX/zF3oVAyQoce5gghiL9LICOcDeJyrqy+JhX3wovoruTkQeXgpo19obUlwY5peVyclSu6Dic=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=XLei+uFr5YZHJ93sMcV3QqaOLicJRVy9CC898it139A=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250922_185314_784578_A2005BAD 
X-CRM114-Status: GOOD (  17.09  )
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

SGkgRG1pdHJ5LAoKT24gOS8yMy8yMDI1IDk6MTIgQU0sIERtaXRyeSBCYXJ5c2hrb3Ygd3JvdGU6
Cj4gT24gTW9uLCBTZXAgMjIsIDIwMjUgYXQgMDk6MjA6MzRBTSArMDgwMCwgQ2hhb3lpIENoZW4g
d3JvdGU6Cj4+IEZyb206IENoYW95aSBDaGVuIDxjaGFveWkuY2hlbkByb2NrLWNoaXBzLmNvbT4K
Pj4KPj4gVGhlIFJLMzM5OSBTb0MgaW50ZWdyYXRlcyB0d28gVVNCL0RQIGNvbWJvIFBIWXMsIGVh
Y2ggb2Ygd2hpY2gKPj4gc3VwcG9ydHMgc29mdHdhcmUtY29uZmlndXJhYmxlIHBpbiBtYXBwaW5n
IGFuZCBEaXNwbGF5UG9ydCBsYW5lCj4+IGFzc2lnbm1lbnQuIFRoZXNlIGNhcGFiaWxpdGllcyBl
bmFibGUgdGhlIFBIWSBpdHNlbGYgdG8gaGFuZGxlIGJvdGgKPj4gbW9kZSBzd2l0Y2hpbmcgYW5k
IG9yaWVudGF0aW9uIHN3aXRjaGluZywgYmFzZWQgb24gdGhlIFR5cGUtQyBwbHVnCj4+IG9yaWVu
dGF0aW9uIGFuZCBVU0IgUEQgbmVnb3RpYXRpb24gcmVzdWx0cy4KPj4KPj4gV2hpbGUgYW4gZXh0
ZXJuYWwgVHlwZS1DIGNvbnRyb2xsZXIgaXMgc3RpbGwgcmVxdWlyZWQgdG8gZGV0ZWN0IGNhYmxl
Cj4+IGF0dGFjaG1lbnQgYW5kIHJlcG9ydCBVU0IgUEQgZXZlbnRzLCB0aGUgYWN0dWFsIG1vZGUg
YW5kIG9yaWVudGF0aW9uCj4+IHN3aXRjaGluZyBpcyBwZXJmb3JtZWQgaW50ZXJuYWxseSBieSB0
aGUgUEhZIHRocm91Z2ggc29mdHdhcmUKPj4gY29uZmlndXJhdGlvbi4gVGhpcyBhbGxvd3MgdGhl
IFBIWSB0byBhY3QgYXMgYSBUeXBlLUMgbXVsdGlwbGV4ZXIgZm9yCj4+IGJvdGggZGF0YSByb2xl
IGFuZCBEUCBhbHRtb2RlIGNvbmZpZ3VyYXRpb24uCj4+Cj4+IFRvIHJlZmxlY3QgdGhpcyBoYXJk
d2FyZSBkZXNpZ24sIHRoaXMgcGF0Y2ggaW50cm9kdWNlcyBhIG5ldwo+PiAibW9kZS1zd2l0Y2gi
IHByb3BlcnR5IGZvciB0aGUgZHAtcG9ydCBub2RlIGluIHRoZSBkZXZpY2UgdHJlZSBiaW5kaW5n
cy4KPj4gVGhpcyBwcm9wZXJ0eSBpbmRpY2F0ZXMgdGhhdCB0aGUgY29ubmVjdGVkIFBIWSBpcyBj
YXBhYmxlIG9mIGhhbmRsaW5nCj4+IFR5cGUtQyBtb2RlIHN3aXRjaGluZyBpdHNlbGYuCj4+Cj4+
IFNpZ25lZC1vZmYtYnk6IENoYW95aSBDaGVuIDxjaGFveWkuY2hlbkByb2NrLWNoaXBzLmNvbT4K
Pj4KPj4gQWNrZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lA
bGluYXJvLm9yZz4KPj4gLS0tCj4+Cj4+IENoYW5nZXMgaW4gdjQ6Cj4+IC0gUmVtb3ZlICJ8IiBp
biBkZXNjcmlwdGlvbi4KPj4KPj4gQ2hhbmdlcyBpbiB2MzoKPj4gLSBBZGQgbW9yZSBkZXNjcmlw
dGlvbnMgdG8gY2xhcmlmeSB0aGUgcm9sZSBvZiB0aGUgUEhZIGluIHN3aXRjaGluZy4KPj4KPj4g
Q2hhbmdlcyBpbiB2MjoKPj4gLSBSZXVzZSBkcC1wb3J0L3VzYjMtcG9ydCBpbiByazMzOTktdHlw
ZWMtcGh5IGJpbmRpbmcuCj4+Cj4+ICAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvcGh5L3JvY2tj
aGlwLHJrMzM5OS10eXBlYy1waHkueWFtbCAgfCA2ICsrKysrKwo+PiAgIDEgZmlsZSBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy9waHkvcm9ja2NoaXAscmszMzk5LXR5cGVjLXBoeS55YW1sIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9yb2NrY2hpcCxyazMzOTktdHlwZWMtcGh5
LnlhbWwKPj4gaW5kZXggOTFjMDExZjY4Y2QwLi44M2ViY2RlMDk2ZWEgMTAwNjQ0Cj4+IC0tLSBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvcm9ja2NoaXAscmszMzk5LXR5
cGVjLXBoeS55YW1sCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9w
aHkvcm9ja2NoaXAscmszMzk5LXR5cGVjLXBoeS55YW1sCj4+IEBAIC01MSw2ICs1MSwxMiBAQCBw
cm9wZXJ0aWVzOgo+PiAgICAgICAgICcjcGh5LWNlbGxzJzoKPj4gICAgICAgICAgIGNvbnN0OiAw
Cj4+ICAgCj4+ICsgICAgICBtb2RlLXN3aXRjaDoKPiBIYXZpbmcgdGhlIG1vZGUtc3dpdGNoIGhl
cmUgaXMgYSBiaXQgc3RyYW5nZS4gSSB0aGluayB0aGUgd2hvbGUgUEhZCj4gZGV2aWNlIHNob3Vs
ZCBiZSBhbiBvcmllbnRhdGlvbi1zd2l0Y2ggYW5kIG1vZGUtc3dpdGNoLiBPdGhlcndpc2UgaXQK
PiBmZWVscyB3ZWlyZCB0byBtZS4KCkkgdGhpbmsgdGhpcyBpcyBhIGRpZmZlcmVuY2UgaW4gcHJh
Y3RpY2UuIEluIHRoZSBwcmV2aW91cyBiaW5kaW5nLCB0aGVyZSB3YXMgYWxyZWFkeSBhbiBvcmll
bnRhdGlvbi1zd2l0Y2ggdW5kZXIgdGhlIHVzYi1wb3J0LiBJIHRyeWluZyB0byBhZGQgYm90aCBh
biBvcmllbnRhdGlvbi1zd2l0Y2ggYW5kIGEgbW9kZS1zd2l0Y2ggdG8gdGhlIHRvcC1sZXZlbCBk
ZXZpY2UgaW4gdjIuIEFuZMKgS3J6eXN6dG9mIHJlbWluZGVkIG1lIHRoYXQgYWRkaW5nIGEgbW9k
ZS1zd2l0Y2ggdW5kZXIgdGhlIGRwLXBvcnQgd291bGQgYmUgYmV0dGVyLCBzbyBJIGNoYW5nZWQg
aXQgdG8gdGhlIGN1cnJlbnQgZm9ybSA6KQoKCgo+Cj4+ICsgICAgICAgIGRlc2NyaXB0aW9uOgo+
PiArICAgICAgICAgIEluZGljYXRlcyB0aGUgUEhZIGNhbiBoYW5kbGUgYWx0bW9kZSBzd2l0Y2hp
bmcuIEluIHRoaXMgY2FzZSwKPj4gKyAgICAgICAgICByZXF1aXJlcyBhbiBleHRlcm5hbCBVU0Ig
VHlwZS1DIGNvbnRyb2xsZXIgdG8gcmVwb3J0IFVTQiBQRCBtZXNzYWdlLgo+PiArICAgICAgICB0
eXBlOiBib29sZWFuCj4+ICsKPj4gICAgICAgICBwb3J0Ogo+PiAgICAgICAgICAgJHJlZjogL3Nj
aGVtYXMvZ3JhcGgueWFtbCMvcHJvcGVydGllcy9wb3J0Cj4+ICAgICAgICAgICBkZXNjcmlwdGlv
bjogQ29ubmVjdGlvbiB0byBVU0IgVHlwZS1DIGNvbm5lY3Rvcgo+PiAtLSAKPj4gMi40OS4wCj4+
Ci0tIApCZXN0LApDaGFveWkKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
