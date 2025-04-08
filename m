Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A7D79C369A4
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Apr 2025 13:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eooe6FC6+EsjdbFoM1+AHXlanzaOMd+KHN8uh1UBqHA=; b=Eq1mAwY9m4F1+o
	0Iv2+YYpqTKxq8hdErGS1en5bnHCkoiIFZhdO6FkscX2kwqEmgmKUxLwOzwz6y0Wog/4EhD36ifpV
	DwkgDVJ/sIS4dqpc0gKB4Snu2E81XssJU82Iqknys/C1TVG1dGTDhSvX4xUS847ryJZX7syWJL8xg
	kagdvLtsa/lWz8DOJHbnb7le+w0XYr6nsm9gMjqImUKlRy1iCwAd9L4gdM3w7ppu/ODRIzW0IjPgq
	XanLUA4o0Vn4ojOVzpaeeDGYPJNOa2Cq3l6gWBsFIGZM9BsTBiXoHJ1tYRXfDKZ26Il5MkA6PmaOL
	2sKqzeyCToOba4BwpfQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u29QD-00000004HFU-31js;
	Tue, 08 Apr 2025 13:55:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u28of-00000004AA6-2pQl;
	Tue, 08 Apr 2025 13:16:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=/DaIn1hXvAed6evdNr/FMZd3K+jUtBILZseoN0UJCnA=; b=brAI1u2ulxGM0CCcKVIk9DLtsU
	x1QpBDf4t40EYyDk0aExI2CA+f1LjNX0RAFgksI6LHldUu9YOSlJIS1BhUkNNWNumPckieva8Fl3N
	MPKpKfIrmSgf0nEbPFy0URBBb2W93xlmIwDpp0L3imOkXltGVPBQgakdiLfq5ZzRtO4tjjDC9o1zO
	r/cVK+P2fc7XzfzfOw+evJd/s1kpAP1bP3kzv8dGzFqqiaCaaXl7gTQE4leefAPUucP/50aDr+QQ9
	WLtX6pnoQjaJpgmoe/e3fJqSAHNsz9VpejNpzoBDyqij3Wzx692DediLU+cvvztjYwa5IpbLBbM61
	YMlFt0bw==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u28oc-00000008J2W-2nK7;
	Tue, 08 Apr 2025 13:16:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=/DaIn1hXvAed6evdNr/FMZd3K+jUtBILZseoN0UJCnA=; b=Pj/kCOmSCTuBYrYVphjmizbPXT
	PoWmvrUNX5cTy4GMWhifyZCeMyTjgleXjvMmM/k6tI+4/jznlaOBbR4gOJgNNsm446wUAwyuhTzuY
	L5fc6bIowzbzaXxf2HohBWN1cs/RUjGMtxIIsl479bZ0fd6YtfxwT5C46MfbnI133zjrGCORTe2sY
	2V+EEQeFTzOdwuL6G8YjXDdfDSqW2Vb8pK+Yu1GGKjer0U8xZOCCk2yIBMNY9v9SUPufm6fkIohgI
	WCxaJDn9tZNePV7sXXs0Jxa9sAa/kRKzFHNNxEbAQG8Xz56Mt/C5Uz1mlyvTZAtWuofnGfhwQDn7L
	hNOs0iLw==;
