Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC26CC282EC
	for <linux-rockchip@archiver.kernel.org>; Sat,  8 Mar 2025 16:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+r7l6z11UBFI2vyxphKJTIi4IlEKC8t9HwYsKFAS3OA=; b=o00E69MH212LKi
	AeXvE8UHCqCsTWGXTU5hO4M76ycXPfAmJHU1pACB/LEhfiH3oMNKI4X8mV1ja34WUcxRdlLKMfTTc
	bUmLwmeoWVmq2E6GHjwr4He5c5OC2Qkzf4Ht2T9iYSamPX8sC4qN1ublgdPXwQFgJKu8a5l9SrK4R
	WM72GIeHbCo2XgiZMNZnSoq1dW3c/nvgo0chWVsdqaprbeSe2g4FljYjP8TRTtZTUtFEroiRO9k/x
	dd10YifpWggEMBaUywDxPOLpZuR4VcWjD6uxspbwKpq2TCjM5B/sgtzwRzwhe279Ej8QBNl59l2KY
	YoYu+5VogeNDXT6Xc7dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqx10-0000000GrVJ-3meV;
	Sat, 08 Mar 2025 16:27:06 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqwzN-0000000GrQI-1dbJ;
	Sat, 08 Mar 2025 16:25:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=OD2hOtHQa0uwK+Cr0jnQY97FmNfZwoPMsZKx2Stcwn4=; b=Xt+M408YamdyCB/pMOD0BkKihm
	Hg6ZflaaQS2yqz405faQ82I6AxOV5ze5MwaXsxDiX7jKdOlcr18KDU9B5DRXEe4CHalzrA6aic/MM
	ITyEbZ0xgApQGzSXFTa71eg+cMXC+e9NvmU84UNo8p24AytPE34azJbvb5lU3TqzADoEc+h+nIbAT
	VTHUHySoUwGoyGdt5VQqBXcDVHq1KTZYnQx4OXtPUSrYIX9K1aYSr7O8ORPhsXPJMdipeOTo8byPj
	0aFzVLwicZTfM69yy6XoIt4cW8DCrHzIRLL27pKTUkjOD4ZK9UPEbOnMW+GXEyLIa2la5dZUzh2VN
	gdlbWLzA==;
Received: from [194.95.143.137] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1tqwz8-0003oR-SC; Sat, 08 Mar 2025 17:25:10 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: Chukun Pan <amadeus@jmu.edu.cn>,
 Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <ukleinek@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>,
 Yao Zi <ziyao@disroot.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-pwm@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: pwm: rockchip: Add rockchip,rk3528-pwm
Date: Sat, 08 Mar 2025 17:25:09 +0100
Message-ID: <5942715.DvuYhMxLoT@phil>
In-Reply-To: <pnlkcc2rl7fegltovgtvp4xdxhonw72rclvhn7qmvb7xyuullm@xf5x6lcigji3>
References: <20250307120004.959980-1-amadeus@jmu.edu.cn>
 <20250307120004.959980-2-amadeus@jmu.edu.cn>
 <pnlkcc2rl7fegltovgtvp4xdxhonw72rclvhn7qmvb7xyuullm@xf5x6lcigji3>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250308_082525_449024_9BC49AD0 
X-CRM114-Status: GOOD (  13.80  )
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

SGkgVXdlLAoKQW0gRnJlaXRhZywgNy4gTcOkcnogMjAyNSwgMTg6MDc6NDcgTUVaIHNjaHJpZWIg
VXdlIEtsZWluZS1Lw7ZuaWc6Cj4gT24gRnJpLCBNYXIgMDcsIDIwMjUgYXQgMDg6MDA6MDNQTSAr
MDgwMCwgQ2h1a3VuIFBhbiB3cm90ZToKPiA+IERvY3VtZW50IHB3bSBjb21wYXRpYmxlIGZvciBy
azM1Mjggd2hpY2ggaXMgZmFsbGJhY2sgY29tcGF0aWJsZQo+ID4gb2YgcmszMzI4LXB3bSBncm91
cC4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogQ2h1a3VuIFBhbiA8YW1hZGV1c0BqbXUuZWR1LmNu
Pgo+IAo+IHRvIHByZXZlbnQgYmluZGluZyB3YXJuaW5ncyBpdCdzIHByb2JhYmx5IHNlbnNpYmxl
IHRvIGxldCBib3RoIHBhdGNoZXMKPiBnbyBpbiB2aWEgdGhlIHNhbWUgdHJlZSBhdCB0aGUgc2Ft
ZSB0aW1lLiBGZWVsIGZyZWUgdG8gdGFrZSB0aGUgYmluZGluZwo+IHBhdGNoIHZpYSByb2NrY2hp
cC9hcm0tc29jLgo+IAo+IEFja2VkLWJ5OiBVd2UgS2xlaW5lLUvDtm5pZyA8dWtsZWluZWtAa2Vy
bmVsLm9yZz4KCllvdSBhbHJlYWR5IGhhdmUgdGhlIHJrMzU2MiBiaW5kaW5nIGluIHlvdXIgZm9y
LW5leHQgYnJhbmNoIFswXSwgd2hpY2gKY291bGQgY3JlYXRlIG1lcmdlLWNvbmZsaWN0cyBsYXRl
ciBvbi4KClRoaXMgcGF0Y2ggYWxyZWFkeSBjb250YWlucyBpdCwgc28gc2hvdWxkIGZpdCBuZWF0
bHkgb250byB5b3VyIGJyYW5jaC4KCkFuZCBiaW5kaW5nIHdhcm5pbmdzIG9ubHkgY29tZSBmcm9t
IGxpbnV4LW5leHQsIHNvIHdvbid0IHRyaWdnZXIgYXMgdGhlCnB3bSB3aWxsIGZlZWQgdGhlIGJp
bmRpbmcgdGhlcmUgdG9vIDotKQoKU28gSSBndWVzcyBpdCBtaWdodCBiZSBiZXR0ZXIgdG8gdGFr
ZSB0aGUgYmluZGluZyB0aHJvdWdoIHRoZSBwd20gdHJlZQphbmQgbWUgdGhlbiBwaWNraW5nIHVw
IHRoZSBkdHMgcGF0Y2guCgpGb3IgdGhlIGJpbmRpbmcKUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVi
bmVyIDxoZWlrb0BzbnRlY2guZGU+CgoKWzBdIGh0dHBzOi8vd2ViLmdpdC5rZXJuZWwub3JnL3B1
Yi9zY20vbGludXgva2VybmVsL2dpdC91a2xlaW5lay9saW51eC5naXQvY29tbWl0Lz9oPXB3bS9m
b3ItbmV4dCZpZD0wNTgyMTBlODRiNDhkYmI2NzBhNmJmNzJhZmFlZDZmYmQ4MDQzYTM3CgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
