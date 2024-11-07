Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C161D4336F
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Nov 2024 15:12:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ljQFsEHAZDe97X13aGKHSWFLrXHGwXDOnNbrYuos4ME=; b=W//c6dHAKpswVI
	b0yWNpFQgkmM4DUeMAzMG7wwCIcbL6/JQA0y2bNdQj1PGGUM7oqWjjqGluc7JAAbwGCvm+lubRbnt
	le7/J5dKlb8+sN5ee4C+kjefP/P7sRbV71vQWFd2IVeyPNMrTRMWlO6L9RsP7trT4G4nLQwj7WTJo
	aVPHBM1ejyAxztVPi2jq8+Zy2Qd5DeBvnMw80NlYOQ+uug85tlHopeI9C3LHxqyMEyzKAa8SkPHaN
	dIvNHBLRoC+dAj8I6jwypUeWwmNBDWDcHXBYKvyE6WRrz8F+KWU5mcwVSd3NXeyzpvcojUDvETXJz
	dx3+YKI4XYLfmJQfbDgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t94BO-00000007P3W-0O6S;
	Thu, 07 Nov 2024 15:12:26 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t94AJ-00000007Ori-151w
	for linux-rockchip@lists.infradead.org;
	Thu, 07 Nov 2024 15:11:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1730992276;
	bh=HBKzX96U7sDVHpeC5yhWKW4KghAqWyiEPx7ier2Dsl4=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=CSbWQbUCv7Mj7M/sCkFxcJnd6nL74U4c5a/I92TbnfZ+L+9GCUx9Qf1R/gH6s61V5
	 1qlUthsvXGnseJKNWjOieIflZGI5ZMZfk++FmXpza56eLWHPOS5s0MtzU4tyUqxgws
	 XDlwtNvmGvvSu0ST4F38OSKMor8egsTNaFZ6/p5Bu11ZjDS5t2Uk0f8a1GFZCV3H/q
	 EQhaFIfBctZvyGzLedxBw+LzkqTHMW8HH6QuJIgRYtZ4OG1NO0EfxkxrcR27CZWnaF
	 unai/LQkFhuwyglTer65Xpq9v3x4TCfM0ojLDdvkmnNcX8V+1u2x2czjKuLazFJiWe
	 VEelvyzTu2BPw==
Received: from nicolas-tpx395.localdomain (unknown [IPv6:2606:6d00:15:862e::580])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id A859817E36AF;
	Thu,  7 Nov 2024 16:11:14 +0100 (CET)
Message-ID: <2df57a64a4736dbfc25d514faac03d8f431d83f1.camel@collabora.com>
Subject: Re: [PATCH v6 00/11] media: rkvdec: Add H.264 High 10 and 4:2:2
 profile support
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Jonas Karlman <jonas@kwiboo.se>, Sebastian Fricke
	 <sebastian.fricke@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab	
 <mchehab@kernel.org>, Alex Bee <knaerzche@gmail.com>, Benjamin Gaignard	
 <benjamin.gaignard@collabora.com>, Detlev Casanova	
 <detlev.casanova@collabora.com>, Dan Carpenter <dan.carpenter@linaro.org>, 
	linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Date: Thu, 07 Nov 2024 10:11:13 -0500
In-Reply-To: <7ceb8209-c292-46bc-88e4-2e19a5ed5fda@kwiboo.se>
References: <20240909192522.1076704-1-jonas@kwiboo.se>
	 <71159f58-be8b-41a4-9fed-522e09a7a564@kwiboo.se>
	 <20241025103022.yuaepqxllwi7gghb@basti-XPS-13-9310>
	 <07674bcb4b7650c21bbb3dbe9855b2240444d4f3.camel@collabora.com>
	 <ab14cb57f3ef22c486afad9eb4aa9abec1b33dd2.camel@collabora.com>
	 <7ceb8209-c292-46bc-88e4-2e19a5ed5fda@kwiboo.se>
Organization: Collabora
User-Agent: Evolution 3.54.1 (3.54.1-1.fc41) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_071119_494464_A3B18916 
X-CRM114-Status: UNSURE (   7.54  )
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

SGkgSm9uYXMsCgpMZSB2ZW5kcmVkaSAyNSBvY3RvYnJlIDIwMjQgw6AgMjI6MTMgKzAyMDAsIEpv
bmFzIEthcmxtYW4gYSDDqWNyaXTCoDoKPiBPbiAyMDI0LTEwLTI1IDE5OjQ3LCBOaWNvbGFzIER1
ZnJlc25lIHdyb3RlOgo+ID4gTGUgdmVuZHJlZGkgMjUgb2N0b2JyZSAyMDI0IMOgIDA4OjU0IC0w
NDAwLCBOaWNvbGFzIER1ZnJlc25lIGEgw6ljcml0wqA6Cj4gPiA+IExlIHZlbmRyZWRpIDI1IG9j
dG9icmUgMjAyNCDDoCAxMjozMCArMDIwMCwgU2ViYXN0aWFuIEZyaWNrZSBhIMOpY3JpdMKgOgo+
ID4gPiA+IEhleSBKb25hcywKPiA+ID4gPiAKClsuLi5dCgo+ID4gCj4gPiBJJ20gZG9uZSwgdGhl
cmUgaXMgb25seSBjb3NtZXRpYyBjb21tZW50LCBpZiB5b3UgcmVzcGluIHF1aWNrbHksIEknbSBz
dXJlIHdlIGNhbgo+ID4gZ2V0IHRoaXMgb25lIGluIHNvb24uCj4gCj4gVGhhbmtzISwgSSB3aWxs
IHJlc3BpbiBhIHY3IHdpdGggdGhlIG5pdHMgZml4ZWQgbGF0ZXIgdGhpcyB3ZWVrZW5kIDotKQoK
SSBzaW1wbHkgd2FudGVkIHRvIGNoZWNrIHdpdGggeW91IGlmIGV2ZXJ5dGhpbmcgd2FzIGdvaW5n
IHdlbGwgd2l0aCB0aGlzIFY3LgpGZWVsIGZyZWUgdG8gcGluZyBmb3IgaGVscC4KCk5pY29sYXMK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
