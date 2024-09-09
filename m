Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0854ECE589
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Sep 2024 21:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=frxFYpAAV8+S1bzIl9uHMOURe2vJjoCPVozsI9Sfi/I=; b=Sg3uhtZJKHb/gR
	xtIMXYfkXnlKCbzdKcJY5SWP9EIcxLh4pRoP9nHt5XHNCbHYLBcEmyRUiLSVXFENmtf2iapiJOdrU
	1oACbfmFiu1FZBq1M7G8iY889QLyrI/3p7b/rLUIgDvK3VgmFvh3CED1UUZHAUC+dhVBQ4JnlEVTH
	It42itTU9GqRVHS9NPF3TEobzbbq2SecCWH03NDyZE6W0lLyj4e2OG3l0rE9tc40jD4oXMToencR0
	vbBev+zr/bRxCku1xN0g4PqqO2YiWLGR8D/X2Knwn5qiJ9J7EZK5t7IWqF/aqtshDQvLGnydjfUjz
	M5X10cU1DQhP0D9QHiaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snlZ8-00000003JnY-30nC;
	Mon, 09 Sep 2024 21:04:54 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snlWD-00000003J3s-0FEn;
	Mon, 09 Sep 2024 21:01:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id C4484A419D0;
	Mon,  9 Sep 2024 21:01:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95DBDC4CEC5;
	Mon,  9 Sep 2024 21:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725915712;
	bh=fk1O36vP6EYATpW7zFnE0wBAJf09Xs8FlL14jwq2K04=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=U83w8q4vmWuUNWWa8wp6WXXICFHNrWHnRAOLoFaJwf+YGIhqaA4++V14XBYpETLmz
	 Rrd3E+kOLKplgGDfpABUQym08RyIiH3l4jAbmyk5bBAK0s0gOBxgw2KpqYkk67k29Q
	 bB2annXHCrM4S5XPhPdfW+/6Ff0w15aInu8EqGFqDTaWc6XH5oDKdHJJFazQNbDIc4
	 p3AukalcGRDrdrFRfFF1YtRIBR9v1CMyNI+juVxM1lxCtHvdKIJ/p3GvzmaDqMOg0z
	 e01KB1mHz9lEzQnWY0Dh6JJLHfYFid95AQrKjY5TyB7IUFJ0wwiByyCgketuPB89UX
	 ftt0aAFvxLWog==
From: Mark Brown <broonie@kernel.org>
To: Liam Girdwood <lgirdwood@gmail.com>, 
 =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: linux-sound@vger.kernel.org, asahi@lists.linux.dev, 
 alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org, 
 patches@opensource.cirrus.com, linux-arm-msm@vger.kernel.org, 
 linuxppc-dev@lists.ozlabs.org, imx@lists.linux.dev, 
 linux-mediatek@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, sound-open-firmware@alsa-project.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-sunxi@lists.linux.dev, 
 linux-tegra@vger.kernel.org, linux-omap@vger.kernel.org
In-Reply-To: <20240909151230.909818-2-u.kleine-koenig@baylibre.com>
References: <20240909151230.909818-2-u.kleine-koenig@baylibre.com>
Subject: Re: [PATCH] ASoC: Switch back to struct platform_driver::remove()
Message-Id: <172591570834.136248.17412626468486255591.b4-ty@kernel.org>
Date: Mon, 09 Sep 2024 22:01:48 +0100
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-99b12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240909_140153_181859_9350082E 
X-CRM114-Status: GOOD (  12.66  )
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

