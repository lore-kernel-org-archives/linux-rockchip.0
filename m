Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F151C369C2
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 May 2025 21:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tKEYNkkDxJaOf8fHU74/P72FWOgeTgKm4zu/9+Y28Y4=; b=xUQ90VQQjns4jJ
	owg1PdwjqbOkhmzFIDVF3D8mpSHLMLN9CzNJOdOPbr1AEtEW1LwDGw/P/dst4oKDmmaQGMjHV08H2
	Mv94mW6WvL7YkraR/8gv962pfWFR7SiLzCy5J6QzVrD6Wuls7yv7HCNNg8TWTYE7ES7sZGMwhjI2k
	pr8YmDuaz1B9O1eTjKHsvMhLDItcMMsKc8vdGIwZfKA+uqKntlq+7648eZbl/CgQdmpRiaUBCx81I
	1M2L+7swgSxKfc+tDDfJ2MvYDrXHG46idCUV/FH42ecpTOHWZEHkc9bbzrd4bVZxX8RNW3gHnUV6a
	TqgyoGwf0VQA/Tsl0pCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBK6x-00000004Vda-1Qxj;
	Sat, 03 May 2025 21:09:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBK51-00000004VYD-2JX6;
	Sat, 03 May 2025 21:07:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=gfWWm3z37dZisjAhfUtOyczLf2I0pzV8I3To02hyM8E=; b=VCqgJIU9EBQPWMZK9lEHQgSI+P
	LtwO/bRD4Y1+XxiS2+1jW+1/V1C4k/GUp/zaYDzUPE2AImcW6yIk7TlY/yke1gjkn/Dl/yXDECxBo
	lYvmNMuyY0iOVUSQUOYdAW+02qG/sqstcoXmP+d3KSuj0rLIQuFRL8uC/5D9Hjk0MsggQS59p04Np
	rAk39KqfUjvv/0ViLIw+GbqcSTvHO93XqleZSCNb8rAvv6yJfscjwqf/vBvFhXPd+c1QWbVbQaH/o
	ND8BZV/O719M9S/pol8RYs1xaHs4KzmH2EQu0HBocEJ33btfbv2oPQQSXh+jP2YbyHtdy6CZ/qd5E
	DpKhBttw==;
Received: from i53875bbc.versanet.de ([83.135.91.188] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uBK4r-0002b2-EY; Sat, 03 May 2025 23:07:17 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>
Cc: mripard@kernel.org, hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: rk3066_hdmi: switch to drm bridge
Date: Sat, 03 May 2025 23:07:16 +0200
Message-ID: <14210550.RDIVbhacDa@diego>
In-Reply-To: <20250428102309.1501986-1-andyshrk@163.com>
References: <20250428102309.1501986-1-andyshrk@163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250503_140727_590224_4215055E 
X-CRM114-Status: GOOD (  10.91  )
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

QW0gTW9udGFnLCAyOC4gQXByaWwgMjAyNSwgMTI6MjM6MDcgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBBbmR5IFlhbjoKPiBGcm9tOiBBbmR5IFlhbiA8YW5keS55YW5Acm9j
ay1jaGlwcy5jb20+Cj4gCj4gQ29udmVydCBpdCB0byBkcm0gYnJpZGdlIGRyaXZlciwgaXQgd2ls
bCBiZSBjb252ZW5pZW50IGZvciB1cyB0bwo+IG1pZ3JhdGUgdGhlIGNvbm5lY3RvciBwYXJ0IHRv
IHRoZSBkaXNwbGF5IGRyaXZlciBsYXRlci4KPiAKPiBOb3RlOiBJIGRvbid0IGhhdmUgdGhlIGhh
cmR3YXJlIHRvIHRlc3QgdGhpcyBkcml2ZXIsIHNvIGZvciBub3cKPiBJIGNhbiBvbmx5IGRvIHRo
ZSBjb21waWxhdGlvbiB0ZXN0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEFuZHkgWWFuIDxhbmR5Lnlh
bkByb2NrLWNoaXBzLmNvbT4KClRlc3RlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVj
aC5kZT4gI3JrMzA2Ni1tYXJzYm9hcmQKCldpbGwgaG9wZWZ1bGx5IGdldCB0byBhcHBseWluZyBp
dCB0b21vcnJvdy4KClRoYW5rcyBmb3IgdGhhdCBuaWNlIGNsZWFudXAKSGVpa28KCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
