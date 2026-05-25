Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C201BCD5BB4
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 May 2026 01:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sMy5RCDVdks9Isy992N39LKubb0PKl1eXkJWdoJgfFM=; b=LP9cTDRdaKolob
	0Xx+wLf/joyhu8UDDo3yCv+wnvLW9utWivixjmC6dBx7niK5ltjgZeEwOp/gPlvBeHJV5AMzCaJ4f
	lXUt9eJ+lJ83Z7IOD3nfpOuLRoH7/KmGiXqECHExXIdCA32bSPRT/YV7h8H7GYOu8dF8hrZkJ7dST
	2dHJffoxisXX0x4QzR2Z0Zb8pRKHb/Yu7ivkn2bJS62ooGaYTkpaE0PWCegC4nVsBIE3qdqUFR4CK
	wMCddMrad+2tKj8YPxOhecrom7xLCs/apCgeV2dn4xfRMgTpC+twTHBTapwyAjMnaZwpwt6XKgsor
	rvzkeazdynKQ5rthmVCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRKNC-0000000G33r-3gDB;
	Mon, 25 May 2026 01:44:54 +0000
Received: from mail-m93122.xmail.ntesmail.com ([103.126.93.122])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRKN8-0000000G31J-2RFw;
	Mon, 25 May 2026 01:44:53 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3fa1a865a;
	Mon, 25 May 2026 09:44:32 +0800 (GMT+08:00)
Message-ID: <41863f57-3911-48b7-8a6b-11f877b982a8@rock-chips.com>
Date: Mon, 25 May 2026 09:44:31 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] mmc: dw_mmc-rockchip: Add missing private data for very
 old controllers
To: Heiko Stuebner <heiko@sntech.de>, ulfh@kernel.org, jh80.chung@samsung.com
References: <20260522184307.2979579-1-heiko@sntech.de>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20260522184307.2979579-1-heiko@sntech.de>
X-HM-Tid: 0a9e5cce1cb309cckunm290c57cce95c2
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCTkweVkNMGR1DQk5JGUxDHVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=jj268jkFHMoTIsiOtgqq9u0y0urwFy4t48maGZDE2qh2OqIXJryXcryFPY9s1GioHPCBPkOFsug9lJNJv+Ta9AfaHnrIRjsALv9lwnxqtq0Vr1z0vixqhMogPEYCW6JKwD6uLmtGilMlK0jmhMM+KcP/+bs4/hOCKTkEBLP7OWo=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=w7sucLlFPpFoBQBCSVha1cyDgINh3mIbBw2+BnctLfQ=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260524_184451_183228_F2B2B28D 
X-CRM114-Status: GOOD (  20.96  )
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

