Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 286F2C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Mar 2022 07:21:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6GenjLQTkaQIp4Jzb6jtXYmgtZf5Bord5ZNypMbwayY=; b=BdvUfMShix336G
	hTEgNBYy3XFESSCwgAVQOCzKw6X0ybl2nU5YUJXvw/5sHj/7WPUsg6DE1c3zFT2hYkiRANP06fRAF
	MOUYRHBLxGDSTmg7Ob+kcAOtzcznEK6uc546dT0W7q9qkF9LkeoFlRB7+KJhuK5Y1u2hYnG07x9XP
	xoZ8FKDDMX578dps7jc5oPHkT1zI4ZzJBreBO53csvtp5d903MmbrQ8Sf67P/6VaJ3hI1/jmYG+AW
	rYwhu5R4VMMOy5712zgSpX1d130OrunBFFB3nxAvaMOnArbG/DDPnC2eL1bOMZN5+RkYEuyoG1pCu
	AeKatD+cY06LQPSrPtPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZp75-0013MJ-UK; Thu, 31 Mar 2022 07:20:59 +0000
Received: from mail-m176237.qiye.163.com ([59.111.176.237])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZp6o-0013Fb-Oi; Thu, 31 Mar 2022 07:20:44 +0000
Received: from [172.16.12.141] (unknown [58.22.7.114])
 by mail-m176237.qiye.163.com (Hmail) with ESMTPA id B1807C402A9;
 Thu, 31 Mar 2022 15:20:37 +0800 (CST)
Message-ID: <eebd2731-f18b-af1c-b0b9-09df669f5a3c@rock-chips.com>
Date: Thu, 31 Mar 2022 15:20:37 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v9 20/23] drm/rockchip: Make VOP driver optional
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Kever Yang <Kever.yang@rock-chips.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <20220328151116.2034635-21-s.hauer@pengutronix.de>
 <274a12a9-61f1-7d6a-e89c-52237621930b@rock-chips.com>
 <20220330063913.GW12181@pengutronix.de>
 <9619ce71-db59-d6cd-c254-2b67122fa245@rock-chips.com>
 <20220331070614.GD4012@pengutronix.de>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20220331070614.GD4012@pengutronix.de>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRlDHxlWQxlITUpDTk
 kfT0odVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktITUpVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OBA6ITo5CD4BIw4SGEo*OjQp
 Dk5PChJVSlVKTU9DTEpKSUhDTUhJVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
 WUFZTkNVSUlVTFVKSk9ZV1kIAVlBTkhITzcG
