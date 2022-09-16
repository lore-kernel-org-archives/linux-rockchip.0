Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7571EECAAD8
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Sep 2022 08:46:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=dzTizKxLB76Oh2G0ZB2JSa94RzM2IB+UfXrZc3lJGyk=; b=LCC2jo8XBpVVYd
	I9PmZjP5yfl0xgUk6flZWsCqq8zqBrLE3xWVhiOUPhWFfx2S5gP1Va+2yFbQZc8OeGbfaICHZQeAw
	TP4pxaihV43fOmi2MuZ8UiCSSse/yzqbWIARPU5QDpozuAgl7cWBL23ZM+WGXDP4svH3TRVryaKDH
	H/WOLeNlJBvstafNffb9r8v23Sa+YvHY3rFAUbCxZ1M0kDmr6yFjN/8ucS5EhuCWErrrES29jO8+x
	4NjK2G2r0oWfwIFEC2oDjC97fCAyX2RIKVBCYYUSaa9e7Wu/pe0C7hUrfgXeZvffVOic7Am73W7wl
	SdvBQNTvlwLNZmGdm1tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ6zH-00BIls-RR; Fri, 16 Sep 2022 08:46:15 +0000
Received: from mail-m11873.qiye.163.com ([115.236.118.73])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZ6zC-00BIiy-0d
	for linux-rockchip@lists.infradead.org; Fri, 16 Sep 2022 08:46:14 +0000
Received: from DESKTOP-SG5V5EA (unknown [58.22.7.114])
	by mail-m11873.qiye.163.com (Hmail) with ESMTPA id 3888D90085A;
	Fri, 16 Sep 2022 16:46:07 +0800 (CST)
Date: Fri, 16 Sep 2022 16:46:07 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: linus.walleij <linus.walleij@linaro.org>
Cc: "Johan Jonker" <jbx6244@gmail.com>, 
	=?UTF-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, 
	"Andy Shevchenko" <andriy.shevchenko@linux.intel.com>, 
	"Bartosz Golaszewski" <brgl@bgdev.pl>, 
	linux-gpio <linux-gpio@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: Re: [PATCH 2/3] pinctrl: export function get_pinctrl_dev_from_devname()
References: <20220915021320.80364-1-jay.xu@rock-chips.com>, 
	<20220915021320.80364-3-jay.xu@rock-chips.com>, 
	<CACRpkdZa7YNpO95=D0wyMWPXe6f8HYDwUhOfXdH15kjZYMGMeg@mail.gmail.com>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.19.158[cn]
Mime-Version: 1.0
Message-ID: <202209161646069403891@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVkaGh0aVhodSRkZGBhLHUgdTlUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OTo6SAw6Aj0tGCI8TA8cPy46
	HjNPCRVVSlVKTU1ISEpMQk1MTEJKVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUlCQk03Bg++
X-HM-Tid: 0a83457a02282eafkusn3888d90085a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_014610_279165_FB5F1149 
X-CRM114-Status: UNSURE (   7.96  )
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

SGkgd2FsbGVpagoKLS0tLS0tLS0tLS0tLS0KamF5Lnh1QHJvY2stY2hpcHMuY29tCj5PbiBUaHUs
IFNlcCAxNSwgMjAyMiBhdCA0OjEzIEFNIEppYW5xdW4gWHUgPGpheS54dUByb2NrLWNoaXBzLmNv
bT4gd3JvdGU6Cj4KPj4gRXhwb3J0IGdldF9waW5jdHJsX2Rldl9mcm9tX2Rldm5hbWUoKSBhcyBH
UEwgYW5kIGFkZCB0byBwaW5jdHJsIGhlYWQgZmlsZS4KPj4KPj4gU2lnbmVkLW9mZi1ieTogSmlh
bnF1biBYdSA8amF5Lnh1QHJvY2stY2hpcHMuY29tPgo+PiAtLS0KPj7CoCBkcml2ZXJzL3BpbmN0
cmwvY29yZS5jwqDCoMKgwqDCoMKgwqDCoMKgIHwgMSArCj4+wqAgaW5jbHVkZS9saW51eC9waW5j
dHJsL3BpbmN0cmwuaCB8IDEgKwo+Cj5JZiB5b3UgYWRkIGl0IHRvIDxsaW51eC9waW5jdHJsL3Bp
bmN0cmwuaD4geW91IG5lZWQgdG8gcmVtb3ZlIGl0IGZyb20KPmRyaXZlcnMvcGluY3RybC9jb3Jl
LmguCj4KPkkgc3VnZ2VzdCB5b3UganVzdCBpbmNsdWRlIHRoZSBsb2NhbCBoZWFkZXIgaW5zdGVh
ZC4KPgo+I2luY2x1ZGUgIi4uL3BpbmN0cmwvcGluY3RybC5oIgo+Cj5NYXliZSBub3QgdGhlIG1v
c3QgZWxlZ2FudCBidXQgaXQga2VlcHMgdGhlIGludGVyZmFjZSBwcml2YXRlIHRvCj5waW5jdHJs
IGFuZCBHUElPIGFuZCBub3QgYnJvYWRjYXN0IHRvIHRoZSBlbnRpcmUga2VybmVsLgo+Cj5JZiBp
dCBsb29rcyB2ZXJ5IHVnbHksIHdlbGwgdGhlbiBpdCBpcyBwcm9iYWJseSBiZWNhdXNlIHRoaXMg
ZHJpdmVyCj5zaG91bGQgbW92ZSBpbnRvIGRyaXZlcnMvcGluY3RybC4KPiAKSSBwdXNoZWQgYSBu
ZXcgcGF0Y2hzZXQsIGRyb3AgcGluY3RybCBmcm9tIGdwaW8gZHJpdmVyLCB0aGVuIHRoaXMgcGF0
Y2ggaXMgbm90IG5lZWQgYWdhaW4uCnBsZWFzZSBoZWxwIHRvIGdpdmUgYSByZXZpZXcgdG8gdGhh
dC4KClRoYW5rcy4KCj5Zb3VycywKPkxpbnVzIFdhbGxlaWoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
