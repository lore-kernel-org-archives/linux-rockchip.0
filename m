Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EBD0FF8860
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Apr 2026 11:41:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rJ94JGcPO6nKd+z8o7cJRq+A9m8os6Ox1RqBQxG/l5I=; b=LNb/3xa1psBibL
	zwRM7+CGQb8SGxq+4mIrIJ2M6LuTuY1Fby9UOWHHYvZD0qQ3HQFLcYwGd5ZSaGQQvDSbEekHFVww/
	gJAQrdXv8iuQgyCq/w/3UEMNx7X/8vxSHy8BxIQ9cRjuBHDX0X+jd5hOW2Vbwaz+fC42QZP/OYtA3
	dx6YPlH6KzNXwd2WaBiTcrhZd2wFJm1FMuRDFY7HSlC2HAYg2ag8tYGqOHO8hetUGCtUoPYkGch7p
	+uNAG8ICY+VAcK/0Tf06u989P0Lu3Aq59q8B+ZIbkmo73J9Lq4ahMUhCBDH/C9WB9lFymzg7DEcwK
	u4dwZ3cNh6iRJ2wG3t3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHKLI-0000000Gohl-0gru;
	Mon, 27 Apr 2026 11:41:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHKLF-0000000Gogl-0o68;
	Mon, 27 Apr 2026 11:41:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=eeePnVv+YslUA1tdZWBh3CRQb3jVb+oSpxOE0TqYCFo=; b=DG3hGznGy33YluhslljvE9HRgx
	6LCBBDX1MCOA+cThYGvqf7VHFGm24WvhEBb0GIEauW74rHzWqbgQa0KyfrY3GIHcfB/jdZQfuASkY
	9noS6ydajlQOjwuOpewAm+GYATxNCl2vw8DHUDyaOOWWkCQ1swnKdlxmEbozDVA4n+dJjvY+KRWC5
	XfVDimk6F4g3U9KNCo5yJUL2kHovw7mrIejEGgCD4FkMwC9r4EjOnL61p/eN2JAR0rXEuBTQfMfXW
	7iSAszUY55zOofrwoyhCYbLaC6ywLRT2bd8VQR2k6NyKualnHTkXYouQjqQLpFQKDabRrvG4W6Rhc
	W0CqMA7Q==;
From: Heiko Stuebner <heiko@sntech.de>
To: guoweix <2298701336@qq.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 f.kardame@manjaro.org, pgwipeout@gmail.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, guoweix <2298701336@qq.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix rk809 interrupt pin on rk3566-roc-pc
Date: Mon, 27 Apr 2026 13:41:24 +0200
Message-ID: <26138973.6Emhk5qWAg@phil>
In-Reply-To: <tencent_CF3170E7191769F8FB22C55A0F952E82E105@qq.com>
References: <tencent_CF3170E7191769F8FB22C55A0F952E82E105@qq.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_044133_326991_5AB011E2 
X-CRM114-Status: GOOD (  15.75  )
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

SGksCgpBbSBNaXR0d29jaCwgOC4gQXByaWwgMjAyNiwgMTc6MDk6NDQgTWl0dGVsZXVyb3DDpGlz
Y2hlIFNvbW1lcnplaXQgc2NocmllYiBndW93ZWl4Ogo+IFRoZSBSSzgwOSBQTUlDIGludGVycnVw
dCBwaW4gb24gdGhlIEZpcmVmbHkgUk9DLVJLMzU2Ni1QQyAoU3RhdGlvbiBNMikKPiBpcyBwaHlz
aWNhbGx5IGNvbm5lY3RlZCB0byBHUElPMF9BMyAoUktfUEEzKSBhY2NvcmRpbmcgdG8gdGhlIGJv
YXJkJ3MKPiBzY2hlbWF0aWMuCj4gCj4gQ3VycmVudGx5LCB0aGUgUE1JQyBub2RlIGluY29ycmVj
dGx5IHNwZWNpZmllcyBSS19QQTcgZm9yIHRoZSBpbnRlcnJ1cHQsCj4gd2hpY2ggcHJldmVudHMg
dGhlIFBNSUMgZnJvbSBjb3JyZWN0bHkgc2lnbmFsaW5nIGludGVycnVwdHMuIChOb3RlIHRoYXQK
PiB0aGUgcGluY3RybCBub2RlICdwbWljX2ludCcgY29ycmVjdGx5IGNvbmZpZ3VyZXMgUktfUEEz
KS4KPiAKPiBGaXggdGhpcyBieSB1cGRhdGluZyB0aGUgaW50ZXJydXB0cyBwcm9wZXJ0eSB0byB1
c2UgUktfUEEzLgo+IAo+IEZpeGVzOiAzMGFjOWI0ZTI1ZDggKCJhcm02NDogZHRzOiByb2NrY2hp
cDogYWRkIGR0cyBmb3IgRmlyZWZseSBTdGF0aW9uIE0yIHJrMzU2NiIpCj4gCj4gU2lnbmVkLW9m
Zi1ieTogZ3Vvd2VpeCA8MjI5ODcwMTMzNkBxcS5jb20+CgpDb3VsZCB5b3UgdXNlIHRoZSBtb3Jl
IHN0YW5kYXJkIG5hbWluZyBvZiAiZ2l2ZW4gbmFtZSArIHN1cm5hbWUiIHBsZWFzZT8KRm9yIGV4
YW1wbGUgd2l0aDoKCWdpdCBjb21taXQgLS1hbWVuZCAtLWF1dGhvcj0iZ2l2ZW5uYW1lIHN1cm5h
bWUgPDIyOTg3MDEzMzZAcXEuY29tPiIKCk9yIHNldHRpbmcgdXNlci5uYW1lIGluIHlvdXIgLmdp
dGNvbmZpZy4KClBhdGNoIG90aGVyd2lzZSBsb29rcyBnb29kLgoKClRoYW5rcyBhIGxvdApIZWlr
bwoKCj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LXJvYy1wYy5k
dHMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1y
b2MtcGMuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYtcm9jLXBjLmR0
cwo+IGluZGV4IDdlNDk5MDY0ZTAzNS4uOTg1NzcwZTNhNWUyIDEwMDY0NAo+IC0tLSBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LXJvYy1wYy5kdHMKPiArKysgYi9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1yb2MtcGMuZHRzCj4gQEAgLTI0NSw3ICsyNDUs
NyBAQCByazgwOTogcG1pY0AyMCB7Cj4gIAkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazgwOSI7
Cj4gIAkJcmVnID0gPDB4MjA+Owo+ICAJCWludGVycnVwdC1wYXJlbnQgPSA8JmdwaW8wPjsKPiAt
CQlpbnRlcnJ1cHRzID0gPFJLX1BBNyBJUlFfVFlQRV9MRVZFTF9MT1c+Owo+ICsJCWludGVycnVw
dHMgPSA8UktfUEEzIElSUV9UWVBFX0xFVkVMX0xPVz47Cj4gIAkJY2xvY2stb3V0cHV0LW5hbWVz
ID0gInJrODA4LWNsa291dDEiLCAicms4MDgtY2xrb3V0MiI7Cj4gIAkJYXNzaWduZWQtY2xvY2tz
ID0gPCZjcnUgSTJTMV9NQ0xLT1VUX1RYPjsKPiAgCQlhc3NpZ25lZC1jbG9jay1wYXJlbnRzID0g
PCZjcnUgQ0xLX0kyUzFfOENIX1RYPjsKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
