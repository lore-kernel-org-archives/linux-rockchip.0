Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0D1FC5ACAB
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Aug 2026 13:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vqjOio7Old9usNyis+ObV51TS8lS0Cu1v38gA309uI4=; b=s396dF6kNV+2v6
	WHgAYp76l9yMklpg7h7rQqkm7NdlJ17DAl82uR0F6kxBjha3htOxlY3CjwDgsTXAzB4DkVfIAU4YK
	qQBf3oLdhZJYyfvyZIWxY2k09Uqgo6FOba3qkHY24cCXyL7TV7nIwyAB80YgXkIjtHkjL7EV2zImD
	GGkw8aMiDN+sgPuLz9x92RzDhqHH0cs1wQgCvd/s414UznH4deYSFkyQPt56lqZnTbwUFDY0WAnk4
	YrR3clMV8CK3rmahuGMN1nvvpbk26baRBdwenBEcpdtxhmO63O3vKcB5vYKBfRvQ1dsafNhqL2Mv+
	Sr/oQaAF2SV+i3N+KzXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsKIJ-000000084SE-1RXa;
	Fri, 07 Aug 2026 13:07:27 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsKII-000000084Ra-08pR;
	Fri, 07 Aug 2026 13:07:26 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id C4BCC4040F;
	Fri,  7 Aug 2026 13:07:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16CC21F00A3A;
	Fri,  7 Aug 2026 13:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786108045;
	bh=VfGSB4cRPyZ91JBGoqZHrOUvB/yFMHL0qZ43xcXvMEA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=QmL2BtEJQdD8xwOQTGZcg1RqhCPOt8nHrKh8n7SxuCS5zBTockhDcJSpzsnAEXEiX
	 XQ7Lz2rluD3gZa4cneu4RJSpCu9urzyncHA51xUGN7rBkoAULhFu6eoxwUII2+prv1
	 gAfAFCPZinp0RLTvhbIm3aPHHly5tQGTOEBUoUwESXVfwwX/HXfr9h0aD/iTP8u5Ee
	 wzDOTbItM0QzfcHr8HSBHKUBJLlPcLrKcxP4FYwKpqVvIir6DonNrLpmNzs5FQWWRz
	 4o/oEEiV9Amm7NohF+r/PUvwbK/Va102NVTt4/PJgh68PkllpVAK9U0al29tKGI0Q2
	 utprM1y1Fh8NQ==
Date: Fri, 7 Aug 2026 15:07:18 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Algea Cao <algea.cao@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 07/10] phy: rockchip: samsung-hdptx: Consolidate
 consumer_put on error path
Message-ID: <7pshndmrl3yy6oulomog26vjfppcuh6bxbn5fy7rys3w34pizo@psbah2rng6tz>
References: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
 <20260723-hdptx-clk-fixes-v5-7-8e786067865f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260723-hdptx-clk-fixes-v5-7-8e786067865f@collabora.com>
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

T24gVGh1LCBKdWwgMjMsIDIwMjYgYXQgMTA6NDE6NTBQTSArMDMwMCwgQ3Jpc3RpYW4gQ2lvY2Fs
dGVhIHdyb3RlOgo+IHJrX2hkcHR4X3BoeV9jb25zdW1lcl9wdXQoKSBpcyBpbnZva2VkIGluIGJv
dGggYnJhbmNoZXMgb2YgdGhlIG1vZGUKPiBjaGVjayBjb25kaXRpb25hbCBpbiBya19oZHB0eF9w
aHlfcG93ZXJfb24oKSBvbiB0aGUgZXJyb3IgcGF0aC4KPiAKPiBTaW1wbGlmeSB0aGUgY29kZSBi
eSBtb3ZpbmcgdGhlIHNpbmdsZSBjYWxsIHRvIHRoZSBlbmQgb2YgdGhlCj4gZnVuY3Rpb24uCj4g
Cj4gTm8gZnVuY3Rpb25hbCBjaGFuZ2UgaW50ZW5kZWQuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ3Jp
c3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KClJldmll
d2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3Mu
cXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCu
muCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
