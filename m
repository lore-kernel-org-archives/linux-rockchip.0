Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7DFBAC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 12:59:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FmXFpiHQBabf9ReHnNyidqLSVLZbesGHu6vxFX4qzX8=; b=Mm/xybpymfy+HY
	lPJ12erYRtQd96nh58Liy3t4dcWm8l/NTZRAGLb95AaQwnh9nSSPgyW/Vc/eMCmIGPlG7zB/Fy75l
	QD4eHWUWkfj19/cJg6vbk6gHS/D/hyIfzi5+Jcmnd8VHD4biQRyBjXe+o5DL/+LMCvyq/6InOoRRc
	9ZyUPDbUdfoZGIkFFRKbYEFtwo88LCEplZbLSn2aQzNZdgKUXJFaGRsjQhe3W8il5/hVk0Mj/yGRk
	7EWSTb9cXBP5/OZQyZwMoy6Zf7NzJwGcUpof9KLxs/5B5wxKMG/F2EDgEgqCNKsbxfGiXQ4yq/i3O
	HgqMjlmIQYwr+VHrfZZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZXuv-00Fvta-Dm; Wed, 30 Mar 2022 12:59:17 +0000
Received: from mail-m176237.qiye.163.com ([59.111.176.237])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZXmB-00FrwI-FS; Wed, 30 Mar 2022 12:50:18 +0000
Received: from [172.16.12.141] (unknown [58.22.7.114])
 by mail-m176237.qiye.163.com (Hmail) with ESMTPA id 02B40C40431;
 Wed, 30 Mar 2022 20:50:09 +0800 (CST)
Message-ID: <9619ce71-db59-d6cd-c254-2b67122fa245@rock-chips.com>
Date: Wed, 30 Mar 2022 20:50:09 +0800
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
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20220330063913.GW12181@pengutronix.de>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWUMfTR5WHh0dGktIQh
 gZT0lOVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktITUpVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NEk6Vhw5IT4BPw8iFhkBFksQ
 SDkKCz1VSlVKTU9DTU9PTUpLTkNIVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
 WUFZTkNVSUlVTFVKSk9ZV1kIAVlBT0xKTzcG
X-HM-Tid: 0a7fdae0591ed9afkuws02b40c40431
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_055015_783019_1E2A048F 
X-CRM114-Status: GOOD (  19.33  )
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

