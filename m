Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0DECC98318
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2026 05:16:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gT6PRkkL0E/SkOHcszYfVz8EX2WA3eP28hqCe4ZfGX4=; b=E+KyPmo064fymt
	3eac2pblE+vQvi3BNJrt3kuQ6oD8y1gh7ZI9P50PBX14LtSCjdvGMEbyhqFMGq/rfrwzDZSguwk4D
	6VRQ50nixXxCigt+aQTkHUMm8N9ykEVKASf6TAS4AN0h0KdwpNXtQF1krcRZzUyv9cayEeVizbC2m
	IuljG478skYNOxqGPwPc90hM++8np5s1D44v2Qd73zK5L8sR6jmD/MqR3BQgiiavz5qHXULdK4eMp
	N242+rUWy6Xi6YO0UcYO5kosgDZ2x3D+WRL9eSy4+IrDPTJaoBgG4Eew1GBpfl3Zi5R0yfnJ/v/25
	wUd/Y5SIduA/uM7rAgqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAKm1-0000000F0Zg-3BEM;
	Sat, 26 Sep 2026 05:16:33 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xAKm0-0000000F0Z5-1dbY;
	Sat, 26 Sep 2026 05:16:32 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 0ACB143793;
	Sat, 26 Sep 2026 05:16:32 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DBE611F000FF;
	Sat, 26 Sep 2026 05:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790399791;
	bh=JfX+s/Rj3EZVwKgY0T/HU2G6C2z+npd4jy7BQreJ1TI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=BbapK8RGn0VbM0QdxOR9zO1pX18IO//gqzZRxcJ533Wjs0mhq9ACOMSYmN9oIbv0o
	 +HRyCBZsVLJiuiBNdSVMUbTAJG7gEG95T/aQYENdbnpSCgyobsd7ra7zLu58r54rC9
	 t8iW0xiX65uvkwVx8Jsuk85KPKw4EA7ND3aUKld2NOhpLkF9i8iA8aTfQE1qgk+q6p
	 Eyz7q8XOWXhZoSZxqsYhQ2Ba+wYQosrkTr9k2k8mKroGg7VhMOzDGhkzQBfcWmZ0hp
	 KeaGBVSy+k1oTVuvCaRhOsFLEBZRN27zKC1EQPDHOWJs3CAjOowj25sfP/tap6wjYX
	 wMeRdRn4CRwMA==
Date: Sat, 26 Sep 2026 07:16:13 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Zhang Yubing <yubing.zhang@rock-chips.com>, Frank Wang <frank.wang@rock-chips.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	Sashiko <sashiko-bot@kernel.org>, Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v15 07/11] phy: rockchip: usbdp: Hold mutex in DP PHY
 configure
Message-ID: <2pgdtb5su76q36vqrqp4as3cbejhr7heiqcp4e7d4gjug3lvm4@xyyvwcn5jhn5>
References: <20260915-rockchip-usbdp-cleanup-part2-v15-0-8d507cb1174f@collabora.com>
 <20260915-rockchip-usbdp-cleanup-part2-v15-7-8d507cb1174f@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-rockchip-usbdp-cleanup-part2-v15-7-8d507cb1174f@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDU6MDY6MTBQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gcmtfdWRwaHlfZHBfcGh5X2NvbmZpZ3VyZSgpIGFjY2Vzc2VzIHNvbWUgdmFy
aWFibGVzIGZyb20gdGhlIHN0cnVjdAo+IHJrX3VkcGh5LCB3aGljaCBhcmUgdXBkYXRlZCBpbmRl
cGVuZGVudGx5IGZyb20gdGhlIFVTQi1DIGZyYW1ld29yay4KPiAKPiBUaGUgVVNCLUMgbXV4L29y
aWVudGF0aW9uIHN3aXRjaCBmdW5jdGlvbnMgYWxyZWFkeSBob2xkIGEgbXV0ZXggdG8KPiBlbnN1
cmUgbXV0dWFsIGV4Y2x1c2l2ZSBhY2Nlc3MgdG8gdGhlIHN0cnVjdCBya191ZHBoeSBzdGF0ZXMs
IHNvCj4gc2ltcGx5IGhvbGQgdGhlIHNhbWUgb25lIGluIHRoZSBEUCBQSFkgY29uZmlndXJhdGlv
biBmdW5jdGlvbi4KPiAKPiBSZXByb2R1Y2luZyBwcm9ibGVtcyBkdWUgdG8gdGhpcyBvbiByZWFs
IGhhcmR3YXJlIHdvdWxkIGJlIHJlYWxseSBoYXJkLAo+IGJ1dCBjb3VsZCBiZSBwb3NzaWJsZSB3
aGVuIHF1aWNrbHkgcmUtY29ubmVjdGluZyB0aGUgVVNCLUMgY29ubmVjdG9yLgo+IAo+IEZpeGVz
OiAyZjcwYmJkZGViNDUgKCJwaHk6IHJvY2tjaGlwOiBhZGQgdXNiZHAgY29tYm8gcGh5IGRyaXZl
ciIpCj4gUmVwb3J0ZWQtYnk6IFNhc2hpa28gPHNhc2hpa28tYm90QGtlcm5lbC5vcmc+Cj4gQ2xv
c2VzOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1waHkvMjAyNjA2MTIxNjQ2MjcuMjNE
MzkxRjAwMEU5QHNtdHAua2VybmVsLm9yZy8KPiBUZXN0ZWQtYnk6IElnb3IgUGF1bm92aWMgPHJv
eWFsbmV0MDI2QGdtYWlsLmNvbT4gIyBPcmFuZ2UgUGkgNSBQbHVzCj4gU2lnbmVkLW9mZi1ieTog
U2ViYXN0aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+CgpSZXZp
ZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1Ab3Nz
LnF1YWxjb21tLmNvbT4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDg
rprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
