Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55F48C98328
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2026 04:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PDu5DnU6B+UT6cqh+s+fIXatWT1sUtibAlFWiTzCJrA=; b=H6tBkCkP4a7C2g
	U7Majl+VO7De8nnSMjubSCnf3Yl+ayPuPp/FjHO9R8QcoC6r2yoI9VpresnuK8isz5FsmNGIUy61D
	otg7+R/6kWf0TqcU1WVjz1P3/m5HM85b9FX0UUxSVnlNfsq06YFOrEJP3hJGoHzae82QEw5NdCT42
	v0gWYoO+L8SiTUU9BQCZZVDvMTM8UNw9VqzpfAFXv9iW10O5yGY9e2sJO5D4CncC1KdYDxXfLyouc
	MEiyKXr1ikM5RWYldXvh2JXD35pibFP5laaLBcT6gf6HfTH3D5BaIrnSY2gDV30IWtDoLs3+Le4vs
	0e72jc07bC1MWaTvefZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJdc-0000000Evqn-455B;
	Sat, 26 Sep 2026 04:03:48 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJda-0000000Evq1-3t7h;
	Sat, 26 Sep 2026 04:03:46 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5B64243AA0;
	Sat, 26 Sep 2026 04:03:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BB071F000FF;
	Sat, 26 Sep 2026 04:03:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790395425;
	bh=Ez96NEwvtT1k9tGbEFCVRqt3OZGVg5le4zsDZGm02ag=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=MJwntA0ZZjmKHhtCfYKPc1LdDWePisGyWu8LaXPwzLQ4Pfts2Xg//JV1tbCUu3BsV
	 qop38+KgeqO3AENA5+YDBY2UVXMb7iMwLCFaiyQlKE6EO2ZrR07dc4fkC1eZp+JH2v
	 pHaAZos4DE401O3IAgWfuidm7tqXPy8/aa+Bris7KcAYiuqn/saDuRnuqHs68iWnro
	 MfuSof7ZmnjBSVZww9WmbvKE2UWTSVwiWARhSVmPjQGDRwNU9pKFOTZzncjIG9oCo+
	 rQZWESHElx82csYwiw3KEFFE8IdJrEeERI4EJm2njWFBVjoN5HhZMT8yNraHiLaeH8
	 iXG1yAE6+ulRQ==
Date: Sat, 26 Sep 2026 06:03:25 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Frank Wang <frank.wang@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Dmitry Baryshkov <lumag@kernel.org>, Yubing Zhang <yubing.zhang@rock-chips.com>, 
	Alexey Charkov <alchark@flipper.net>, Igor Paunovic <royalnet026@gmail.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v15 11/16] phy: rockchip: usbdp: Support single-lane DP
Message-ID: <2z4yirs6dzf34ajrc7u4gv62v466iusxt6lqam6zjmxmbutd6d@fwdwmcvtiv74>
References: <20260915-rockchip-usbdp-cleanup-v15-0-80e2c11d1ce8@collabora.com>
 <20260915-rockchip-usbdp-cleanup-v15-11-80e2c11d1ce8@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-v15-11-80e2c11d1ce8@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDM6NDk6NThQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gRnJvbTogWmhhbmcgWXViaW5nIDx5dWJpbmcuemhhbmdAcm9jay1jaGlwcy5j
b20+Cj4gCj4gSW1wbGVtZW50IHN1cHBvcnQgZm9yIHVzaW5nIGp1c3QgYSBzaW5nbGUgRGlzcGxh
eVBvcnQgbGluZS4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBaaGFuZyBZdWJpbmcgPHl1YmluZy56aGFu
Z0Byb2NrLWNoaXBzLmNvbT4KPiBUZXN0ZWQtYnk6IElnb3IgUGF1bm92aWMgPHJveWFsbmV0MDI2
QGdtYWlsLmNvbT4gIyBPcmFuZ2UgUGkgNSBQbHVzCj4gU2lnbmVkLW9mZi1ieTogU2ViYXN0aWFu
IFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1ieTog
TWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21t
LmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7g
rprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
