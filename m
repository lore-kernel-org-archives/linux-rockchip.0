Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9376BC77B7F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jun 2025 09:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CcjnLYzaBjw5oLHUDKzzTKLXeO3hTxOPVltEjvt8Pos=; b=iiPmznmCryuDYe
	L1CU2AAgGMn2XUBsNcB0oubc/Y3tLxWKyildE/jmthdPJ4gXldg7Q20sfqUZawavCwx1OwPu8jPTA
	6Vb3UeNsbawG+QElzcBGLPigzcSZOLE5LPNacgFIedlqguszoGj7XYHGwZOBZQoPa68Axbon5NQQd
	wEWjw3OSUWetphE+lrN/+oyfvs1nzO92+/kBRvVCf2UwmnPqy0ikbg2rPI+3db59lDYGvMtMuXPjR
	7phhRMvi7t3RgJzXqEGKFyWC4hLHh/QASD+xI6wTEmfFRNvBRtZ1TfduzKPHGAjh5xD1bzrLl5TmZ
	l54Se2PjAhhpj4OLTS+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTdEx-0000000286o-2vyV;
	Mon, 23 Jun 2025 09:13:23 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTd5p-000000026If-0Ck9;
	Mon, 23 Jun 2025 09:03:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id B0F985C5B2B;
	Mon, 23 Jun 2025 09:01:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BDDBC4CEEA;
	Mon, 23 Jun 2025 09:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750669435;
	bh=WMeEW71Xdq2ImqfTThMcOgR/sZmGRoU60zXvKkMFza4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rN9L0PwELUUOtTfwVpPRzaEkxywCB5Aptk70y8l7NmLSpDDGsR9eWzpxY8kGSrFKy
	 hnb1YnyaOc0yQhuy9HWot33LrDioD5drYUZzF5HNpF7IiwqXPzUyCzBLUO2g1F+M3f
	 o6qT5dHI/WHCGzHDp7MMm3onSef0Q2rK3/aN8k5tV2wu/Xy1K+82Jk/ZlkT2N4suHR
	 N0DEFTwyMh2MC06W+dn9MT7gxRimOiq9bhv7M3mO6OdW3UkBidDz/I3NcSDFxHawyk
	 CiZ9HnCeefZ/19D7T1jNHRh2f5jN58yUdJltg3D0v/G1sBZiFgAJrvgKFymCugTAHX
	 hfwwhpP7ePP6g==
Date: Mon, 23 Jun 2025 11:03:49 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Hans Zhang <18255117159@163.com>
Cc: lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
	heiko@sntech.de, mani@kernel.org, yue.wang@amlogic.com,
	pali@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
	jingoohan1@gmail.com, khilman@baylibre.com, jbrunet@baylibre.com,
	martin.blumenstingl@googlemail.com, linux-pci@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 0/2] Configure root port MPS during host probing
Message-ID: <aFkYdRkQpyE8pOVD@ryzen>
References: <20250620155507.1022099-1-18255117159@163.com>
 <e9eeeeb4-77e6-48f1-bedc-15207f39d7b6@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e9eeeeb4-77e6-48f1-bedc-15207f39d7b6@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_020357_134426_4E2A432B 
X-CRM114-Status: UNSURE (   9.39  )
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

T24gU2F0LCBKdW4gMjEsIDIwMjUgYXQgMTI6MDU6NDNBTSArMDgwMCwgSGFucyBaaGFuZyB3cm90
ZToKPiBIaSBhbGzvvIwKPiAKPiBJJ20gdmVyeSBzb3JyeS4gSSBmb3Jnb3QgdGhlIHJldmlldyBs
YWJlbCBvZiBOaWtsYXMuIElmCj4gaXQgY2FuIGJlIG1lcmdlZCwgcGxlYXNlIGFzayB0aGUgbWFp
bnRhaW5lciB0byBoZWxwIGFkZAo+IHRoaXMgdGFnLiBUaGFuayB5b3UgdmVyeSBtdWNoLgo+IAo+
IFJldmlld2VkLWJ5OiBOaWtsYXMgQ2Fzc2VsIDxjYXNzZWxAa2VybmVsLm9yZz4KCklmIHRoZSBt
YWludGFpbmVyIGlzIHVzaW5nIGI0LCBpdCBzaG91bGQgcGljayB1cCB0aGUgdGFnIGFib3ZlIGF1
dG9tYXRpY2FsbHkuCgoKS2luZCByZWdhcmRzLApOaWtsYXMKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
