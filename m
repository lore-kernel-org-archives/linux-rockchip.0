Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 297E8C98328
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2026 08:00:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Dip3LbkSFVR0jvCA2BNmENMqG8NpUViSpK0zsUGKII=; b=d++HFIhL71dJkM
	2IL204gCPdXIxiYpQxfPWu90FlyAyBY/+xWYFsqM+Sn+9Fnie7SlqEIjGFgmSsuYiNNXu2blo/tJx
	147YPzsGdZea/sd9KRmYPFzMf5AEtkLi6QPvyPoRlkC4GVwZilgj0eXvbgqtqpvemxw22jzzdt9A8
	DX45xNWVrHFMTwOTZqCOiXO2dDKeYcHqhJ3WV5eXPMVyWq5b4G1oogzKoIyO7m7Xh7opI4U8qLrV1
	ts+nGWefjFb5e+Iy1ktJss2XXHIrB9Vk8a/7+22EHlVA9PIXFyVEZgMMP9hroPCDVO6o4FO78VxJ1
	sCLN/d5ucr1v+3s3xOSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xANKJ-0000000F8sA-2uLX;
	Sat, 26 Sep 2026 08:00:07 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xANKI-0000000F8rb-1Fri;
	Sat, 26 Sep 2026 08:00:06 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8CC82601E4;
	Sat, 26 Sep 2026 08:00:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A79A1F000FF;
	Sat, 26 Sep 2026 07:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790409604;
	bh=3+eweznmMsk2P2IzCzlZYwI84IrX3waF/RZqKOP1zaw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=d3r2f5xME8FiSRbcMOAzEW0t5VgVeFwMAMDFHU5fGjmONv+NgQ1efmgPYD5bLNVwj
	 4DnOhfOTMaqy6+EBBqEqkhWh4YLTE9SRxp0QHyp0kgEDqMH/jTtsuQNh363jHiyR5Y
	 9HjeOzD+hjx4Vwmjq9fLTR+PiSfKeRgK5VLWh7hCoqoHLlHGZlWfafn4wTxEMrRiHU
	 X1GTK0I7uzmF6tPEu8S1C7XK/D1dBkl6Wb+tq6EVYm/1iGIZywPQ/JR8yUEZFZGz9H
	 OwjPjUE128CxUx4HU5/l4uImHHUIiaMLeAtk6ksVOhQ/c16swTNhHkgn0A5EclI0HI
	 uVKszlRlS6qKA==
Date: Sat, 26 Sep 2026 09:59:44 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Zhang Yubing <yubing.zhang@rock-chips.com>, Frank Wang <frank.wang@rock-chips.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v15 4/6] phy: rockchip: usbdp: Fix power state handling
Message-ID: <o2xcbcpuzetrabvclyyauhrculkevfrmp7eeszlyviiphrcohi@ejg5wc3oq4bb>
References: <20260915-b4-rockchip-usbdp-cleanup-part3-v15-0-9ad90a456953@collabora.com>
 <20260915-b4-rockchip-usbdp-cleanup-part3-v15-4-9ad90a456953@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-b4-rockchip-usbdp-cleanup-part3-v15-4-9ad90a456953@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDU6MzI6NTFQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gUmVzdHJ1Y3R1cmUgcG93ZXIgc3RhdGUgaGFuZGxpbmcgYnkgaW50cm9kdWNp
bmcgc3dfbW9kZSBpbiBhZGRpdGlvbgo+IHRvIHRoZSBod19tb2RlIGZpZWxkLCBzbyB0aGF0IHRo
ZSBQSFkga25vd3MgYWJvdXQgdGhlIGN1cnJlbnRseQo+IHN1cHBvcnRlZCBtb2RlcyBmcm9tIHRo
ZSBoYXJkd2FyZSBwZXJzcGVjdGl2ZSwgdGhlIGN1cnJlbnQgbW9kZXMKPiByZXF1ZXN0ZWQgYnkg
c29mdHdhcmUgYW5kIHRoZSBhY3R1YWwgaGFyZHdhcmUgc3RhdHVzLgo+IAo+IE5vdyBhbnl0aGlu
ZyB1cGRhdGluZyBlaXRoZXIgdGhlIGhhcmR3YXJlIG9yIHNvZnR3YXJlIHN0YXRlIGNhbiBzaW1w
bHkKPiB1cGRhdGUgdGhlIHN0YXR1cyBmaWVsZCBhbmQgY2FsbCBya191ZHBoeV91cGRhdGVfcG93
ZXJfc3RhdGUoKS4KPiAKPiBUaGlzIG1ha2VzIGl0IGEgbG90IG1vcmUgb2J2aW91cyB3aGF0IGlz
IGdvaW5nIG9uIGFuZCBhbHNvIGZpeGVzIGEgZmV3Cj4gcG90ZW50aWFsIHJlc291cmNlIGxlYWtz
IGlkZW50aWZpZWQgYnkgU2FzaGlrbyBhcyBhIHNpZGUtZWZmZWN0LiBGb3IKPiBleGFtcGxlIGlm
IFVTQjMgaXMgcmVxdWVzdGVkIGJ5IHNvZnR3YXJlIHdoaWxlIHRoZSBVU0ItQyBpcyBpbiBEUC1v
bmx5Cj4gbW9kZSwgdGhpbmdzIGFyZSBkZWNlbnRseSBoYW5kbGVkIGFmdGVyIHRoaXMuCj4gCj4g
VGVzdGVkLWJ5OiBJZ29yIFBhdW5vdmljIDxyb3lhbG5ldDAyNkBnbWFpbC5jb20+ICMgT3Jhbmdl
IFBpIDUgUGx1cwo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4u
cmVpY2hlbEBjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZh
bSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQG9zcy5xdWFsY29tbS5jb20+CgotIE1hbmkKCi0tIArg
rq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
