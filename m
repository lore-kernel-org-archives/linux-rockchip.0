Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 705A1C83F14
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Aug 2023 12:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ql/0i5hsVOR9ASWho2gVZcPRtvFgI3erVTiE95/4pYk=; b=Wcwb0arEIrOCJm
	fjnhlxIGQU08G2lUQ5TdfKyEEW4JyBSs0ZO09hAOeZGKXPyrtkQDK2YFMegIewkkgYbFaCTgp0dIh
	9yqXGOj/Hu9JJG7Xv8lc8fbBBMuImlzLIsySs++pArK43EQmASRTtaDYU9aErHo0cCvSb0Ky1bBnc
	RLHTXRgheLP4tfoHZzq4paYUSIMta26/FqDliw13DlgaE5ap6xAm1ih12vA67SANo2xLv+zOvhltr
	E3hxfoiC8Za5WpljnSqYeCzMKuND9U654MmXRvInEEMD3iBpk7nq+ptAKB+uWkgWDopS5foDkk+kQ
	WM4qAdu+i24tpjgHuxZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbKff-00DVS4-0k;
	Wed, 30 Aug 2023 12:51:43 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbKfb-00DVQ7-3C;
	Wed, 30 Aug 2023 12:51:41 +0000
Received: from [IPV6:2a01:e0a:120:3210:3c80:2375:ed1d:19ee] (unknown [IPv6:2a01:e0a:120:3210:3c80:2375:ed1d:19ee])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 78F0A660722B;
	Wed, 30 Aug 2023 13:51:32 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1693399892;
	bh=ATFNlFErqZ0DT6q6oV6nUkS2hS/qdeMG0yqOrN3MSgk=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=grBQL/Me/AQSKnGXDsM+f85KJNzEEFJDfQbBeuzCklPS0k9B0cmtilehE5zKRYu/t
	 TtV/dyQfppH74lB05sAV/VsXWgaDexMHs1RPCOCcCNZ+wkVPBEIymWDEX96+OSBOvZ
	 hcvl4UYaMfBYhNM1TzhmuweEvku6Ox/K8F+a+Y/mmO6tvueqjLpjoq+aE2OcT1m9Nh
	 qeR4oxhg+yIrXzde+Z+KiMuxBZaSgAZ4XQRFzOzuntRs5PJ/DpzBObPWs1gTGFe/i5
	 GqNZhQWD0fukRTvVQKnmo3zaxLeESSifUnsZr63gW6bt1RPa2UNzAUrnR3pwaYDVEi
	 BQwFKwll1kpHw==
Message-ID: <643a7811-60ff-6ac9-be3d-edcd9a0b95cc@collabora.com>
Date: Wed, 30 Aug 2023 14:51:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v5 01/10] media: videobuf2: Rework offset 'cookie'
 encoding pattern
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20230824092133.39510-1-benjamin.gaignard@collabora.com>
 <20230824092133.39510-2-benjamin.gaignard@collabora.com>
 <01c299f2-8118-5d86-e9b6-a459c1b6c467@xs4all.nl>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <01c299f2-8118-5d86-e9b6-a459c1b6c467@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_055140_323378_4D22B50E 
X-CRM114-Status: GOOD (  24.17  )
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

