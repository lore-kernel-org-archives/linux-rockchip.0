Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD9C5C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Apr 2022 02:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wQkNjqwTI2dJusr7Mx/SS/nfXG0HXH3xEZCR4jvJzKY=; b=wXQ3lWsnlENUo5
	AUb1gk6WbeAQztnRcWzz7dJDJ8SPYOMorCcnJsekc/o0PN1LBHx/HnGWJ2xs9d1Zcyum+KTmgvG7R
	exvoEcSRCNxDF7IxlmreZA6az+nufH7wD5gpBclqaGppjSfDhdo9Pl1tsKLrQqTB+YgQqSAg85ZH+
	uURxb7pSyR7TTsilJoK7SHW5lrR4XzCErbzaYTZa2bcYN6TzvgyS9ELrVZfViN4icz895o+fl0VQo
	ns/bEc431IpdEGKtMYjwj93dnw0L3OKCV5Xk28Dycc1Nv208H3X980Ed+m9xCpVfv8bLKUM1W9T9/
	7PI7k0AMV8YNFTdjfy5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbv0v-003JwQ-8n; Wed, 06 Apr 2022 02:03:17 +0000
Received: from mail-m17637.qiye.163.com ([59.111.176.37])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbv0h-003Jq0-Sj; Wed, 06 Apr 2022 02:03:05 +0000
Received: from [172.16.12.141] (unknown [58.22.7.114])
 by mail-m17637.qiye.163.com (Hmail) with ESMTPA id F0DA798048A;
 Wed,  6 Apr 2022 10:02:59 +0800 (CST)
Message-ID: <12a8c0ef-90ee-cf7e-50a0-e00add8af147@rock-chips.com>
Date: Wed, 6 Apr 2022 10:02:59 +0800
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
 <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220401125205.GL4012@pengutronix.de>
 <1c0fbf4f-2e17-29f9-5c69-c80b53ff3d2f@rock-chips.com>
 <20220405093700.GQ4012@pengutronix.de>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20220405093700.GQ4012@pengutronix.de>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRlIGEtWGE1LSkpOGB
 oYSkhIVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MRA6GCo5Aj4MHUsIMBYxFThK
 NDYwCjNVSlVKTU9CSUpLTkNLTUxIVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
 WUFZTkNVSUlVTFVKSk9ZV1kIAVlBTklNSjcG
X-HM-Tid: 0a7ffc9c5db9d992kuwsf0da798048a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220405_190304_138314_327E1A59 
X-CRM114-Status: GOOD (  22.14  )
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