Received: from i53875b95.versanet.de ([83.135.91.149] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u28oD-00035s-9O; Tue, 08 Apr 2025 15:16:09 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org,
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Hans Verkuil <hverkuil@xs4all.nl>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Jonas Karlman <jonas@kwiboo.se>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Niklas Cassel <cassel@kernel.org>, Alexey Charkov <alchark@gmail.com>,
 Dragan Simic <dsimic@manjaro.org>, Jianfeng Liu <liujianfeng1994@gmail.com>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Umang Jain <umang.jain@ideasonboard.com>,
 Naushir Patuck <naush@raspberrypi.com>,
 Jean-Michel Hautbois <jeanmichel.hautbois@ideasonboard.com>,
 Dmitry Perchanov <dmitry.perchanov@intel.com>,
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
Subject: Re: [PATCH v4 6/6] arm64: dts: rockchip: Add rkvdec2 Video Decoder on
 rk3588(s)
Date: Tue, 08 Apr 2025 15:16:05 +0200
Message-ID: <9432379.CDJkKcVGEf@diego>
In-Reply-To: <20250325213303.826925-7-detlev.casanova@collabora.com>
References: <20250325213303.826925-1-detlev.casanova@collabora.com>
 <20250325213303.826925-7-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250408_141634_870176_64F0AFC6 
X-CRM114-Status: UNSURE (   9.47  )
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

SGkgRGV0bGV2LAoKQW0gRGllbnN0YWcsIDI1LiBNw6RyeiAyMDI1LCAyMjoyMjoyMiBNaXR0ZWxl
dXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIERldGxldiBDYXNhbm92YToKPiBBZGQgdGhl
IHJrdmRlYzIgVmlkZW8gRGVjb2RlciB0byB0aGUgUkszNTg4cyBkZXZpY2V0cmVlLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IERldGxldiBDYXNhbm92YSA8ZGV0bGV2LmNhc2Fub3ZhQGNvbGxhYm9yYS5j
b20+Cj4gLS0tCgo+ICsJdmRlYzFfbW11OiBpb21tdUBmZGM0MDcwMCB7Cj4gKwkJY29tcGF0aWJs
ZSA9ICJyb2NrY2hpcCxyazM1ODgtaW9tbXUiLCAicm9ja2NoaXAscmszNTY4LWlvbW11IjsKPiAr
CQlyZWcgPSA8MHgwIDB4ZmRjNDA3MDAgMHgwIDB4NDA+LCA8MHgwIDB4ZmRjNDA3NDAgMHgwIDB4
NDA+Owo+ICsJCWludGVycnVwdHMgPSA8R0lDX1NQSSA5NiBJUlFfVFlQRV9MRVZFTF9ISUdIIDA+
Owo+ICsJCWNsb2NrcyA9IDwmY3J1IEFDTEtfUktWREVDMD4sIDwmY3J1IEhDTEtfUktWREVDMD47
Cj4gKwkJY2xvY2stbmFtZXMgPSAiYWNsayIsICJpZmFjZSI7Cj4gKwkJcG93ZXItZG9tYWlucyA9
IDwmcG93ZXIgUkszNTg4X1BEX1JLVkRFQzA+Owo+ICsJCSNpb21tdS1jZWxscyA9IDwwPjsKPiAr
CX07CgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFz
ZS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpCmlu
ZGV4IDI0ZWNiZmYwNmNkMjcuLjhiZGU4ZTI1N2VhYzkgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWJhc2UuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLmR0c2kKQEAgLTEzOTUsNyArMTM5NSw3IEBAIHZkZWMx
X21tdTogaW9tbXVAZmRjNDA3MDAgewogICAgICAgICAgICAgICAgaW50ZXJydXB0cyA9IDxHSUNf
U1BJIDk2IElSUV9UWVBFX0xFVkVMX0hJR0ggMD47CiAgICAgICAgICAgICAgICBjbG9ja3MgPSA8
JmNydSBBQ0xLX1JLVkRFQzA+LCA8JmNydSBIQ0xLX1JLVkRFQzA+OwogICAgICAgICAgICAgICAg
Y2xvY2stbmFtZXMgPSAiYWNsayIsICJpZmFjZSI7Ci0gICAgICAgICAgICAgICBwb3dlci1kb21h
aW5zID0gPCZwb3dlciBSSzM1ODhfUERfUktWREVDMD47CisgICAgICAgICAgICAgICBwb3dlci1k
b21haW5zID0gPCZwb3dlciBSSzM1ODhfUERfUktWREVDMT47CiAgICAgICAgICAgICAgICAjaW9t
bXUtY2VsbHMgPSA8MD47CiAgICAgICAgfTsKCk5lZWRzIHRvIHVzZSB0aGUgY29ycmVjdCBwb3dl
ci1kb21haW4sIG90aGVyd2lzZSBlbmRzIGluIFNFcnJvcnMgb24gNi4xNS1yYzEKCgpIZWlrbwoK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
