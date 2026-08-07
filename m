Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69DC5C2A09B
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Aug 2026 13:13:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vmPplIg84ygW6rEH0gRAUQTCZi96M5Z8b6E9/LIMTYw=; b=fVQo56Q/+Lb85L
	nVzeCGX4UbLsZjHIi+5IeRfuf97trm8l6mjS0zVPNwjd7sBSEG4Ycx1X8LjgETnBEQzg652O3oEmh
	M/l6Qp3N+hGO8wI1jV36ZLfSVywDp/nZKIP8jBE/irSCDdkC1H6CvIFGbTWBcje6eKARspRouXJRB
	pyPD8iA42QUXDc7qQ1uCq9I40oRvBZc7C9TtO3WDefTVB85/d03G59YelXzeVVs7ha0tMdhAZGvFb
	2WfWgjOqSog6qvxw9lTsbt2xopu7AunJ24iP84p2+DpbnfIBdqNs36tafdUXuUY2kU5DGyAmQmJbq
	EeP/ewwPEZt5bN8O7TQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsKNi-000000085LG-0KmN;
	Fri, 07 Aug 2026 13:13:02 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsKNg-000000085KR-1q8J;
	Fri, 07 Aug 2026 13:13:00 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id F18E840322;
	Fri,  7 Aug 2026 13:12:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 902CE1F000E9;
	Fri,  7 Aug 2026 13:12:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786108379;
	bh=+L54xcPOgo3Tl3OhdKxub7XjEMxQHH+MtkMzQBJzPXo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=lvDs/XdRGELCpxPDY+CqZcFscBtADM91yf2QFo8Juvy9Xitth1PAXc+b+e5zbdSbB
	 GT/85QUi8gKbticjPvB42HXh7nk90rGn1SrNPryO+CyWR//oSWkPRYV0gwZ6xsQZh6
	 RkVGVs6LZhKMN1iuszhp4eJfF86/4its6Pj00LD9qEr6/lRD/PqmCJ913gcgyIzY8w
	 aGOFTyGoQ40vh+K3FHFzowidnrBQrxrtbIm4UywBkRw/rmFZ5I6Y49Yi5lhIGbZx/Z
	 YqAuD/0PLTPpGKZHlQOW4AFirL2A5S14JWb0h3jxTzg00rVvwZoD62iSw+wk9/Oe12
	 h0PLOXQxooOXw==
Date: Fri, 7 Aug 2026 15:12:50 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Algea Cao <algea.cao@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Thomas =?utf-8?Q?Niederpr=C3=BCm?= <dubito@online.de>, Simon Wright <simon@symple.nz>, 
	Diederik de Haas <diederik@cknow-tech.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v5 10/10] phy: rockchip: samsung-hdptx: Consistently use
 bitfield macros
Message-ID: <pemlt3unw2rp6womindyxpdpcw6xnrkn63xkhk26xns6iht42r@lee2spi4j5jo>
References: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
 <20260723-hdptx-clk-fixes-v5-10-8e786067865f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260723-hdptx-clk-fixes-v5-10-8e786067865f@collabora.com>
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

T24gVGh1LCBKdWwgMjMsIDIwMjYgYXQgMTA6NDE6NTNQTSArMDMwMCwgQ3Jpc3RpYW4gQ2lvY2Fs
dGVhIHdyb3RlOgo+IE1ha2UgdGhlIGNvZGUgbW9yZSByb2J1c3QgYW5kIGltcHJvdmUgcmVhZGFi
aWxpdHkgYnkgdXNpbmcgdGhlIGF2YWlsYWJsZQo+IGJpdGZpZWxkIG1hY3JvcyAoZS5nLiBGSUVM
RF9QUkVQLCBGSUVMRF9HRVQpIHdoZW5ldmVyIHBvc3NpYmxlLCBpbnN0ZWFkCj4gb2Ygb3BlbiBj
b2RpbmcgdGhlIHJlbGF0ZWQgYml0IG9wZXJhdGlvbnMuCj4gCj4gVGVzdGVkLWJ5OiBUaG9tYXMg
TmllZGVycHLDvG0gPGR1Yml0b0BvbmxpbmUuZGU+Cj4gVGVzdGVkLWJ5OiBTaW1vbiBXcmlnaHQg
PHNpbW9uQHN5bXBsZS5uej4KPiBUZXN0ZWQtYnk6IERpZWRlcmlrIGRlIEhhYXMgPGRpZWRlcmlr
QGNrbm93LXRlY2guY29tPiAgIyBOYW5vUEMtVDYgTFRTCj4gUmV2aWV3ZWQtYnk6IERtaXRyeSBC
YXJ5c2hrb3YgPGRtaXRyeS5iYXJ5c2hrb3ZAb3NzLnF1YWxjb21tLmNvbT4KPiBTaWduZWQtb2Zm
LWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29t
PgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNp
dmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPg
rqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