X-HM-Tid: 0a7fded902bbd9afkuwsb1807c402a9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220331_002043_002320_CD4B9A41 
X-CRM114-Status: GOOD (  25.39  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgU2FzY2hhOgoKT24gMy8zMS8yMiAxNTowNiwgU2FzY2hhIEhhdWVyIHdyb3RlOgo+IE9uIFdl
ZCwgTWFyIDMwLCAyMDIyIGF0IDA4OjUwOjA5UE0gKzA4MDAsIEFuZHkgWWFuIHdyb3RlOgo+PiBI
aSBTYXNjaGE6Cj4+Cj4+IE9uIDMvMzAvMjIgMTQ6MzksIFNhc2NoYSBIYXVlciB3cm90ZToKPj4+
IEhpIEFuZHksCj4+Pgo+Pj4gT24gVHVlLCBNYXIgMjksIDIwMjIgYXQgMDc6NTY6MjdQTSArMDgw
MCwgQW5keSBZYW4gd3JvdGU6Cj4+Pj4gSGkgU2FzY2hhOgo+Pj4+Cj4+Pj4gT24gMy8yOC8yMiAy
MzoxMSwgU2FzY2hhIEhhdWVyIHdyb3RlOgo+Pj4+PiBXaXRoIHVwY29taW5nIFZPUDIgc3VwcG9y
dCBWT1Agd29uJ3QgYmUgdGhlIG9ubHkgY2hvaWNlIGFueW1vcmUsIHNvIG1ha2UKPj4+Pj4gdGhl
IFZPUCBkcml2ZXIgb3B0aW9uYWwuCj4+Pj4+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFNhc2NoYSBI
YXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KPj4+Pj4gLS0tCj4+Pj4+ICAgICBkcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZyAgICAgICAgICAgIHwgOCArKysrKysrKwo+Pj4+PiAg
ICAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL01ha2VmaWxlICAgICAgICAgICB8IDMgKystCj4+
Pj4+ICAgICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jIHwgMiAr
LQo+Pj4+PiAgICAgMyBmaWxlcyBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQo+Pj4+Pgo+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tj
b25maWcgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZwo+Pj4+PiBpbmRleCBmYTVj
ZmRhNGU5MGUzLi43ZDIyZTI5OTdhNTcxIDEwMDY0NAo+Pj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvS2NvbmZpZwo+Pj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
S2NvbmZpZwo+Pj4+PiBAQCAtMjMsOCArMjMsMTYgQEAgY29uZmlnIERSTV9ST0NLQ0hJUAo+Pj4+
PiAgICAgaWYgRFJNX1JPQ0tDSElQCj4+Pj4+ICtjb25maWcgUk9DS0NISVBfVk9QCj4+Pj4+ICsJ
Ym9vbCAiUm9ja2NoaXAgVk9QIGRyaXZlciIKPj4+Pj4gKwlkZWZhdWx0IHkKPj4+Pj4gKwloZWxw
Cj4+Pj4+ICsJICBUaGlzIHNlbGVjdHMgc3VwcG9ydCBmb3IgdGhlIFZPUCBkcml2ZXIuIFlvdSBz
aG91bGQgZW5hYmxlIGl0Cj4+Pj4+ICsJICBvbiBhbGwgb2xkZXIgU29DcyB1cCB0byBSSzMzOTku
Cj4+PiBUaGF0IHJlbWluZHMgbWUgdGhhdCBJIHdhbnRlZCB0byByZXBocmFzZSB0aGlzLiBXaWxs
IGNoYW5nZSBpbiBuZXh0Cj4+PiByb3VuZC4KPj4+Cj4+Pj4+ICsKPj4+Pj4gICAgIGNvbmZpZyBS
T0NLQ0hJUF9BTkFMT0dJWF9EUAo+Pj4+PiAgICAgCWJvb2wgIlJvY2tjaGlwIHNwZWNpZmljIGV4
dGVuc2lvbnMgZm9yIEFuYWxvZ2l4IERQIGRyaXZlciIKPj4+Pj4gKwlkZXBlbmRzIG9uIFJPQ0tD
SElQX1ZPUAo+Pj4+IEFhbmxvZ2l4IGRwIGlzIGFsc28gb24gdm9wMiBiYXNlIHNvYyBzdWNoIGFz
wqAgcmszNTZ4IGFuZCByazM1ODguCj4gQlRXIEkganVzdCBsb29rZWQgYXQgdGhlIGRvd25zdHJl
YW0gZHJpdmVyLiBIZXJlIHdlIGhhdmUgdGhlIHNhbWUKPiBzaXR1YXRpb24gdGhhdCB0aGUgYW5h
bG9naXggZHAgZHJpdmVyIGNhbGxzIHJvY2tjaGlwX2RybV93YWl0X3ZhY3RfZW5kKCkKPiB3aGlj
aCBpcyBpbXBsZW1lbnRlZCBpbiB0aGUgVk9QIGRyaXZlciwgc28gd2hlbiB0aGUgYW5hbG9naXgg
ZHAgZHJpdmVyCj4gaXMgYWN0dWFsbHkgdXNlZCBvbiBhIFZPUDIgU29DIHRoZW4gaXQgaXMgZWl0
aGVyIHVzZWQgaW4gYSB3YXkgdGhhdAo+IHJvY2tjaGlwX2RybV93YWl0X3ZhY3RfZW5kKCkgd2ls
bCBuZXZlciBiZSBjYWxsZWQgb3IgaXQgZXhwbG9kZXMgaW4gYWxsCj4gY29sb3Vycy4KPgo+Pj4g
SSBhZGRlZCB0aGUgZGVwZW5kZW5jeSBiZWNhdXNlIGFuYWxvZ2l4X2RwLXJvY2tjaGlwLmMgY2Fs
bHMKPj4+IHJvY2tjaGlwX2RybV93YWl0X3ZhY3RfZW5kKCkgd2hpY2ggaXMgaW1wbGVtZW50ZWQg
aW4gdGhlIFZPUCBkcml2ZXIsCj4+PiBzbyB0aGlzIGRyaXZlciBjdXJyZW50eSBjYW4ndCB3b3Jr
IHdpdGggdGhlIFZPUDIgZHJpdmVyIGFuZCBjYW4ndAo+Pj4gYmUgbGlua2VkIHdpdGhvdXQgdGhl
IFZPUCBkcml2ZXIgYmVpbmcgcHJlc2VudC4KPj4+IEknbGwgYWRkIGEgZmV3IHdvcmRzIHRvIHRo
ZSBjb21taXQgbWVzc2FnZS4KPj4KPj4gTWF5YmUgYSBiZXR0ZXIgZGlyZWN0aW9uIGlzIG1vdmUg
cm9ja2NoaXBfZHJtX3dhaXRfdmFjdF9lbmQgZnJvbSB0aGUgVk9QCj4+IGRyaXZlciB0byByb2Nr
Y2hpcF9kcm1fZHJ2LmMKPiBJIGFtIG5vdCBzdXJlIGlmIHRoYXQncyByZWFsbHkgd29ydGggaXQu
IFllcywgdGhlIGRpcmVjdGlvbiBtaWdodCBiZSB0aGUKPiByaWdodCBvbmUsIGJ1dCBJIHdvdWxk
IHJlYWxseSBwcmVmZXIgd2hlbiBzb21lYm9keSBkb2VzIHRoZSBjaGFuZ2Ugd2hvCj4gY2FuIHRl
c3QgYW5kIGNvbmZpcm0gdGhhdCB0aGUgYW5hbG9naXggZHAgcmVhbGx5IHdvcmtzIHdpdGggVk9Q
MiBpbiB0aGUKPiBlbmQuCgpJZiBmb2xsb3cgdGhpcyBwb2ludCwgdGhlIGN1cnJlbnQgRFdfTUlQ
SSBhbHNvIGhhcyBub3QgYmVlbiB0ZXN0ZWQgZm9yIApjb25maXJtIHRoYXQgaXQKCmNhbiByZWFs
bHkgd29yayB3aXRoIFZPUDIsIHNvIHlvdSBzaG91bGQgYWxzbyBtYWtlIGl0IGRlcGVuZHMgb24g
ClJPQ0tDSElQX1ZPUC4KCkkgdGhpbmsgdGhlIGN1cnJlbnQgc29sdXRpb24gaXMganVzdCBhIHdv
cmthcm91bmQgdG8gbWFrZSB5b3VyIHBhdGNoIApwYXNzIHRoZSBrZXJuZWwgY29tcGlsZQoKYnV0
IG5vdCByZWZsZWN0IHRoZSByZWFsIHNpdHVhdGlvbi4KCj4gU2FzY2hhCj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
