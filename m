Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2CAACFD31C
	for <linux-rockchip@archiver.kernel.org>; Mon, 24 Nov 2025 08:06:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DuC4OsQQhZMfNz/UkyQ3NVEnv3cIslXHdK+KBJIYNqs=; b=ViC/XqFO3fKai1
	rWrfJVs3qHTtZpxP7EWRFbRWduG3YoZNSmgOa40ENQ5b7uIdz67+GKnsA/2lXX6Q/yrhrLXHBX4Yy
	uEeJEiQD0Ouh/rllSbOfLNUs/Ql03gWj8fiazPO/xdcjGgApcYQf5NSIQGQXO8tGO1xqrqNimw/l0
	XSh6c87frNcmzBlaABcIqczaRVazZufM9iRgwD59blxDZ7r6wybDux/rtf+/zkt7e7SXX16FXTrry
	K8QB3dLgu+Nuo1kl+14fIa4ZwRcrMntktomA+3kgGQWE5qRx0xblUZsMhUVO+zdybZs/N9lD4VwdZ
	jXgzBgsB5rOVK8b8Fmhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNRaL-0000000BGGv-1d0i;
	Mon, 24 Nov 2025 08:06:09 +0000
Received: from mail-m49221.qiye.163.com ([45.254.49.221])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNRaE-0000000BGFb-2sNZ;
	Mon, 24 Nov 2025 08:06:07 +0000
Received: from [172.16.12.51] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2aa88f2fe;
	Mon, 24 Nov 2025 16:05:54 +0800 (GMT+08:00)
Message-ID: <a80483de-518d-45d5-b46a-9b70cca5b236@rock-chips.com>
Date: Mon, 24 Nov 2025 16:05:53 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 01/11] usb: typec: Add notifier functions
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Chaoyi Chen <kernel@airkyi.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Peter Chen <hzpeterchen@gmail.com>, Luca Ceresoli
 <luca.ceresoli@bootlin.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>, Dragan Simic <dsimic@manjaro.org>,
 Johan Jonker <jbx6244@gmail.com>, Diederik de Haas <didi.debian@cknow.org>,
 Peter Robinson <pbrobinson@gmail.com>, linux-usb@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
References: <20251120022343.250-1-kernel@airkyi.com>
 <20251120022343.250-2-kernel@airkyi.com>
 <2025112102-laurel-mulch-58e4@gregkh>
 <462ad1bd-7eec-4f26-b383-96b049e14559@rock-chips.com>
 <2025112402-unopposed-polio-e6e9@gregkh>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <2025112402-unopposed-polio-e6e9@gregkh>
X-HM-Tid: 0a9ab4e5daa803abkunma55763e93ea70d
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkxISlZNSktCGh9IGkoaTk9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE
	5VSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=KJvSMQWnhpc4p7xme6emDFe2++rK44pn+ANOLRzg5kiLyjx+/4+yFvS6QcBrrxdhALgpyzrKiSpzwKvymkjs34dszmAkArFI9nKrFKxGwSzH8jEZmbae68cvtp3xcYfv9VmIj6xu/V65TudwLH2r6q/J/2emA/s0k+m7iBbXtjc=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Dm0AUIAI3rBdsSDVXq01oojJAQeP5JCEx7XZOEM8cDU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_000603_266038_311C9925 
X-CRM114-Status: GOOD (  23.58  )
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

