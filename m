Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44840C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Apr 2022 08:37:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q8WKlYeoyT/xyP/Yqqxetph+5jbGTwZ26QDjY6uSb54=; b=RmYx/SrLXg9NOW
	1b7JHQBk/81BCxsjQu7GB698Cg8VP1Jf+lBz6SpCTCZ4ya+qhG1Sz5dU8sZ+KRUfiu6vYVgYm6Yrm
	quMyvIiOopMroD/YTlaxt1Jny0u8B9kcCsqAkxgcY2mr+YM+5FcdvGm0BONfwuoKttFR7yTf7rUhy
	hzZ3aGUSg2HTdq6XaEv8ji+aRjRoRa19fu6i6ncyVv/6AAazC2QDxkGWIr5T55eFJAtb6Xi6HFhml
	61FlJyo8f+mOMXGBz7o6o45+LxQ7HaTpuFkyZh+rRIqoxeuxeRn1ihRFdU4Y8B4Vm6moBanNKGCgU
	Tc8901rPeYcoV0nUtAJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nc1A8-004l2t-4N; Wed, 06 Apr 2022 08:37:12 +0000
Received: from mail-m17637.qiye.163.com ([59.111.176.37])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nc19p-004kuZ-Bk; Wed, 06 Apr 2022 08:36:55 +0000
Received: from [192.168.60.102] (unknown [103.29.142.67])
 by mail-m17637.qiye.163.com (Hmail) with ESMTPA id B89019801AA;
 Wed,  6 Apr 2022 16:36:48 +0800 (CST)
Message-ID: <a5e070ae-d9e1-e5ee-0871-2cdf58958203@rock-chips.com>
Date: Wed, 6 Apr 2022 16:36:42 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>,
 dri-devel@lists.freedesktop.org, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Kever Yang <Kever.yang@rock-chips.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220401125205.GL4012@pengutronix.de>
 <1c0fbf4f-2e17-29f9-5c69-c80b53ff3d2f@rock-chips.com>
 <20220405093700.GQ4012@pengutronix.de>
 <12a8c0ef-90ee-cf7e-50a0-e00add8af147@rock-chips.com>
 <20220406081333.GU4012@pengutronix.de>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20220406081333.GU4012@pengutronix.de>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUhPN1dZLVlBSVdZDwkaFQgSH1lBWUNKGR5WTEwaTktMGE4ZHU
 IZVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PBw6Ejo*LD5MI0oxNz0yDwgZ
 PD0KFDNVSlVKTU9CSUhPSUpKS05MVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
 WUFZSktIVUlCVUpPSVVNTFlXWQgBWUFNSUhMNwY+
X-HM-Tid: 0a7ffe04ef24d992kuwsb89019801aa
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220406_013653_641942_67DFE793 
X-CRM114-Status: GOOD (  21.82  )
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

