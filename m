Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6291CA0ED3
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Sep 2024 05:22:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=95URPDe/wuWbHAdEH6RL3p64F3i0bRLh9/ZMdfyPqs8=; b=EaffLkfQE/O1iJ
	0nO4BVDhbyZaXbMJ9l+rxzMDeyHSvk406o763F4zanh2YDyaTq52MvMS7kSVuvRuxsTHOmg38Wk/7
	2340rXvJGvqCWgwi8JkGifevVd6CqO5q5iwCfXJlZlo3lEy37TddcnzAy8dF/XAYyNa/KJic9qMgA
	VuSXrldQsYqPWfBoTulaOnkm9dbPiJDLjoehpZpmAuLp0RPDxAIyJkrjJnQS29PXgHgOeDQmJUZPR
	QPkOHsjo1WMt3qixClfDsQHLejJNVtI8Dj/d/79L/Sx1l62qXC1LWDkAKwjz6myam0ERKAqVaZWVA
	5d1vlHL6HgEALJLMxMxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sliTC-00000002tba-2hvy;
	Wed, 04 Sep 2024 05:22:18 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sliSG-00000002tX6-0Roy;
	Wed, 04 Sep 2024 05:21:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=0FiySO0ehAi2iikWHKUB4ZlYAWXZ+o7GoMT2M1CTeSI=; b=Wv
	Fo6HRMDncl5nsiz6wV007AXZL1lu65SAoBmZrWKLc9J1ldZzv6TadWQMvA6MBFguNWhbwtTipQMZV
	gXC5g8CfCXoHjoaD23vl2QXkIeoZP7Wdbs7c+vQa1yMqDvVQZO6j5hHr2pUvVPi/zVQkyKTW9XT1p
	XoF/5XcZwl4NZaw=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1sliRV-006Ujj-0O; Wed, 04 Sep 2024 07:20:33 +0200
Date: Wed, 4 Sep 2024 07:20:32 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Li Zetao <lizetao1@huawei.com>
Cc: Jakub Kicinski <kuba@kernel.org>, florian.fainelli@broadcom.com,
	olteanv@gmail.com, davem@davemloft.net, edumazet@google.com,
	pabeni@redhat.com, wens@csie.org, jernej.skrabec@gmail.com,
	samuel@sholland.org, heiko@sntech.de, yisen.zhuang@huawei.com,
	salil.mehta@huawei.com, hauke@hauke-m.de,
	alexandre.torgue@foss.st.com, joabreu@synopsys.com,
	mcoquelin.stm32@gmail.com, wellslutw@gmail.com,
	radhey.shyam.pandey@amd.com, michal.simek@amd.com,
	ajay.kathat@microchip.com, claudiu.beznea@tuxon.dev,
	kvalo@kernel.org, u.kleine-koenig@pengutronix.de,
	jacky_chou@aspeedtech.com, netdev@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-wireless@vger.kernel.org
Subject: Re: [PATCH net-next 09/12] net: ethernet: sunplus: Convert using
 devm_clk_get_enabled() in spl2sw_probe()
Message-ID: <65a6fdd6-5afc-47b6-ab24-3ba05007eb48@lunn.ch>
References: <20240831021334.1907921-1-lizetao1@huawei.com>
 <20240831021334.1907921-10-lizetao1@huawei.com>
 <20240903151649.1b466145@kernel.org>
 <b4f6e9ae-bda8-4496-82a7-de70004e2f29@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b4f6e9ae-bda8-4496-82a7-de70004e2f29@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_222120_164067_5262E985 
X-CRM114-Status: UNSURE (   9.74  )
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

T24gV2VkLCBTZXAgMDQsIDIwMjQgYXQgMDk6Mjc6MDZBTSArMDgwMCwgTGkgWmV0YW8gd3JvdGU6
Cj4gSGksCj4gCj4g5ZyoIDIwMjQvOS80IDY6MTYsIEpha3ViIEtpY2luc2tpIOWGmemBkzoKPiA+
IE9uIFNhdCwgMzEgQXVnIDIwMjQgMTA6MTM6MzEgKzA4MDAgTGkgWmV0YW8gd3JvdGU6Cj4gPiA+
ICsJY29tbS0+Y2xrID0gZGV2bV9jbGtfZ2V0X2VuYWJsZWQoJnBkZXYtPmRldiwgTlVMTCk7Cj4g
PiAKPiA+IFlvdSBjYW4gcmVtb3ZlIGNsayBmcm9tIHRoZSBkcml2ZXIgc3RydWN0IG5vdy4KPiBJ
IGRvbuKAmXQgcXVpdGUgdW5kZXJzdGFuZCB3aHkgY2xrIGNhbiBiZSByZW1vdmVkIGZyb20gdGhl
IGRyaXZlciBzdHJ1Y3QsCgpBZnRlciB5b3UgcGF0Y2gsIHdoZXJlIGlzIGl0IHVzZWQ/CgoJQW5k
cmV3CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
