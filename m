Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DC0DE936E6
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Oct 2023 21:33:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s8OkEtdd35JhTT/3SF2YBX7mUQy/QniM2VG8i41fJDQ=; b=ngurXLXiBN+XqV
	bx+iM/AlyQm3Mj+pQ17f9BeB/iGHH0PUMewj8zE0u6fiNEU3/JlTvCGdU4lGxUypJT9blYD07DZNA
	9iBK8H+aCltqSJmXITPmwxo9LuwqnmIRRMk9XF3SEEGE6pPTo5LptkKzBI9VoHIHeVSeHfsBYYTTM
	pcPfccPyy7/wIhG2SbSkpNudxWqIkx6kNX6zIV8GTFUeZ4riqPTs16BrsYaFDqH0j0Zjl9tyJvREe
	Jph/DhQM3epaiA8zGZEDYlcF0qN+2t+N1QRJeL5oQDhdQFD64NjUvXz78QWPShGOAaICprDDJ3skh
	3UeeZZ74ZnATNJ0uYm9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qo9UR-000w0Z-2q;
	Wed, 04 Oct 2023 21:33:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qo9UO-000vv9-11;
	Wed, 04 Oct 2023 21:33:06 +0000
Received: from i53875a3c.versanet.de ([83.135.90.60] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qo9UE-0005RF-7v; Wed, 04 Oct 2023 23:32:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Tam=C3=A1s=20Sz=C5=B1cs?= <tszucs@protonmail.ch>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	linux-kernel@vger.kernel.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	linux-rockchip@lists.infradead.org,
	Rob Herring <robh+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Christopher Obbard <chris.obbard@collabora.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Add sdio node to rock-5b
Date: Wed,  4 Oct 2023 23:32:48 +0200
Message-Id: <169645508390.141514.13803865232611146322.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230924203740.65744-1-tszucs@protonmail.ch>
References: <20230924203740.65744-1-tszucs@protonmail.ch>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231004_143304_356336_9ADCF874 
X-CRM114-Status: GOOD (  10.53  )
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

T24gU3VuLCAyNCBTZXAgMjAyMyAyMDozNzo0NSArMDAwMCwgVGFtw6FzIFN6xbFjcyB3cm90ZToK
PiBFbmFibGUgU0RJTyBvbiBSYWR4YSBST0NLIDUgTW9kZWwgQiBNLjIgS2V5IEUuIEFkZCBzZGlv
IG5vZGUgYW5kIGFsaWFzIGFzIG1tYzIuCj4gQWRkIHJlZ3VsYXRvciBmb3IgdGhlIDMuMyBWIHJh
aWwgYnJpbmdpbmcgaXQgdXAgZHVyaW5nIGJvb3QuIE1ha2Ugc3VyZSBFS0VZX0VOCj4gaXMgbXV4
ZWQgYXMgR1BJTy4KPiAKPiAKCkFwcGxpZWQsIHRoYW5rcyEKClsxLzFdIGFybTY0OiBkdHM6IHJv
Y2tjaGlwOiBBZGQgc2RpbyBub2RlIHRvIHJvY2stNWIKICAgICAgY29tbWl0OiAxYzlhNTNmZjdl
Y2UwNTZlYjk5NTMzMmYwZDk1MjNjYTQzZmRjYjVhCgpCZXN0IHJlZ2FyZHMsCi0tIApIZWlrbyBT
dHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