5ZyoIDIwMjYvMDUvMjMg5pif5pyf5YWtIDI6NDMsIEhlaWtvIFN0dWVibmVyIOWGmemBkzoKPiBU
aGUgcmVhbGx5IG9sZCBjb250cm9sbGVycyAocmsyOTI4LCByazMwNjYsIHJrMzE4OCkgZG8gbm90
IHN1cHBvcnQgVUhTCj4gc3BlZWRzIGF0IGFsbCwgYW5kIHRodXMgbmV2ZXIgaGFuZGxlZCBwaGFz
ZSBkYXRhLgo+IAo+IEZvciB0aGF0IHJlYXNvbiBpdCBuZXZlciBoYWQgYSBwYXJzZV9kdCBjYWxs
YmFjayBhbmQgbm8gZHJpdmVyIHByaXZhdGUKPiBkYXRhIGF0IGFsbC4KPiAKPiBDb21taXQgZmY2
ZjAyODZjODk2ICgibW1jOiBkd19tbWMtcm9ja2NoaXA6IEFkZCBtZW1vcnkgY2xvY2sgYXV0by1n
YXRpbmcKPiBzdXBwb3J0IikgbWFrZXMgdGhlIHByaXZhdGUgZGF0YSBzb3J0IG9mIG1hbmRhdG9y
eSwgYmVjYXVzZSB0aGUgaW5pdAo+IGZ1bmN0aW9uIGNoZWNrcyB3aGV0aGVyIHBoYXNlcyBhcmUg
Y29uZmlndXJlZCBpbnRlcm5hbGx5IG9yIHRocm91Z2ggdGhlCj4gY2xvY2sgY29udHJvbGxlci4K
PiAKPiBUaGlzIHJlc3VsdHMgaW4gdGhlIG9sZCBTb0NzIHRoZW4gZXhwZXJpZW5jaW5nIE5VTEwt
cG9pbnRlciBkZXJlZmVyZW5jZXMKPiB3aGVuIHRoZXkgdHJ5IHRvIGFjY2VzcyB0aGF0IHByaXZh
dGUtZGF0YSBzdHJ1Y3QuCj4gCj4gV2hpbGUgd2UgY291bGQgaGF2ZSBpZiAocHJpdikgY29uZGl0
aW9uYWxzIGluIGFsbCBwbGFjZXMsIGl0J3Mgd2F5IGxlc3MKPiBjbHV0dGVyeSB0byBqdXN0IGdp
dmUgdGhlIG9sZCB0eXBlcyB0aGVpciBwcml2YXRlLWRhdGEgc3RydWN0LgoKVGhhbmtzIGZvciBm
aXhpbmcgdGhpcy4KCkFja2VkLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNv
bT4KCj4gCj4gRml4ZXM6IGZmNmYwMjg2Yzg5NiAoIm1tYzogZHdfbW1jLXJvY2tjaGlwOiBBZGQg
bWVtb3J5IGNsb2NrIGF1dG8tZ2F0aW5nIHN1cHBvcnQiKQo+IENjOiBzdGFibGVAdmdlci5rZXJu
ZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4K
PiAtLS0KPiAgIGRyaXZlcnMvbW1jL2hvc3QvZHdfbW1jLXJvY2tjaGlwLmMgfCAxNyArKysrKysr
KysrKysrKysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9tbWMvaG9zdC9kd19tbWMtcm9ja2NoaXAuYyBiL2RyaXZlcnMvbW1j
L2hvc3QvZHdfbW1jLXJvY2tjaGlwLmMKPiBpbmRleCBjNmVlY2U0ZWMzZmQuLjc1YzgyZmYyMGYx
NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21tYy9ob3N0L2R3X21tYy1yb2NrY2hpcC5jCj4gKysr
IGIvZHJpdmVycy9tbWMvaG9zdC9kd19tbWMtcm9ja2NoaXAuYwo+IEBAIC00NDEsNiArNDQxLDIy
IEBAIHN0YXRpYyBpbnQgZHdfbWNpX2NvbW1vbl9wYXJzZV9kdChzdHJ1Y3QgZHdfbWNpICpob3N0
KQo+ICAgCXJldHVybiAwOwo+ICAgfQo+ICAgCj4gK3N0YXRpYyBpbnQgZHdfbWNpX3JrMjkyOF9w
YXJzZV9kdChzdHJ1Y3QgZHdfbWNpICpob3N0KQo+ICt7Cj4gKwlzdHJ1Y3QgZHdfbWNpX3JvY2tj
aGlwX3ByaXZfZGF0YSAqcHJpdjsKPiArCWludCBlcnI7Cj4gKwo+ICsJZXJyID0gZHdfbWNpX2Nv
bW1vbl9wYXJzZV9kdChob3N0KTsKPiArCWlmIChlcnIpCj4gKwkJcmV0dXJuIGVycjsKPiArCj4g
Kwlwcml2ID0gaG9zdC0+cHJpdjsKPiArCj4gKwlwcml2LT5pbnRlcm5hbF9waGFzZSA9IGZhbHNl
Owo+ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwo+ICAgc3RhdGljIGludCBkd19tY2lfcmszMjg4
X3BhcnNlX2R0KHN0cnVjdCBkd19tY2kgKmhvc3QpCj4gICB7Cj4gICAJc3RydWN0IGR3X21jaV9y
b2NrY2hpcF9wcml2X2RhdGEgKnByaXY7Cj4gQEAgLTUxNCw2ICs1MzAsNyBAQCBzdGF0aWMgaW50
IGR3X21jaV9yb2NrY2hpcF9pbml0KHN0cnVjdCBkd19tY2kgKmhvc3QpCj4gICAKPiAgIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgZHdfbWNpX2Rydl9kYXRhIHJrMjkyOF9kcnZfZGF0YSA9IHsKPiAgIAku
aW5pdAkJCT0gZHdfbWNpX3JvY2tjaGlwX2luaXQsCj4gKwkucGFyc2VfZHQJCT0gZHdfbWNpX3Jr
MjkyOF9wYXJzZV9kdCwKPiAgIH07Cj4gICAKPiAgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZHdfbWNp
X2Rydl9kYXRhIHJrMzI4OF9kcnZfZGF0YSA9IHsKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
