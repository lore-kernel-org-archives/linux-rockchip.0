Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D374BCCD184
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Oct 2025 16:06:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fd3Q4rAwOkWXuS25VRX7xVvu0xMqnhIGj9Xx+iDphZY=; b=LvRuzGrygbvFz8
	l2KgpW7vBc55TcMBN/ch1KmKG2AGL63gN5l86J6LYlCXz8QVZnvEqxmPV+5DYUFWlPe7dGZ3Km+Zv
	SexfQi/0GQce/1UY3BtK70Foy8sacH53j5FeQ5sAk0tgxp3sIlcg6pzzv+G5DaHR8Ie2hF3FDYsYi
	/OgPiI3ypMaCcH72jlB4UFEQJ+j3P1DRZOIDaObjCUuJAatSgWRcBzecBLRKyIj67fYWvt6dIQQVu
	owD4hsQcQnfvBqsXjiv/51+oYOzBbbewhfqIYgIaeU1pM4TOOoMrIArAy027J2mQxkypl+4xEMmKO
	GgH2uYKGA+r9XY+OZWhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAVvJ-0000000BBJw-18eM;
	Sun, 19 Oct 2025 16:06:21 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAVvG-0000000BBJ8-3fJ3;
	Sun, 19 Oct 2025 16:06:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=AHfKA9U4Qc/kfoVyXIAwIin/0PHtcEBFmI2qkbJlwas=; b=YSQqmBdBp6Cnqio5Q494KslAOs
	4IwGfKAEq3Yx1gDBSm40vA7TITFzwpl7tzPQiEk9pf91Qljfll83vZg7bFt7U76ye5LcZPZcQihYm
	rMD+Tm67OaIlxTr+A/J08+ujbQhWSUCniipMMiuOza4Uk5++DBGDynN1uY8xCwi9U84b8/6uex+U2
	j1wvM7P2YQ7FdQ2dRqlRQoRuMiBSYlHJdZeaT9guLiLTmGrhTfKaKQg3CDVXMApOXZdpL2H7g9MrW
	EJZfKmepspjCiTWqBBKcPOA0c8/SBZ5P2LDmeCerFlB05cvK3DpuzBCfgIg5pJvMP4BB0Z6X46ldl
	sRFA5eAA==;
