Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60E5DC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jan 2022 16:25:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/Cu4ArwUAzI8smV0mJ+9uBwPQQt5Kkgbte4M/+qgYpk=; b=Hu9FB3LA3gTsvp
	+HIfBJwCoWhNhCJEiBbMCSHaeniOdoTJWKpVme7pVmm+xWsyLqw3XxCLSOh3nSDqdHQqrk5xRNjPB
	rrHt36N6c8k38NbdBHu/gf+JHYB/qFRELgoC4PbKTEeohIXnrCXdN0UyTfOGlSxHo8zv8G7xKvZmq
	njZYvTKE08GdcdGJ/NLpdBQSmj3bz7AreBPx8Fz6bwrcdlPFkTu0+vC7mUCMiNtZje67tdwsCOM+2
	DiXVzEJjDW+pjxbXoBAnedIqn7J5CumfpBcRP51l4bf1M+8XolgopXTKqh4EpAsnK5tpjZdffBD3a
	DzOog7Ut3OSzmxJSXtzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8POZ-009k8a-PU; Fri, 14 Jan 2022 16:25:43 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8POX-009k71-A9; Fri, 14 Jan 2022 16:25:42 +0000
Received: by mail-lf1-x12a.google.com with SMTP id e3so29121561lfc.9;
 Fri, 14 Jan 2022 08:25:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=QwE6AvJ6TOilf5yaAEqCv7rrahQ353A7bMEMih1/r24=;
 b=XeV5CDiNpJvjEs3AJNu/gGrbbC24PdhwUSqDz0k50thtLMscmQvcTEXh+jZvItQd8J
 lKjW0G3oubKR21qu0ig+JY4t1uFcNqgL2JpxvmOynmNzED6sfB1LkFuEHwTQa8VUjvad
 0/K/BDltJoeEQ3b4HNnm6h5uGBNCiXwFbnCdlb/ry7wjMf7n8V+2fdb6Xh2SfOPvAKya
 SAbD1zWJ7uMjodV+upvNzY7KUEuZTtGIyKviJOsTlKdv9Q7tNkAdr6pHujoQJPT+UM6v
 /CVVoWyADdOA3evsQTvLhdNkxKV6x75LK4K1KdkgjgkxHxwBjhxyp2icerjBUBIwqqne
 ZL2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=QwE6AvJ6TOilf5yaAEqCv7rrahQ353A7bMEMih1/r24=;
 b=p8fImTMB/zvloh+NQbgwdgOa5p2zCa9PtyY4fNQB2xCuen4mdDSv2coYeM9OdEVePU
 aVvPRTy2s/TFKVPozJ4ZbX1fGNgLOagnyvuznAbyShQb+KeLYUdN/9Eakikp2UAtfzFr
 ULfZHVAUK8O2j3cJkn0HTHsZPZeMFNUuE2sL76R6TXZQBxYGW1sw+/cFSBguO4SmwENl
 m9yiCbZcMcTRHV95rmCNNcd3uuUyziSpxieDYO1Nf06UmTMA2FR3FUtnL6TzhLsikoba
 o+tykb3lR5sIfssXi3L2XXgWPh0iN+T5Ld2ZgoOpeDx6AbntX8QRXFgo9HkLuWzFQtck
 aZGA==
X-Gm-Message-State: AOAM532nC413qkK50/HFQgdFVo1Fu2XyXOVjG8ryeBAt2WYrxtkxvS/D
 2t/pNoYcjHAiXiqSqzCX5ACvo7h3SKc=
X-Google-Smtp-Source: ABdhPJzAtX8W5nnGJkY9MsLkTDjaWEi4MR8t/UfTWxyPXJPk1n/X48n1WzmZr0wBUxhuuI0fqrnJLQ==
X-Received: by 2002:a05:6512:308c:: with SMTP id
 z12mr1671336lfd.35.1642177539071; 
 Fri, 14 Jan 2022 08:25:39 -0800 (PST)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245])
 by smtp.gmail.com with ESMTPSA id p17sm625405lfu.233.2022.01.14.08.25.36
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 14 Jan 2022 08:25:38 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: Enable the GPU on Quartz64
 Model A
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20211126151729.1026566-5-knaerzche@gmail.com>
Date: Fri, 14 Jan 2022 17:25:35 +0100
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 linux-rockchip@lists.infradead.org,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ezequiel Garcia <ezequiel@collabora.com>
Message-Id: <EB2E04F1-BACA-4A4F-97F9-0257F29D57B5@gmail.com>
References: <20211126151729.1026566-1-knaerzche@gmail.com>
 <20211126151729.1026566-5-knaerzche@gmail.com>