SGk6CgpPbiA0LzUvMjIgMTc6MzcsIFNhc2NoYSBIYXVlciB3cm90ZToKPiBPbiBTYXQsIEFwciAw
MiwgMjAyMiBhdCAwOTozNzoxN0FNICswODAwLCBBbmR5IFlhbiB3cm90ZToKPj4gSGkgU2FjaGE6
Cj4+Cj4+IE9uIDQvMS8yMiAyMDo1MiwgU2FzY2hhIEhhdWVyIHdyb3RlOgo+Pj4gLS0gCj4+PiA+
RnJvbSBjYmMwMzA3MzYyM2E3MTgwMjQzMzMxYWMyNGMzYWZhZjlkZWM3NTIyIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQo+Pj4gRnJvbTogU2FzY2hhIEhhdWVyPHMuaGF1ZXJAcGVuZ3V0cm9uaXgu
ZGU+Cj4+PiBEYXRlOiBGcmksIDEgQXByIDIwMjIgMTQ6NDg6NDkgKzAyMDAKPj4+IFN1YmplY3Q6
IFtQQVRDSF0gZml4dXAhIGRybTogcm9ja2NoaXA6IEFkZCBWT1AyIGRyaXZlcgo+Pj4KPj4+IC0t
LQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMgfCAx
NCArKysrKysrKysrKysrKwo+Pj4gICAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKykK
Pj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2Ry
bV92b3AyLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwo+
Pj4gaW5kZXggN2RiYTdiOWI2M2RjNi4uMTQyMWJmMmYxMzNmMSAxMDA2NDQKPj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4+PiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwo+Pj4gQEAgLTIyODcsNiAr
MjI4NywyMCBAQCBzdGF0aWMgaW50IHZvcDJfY3JlYXRlX2NydGMoc3RydWN0IHZvcDIgKnZvcDIp
Cj4+PiAgICAJCQl9Cj4+PiAgICAJCX0KPj4+ICsJCWlmICh2b3AyLT5kYXRhLT5zb2NfaWQgPT0g
MzU2Nikgewo+Pj4gKwkJCS8qCj4+PiArCQkJICogT24gUkszNTY2IHRoZXNlIHdpbmRvd3MgZG9u
J3QgaGF2ZSBhbiBpbmRlcGVuZGVudAo+Pj4gKwkJCSAqIGZyYW1lYnVmZmVyLiBUaGV5IHNoYXJl
IHRoZSBmcmFtZWJ1ZmZlciB3aXRoIHNtYXJ0MCwKPj4+ICsJCQkgKiBlc21hcnQwIGFuZCBjbHVz
dGVyMCByZXNwZWN0aXZlbHkuCj4+PiArCQkJICovCj4+PiArCQkJc3dpdGNoICh3aW4tPmRhdGEt
PnBoeXNfaWQpIHsKPj4+ICsJCQljYXNlIFJPQ0tDSElQX1ZPUDJfU01BUlQxOgo+Pj4gKwkJCWNh
c2UgUk9DS0NISVBfVk9QMl9FU01BUlQxOgo+Pj4gKwkJCWNhc2UgUk9DS0NISVBfVk9QMl9DTFVT
VEVSMToKPj4+ICsJCQkJY29udGludWU7Cj4+PiArCQkJfQo+Pgo+PiBUaGluayBhYm91dCB0aGlz
ICwgdGhlcmUgbWF5YmUgb3RoZXIgdXBjb21pbmcgdm9wMiBiYXNlIHNvYywgdGhleSBtYXkgb25s
eQo+PiBoYXZlCj4+Cj4+IG1pcnJvciB3aW5kb3cgU21hcnQxIEVzbWFydDEsIG9yIFNtYXJ0MSwg
RXNtYXJ0MSwgRXNtYXJ0MiwgQ2x1c3RlcjEuCj4+Cj4+IEkgdGhpbmsgdGhpcyBzaG91bGQgYWRk
IFdJTl9GRUFUVVJFIGF0IHRoZSBwbGF0Zm9ybSBkZXNjcmlwdGlvbiBmaWxlCj4+IHJvY2tjaGlw
X3ZvcDJfcmVnLmMsIHRoZW4KPj4KPj4gY2hlY2sgdGhlIEZFQVRVUkUgdG8gZGVjaWRlIHdoZXRo
ZXIgdGhlIGRyaXZlciBzaG91bGQgZ2l2ZSB0aGlzIHdpbmRvdyBhCj4+IHNwZWNpYWwgdHJlYXRt
ZW50Lgo+Pgo+PiB0aGlzIGNhbiBtYWtlIG9uZSBjb2RlIHJ1biBmb3IgZGlmZmVyZW50IHNvYyB3
aXRoIGRpZmZlcmVudCBwbGF0Zm9ybQo+PiBkZXNjcmlwdGlvbi4gb3Igd2Ugc2hvdWxkIGFkZAo+
Pgo+PiB0aGUgc2FtZSBjb2RlIGxvZ2ljIGZvciBkaWZmZXJlbnQgc29jIGFnYWluIGFuZCBhZ2Fp
bi4KPiBZb3UgbWVhbiBsaWtlIGRvbmUgaW4gdGhlIGRvd25zdHJlYW0gS2VybmVsPyBIZXJlIGlu
ZGVlZCB3ZSBoYXZlIGEKPiBXSU5fRkVBVFVSRV9NSVJST1IgZmxhZyBhZGRlZCB0byB0aGUgcGxh
dGZvcm0gZGVzY3JpcHRpb24uIFRoaXMgaXMgdGhlbgo+IGV2YWx1YXRlZCB3aXRoOgo+Cj4gc3Rh
dGljIGJvb2wgdm9wMl9pc19taXJyb3Jfd2luKHN0cnVjdCB2b3AyX3dpbiAqd2luKQo+IHsKPiAg
ICAgICAgICByZXR1cm4gc29jX2lzX3JrMzU2NigpICYmICh3aW4tPmZlYXR1cmUgJiBXSU5fRkVB
VFVSRV9NSVJST1IpOwo+IH0KPgo+IFNvIGEgZmxhZyBpcyBhZGRlZCBhbmQgYWZ0ZXJ3YXJkcyBp
dHMgZXZhbHVhdGlvbiBpcyBTb0Mgc3BlY2lmaWMuIFRoYXQKPiBkb2Vzbid0IGhlbHAgYXQgYWxs
IGFuZCBvbmx5IG9iZnVzY2F0ZXMgdGhpbmdzLgo+Cj4gQmVzaWRlcywgZXhwZXJpZW5jZSBzaG93
cyB0aGF0IHlvdSBjYW4ndCBwcmVkaWN0IGEgZ29vZCBhYnN0cmFjdGlvbiBmb3IKClRoaXMgaXMg
bm90IGHCoCBwcmVkaWN0LMKgIHRoaXMgaXMgYW4gSVAgZmVhdHVyZSwgc28gaXQgd2lsbCBhcHBl
YXJlZCBvbiAKdXBjb21pbmcgU09DLgoKV2UgaGF2ZSByazM1ODggd2l0aCA4IHdpbmRvd3MoNCBD
bHVzdGVyICsgNCBFc21hcnQsIG5vIFNtYXJ0IHdpbmRvdyksIGFuZAoKYWxzbyBoYXZlIGEgZW50
cnkgbGV2ZWwgc29jIHdoaWNoIG9ubHkgaGF2ZSA0IHdpbmRvd3MsIHRoZXkgYm90aCBoYXZlIAp0
aGlzIGZlYXR1cmUuCgo+IGZ1dHVyZSBoYXJkd2FyZSByZXZpc2lvbnMsIHRoZSBoYXJkd2FyZSBn
dXlzIGFyZSBqdXN0IHRvbyBjcmVhdGl2ZSBpbgo+IGNyZWF0aW5nIGhhcmR3YXJlIHRoYXQgYnJl
YWtzIGV4aXN0aW5nIGFic3RyYWN0aW9ucy4KPgo+IFNhc2NoYQo+CgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
