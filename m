Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B638AC5DF87
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Aug 2026 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y8jp+t5Xh+3slwUQjzZ+6KcqlTLhRW8Eawoqgz13438=; b=V47pL8oOaP1Fuj
	8LB/4RoJgQw3TKQbx0V2h/KtbOQwWnC2OAoXVElufanXIW4gFhmnu8gsUJ6DdOqDINrOzI+Im7rsQ
	liI2RGP/GpM4gYf051C+5XHoDd7evEkL5LPXLE/DkUoj6qnEpgEpGVW7R62Ysxw6/MNCOvQ6ahZ89
	9Yj6wUzgQVV0PKBGSBgwnMUYWhS/y+oJbJRxAVar4Tjh0bZqxWPwvMKEl++Eh38n9SbhcbyfcJnhP
	h/3HwBUDOwu7/EB4KdvJ9vURLbJjeaDBfgnx9SUt15bxBmyatfxHFFmOynuK6G6YoCeRjEgIjE+FX
	12LqXWqHueQ8twDHxWzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxKJy-0000000Cm5m-1rVC;
	Fri, 21 Aug 2026 08:09:50 +0000
Received: from mail-m103131191112.xmail.ntesmail.com ([103.131.191.112])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wxKJu-0000000Cm41-0uFO;
	Fri, 21 Aug 2026 08:09:48 +0000
Received: from [172.16.12.74] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4ad475c48;
	Fri, 21 Aug 2026 16:09:40 +0800 (GMT+08:00)
Message-ID: <c5fba12d-487c-46ee-8ea3-3a844f383555@rock-chips.com>
Date: Fri, 21 Aug 2026 16:09:40 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 5/5] drm/bridge: analogix_dp: Add support for optional
 data-lanes mapping
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 Heiko Stuebner <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <20260819075238.3007087-1-damon.ding@rock-chips.com>
 <20260819075238.3007087-6-damon.ding@rock-chips.com>
 <178714408666.358642.10737743872246645132.b4-review@b4>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <178714408666.358642.10737743872246645132.b4-review@b4>
X-HM-Tid: 0aa0235e56ad03a8kunme42a00e845a4aa
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaGExNVkxPTExNThlKGR4dTFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=c+3teKrSTTlXpJm1/i6LeNry75eFu/LVtK9z45N0HBhWA4yMUOIhkHCeXd+57htAifrv1J37fPpyJ0aEcZKghhEOywnc52hTnD8htVJWy/7LtEe6j3DFnT5GQivXfsJFbEJvm2fX4k2k8i6XbQ5Gl2SbDLTp6S6sR1xc5XEzqCQ=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=wKHl0TpfBtrjUDpLLcVLEklz3HswqlwtK2BO20EwKcs=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260821_010946_916875_64E231E9 
X-CRM114-Status: GOOD (  25.39  )
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

