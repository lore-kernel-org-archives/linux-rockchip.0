Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71DEDC6FD19
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 13:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kqkNNoPy42pPLiq+bNses4qPW7RgTAdasHHjiqaoEDc=; b=gK0XldlEoKbRA/
	MbQQ7l7A8K92/90PZDFYb3a6Bt1FAo8Zawj0aC4I/KGRcOe7uhxq0pGjLx+oZfBzzHyU8A2TrwnmW
	ZyqBcflNl3rqSPvsmzsQa7XYQNtwtJdNLv058Ew6pbhHAPSGKmdxkCrPsbVBjubkutOkTioDugODu
	HgVD9TRgBLdqdM1lV50cOuhN+asP9rRYbjY2az85mqSdGWUx0qS+L8sG2AO8b/Rq4aAFw4a6Wbxpm
	/nl2cpmYgOiv/WTXreDVvKV1jD4vr1B+vL7YB4DgwS4VQEdEN0orihSUrIZ4m41TIaFz1c4zOcnx+
	cRsflsEqPDXR2Y7hOQRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiW9-005zVS-2R; Mon, 13 Mar 2023 13:47:13 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiW6-005zST-SN
	for linux-rockchip@lists.infradead.org; Mon, 13 Mar 2023 13:47:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 4FA39612AE;
	Mon, 13 Mar 2023 13:47:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE390C433D2;
	Mon, 13 Mar 2023 13:47:02 +0000 (UTC)
Message-ID: <1c1e4e60-3b90-f268-8012-3193e1de4769@xs4all.nl>
Date: Mon, 13 Mar 2023 14:47:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] media: hantro: fix use after free bug in hantro_release
 due to race condition
Content-Language: en-US
To: Zheng Hacker <hackerzheng666@gmail.com>
Cc: Zheng Wang <zyytlz.wz@163.com>, ezequiel@vanguardiasur.com.ar,
 p.zabel@pengutronix.de, mchehab@kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 1395428693sheep@gmail.com, alex000young@gmail.com
References: <20230307153542.1178065-1-zyytlz.wz@163.com>
 <7f9796d2-1885-a6f2-b9e3-d6ea58524033@xs4all.nl>
 <CAJedcCwnvNK8Gbcxz2V5+ebRJFrEYjpoJsKTKZ7DOSETr_7LEQ@mail.gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
