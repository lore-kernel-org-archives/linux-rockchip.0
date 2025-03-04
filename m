Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C06B2C021B8
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Mar 2025 21:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bqibWuwlzJo8xVesiLJR9NaaBPP1UGfFdlolTYKLuN4=; b=0AM44/dsr1qMRP
	TQs7UcbJqoBNnivgA+GkSNde2hpMWyWAhVafIrqBAxgK5y2lHuHu6Ct+dY0ehpZ5EsB9dO7iPG7N1
	I1TSdl/kZ3eRV/7H2vjBSjOxsd6sNBM46JkXWwO/wYlQA+qYqyRun+DUEVxMfxh3NKexBKjn/q1hi
	x/xJpK8o6XMlTbV0rpvymbxe3nC1aAOZUDEp+ZIIV2iFPELrO0vA4JyGCFQZJtiVpOmg+VBIWjJIa
	mavpkrWNcjWS+aOCYAcvCwdtKctTvv9XCWlU+MNmHKSDu/FbTcXVnGDJ3Buh6djK3KHSgjFr/RKIn
	0CVNtKyA0OXykwZI2wYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpa9n-00000006KqW-0Ti6;
	Tue, 04 Mar 2025 21:50:31 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpa6i-00000006KZj-1b2L;
	Tue, 04 Mar 2025 21:47:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Type:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=uxNa2xeS196LOQdsSVTCf0UBNg0lInB0Ngjf92IZMMQ=; b=kEUS1jn0x7GxLZ9luvznJLXhMS
	/kWop1uCm40nx+xhjJvD7XNL+uPF2k0svAqkblZvYzcs2r4sbo2zhk3db3UVZSDCsayMP/N1DkPz7
	boZkvh7JKivduUM8oSAlHO4VH3Y1z0XCdA82XNGVLq/9My4fGHcVZUPkRYX6PUtK+34VXQVS2mrA+
	pm5hgnjAw2Z0i5ib/YrWE9ncKh09KJX0IEqYxJ2x1/DY119MIVzrsF5+6qIX676GJA5Ag2oC2zx6W
	nHxcVoCxSkZOvGsGXTfmRCceyAylcy57eTb9HqR/TnHKjsbJkgIdWJMl9l+bRqosX/WwSiKu77bTA
	1XXof2VA==;
Received: from gloria.sntech.de ([185.11.138.130])
	by casper.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpa6f-000000049T3-17rW;
	Tue, 04 Mar 2025 21:47:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=uxNa2xeS196LOQdsSVTCf0UBNg0lInB0Ngjf92IZMMQ=; b=2lT3k8ic7danUGuqxwuLtt6Iw8
	t6+7hypSeCHM7GIXT3rORlcEucP11RGm/xAEkiaodt3/JNB7pEc5SmliOv90QkC3ZHs8nX6kTVeEw
	9rJqE3p85oGvqhdq6UEWGDTQjHhkITxRNlax1rnIXngZdrnc2kLSFLbkDU3xKh6wuWIYczPohm9Bc
	tNUWr7Be/mKuirvsFU3fWTdrDgjXSUooU1/Nk7rgOAwcvz0v+VOulyfGBY5OS4nmkSRm1xPH8Zc+T
	ByGnUVS7Dx9+o46rtAEppq8QgUTiQji1M+TIgsTMWl5ZWYuv4klJdsBUge5z1hbtHMZFcGMr/5dEN
	QImZ8Dwg==;
Received: from i53875a38.versanet.de ([83.135.90.56] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tpZdB-0006GI-Qt; Tue, 04 Mar 2025 22:16:49 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Andy Yan <andyshrk@163.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 detlev.casanova@collabora.com, linux-rockchip@lists.infradead.org,
 Andy Yan <andy.yan@rock-chips.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 0/3] Add display subsystem dt node on rk3576
Date: Tue, 04 Mar 2025 22:16:49 +0100
Message-ID: <2627393.Mh6RI2rZIc@diego>
In-Reply-To: <lfmhqurnpjmfy6pfjxd5aczxujislv2p5bsurcbl7capyt7zv3@hy2twvjj53uz>
References: <20241231095728.253943-1-andyshrk@163.com>
 <173564980410.21979.2947276365464229762.robh@kernel.org>
 <lfmhqurnpjmfy6pfjxd5aczxujislv2p5bsurcbl7capyt7zv3@hy2twvjj53uz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250304_214717_358122_F7E29EE6 
