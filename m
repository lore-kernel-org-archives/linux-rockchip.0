Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3261CC6B03
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2026 13:13:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xjC4Y6jUocM7yVWvEacmTpBn+zNVCCJB3rYQanl1KX8=; b=IHXcHEG1pTZsvr
	BbYCQFWeYkLB8kCrP2iqvJIUxkS5tnrg08A3OmbFV8AMOpPxvcrY1kNjJhd+ZuJBI4wARTG1WCKmY
	9rzc1Q2xK64lViBccHTMvii4xGeQMwg+PvMUPhKu4GWMeC3+Dc9nDZbsb0OPd8Oqh67FQJVtES38T
	wvl0KJEqmwNo9YfY77Ab6bpxLLeyfxJMTpp4YfpU8I9ca57b7fMgFj39NrptcqHmgyZl5Fa/Alf97
	aPOnnyZhdLxqt4dIw65XI+VxVzJ55X8sku0WCuZrTL2uoXzUYzAwbE5LHBXT+9Jd/cDZ9m+L4RjLr
	spJx0W2INa9BD7fpVmZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGcK8-0000000CvN2-2T4Z;
	Tue, 13 Oct 2026 13:13:44 +0000
Received: from mail-m10313119169.xmail.ntesmail.com ([103.131.191.69])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGcK4-0000000CvM2-0nmd
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Oct 2026 13:13:43 +0000
Received: from [172.16.12.74] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 50e342aaa;
	Tue, 13 Oct 2026 21:13:33 +0800 (GMT+08:00)
Message-ID: <4b763d72-d6cd-4098-90e9-32d2562cc1c2@rock-chips.com>
Date: Tue, 13 Oct 2026 21:13:32 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: eDP support for RK3568
To: Dave Jones <s.dave.jones@gmail.com>
Cc: linux-rockchip@lists.infradead.org
References: <CANf5e8YTxDsMdqOd02ht4J2qUU8rTV6pC3L36J6XC5pOAOpHRw@mail.gmail.com>
 <613614f5-30d7-443a-954c-31685044f6c2@rock-chips.com>
 <CANf5e8YEZnrbDgxNEtzM7bScZCvi=C9Ezn0E2Gbi9g=_hn2d0w@mail.gmail.com>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <CANf5e8YEZnrbDgxNEtzM7bScZCvi=C9Ezn0E2Gbi9g=_hn2d0w@mail.gmail.com>
X-HM-Tid: 0aa13565992003a8kunmf5520f145045
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZSBoaVktISUkdQ0hNSU5IH1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUJCSU
	5KVUpLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=WN6rfudAMGXhseg34L6iohH4eO2pZLqNFGbyK7mwIWI1BjJKNFUWAlgQ/enXUrTX92VCiw/JaYXCQbgNf7VV6zcw0f2jBn/VTPzhvYwcotU56jka4ngr7BfodqcFO2Z9YKbDNUDbHwYFoEfS/FW8o27d+25iXn+3LVwwKLX66os=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=odGLw/jjXy/V+BPnO4VCgo0+Nb+LjCHIst+P5oSU8oc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_061341_256512_13D83CC7 
X-CRM114-Status: GOOD (  12.87  )
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

SGkgRGF2ZSwKCk9uIDcvMTcvMjAyNiA4OjMzIEFNLCBEYXZlIEpvbmVzIHdyb3RlOgo+IE9uIFRo
dSwgSnVsIDE2LCAyMDI2IGF0IDk6MjnigK9BTSBEYW1vbiBEaW5nIHdyb3RlOgo+Pgo+PiBIaSBE
YXZlLAo+Pgo+PiBPbiA3LzEyLzIwMjYgMTI6MjEgQU0sIERhdmUgSm9uZXMgd3JvdGU6Cj4+PiBI
aSwKPj4+Cj4+PiBBcyBmYXIgYXMgSSBrbm93LCB0aGUgbWFpbmxpbmUga2VybmVsIGN1cnJlbnRs
eSBzdXBwb3J0cyBlRFAgb24gdGhlCj4+PiBSSzM1ODggYW5kIFJLMzU3NiwgYnV0IG5vdCBvbiB0
aGUgUkszNTY4Lgo+Pj4KPj4+IEhhcyBhbnlvbmUgYWRkZWQgZURQIHN1cHBvcnQgZm9yIHRoZSBS
SzM1NjggeWV0Pwo+Pj4KPj4KPj4gQXMgb2Ygbm93LCBtYWlubGluZSBrZXJuZWwgZG9lcyBub3Qg
eWV0IGhhdmUgZURQIHN1cHBvcnQgZm9yIFJLMzU2OC4KPj4KPj4gSW1wbGVtZW50aW5nIGVEUCBz
dXBwb3J0IGZvciB0aGlzIHBsYXRmb3JtIHVwc3RyZWFtIGlzIG9uZSBvZiBteQo+PiBuZWFyLXRl
cm0gcGxhbnMsIGFuZCBJIHdpbGwgd29yayBvbiB0aGUgcmVsZXZhbnQgcGF0Y2hlcyB3aGVuIHRp
bWUgcGVybWl0cy4KPiAKPiBUaGF0J3MgZ3JlYXQsIGdsYWQgdG8gaGVhciB0aGUgbmV3cy4gSWYg
dGhlcmUgYXJlIGFueSBwYXRjaGVzIHRoYXQgbmVlZAo+IHRlc3RpbmcsIEknZCBiZSBoYXBweSB0
byBoZWxwLiBUaGFua3MuCj4gCj4+IEJlc3QgcmVnYXJkcywKPj4gRGFtb24KPiAKPiBSZWdhcmRz
LAo+IERhdmUKPiAKPiAKCkkndmUgdXBkYXRlZCB0aGUgUkszNTY4IGVEUCBwYXRjaGVzWzBdLiBX
b3VsZCB5b3UgYmUgYWJsZSB0byB0ZXN0IHRoZW0gCm9uIHlvdXIgYm9hcmQgd2hlbiB5b3UgZ2V0
IGEgY2hhbmNlPwoKQmVzdCByZWdhcmRzLApEYW1vbgoKWzBdIApodHRwczovL2xvcmUua2VybmVs
Lm9yZy9hbGwvMjAyNjEwMTMxMjQ5NDYuMTgwNzg4Ni0xLWRhbW9uLmRpbmdAcm9jay1jaGlwcy5j
b20vCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