In-Reply-To: <CAJedcCwnvNK8Gbcxz2V5+ebRJFrEYjpoJsKTKZ7DOSETr_7LEQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_064711_003143_E8C6FDBB 
X-CRM114-Status: GOOD (  18.99  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMTMvMDMvMjAyMyAxNDo0NSwgWmhlbmcgSGFja2VyIHdyb3RlOgo+IEhhbnMgVmVya3VpbCA8
aHZlcmt1aWxAeHM0YWxsLm5sPiDkuo4yMDIz5bm0M+aciDEz5pel5ZGo5LiAIDIxOjE35YaZ6YGT
77yaCj4+Cj4+IE9uIDA3LzAzLzIwMjMgMTY6MzUsIFpoZW5nIFdhbmcgd3JvdGU6Cj4+PiBJbiBo
YW50cm9fcHJvYmUsIHZwdS0+d2F0Y2hkb2dfd29yayBpcyBib3VuZCB3aXRoCj4+PiBoYW50cm9f
d2F0Y2hkb2cuIFRoZW4gaGFudHJvX2VuZF9wcmVwYXJlX3J1biBtYXkKPj4+IGJlIGNhbGxlZCB0
byBzdGFydCB0aGUgd29yay4KPj4+Cj4+PiBJZiB3ZSBjbG9zZSB0aGUgZmlsZSBvciByZW1vdmUg
dGhlIG1vZHVsZSB3aGljaCB3aWxsCj4+PiBjYWxsIGhhbnRyb19yZWxlYXNlIGFuZCBoYW50cm9f
cmVtb3ZlIHRvIG1ha2UgY2xlYW51cCwKPj4+IHRoZXJlIG1heSBiZSBhIHVuZmluaXNoZWQgd29y
ay4gVGhlIHBvc3NpYmxlIHNlcXVlbmNlCj4+PiBpcyBhcyBmb2xsb3dzLCB3aGljaCB3aWxsIGNh
dXNlIGEgdHlwaWNhbCBVQUYgYnVnLgo+Pj4KPj4+IFRoZSBzYW1lIHRoaW5nIHdpbGwgaGFwcGVu
IGluIGhhbnRyb19yZWxlYXNlLCBhbmQgdXNlCj4+PiBjdHggYWZ0ZXIgZnJlZWluZyBpdC4KPj4+
Cj4+PiBGaXggaXQgYnkgY2FuY2VsaW5nIHRoZSB3b3JrIGJlZm9yZSBjbGVhbnVwIGluIGhhbnRy
b19yZWxlYXNlLgo+Pj4KPj4+IENQVTAgICAgICAgICAgICAgICAgICBDUFUxCj4+Pgo+Pj4gICAg
ICAgICAgICAgICAgICAgICB8aGFudHJvX3dhdGNoZG9nCj4+PiBoYW50cm9fcmVtb3ZlICAgICB8
Cj4+PiAgIHY0bDJfbTJtX3JlbGVhc2UgIHwKPj4+ICAgICBrZnJlZShtMm1fZGV2KTsgfAo+Pj4g
ICAgICAgICAgICAgICAgICAgICB8Cj4+PiAgICAgICAgICAgICAgICAgICAgIHwgdjRsMl9tMm1f
Z2V0X2N1cnJfcHJpdgo+Pj4gICAgICAgICAgICAgICAgICAgICB8ICAgbTJtX2Rldi0+Y3Vycl9j
dHggLy91c2UKPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBaaGVuZyBXYW5nIDx6eXl0bHoud3pAMTYz
LmNvbT4KPj4+IC0tLQo+Pj4gIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFu
dHJvX2Rydi5jIHwgMSArCj4+PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4+Pgo+
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJv
X2Rydi5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMK
Pj4+IGluZGV4IGIwYWVlZGFlN2I2NS4uY2YwMGNjYWE3ODI5IDEwMDY0NAo+Pj4gLS0tIGEvZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMKPj4+ICsrKyBiL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jCj4+PiBAQCAtNjAx
LDYgKzYwMSw3IEBAIHN0YXRpYyBpbnQgaGFudHJvX3JlbGVhc2Uoc3RydWN0IGZpbGUgKmZpbHAp
Cj4+PiAgICAgICAgKiBObyBuZWVkIGZvciBleHRyYSBsb2NraW5nIGJlY2F1c2UgdGhpcyB3YXMg
dGhlIGxhc3QgcmVmZXJlbmNlCj4+PiAgICAgICAgKiB0byB0aGlzIGZpbGUuCj4+PiAgICAgICAg
Ki8KPj4+ICsgICAgIGNhbmNlbF9kZWxheWVkX3dvcmsoJnZwdS0+d2F0Y2hkb2dfd29yayk7Cj4+
PiAgICAgICB2NGwyX20ybV9jdHhfcmVsZWFzZShjdHgtPmZoLm0ybV9jdHgpOwo+Pj4gICAgICAg
djRsMl9maF9kZWwoJmN0eC0+ZmgpOwo+Pj4gICAgICAgdjRsMl9maF9leGl0KCZjdHgtPmZoKTsK
Pj4KPj4gZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmM6IElu
IGZ1bmN0aW9uIOKAmGhhbnRyb19yZWxlYXNl4oCZOgo+PiBkcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYzo2MDQ6MzA6IGVycm9yOiDigJh2cHXigJkgdW5kZWNs
YXJlZCAoZmlyc3QgdXNlIGluIHRoaXMgZnVuY3Rpb24pOyBkaWQgeW91IG1lYW4g4oCYZnB14oCZ
Pwo+PiAgIDYwNCB8ICAgICAgICAgY2FuY2VsX2RlbGF5ZWRfd29yaygmdnB1LT53YXRjaGRvZ193
b3JrKTsKPj4gICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF5+fgo+PiAgICAg
ICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZnB1Cj4+IGRyaXZlcnMvbWVkaWEvcGxh
dGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jOjYwNDozMDogbm90ZTogZWFjaCB1bmRlY2xh
cmVkIGlkZW50aWZpZXIgaXMgcmVwb3J0ZWQgb25seSBvbmNlIGZvciBlYWNoIGZ1bmN0aW9uIGl0
IGFwcGVhcnMgaW4KPj4KPj4gWW91IGNsZWFybHkgZGlkbid0IGNvbXBpbGUgdGhpcyBwYXRjaCEK
Pj4KPiBTb3JyeSBmb3IgbXkgbWlzdGFrZS4gSSB3YXMgaHVycmllZCB0byByZXBvcnQgdGhlIGlz
c3VlIGFuZCBkaXNjdXNzCj4gd2l0aCBkZXZlbG9wZXIgdG8gY29uZmlybSBpdCAuIEknbGwgY29t
cGxldGUgaXQgYW5kIHRlc3QgaXQgbG9jYWxseS4KCldhcyB0aGlzIFVBRiBhY3R1YWxseSBvYnNl
cnZlZCwgb3IgaXMgaXQgdGhlb3JldGljYWw/CgpSZWdhcmRzLAoKCUhhbnMKCj4gCj4gQmVzdCBy
ZWdhcmRzLAo+IFpoZW5nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