To: Alex Bee <knaerzche@gmail.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_082541_389507_6593C289 
X-CRM114-Status: GOOD (  12.92  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IEFsZXggQmVlIDxrbmFlcnpjaGVAZ21haWwu
Y29tPiB3IGRuaXUgMjYuMTEuMjAyMSwgbyBnb2R6LiAxNjoxNzoKPiAKPiBGcm9tOiBFemVxdWll
bCBHYXJjaWEgPGV6ZXF1aWVsQGNvbGxhYm9yYS5jb20+Cj4gCj4gRW5hYmxlIHRoZSBHUFUgY29y
ZSBvbiB0aGUgUGluZTY0IFF1YXJ0ejY0IE1vZGVsIEEuCj4gCj4gU2lnbmVkLW9mZi1ieTogRXpl
cXVpZWwgR2FyY2lhIDxlemVxdWllbEBjb2xsYWJvcmEuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEFs
ZXggQmVlIDxrbmFlcnpjaGVAZ21haWwuY29tPgo+IC0tLQo+IGFyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTY2LXF1YXJ0ejY0LWEuZHRzIHwgNSArKysrKwo+IDEgZmlsZSBjaGFuZ2Vk
LCA1IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1NjYtcXVhcnR6NjQtYS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU2Ni1xdWFydHo2NC1hLmR0cwo+IGluZGV4IDRkNGIyYTMwMWIxYS4uNjI1NDg5YzYw
NjIyIDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LXF1
YXJ0ejY0LWEuZHRzCj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYt
cXVhcnR6NjQtYS5kdHMKPiBAQCAtMjA1LDYgKzIwNSwxMSBAQCAmZ21hYzFtMF9jbGtpbm91dAo+
IAlzdGF0dXMgPSAib2theSI7Cj4gfTsKPiAKPiArJmdwdSB7Cj4gKwltYWxpLXN1cHBseSA9IDwm
dmRkX2dwdT47Cj4gKwlzdGF0dXMgPSAib2theSI7Cj4gK307Cj4gKwo+ICZpMmMwIHsKPiAJc3Rh
dHVzID0gIm9rYXkiOwo+IAo+IC0tIAo+IAoKQWxleCwgRXplcXVpZWwKCkknbSBwbGF5aW5nIHdp
dGggNS4xNiBtYWlubGluZSBvbiByazM1NjYgYmFzZWQgdHZib3ggKHg5Ni14NikKCkJveCBib290
cyBhbmQgSSBoYXZlIHdvcmtpbmcgU0QgY2FyZCwgRXRoLCBIRE1JLgoKSSBhcHBsaWVkIHRoaXMg
c2VyaWVzIGFzIEkgd2FudCB0byBnZXQgR1BVIHdvcmtpbmcgYnV0IEknbSBnZXR0aW5nOgoKWyAg
ICAzLjE2OTE0NF0gcGFuZnJvc3QgZmRlNjAwMDAuZ3B1OiBnZXQgY2xvY2sgZmFpbGVkIC01MTcK
WyAgICAzLjE2OTY0Nl0gcGFuZnJvc3QgZmRlNjAwMDAuZ3B1OiBjbGsgaW5pdCBmYWlsZWQgLTUx
NwpbICAgIDMuMjEzNjUzXSBwYW5mcm9zdCBmZGU2MDAwMC5ncHU6IGdldCBjbG9jayBmYWlsZWQg
LTUxNwpbICAgIDMuMjE0MTU2XSBwYW5mcm9zdCBmZGU2MDAwMC5ncHU6IGNsayBpbml0IGZhaWxl
ZCAtNTE3ClsgICAgMy4yMzA1MDVdIHBhbmZyb3N0IGZkZTYwMDAwLmdwdTogZ2V0IGNsb2NrIGZh
aWxlZCAtNTE3ClsgICAgMy4yMzEwMDZdIHBhbmZyb3N0IGZkZTYwMDAwLmdwdTogY2xrIGluaXQg
ZmFpbGVkIC01MTcKWyAgICAzLjI1ODA3Ml0gcGFuZnJvc3QgZmRlNjAwMDAuZ3B1OiBnZXQgY2xv
Y2sgZmFpbGVkIC01MTcKWyAgICAzLjI1ODU3NV0gcGFuZnJvc3QgZmRlNjAwMDAuZ3B1OiBjbGsg
aW5pdCBmYWlsZWQgLTUxNwoKTWF5YmUgeW91IGhhdmUgc29tZSBoaW50cyBoZXJlPwoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