SGkgU2FzY2hhOgoKT24gMy8zMC8yMiAxNDozOSwgU2FzY2hhIEhhdWVyIHdyb3RlOgo+IEhpIEFu
ZHksCj4KPiBPbiBUdWUsIE1hciAyOSwgMjAyMiBhdCAwNzo1NjoyN1BNICswODAwLCBBbmR5IFlh
biB3cm90ZToKPj4gSGkgU2FzY2hhOgo+Pgo+PiBPbiAzLzI4LzIyIDIzOjExLCBTYXNjaGEgSGF1
ZXIgd3JvdGU6Cj4+PiBXaXRoIHVwY29taW5nIFZPUDIgc3VwcG9ydCBWT1Agd29uJ3QgYmUgdGhl
IG9ubHkgY2hvaWNlIGFueW1vcmUsIHNvIG1ha2UKPj4+IHRoZSBWT1AgZHJpdmVyIG9wdGlvbmFs
Lgo+Pj4KPj4+IFNpZ25lZC1vZmYtYnk6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25p
eC5kZT4KPj4+IC0tLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL0tjb25maWcgICAg
ICAgICAgICB8IDggKysrKysrKysKPj4+ICAgIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9NYWtl
ZmlsZSAgICAgICAgICAgfCAzICsrLQo+Pj4gICAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3Jv
Y2tjaGlwX2RybV9kcnYuYyB8IDIgKy0KPj4+ICAgIDMgZmlsZXMgY2hhbmdlZCwgMTEgaW5zZXJ0
aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPj4+Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL3JvY2tjaGlwL0tjb25maWcgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvS2NvbmZpZwo+
Pj4gaW5kZXggZmE1Y2ZkYTRlOTBlMy4uN2QyMmUyOTk3YTU3MSAxMDA2NDQKPj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9LY29uZmlnCj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvS2NvbmZpZwo+Pj4gQEAgLTIzLDggKzIzLDE2IEBAIGNvbmZpZyBEUk1fUk9DS0NI
SVAKPj4+ICAgIGlmIERSTV9ST0NLQ0hJUAo+Pj4gK2NvbmZpZyBST0NLQ0hJUF9WT1AKPj4+ICsJ
Ym9vbCAiUm9ja2NoaXAgVk9QIGRyaXZlciIKPj4+ICsJZGVmYXVsdCB5Cj4+PiArCWhlbHAKPj4+
ICsJICBUaGlzIHNlbGVjdHMgc3VwcG9ydCBmb3IgdGhlIFZPUCBkcml2ZXIuIFlvdSBzaG91bGQg
ZW5hYmxlIGl0Cj4+PiArCSAgb24gYWxsIG9sZGVyIFNvQ3MgdXAgdG8gUkszMzk5Lgo+IFRoYXQg
cmVtaW5kcyBtZSB0aGF0IEkgd2FudGVkIHRvIHJlcGhyYXNlIHRoaXMuIFdpbGwgY2hhbmdlIGlu
IG5leHQKPiByb3VuZC4KPgo+Pj4gKwo+Pj4gICAgY29uZmlnIFJPQ0tDSElQX0FOQUxPR0lYX0RQ
Cj4+PiAgICAJYm9vbCAiUm9ja2NoaXAgc3BlY2lmaWMgZXh0ZW5zaW9ucyBmb3IgQW5hbG9naXgg
RFAgZHJpdmVyIgo+Pj4gKwlkZXBlbmRzIG9uIFJPQ0tDSElQX1ZPUAo+Pgo+PiBBYW5sb2dpeCBk
cCBpcyBhbHNvIG9uIHZvcDIgYmFzZSBzb2Mgc3VjaCBhc8KgIHJrMzU2eCBhbmQgcmszNTg4IC4K
PiBJIGFkZGVkIHRoZSBkZXBlbmRlbmN5IGJlY2F1c2UgYW5hbG9naXhfZHAtcm9ja2NoaXAuYyBj
YWxscwo+IHJvY2tjaGlwX2RybV93YWl0X3ZhY3RfZW5kKCkgd2hpY2ggaXMgaW1wbGVtZW50ZWQg
aW4gdGhlIFZPUCBkcml2ZXIsCj4gc28gdGhpcyBkcml2ZXIgY3VycmVudHkgY2FuJ3Qgd29yayB3
aXRoIHRoZSBWT1AyIGRyaXZlciBhbmQgY2FuJ3QKPiBiZSBsaW5rZWQgd2l0aG91dCB0aGUgVk9Q
IGRyaXZlciBiZWluZyBwcmVzZW50Lgo+IEknbGwgYWRkIGEgZmV3IHdvcmRzIHRvIHRoZSBjb21t
aXQgbWVzc2FnZS4KCgpNYXliZSBhIGJldHRlciBkaXJlY3Rpb24gaXMgbW92ZSByb2NrY2hpcF9k
cm1fd2FpdF92YWN0X2VuZCBmcm9tIHRoZSBWT1AgCmRyaXZlciB0byByb2NrY2hpcF9kcm1fZHJ2
LmMKCmludCByb2NrY2hpcF9kcm1fd2FpdF92YWN0X2VuZChzdHJ1Y3QgZHJtX2NydGMgKmNydGMs
IHVuc2lnbmVkIGludCAKbXN0aW1lb3V0KQp7CiDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3Qgcm9ja2No
aXBfZHJtX3ByaXZhdGUgKnByaXY7CiDCoMKgwqDCoMKgwqDCoCBpbnQgcGlwZSwgcmV0ID0gMDsK
CiDCoMKgwqDCoMKgwqDCoCBpZiAoIWNydGMpCiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgcmV0dXJuIC1FTk9ERVY7CgogwqDCoMKgwqDCoMKgwqAgaWYgKG1zdGltZW91dCA8PSAwKQog
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldHVybiAtRUlOVkFMOwoKIMKgwqDCoMKg
wqDCoMKgIHByaXYgPSBjcnRjLT5kZXYtPmRldl9wcml2YXRlOwogwqDCoMKgwqDCoMKgwqAgcGlw
ZSA9IGRybV9jcnRjX2luZGV4KGNydGMpOwoKIMKgwqDCoMKgwqDCoMKgIGlmIChwcml2LT5jcnRj
X2Z1bmNzW3BpcGVdICYmIApwcml2LT5jcnRjX2Z1bmNzW3BpcGVdLT53YWl0X3ZhY3RfZW5kKQog
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHJldCA9IHByaXYtPmNydGNfZnVuY3NbcGlw
ZV0tPndhaXRfdmFjdF9lbmQoY3J0YywgCm1zdGltZW91dCk7CgogwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIHJldDsKfQpFWFBPUlRfU1lNQk9MKHJvY2tjaGlwX2RybV93YWl0X3ZhY3RfZW5kKTsKCj4g
U2FzY2hhCj4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
