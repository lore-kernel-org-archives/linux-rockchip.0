Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91B79C27C79
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 20:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=50Gga4AZJU4zL1iEwDz1OS59452T9RHNmP59OkYaTQo=; b=SPIlOxRUjBeZD7
	6fOvxQ4J2wgF1JRnG2B5WvFz/vz837x8BZWKJLUTa8KnCmyXlAmW90lwH0MdRSzb2gAG2RkUeXJZQ
	NVw47WbQX3qOlum1lDCiDPv7MjsgLw41ur5i9+0VTWgGGFfT9nUPJZYes7A5zoLWQQTEEuvGbp9hE
	KXHWU6w67AN6U374KqT5oGZVBULZdBsQH07ZzRLBCiNpTUte4+SY4jzDksSw711Ctj2M1hNrz6Uos
	+ko9Si7YKDPX1OcfZ72ESuJqDxGUioluQWmjhxHcUvaij1StrTF4oAa+CVG4X+m1HLD0sXTtFvBSj
	g+DELXdBOVcQgVS/C3jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJJJI-0000000Caol-2FOw;
	Mon, 17 Jun 2024 20:50:40 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJJJE-0000000CamD-35Bg
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Jun 2024 20:50:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1718657414;
 bh=MdDBTGJOD4DdU6inKQlvAasJgqrrJixgcL+TEIP3eQw=;
 b=PxYk1IamHYUgmtr0pYTSbeD9f2l8ivE953U5ON6Q0l+AbNsV7h0T6+Bweph6P5Kh89wM8EaYd
 s0aegGRFeyX+rsdR6mr1f0x93RnQ1yp0OaTABCedjE3rShZW2F9WFQ7sESTuXhBMg19qj8y8M5r
 cOx+rwmLBp90yz2CHWFCpEyeJ+vu/g/v4qCTZsvehuW/WFZsCZbeiNdIOKMV3QONIkc3b4yC87z
 OC9m+6YNmaizp4IFqgKJZjwnBwwBMT5/6tF86fFM5oUqEuIhLw9rACfsMLZGzlF0cT8fiFALyWs
 6Q7JQhHes0bYZWQdpW3P1vmuuRg6KawNYxNcRZip8LLA==
Message-ID: <6a2293ec-1506-4fe7-a3cf-fcfc594c19cc@kwiboo.se>
Date: Mon, 17 Jun 2024 22:50:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 02/13] clk: rockchip: Set parent rate for DCLK_VOP clock
 on RK3228
To: "=?UTF-8?Q?Heiko_St=C3=BCbner?=" <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Yakir Yang
 <kuankuan.y@gmail.com>, Jeffy Chen <jeffy.chen@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <20240615170417.3134517-1-jonas@kwiboo.se>
 <20240615170417.3134517-3-jonas@kwiboo.se> <19757196.sIn9rWBj0N@diego>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <19757196.sIn9rWBj0N@diego>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 6670a183c06db152bdd50c23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_135037_517751_F60AC980 
X-CRM114-Status: UNSURE (   6.89  )
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

SGkgSGVpa28sCgpPbiAyMDI0LTA2LTE3IDIyOjMwLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBB
bSBTYW1zdGFnLCAxNS4gSnVuaSAyMDI0LCAxOTowMzo1MyBDRVNUIHNjaHJpZWIgSm9uYXMgS2Fy
bG1hbjoKPj4gU2ltaWxhciB0byBEQ0xLX0xDREMgb24gUkszMzI4LCB0aGUgRENMS19WT1Agb24g
UkszMjI4IGlzIHR5cGljYWxseQo+PiBwYXJlbnRlZCBieSB0aGUgaGRtaXBoeSBjbGsgYW5kIGl0
IGlzIGV4cGVjdGVkIHRoYXQgdGhlIERDTEtfVk9QIGFuZAo+PiBoZG1pcGh5IGNsayByYXRlIGFy
ZSBrZXB0IGluIHN5bmMuCj4+Cj4+IFVzZSBDTEtfU0VUX1JBVEVfUEFSRU5UIGFuZCBDTEtfU0VU
X1JBVEVfTk9fUkVQQVJFTlQgZmxhZ3MsIHNhbWUgYXMgdXNlZAo+PiBvbiBSSzMzMjgsIHRvIG1h
a2UgZnVsbCB1c2Ugb2YgYWxsIHBvc3NpYmxlIHN1cHBvcnRlZCBkaXNwbGF5IG1vZGVzLgo+Pgo+
PiBGaXhlczogMGE5ZDRhYzA4ZWJjICgiY2xrOiByb2NrY2hpcDogc2V0IHRoZSBjbG9jayBpZHMg
Zm9yIFJLMzIyOCBWT1AiKQo+PiBGaXhlczogMzA3YTJlOWFjNTI0ICgiY2xrOiByb2NrY2hpcDog
YWRkIGNsb2NrIGNvbnRyb2xsZXIgZm9yIHJrMzIyOCIpCj4+IFNpZ25lZC1vZmYtYnk6IEpvbmFz
IEthcmxtYW4gPGpvbmFzQGt3aWJvby5zZT4KPiAKPiBkaWQgeW91ciBtYWlsZXIgaGF2ZSBhIGhp
Y2t1cD8gU29tZWhvdyBJIGdvdCBwYXRjaDIgKG9ubHkgdGhpcyBvbmUpCj4gMiB0aW1lcwo+IAoK
U3RyYW5nZSwgbm90IHNvbWV0aGluZyBJIGtub3cgYWJvdXQsIGVhY2ggcGF0Y2ggMS0xMyBhcmUg
bGlzdGVkIGFzIDI1MApBY2NlcHRlZCAoaGVpa29Ac250ZWNoLmRlKSBhbmQgcGF0Y2hlcyBhcnJp
dmVkIHRvIHRoZSBNTCBhbmQgcGF0Y2h3b3JrOgoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxs
LzIwMjQwNjE1MTcwNDE3LjMxMzQ1MTctMS1qb25hc0Brd2lib28uc2UvCmh0dHBzOi8vcGF0Y2h3
b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTM0OTI2LwpodHRwczovL3BhdGNod29yay5rZXJu
ZWwub3JnL2NvdmVyLzEzNjk5MzIyLwoKUmVnYXJkcywKSm9uYXMKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
