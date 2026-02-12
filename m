Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 481CBEB48F8
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Feb 2026 10:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MdCYViMEjU702rmOp3qXanNXf4CJNbjrZ8jnogUKugY=; b=PfqlbqG/qVzjRp
	bvg2B1ggCSrIut+Lu0IjfDHdIbGLmr6j4qPNJVSaOXyo6QffhPZe1WyBIMRBg5fPNSL9nCYCW0KkJ
	zwl7QJIfu0ddgh2gK0XUyw6y3S8zMzZME0UYXnGgJIVxYd+pJYfBbFEMTPRucsVqGC7ZK6sMuqe0T
	W6qrYXqLlLWHgYSJqci/P4SAWZkJKEqwRCRqHj7Q9sS4i747Oqk/pSpwFw1qDjDW64fVvvIsjcP7B
	gmULtKmostJfLLzZUJAHIc/eY7RGKCn5DJl/yEzDhoNhe3LFJfygNNOJs/9/BeGD0OwyYT9voUlIm
	FjP25Ntvb1TzHFgQZbLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqUFG-00000001xLe-3ODB;
	Thu, 12 Feb 2026 10:48:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqUFE-00000001xLD-0WcV
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Feb 2026 10:48:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=39rrIVuRqk7nM8k5k31PgP3FzQWkK70uFZh0boPYMek=; b=2G6Zvs6nEReVB/FqTQ3121Msub
	v+KPPOxkqv7bJ9oEFAePRodUI00asvUKSxOMonGeVgONr9TPuT//nalefag/9mLmJymHWyWCj10mM
	/k5arfR78gq0wOdRsU/YZvX9q824kfuvE7t8PiH7BYKhiziwvgwf8iFahJCxx25hZk5B3L2JFWas9
	gfx7J7V0uaiSMjNXi0o9/YEyFlXs6v+2u5oRcKMHuqSYxFR+Pf9U2pGB5a14IV5QJp25aWbEi71mV
	36Z2F78U9EksyBCxqPV+aalSJWZGxEdEoZ+KpmZBpojydHgm4KRAM19PMZfkuYUhyF798/UsyLvyQ
	zL1/y2lA==;
Received: from i53875be4.versanet.de ([83.135.91.228] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vqUF7-008CYz-Nr; Thu, 12 Feb 2026 11:48:17 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Detlev Casanova <detlev.casanova@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Shawn Lin <shawn.lin@rock-chips.com>
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 "finley.xiao" <finley.xiao@rock-chips.com>
Subject: Re: [REGRESSION] rk3588s-evb1-v10 board unable to boot based on linux-next
Date: Thu, 12 Feb 2026 11:48:16 +0100
Message-ID: <13147970.MucGe3eQFb@diego>
In-Reply-To: <87d7abb0-9231-7b9c-bd44-52042701ecd5@rock-chips.com>
References: <558b602a-1b30-2761-fff4-04d837656ea5@rock-chips.com>
 <87d7abb0-9231-7b9c-bd44-52042701ecd5@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_024824_203656_8A03A014 
X-CRM114-Status: GOOD (  17.48  )
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

SGkgU2hhd24KCkFtIERvbm5lcnN0YWcsIDEyLiBGZWJydWFyIDIwMjYsIDExOjM1OjE0IE1pdHRl
bGV1cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJpZWIgU2hhd24gTGluOgo+ICsgU2ViYXN0aWFu
IFJlaWNoZWwKPiAKPiDlnKggMjAyNi8wMi8xMiDmmJ/mnJ/lm5sgMTU6NTksIFNoYXduIExpbiDl
hpnpgZM6Cj4gPiBIaSBEZXRsZXYsCj4gPiAKPiA+IGNvbW1pdCBmNjE3MzFiZDYwNjIgKCJhcm02
NDogZHRzOiByb2NrY2hpcDogQWRkIHRoZSB2ZHB1MzgxIFZpZGVvCj4gPiBEZWNvZGVycyBvbiBS
SzM1ODgiKSBsYW5kZWQgb24gbGludXgtbmV4dCBicmVha3MgcmszNTg4cy1ldmIxLXYxMC4KPiA+
IFJldmVydCBpdCBmaXhlcyB0aGUgcHJvYmxlbS4gVGhlIGZ1bGwgbG9nIGNvdWxkIGJlIGZvdW5k
IGhlcmVbMV0uCj4gPiBBbHNvIGNvbmZpcm0gdGhhdCBpdCBkb2Vzbid0IHdvcmsgYmFzZWQgb24g
TGludXMnIGxhdGVzdCBtYWlubGluZQo+ID4gYXMgdGhpcyBjb21taXQgbWVyZ2VkIGludG8gaXQg
dGhpcyBjeWNsZS4KPiA+IAo+ID4gSWYgYW55dGhpbmcgSSBjb3VsZCBkbyB0byBoZWxwIGRlYnVn
IGl0LCBwbGVhc2UgbGV0IG1lIGtub3cuCj4gPiAKPiAKPiBJIGRpZCBzb21lIHF1aWNrIGRlYnVn
IGFuZCBmb3VuZCBpdCdzIHJlbGF0ZWQgdG8gYSBwbWRvbWFpbiBwYXRjaC4KPiBDb21taXQgZjYx
NzMxYmQ2MDYyIGhhcHBlbmVkIHRvIGVuYWJsZSBya3ZkZWMgd2hpY2ggcmVseXMgb24gdGhlCj4g
UERfVkRFQyosIHNvIEkgaGF2ZSBzZW50IGEgZml4IHBhdGNoIGZvciB5b3UgdG8gaGVscCByZXZp
ZXc6Cj4gCj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvMTc3MDg5MTM2
NC01MjE0Ny0xLWdpdC1zZW5kLWVtYWlsLXNoYXduLmxpbkByb2NrLWNoaXBzLmNvbS9ULyN1Cgpk
byB5b3Ugd2FudCB0byBwcm92aWRlIGEgcGF0Y2ggZm9yIHRoZSBldmIxIGJvYXJkIHRvIHRoYXQg
YWRkcyB0aGUKZG9tYWluLXN1cHBsaWVzLCBzbyB0aGF0IHBlb3BsZSBjYW4gc2VlIHdoYXQgaXMg
bmVlZGVkIHRvIG1ha2UKdGhlIHZkZWMgd29yaz8KClRoYW5rcyBhIGxvdCBmb3IgZmluZGluZyB0
aGUgaXNzdWUuCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