X-CRM114-Status: GOOD (  16.26  )
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

QW0gRGllbnN0YWcsIDQuIE3DpHJ6IDIwMjUsIDE1OjQ3OjI4IE1FWiBzY2hyaWViIFNlYmFzdGlh
biBSZWljaGVsOgo+IEhlbGxvLAo+IAo+IE9uIFR1ZSwgRGVjIDMxLCAyMDI0IGF0IDA2OjU3OjIx
QU0gLTA2MDAsIFJvYiBIZXJyaW5nIChBcm0pIHdyb3RlOgo+ID4gT24gVHVlLCAzMSBEZWMgMjAy
NCAxNzo1NzoxNyArMDgwMCwgQW5keSBZYW4gd3JvdGU6Cj4gPiA+IEFzIHRoZSBWT1BbMF0gYW5k
IEhETUlbMV0gZHJpdmVyIGhhdmUgYWxyZWFkeSBiZWVuIHN1Ym1pdHRlZCBmb3IgcmV2aWV3Lgo+
ID4gPiBUaGlzIHNlcmllcyBlbmFibGUgaGRtaSBkaXNwbGF5IG9uIHNpZ2U1IGJvYXJkLgo+ID4g
PiAKPiA+ID4gWzBdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIwMjQx
MjMxMDkwODAyLjI1MTc4Ny0xLWFuZHlzaHJrQDE2My5jb20vVC8jdAo+ID4gPiBbMV0gaHR0cHM6
Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvMjAyNDEyMzEwOTQ0MjUuMjUzMzk4LTEt
YW5keXNocmtAMTYzLmNvbS9ULyN0Cj4gPiA+IAo+ID4gPiBDaGFuZ2VzIGluIHYzOgo+ID4gPiAt
IFNwbGl0IGZyb20gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvMzMzMDU4
Ni5hZU5KRllFTDU4QGRpZWdvL1QvI3QKPiA+ID4gCj4gPiA+IEFuZHkgWWFuICgzKToKPiA+ID4g
ICBhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIHZvcCBmb3IgcmszNTc2Cj4gPiA+ICAgYXJtNjQ6
IGR0czogcm9ja2NoaXA6IEFkZCBoZG1pIGZvciByazM1NzYKPiA+ID4gICBhcm02NDogZHRzOiBy
b2NrY2hpcDogRW5hYmxlIGhkbWkgZGlzcGxheSBvbiBzaWdlNQo+ID4gPiAKPiA+ID4gIC4uLi9i
b290L2R0cy9yb2NrY2hpcC9yazM1NzYtYXJtc29tLXNpZ2U1LmR0cyB8ICA0NyArKysrKysrCj4g
PiA+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni5kdHNpICAgICAgfCAxMjYg
KysrKysrKysrKysrKysrKysrCj4gPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDE3MyBpbnNlcnRpb25z
KCspCj4gPgo+ID4gWy4uLl0gKGEgYnVuY2ggb2Ygd2FybmluZ3MgZHVlIHRvIGRlcGVuZGVuY3kg
cGF0Y2ggc2VyaWVzIG5vdCB5ZXQKPiA+IGJlaW5nIGluIGxpbnV4LW5leHQpCj4gCj4gSSB0aGlu
ayBhbGwgZGVwZW5kZW5jaWVzIGhhdmUgbGFuZGVkIG5vdy4gQnV0IGl0IG1pZ2h0IGJlIHNlbnNp
YmxlCj4gdG8gZG8gYSBxdWljayByZXNlbmQgY29uc2lkZXJpbmcgaG93IG9sZCB0aGlzIGlzLgo+
IAo+IFdvdWxkIGJlIG5pY2UgdG8gaGF2ZSBpbml0aWFsIFJLMzU3NiBIRE1JIHN1cHBvcnQgaW4g
Ni4xNSA6KQoKbm93IHdlIGNhbiA6LSkKClRoZSB1cGRhdGUgd2FzIG5vdCB0aGF0IGRpZmZpY3Vs
dCwgc28gZGlkIGl0IG15c2VsZiB3aGVuIGFwcGx5aW5nLgoKCkhlaWtvCgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
