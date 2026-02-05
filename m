Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7C06DEC1EB1
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Feb 2026 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0KIGAu3EITB4isRG1Dd+LF22yZYc6KA858njVmC+Lmo=; b=JouE9DHpedGfNk
	BxrwGpVmX/7gTHHGO1zYhe5paTG0E2YOEBe1AhrvCOuOrMfmw3XTKF2TlajbAaJRLP4ne9lxcOx+O
	zeepV8krE54K/FOeTmkw/N6/VSSykaRAeT0Dhntv/QBB6+S8hXlR26NKlmFDQ0AMqdNgdvabW8Fpz
	hwYGJhT9uZYqtc+H89YCB409lDZUGj+ozZ5IgCn2OHOKi2rJ4yLCex2R395sw88GoucZskw94pCfp
	A1hvaSNz3bDQvVFMv4zOyeOAFyn3ILNPSRt3593dOlG+RTP3xZAFKAg0GD0wxbuxz/bT/waz1ohtg
	aF9evk93KcUbjIN/JLNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnyoq-00000009uWj-2tqV;
	Thu, 05 Feb 2026 12:50:48 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnyom-00000009uVB-0FtR;
	Thu, 05 Feb 2026 12:50:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=wT0qu7L3vnnIYE49+ri/Zy0uJQR4ZsNRqa4iBhmuI7M=; b=a7mkXjf4LL5AgEXRoE2URl8R6v
	V0SZOFTlS11PqRt+J24lF89dz6lU8XCPJGCfnNUvrzx57QIL4pXQlxfm+TFsZbz0NrYt2zMtckL2D
	rXt5bL7n8mIF1kKxUtbACTaPfyOUNA8ikZ7vNfD6dT4kazpBqVtDokX/rT1LzabRKU70G6rtngotk
	jml4CTedCiY4fW9MfYUrXWAF5iAhlTVMRysCc1j/F9qFlcP5VswR2tifiL5CoB/N+J5/+dLt40qrs
	vg7e5CAlfhaDBRHRDI7yKzvs7GjKKGCytqSltdhxO6Nwpy2jR2RnH1ZA6NGZvse0wuimH6g1sNt1z
	qfUcQvWw==;
Received: from i53875afe.versanet.de ([83.135.90.254] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vnyoc-00765Y-H7; Thu, 05 Feb 2026 13:50:35 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>, Willy Tarreau <w@1wt.eu>
Cc: linux-rockchip@lists.infradead.org,
 Finley Xiao <finley.xiao@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH v3 3/3] nvmem: rockchip-otp: Add support for rk3562
Date: Thu, 05 Feb 2026 13:50:34 +0100
Message-ID: <3080333.vCJZsxu672@diego>
In-Reply-To: <20250728190154.GA24527@1wt.eu>
References: <20250415103203.82972-1-kever.yang@rock-chips.com>
 <20250415103203.82972-4-kever.yang@rock-chips.com>
 <20250728190154.GA24527@1wt.eu>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_045044_192386_16231574 
X-CRM114-Status: GOOD (  12.89  )
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

SGkgV2lsbHksCgpBbSBNb250YWcsIDI4LiBKdWxpIDIwMjUsIDIxOjAxOjU0IE1pdHRlbGV1cm9w
w6Rpc2NoZSBOb3JtYWx6ZWl0IHNjaHJpZWIgV2lsbHkgVGFycmVhdToKPiBPbiBUdWUsIEFwciAx
NSwgMjAyNSBhdCAwNjozMjowM1BNICswODAwLCBLZXZlciBZYW5nIHdyb3RlOgo+ID4gRnJvbTog
RmlubGV5IFhpYW8gPGZpbmxleS54aWFvQHJvY2stY2hpcHMuY29tPgo+ID4gCj4gPiBUaGlzIGFk
ZHMgdGhlIG5lY2Vzc2FyeSBkYXRhIGZvciBoYW5kbGluZyBvdHAgb24gdGhlIHJrMzU2Mi4KPiA+
IAo+ID4gU2lnbmVkLW9mZi1ieTogRmlubGV5IFhpYW8gPGZpbmxleS54aWFvQHJvY2stY2hpcHMu
Y29tPgo+ID4gU2lnbmVkLW9mZi1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBz
LmNvbT4KPiAKPiBTdWNjZXNzZnVsbHkgdGVzdGVkIHdpdGggSm9uYXMnIHBhdGNoZXMgb24gdG9w
IG9mIGl0IG9uIG15Cj4gUmFkeGEgRTIwQyAoUkszNTI4KToKPiAKPiBUZXN0ZWQtYnk6IFdpbGx5
IFRhcnJlYXUgPHdAMXd0LmV1PgoKYXMgeW91IHJlcGxpZWQgdG8gdGhlIHJrMzU2MiB2YXJpYW50
LCBkb2VzIHRoYXQgbWVhbiB0aGUgcmszNTI4CnVzZXMgdGhlIHNhbWUgdmFyaWFudCBkYXRhPwoK
VGhhbmtzCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
