Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C2EA4C54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 01:24:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=X5wSklo2fea4okbkbZHu3zk6V8V9GG0Ya9oYKXcSOng=; b=CtT8mR+2LWD1WP
	t8PUftnlM2leiZsCXsysiZbukY7hueBUNOglo4Sppsz3AHGpC5y7CXkZrfgSsGUJ2pS3tOGCigF3h
	2VsyTn6qPOWqmuqPMKo1AmQblOowB8EOZ6XVlBLEN3hilPb4kTUYT+O/P+aaJUZVUfB+1REy/XIvE
	6oeC/+H1cxoRUsz9fIFHMwxRR+VnGUK+2Nh3StK4ZrTlKIF4RMcjfNM+FWVaC1Zn+sY9rRpD/Z+5L
	agt1qXMq9egjNvFkMYtPirrDJ5mxdWT5ZBfBwu+OJabuMyalnStgCsB/9gsRAFt7tVs5gGDbuQ1pq
	Fm1DY2c1hyqJ5/MiBCgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaRzg-00Gz6b-98; Tue, 20 Sep 2022 01:24:12 +0000
Received: from mail-m11879.qiye.163.com ([115.236.118.79])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaRza-00Gyzt-Sv
	for linux-rockchip@lists.infradead.org; Tue, 20 Sep 2022 01:24:08 +0000
Received: from DESKTOP-SG5V5EA (unknown [58.22.7.114])
	by mail-m11879.qiye.163.com (Hmail) with ESMTPA id 8DA16680350;
	Tue, 20 Sep 2022 09:23:59 +0800 (CST)
Date: Tue, 20 Sep 2022 09:23:59 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: "Andy Shevchenko" <andriy.shevchenko@linux.intel.com>
Cc: "Johan Jonker" <jbx6244@gmail.com>, 
	=?utf-8?B?SGVpa28gU3TDvGJuZXI=?= <heiko@sntech.de>, 
	linus.walleij <linus.walleij@linaro.org>, 
	"Bartosz Golaszewski" <brgl@bgdev.pl>, 
	linux-gpio <linux-gpio@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: Re: [PATCH] pinctrl: rockchip: find gpiochip by name from gpio module
References: <20220916084343.458566-1-jay.xu@rock-chips.com>, 
	<YyRPy8MnklttTup8@smile.fi.intel.com>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.19.158[cn]
Mime-Version: 1.0
Message-ID: <2022092009235942164711@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlCTEtOVk4YHU8YQh1PHUNPGlUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVSktLVUtZBg++
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pyo6TTo6LD0iEB4PNRoQHktJ
	PDdPCxZVSlVKTU1ITUhMS09LSkNNVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
	WU5DVUlJVUxVSkpPWVdZCAFZQUlCQk83Bg++
X-HM-Tid: 0a83587eaa882eb5kusn8da16680350
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_182407_144553_721D53FC 
X-CRM114-Status: GOOD (  10.38  )
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

SGnCoEFuZHkgYW5kIFdhbGxlaWoKCi0tLS0tLS0tLS0tLS0tCmpheS54dUByb2NrLWNoaXBzLmNv
bQo+T24gRnJpLCBTZXAgMTYsIDIwMjIgYXQgMDQ6NDM6NDNQTSArMDgwMCwgSmlhbnF1biBYdSB3
cm90ZToKPj4gQ3VycmVudGx5IHRoZSBwaW5jdHJsIGRldmljZSBhY3RzIGFzIHBhcmVudCBmb3Ig
dGhlIGdwaW8gZGV2aWNlcyBmb3IKPj4gcm9ja2NoaXAgcGxhdGZvcm0sIHRoZSBwaW5jdHJsIGRy
aXZlciBwcm9iZXMgZmlyc3QgYW5kIHRoZW4gcG9wdWxhdGUgdGhlCj4+IGdwaW8gcGxhdGZvcm0g
bGFzdGx5Lgo+Pgo+PiBUaGlzIHBhdGNoIG1ha2VzIHRoZSBwaW5jdHJsIHRvIHBvcHVsYXRlIGdw
aW8gcGxhdGZvcm0gZmlyc3RseSBhbmQgdGhlbgo+PiBkbyBwcm9iZSBhZnRlciBncGlvIHByb2Jl
ZCBzdWNjZXNzZnVsbHkuIEFuZCBnZXQgZ3Bpb2NoaXBzIHRocm91Z3RoIGEKPj4gZmluZCBmdW5j
dGlvbiBieSB0aGUgZ3BpbyBsYWJlbC4KPgo+PiArc3RhdGljIGludCBncGlvY2hpcF9tYXRjaF9u
YW1lKHN0cnVjdCBncGlvX2NoaXAgKmdjLCB2b2lkICpkYXRhKQo+PiArewo+PiArCWNvbnN0IGNo
YXIgKm5hbWUgPSBkYXRhOwo+PiArCj4+ICsJcmV0dXJuICFzdHJjbXAoZ2MtPmxhYmVsLCBuYW1l
KTsKPj4gK30KPgo+PiArCWdjID0gZ3Bpb2NoaXBfZmluZCgodm9pZCAqKWN0cmwtPnBpbl9iYW5r
c1tpXS5uYW1lLCBncGlvY2hpcF9tYXRjaF9uYW1lKTsKPj4gKwlpZiAoIWdjKSB7Cj4+ICsJZGV2
X2VycihkZXYsICJmYWlsIHRvIGZpbmQgZ3Bpb2NoaXBcbiIpOwo+PiArCXJldHVybiByZXQ7Cj4+
ICsJfQo+Cj5OSUggZmluZF9jaGlwX2J5X25hbWUoKQo+IApJIHNlbmQgYSBwYXRjaCAiW1BBVENI
IFJFU0VORF0gZ3Bpb2xpYjogbWFrZSBncGlvY2hpcF9maW5kX2J5X25hbWUgdG8gYmUgY29tbW9u
IGZ1bmN0aW9uIgpwbGVhc2UgaGVscCB0byByZXZpZXcgYmVmb3JlIHRoaXMgcGF0Y2gsIHRoYW5r
cwo+Cj4tLQo+V2l0aCBCZXN0IFJlZ2FyZHMsCj5BbmR5IFNoZXZjaGVua28KPgo+Cj4KPi0tCj5X
aXRoIEJlc3QgUmVnYXJkcywKPkFuZHkgU2hldmNoZW5rbwo+Cj4KX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
