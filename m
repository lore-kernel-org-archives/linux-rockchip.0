Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F93FC982E6
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 00:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xOxLCMe9JgJV+/F2hLHgAB4GfDgacs4cNCADlrLEi5c=; b=mnAVNwG3cEzozL
	ooc0nOMssXT1jSNIE1QDvhS8itQaHYxWETAQDJ6RX2fTb44l/BKUHYNUUi+Y4uPQ+J2dcr8hJ48O3
	3jSOwkI6fqPrLoNO7uVuupkr4TJijuX8aNJGG+FToa2DiSgbi2Wu61Ky3Ivy4l1GfxwPH6l4IjMg2
	V57DjDjhokCbLcI9yMsVtb8jVrqnd4Ocx9iFR8caOTJzumEv82zeGjjyh2HPHd1jIIRBBvanPFqE/
	KG3lHNEzKrcj4FgymTM6YgbjO4qyjXjsavuiNGmBjYehP7Em61vvL2DwHeNULX2bmJ5oTttgce+r+
	ziEE/pRnignB4FnNXUsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8ofc-00000003of3-2sMl;
	Tue, 22 Sep 2026 00:47:40 +0000
Received: from mail-m254100.xmail.ntesmail.com ([103.129.254.100])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8ofZ-00000003oe4-1cxX;
	Tue, 22 Sep 2026 00:47:39 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4ea2fa38f;
	Tue, 22 Sep 2026 08:47:32 +0800 (GMT+08:00)
Message-ID: <1d8950b4-315f-44a4-9fc8-fcb35ac33043@rock-chips.com>
Date: Tue, 22 Sep 2026 08:47:28 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Caesar Wang <wxt@rock-chips.com>,
 Kevin Hilman <khilman@linaro.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] pmdomain: rockchip: fix domain check in
 rockchip_pm_add_one_domain()
To: Sergey Shtylyov <s.shtylyov@auroraos.dev>, Ulf Hansson <ulfh@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20260920175928.42566-1-s.shtylyov@auroraos.dev>
 <ee8bf4cf-b2bd-4cbd-ba8c-2e7a871203e1@rock-chips.com>
 <140e4538-d493-40a7-a682-00be091332f0@auroraos.dev>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <140e4538-d493-40a7-a682-00be091332f0@auroraos.dev>
X-HM-Tid: 0aa0c6950c8a03a4kunm3e415e16385fee
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZThhOVkIfH0lMSU0eQh5MS1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUJCSU
	5LVUpLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=XAkuUZhYuUHOcfG+P85pveAV24xvDwuRb0lJU9e7eK/kScso69+2Lq8WQeGjE51x/7bQGcRZV5XUKSZhvQqRqjAxIVpPlT6qPlpRH4UrHKP0av1dYvr6KNibIhaFqZWfRuDeYuCq6kxOAicRpJGc08cUP8KbZW3wPY5JlufWAjU=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=Ghe12W3xx27L6Gp05sVA/Am+5fUdjvtLgHXnKRFlSdc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_174737_936936_BEFAB575 
X-CRM114-Status: GOOD (  20.63  )
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

