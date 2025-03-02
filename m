Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7714C19F32
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Mar 2025 17:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NcXiNCuIZ7pRwu+Ecjf6OWIL5K4U8HlCLfhAAnpe9co=; b=sHGn6+WzqN8k1S
	25vOaBD5iYTyLv4iXUNZoeZaRv6RrZTgLvb8ShEEZ5vIk6wV3TcraoZ8ukvgRsNm5X6uWnlXT09Sv
	4BE+Ijss7xRjh2qfU4g5pV4doQYXXvSrdlebQp3roWNlMS/wFapZShbN915S61YQHiojRTZtBxXuB
	GNX6PTI9G7F+Qj6xYhqKKrxBlhJiHaSGmRdKfWOcerzKjLWgYIb0GTDXSLCL4hhUfpa4z0DjfVQpm
	Y/jKD6jGV6L8PRBqOh7NolJ5vKlwUlFcLm9zCGM4GJ8VO2s1jgi/Cu7i95ZrMggHZjgb4ZgE120is
	Sj1JrVZ8nW7/eD2rM0Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tomlN-0000000GPE8-2u1W;
	Sun, 02 Mar 2025 17:06:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tomdS-0000000GOE3-0xl2;
	Sun, 02 Mar 2025 16:57:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=BdhUxgZQyYSaxCMjUUfFB40V7qLBLiDr0YrQlK0U/f0=; b=Flye+ceYOqu8AECHGRU2ak4hIW
	Qd4mqblJcQpkCy9IhlJ/JEF2V53sDFWmdou971t+zeXIBACqqtlvwpJ0543vrieYUw7UPRqlQx149
	0LYhLzy4cF3wd3PiDO2ablmr1X3qOTNkmFurAdhHvTqIX1N3oWUvMsn0E9IC0IknnNOyQbBdLhasc
	6MT7E8gNJ0BtgDvSGHzlBHxJJlSYxW/83kxjLlM8szUXs7ipAOwZ221GQin52VdnMNj3o/nzc+UW8
	I9i3/n1r4YO5jJk5Zx50j+HQfNpHg3G7pnstz2SusI+aW2XnQxe26eqDlQXhBcWWeIcWGT5okwrQZ
	e9A8IvXw==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tomdJ-0004JL-0R; Sun, 02 Mar 2025 17:57:41 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Finley Xiao <finley.xiao@rock-chips.com>,
 kernel test robot <lkp@intel.com>
Cc: llvm@lists.linux.dev, oe-kbuild-all@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Tao Huang <huangtao@rock-chips.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>,
 Kever Yang <kever.yang@rock-chips.com>
Subject: Re: [rockchip:v6.15-clk/next 10/10]
 drivers/clk/rockchip/clk-rk3562.c:1081:31: error: incomplete definition of
 type 'struct platform_device'
Date: Sun, 02 Mar 2025 17:57:39 +0100
Message-ID: <870511149.0ifERbkFSE@diego>
In-Reply-To: <202503021302.FjsycBI2-lkp@intel.com>
References: <202503021302.FjsycBI2-lkp@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250302_085750_289721_3BD92A32 
X-CRM114-Status: UNSURE (   9.95  )
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

QW0gU29ubnRhZywgMi4gTcOkcnogMjAyNSwgMDY6NTM6MjMgTUVaIHNjaHJpZWIga2VybmVsIHRl
c3Qgcm9ib3Q6Cj4gdHJlZTogICBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgv
a2VybmVsL2dpdC9tbWluZC9saW51eC1yb2NrY2hpcC5naXQgdjYuMTUtY2xrL25leHQKPiBoZWFk
OiAgIDM2YzdmZGM4ZjU4NWFjYmYxMWM4ZTViYzExMmZhOWQ4ZWY3NTE0NmEKPiBjb21taXQ6IDM2
YzdmZGM4ZjU4NWFjYmYxMWM4ZTViYzExMmZhOWQ4ZWY3NTE0NmEgWzEwLzEwXSBjbGs6IHJvY2tj
aGlwOiBBZGQgY2xvY2sgY29udHJvbGxlciBmb3IgdGhlIFJLMzU2Mgo+IGNvbmZpZzogYXJtNjQt
YWxsbW9kY29uZmlnIChodHRwczovL2Rvd25sb2FkLjAxLm9yZy8wZGF5LWNpL2FyY2hpdmUvMjAy
NTAzMDIvMjAyNTAzMDIxMzAyLkZqc3ljQkkyLWxrcEBpbnRlbC5jb20vY29uZmlnKQo+IGNvbXBp
bGVyOiBjbGFuZyB2ZXJzaW9uIDE4LjEuOCAoaHR0cHM6Ly9naXRodWIuY29tL2xsdm0vbGx2bS1w
cm9qZWN0IDNiNWI1YzFlYzRhMzA5NWFiMDk2ZGQ3ODBlODRkN2FiODFmM2Q3ZmYpCj4gcmVwcm9k
dWNlICh0aGlzIGlzIGEgVz0xIGJ1aWxkKTogKGh0dHBzOi8vZG93bmxvYWQuMDEub3JnLzBkYXkt
Y2kvYXJjaGl2ZS8yMDI1MDMwMi8yMDI1MDMwMjEzMDIuRmpzeWNCSTItbGtwQGludGVsLmNvbS9y
ZXByb2R1Y2UpCj4gCj4gSWYgeW91IGZpeCB0aGUgaXNzdWUgaW4gYSBzZXBhcmF0ZSBwYXRjaC9j
b21taXQgKGkuZS4gbm90IGp1c3QgYSBuZXcgdmVyc2lvbiBvZgo+IHRoZSBzYW1lIHBhdGNoL2Nv
bW1pdCksIGtpbmRseSBhZGQgZm9sbG93aW5nIHRhZ3MKPiB8IFJlcG9ydGVkLWJ5OiBrZXJuZWwg
dGVzdCByb2JvdCA8bGtwQGludGVsLmNvbT4KPiB8IENsb3NlczogaHR0cHM6Ly9sb3JlLmtlcm5l
bC5vcmcvb2Uta2J1aWxkLWFsbC8yMDI1MDMwMjEzMDIuRmpzeWNCSTItbGtwQGludGVsLmNvbS8K
CkkndmUgImZpeGVkIiB0aGUgZXJyb3IgYnkgbW92aW5nIHRoaXMgbmV3IGRyaXZlciB0byBob3cg
d2UgaGFuZGxlIGFsbApvdGhlciBjbG9jayBkcml2ZXJzIGFscmVhZHkgLSBub3QgYWxsb3dpbmcg
dGhlbSB0byBidWlsZCBhcyBtb2R1bGUuCgpJJ3ZlIGFtZW5kZWQgdGhlIG9yaWdpbmFsIGNvbW1p
dCBmb3IgdGhhdCBhbmQgYWxzbyBpbmNsdWRlZCB0aGUgbGtwIHJlcG9ydC4KCgpIZWlrbwoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
