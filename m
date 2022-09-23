Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDFC6C6FA82
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Sep 2022 10:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=9wjCBlJ8hsgB5unB+LVltRgtQkWzI3Qz6TFlB8Pem9k=; b=PnMGXjBX/EL0+9
	mgvis4Do1ve/NFC4UkdCu3jH2HeTjRty2YnrONZRPb4yJrQV3Jp9ICfoezy/aYkpT02ON+5Rq2KWB
	UVNor3x0w2xZZfvubU47EckceJRFY//PEpdTG9J6HeeIUjCEezF5GYWylwAASkbfqA1xTcn/vivzh
	cBFDDtscGbkKErtqEWSR5W8u8BdHibJiXr+713FTf8/gifx4EiXhiIIStGiee679/mpslf8Rd1pmH
	OAwz78AVNn8uHaJpsnAjZEDyWtgtSwvGQU0Bf+3dyaBxuyLBruJcTqtYA9aruLJHoS9UrVCJ1uAvS
	V8UHVXPE/QmKlI+YOVtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obg28-003gUP-As; Fri, 23 Sep 2022 10:35:48 +0000
Received: from mail-m11878.qiye.163.com ([115.236.118.78])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1obg23-003gPB-Ic
	for linux-rockchip@lists.infradead.org; Fri, 23 Sep 2022 10:35:45 +0000
Received: from DESKTOP-SG5V5EA (unknown [58.22.7.114])
	by mail-m11878.qiye.163.com (Hmail) with ESMTPA id DAF257406A1;
	Fri, 23 Sep 2022 18:35:36 +0800 (CST)
Date: Fri, 23 Sep 2022 18:35:36 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: =?utf-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, 
	linus.walleij <linus.walleij@linaro.org>
Cc: "Johan Jonker" <jbx6244@gmail.com>, 
	"Andy Shevchenko" <andriy.shevchenko@linux.intel.com>, 
	"Bartosz Golaszewski" <brgl@bgdev.pl>, 
	linux-gpio <linux-gpio@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: Re: [PATCH v2 RESEND 0/2] rockchip pinctrl for acpi
References: <20220917060929.657778-1-jay.xu@rock-chips.com>, 
	<CACRpkdanniba+TUAeqei93dmkBT82HY5D95KxTsc8aE7jV+5VQ@mail.gmail.com>, 
	<2419940.Icojqenx9y@phil>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.19.158[cn]
Mime-Version: 1.0
Message-ID: <202209231835365953827@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVkZGENDVkMaGEpPHh0YGhkeGFUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pk06Fjo*Lj0tKhUjPyEpTQEI
	I00KChNVSlVKTU1IQklCSEhMT09CVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUhPTE83Bg++
X-HM-Tid: 0a8369eac4e92eb4kusndaf257406a1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220923_033543_829025_A259CB84 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
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

SGkgaGVpa28KCi0tLS0tLS0tLS0tLS0tCmpheS54dUByb2NrLWNoaXBzLmNvbQo+QW0gRGllbnN0
YWcsIDIwLiBTZXB0ZW1iZXIgMjAyMiwgMTE6MjY6MjYgQ0VTVCBzY2hyaWViIExpbnVzIFdhbGxl
aWo6Cj4+IE9uIFNhdCwgU2VwIDE3LCAyMDIyIGF0IDg6MDkgQU0gSmlhbnF1biBYdSA8amF5Lnh1
QHJvY2stY2hpcHMuY29tPiB3cm90ZToKPj4KPj4gPiBUaGVzZSBwYXRjaCBmaXhlcyB0byBzdXBw
b3J0IGFjcGkgYnk6Cj4+ID4gMS4gcG9wdWxhdGUgZ3BpbyBwbGF0Zm9ybSBiZWZvcmUgcGluY3Ry
bCB0byBwcm9iZQo+PiA+IDIuIGdldCBncGlvY2hpcCBieSBmaW5kaW5nIGZyb20gZ3Bpb2NoaXAg
bGlzdAo+PiA+IDMuIGdldCBtYXRjaCBkYXRhIGJ5IGRldmljZSBhcGkKPj4gPgo+PiA+IEppYW5x
dW4gWHUgKDIpOgo+PiA+wqDCoCBwaW5jdHJsOiByb2NrY2hpcDogZmluZCBncGlvY2hpcCBieSBu
YW1lIGZyb20gZ3BpbyBtb2R1bGUKPj4gPsKgwqAgcGluY3RybDogcm9ja2NoaXA6IGdldCBtYXRj
aCBkYXRhIGJ5IGRldmljZV9nZXRfbWF0Y2hfZGF0YQo+Pgo+PiBUaGVzZSBsb29rIE9LIHRvIG1l
IGJ1dCBJIHdvdWxkIGZlZWwgYmV0dGVyIGlmIEhlaWtvIG9yIEFuZHkgQUNLOmVkCj4+IHRoZW0g
c28gSSBnaXZlIHRoZW0gYSBmZXcgbW9yZSBkYXlzIHRvIGNvbW1lbnQuCj4KPlJpZ2h0IG5vdyBJ
J20gYWN0dWFsbHkgcXVpdGUgY29uZnVzZWQgYXMgSSBzZWVtIHRvIGhhdmUgYSBidW5jaAo+b2Yg
cGluY3RybC9ncGlvLWFjcGkgcGF0Y2hzZXRzIG9mIHZhcnlpbmcgbGVuZ3RocyBpbiBteSBpbmJv
eC4KPgo+VGhlcmUgaXMgYSAidjIiLCBhICJ2OCIsIGEgMjAtcGF0Y2hzZXQgd2l0aG91dCB2ZXJz
aW9uLgo+SXQncyBhbGwgcXVpdGUgY29uZnVzaW5nLgo+IApGcm9tIHYyIHRvIHY4LCBJIHN1bW1p
dCBmaXhlcyBpbiBvbmUgcGF0Y2gsIGFuZCB0aGVtIHN1Z2d1ZXN0ZWQgYnkgQW5keSwgSSB0cnkg
dG8gc2VwYXJhdGUgdGhlbQppbnRvIHNtYWxsIHBhdGNoZXMgMjAtcGF0Y2hzZXQuCgpUaGUgaGVh
cnQgY2hhbmdlIGlzwqAKCmN1cnJlbnQKMS4gcGluY3RybCByZWdpc3RlciBmaXJzdAoyLiBncGlv
Y2hpcCByZWdpc3RlciBhbmQgZmluZCBwaW5jdHJsIGRldmljZSB0byBhZGQgcGluIHJhbmdlCgp0
aGlzIHBhdGNoIGZpeCB0bwoxLiBncGlvY2hpcCByZWdpc3RlciBpdHNlbGYKMi4gcGluY3RybCBy
ZWdpc3RlciBhbmQgZmluZCBhbGwgZ3Bpb2NoaXBzIGFuZCBhZGQgcGluIHJhbmdlCgpQbGVhc2Ug
aGVscCB0byByZXZpZXcgZGlyZWN0bHkgdG8gMjAtcGF0Y2hzZXQsIEkgd2lsbCBhZGQgc29tZSBz
dWdnZXN0ZWQtYnkgYW5kIGFja2VkLWJ5IGxhdGVyCgoKPgo+SGVpa28KPgo+Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
