Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0F475C2A09B
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Aug 2026 12:58:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LvPdVTf5loedB8MHYFdH8XAc3saDB8cbbWfzTigYqiI=; b=gjC3+2Bg3A2v0U
	6YiQIhwLdA6BYe53xb06rfzftHuFV71v8jCOVpVpko35YIsdqZ5bjOqpYLPNtsvBPnmhHlYANSQVb
	IOgGXMEjxhpuIhPzjK2EHpHVwmcm6vyZUGyLNHRLYFBWm4aJfDPalvPGTZj1v6QeHbZkhBTVez4KN
	J9BT8K/gg9isZFHVkf+FWgCaRc34Cm0A995tHzYZIjPmiNJxsfQcmBCcYkTPrFOkOwUVgOU8QeuZp
	Mv3gvbRqscCTii5mMkcbos/dDVlSHy6lDFp+LCGTdZ0ArCK/tnikh4qreqkVDBGD4Vc340hdi9DGD
	eYrPMB299p6y3Ya/6RFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsK9c-0000000834Z-32Oc;
	Fri, 07 Aug 2026 12:58:28 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsK9b-0000000833j-2Kbu;
	Fri, 07 Aug 2026 12:58:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5254643BCA;
	Fri,  7 Aug 2026 12:58:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE5061F000E9;
	Fri,  7 Aug 2026 12:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1786107507;
	bh=ADGQV2MZWE4aRyExU85sXe1I0fjGY/evaCiIFTFhnKg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=b8TpeN8KQyTQ9ADj8oq0dESwpyOROSFx0EDcgNNtizQpN4Jum3u7NDLgIQMfXilZs
	 djFg9hIjBdJMo3G7zpvqmLo+HWE14aPdq2W8FVIltHD4veTFYhIcWD4YyTf/WW6LR1
	 dEhSfZgzzL3sy9OBTOxjLamaA2FC4hmk7N1BHAfGGE0h8f8EzrQMyPT3I447czYvdg
	 w1kPXpLbalQWzevTm3fshyYDDfAdiQejVdFsABMoar9j0Uh40W5nWnrnDmYyKqfk+B
	 W3p6iZPiu8fL2Ca3pCUHRjVY05w8C7IOAVgsnCLJyae0qU1/xjX9vYybodwGQ8JEId
	 kHVO0UUx171Hg==
Date: Fri, 7 Aug 2026 14:58:17 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Algea Cao <algea.cao@rock-chips.com>, Dmitry Baryshkov <lumag@kernel.org>, kernel@collabora.com, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Thomas =?utf-8?Q?Niederpr=C3=BCm?= <dubito@online.de>, Simon Wright <simon@symple.nz>, 
	Diederik de Haas <diederik@cknow-tech.com>, Andy Yan <andyshrk@gmail.com>, 
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: Re: [PATCH v5 01/10] phy: rockchip: samsung-hdptx: Fix rate
 recalculation for high bpc
Message-ID: <xlfzdchgk7nrjhfdnibakwrmtmb4mbxjvbbbcdsvv2okhwymfe@olxwicuvypq6>
References: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
 <20260723-hdptx-clk-fixes-v5-1-8e786067865f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260723-hdptx-clk-fixes-v5-1-8e786067865f@collabora.com>
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

T24gVGh1LCBKdWwgMjMsIDIwMjYgYXQgMTA6NDE6NDRQTSArMDMwMCwgQ3Jpc3RpYW4gQ2lvY2Fs
dGVhIHdyb3RlOgo+IFRoZSBQSFkgUExMIGNhbiBiZSBwcm9ncmFtbWVkIGJ5IGFuIGV4dGVybmFs
IGNvbXBvbmVudCwgZS5nLiB0aGUKPiBib290bG9hZGVyLCBqdXN0IGJlZm9yZSB0aGUgcmVjYWxj
X3JhdGUoKSBjYWxsYmFjayBpcyBpbnZva2VkIGR1cmluZwo+IGRldm1fY2xrX2h3X3JlZ2lzdGVy
KCkgaW4gdGhlIHByb2JlIHBhdGguCj4gCj4gVGhlcmVmb3JlIHJrX2hkcHR4X3BoeV9jbGtfcmVj
YWxjX3JhdGUoKSBmaW5kcyB0aGUgUExMIGVuYWJsZWQgYW5kCj4gYXR0ZW1wdHMgdG8gY29tcHV0
ZSB0aGUgY2xvY2sgcmF0ZSwgd2hpbGUgbWFraW5nIHVzZSBvZiB0aGUgYnBjIHZhbHVlCj4gZnJv
bSB0aGUgSERNSSBQSFkgY29uZmlndXJhdGlvbiwgd2hpY2ggYWx3YXlzIGRlZmF1bHRzIHRvIDgg
YmVjYXVzZQo+IHBoeV9jb25maWd1cmUoKSB3YXMgbm90IHJ1biBhdCB0aGF0IHBvaW50LiAgQXMg
YSBjb25zZXF1ZW5jZSwgdGhlCj4gKHJlKWNhbGN1bGF0ZWQgcmF0ZSBpcyBpbmNvcnJlY3Qgd2hl
biB0aGUgYWN0dWFsIGJwYyB3YXMgaGlnaGVyIHRoYW4gOC4KPiAKPiBEbyBub3QgcmVseSBvbiBh
bnkgb2YgdGhlIGhkbWlfY2ZnIG1lbWJlcnMgd2hlbiBjb21wdXRpbmcgdGhlIGNsb2NrIHJhdGUK
PiBhbmQsIGluc3RlYWQsIHJlYWQgdGhlIHJlcXVpcmVkIGlucHV0IGRhdGEgKGkuZS4gYnBjKSwg
ZGlyZWN0bHkgZnJvbSB0aGUKPiBoYXJkd2FyZSByZWdpc3RlcnMuCj4gCj4gRml4ZXM6IDM0ODFm
YzA0ZDk2OSAoInBoeTogcm9ja2NoaXA6IHNhbXN1bmctaGRwdHg6IENvbXB1dGUgY2xrIHJhdGUg
ZnJvbSBQTEwgY29uZmlnIikKPiBUZXN0ZWQtYnk6IFRob21hcyBOaWVkZXJwcsO8bSA8ZHViaXRv
QG9ubGluZS5kZT4KPiBUZXN0ZWQtYnk6IFNpbW9uIFdyaWdodCA8c2ltb25Ac3ltcGxlLm56Pgo+
IFRlc3RlZC1ieTogRGllZGVyaWsgZGUgSGFhcyA8ZGllZGVyaWtAY2tub3ctdGVjaC5jb20+ICAj
IE5hbm9QQy1UNiBMVFMKPiBSZXZpZXdlZC1ieTogQW5keSBZYW4gPGFuZHlzaHJrQGdtYWlsLmNv
bT4KPiBSZXZpZXdlZC1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBvc3Mu
cXVhbGNvbW0uY29tPgo+IFNpZ25lZC1vZmYtYnk6IENyaXN0aWFuIENpb2NhbHRlYSA8Y3Jpc3Rp
YW4uY2lvY2FsdGVhQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KCi0gTWFuaQoK
LS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