SGkgTHVjYSwKCk9uIDgvMTkvMjAyNiA4OjU0IFBNLCBMdWNhIENlcmVzb2xpIHdyb3RlOgo+IEhl
bGxvLAo+IAo+PiBQYXJzZSB0aGUgb3B0aW9uYWwgJ2RhdGEtbGFuZXMnIGRldmljZSB0cmVlIHBy
b3BlcnR5IHRvIHN1cHBvcnQKPj4gY3VzdG9tIHBoeXNpY2FsIGxhbmUgbWFwcGluZyBjb25maWd1
cmF0aW9uLgo+Pgo+PiBJZiBubyB2YWxpZCBjb25maWd1cmF0aW9uIGlzIGZvdW5kLCBmYWxsIGJh
Y2sgdG8gdGhlIGRlZmF1bHQKPj4gbGFuZSBtYXAgKDAsIDEsIDIsIDMpIGF1dG9tYXRpY2FsbHkg
YW5kIGtlZXAgdGhlIGRyaXZlciBydW5uaW5nLgo+Pgo+PiBMYW5lIG1hcHBpbmcgaXMgbWFpbmx5
IHVzZWQgZm9yIGJlbG93IHNjZW5hcmlvczoKPj4gMS4gQ29ycmVjdCBQQ0IgbGFuZSBzd2FwIGFu
ZCBkaWZmZXJlbnRpYWwgbGluZSByb3V0aW5nIGNyb3Nzb3Zlcgo+PiAgICAgd2l0aG91dCBoYXJk
d2FyZSBjaGFuZ2VzOwo+PiAyLiBBZGFwdCBtaXNtYXRjaGVkIGxhbmUgcGluIGRlZmluaXRpb25z
IGJldHdlZW4gU29DIGFuZCBlRFAgcGFuZWw7Cj4+IDMuIFN1cHBvcnQgbXVsdGlwbGUgcGFuZWwg
aGFyZHdhcmUgdmFyaWFudHMgb24gdGhlIHNhbWUgYm9hcmQKPj4gICAgIGJ5IGNvbmZpZ3VyaW5n
IGRhdGEtbGFuZXMgaW4gZGV2aWNlIHRyZWUgb25seS4KPj4KPj4gUmV2aWV3ZWQtYnk6IFNlYmFz
dGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgo+PiBTaWduZWQt
b2ZmLWJ5OiBEYW1vbiBEaW5nIDxkYW1vbi5kaW5nQHJvY2stY2hpcHMuY29tPgo+Pgo+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3Jl
LmMgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUuYwo+
PiBpbmRleCAxMTc0NDhiODU0ZGIuLjRhYTQ0NDg1OGJiNiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMKPj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMKPj4gQEAgLTEy
NDAsNiArMTI0MCw1OSBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGRybV9icmlkZ2VfZnVuY3MgYW5h
bG9naXhfZHBfYnJpZGdlX2Z1bmNzID0gewo+PiAgIAkuZGV0ZWN0ID0gYW5hbG9naXhfZHBfYnJp
ZGdlX2RldGVjdCwKPj4gICB9Owo+Pgo+PiArc3RhdGljIGludCBhbmFsb2dpeF9kcF9kdF9wYXJz
ZV9sYW5lc19tYXAoc3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSAqZHApCj4+ICt7Cj4+ICsJc3Ry
dWN0IHZpZGVvX2luZm8gKnZpZGVvX2luZm8gPSAmZHAtPnZpZGVvX2luZm87Cj4+ICsJc3RydWN0
IGRldmljZV9ub2RlICplbmRwb2ludDsKPj4gKwl1MzIgdG1wW0xBTkVfQ09VTlQ0XTsKPiAKPiBU
aGUgJ3RtcCcgbmFtZSBpcyBub3QgdmVyeSB1c2VmdWwgdG8gdW5kZXJzdGFuZCB3aGF0IGl0J3Mg
Zm9yLiBCYXNlZCBvbiB0aGUKPiBjb2RlIEknZCBzYXkgaXQgc3RvcmVzIGEgbGFuZSBpbmRleCwg
c28gd2hhdCBhYm91dCAnbGFuZV9pZHgnLCB1bmxlc3MgeW91Cj4gY2FuIHByb3Bvc2UgYSBiZXR0
ZXIgbmFtZS4KCkdvb2QgaWRlYSwgd2lsbCBmaXggaW4gdjguCgo+IAo+PiArCXUzMiBtYXBbTEFO
RV9DT1VOVDRdID0gezAsIDEsIDIsIDN9Owo+PiArCWJvb2wgdXNlZFtMQU5FX0NPVU5UNF0gPSB7
ZmFsc2V9Owo+PiArCWludCBudW1fbGFuZXM7Cj4+ICsJaW50IHJldCwgaTsKPj4gKwo+PiArCW1l
bWNweSh2aWRlb19pbmZvLT5sYW5lX21hcCwgbWFwLCBzaXplb2YobWFwKSk7Cj4+ICsKPj4gKwlu
dW1fbGFuZXMgPSBkcm1fb2ZfZ2V0X2RhdGFfbGFuZXNfY291bnRfZXAoZHAtPmRldi0+b2Zfbm9k
ZSwgMSwgMCwgMSwKPj4gKwkJCQkJCSAgIHZpZGVvX2luZm8tPm1heF9sYW5lX2NvdW50KTsKPj4g
KwlpZiAobnVtX2xhbmVzIDwgMCkKPj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4+ICsKPj4gKwllbmRw
b2ludCA9IG9mX2dyYXBoX2dldF9lbmRwb2ludF9ieV9yZWdzKGRwLT5kZXYtPm9mX25vZGUsIDEs
IC0xKTsKPiAKPiAKPj4gKwlpZiAoIWVuZHBvaW50KQo+PiArCQlyZXR1cm4gLUVJTlZBTDsKPj4g
Kwo+PiArCXJldCA9IG9mX3Byb3BlcnR5X3JlYWRfdTMyX2FycmF5KGVuZHBvaW50LCAiZGF0YS1s
YW5lcyIsIHRtcCwgbnVtX2xhbmVzKTsKPj4gKwlvZl9ub2RlX3B1dChlbmRwb2ludCk7Cj4+ICsJ
aWYgKHJldCkKPj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4+ICsKPj4gKwlmb3IgKGkgPSAwOyBpIDwg
bnVtX2xhbmVzOyBpKyspIHsKPj4gKwkJaWYgKHRtcFtpXSA+PSBMQU5FX0NPVU5UNCkgewo+PiAr
CQkJZGV2X2RiZyhkcC0+ZGV2LCAiZGF0YS1sYW5lc1slZF0gPSAldSBpcyBvdXQgb2YgcmFuZ2Vc
biIsIGksIHRtcFtpXSk7Cj4+ICsJCQlyZXR1cm4gLUVJTlZBTDsKPj4gKwkJfQo+PiArCj4+ICsJ
CWlmICh1c2VkW3RtcFtpXV0pIHsKPj4gKwkJCWRldl9kYmcoZHAtPmRldiwgImRhdGEtbGFuZXNb
JWRdID0gJXUgaXMgZHVwbGljYXRlXG4iLCBpLCB0bXBbaV0pOwo+PiArCQkJcmV0dXJuIC1FSU5W
QUw7Cj4+ICsJCX0KPj4gKwo+PiArCQl1c2VkW3RtcFtpXV0gPSB0cnVlOwo+PiArCQltYXBbaV0g
PSB0bXBbaV07Cj4+ICsJfQo+PiArCj4+ICsJZm9yIChpID0gMDsgaSA8IExBTkVfQ09VTlQ0ICYm
IG51bV9sYW5lcyA8IExBTkVfQ09VTlQ0OyBpKyspIHsKPj4gKwkJaWYgKCF1c2VkW2ldKQo+PiAr
CQkJbWFwW251bV9sYW5lcysrXSA9IGk7Cj4+ICsJfQo+IAo+IFRoaXMgbG9vcCBpcyBhIGJpdCBv
YnNjdXJlIHRvIG1lLiBBZnRlciByZWFkaW5nIGl0IGEgZmV3IHRpbWVzIEkgX3RoaW5rXyBpdAo+
IGRvZXMgdGhlIGZvbGxvd2luZzoKPiAKPiAgIC8qCj4gICAgKiBGaWxsIHRoZSB1bnVzZWQgbWFw
W10gZW50cmllcyB3aXRoIHRoZSB1bnVzZWQgbGFuZSBpbmRpY2VzIDxyZWFzb24/Pi4gRS5nLjoK
PiAgICAqIHVzZWRbXSB2YWx1ZXMgPSB7MCwxLDAsMX0gLy8gT25seSBsYW5lcyAxIGFuZCAzIGFy
ZSB1c2VkCj4gICAgKiBtYXBbXSBiZWZvcmUgID0gezMsMSx4LHh9IC8vIHggPSB1bmFzc2lnbmVk
Cj4gICAgKiBtYXBbXSBhZnRlciAgID0gezMsMSwwLDJ9IC8vIGZpbGxlZCBsYXN0IDIgZW50cmll
cyB3aXRoIHRoZSB1bnVzZWQgbGFuZSBpbmRpY2VzCj4gICAgKi8KPiAKPiBJcyBteSB1bmRlcnN0
YW5kaW5nIGNvcnJlY3Q/IElmIGl0IGlzLCBwbGVhc2UgZmlsbCA8cmVhc29uPz4gYW5kIGFkZCB0
aGUKPiBhYm92ZSBjb21tZW50IChwb3NzaWJseSBpbXByb3ZlZCkgYmVmb3JlIHRoZSBsb29wLgo+
IAo+IAoKWW91IGFyZSByaWdodC4KClRoZSBoYXJkd2FyZSByZWdpc3RlciBkZWZhdWx0cyB0byAw
eEU0LCB3aGljaCBjb3JyZXNwb25kcyB0byBtYXAgPSB7MCwgCjEsIDIsIDN9LiBGdW5jdGlvbmFs
bHksIHdyaXRpbmcgZHVwbGljYXRlIG1hcHBpbmdzIGZvciB1bnVzZWQgbGFuZXMgCndvdWxkIG5v
dCBjYXVzZSBpc3N1ZXMuCgpVbnVzZWQgbGFuZXMgYXJlIHBvcHVsYXRlZCB3aXRoIG5vbuKAkWR1
cGxpY2F0ZWQgcGh5c2ljYWwgbGFuZSBpbmRpY2VzIHRvIApzdXBwb3J0IERQIEhQRCBzY2VuYXJp
b3Mgd2hlcmUgZGlmZmVyZW50IGRldmljZXMgd2l0aCB2YXJ5aW5nIGxhbmUgCmNvdW50cyBtYXkg
YmUgY29ubmVjdGVkLCBhcyB3ZWxsIGFzIHRvIGtlZXAgdGhlIHJlZ2lzdGVyIGNvbnRlbnQgcmVh
c29uYWJsZS4KClRoZSBjb21tZW50IHdpbGwgYmUgYWRkZWQgaW4gdjguCgpCZXN0IHJlZ2FyZHMs
CkRhbW9uCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
