Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AFBADC43458
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Jun 2026 01:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nv83HKnjvWqihz6SQ+WM+GWUl5CsKX75hZFpOodtJn4=; b=zJJpVxQaU6RVLiRyU37o8Vr8oZ
	lO+OSon/L/lnQ0I6ZG9/jPvKkWWT8dnejKONc0Jh6mpoaE7rlqat6FhF25WWGd4q8IdeqxJWJiSdX
	wl7/SLCXQji9ZB5gGzPWujOvlu6L+EiZf/d+KeU1dYdFfVQSZA94rn8hCEmuNG2IEZ8t2iXfNLh29
	IipcQXKGn+/I20+6uqAot10vah7KLU4CCcImRpxUylsvpWiPH9PM3fq2r6o7EH8Gv7GDy99somTGI
	8utarWvMFc5NzSt2DsiZL6YYJvGC3bzqZOz/3JQvlfXNcRMmCHLgHrbjb5vvMMsAegd1V4TqGzh6r
	wHekbpEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we1BX-0000000DYPO-38Sf;
	Mon, 29 Jun 2026 01:53:19 +0000
Received: from mail-m82213631.xmail.ntesmail.com ([8.221.36.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1we1BQ-0000000DYOL-1wst;
	Mon, 29 Jun 2026 01:53:18 +0000
Received: from [172.16.12.74] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4414d26eb;
	Mon, 29 Jun 2026 09:53:02 +0800 (GMT+08:00)
Message-ID: <cb533b04-e550-4eb4-8a8f-6d17c3d43a48@rock-chips.com>
Date: Mon, 29 Jun 2026 09:53:02 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/4] drm/bridge: analogix_dp: Add validation for
 samsung,lane-count property
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
References: <20260604085220.2862986-1-damon.ding@rock-chips.com>
 <20260604085220.2862986-4-damon.ding@rock-chips.com>
 <178249136513.1374898.11400378046460567437.b4-review@b4>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <178249136513.1374898.11400378046460567437.b4-review@b4>
X-HM-Tid: 0a9f11147a4003a8kunm26f77d9422c470
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZGExMVh5DSUkaHRpOSUtLT1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=Jy7T/u28jP/+4T2VA2B9kxcFXAX9Dsq0ShxLHsURI3PTBcA0yO9T5KXoRBqEUSEuSuuttXE1GmOzP+PWv7OtI23helQrMLrSBkS5sop9hRxcLvUyMJF8AERH+JkKsMXw9cy7+oLAcg8pQYGhVPkRyg/D5ZPafYOGQAK8JHC5ptI=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=W782AbfO1D1R5eEJlgStJCNw/OtsvmDShB2b7uB9ZM8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260628_185313_834655_9A72A425 
X-CRM114-Status: GOOD (  18.75  )
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, dianders@chromium.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, m.szyprowski@samsung.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, linux-arm-kernel@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org, hjc@rock-chips.com, linux-kernel@vger.kernel.org, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, nicolas.frattaroli@collabora.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgTHVjYSwKCk9uIDYvMjcvMjAyNiAxMjoyOSBBTSwgTHVjYSBDZXJlc29saSB3cm90ZToKPiBP
biBUaHUsIDA0IEp1biAyMDI2IDE2OjUyOjE5ICswODAwLCBEYW1vbiBEaW5nIDxkYW1vbi5kaW5n
QHJvY2stY2hpcHMuY29tPiB3cm90ZToKPiAKPiBIZWxsbyBEYW1vbiwKPiAKPj4KPj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5j
IGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9hbmFsb2dpeC9hbmFsb2dpeF9kcF9jb3JlLmMKPj4g
aW5kZXggN2E4NTc3NGFhYWMxLi5lMTIwZWYzMzIwYzEgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jCj4+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9icmlkZ2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jCj4+IEBAIC0xMjYx
LDggKzEyNjIsMTEgQEAgc3RhdGljIGludCBhbmFsb2dpeF9kcF9kdF9wYXJzZV9wZGF0YShzdHJ1
Y3QgYW5hbG9naXhfZHBfZGV2aWNlICpkcCkKPj4gICAJCSAqLwo+PiAgIAkJb2ZfcHJvcGVydHlf
cmVhZF91MzIoZHBfbm9kZSwgInNhbXN1bmcsbGluay1yYXRlIiwKPj4gICAJCQkJICAgICAmdmlk
ZW9faW5mby0+bWF4X2xpbmtfcmF0ZSk7Cj4+IC0JCW9mX3Byb3BlcnR5X3JlYWRfdTMyKGRwX25v
ZGUsICJzYW1zdW5nLGxhbmUtY291bnQiLAo+PiAtCQkJCSAgICAgJnZpZGVvX2luZm8tPm1heF9s
YW5lX2NvdW50KTsKPj4gKwkJcmV0ID0gb2ZfcHJvcGVydHlfcmVhZF91MzIoZHBfbm9kZSwgInNh
bXN1bmcsbGFuZS1jb3VudCIsCj4+ICsJCQkJCSAgICZ2aWRlb19pbmZvLT5tYXhfbGFuZV9jb3Vu
dCk7Cj4+ICsJCWlmIChyZXQgfHwgIWRybV9kcF9sYW5lX2NvdW50X2lzX3ZhbGlkKHZpZGVvX2lu
Zm8tPm1heF9sYW5lX2NvdW50KSkKPj4gKwkJCXJldHVybiBkZXZfZXJyX3Byb2JlKGRwLT5kZXYs
IHJldCA/IHJldCA6IC1FSU5WQUwsCj4+ICsJCQkJCSAgICAgImZhaWxlZCB0byBwYXJzZSBzYW1z
dW5nLGxhbmUtY291bnRcbiIpOwo+IAo+IEkgdGhpbmsgdGhpcyByZXBvcnQgYnkgc2FzaGlrbyBt
YWtlcyBzZW5zZToKPiAKPiAgICA+ICBzYXNoaWtvLWJvdEBrZXJuZWwub3JnIDxzYXNoaWtvLWJv
dEBrZXJuZWwub3JnPjoKPiAgICA+Cj4gICAgPiAgW1NldmVyaXR5OiBIaWdoXQo+ICAgID4gIERv
ZXMgdGhpcyBtYWtlIHRoZSBvcHRpb25hbCBhbmQgZGVwcmVjYXRlZCBzYW1zdW5nLGxhbmUtY291
bnQgcHJvcGVydHkgYQo+ICAgID4gIHN0cmljdCByZXF1aXJlbWVudD8KPiAgICA+Cj4gICAgPiAg
SWYgc2Ftc3VuZyxsYW5lLWNvdW50IGlzIGFic2VudCBmcm9tIHRoZSBkZXZpY2UgdHJlZSwgb2Zf
cHJvcGVydHlfcmVhZF91MzIoKQo+ICAgID4gIHJldHVybnMgLUVJTlZBTC4gVGhpcyBjYXVzZXMg
dGhlIGNvbmRpdGlvbiB0byBldmFsdWF0ZSB0byB0cnVlLCBhYm9ydGluZyB0aGUKPiAgICA+ICBw
cm9iZSB3aXRoIGFuIGVycm9yLgo+ICAgID4KPiAgICA+ICBBY2NvcmRpbmcgdG8gdGhlIGRldmlj
ZSB0cmVlIGJpbmRpbmdzCj4gICAgPiAgKERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9kaXNwbGF5L3NhbXN1bmcvc2Ftc3VuZyxleHlub3M1LWRwLnlhbWwpLAo+ICAgID4gIHRoaXMg
cHJvcGVydHkgaXMgbWFya2VkIGFzIGRlcHJlY2F0ZWQgYW5kIGV4cGxpY2l0bHkgb3B0aW9uYWwg
YmVjYXVzZSB0aGUKPiAgICA+ICBsYW5lIGNvdW50IGNhbiBiZSByZWFkIGZyb20gdGhlIG1vbml0
b3IuIERvZXMgdGhpcyBwYXRjaCBicmVhayBjb21wYXRpYmlsaXR5Cj4gICAgPiAgd2l0aCBkZXZp
Y2UgdHJlZXMgdGhhdCByaWdodGZ1bGx5IG9taXQgdGhpcyBkZXByZWNhdGVkIHByb3BlcnR5Pwo+
IAo+ICAgKHZpYTogaHR0cHM6Ly9wYXRjaC5tc2dpZC5saW5rLzIwMjYwNjA0MDkwOTM1LjdGQzA1
MUYwMDg5OEBzbXRwLmtlcm5lbC5vcmcpCj4gCj4gQ2FuIHlvdSBjb21tZW50IG9uIHRoaXM/Cj4g
Cj4gCgpJIHdhcyBhbHNvIGNvbmZ1c2VkIGFib3V0IHRoaXMgaGFuZGxpbmcgYXQgZmlyc3QuIEZy
b20gY29tbWl0IAowZDBhYmQ4OTRlYWQgKCJkcm06IGJyaWRnZTogYW5hbG9naXgvZHA6IGFkZCBt
YXggbGluayByYXRlIGFuZCBsYW5lIApjb3VudCBsaW1pdCBmb3IgUkszMjg4IiksIGl0cyBjb21t
aXQgbWVzc2FnZSBkb2VzIG5vdCBleHBsYWluIHdoeSAKc2Ftc3VuZyxsYW5lLWNvdW50IHdhcyBj
aGFuZ2VkIGZyb20gYSBtYW5kYXRvcnkgdG8gb3B0aW9uYWwgcHJvcGVydHkuCgpBZnRlciBkaWdn
aW5nIGludG8gdGhlIGNvZGUgZmxvdywgSSBmb3VuZCB0aGF0IAphbmFsb2dpeF9kcF9mdWxsX2xp
bmtfdHJhaW4oKSBwaWNrcyB0aGUgc21hbGxlciB2YWx1ZSBiZXR3ZWVuIHRoZSAKcGxhdGZvcm0t
c3VwcG9ydGVkIGxhbmUgY291bnQgYW5kIHRoZSBsYW5lIGNvdW50IHJldHJpZXZlZCBmcm9tIHNp
bmsgCkRQQ0QgZm9yIGxpbmsgdHJhaW5pbmcuIElmIHRoZSBzYW1zdW5nLGxhbmUtY291bnQgcHJv
cGVydHkgaXMgCm1pc3NpbmcvaW52YWxpZCBoZXJlLCBsaW5rIHRyYWluaW5nIHdpbGwgZW5kIHVw
IHVzaW5nIGFuIHVuZXhwZWN0ZWQgbGFuZSAKY291bnQgY29uZmlndXJhdGlvbi4KCkFkZGl0aW9u
YWxseSwgSSBjaGVja2VkIFNhbXN1bmfigJlzIHVwc3RyZWFtIGRldmljZSB0cmVlcyB0aGF0IHV0
aWxpemUgCnRoaXMgRFAgY29udHJvbGxlciwgYW5kIGFsbCBvZiB0aGVtIGNhcnJ5IHRoZSBsYW5l
LWNvdW50IHByb3BlcnR5LiBCYXNlZCAKb24gdGhpcyBvYnNlcnZhdGlvbiwgSSBiZWxpZXZlIHJl
c3RvcmluZyB0aGUgc3RyaWN0IG1hbmRhdG9yeSAKcmVxdWlyZW1lbnQgZm9yIHRoaXMgcHJvcGVy
dHkgbWFrZXMgc2Vuc2UuCgpTaG91bGQgSSBjcmVhdGUgYW4gaW5kZXBlbmRlbnQgZml4IHBhdGNo
IHRvIHJldmVydCB0aGVzZSB0d28gcHJvcGVydGllcyAKdG8gbWFuZGF0b3J5LCBpbnN0ZWFkIG9m
IGJ1bmRsaW5nIHRoZSBmaXggaW4gdGhpcyBzZXJpZXM/CgpCZXN0IHJlZ2FyZHMsCkRhbW9uCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
