Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D089AE674AF
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Dec 2025 13:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qOQhEnk3IhpDpxj1/rxmDhPQs3NUwyuwQbYdv6mZGF0=; b=1Kx/8wxN7Ksyz8
	n2QGN7/5YJ4Sv3fNkXyPXeP+5u+MDBtsXpAGI4bNZyFQXq2uSVHBzhvb+u8+SeznFfwB018BlEVqO
	DLf+n/M40v/3l2OnjPPtMtYDZN/Uuuu17gxj79nb6HiNUK7R0UoP/4G+sDcuFEixEBF+k/CPNubFT
	/ZxYOymwcsRMPpV6pPapBrHBUK6ICd0WxgDTLCWM6Q1sz22KotWUF859LEly8xEruVBRLaOTK5ywF
	mOMAfhRE7y0CJuGxGLE3IfSrgrxbouEwvYj3+RYXk0oH2VVkYV5bDdFQtzIBhZf0XJV34ZcR7S+Ty
	2gesp5B5k9k490K4/BfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXg8l-0000000DpNP-25PB;
	Mon, 22 Dec 2025 13:39:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXg8i-0000000DpMO-2d9W;
	Mon, 22 Dec 2025 13:39:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=1c9ZPZRZkz14B3cF0kxLCmvcGTxuNJZNvYxvmg4ZTGA=; b=AoDgwDWB34drisoKS5l4zKoqMc
	Y8Hnj8eBJLITuzJODxvKjNOlJM5BmceV50B4Kr9gs/KVcCtSdA5zdbOQD+ZsAOsfgPdjWPiOi0kZz
	VwhYBW4oPcymH7XkKJlRBsqYSeXJf6lA+LgS9lDre07903cS1hQMQdkwcitBhirZmZnmucjxGmnfl
	+Xl49gMP8don2KHSxGFnmooxUDvo2qLoqKyITDcuKQQQV4dLAuvyB9YhLIs/gNWLHkKEv7Rwm0NKm
	YBml0noXznMTHK7MX42R9OFqBc25RxPPIBxlf3a4FC04F3xbO+3WCLmZGtTiP95tf0UlsDGzAuNs5
	DqlE+k3Q==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXfHE-0000000F3S5-2NDa;
	Mon, 22 Dec 2025 12:44:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=1c9ZPZRZkz14B3cF0kxLCmvcGTxuNJZNvYxvmg4ZTGA=; b=O7YYw/E5YjomHWfZoJ7vD3dncy
	KzvaCkoIAq5An6hIlP6SiqkrKsZIG4DkoWc3ip7d/UDT46max9CrdQmtNsmEiOrxeaucRbK0E8d5q
	3PMWS0Xkscx98wmUYiv5Lz8NUmOtLM3kELki8YHZ/uvUCuBhXonOmxl1WYyuEqOON6WznjJ2pvddG
	XCDSBAgBXQicUbQnZElPczJ++2eQUbzzWHW8yf+k7lo4xuGo2gqdrRh0OKx+MWr3eS1iKKOfqV1ax
	qBf4vllJMezhHj67Qo62y2yluC5pU/kTrv7cZNmbCgraWji41QCeczhHrLrtGM4ZiamH4Svn9LdrS
	wOaUv7lQ==;
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vXg8c-0005vi-1b; Mon, 22 Dec 2025 14:39:50 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: enable saradc for ArmSoM Sige5
Date: Mon, 22 Dec 2025 14:39:49 +0100
Message-ID: <3767252.NG923GbCHz@phil>
In-Reply-To: <aUlHa-QhCLOk8AGa@venus>
References: <20251220100010.26643-1-amadeus@jmu.edu.cn>
 <20251220100010.26643-3-amadeus@jmu.edu.cn> <aUlHa-QhCLOk8AGa@venus>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251222_124440_663598_B9D5B87E 
X-CRM114-Status: GOOD (  15.19  )
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

QW0gTW9udGFnLCAyMi4gRGV6ZW1iZXIgMjAyNSwgMTQ6MzI6NTMgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBTZWJhc3RpYW4gUmVpY2hlbDoKPiBIaSwKPiAKPiBPbiBTYXQs
IERlYyAyMCwgMjAyNSBhdCAwNjowMDoxMFBNICswODAwLCBDaHVrdW4gUGFuIHdyb3RlOgo+ID4g
QWRkIEFEQyBzdXBwb3J0IHRvIEFybVNvTSBTaWdlNSBib2FyZC4KPiA+IAo+ID4gU2lnbmVkLW9m
Zi1ieTogQ2h1a3VuIFBhbiA8YW1hZGV1c0BqbXUuZWR1LmNuPgo+ID4gLS0tCj4gCj4gVGhlIHJl
ZmVyZW5jZSB2b2x0YWdlIGlzIGRpZmZlcmVudCBiZXR3ZWVuIHRoZSBkaWZmZXJlbnQgYm9hcmQK
PiByZXZpc2lvbnMuIE9sZGVyIGJvYXJkcyAoMS4xIGFuZCAxLjIpIGhhdmUgU0FSQURDX0FWREQx
VjggY29ubmVjdGVkCj4gdG8gJnZjY2FfMXY4X3MwLCBidXQgbmV3ZXIgYm9hcmRzICgxLjMpIHVz
ZSBWQ0NBMVY4X1BMRE8yX1MwCj4gaW5zdGVhZC4gSSBndWVzcyBjb25zaWRlcmluZyAmdmNjYTF2
OF9wbGRvMl9zMCBpcyBtYXJrZWQgYXMgYWx3YXlzCj4gb24sIHdlIGNhbiBpZ25vcmUgdGhpcyBk
aWZmZXJlbmNlLCBidXQgSSB0aGluayBpdCdzIHdvcnRoIGEgY29tbWVudAo+IGluIHRoZSBEVCBh
bmQgdGhlIGNvbW1pdCBkZXNjcmlwdGlvbi4gT3RoZXJ3aXNlOgo+IAo+IFJldmlld2VkLWJ5OiBT
ZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KCmRhcm4s
IHRvbyBsYXRlIGZvciB0aGlzIG9uZSAtIHNob3VsZCd2ZSB3YWl0ZWQgbG9uZ2VyIGZvcgp0aGlz
IHBvc3NpYmxlIFJiIDotKSAuLi4gSSBkaWQgYWRkIHRoZSBvdGhlcnMgYmVmb3JlIHB1c2hpbmcK
dGhvdWdoLgoKCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
