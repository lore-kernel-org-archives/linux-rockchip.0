Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE7C6ECAAA1
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Sep 2022 16:12:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hPpmR1OghlXdZli8OrcB0zVRMAW19qScSCOVp/8FUtc=; b=qLkX1fC+drAYIv
	nCTIR4TDhDvsRjxKUd68FjfLV9f3FZ3Rz6KgsNeLmo2od2kBr8vYI2i5itRNN+9GdJxMZ39pbaMu8
	tFYLLq7YTicFG9s8OxrS2RdRCgaL1XbgS3XaZ4sio/HbNK4ng7g1gW4bqArw/x2O01Rd/VvqGMWfL
	PHKe1tHETzU0+brVVLkyzu7H65refVWZ7Kf1Tu0/RmmqI+gMw5xiNxm40TDhrtxU+V+yoZmZTYNmK
	GHYph2omr6xoFUnMtXJhj7fcU+Ld8dOdSOxb/UYQzbV6CG54FqF25bsieqW38QRB8bYgA9igtfrit
	s6TeGRQgf3BT0sTl6EqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVbBP-00FFS7-JY; Tue, 06 Sep 2022 16:12:15 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVaj1-00EwAQ-DL; Tue, 06 Sep 2022 15:42:56 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 02722B8190F;
	Tue,  6 Sep 2022 15:42:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63A81C433C1;
	Tue,  6 Sep 2022 15:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662478972;
	bh=rD3bGWpWe2C+uPP1gaI4H1iAovRfcZkH+eG2TOcoVYM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D7GE1Snk7QwcCa6AhzSHUHOxM/+45E6oWG1ihXt7yDSZK+SrSe8zY90GEPCSbT3S8
	 P9rEdNnl94/n2nf2Gjk40IZFbm1GJyRW3oX/uAEYcNW+bIzoxZt27FrbEK7WIh+xJA
	 RXmR3WaG+5EhaEh1e2b+1pkQOlPFk1iyeHfviyHw5W5zEn9ETTV0zem0AxM87zh/bT
	 cs0YeJBVoaABqmURGJekCxdGctBE24/IN8IFrcpDuHN2bD4LD6vC3DSy+7pCv5sV6e
	 Pd1RK3W98kKkGfEPXKTtxvz2EjvBS+c7RmQ6kaZtQEEg/iFgD+pyzrrdtg+sPM9J6Y
	 PsJKjp0rU1poA==
Date: Tue, 6 Sep 2022 16:41:58 +0100
From: Lee Jones <lee@kernel.org>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH 4/6] dt-bindings: mfd: syscon: Add rk3588 QoS register
 compatible
Message-ID: <YxdqRpysLtPRh02s@google.com>
References: <20220831182629.79255-1-sebastian.reichel@collabora.com>
 <20220831182629.79255-5-sebastian.reichel@collabora.com>
 <4707456.3daJWjYHZt@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4707456.3daJWjYHZt@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_084255_673423_0D16ECDB 
X-CRM114-Status: GOOD (  17.76  )
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

T24gTW9uLCAwNSBTZXAgMjAyMiwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cgo+IEhpIFNlYmFzdGlh
biwKPiAKPiBBbSBNaXR0d29jaCwgMzEuIEF1Z3VzdCAyMDIyLCAyMDoyNjoyNyBDRVNUIHNjaHJp
ZWIgU2ViYXN0aWFuIFJlaWNoZWw6Cj4gPiBEb2N1bWVudCByazM1ODggY29tcGF0aWJsZSBmb3Ig
UW9TIHJlZ2lzdGVycy4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFuIFJlaWNoZWwg
PHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+Cj4gCj4gY2hhbmdlIGxvb2tzIGdvb2Qs
IGJ1dCB0aGlzIGlzIGEgbWZkLWJpbmRpbmcuIFNvIHdoaWxlIHRoZSByZXN0IGlzIGZvciBtZQo+
IHRvIGFwcGx5LCBmb3IgdGhlIG1mZCBzeXNjb24gd2UgbmVlZCBlaXRoZXIgTGVlIHRvIGFwcGx5
IGl0LCBvciBhbiBBY2sKPiBmcm9tIGhpbSBmb3IgbWUgdG8gcGljayBpdCB1cC4KClRoaXMgcGF0
Y2ggaXMgbm90IGluIG15IGluYm94LgoKV291bGQgeW91IG1pbmQgcmVzZW5kaW5nIGl0IHRvIHRo
aXMgaW5ib3ggcGxlYXNlPwoKPiA+IC0tLQo+ID4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9tZmQvc3lzY29uLnlhbWwgfCAxICsKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9tZmQvc3lzY29uLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbWZkL3N5c2Nvbi55YW1sCj4gPiBpbmRleCBjMTBmMGI1NzcyNjguLjUzNjlhNTZiOGJlMSAx
MDA2NDQKPiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvc3lz
Y29uLnlhbWwKPiA+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQv
c3lzY29uLnlhbWwKPiA+IEBAIC01OSw2ICs1OSw3IEBAIHByb3BlcnRpZXM6Cj4gPiAgICAgICAg
ICAgICAgICAtIHJvY2tjaGlwLHJrMzM2OC1xb3MKPiA+ICAgICAgICAgICAgICAgIC0gcm9ja2No
aXAscmszMzk5LXFvcwo+ID4gICAgICAgICAgICAgICAgLSByb2NrY2hpcCxyazM1NjgtcW9zCj4g
PiArICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzU4OC1xb3MKPiA+ICAgICAgICAgICAgICAg
IC0gc2Ftc3VuZyxleHlub3MzLXN5c3JlZwo+ID4gICAgICAgICAgICAgICAgLSBzYW1zdW5nLGV4
eW5vczQtc3lzcmVnCj4gPiAgICAgICAgICAgICAgICAtIHNhbXN1bmcsZXh5bm9zNS1zeXNyZWcK
PiA+IAo+IAo+IAo+IAo+IAoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
