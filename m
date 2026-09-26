Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37599C9831E
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2026 03:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dnqq14AxBr5XHVo3KJx3Y2NUpV5BhjSUEkzp/7/0S7g=; b=0HzWJbb8zoqXby
	rbqHSDKKeDi3fDCaUGybs4Q15zCGCFpOncXsumVdI+5BjLmL0eVEl8djXnEFldnC0FhLZGYnhSibD
	+bGzOTcV2FD24aq953HIx5pWm28CTvinyJAOB0NZPmEvG8CswFHq3O124ZLf/s85GpsTIai8DdUu9
	P00V7JTT0+Nw5a1qaAGfElZjLvVLyuBLhIPJEtnqVV/SVIrU2A77oeCVrGt0Tai3HRJ1f3ouqi1Z+
	6MAYApfluqUlbIYIC264PzZ8G6zaUqjW2Jq+F4/Owm8Az+f+UYkdAVpn/9efuijT6PV373siDr5LL
	jK0uyt94HUaPhyk/7Jig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJEl-0000000Euxz-3XbL;
	Sat, 26 Sep 2026 03:38:07 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAJEj-0000000Eux8-3Vp7;
	Sat, 26 Sep 2026 03:38:05 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 38510405BF;
	Sat, 26 Sep 2026 03:38:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B40641F000FF;
	Sat, 26 Sep 2026 03:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790393885;
	bh=3LvRVZi/gGeHaFV3EytSFghp++iimgFUhDwJJVt4934=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Hg/xWZ+Onm2ZkLe6P2ZAmpdXc3L+1SeTb3eJTAd7JckRZ/lyfqSO5HR+UU9QT0AB1
	 h69LkOoMXVopJp7HGwGFQyIkV36vKjA6kyvXsGOiWOnOvKB6Y0mMgJWhY1EQLjixgL
	 WSCFJuGWIgjOYU1SSoKNIOTpYKiw1bZ829DJtY23zsiPEFwmSGAbEkgQDvm3GxO+7y
	 MoSqyjHlQuVItzAkIdsqFdO7YeTzpAlJZt/Lydk1lSBjZBcJ7anQShxUCcZZ3klr4n
	 M5DXYHRL1aFUpQJyDRSMpncFyCTpVsT4KVG5CLgS5YGWz12ZCXd0S6+CSJtoHe1BLn
	 3n6db1Z1ULzRA==
Date: Sat, 26 Sep 2026 05:37:49 +0200
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
Subject: Re: [PATCH v15 07/16] phy: rockchip: usbdp: Keep clocks running on
 PHY re-init
Message-ID: <ivamoiqpjjicp7cnff32o6yl64g5kugd7vdmubi2vr3eahuuik@g2pysc5iruuc>
References: <20260915-rockchip-usbdp-cleanup-v15-0-80e2c11d1ce8@collabora.com>
 <20260915-rockchip-usbdp-cleanup-v15-7-80e2c11d1ce8@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-v15-7-80e2c11d1ce8@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDM6NDk6NTRQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gV2hlbiBhIG1vZGUgY2hhbmdlIGlzIHJlcXVpcmVkIHJrX3VkcGh5X3Bvd2Vy
X29uKCkgZGlzYWJsZXMKPiB0aGUgY2xvY2tzIGFuZCB0aGVuIGNhbGxzIHJrX3VkcGh5X3NldHVw
KCksIHdoaWNoIHRoZW4gZW5hYmxlcwo+IGFsbCB0aGUgY2xvY2tzIGFnYWluIGJlZm9yZSBjb250
aW51aW5nIHdpdGggcmtfdWRwaHlfaW5pdCgpLgo+IAo+IENvbnNpZGVyaW5nIHRoYXQgcmtfdWRw
aHlfaW5pdCgpIGRvZXMgYXNzZXJ0IHRoZSByZXNldCBsaW5lcywKPiByZS1lbmFibGluZyB0aGUg
Y2xvY2tzIGlzIGp1c3QgZGVsYXlpbmcgdGhpbmdzLiBBdm9pZCBpdCBieQo+IGRpcmVjdGx5IGNh
bGxpbmcgcmtfdWRwaHlfaW5pdCgpLgo+IAo+IFJldmlld2VkLWJ5OiBOZWlsIEFybXN0cm9uZyA8
bmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZz4KPiBUZXN0ZWQtYnk6IElnb3IgUGF1bm92aWMgPHJv
eWFsbmV0MDI2QGdtYWlsLmNvbT4gIyBPcmFuZ2UgUGkgNSBQbHVzCj4gU2lnbmVkLW9mZi1ieTog
U2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CgpSZXZp
ZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3Nz
LnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDg
rprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
