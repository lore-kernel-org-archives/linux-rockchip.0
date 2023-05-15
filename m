Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBF08C77B7D
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 May 2023 15:20:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ozwBOq6tmYLTJXvAJ6Es6ad/cfOIYdUmF+jd7K8SoFI=; b=DosgCuUOc8hOk7
	WYwjWAATDgjsvbQ73VrMmuqThF/D9VpM0Tyxet1k5We2RQbWtqoQVdGsu3KL47krWk94NWoaYEqnf
	UZWyMkfF1F014Zy3j13Z2pxgsYg+V3uhQS1xXQAdF2BGy0meKBraB+Q+w+Q84xzKRGscp1jEfITYS
	oNubiSZiHD0/2RZIGt5i6uEOwa9lwesEYEbYL+BqcRNKYizkSU0fpBFNC+nZWYsGHD4fiROWoqf9+
	tpEF1+LjANzhUZudiqAv4d2ORGe7SQvN37yQsNhdhFehZ/gkBR7Hk1v7WQyFlxPY8VGQf+8syCmu7
	q+ieuZA6PU86XehR7xzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pyZzk-002YIp-2a;
	Mon, 15 May 2023 15:20:16 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyZzi-002YI7-2Q
	for linux-rockchip@lists.infradead.org;
	Mon, 15 May 2023 15:20:15 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 45B8E61EE5;
	Mon, 15 May 2023 15:20:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99843C433D2;
	Mon, 15 May 2023 15:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684164013;
	bh=CMyv0BbG/nqnjuXh/nR8ZgK3x0tXoUNldfxBkwatG6s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=H1Y33+naUQzqLAijtVAXl7tPP+USJ5tkWkPAhUVWsJIileAq+s753jDrbRidgRtgj
	 Y76Lctq7QjAkXzqvEti6TIDr0xfhpAWPuGrNLl7MF399QPanQkh1ItPxW4T5obDdpX
	 /JESI9K90xrZgxQQfPve3uiNjb0YQhZppDoN1XBTnMVOCxrCb8GplI8D7F1emxeJ0k
	 eV5beieNOCjBJUf7ceDpk9ArM+fk3UXrBs/aXSwhL+i/fxLPT3gRpzaQWGc09rXHfU
	 CYvNshCOAyGakPaQwJfSG9TjgoILbEC/VoEYKC8SLc+vRRiLC2/1FTFrd+kT3BUu7v
	 ogBXNhicJeOrg==
Date: Mon, 15 May 2023 16:20:07 +0100
From: Lee Jones <lee@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v8 07/14] dt-bindings: mfd: add rk806 binding
Message-ID: <20230515152007.GS10825@google.com>
References: <20230504173618.142075-1-sebastian.reichel@collabora.com>
 <20230504173618.142075-8-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230504173618.142075-8-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230515_082014_828691_237AE424 
X-CRM114-Status: GOOD (  10.70  )
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

T24gVGh1LCAwNCBNYXkgMjAyMywgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cgo+IEFkZCBEVCBi
aW5kaW5nIGRvY3VtZW50IGZvciBSb2NrY2hpcCdzIFJLODA2IFBNSUMuCj4gCj4gUmV2aWV3ZWQt
Ynk6IFJvYiBIZXJyaW5nIDxyb2JoQGtlcm5lbC5vcmc+Cj4gU2lnbmVkLW9mZi1ieTogU2ViYXN0
aWFuIFJlaWNoZWwgPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+Cj4gLS0tCj4gIC4u
Li9iaW5kaW5ncy9tZmQvcm9ja2NoaXAscms4MDYueWFtbCAgICAgICAgICB8IDQwNiArKysrKysr
KysrKysrKysrKysKPiAgMSBmaWxlIGNoYW5nZWQsIDQwNiBpbnNlcnRpb25zKCspCj4gIGNyZWF0
ZSBtb2RlIDEwMDY0NCBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3JvY2tj
aGlwLHJrODA2LnlhbWwKCkFwcGxpZWQsIHRoYW5rcwoKLS0gCkxlZSBKb25lcyBb5p2O55C85pav
XQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
