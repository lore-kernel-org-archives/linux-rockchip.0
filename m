Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DAA2EE3F2F
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Sep 2023 14:46:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5t8A6pNSXVrWXU7Wzc0azS2sq/lmigkyG0oArZ1dJVY=; b=AigH3JMZ+E8lOk
	hRWJ7EBoxjqm2FQCEWeoTP2AoI4Nr4cr1fPIVHQeRYf1/pExCRPD6mwyWl7OCHalpgoH8qGii4mUY
	3vDxXZnxERpRsE2gZfp1ZJwkgvIw7R6HsyWdF3mABOUpRxqAWGPxjLnG+HmT8rSOEkhCrtiXFCSnr
	MD7bLMlI+VSthh5/8dRDPRbCzVUa+RgK+IMFOTz3AUW28dp7R/moVPgIegrYY/6BojzTBocLtojOO
	jngAihq63qvALsdhTzqOtgfWEMyfu0OVCn8fq+4lB6HeRq6PTI30tDxbDYyckb4tQ5r5pTfXgz5zk
	gHV+3v0S0K+M8JCgHhdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qhA5F-00AubF-1b;
	Fri, 15 Sep 2023 14:46:13 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qhA59-00AuZx-2O;
	Fri, 15 Sep 2023 14:46:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by sin.source.kernel.org (Postfix) with ESMTPS id 69C6CCE2BD3;
	Fri, 15 Sep 2023 14:46:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14FD2C433C8;
	Fri, 15 Sep 2023 14:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694789162;
	bh=vmWJjbUV9feQTNnTRpzFcWDL7EDviII2F9crbfYB6XI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CvLP61L5Srj5bBexjD3yccDBzkb0QAHF22eelHc/2Ww0BT7WfYu/CSZ56X9/nE6qu
	 5EU6lXh59ctX45FlSf8ZO+l5lfoUDbvLTbKUk8urSmWJYPCjlrJa0HJYtGmscey7ud
	 JJmR6bUhBJys4Y9sX0ySY9uue2XHYEWg5OvQFTSeO+jfS66qitFwy0wFjUWg/5/z74
	 9d3l/Fz1Yb6hGNZ7AjPBZshOdhPbebdTpEA6sHyVjyMFcZAq5qCKdqOF2CmiFix6c9
	 ewzUL0rCnYYgYX1/pLDH+43J//2ZUuVUySuu5a+FGUq8F9mxRS36J01YP5sVQX3st7
	 DbM/UIq8Yz2Cw==
Received: (nullmailer pid 3702987 invoked by uid 1000);
	Fri, 15 Sep 2023 14:45:59 -0000
Date: Fri, 15 Sep 2023 09:45:59 -0500
From: Rob Herring <robh@kernel.org>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Chen-Yu Tsai <wens@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, Saravana Kannan <saravanak@google.com>, linux-rockchip@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, kernel@pengutronix.de, Quentin Schulz <quentin.schulz@theobroma-systems.com>, Michael Riesch <michael.riesch@wolfvision.net>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH 1/3] pinctrl: rockchip: add support for io-domain
 dependency
Message-ID: <20230915144559.GA3696959-robh@kernel.org>
References: <20230904115816.1237684-1-s.hauer@pengutronix.de>
 <20230904115816.1237684-2-s.hauer@pengutronix.de>
 <CACRpkdYxRdToUM3JcEeNK_K87D5WDzzSLvVEbtqqdQEhz3k_Ow@mail.gmail.com>
 <CAGb2v65G-8EECNjqnpKCxqAD5nATAb0S7AA_WMiGXYOR1avrvg@mail.gmail.com>
 <20230913065843.GF637806@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230913065843.GF637806@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230915_074607_975252_5EBEA811 
X-CRM114-Status: GOOD (  24.16  )
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

T24gV2VkLCBTZXAgMTMsIDIwMjMgYXQgMDg6NTg6NDNBTSArMDIwMCwgU2FzY2hhIEhhdWVyIHdy
b3RlOgo+IE9uIFdlZCwgU2VwIDEzLCAyMDIzIGF0IDEyOjM3OjU0UE0gKzA4MDAsIENoZW4tWXUg
VHNhaSB3cm90ZToKPiA+IE9uIFR1ZSwgU2VwIDEyLCAyMDIzIGF0IDQ6MDfigK9QTSBMaW51cyBX
YWxsZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+IHdyb3RlOgo+ID4gPgo+ID4gPiBUb3Ag
cG9zdGluZyB0byBicmluZyBTYXJhdmFuYSBLYW5uYW4gaW50byB0aGlzIGRpc2N1c3Npb24uCj4g
PiA+Cj4gPiA+IFRoaXMgbG9va3MgbGlrZSBhIGJpZyBoYWNrIHRvIG1lLCBTYXJhdmFuYSBoYXMg
YmVlbiB3b3JraW5nCj4gPiA+IHRpcmVsZXNzbHkgdG8gbWFrZSB0aGUgZGV2aWNlIHRyZWUgcHJv
YmUgb3JkZXIgInNvcnQgaXRzZWxmIG91dCIKPiA+ID4gYW5kIEkgYW0gcHJldHR5IHN1cmUgdGhp
cyBpc3N1ZSBuZWVkcyB0byBiZSBmaXhlZCBhdCB0aGUgRFQKPiA+ID4gY29yZSBsZXZlbCBhbmQg
bm90IGluIGEgZHJpdmVyLgo+ID4gCj4gPiBXZSBjb3VsZCBtZXJnZSBhbGwgdGhlIElPIGRvbWFp
biBzdHVmZiBpbnRvIHRoZSBwaW5jdHJsIG5vZGUvZHJpdmVyLAo+ID4gbGlrZSBpcyBkb25lIGZv
ciBBbGx3aW5uZXI/IE1heWJlIHRoYXQgd291bGQgc2ltcGxpZnkgdGhpbmdzIGEgYml0Pwo+IAo+
IEkgdGhvdWdodCBhYm91dCB0aGlzIGFzIHdlbGwuIE9uIFJvY2tjaGlwIHRoZSBwaW5jdHJsIGRy
aXZlciBhbmQgdGhlIElPCj4gZG9tYWluIGRyaXZlciBldmVuIHdvcmsgb24gdGhlIHNhbWUgcmVn
aXN0ZXIgc3BhY2UsIHNvIHB1dHRpbmcgdGhlc2UKPiBpbnRvIGEgc2luZ2xlIG5vZGUvZHJpdmVy
IHdvdWxkIGV2ZW4gZmVlbCBtb3JlIG5hdHVyYWwgdGhhbiB3aGF0IHdlIGhhdmUKPiBub3cuCgpE
VCBzaG91bGQgcmVmbGVjdCB0aGUgaGFyZHdhcmUuIElmIHRoaXMgaXMgaW4gZmFjdCAxIGJsb2Nr
LCB0aGVuIGl0IApzaG91bGQgYmUgMSBEVCBub2RlLiBIb3cgeW91IHdhbnQgdG8gc3BsaXQgdGhl
IGRyaXZlciBvciBub3QgaXMgdXAgdG8gCnlvdS4KClJvYgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