Received: from i53875a28.versanet.de ([83.135.90.40] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vAVv4-0001nY-Qi; Sun, 19 Oct 2025 18:06:06 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 David Petry <petry103@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 David Petry <petry103@gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable second HDMI output on CM3588
Date: Sun, 19 Oct 2025 18:06:05 +0200
Message-ID: <6801712.G0QQBjFxQf@diego>
In-Reply-To: <20251019142053.11047-1-petry103@gmail.com>
References: <20251019142053.11047-1-petry103@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251019_090618_962478_3689E087 
X-CRM114-Status: GOOD (  17.65  )
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

SGkgRGF2aWQsCgpBbSBTb25udGFnLCAxOS4gT2t0b2JlciAyMDI1LCAxNjoyMDo1MyBNaXR0ZWxl
dXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIERhdmlkIFBldHJ5Ogo+IEVuYWJsZSB0aGUg
c2Vjb25kIEhETUkgb3V0cHV0IHBvcnQgZm91bmQgb24gRnJpZW5kbHlFbGVjIENNMzU4OCBhbmQg
Q00zNTg4Cgp0aGUgZGVjcmlwdGlvbiBzb3VuZHMgbGlrZSB5b3UncmUgcmVmZXJlbmNpbmcgdHdv
IGJvYXJkcywgYnV0IHRoZSBjaGFuZ2UKaXRzZWxmIG9ubHkgdG91Y2hlcyBvbmUuIElzIHRoZXJl
IGEgMm5kIHBhdGNoIG1pc3Npbmcgb3IgZG9lcyB0aGUgd29yZGluZwphYm92ZSBuZWVkIGltcHJv
dmVtZW50PwoKVGhhbmtzCkhlaWtvCgo+IAo+IFNpZ25lZC1vZmYtYnk6IERhdmlkIFBldHJ5IDxw
ZXRyeTEwM0BnbWFpbC5jb20+Cj4gLS0tCj4gIC4uLi9yazM1ODgtZnJpZW5kbHllbGVjLWNtMzU4
OC1uYXMuZHRzICAgICAgICB8IDM4ICsrKysrKysrKysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5n
ZWQsIDM4IGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODgtZnJpZW5kbHllbGVjLWNtMzU4OC1uYXMuZHRzIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZnJpZW5kbHllbGVjLWNtMzU4OC1uYXMuZHRzCj4g
aW5kZXggNWZiYmViNmY1YTkzNS4uMTBhN2QzNjkxYTI2ZiAxMDA2NDQKPiAtLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1mcmllbmRseWVsZWMtY20zNTg4LW5hcy5kdHMK
PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1mcmllbmRseWVsZWMt
Y20zNTg4LW5hcy5kdHMKPiBAQCAtMTAxLDYgKzEwMSwxNyBAQCBoZG1pMF9jb25faW46IGVuZHBv
aW50IHsKPiAgCQl9Owo+ICAJfTsKPiAgCj4gKwloZG1pMS1jb24gewo+ICsJCWNvbXBhdGlibGUg
PSAiaGRtaS1jb25uZWN0b3IiOwo+ICsJCXR5cGUgPSAiYSI7Cj4gKwo+ICsJCXBvcnQgewo+ICsJ
CQloZG1pMV9jb25faW46IGVuZHBvaW50IHsKPiArCQkJCXJlbW90ZS1lbmRwb2ludCA9IDwmaGRt
aTFfb3V0X2Nvbj47Cj4gKwkJCX07Cj4gKwkJfTsKPiArCX07Cj4gKwo+ICAJaXItcmVjZWl2ZXIg
ewo+ICAJCWNvbXBhdGlibGUgPSAiZ3Bpby1pci1yZWNlaXZlciI7Cj4gIAkJZ3Bpb3MgPSA8Jmdw
aW8wIFJLX1BENCBHUElPX0FDVElWRV9MT1c+Owo+IEBAIC0zMzUsNiArMzQ2LDIyIEBAIGhkbWkw
X291dF9jb246IGVuZHBvaW50IHsKPiAgCX07Cj4gIH07Cj4gIAo+ICsmaGRtaTEgewo+ICsJc3Rh
dHVzID0gIm9rYXkiOwo+ICt9Owo+ICsKPiArJmhkbWkxX2luIHsKPiArCWhkbWkxX2luX3ZwMTog
ZW5kcG9pbnQgewo+ICsJCXJlbW90ZS1lbmRwb2ludCA9IDwmdnAxX291dF9oZG1pMT47Cj4gKwl9
Owo+ICt9Owo+ICsKPiArJmhkbWkxX291dCB7Cj4gKwloZG1pMV9vdXRfY29uOiBlbmRwb2ludCB7
Cj4gKwkJcmVtb3RlLWVuZHBvaW50ID0gPCZoZG1pMV9jb25faW4+Owo+ICsJfTsKPiArfTsKPiAr
Cj4gICZoZG1pX3JlY2VpdmVyX2NtYSB7Cj4gIAlzdGF0dXMgPSAib2theSI7Cj4gIH07Cj4gQEAg
LTM1MCw2ICszNzcsMTAgQEAgJmhkcHR4cGh5MCB7Cj4gIAlzdGF0dXMgPSAib2theSI7Cj4gIH07
Cj4gIAo+ICsmaGRwdHhwaHkxIHsKPiArCXN0YXR1cyA9ICJva2F5IjsKPiArfTsKPiArCj4gIC8q
IENvbm5lY3RlZCB0byBNSVBJLURTSTAgKi8KPiAgJmkyYzUgewo+ICAJcGluY3RybC1uYW1lcyA9
ICJkZWZhdWx0IjsKPiBAQCAtODQwLDMgKzg3MSwxMCBAQCB2cDBfb3V0X2hkbWkwOiBlbmRwb2lu
dEBST0NLQ0hJUF9WT1AyX0VQX0hETUkwIHsKPiAgCQlyZW1vdGUtZW5kcG9pbnQgPSA8JmhkbWkw
X2luX3ZwMD47Cj4gIAl9Owo+ICB9Owo+ICsKPiArJnZwMSB7Cj4gKwl2cDFfb3V0X2hkbWkxOiBl
bmRwb2ludEBST0NLQ0hJUF9WT1AyX0VQX0hETUkxIHsKPiArCQlyZWcgPSA8Uk9DS0NISVBfVk9Q
Ml9FUF9IRE1JMT47Cj4gKwkJcmVtb3RlLWVuZHBvaW50ID0gPCZoZG1pMV9pbl92cDE+Owo+ICsJ
fTsKPiArfTsKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
