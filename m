Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 152ECD1BDD4
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Dec 2025 20:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OTZMZ1UaPiRgnO8blep5mgBKwxnf2ACvUnLV4k9y3pQ=; b=j2ciQaMEU68Q0G
	NcjskMEbPV4XB4xvpdEhZ9OIZa2S5kloL8AdCP/mVKczNblc0a3JYFCdsolT8V+hF2zEEBFnC1VYL
	uwNScNpFvsZd9CHwymtHz4zRwPNV3wstYeuddhIggSGljMKChLYUX6OUdMo6vqjUT/IXUupKkbYQZ
	8RtnIt1royVCOTN5i9oTB8alo9IQXAerHku0G9aSxEDP90St1dkTg1mKcR8mzJvk9VHAgbSMK842x
	Yl4EhVQV8mU2plL6lWGtmlRar5Kq7GaSgLppwFp+dNyH44MpfZqqJTkKj7I7dy4EJ0WRM4m07pbKu
	ZeL4sgatYm2p//YAE97Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQtSn-000000072Xw-0kKD;
	Wed, 03 Dec 2025 20:28:37 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQtSl-000000072X8-0eqN;
	Wed, 03 Dec 2025 20:28:36 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 71499443F5;
	Wed,  3 Dec 2025 20:28:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 67828C4CEFB;
	Wed,  3 Dec 2025 20:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764793714;
	bh=/Pw/ZfkaD7UiOYHsr9Mmwf+U3Hy4ekwK9M9qWlsLp0s=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=L/ExZlrXem22UeCby8d+SUnAjg3PCzyD1pU5n1N6IHVT8ut1QDlNPRtVTaICnrZyz
	 FYIeLnJiwo+yt1q77bjnq9AJFilG9uYJcgyl08b1Ri8jnfEOPnLNBcL+YYixiyB0Mh
	 SyHE/JabBacji5ty9QMdpXfFt1zih664IKrmvq3ulkKL9IA03HCiyCa+Td9BxB8XyN
	 gaFlFLHlwmOC0xsy7b1XDr9/HWWY4VaURM4vbrLLThXFDr2r5W2pp7QxlWPeUaBDvw
	 yIDedCYlbSWpjEqTvbJWhhQ4a1qEN0YBMJ+z9MhHCSEUgfowEu7q9fxrKdWVemohGn
	 6Fxq5ybPqUJAA==
Message-ID: <81593c42-fcc2-47ad-8d0f-69a2d17664a6@kernel.org>
Date: Wed, 3 Dec 2025 21:28:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/22] media: dt-bindings: media: rockchip-rga: add
 rockchip,rk3588-rga3
To: =?UTF-8?Q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>,
 Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de
References: <20251203-spu-rga3-v2-0-989a67947f71@pengutronix.de>
 <20251203-spu-rga3-v2-1-989a67947f71@pengutronix.de>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <20251203-spu-rga3-v2-1-989a67947f71@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_122835_244574_6B8132F9 
X-CRM114-Status: GOOD (  10.97  )
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

T24gMDMvMTIvMjAyNSAxNjo1MiwgU3ZlbiBQw7xzY2hlbCB3cm90ZToKPiBBZGQgYSBuZXcgY29t
cGF0aWJsZSBmb3IgdGhlIFJHQTMgKFJhc3RlciBHcmFwaGljIEFjY2VsZXJhdGlvbiAzKQo+IHBl
cmlwaGVyYWwgZm91bmQgb24gdGhlIFJLMzU4OCBTb0MuCj4gCj4gVGhlIGV4aXN0aW5nIHJnYSBu
b2RlIHJlZmVycyB0byB0aGUgUkdBMiBwZXJpcGhlcmFsLiBUaGUgUkszNTg4CgpXaGF0IGlzICJl
eGlzdGluZyByZ2Egbm9kZSI/IFRoZXJlIGlzIG5vIG5vZGUgaGVyZS4gVGhpcyBpcyBhIHBhdGNo
IGZvcgpiaW5kaW5ncywgc28geW91IHNheSB3aGljaCBoYXJkd2FyZSBleGlzdGluZyBiaW5kaW5n
IGRlc2NyaWJlcyBhbmQgd2hhdAphcmUgdGhlIGRpZmZlcmVuY2VzIGFnYWluc3QgdGhhdCBvbGRl
ciBoYXJkd2FyZS4KCj4gY29udGFpbnMgb25lIFJHQTIgY29yZSBhbmQgdHdvIFJHQTMgY29yZXMu
IEJvdGggZmVhdHVyZSBhIHNpbWlsYXIKPiBmdW5jdGlvbmFsaXR5IG9mIHNjYWxpbmcsIGNyb3Bw
aW5nIGFuZCByb3RhdGluZyBvZiB1cCB0byB0d28gaW5wdXQKPiBpbWFnZXMgaW50byBvbmUgb3V0
cHV0IGltYWdlLiBLZXkgZGlmZmVyZW5jZXMgb2YgdGhlIFJHQTMgYXJlOgo+IAo+IC0gc3VwcG9y
dHMgMTBiaXQgWVVWIG91dHB1dCBmb3JtYXRzCj4gLSBzdXBwb3J0cyA4eDggdGlsZXMgYW5kIEZC
Q0QgYXMgaW5wdXRzIGFuZCBvdXRwdXRzCj4gLSBzdXBwb3J0cyBCVDIwMjAgY29sb3Igc3BhY2Ug
Y29udmVyc2lvbgo+IC0gbWF4IG91dHB1dCByZXNvbHV0aW9uIG9mICg4MTkyLTY0KXgoODE5Mi02
NCkKPiAtIE1NVSBjYW4gbWFwIHVwIHRvIDMyRyBERFIgUkFNCj4gLSBmdWxseSBwbGFuYXIgZm9y
bWF0cyAoMyBwbGFuZXMpIGFyZSBub3Qgc3VwcG9ydGVkCj4gLSBtYXggc2NhbGUgdXAvZG93biBm
YWN0b3Igb2YgOAoKImRpZmZlcmVuY2VzIiBpbiBtZWFuaW5nIG5vdGhpbmcgYWJvdmUgaXMgc3Vw
cG9ydGVkIGJ5IFJHQTI/Cgo+IAo+IFNpZ25lZC1vZmYtYnk6IFN2ZW4gUMO8c2NoZWwgPHMucHVl
c2NoZWxAcGVuZ3V0cm9uaXguZGU+Cj4gLS0tCgpBY2tlZC1ieTogS3J6eXN6dG9mIEtvemxvd3Nr
aSA8a3J6eXN6dG9mLmtvemxvd3NraUBvc3MucXVhbGNvbW0uY29tPgoKCkJlc3QgcmVnYXJkcywK
S3J6eXN6dG9mCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
