Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84C17C52D7C
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 16:36:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7D+/UEvobc2zjCC9oXlpOKbVeTN34T1ZWAbh+yMvMdI=; b=YiL7jQDVIfL8y7
	h0OWo0T/KGGWXRFZ2wJhClICHHNQFPJe8sIlEuERddJTnwknMWPdNZNcxqiGh2kwx+Gsf0p6XXTZJ
	SNMOPl65ewAZ7BqrALu/Ax5aQTfIGwKm5BS+O29lymCo44aDXC2OqWngVftDasUOZovAS6+G6zGj0
	8tWLkmt5TZv4KVm8aXT8cz9TGYgr5/vsL8EHOKubHiNT8Twy2SC2lvXvTYznpYGHyK+6lVp9R5gwF
	Qwsz6yIcjhd0V6Ek4GIQwcXrFnMMkrguwEXh9dwJihuS0Leh85HyKxRMNtkRySaKYkiZzIXW5NvGG
	4tRI4yf2pMLvbFp1yW/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sedSh-0000000AXCD-2Uec;
	Thu, 15 Aug 2024 16:36:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sedRr-0000000AX5x-0bok;
	Thu, 15 Aug 2024 16:35:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=2YsIYBU4KdzLxYOq/DWZJaW8fsNmm7V/n/GVrhzx8fU=; b=OyXy+w3bleVZ7blXyZNiQ9LVCb
	bhzsyx0+QQMv/aBgZT9jtgM0Ws9Kkswdf6EMIbVOzYPIcIATpMTffVE98W5J2RC0NB/5JCK4UaHYa
	5Y+DqD5Y3IgQHovKo69Q0srhgBNUXKHJ2btWtuc1hlO2XJIHixiRm29zqDv+0sfPu44JFw1A1VRKC
	gHbNkBVlKal+PKZ8jl3HllTyWw9YIfVqGodkro07kCDtpNKPPH+55IDIr66B/N428V4pHw/faaZHQ
	K7cm8AeiJw2ogzoQ9WU25F/04tDZ5EvEYJqpsrHvvZ3goIJxny75LNbFDCXc2W1uWYyCOp+p707c4
	/igHZSFw==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sedRb-0005Qb-Gy; Thu, 15 Aug 2024 18:35:23 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Detlev Casanova <detlev.casanova@collabora.com>,
 linux-kernel@vger.kernel.org, David Wu <david.wu@rock-chips.com>
Cc: "David S . Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 kernel@collabora.com
Subject: Re: [PATCH v2 2/2] ethernet: stmmac: dwmac-rk: Add GMAC support for RK3576
Date: Thu, 15 Aug 2024 18:35:22 +0200
Message-ID: <2148922.heUyiRONoq@diego>
In-Reply-To: <a73ff2ab-7e68-4d6b-b38d-37e7303af40d@rock-chips.com>
References: <20240808170113.82775-1-detlev.casanova@collabora.com>
 <3304458.aeNJFYEL58@trenzalore>
 <a73ff2ab-7e68-4d6b-b38d-37e7303af40d@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_093539_202904_DC3ECED9 
X-CRM114-Status: GOOD (  13.07  )
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

SGkgRGF2aWQsCgpBbSBNb250YWcsIDEyLiBBdWd1c3QgMjAyNCwgMDQ6MjE6MjcgQ0VTVCBzY2hy
aWViIERhdmlkIFd1Ogo+IEhpIERldGxldiwgSGVpa286Cj4gCj4gSXQncyByZWFsbHkgYSBUUk0g
ZXJyb3IgaGVyZSwgUk1JSSBQSFkgaGFzIGJlZW4gdmVyaWZpZWQgZm9yIHRoaXMgcGF0Y2guCgp0
aGFua3MgZm9yIGRvdWJsZSBjaGVja2luZy4KCgpIZWlrbwoKPiDlnKggMjAyNC84LzkgMjI6Mzgs
IERldGxldiBDYXNhbm92YSDlhpnpgZM6Cj4gPiBDYW4ndCBiZSBzdXJlIGFib3V0IHRoYXQuIEFu
IGVycm9yIGluIHRoZSBUUk0gaXMgbm90IGltcG9zc2libGUgZWl0aGVyLCBhcyBmb3IKPiA+IHJr
MzU4OCwgaXQgaXMgYWxzbyBiaXRbNV09MDogRElWMjAgYW5kIGJpdFs1XT0xOiBESVYyLiBJIGNh
biBzd2l0Y2ggdGhlbSB0bwo+ID4gbWF0Y2ggdGhlIFRSTSB0aG91Z2gsIHdlIG1heSBuZXZlciBu
b3cuCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