T24gTW9uLCAwOSBTZXAgMjAyNCAxNzoxMjozMCArMDIwMCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3Jv
dGU6Cj4gQWZ0ZXIgY29tbWl0IDBlZGI1NTVhNjVkMSAoInBsYXRmb3JtOiBNYWtlIHBsYXRmb3Jt
X2RyaXZlcjo6cmVtb3ZlKCkKPiByZXR1cm4gdm9pZCIpIC5yZW1vdmUoKSBpcyAoYWdhaW4pIHRo
ZSByaWdodCBjYWxsYmFjayB0byBpbXBsZW1lbnQgZm9yCj4gcGxhdGZvcm0gZHJpdmVycy4KPiAK
PiBDb252ZXJ0IGFsbCBkcml2ZXJzIGJlbG93IHNvdW5kL3NvYyB0byB1c2UgLnJlbW92ZSgpLCB3
aXRoIHRoZSBldmVudHVhbAo+IGdvYWwgdG8gZHJvcCBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyOjpy
ZW1vdmVfbmV3KCkuIEFzIC5yZW1vdmUoKSBhbmQKPiAucmVtb3ZlX25ldygpIGhhdmUgdGhlIHNh
bWUgcHJvdG90eXBlcywgY29udmVyc2lvbiBpcyBkb25lIGJ5IGp1c3QKPiBjaGFuZ2luZyB0aGUg
c3RydWN0dXJlIG1lbWJlciBuYW1lIGluIHRoZSBkcml2ZXIgaW5pdGlhbGl6ZXIuCj4gCj4gWy4u
Ll0KCkFwcGxpZWQgdG8KCiAgIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9r
ZXJuZWwvZ2l0L2Jyb29uaWUvc291bmQuZ2l0IGZvci1uZXh0CgpUaGFua3MhCgpbMS8xXSBBU29D
OiBTd2l0Y2ggYmFjayB0byBzdHJ1Y3QgcGxhdGZvcm1fZHJpdmVyOjpyZW1vdmUoKQogICAgICBj
b21taXQ6IDEzMGFmNzViNWMwNWVlZjRlY2Q4NTkzMzcxZjNlOTI0YmNkNDEyNDEKCkFsbCBiZWlu
ZyB3ZWxsIHRoaXMgbWVhbnMgdGhhdCBpdCB3aWxsIGJlIGludGVncmF0ZWQgaW50byB0aGUgbGlu
dXgtbmV4dAp0cmVlICh1c3VhbGx5IHNvbWV0aW1lIGluIHRoZSBuZXh0IDI0IGhvdXJzKSBhbmQg
c2VudCB0byBMaW51cyBkdXJpbmcKdGhlIG5leHQgbWVyZ2Ugd2luZG93IChvciBzb29uZXIgaWYg
aXQgaXMgYSBidWcgZml4KSwgaG93ZXZlciBpZgpwcm9ibGVtcyBhcmUgZGlzY292ZXJlZCB0aGVu
IHRoZSBwYXRjaCBtYXkgYmUgZHJvcHBlZCBvciByZXZlcnRlZC4KCllvdSBtYXkgZ2V0IGZ1cnRo
ZXIgZS1tYWlscyByZXN1bHRpbmcgZnJvbSBhdXRvbWF0ZWQgb3IgbWFudWFsIHRlc3RpbmcKYW5k
IHJldmlldyBvZiB0aGUgdHJlZSwgcGxlYXNlIGVuZ2FnZSB3aXRoIHBlb3BsZSByZXBvcnRpbmcg
cHJvYmxlbXMgYW5kCnNlbmQgZm9sbG93dXAgcGF0Y2hlcyBhZGRyZXNzaW5nIGFueSBpc3N1ZXMg
dGhhdCBhcmUgcmVwb3J0ZWQgaWYgbmVlZGVkLgoKSWYgYW55IHVwZGF0ZXMgYXJlIHJlcXVpcmVk
IG9yIHlvdSBhcmUgc3VibWl0dGluZyBmdXJ0aGVyIGNoYW5nZXMgdGhleQpzaG91bGQgYmUgc2Vu
dCBhcyBpbmNyZW1lbnRhbCB1cGRhdGVzIGFnYWluc3QgY3VycmVudCBnaXQsIGV4aXN0aW5nCnBh
dGNoZXMgd2lsbCBub3QgYmUgcmVwbGFjZWQuCgpQbGVhc2UgYWRkIGFueSByZWxldmFudCBsaXN0
cyBhbmQgbWFpbnRhaW5lcnMgdG8gdGhlIENDcyB3aGVuIHJlcGx5aW5nCnRvIHRoaXMgbWFpbC4K
ClRoYW5rcywKTWFyawoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
