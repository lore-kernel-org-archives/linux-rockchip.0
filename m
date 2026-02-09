Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1593DE94602
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Feb 2026 20:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XYQLJLtL5q/Ik96DC0hnvd+22FkP8V7gph7ykZBBoh4=; b=ehpVKdXwEgE8HL
	xeTwYm2u9dKos2iZhFeF6H7POeoyvO87vyA5+lEOLbXvpi5GxsKkvU6BPlqWYURubtNtyZCexxt4H
	v7c4BEoT/ScDE65PX++bokKYtHtLUR9SE4BjQbneRHNUwliIsk53hj3RwETK3syFNxpUPQx5I20rS
	V6jCtz0JP4qfte4RFyLcsdsPY/7IMDYoTWm9p7N0W7I1CZdFuDPTRZ2LufiakFWudx/jVzHGJgCDW
	bD+cE7lFszJyAVJhK6trtaOy0NbuajGG/uNI48Fz+BH2n7VwlhWqloZaEUBR2nG5Gy25pRNLKXKrp
	INw2uc5splqSNqgHCk8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpXmx-0000000Fz7N-3wwW;
	Mon, 09 Feb 2026 20:23:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpXmu-0000000Fz61-3Z98;
	Mon, 09 Feb 2026 20:23:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=nt4Ovoy4m7nRv3iWqhMS4n2L4nM1SijSDjnOMZdvRUQ=; b=sQWKgWONrIw6wBZy5vUXrZeycP
	r1qROwKD65KWKsC1hiniLLent/znjlT0A9GSiY+d41OLTXDbmwvr7UGcXRM+rVL4h9Yc4WAF30kv1
	AxJYqPOLrZiGa2gzbIO/veNNXomxl+KaMH9haSs2qLnOa9KQG8kjthtAlzbXkiWeP2s5T4OLYwjA+
	kF7Eyrh/4wlEBl4FZ6ZYVnbcH8A0ehvY9o75GolQ1sxJyLd71E7J5mYJY8yc2Z1rjJvtQbvaBMYMh
	wBLeC+YZz/JQR0OIo1bjDdwNodv7ubdsGY2jI3H9Pdp5Q90TG0lvDQWdYnLaIhvxdjZQKILGtASe9
	LL/9+9Uw==;
Received: from i53875a32.versanet.de ([83.135.90.50] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vpXmn-007q7p-PF; Mon, 09 Feb 2026 21:23:10 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "kever.yang@rock-chips.com" <kever.yang@rock-chips.com>,
 "finley.xiao@rock-chips.com" <finley.xiao@rock-chips.com>,
 "w@1wt.eu" <w@1wt.eu>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Enable OTP controller for RK3562
Date: Mon, 09 Feb 2026 21:23:09 +0100
Message-ID: <4721118.KgjxqYA5nG@diego>
In-Reply-To: <e58ebe6e-1de7-4b72-bf5e-e93cc19e69fd@kwiboo.se>
References: <20260205212347.490636-1-heiko@sntech.de>
 <20260205212347.490636-2-heiko@sntech.de>
 <e58ebe6e-1de7-4b72-bf5e-e93cc19e69fd@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_122316_909555_E3CA90FF 
X-CRM114-Status: GOOD (  19.44  )
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

QW0gTW9udGFnLCA5LiBGZWJydWFyIDIwMjYsIDE3OjU0OjUxIE1pdHRlbGV1cm9ww6Rpc2NoZSBO
b3JtYWx6ZWl0IHNjaHJpZWIgSm9uYXMgS2FybG1hbjoKPiBIaSBIZWlrbywKPiAKPiBUaGFua3Mg
Zm9yIGluY2x1ZGluZyBteSBSSzM1MjggcGF0Y2hlcyA6LSkKPiAKPiBPbiAyLzUvMjAyNiAxMDoy
MyBQTSwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4gPiBFbmFibGUgdGhlIE9uZSBUaW1lIFByb2dy
YW1tYWJsZSBDb250cm9sbGVyIChPVFBDKSBpbiBSSzM1NjIgYW5kIGFkZAo+ID4gYW4gaW5pdGlh
bCBudm1lbSBmaXhlZCBsYXlvdXQuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEhlaWtvIFN0dWVi
bmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4gPiAtLS0KPiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU2Mi5kdHNpIHwgNDYgKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiAgMSBm
aWxlIGNoYW5nZWQsIDQ2IGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTYyLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU2Mi5kdHNpCj4gPiBpbmRleCBmODQ2NzZiNDdiMjcuLjA3NjI2ZGJhMjFi
ZiAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTYyLmR0
c2kKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTYyLmR0c2kKPiA+
IEBAIC0xMDkzLDYgKzEwOTMsNTIgQEAgc2RtbWMxOiBtbWNAZmY4OTAwMDAgewo+ID4gIAkJCXN0
YXR1cyA9ICJkaXNhYmxlZCI7Cj4gPiAgCQl9Owo+ID4gIAo+ID4gKwkJb3RwOiBvdHBAZmY5MzAw
MDAgewo+IAo+IEkgbm90aWNlZCB0aGF0IHRoZSBub2RlIG5hbWVzIGlzIG5vdCBjb25zaXN0ZW50
IGZvciBhbGwgdGhyZWUgcGF0Y2hlcyBpbgo+IHRoaXMgc2VyaWVzLgo+IAo+IEEgcXVpY2sgZ3Jl
cCBhdCBMaW51eCBzcmMgYWxzbyBzdWdnZXN0IHRoYXQgZWZ1c2VAIGJlaW5nIHRoZSBtb3N0IGNv
bW1vbgo+IG5vZGUgbmFtZSB1c2VkIGZvciBzaW1pbGFyIG90cGMvZWZ1c2UsIGVmdXNlIGlzIGFs
c28gbGlzdGVkIHVuZGVyCj4gMi4yLjIgR2VuZXJpYyBOYW1lcyBSZWNvbW1lbmRhdGlvbiBpbiBE
VCBzcGVjLgo+IAo+IE1heWJlIHRoZSBub2RlcyBzaG91bGQgYmUgcmVuYW1lZCB0byB1c2UgZWZ1
c2VAIG9yIHNvbWV0aGluZyBlbHNlPwoKRmluZSBieSBtZSA6LSkKU28gd2UnbGwgbWFrZSB0aGlz
IGVmdXNlQCBmb3IgYWxsIDMgbmV3bHkgYWRkZWQgb3RwIGNvbnRyb2xsZXJzLgoKSGVpa28KCgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
