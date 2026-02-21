Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93AB2C61DE5
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Feb 2026 14:59:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F9Lsb0BoA2hXuUSXeFf/Fcrephy8K9ovVpuFYRe+AE4=; b=tV5jKM5Ry06Lsn
	BMVZR9/mbS+EKMZjTvc5D88WIa18GtNunHZHD23SkGSL8drokQcylq1+UoOh51jUNPC4PjqwOJGYx
	8RYQO4H87hb/y9lNc4jMbmzryQZf1Lu9nc8pt0RG9om+gsj/diks32YIhIpzue6rNywTVzNp4pjzn
	rVVOKtw9+shQyBaMsh0u910KyvnXbwOhZs5X54VUImOldRkpHHER2yAG5qwmjx2ANpDOu/mT3zz9s
	WxRvsNX9zjA+Fjv52zYQE47F+eeIvF+B5XPmzzO9RiRQTBOR4Fl9kIYroSfgHdAxY/gQGxP/Lb99r
	plVcGIi0FH451V+7k7/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtoS5-0000000G7Mm-0hHd;
	Sat, 21 Feb 2026 14:59:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vtoS2-0000000G7M0-1JmA;
	Sat, 21 Feb 2026 14:59:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=xA22utvgRUdA5DBTKJr5qtockNVUiH7ZtWJLs1w/PPQ=; b=Wx3BCHB/7X48J37ZF46L83Wl/k
	ueplWD6JS0yylKYIteTeSvP2nHfEOmBcGASYFdlda8y9op5ARPjGtTxtiV9MkM0IO4dVuQz82aIqp
	5hoHZLupoQ4jd2xFv8NdcdItb0JUidFbUxVq6/OKaBFTLjw3yvb91WSika0/bYal1pM3I+0g0U0+p
	ZzniUxNbLvFje/SCmuMnsuTEqaW7TgM+r6AvPukQ9w5GPttUynX+eKMcJy0q21Rc3/R4yd7C2X9B4
	Ao7KyYRNCPibJ899dmpbjq0YvEl7FHWrVowUqqDgUTNNIK0+oVWWPdZPgCBY97ekIsVSt9xbL2Di1
	zTYcINOA==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: robh@kernel.org, WeiHao Li <cn.liweihao@gmail.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 WeiHao Li <cn.liweihao@gmail.com>
Subject: Re: [PATCH v2 1/4] phy: rockchip: inno-usb2: Add usb2 phy support for RK3368
Date: Sat, 21 Feb 2026 15:59:18 +0100
Message-ID: <4689639.clyjiGRsXx@diego>
In-Reply-To: <20250909132958.26423-2-cn.liweihao@gmail.com>
References: <20250909132958.26423-1-cn.liweihao@gmail.com>
 <20250909132958.26423-2-cn.liweihao@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260221_065922_356393_BEAD07BF 
X-CRM114-Status: UNSURE (   7.66  )
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

SGksCgpBbSBEaWVuc3RhZywgOS4gU2VwdGVtYmVyIDIwMjUsIDE1OjI5OjU1IE1pdHRlbGV1cm9w
w6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJpZWIgV2VpSGFvIExpOgo+IFJLMzM2OCBoYXMgb25lIFVT
QjIuMCBQSFkgd2l0aCB0d28gcG9ydHMuIFRoaXMgYWRkcyBkZXZpY2Ugc3BlY2lmaWMgZGF0YQo+
IGZvciBpdC4gRGV2aWNlIHNwZWNpZmljIGRhdGEgZ2V0IGZvcm0gcm9ja2NoaXAgZG93bnN0cmVh
bSBzb3VyY2UgWzFdLgo+IAo+IFsxXSBodHRwczovL2dpdGh1Yi5jb20vcm9ja2NoaXAtbGludXgv
a2VybmVsL2Jsb2IvZGV2ZWxvcC00LjQvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlw
LWlubm8tdXNiMi5jI0wyODA1Cj4gCj4gU2lnbmVkLW9mZi1ieTogV2VpSGFvIExpIDxjbi5saXdl
aWhhb0BnbWFpbC5jb20+CgpqdXN0IHJlYWxpemVkLCB0aGlzIHBhdGNoIGlzIG1pc3NpbmcgdGhl
IHBoeSBtYWludGFpbmVyL3Jldmlld2VyIGFzCnJlY2lwaWVudCwgdGhlIHBoeS1saXN0IGlzIGxp
a2VseSBub3QgZW5vdWdoLgoKUGxlYXNlIHVzZSBzY3JpcHRzL2dldF9tYWludGFpbmVyLnBsIGZv
ciB0aGUgd2hvbGUgc2VyaWVzLCB0byBnZXQgbmVjZXNzYXJ5CnBlb3BsZS4gQmVjYXVzZSB0aGlz
IHBoeS1wYXRjaCBuZWVkcyB0byBnbyB0aHJvdWdoIHRoZSBwaHkgdHJlZS4KClRoYW5rcwpIZWlr
bwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