SGkgR3JlZywKCk9uIDExLzI0LzIwMjUgMzoxMCBQTSwgR3JlZyBLcm9haC1IYXJ0bWFuIHdyb3Rl
OgoKPiBPbiBNb24sIE5vdiAyNCwgMjAyNSBhdCAwOTo0MDowM0FNICswODAwLCBDaGFveWkgQ2hl
biB3cm90ZToKPj4gSGkgR3JlZywKPj4KPj4gT24gMTEvMjEvMjAyNSAxMDowNyBQTSwgR3JlZyBL
cm9haC1IYXJ0bWFuIHdyb3RlOgo+Pj4gT24gVGh1LCBOb3YgMjAsIDIwMjUgYXQgMTA6MjM6MzNB
TSArMDgwMCwgQ2hhb3lpIENoZW4gd3JvdGU6Cj4+Pj4gRnJvbTogQ2hhb3lpIENoZW4gPGNoYW95
aS5jaGVuQHJvY2stY2hpcHMuY29tPgo+Pj4+Cj4+Pj4gU29tZSBvdGhlciBwYXJ0IG9mIGtlcm5l
bCBtYXkgd2FudCB0byBrbm93IHRoZSBldmVudCBvZiB0eXBlYyBidXMuCj4+PiBCZSBzcGVjaWZp
YywgV0hBVCBwYXJ0IG9mIHRoZSBrZXJuZWwgd2lsbCBuZWVkIHRvIGtub3cgdGhpcz8KPj4gRm9y
IG5vdywgaXQgaXMgRFJNLgo+IFRoZW4gc2F5IHRoaXMuCgpPa2F5LCBwbGVhc2UgcmVmZXIgdG8g
dGhlIGRpc2N1c3Npb24gYmVsb3cuCgo+Cj4+PiBBbmQgd2h5IGEgbmV3IG5vdGlmaWVyLCB3aHkg
bm90IGp1c3QgdXNlIHRoZSBleGlzdGluZyBub3RpZmllcnMgdGhhdCB5b3UKPj4+IGFscmVhZHkg
aGF2ZT8gIEFuZCB3aGF0IGlzIHRoaXMgZ29pbmcgdG8gYmUgdXNlZCBmb3I/Cj4+IFdlIGhhdmUg
ZGlzY3Vzc2VkIHRoaXMgYmVmb3JlLCBidXQgdGhlIGN1cnJlbnQgYnVzIG5vdGlmaWVyIGNhbm5v
dCBhY2hpZXZlIHRoZSBleHBlY3RlZCBub3RpZmljYXRpb24gWzBdLgo+Pgo+PiBbMF0gaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvYWxsL2FQc3VMUkVQU19GRVYzRFNAa3VoYS5maS5pbnRlbC5jb20v
Cj4gVGhlbiB5b3UgbmVlZCB0byBkb2N1bWVudCB0aGUgaGVjayBvdXQgb2YgdGhpcyBpbiB0aGUg
Y2hhbmdlbG9nIHRleHQuCj4gQnV0IEknbSBzdGlsbCBub3QgcXVpdGUgdW5kZXJzdGFuZGluZyB3
aHkgdGhlIGJ1cyBub3RpZmllciBkb2VzIG5vdCB3b3JrCj4gaGVyZSwgYXMgeW91IG9ubHkgd2Fu
dCB0aGlzIGluZm9ybWF0aW9uIGlmIHRoZSB1c2IgZGV2aWNlIGlzIGJvdW5kIHRvCj4gdGhlIGJ1
cyB0aGVyZSwgeW91IGRvIG5vdCB3YW50IHRvIGtub3cgdGhpcyBpZiBpdCBkaWQgbm90IGNvbXBs
ZXRlLgo+Cj4gVGhhdCB0aHJlYWQgc2F5cyB5b3Ugd2FudCB0aGlzIG5vdCAidG9vIGxhdGUiLCBi
dXQgd2h5PyAgV2hhdCBpcyB0aGUKPiBwcm9ibGVtIHRoZXJlLCBhbmQgaG93IHdpbGwgeW91IGhh
bmRsZSB5b3VyIGNvZGUgZ2V0dGluZyBsb2FkZWQgYWZ0ZXIKPiB0aGUgdHlwZWMgY29kZSBpcyBs
b2FkZWQ/ICBOb3RpZmllciBjYWxsYmFja3MgZG9uJ3Qgd29yayBmb3IgdGhhdAo+IHNpdHVhdGlv
biwgcmlnaHQ/CgpJbiBmYWN0LCB0aGUgdHlwZWNfcmVnaXN0ZXJfYWx0bW9kZSgpIGZ1bmN0aW9u
IGdlbmVyYXRlcyB0d28gcmVnaXN0ZXJlZCBldmVudHMuwqBUaGUgZmlyc3Qgb25lIGlzIHRoZSBy
ZWdpc3RlcmVkIGV2ZW50IG9mIHRoZSBwb3J0IGRldmljZSwKCmFuZCB0aGUgc2Vjb25kIG9uZSBp
cyB0aGUgcmVnaXN0ZXJlZCBldmVudCBvZiB0aGUgcGFydG5lciBkZXZpY2UuwqBUaGUgc2Vjb25k
IG9uZSBldmVudCBvbmx5IG9jY3VycyBhZnRlciBhIFR5cGUtQyBkZXZpY2UgaXMgaW5zZXJ0ZWQu
CgpUaGUgYnVzIG5vdGlmaWVyIGV2ZW50IGRvZXMgbm90IGFjdHVhbGx5IHRha2UgZWZmZWN0IGZv
ciB0aGUgcG9ydCBkZXZpY2UsIGJlY2F1c2UgaXQgb25seSBzZXRzIHRoZSBidXMgZm9yIHRoZSBw
YXJ0bmVyIGRldmljZToKCiDCoCDCoCAvKiBUaGUgcGFydG5lcnMgYXJlIGJpbmQgdG8gZHJpdmVy
cyAqLwogwqAgwqAgaWYgKGlzX3R5cGVjX3BhcnRuZXIocGFyZW50KSkKIMKgIMKgIMKgIMKgIGFs
dC0+YWRldi5kZXYuYnVzID0gJnR5cGVjX2J1czsKCgpJIGhvcGUgaXQncyBub3QgdG9vIGxhdGUu
IEluIGZhY3QsIHRoZSBub3RpZmllciBoZXJlIHdpbGwgbm90aWZ5IERSTSB0byBlc3RhYmxpc2gg
YSBicmlkZ2UgY2hhaW4uCgpUaGUgZG93bnN0cmVhbSBEUCBjb250cm9sbGVyIGRyaXZlciBob3Bl
cyB0byBvYnRhaW4gdGhlIGZ3bm9kZSBvZiB0aGUgbGFzdC1sZXZlbCBUeXBlLUMgZGV2aWNlCgp0
aHJvdWdoIHRoaXMgYnJpZGdlIGNoYWluIHRvIGNyZWF0ZSBhIERSTSBjb25uZWN0b3IuIEFuZCB3
aGVuIGEgZGV2aWNlIGlzIGluc2VydGVkLAoKZHJpdmVycy91c2IvdHlwZWMvYWx0bW9kZXMvZGlz
cGxheXBvcnQuYyBjYW4gbm90aWZ5IHRoZSBIUEQgKEhvdCBQbHVnIERldGVjdCkgZXZlbnQuCgpJ
ZiByZWx5aW5nIG9uIHRoZSBzZWNvbmQgZXZlbnQsIHRoZSBicmlkZ2UgY2hhaW4gbWF5IG5ldmVy
IGJlIGVzdGFibGlzaGVkLCBhbmQgdGhlIG9wZXJhdGlvbnMgb2YgdGhlIERQIGRyaXZlciB3aWxs
IGJlCgphbHdheXMgZGVmZXJyZWQuIEZ1cnRoZXJtb3JlLCBvdGhlciBwYXJ0cyBvZiB0aGUgZGlz
cGxheSBjb250cm9sbGVyIGRyaXZlciB3aWxsIGFsc28gYmUgZGVmZXJyZWQgYWNjb3JkaW5nbHku
Cgo+Cj4+PiBOb3RpZmllcnMgYXJlIGEgcGFpbiwgYW5kIHNob3VsZCBhbG1vc3QgbmV2ZXIgYmUg
YWRkZWQuICBVc2UgcmVhbAo+Pj4gZnVuY3Rpb24gY2FsbHMgaW5zdGVhZC4KPj4gSW4gdjYsIEkg
dXNlZCBkaXJlY3QgZnVuY3Rpb24gY2FsbHMsIGJ1dCBoYWQgdG8gc3dpdGNoIHRvIG5vdGlmaWVy
cyBiZWNhdXNlIGNvdWxkbid0IHJlc29sdmUgdGhlIGRlcGVuZGVuY2llcyBiZXR3ZWVuIERSTSBh
bmQgVHlwZS1DIFsxXS4gRG8geW91IGhhdmUgYW55IGdvb2QgaWRlYXM/IFRoYW5rIHlvdS4KPiBP
bmx5IGFsbG93IHRoaXMgRFJNIGNvZGUgdG8gYmUgYnVpbHQgaWYgdHlwZWMgY29kZSBpcyBlbmFi
bGVkLCBkbyBOT1QKPiB1c2UgYSBzZWxlY3QsIHVzZSBhIGRlcGVuZHMgaW4gdGhlIGRybSBjb2Rl
LgoKU29ycnksIEkgZGlkbid0IGdldCB5b3VyIHBvaW50LiBEb2VzIHRoaXMgbWVhbiB0aGF0IHRo
ZSBjdXJyZW50IG5vdGlmaWVycyBhcHByb2FjaCBzdGlsbCBuZWVkcyB0byBiZSBjaGFuZ2VkIHRv
IGRpcmVjdCBmdW5jdGlvbiBjYWxscz8KCklmIHNvLCB0aGVuIGJhc2VkIG9uIHRoZSBwcmV2aW91
cyBkaXNjdXNzaW9uLCB0eXBlYyBzaG91bGQgbm90IGRlcGVuZCBvbiBhbnkgRFJNIGNvbXBvbmVu
dHMuIERvZXMgdGhpcyBtZWFuIHRoYXQgd2Ugc2hvdWxkIGFkZCB0aGUgaWYgKElTX1JFQUNIQUJM
RShDT05GSUdfRFJNX0FVWF9CUklER0UpKSBiZWZvcmUgdGhlIGRpcmVjdCBmdW5jdGlvbiBjYWxs
PwoKQWRkaXRpb25hbGx5LCB0aGUgY3VycmVudCB2ZXJzaW9uIG9mIENPTkZJR19EUk1fQVVYX0JS
SURHRSBpcyBzZWxlY3RlZCBieSB0aGUgRFAgZHJpdmVyIGluIHBhdGNoOS4KCi0tIApCZXN0LApD
aGFveWkKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