5ZyoIDIwMjYvMDkvMjIg5pif5pyf5LqMIDA6MTMsIFNlcmdleSBTaHR5bHlvdiDlhpnpgZM6Cj4g
T24gOS8yMS8yNiA5OjM2IEFNLCBTaGF3biBMaW4gd3JvdGU6Cj4gCj4gWy4uLl0KPiAKPj4+IElu
IHJvY2tjaGlwX3BtX2FkZF9vbmVfZG9tYWluKCksIHRoZXJlJ3MgdGhlIGNoZWNrIChtb3N0IHBy
b2JhYmx5IGZvcgo+Pj4gdGhlIGNhc2Ugd2hlcmUgdGhlICJyZWciIHByb3AgaGFzIGFuIHVuZXhw
ZWN0ZWQgdmFsdWU/KSB3aGljaCBkb2Vzbid0Cj4+Cj4+IEFncmVlZCB0aGF0IGNoZWNrIGluZGVl
ZCBtYWtlcyBsaXR0bGUgc2Vuc2UuIEJ1dCAibW9zdCBwcm9iYWJseSBmb3IgdGhlCj4+IGNhc2Ug
d2hlcmUgdGhlIHJlZyBwcm9wIGhhcyBhbiB1bmV4cGVjdGVkIHZhbHVlIiBkb2VzIG5vdCBob2xk
OiBhbgo+IAo+ICAgICBJIHRyaWVkIHRvIGd1ZXNzIHdoYXQgdGhlIGNoZWNrIGluIHF1ZXN0aW9u
IHdhcyBhY3R1YWxseSBpbnRlbmRlZCBmb3IKPiAoZGVzcGl0ZSBtYWtpbmcgYSBsaXR0bGUgc2Vu
c2UgYXMgaXQgaXMgbm93KS4uLgo+IAo+PiBvdXQtb2YtcmFuZ2UgcmVnIHZhbHVlIGlzIGFscmVh
ZHkgcmVqZWN0ZWQgYnkgdGhlICJpZCA+PSBwbXUtPmluZm8tCj4+PiBudW1fZG9tYWlucyIgY2hl
Y2sgYWJvdmUsIGFuZCBudW1fZG9tYWlucyBlcXVhbHMKPiAKPiAgICAgSSBub3RpY2VkLiA6LSkK
PiAKPj4gQVJSQVlfU0laRShkb21haW5faW5mbykgZm9yIGV2ZXJ5IFNvQywgc28gdGhlcmUgYXJl
IG5vIGhvbGVzIGluIHRoZQo+PiB0YWJsZSB0aGF0IHRoZSBuZXcgY2hlY2sgY291bGQgY2F0Y2gg
d2l0aCB0aGUgY3VycmVudCBkYXRhLiBBRkFJQ1QsIHRoaXMKPiAKPiAgICAgT2gsIHRoZXJlIGFy
ZSBob2xlcyEgOi0pCj4gICAgIElmIHlvdSBsb29rIGF0IChhbmQgYmVoaW5kKSB0aGUgaW5kZXhl
ZCBpbml0aWFsaXplcnMgb2YgKl9wbV9kb21haW5zW10sCj4geW91J2xsIHNlZSB0aGF0IHRoZSBp
bmRleGVzIGRvbid0IGFsd2F5cyBzdGFydCBhdCAwLCBhbmQgc28gdGhlIGFycmF5cyBhcmUKPiBh
Y3R1YWxseSBzcGFyc2UuLi4KCkxvb2tlZCBtb3JlIGNsb3NlbHkgYnkgZWFjaCBvbmUsIHlvdSdy
ZSByaWdodC4KCj4gCj4+IHBhdGNoIGRvZXMgbm90IGNoYW5nZSBhbnkgcnVudGltZSBiZWhhdmlv
dXI7IGl0IG9ubHkgdHVybnMgZGVhZCBjb2RlCj4+IGludG8gYSBkZWZlbnNpdmUgY2hlY2sgb24g
dGhlIG1hdGNoLWRhdGEgdGFibGVzLgo+IAo+ICAgICBJIGhvcGUgeW91IHNlZSBub3cgdGhhdCB0
aGlzIGRlZmVuc2l2ZSBjaGVjayBtYWtlcyBhIGJpdCBtb3JlIHNlbnNlLi4uCj4gCj4+PiBtYWtl
IG11Y2ggc2Vuc2UgYXMgdGhlIHZhcmlhYmxlIHBkX2luZm8gd2lsbCBiZSBOVUxMIGlmZiBwbXUt
PmluZm8tPgo+Pj4gZG9tYWluX2luZm8gaXMgTlVMTCBhbmQgdGhlIHZhcmlhYmxlIGlkIGlzIDAu
wqAgV2hhdCBkb2VzIG1ha2Ugc2Vuc2UKPj4+IHRoZXJlIGlzIGNoZWNraW5nIHBkX2luZm8tPnB3
cl9tYXNrIGFuZCBwZF9pbmZvLT5yZXFfbWFzayB3aGljaCAoYXMKPj4+IHNlZW1zIHRvIGZvbGxv
dyBmcm9tIHRoZSBjb2RlKSBjYW4ndCBib3RoIGJlIDAgZm9yIGEgdmFsaWQgZG9tYWluLi4uCj4+
Cj4+IFRoYXQgbWVhbnMgdGhlcmUgaXMgbm8gYnVnIGJlaW5nIGZpeGVkIGhlcmUsIHNob3VsZCB3
ZSBkcm9wIHRoZSBmaXhlcyB0YWc/Cj4gCj4gICAgIEknZCBsaWtlIHRvIGtlZXAgaXQgKGJ1dCB0
aGF0J3MgdXAgdG8gdGhlIG1haW50YWluZXJzLCBvZiBjb3Vyc2UpLi4uCgpTdXJlLCBpdCdzICBV
bGYncyBjYWxsLiBBbnl3YXksIGZlZWwgZnJlZSB0byBhZGQKClJldmlld2VkLWJ5OiBTaGF3biBM
aW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KCj4gCj4+PiBGb3VuZCBieSBMaW51eCBWZXJp
ZmljYXRpb24gQ2VudGVyIChsaW51eHRlc3Rpbmcub3JnKSB3aXRoIHRoZSBTdmFjZQo+Pj4gc3Rh
dGljIGFuYWx5c2lzIHRvb2wuCj4+Pgo+Pj4gRml4ZXM6IDdjNjk2NjkzYTRmNSAoInNvYzogcm9j
a2NoaXA6IHBvd2VyLWRvbWFpbjogQWRkIHBvd2VyIGRvbWFpbiBkcml2ZXIiKQo+Pj4gU2lnbmVk
LW9mZi1ieTogU2VyZ2V5IFNodHlseW92IDxzLnNodHlseW92QGF1cm9yYW9zLmRldj4KPiAKPiBb
Li4uXQo+IAo+IE1CUiwgU2VyZ2V5Cj4gCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
