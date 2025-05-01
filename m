Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 361C1C369DC
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 May 2025 10:44:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AISVrwBpiFlW+q4PxgeukuQUz7MusqHl7lqC6APtKds=; b=N6YJLd9cWf8MsF
	1bNGdR/+LrEb6gCma+3uwfPNL968JtjRChKFaBAk6Ra10E+IRlwu0jVSfjizEj9vcHQkKyQk3YdXV
	bjXeGaT0a4H6kJS2vU2hljbe+Ks2Z4cILjwFaTgAQUEaHkoE+mNwVnfVIPFDD+YN2rgpLZZ8ko+ni
	Bvi3YUCpQFmh/0xm9xjPspJaoGvEuUsQC64HTIrXsOKsnmjZnsQa9vfeH+QThtZwQSRlxn/5GQC47
	hC9XDQkq5WNKUmWt1Ti7PYbsaNRdakV/ZEP1KwEge9n6GbsR/PdZfMueAZJ+5G/x2cDjRDRh6hawi
	PPn3v2yuzkmgIdI6RIjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uAROw-0000000FDZ1-45XP;
	Thu, 01 May 2025 10:44:22 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uARN1-0000000FDKX-2nYi;
	Thu, 01 May 2025 10:42:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=4cznTst+qMqAAsGv1y6jRbf7QjInPMGR/6V/AHkDLBc=; b=wQf5hrLKogjFIn7iu54HIj9gVV
	B8l6U698R3Z1PpmjNHnCOs7AHTHCUQU29vUSVT1KOK/4SLCNUvM8yFwuo+MRLwmVbNNZG/TkjB5MT
	G8isND8Nw+40ArVtlNxt6e4DJYLxTTagx36EsSSIKtBbCG7aQH42uqyI115Y2my0QErlEeq38/Pyp
	c8s5d8VYOLpN65Ohk64s17csO+DoGYaG5dm/EX4jKA7109NbUb9i5OqgbIfF+eJh9+FxqIyfSVDfv
	1Md7ZCJc1guNuhA4XrirQWWs20UzOmpFMOhM+aUiGsLHSrTx13UR/BNtNnzNiR1X7DGkLj04kJ0/D
	8mGK8paw==;
Received: from i53875bbc.versanet.de ([83.135.91.188] helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uARMx-0007pM-5S; Thu, 01 May 2025 12:42:19 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: phy: rockchip: Convert RK3399 Type-C PHY to
 schema
Date: Thu, 01 May 2025 12:42:17 +0200
Message-ID: <3149284.mvXUDI8C0e@phil>
In-Reply-To: <20250416202419.3836688-1-robh@kernel.org>
References: <20250416202419.3836688-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250501_034223_721945_F8521F3E 
X-CRM114-Status: UNSURE (   8.03  )
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

QW0gTWl0dHdvY2gsIDE2LiBBcHJpbCAyMDI1LCAyMjoyNDoxNyBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIFJvYiBIZXJyaW5nIChBcm0pOgo+IENvbnZlcnQgdGhlIFJvY2tj
aGlwIFJLMzM5OSBUeXBlLUMgUEhZIHRvIERUIHNjaGVtYSBmb3JtYXQuIEFkZCB0aGUKPiBtaXNz
aW5nICJwb3dlci1kb21haW5zIiBwcm9wZXJ0eSBhbmQgInBvcnQiIGFuZCAib3JpZW50YXRpb24t
c3dpdGNoIgo+IHByb3BlcnRpZXMgaW4gdGhlIGNoaWxkIG5vZGVzLgo+IAo+IE9taXQgdGhlIHBy
ZXZpb3VzbHkgZGVwcmVjYXRlZCBwcm9wZXJ0aWVzIGFzIHRoZXkgYXJlbid0IHVzZWQgYW55d2hl
cmUuCj4gCj4gRHJvcCB0aGUgMm5kIGV4YW1wbGUgd2hpY2ggd2FzIHByZXR0eSBtdWNoIGlkZW50
aWNhbCB0byB0aGUgMXN0IGV4YW1wbGUuCj4gCj4gU2lnbmVkLW9mZi1ieTogUm9iIEhlcnJpbmcg
KEFybSkgPHJvYmhAa2VybmVsLm9yZz4KClJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVp
a29Ac250ZWNoLmRlPgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