SGk6CgpPbiA0LzYvMjIgMTY6MTMsIFNhc2NoYSBIYXVlciB3cm90ZToKPiBPbiBXZWQsIEFwciAw
NiwgMjAyMiBhdCAxMDowMjo1OUFNICswODAwLCBBbmR5IFlhbiB3cm90ZToKPj4gSGk6Cj4+Cj4+
IE9uIDQvNS8yMiAxNzozNywgU2FzY2hhIEhhdWVyIHdyb3RlOgo+Pj4gT24gU2F0LCBBcHIgMDIs
IDIwMjIgYXQgMDk6Mzc6MTdBTSArMDgwMCwgQW5keSBZYW4gd3JvdGU6Cj4+Pj4gSGkgU2FjaGE6
Cj4+Pj4KPj4+PiBPbiA0LzEvMjIgMjA6NTIsIFNhc2NoYSBIYXVlciB3cm90ZToKPj4+Pj4gLS0g
Cj4+Pj4+ID5Gcm9tIGNiYzAzMDczNjIzYTcxODAyNDMzMzFhYzI0YzNhZmFmOWRlYzc1MjIgTW9u
IFNlcCAxNyAwMDowMDowMCAyMDAxCj4+Pj4+IEZyb206IFNhc2NoYSBIYXVlcjxzLmhhdWVyQHBl
bmd1dHJvbml4LmRlPgo+Pj4+PiBEYXRlOiBGcmksIDEgQXByIDIwMjIgMTQ6NDg6NDkgKzAyMDAK
Pj4+Pj4gU3ViamVjdDogW1BBVENIXSBmaXh1cCEgZHJtOiByb2NrY2hpcDogQWRkIFZPUDIgZHJp
dmVyCj4+Pj4+Cj4+Pj4+IC0tLQo+Pj4+PiAgICAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3Jv
Y2tjaGlwX2RybV92b3AyLmMgfCAxNCArKysrKysrKysrKysrKwo+Pj4+PiAgICAgMSBmaWxlIGNo
YW5nZWQsIDE0IGluc2VydGlvbnMoKykKPj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jIGIvZHJpdmVycy9ncHUvZHJtL3Jv
Y2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMKPj4+Pj4gaW5kZXggN2RiYTdiOWI2M2RjNi4uMTQy
MWJmMmYxMzNmMSAxMDA2NDQKPj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3Jv
Y2tjaGlwX2RybV92b3AyLmMKPj4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3Jv
Y2tjaGlwX2RybV92b3AyLmMKPj4+Pj4gQEAgLTIyODcsNiArMjI4NywyMCBAQCBzdGF0aWMgaW50
IHZvcDJfY3JlYXRlX2NydGMoc3RydWN0IHZvcDIgKnZvcDIpCj4+Pj4+ICAgICAJCQl9Cj4+Pj4+
ICAgICAJCX0KPj4+Pj4gKwkJaWYgKHZvcDItPmRhdGEtPnNvY19pZCA9PSAzNTY2KSB7Cj4+Pj4+
ICsJCQkvKgo+Pj4+PiArCQkJICogT24gUkszNTY2IHRoZXNlIHdpbmRvd3MgZG9uJ3QgaGF2ZSBh
biBpbmRlcGVuZGVudAo+Pj4+PiArCQkJICogZnJhbWVidWZmZXIuIFRoZXkgc2hhcmUgdGhlIGZy
YW1lYnVmZmVyIHdpdGggc21hcnQwLAo+Pj4+PiArCQkJICogZXNtYXJ0MCBhbmQgY2x1c3RlcjAg
cmVzcGVjdGl2ZWx5Lgo+Pj4+PiArCQkJICovCj4+Pj4+ICsJCQlzd2l0Y2ggKHdpbi0+ZGF0YS0+
cGh5c19pZCkgewo+Pj4+PiArCQkJY2FzZSBST0NLQ0hJUF9WT1AyX1NNQVJUMToKPj4+Pj4gKwkJ
CWNhc2UgUk9DS0NISVBfVk9QMl9FU01BUlQxOgo+Pj4+PiArCQkJY2FzZSBST0NLQ0hJUF9WT1Ay
X0NMVVNURVIxOgo+Pj4+PiArCQkJCWNvbnRpbnVlOwo+Pj4+PiArCQkJfQo+Pj4+IFRoaW5rIGFi
b3V0IHRoaXMgLCB0aGVyZSBtYXliZSBvdGhlciB1cGNvbWluZyB2b3AyIGJhc2Ugc29jLCB0aGV5
IG1heSBvbmx5Cj4+Pj4gaGF2ZQo+Pj4+Cj4+Pj4gbWlycm9yIHdpbmRvdyBTbWFydDEgRXNtYXJ0
MSwgb3IgU21hcnQxLCBFc21hcnQxLCBFc21hcnQyLCBDbHVzdGVyMS4KPj4+Pgo+Pj4+IEkgdGhp
bmsgdGhpcyBzaG91bGQgYWRkIFdJTl9GRUFUVVJFIGF0IHRoZSBwbGF0Zm9ybSBkZXNjcmlwdGlv
biBmaWxlCj4+Pj4gcm9ja2NoaXBfdm9wMl9yZWcuYywgdGhlbgo+Pj4+Cj4+Pj4gY2hlY2sgdGhl
IEZFQVRVUkUgdG8gZGVjaWRlIHdoZXRoZXIgdGhlIGRyaXZlciBzaG91bGQgZ2l2ZSB0aGlzIHdp
bmRvdyBhCj4+Pj4gc3BlY2lhbCB0cmVhdG1lbnQuCj4+Pj4KPj4+PiB0aGlzIGNhbiBtYWtlIG9u
ZSBjb2RlIHJ1biBmb3IgZGlmZmVyZW50IHNvYyB3aXRoIGRpZmZlcmVudCBwbGF0Zm9ybQo+Pj4+
IGRlc2NyaXB0aW9uLiBvciB3ZSBzaG91bGQgYWRkCj4+Pj4KPj4+PiB0aGUgc2FtZSBjb2RlIGxv
Z2ljIGZvciBkaWZmZXJlbnQgc29jIGFnYWluIGFuZCBhZ2Fpbi4KPj4+IFlvdSBtZWFuIGxpa2Ug
ZG9uZSBpbiB0aGUgZG93bnN0cmVhbSBLZXJuZWw/IEhlcmUgaW5kZWVkIHdlIGhhdmUgYQo+Pj4g
V0lOX0ZFQVRVUkVfTUlSUk9SIGZsYWcgYWRkZWQgdG8gdGhlIHBsYXRmb3JtIGRlc2NyaXB0aW9u
LiBUaGlzIGlzIHRoZW4KPj4+IGV2YWx1YXRlZCB3aXRoOgo+Pj4KPj4+IHN0YXRpYyBib29sIHZv
cDJfaXNfbWlycm9yX3dpbihzdHJ1Y3Qgdm9wMl93aW4gKndpbikKPj4+IHsKPj4+ICAgICAgICAg
ICByZXR1cm4gc29jX2lzX3JrMzU2NigpICYmICh3aW4tPmZlYXR1cmUgJiBXSU5fRkVBVFVSRV9N
SVJST1IpOwo+Pj4gfQo+Pj4KPj4+IFNvIGEgZmxhZyBpcyBhZGRlZCBhbmQgYWZ0ZXJ3YXJkcyBp
dHMgZXZhbHVhdGlvbiBpcyBTb0Mgc3BlY2lmaWMuIFRoYXQKPj4+IGRvZXNuJ3QgaGVscCBhdCBh
bGwgYW5kIG9ubHkgb2JmdXNjYXRlcyB0aGluZ3MuCj4+Pgo+Pj4gQmVzaWRlcywgZXhwZXJpZW5j
ZSBzaG93cyB0aGF0IHlvdSBjYW4ndCBwcmVkaWN0IGEgZ29vZCBhYnN0cmFjdGlvbiBmb3IKPj4g
VGhpcyBpcyBub3QgYcKgIHByZWRpY3QswqAgdGhpcyBpcyBhbiBJUCBmZWF0dXJlLCBzbyBpdCB3
aWxsIGFwcGVhcmVkIG9uCj4+IHVwY29taW5nIFNPQy4KPj4KPj4gV2UgaGF2ZSByazM1ODggd2l0
aCA4IHdpbmRvd3MoNCBDbHVzdGVyICsgNCBFc21hcnQsIG5vIFNtYXJ0IHdpbmRvdyksIGFuZAo+
Pgo+PiBhbHNvIGhhdmUgYSBlbnRyeSBsZXZlbCBzb2Mgd2hpY2ggb25seSBoYXZlIDQgd2luZG93
cywgdGhleSBib3RoIGhhdmUgdGhpcwo+PiBmZWF0dXJlLgo+IFNhbWUgYXMgd2l0aCB0aGUgb3Ro
ZXIgZGlzY3Vzc2lvbjogUGxlYXNlIGxldCdzIHNvbHZlIHRoaXMgb25jZSB3ZSBhcmUKPiB0aGVy
ZS4KCgpJIGFtIG5vdCBzdXJlIGlmIHRoaXMgaXMgdGhlIHN1aXRhYmxlIHdheSBmb3IgdXBzdHJl
YW0sIHRoaXMgc291bmQgbGlrZQoKanVzdCBzb2x2ZSB0aGUgaXNzdWUgYXBwZWFyZWQgYXQgdGhl
IGZyb250IG9mIGV5ZXMgYW5kIG5vdCB0aGluayBhbnkKCnRoaW5nIGFib3V0IG1ha2UgdGhpcyBk
cml2ZXIgZWFzeSB0byBzdXBwb3J0IG5ldyBoYXJkd2FyZSBpbiB0aGUgZnV0dXJlLgoKPiBGb3Ig
bm93IG15IGFkZGl0aW9uIGlzIHRoZSBlYXNpZXN0IHdheSBvdXQuIE9uY2Ugb3RoZXIgU29DcyBz
aGFsbCBiZQo+IHN1cHBvcnRlZCB3ZSBjYW4gcmUtZXZhbHVhdGUgdGhhdCBhbmQgZmluZCBiZXR0
ZXIgc3VpdGFibGUgd2F5cyBmb3IgU29DCj4gYWJzdHJhY3Rpb25zLiBUaGlzIG1heSByZXN1bHQg
aW4ganVzdCB5b3VyIHN1Z2dlc3Rpb24gKGluIHdoaWNoIGNhc2UgeW91Cj4gY2FuIHNheSB0b2xk
LXlvdS1zbykgb3IgY29tcGxldGVseSBkaWZmZXJlbnQuCj4KPiBTYXNjaGEKPgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
