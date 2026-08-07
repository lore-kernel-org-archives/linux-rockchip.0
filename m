Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD81CC2A09B
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Aug 2026 13:11:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/rcU1AdoI5TGh/ESDVCaLao8c9A1PFEGDgb+eL5EAgk=; b=5BOX7wC4uoRVHN
	Tmm0OrkYqVBThpfuS4gAeuQ/rcr7JoQlxzl6/vD+zSBT+DUy33fge7KEmRjiQfNdzGfAtfuWM8a/5
	/Z2nrSY5aH9Wpd7PyBKWPozlCVHZmljGiJ7E8hmxMhQpyvxP43vaZNw0MFV0zufDUbo6DKr4Rjpxd
	kyvXy2WW0/XOKEFGRMlxggufvbGuC7yyaMIMp28NIGJ6upI+0jnzEg+Xm3woUc3daIqb0trcTSLjZ
	KIAQp4hjL0ROeqY4AUoAxgAtp0Ek57vCDRxzTy0B47Ln9kUt8n75rVs9OmYbLkSmi6KyjZpop0sO/
	tmdWwaMjmxQA/MEKkOBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsKMe-0000000857X-2iAK;
	Fri, 07 Aug 2026 13:11:56 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsKMd-0000000856o-1G0f;
	Fri, 07 Aug 2026 13:11:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id AE3F46013A;
	Fri,  7 Aug 2026 13:11:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 702151F000E9;
	Fri,  7 Aug 2026 13:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786108314;
	bh=OjjAX3rqnF81F9KFbKrVETL1eRupjOWWDek76je0mrQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=b2L+ENyYiCghP3WfYYQdZ8hZB5x6HULGfChhcY2ovo+6JJ3trYADSEYvClO202Ozd
	 ycQa4j97IN0SUaAHdIHg7Xzu86Dgx/qGw3HTT3cKEjKWtcRvBD+sqakvAwQa+kIX9o
	 InwPxuR+fu9hqqRuPVpp/lrdvgEgABxD3SKceftLnvr04BZ9X6g3u3+bwi2xBFRAK6
	 598ayQiBF3PbfEQZJe4gM9NSOt29M54KoUTAYfK/z1+D405ZL2jgW645HRw9n/hvO0
	 Srj0n963uNE5JUvdaTfo6ey95zpKW38plezklQl5X8fXF7Ux0HnnqpMm+FC09BTfh/
	 kb5G+zWxpIEwQ==
Date: Fri, 7 Aug 2026 15:11:45 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Algea Cao <algea.cao@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Thomas =?utf-8?Q?Niederpr=C3=BCm?= <dubito@online.de>, Simon Wright <simon@symple.nz>, 
	Diederik de Haas <diederik@cknow-tech.com>, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v5 09/10] phy: rockchip: samsung-hdptx: Simplify GRF
 access with FIELD_PREP_WM16()
Message-ID: <yaed2hz7guhtcxf4dpedj36slsmbigsp2funn4jhmum55lh46l@qvicusqkd543>
References: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
 <20260723-hdptx-clk-fixes-v5-9-8e786067865f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260723-hdptx-clk-fixes-v5-9-8e786067865f@collabora.com>
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

T24gVGh1LCBKdWwgMjMsIDIwMjYgYXQgMTA6NDE6NTJQTSArMDMwMCwgQ3Jpc3RpYW4gQ2lvY2Fs
dGVhIHdyb3RlOgo+IFRoZSAxNiBtb3N0IHNpZ25pZmljYW50IGJpdHMgb2YgdGhlIGdlbmVyYWwt
cHVycG9zZSByZWdpc3RlciAoR1JGKSBhcmUKPiB1c2VkIGFzIGEgd3JpdGUtZW5hYmxlIG1hc2sg
Zm9yIHRoZSByZW1haW5pbmcgMTYgYml0cy4KPiAKPiBNYWtlIHVzZSBvZiB0aGUgcmVjZW50bHkg
aW50cm9kdWNlZCBGSUVMRF9QUkVQX1dNMTYoKSBtYWNybyB0byBhdm9pZAo+IG9wZW4tY29kaW5n
IHRoZSBiaXQgc2hpZnQgb3BlcmF0aW9ucyBhbmQgaW1wcm92ZSBjb2RlIHJlYWRhYmlsaXR5Lgo+
IAo+IFRlc3RlZC1ieTogVGhvbWFzIE5pZWRlcnByw7xtIDxkdWJpdG9Ab25saW5lLmRlPgo+IFRl
c3RlZC1ieTogU2ltb24gV3JpZ2h0IDxzaW1vbkBzeW1wbGUubno+Cj4gVGVzdGVkLWJ5OiBEaWVk
ZXJpayBkZSBIYWFzIDxkaWVkZXJpa0Bja25vdy10ZWNoLmNvbT4gICMgTmFub1BDLVQ2IExUUwo+
IFJldmlld2VkLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFyeXNoa292QG9zcy5xdWFs
Y29tbS5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQ3Jpc3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5j
aW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KClJldmlld2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2
YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBvc3MucXVhbGNvbW0uY29tPgoKLSBNYW5pCgotLSAK
4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
