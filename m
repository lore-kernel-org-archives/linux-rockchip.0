Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1F3CC83F17
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Jul 2025 12:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vkjp1V9iZ6JGFuqNQqsmP3EDZp13/ItnJNLexaXi0UQ=; b=lM6xgoF/6ZAK0t
	O1o4+zkxIfqCyC7cjfVLKWhp+avqn1yEKvOSU9y9MiXbl9Ll/ceJALfLGwb68FrW2iipv0BHStkwc
	0HK01KazyBNtFv4ImCb7RfvchmVgcT2qRnJ9j9kVzZtelD7y8i7dDFG33qAZVX1kaJB+Q8HK7BA6B
	mZqCQx1jU13ZS/alCrOoHyHFi4RNIrsVmZKmzng/BEMMJMyKjorWfOu1bTtpk/N/ilHhoht4HM5dZ
	wanHTRIkIBQJS7dKT5omgJsDcvGx00e1nGMiGEgfOIQHmoaMKEcWlX9Z7kcI1dPpTjVQA3KrujTyh
	I/FUnhpXB9t5JacwK6Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZql2-0000000Bpez-0Dd1;
	Thu, 10 Jul 2025 12:52:12 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZpH3-0000000Bc1p-36J6;
	Thu, 10 Jul 2025 11:17:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=QvwwnPsW3knLIltBIEoiitBnipa0SwOi009wD+wqp4Y=; b=BzgOQ4wH9LxFHFXobmsfZMf6m5
	Baa4elG56mrwz+nWPNi4kTSrOuSdhD/tW1ICcxbzClt5fiGocQj2RDWwHETI9eHJJE3ofyDGDu4mx
	xOTaWyL49oBdUUZ9X0ojAD997KZGLalsYIMG1m8BFVwvzUBMB1AGJFiSVa3OVbGCJ4KlkqJijKuxO
	h7hbRCJitCLvy+AL9rpKHc8QmMDu9RbY3gUhkk0zXTP9oDFcR1E2447W5S1MJcomFgdbOlYHP8HOm
	IXWiaeNqH89hCyM2aB4EF+JXX5hYpScQxft1pvZKcLaCbXw5q42jT2S9wbfMtHyioywKZwMwg3xFY
	d2verbrw==;
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uZpGv-0004Ql-5M; Thu, 10 Jul 2025 13:17:01 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Alexey Charkov <alchark@gmail.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Jonas Karlman <jonas@kwiboo.se>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH v6 2/7] dt-bindings: rockchip-thermal: Add RK3576 compatible
Date: Thu, 10 Jul 2025 13:17:00 +0200
Message-ID: <6689502.31r3eYUQgx@phil>
In-Reply-To: <20250610-rk3576-tsadc-upstream-v6-2-b6e9efbf1015@collabora.com>
References: <20250610-rk3576-tsadc-upstream-v6-0-b6e9efbf1015@collabora.com>
 <20250610-rk3576-tsadc-upstream-v6-2-b6e9efbf1015@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250710_041709_772402_A5EEDC37 
X-CRM114-Status: UNSURE (   7.54  )
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gRGllbnN0YWcsIDEwLiBKdW5pIDIwMjUsIDE0OjMyOjM4IE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IEFkZCBhIG5ldyBjb21wYXRp
YmxlIGZvciB0aGUgdGhlcm1hbCBzZW5zb3IgZGV2aWNlIG9uIHRoZSBSSzM1NzYgU29DLgo+IAo+
IEFja2VkLWJ5OiBSb2IgSGVycmluZyAoQXJtKSA8cm9iaEBrZXJuZWwub3JnPgo+IFNpZ25lZC1v
ZmYtYnk6IE5pY29sYXMgRnJhdHRhcm9saSA8bmljb2xhcy5mcmF0dGFyb2xpQGNvbGxhYm9yYS5j
b20+CgpBY2tlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
