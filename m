Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE94DC021B2
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Feb 2025 06:17:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gd9IX9savCwQ18z1WecupDm+zjpB+2sYRgcWGmN6Z+o=; b=qb2g99IBItW07h
	Po/p0jXzm28aOf4Zef8LSUgNiKN1+KpLx+TN/HD6QmVixhCLGluP/k+4v8gdqZHlC8trWsmrv6iYN
	Vs/05aolZDmcK7Db9ZJuTVOpdegNgEfHEwmx8fyoZg7e0RfwQV7GZ5Kzx6ziddSHkZ1HJpiFLLb4N
	DjeJUz/5BJsiSksbVgHOwyLl1wUsC8/OGdNfzsJLAQzguZk/oHmK3C7CejC4DTMHH29CetYK3Ezwi
	wdvunMdpUrsU1LnInB7nPD/h4opu47+NkSRA90epSUxNJbEReNgBAf+ZStfKU7oEeEigzrq50DZhn
	bMFAnxCqWjuAa4ywLJtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlipB-00000007WJi-3vHx;
	Sat, 22 Feb 2025 06:17:17 +0000
Received: from out.bound.email ([141.193.244.10])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tlinh-00000007WBo-20Sp;
	Sat, 22 Feb 2025 06:15:46 +0000
Received: from mail.sventech.com (localhost [127.0.0.1])
	by out.bound.email (Postfix) with ESMTP id 9DDFA8A0A03;
	Fri, 21 Feb 2025 22:10:43 -0800 (PST)
Received: by mail.sventech.com (Postfix, from userid 1000)
	id 8445F160036F; Fri, 21 Feb 2025 22:10:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=erdfelt.com;
	s=default; t=1740204643;
	bh=ipBg/kh10xlLbTfqW90iojp94rB9+YUQQbr3OHMLVXY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uV73Vx4sYe6+zf3jjzrwt+ECW446OAMMZzdBgrfnLwS0sg+2CL30u2R73aA5DxYnl
	 7zGJFwOIa47n8pyBbaz2HQA4i+QHZtwNJYfU2M9GMUIDBsUNddjp4oUf+mneWRdxff
	 SK+LnfDuirmuLBci97mXWUpZILvcPoCSkgWk7tu0=
Date: Fri, 21 Feb 2025 22:10:43 -0800
From: Johannes Erdfelt <johannes@erdfelt.com>
To: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>
Cc: Jianfeng Liu <liujianfeng1994@gmail.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	simona@ffwll.ch, devicetree@vger.kernel.org, conor+dt@kernel.org,
	robh@kernel.org, maarten.lankhorst@linux.intel.com,
	hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	mripard@kernel.org, tzimmermann@suse.de, andy.yan@rock-chips.com,
	krzk+dt@kernel.org, kernel@collabora.com, airlied@gmail.com,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add HDMI1 PHY PLL clock source
 to VOP2 on RK3588
Message-ID: <20250222061043.GW16911@sventech.com>
References: <1919367.CQOukoFCf9@diego>
 <20250218121749.1382322-1-liujianfeng1994@gmail.com>
 <lnuceofdwm6lgibworaghcujp6rrncvn4e2xc2vzltimjw3rqu@jur7x5cxt5ue>
 <2425191.NG923GbCHz@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2425191.NG923GbCHz@diego>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250221_221545_638442_6BA6F6AA 
X-CRM114-Status: GOOD (  14.66  )
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

T24gVHVlLCBGZWIgMTgsIDIwMjUsIEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRlY2guZGU+IHdy
b3RlOgo+IEkgd2FzIG1vcmUgdGhpbmtpbmcgYWJvdXQgZml4aW5nIHRoZSBjb3JyZWN0IHRoaW5n
LCB3aXRoIHNvbWV0aGluZyBsaWtlOgo+IAo+IC0tLS0tLS0tLS0tIDg8IC0tLS0tLS0tLS0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvY2xrLmMgYi9kcml2ZXJzL2Nsay9jbGsuYwo+IGluZGV4
IGNmNzcyMGI5MTcyZi4uNTBmYWFmYmY1ZGRhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY2xrL2Ns
ay5jCj4gKysrIGIvZHJpdmVycy9jbGsvY2xrLmMKPiBAQCAtNTI1OCw2ICs1MjU4LDEwIEBAIG9m
X2Nsa19nZXRfaHdfZnJvbV9jbGtzcGVjKHN0cnVjdCBvZl9waGFuZGxlX2FyZ3MgKmNsa3NwZWMp
Cj4gICAgICAgICBpZiAoIWNsa3NwZWMpCj4gICAgICAgICAgICAgICAgIHJldHVybiBFUlJfUFRS
KC1FSU5WQUwpOwo+IAo+ICsgICAgICAgLyogQ2hlY2sgaWYgbm9kZSBpbiBjbGtzcGVjIGlzIGlu
IGRpc2FibGVkL2ZhaWwgc3RhdGUgKi8KPiArICAgICAgIGlmICghb2ZfZGV2aWNlX2lzX2F2YWls
YWJsZShjbGtzcGVjLT5ucCkpCj4gKyAgICAgICAgICAgICAgIHJldHVybiBFUlJfUFRSKC1FTk9F
TlQpOwo+ICsKPiAgICAgICAgIG11dGV4X2xvY2soJm9mX2Nsa19tdXRleCk7Cj4gICAgICAgICBs
aXN0X2Zvcl9lYWNoX2VudHJ5KHByb3ZpZGVyLCAmb2ZfY2xrX3Byb3ZpZGVycywgbGluaykgewo+
ICAgICAgICAgICAgICAgICBpZiAocHJvdmlkZXItPm5vZGUgPT0gY2xrc3BlYy0+bnApIHsKPiAt
LS0tLS0tLS0tLSA4PCAtLS0tLS0tLS0tCj4gCj4gQmVjYXVzZSByaWdodCBub3cgdGhlIGNsayBm
cmFtZXdvcmsgZG9lcyBub3QgaGFuZGxlIG5vZGVzIGluCj4gZmFpbGVkL2Rpc2FibGVkIHN0YXRl
IGFuZCB3b3VsZCBkZWZlciBpbmRlZmluaXRseS4KCkkndmUgYmVlbiB0ZXN0aW5nIHRoZSByZWNl
bnQgcGF0Y2hlcyBKaW1teSBIb24gaGFzIHBvc3RlZCB0byBhZGQgdGhlCk9yYW5nZSBQaSA1IFVs
dHJhIERUIGFuZCBJIHJhbiBpbnRvIHRoaXMgYnVnLiBUaGUgVWx0cmEgdXNlcyBIRE1JMSBmb3IK
dGhlIEhETUkgVFguCgpUaGlzIHBhdGNoIHN1Y2Nlc3NmdWxseSBmaXhlcyB0aGUgaXNzdWUgSSB3
YXMgc2VlaW5nLgoKSkUKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