CkxlIDMwLzA4LzIwMjMgw6AgMTQ6MjUsIEhhbnMgVmVya3VpbCBhIMOpY3JpdMKgOgo+IE9uIDI0
LzA4LzIwMjMgMTE6MjEsIEJlbmphbWluIEdhaWduYXJkIHdyb3RlOgo+PiBDaGFuZ2UgaG93IG9m
ZnNldCAnY29va2llJyBmaWVsZCB2YWx1ZSBpcyBjb21wdXRlZCB0byBtYWtlIHBvc3NpYmxlCj4+
IHRvIHVzZSBtb3JlIGJ1ZmZlcnMgKHVwIHRvIDB4ZmZmZikuCj4+IFdpdGggdGhpcyBlbmNvZGlu
ZyBwYXR0ZXJuIHdlIGtub3cgdGhlIG1heGltdW0gbnVtYmVyIHRoYXQgYSBxdWV1ZQo+PiBjb3Vs
ZCBzdG9yZSBzbyB3ZSBjYW4gY2hlY2sgaW5nIGF0IHF1ZXVlIGluaXQgdGltZS4KPj4gSXQgYWxz
byBtYWtlIGVhc2llciBhbmQgZmFzdGVyIHRvIGZpbmQgYnVmZmVyIGFuZCBwbGFuZSBmcm9tIHVz
aW5nCj4+IHRoZSBvZmZzZXQgZmllbGQuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdh
aWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgo+PiAtLS0KPj4gdjU6Cj4+
IC0gSSBoYXZlbid0IGNoYW5nZSBEU1RfUVVFVUVfT0ZGX0JBU0UgZGVmaW5pdGlvbiBiZWNhdXNl
IGl0IHVzZWQgaW4KPj4gICAgdjRsMi1tZW0ybWVtIGFuZCBzNXBfbWZjIGRyaXZlciB3aXRoIGEg
c2hpZnQuCj4+Cj4+ICAgLi4uL21lZGlhL2NvbW1vbi92aWRlb2J1ZjIvdmlkZW9idWYyLWNvcmUu
YyAgIHwgNDggKysrKysrKysrLS0tLS0tLS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAyNCBpbnNl
cnRpb25zKCspLCAyNCBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVk
aWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItY29yZS5jIGIvZHJpdmVycy9tZWRpYS9jb21t
b24vdmlkZW9idWYyL3ZpZGVvYnVmMi1jb3JlLmMKPj4gaW5kZXggY2Y2NzI3ZDljODFmLi5lMDY5
MDU1MzNlZjQgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92
aWRlb2J1ZjItY29yZS5jCj4+ICsrKyBiL2RyaXZlcnMvbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92
aWRlb2J1ZjItY29yZS5jCj4+IEBAIC0zMSw2ICszMSwxMCBAQAo+PiAgIAo+PiAgICNpbmNsdWRl
IDx0cmFjZS9ldmVudHMvdmIyLmg+Cj4+ICAgCj4+ICsjZGVmaW5lIFBMQU5FX0lOREVYX1NISUZU
CTMKPj4gKyNkZWZpbmUgUExBTkVfSU5ERVhfTUFTSwkweDcKPj4gKyNkZWZpbmUgTUFYX0JVRkZF
UlMJCTB4ZmZmZgo+IFZlcnkgcG9vciBuYW1lLCBzZWUgYmVsb3cuCj4KPj4gKwo+PiAgIHN0YXRp
YyBpbnQgZGVidWc7Cj4+ICAgbW9kdWxlX3BhcmFtKGRlYnVnLCBpbnQsIDA2NDQpOwo+PiAgIAo+
PiBAQCAtMzU4LDIxICszNjIsMjMgQEAgc3RhdGljIHZvaWQgX19zZXR1cF9vZmZzZXRzKHN0cnVj
dCB2YjJfYnVmZmVyICp2YikKPj4gICAJdW5zaWduZWQgaW50IHBsYW5lOwo+PiAgIAl1bnNpZ25l
ZCBsb25nIG9mZiA9IDA7Cj4+ICAgCj4+IC0JaWYgKHZiLT5pbmRleCkgewo+PiAtCQlzdHJ1Y3Qg
dmIyX2J1ZmZlciAqcHJldiA9IHEtPmJ1ZnNbdmItPmluZGV4IC0gMV07Cj4+IC0JCXN0cnVjdCB2
YjJfcGxhbmUgKnAgPSAmcHJldi0+cGxhbmVzW3ByZXYtPm51bV9wbGFuZXMgLSAxXTsKPj4gLQo+
PiAtCQlvZmYgPSBQQUdFX0FMSUdOKHAtPm0ub2Zmc2V0ICsgcC0+bGVuZ3RoKTsKPj4gLQl9Cj4+
ICsJLyoKPj4gKwkgKiBPZmZzZXRzIGNvb2tpZXMgdmFsdWUgaGF2ZSB0aGUgZm9sbG93aW5nIGNv
bnN0cmFpbnRzOgo+PiArCSAqIC0gYSBidWZmZXIgY291bGQgaGF2ZSB1cCB0byA4IHBsYW5lcy4K
Pj4gKwkgKiAtIHY0bDIgbWVtMm1lbSB1c2UgYml0IDMwIHRvIGRpc3Rpbmd1aXNoIGJldHdlZW4g
c291cmNlIGFuZCBkZXN0aW5hdGlvbiBidWZmZXJzLgo+PiArCSAqIC0gbXVzdCBiZSBwYWdlIGFs
aWduZWQKPj4gKwkgKiBUaGF0IGxlZCB0byB0aGlzIGJpdCBtYXBwaW5nOgo+PiArCSAqIHwzMCAg
ICAgICAgICAgICAgICB8MjkgICAgICAgIDE1fDE0ICAgICAgIDEyfDExIDB8Cj4+ICsJICogfERT
VF9RVUVVRV9PRkZfQkFTRXxidWZmZXIgaW5kZXh8cGxhbmUgaW5kZXh8IDAgIHwKPj4gKwkgKiB3
aGVyZSB0aGVyZSBpcyAxNiBiaXRzIHRvIHN0b3JlIGJ1ZmZlciBpbmRleC4KPiAxNiAtPiAxNTog
dGhlcmUgYXJlIDE1IChub3QgMTYhKSBiaXRzIGF2YWlsYWJsZSBmb3IgYnVmZmVyIGluZGljZXMu
IFNvIHRoZSBtYXhpbXVtCj4gbnVtYmVyIG9mIGJ1ZmZlcnMgaXMgMzI3NjgsIGdpdmVuIHRoYXQg
dGhlIGluZGljZXMgc3RhcnQgYXQgMC4KPgo+PiArCSAqLwo+PiArCW9mZiA9IHZiLT5pbmRleCA8
PCAoUExBTkVfSU5ERVhfU0hJRlQgKyBQQUdFX1NISUZUKTsKPj4gICAKPj4gICAJZm9yIChwbGFu
ZSA9IDA7IHBsYW5lIDwgdmItPm51bV9wbGFuZXM7ICsrcGxhbmUpIHsKPj4gLQkJdmItPnBsYW5l
c1twbGFuZV0ubS5vZmZzZXQgPSBvZmY7Cj4+ICsJCXZiLT5wbGFuZXNbcGxhbmVdLm0ub2Zmc2V0
ID0gb2ZmICsgKHBsYW5lIDw8IFBBR0VfU0hJRlQpOwo+PiAgIAo+PiAgIAkJZHByaW50ayhxLCAz
LCAiYnVmZmVyICVkLCBwbGFuZSAlZCBvZmZzZXQgMHglMDhseFxuIiwKPj4gICAJCQkJdmItPmlu
ZGV4LCBwbGFuZSwgb2ZmKTsKPj4gLQo+PiAtCQlvZmYgKz0gdmItPnBsYW5lc1twbGFuZV0ubGVu
Z3RoOwo+PiAtCQlvZmYgPSBQQUdFX0FMSUdOKG9mZik7Cj4+ICAgCX0KPj4gICB9Cj4+ICAgCj4+
IEBAIC0yMjA5LDIxICsyMjE1LDE1IEBAIHN0YXRpYyBpbnQgX19maW5kX3BsYW5lX2J5X29mZnNl
dChzdHJ1Y3QgdmIyX3F1ZXVlICpxLCB1bnNpZ25lZCBsb25nIG9mZiwKPj4gICAJCXJldHVybiAt
RUJVU1k7Cj4+ICAgCX0KPj4gICAKPj4gLQkvKgo+PiAtCSAqIEdvIG92ZXIgYWxsIGJ1ZmZlcnMg
YW5kIHRoZWlyIHBsYW5lcywgY29tcGFyaW5nIHRoZSBnaXZlbiBvZmZzZXQKPj4gLQkgKiB3aXRo
IGFuIG9mZnNldCBhc3NpZ25lZCB0byBlYWNoIHBsYW5lLiBJZiBhIG1hdGNoIGlzIGZvdW5kLAo+
PiAtCSAqIHJldHVybiBpdHMgYnVmZmVyIGFuZCBwbGFuZSBudW1iZXJzLgo+PiAtCSAqLwo+PiAt
CWZvciAoYnVmZmVyID0gMDsgYnVmZmVyIDwgcS0+bnVtX2J1ZmZlcnM7ICsrYnVmZmVyKSB7Cj4+
IC0JCXZiID0gcS0+YnVmc1tidWZmZXJdOwo+PiArCS8qIEdldCBidWZmZXIgYW5kIHBsYW5lIGZy
b20gdGhlIG9mZnNldCAqLwo+PiArCWJ1ZmZlciA9IChvZmYgPj4gKFBMQU5FX0lOREVYX1NISUZU
ICsgUEFHRV9TSElGVCkpICYgTUFYX0JVRkZFUlM7Cj4gSG1tLCB5b3UgdXNlIGl0IGFzIGEgbWFz
ay4gVGhlIG5hbWUgTUFYX0JVRkZFUlMgaXMgcmVhbGx5IGNvbmZ1c2luZy4KPiBIb3cgYWJvdXQg
QlVGRkVSX0lOREVYX01BU0s/IFRoYXQgaXMgY29uc2lzdGVudCB3aXRoIFBMQU5FX0lOREVYX01B
U0suCgpJIHdpbGwgZm9sbG93IHlvdXIgYWR2aWNlIGFuZCBmaXggdGhhdCBpbiBuZXh0IHZlcnNp
b24uCkkgd2lsbCB1bnRpbCB5b3UgaGF2ZSBmaW5pc2ggeW91ciByZXZpZXcgaW4gdGhpcyBzZXJp
ZXMgYmVmb3JlIHNlbmQgaXQuCgpSZWdhcmRzLApCZW5qYW1pbgoKPgo+PiArCXBsYW5lID0gKG9m
ZiA+PiBQQUdFX1NISUZUKSAmIFBMQU5FX0lOREVYX01BU0s7Cj4+ICAgCj4+IC0JCWZvciAocGxh
bmUgPSAwOyBwbGFuZSA8IHZiLT5udW1fcGxhbmVzOyArK3BsYW5lKSB7Cj4+IC0JCQlpZiAodmIt
PnBsYW5lc1twbGFuZV0ubS5vZmZzZXQgPT0gb2ZmKSB7Cj4+IC0JCQkJKl9idWZmZXIgPSBidWZm
ZXI7Cj4+IC0JCQkJKl9wbGFuZSA9IHBsYW5lOwo+PiAtCQkJCXJldHVybiAwOwo+PiAtCQkJfQo+
PiAtCQl9Cj4+ICsJdmIgPSBxLT5idWZzW2J1ZmZlcl07Cj4+ICsJaWYgKHZiLT5wbGFuZXNbcGxh
bmVdLm0ub2Zmc2V0ID09IG9mZikgewo+PiArCQkqX2J1ZmZlciA9IGJ1ZmZlcjsKPj4gKwkJKl9w
bGFuZSA9IHBsYW5lOwo+PiArCQlyZXR1cm4gMDsKPj4gICAJfQo+PiAgIAo+PiAgIAlyZXR1cm4g
LUVJTlZBTDsKPiBSZWdhcmRzLAo+Cj4gCUhhbnMKPgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
