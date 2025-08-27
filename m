Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DBBACA0EFF
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Aug 2025 07:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XGXbtgCjSEM/M//8grcxbLb4cdekmQNG9tZdAjLVMtQ=; b=cPzm6JjaT6QU9f
	ASDcyeumZSaLUah0G2kw4thUqNtVNtkoNlFYvOEavY9tuwAEHkUhwLDKqRSTobykgIQA5KoyPENq/
	FbZz1PBmDooKR0PosQ1JEXhs70MgFBaJtbhTMM2AUWtNhE/i6KoOqbaW6QchL3/Omo4c8/LUJjULD
	wkOhXWsXY2PI3AnGDnfUgvF1bpRchwPD3g3qrF19uSJKpvtdF8ZMynmrVqpOpNUqygf9y8j/oqXS0
	rgI6OgalrxLDS83yA7/dQm2TX4EHayphRmcyPxeZAzmi6ur4Jt8vHG2OOR1Crc6Uk/7yOZHLxltLW
	fkuuYCfvIZG+FJiMDYwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAgd-0000000ERTw-01Cp;
	Wed, 27 Aug 2025 07:35:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAgb-0000000ERTU-1oO2;
	Wed, 27 Aug 2025 07:35:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=2E2t5XJ0oBHE/MDQjcbZItd2IrlEm9kNRRgPclvPx2Y=; b=d2RbQ3nCt0XxW2U2DLMZChYloi
	d5eQn89A/HdfRc31T9TX20Cit5iQhZEbYz8FU+Op2uwrpTQJFkomToo9HAf9Ajoggl18IP0ICBPAG
	QLdzMWM7fMb3+zMHO2fkMS332lbiTQi7Qg+hOFBWqiUVgyTIXZD716jtoFvodKL3XztcgfxzIYCM3
	QZYuXAVbhw4q+3xVDhMNw+VG2rpBrcQI2LEeOawFmlvFK81ry2C9NDk2c+fcKymXIxgaMKnrU9xHU
	ihgZskcsMTnnzx7nsVJ28487r83YWoB/Qxw+TKfdikpmoHcPgO90+SeZsfFsTVPRDFHkq/104YGfA
	AwwMxLcw==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1urAgX-00000002NHD-1WuP;
	Wed, 27 Aug 2025 07:35:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=2E2t5XJ0oBHE/MDQjcbZItd2IrlEm9kNRRgPclvPx2Y=; b=q+dEkXRNy3JfEbTDNXEe/S/Q0S
	Lzw01WTWTAPxZ0eF1o36zaQhaBOKLAMxG7r/pgMIvbRAAAs1FvocPigGldPnwWmIjkVRFQQp3SoP+
	B0TRDhzc0ZpGNvZBCPRCp01Fr5cu7nos/o8IIpBrM7voobaAWUhtgpBGTcxChnkaaYzoiHCKjNjcx
	DX5yLcYwUr+yT2mONOZMl4kZJIbm0Ia0+tFlKMoA2t/ASxSDWPh5U2RqQY9HQyKj0hI0LR8oqVHAn
	iNu+Hg8d5nSM87e28dKJ8XEIbGJAwTuLvwVcl82p8CMiqxhL6axkl4rH0x9WfV64Kl21R0NePmiKI
	8Iy4r5HQ==;
Received: from [213.244.170.152] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1urAg9-00062s-SC; Wed, 27 Aug 2025 09:34:45 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Yury Norov <yury.norov@gmail.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Jaehoon Chung <jh80.chung@samsung.com>, Ulf Hansson <ulf.hansson@linaro.org>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>,
 Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?UTF-8?B?V2lsY3p5xYRza2k=?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>, Qin Jian <qinjian@cqplus1.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH v3 12/20] phy: rockchip-usb: switch to FIELD_PREP_WM16 macro
Date: Wed, 27 Aug 2025 09:34:44 +0200
Message-ID: <5249188.NgBsaNRSFp@phil>
In-Reply-To: <20250825-byeword-update-v3-12-947b841cdb29@collabora.com>
References: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
 <20250825-byeword-update-v3-12-947b841cdb29@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250827_083510_138237_66869975 
X-CRM114-Status: GOOD (  14.10  )
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
Cc: linux-pm@vger.kernel.org, netdev@vger.kernel.org, llvm@lists.linux.dev, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, kernel@collabora.com, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gTW9udGFnLCAyNS4gQXVndXN0IDIwMjUsIDEwOjI4OjMyIE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgTmljb2xhcyBGcmF0dGFyb2xpOgo+IFRoZSBlcmEgb2YgaGFuZC1y
b2xsZWQgSElXT1JEX1VQREFURSBtYWNyb3MgaXMgb3ZlciwgYXQgbGVhc3QgZm9yIHRob3NlCj4g
ZHJpdmVycyB0aGF0IHVzZSBjb25zdGFudCBtYXNrcy4KPiAKPiBSZW1vdmUgdGhpcyBkcml2ZXIn
cyBISVdPUkRfVVBEQVRFIG1hY3JvLCBhbmQgcmVwbGFjZSBhbGwgaW5zdGFuY2VzIG9mCj4gaXQg
d2l0aCAoaG9wZWZ1bGx5KSBlcXVpdmFsZW50IEZJRUxEX1BSRVBfV00xNiBpbnN0YW5jZXMuIFRv
IGRvIHRoaXMsIGEKPiBmZXcgb2YgdGhlIGRlZmluZXMgYXJlIGJlaW5nIGFkanVzdGVkLCBhcyBG
SUVMRF9QUkVQX1dNMTYgc2hpZnRzIHVwIHRoZQo+IHZhbHVlIGZvciB1cy4gVGhpcyBnZXRzIHJp
ZCBvZiB0aGUgaWNreSB1cGRhdGUobWFzaywgbWFzaykgc2hlbmFuaWdhbnMuCj4gCj4gVGhlIGJl
bmVmaXQgb2YgdXNpbmcgRklFTERfUFJFUF9XTTE2IGlzIHRoYXQgaXQgZG9lcyBtb3JlIGNoZWNr
aW5nIG9mCj4gdGhlIGlucHV0LCBob3BlZnVsbHkgY2F0Y2hpbmcgZXJyb3JzLiBJbiBwcmFjdGlj
ZSwgYSBzaGFyZWQgZGVmaW5pdGlvbgo+IG1ha2VzIGNvZGUgbW9yZSByZWFkYWJsZSB0aGFuIHNl
dmVyYWwgZGlmZmVyZW50IGZsYXZvdXJzIG9mIHRoZSBzYW1lCj4gbWFjcm8sIGFuZCB0aGUgc2hp
ZnRlZCB2YWx1ZSBoZWxwcyBhcyB3ZWxsLgo+IAo+IEkgZG8gbm90IGhhdmUgdGhlIGhhcmR3YXJl
IHRoYXQgdXNlcyB0aGlzIHBhcnRpY3VsYXIgZHJpdmVyLCBzbyBpdCdzCj4gY29tcGlsZS10ZXN0
ZWQgb25seSBhcyBmYXIgYXMgbXkgb3duIHRlc3RpbmcgZ29lcy4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBOaWNvbGFzIEZyYXR0YXJvbGkgPG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPgoK
UmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
