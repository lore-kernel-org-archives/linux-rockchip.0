Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F00BC369D7
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Apr 2025 10:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zZvC54p0SNs7fZRamq/MiStQSTk/61/99EJqUv5+QFc=; b=JI60QfC+lgD3ve
	dvTRSimlmCjUP6TB0Mi6y9t0iN7J7zX0PHChF4bv3rdHzEFKxHRvagC5m1R/FNNoN/pNEEB6iIpxl
	HFIgs/VWGgXclSCQaoUBuGAgqH4Z72hwHTbl6lTnWmcT3a3HnuHonoe+aPwBgbZhXFgHAz5CccU5z
	PNNU81cZplG1WxwhIos+7Jif8GAy4BpDM3n3Ecek/tiQi9TvwEBhEtYYrgy3aQS5pTq8EIW6vbUQp
	xicDuEbMj24uSTIYqV0cOQu2/UX+wPvLNG+ACCPIMln6gP54NxMwok6x/SYxWNXNod6WxlOih/t8Z
	9mjdimkIqJBYG59AbdGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7B1T-00000006nse-1e7h;
	Tue, 22 Apr 2025 10:38:39 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7AWv-00000006g9r-2Xm4;
	Tue, 22 Apr 2025 10:07:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=XWX3ya/A0m+GCH7EVCobSWcufZuNadjRVsGC/wTlWEQ=; b=Oh84lwbFzKuCEboH1qV2vZ6KMc
	4+ZkuBhwLc7vDDemjPc6i9W26GkFXYmpFuGVUu/M1c9xKGdMTTFgKm8/6yRgO8+fTsZV95twjQT5u
	JRWu29iFEmF2FRnTf97Cn6PTAK8wWeWXWab/VWwk+zFl9EJMZbTgrXZo2KiuW1MYE7xST7kDcGbIN
	iKYHxc58JjuXSU7Da7+5C9mL8BW7zr6yMSyLbCU+2WjYJAWOKCt90Anqhy9YTiL7T7zCrvzVmvNDp
	eT7w0ljKQehnLyKsyaQSrz2TfAXvhU/qaQyVVHD5VQWHyHChcGiQem0GSnZDJcoq2WQxdjjQLmJFB
	unq43JYA==;
Received: from i53875b95.versanet.de ([83.135.91.149] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1u7AWn-0001RD-JL; Tue, 22 Apr 2025 12:06:57 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org,
 Kever Yang <kever.yang@rock-chips.com>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 1/3] dt-bindings: nvmem: rockchip,otp: Add support for rk3562
 and rk3568
Date: Tue, 22 Apr 2025 12:06:56 +0200
Message-ID: <9448537.CDJkKcVGEf@diego>
In-Reply-To: <20250415103203.82972-2-kever.yang@rock-chips.com>
References: <20250415103203.82972-1-kever.yang@rock-chips.com>
 <20250415103203.82972-2-kever.yang@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_030705_642288_8B2C3D8A 
X-CRM114-Status: UNSURE (   7.35  )
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

QW0gRGllbnN0YWcsIDE1LiBBcHJpbCAyMDI1LCAxMjozMjowMSBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIEtldmVyIFlhbmc6Cj4gQWRkIGNvbXBhdGlibGUgZW50cnkgZm9y
IHRoZSBvdHAgY29udHJvbGxlciBpbiByazM1NjIgYW5kIHJrMzU2OCwgYWRkIHNjaGVtYQo+IGZv
ciBkaWZmZXJlbnQgY2xvY2sgbmFtZXMgZm9yIG5ldyBlbnRyeS4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tPgoKUmV2aWV3ZWQtYnk6IEhl
aWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+CgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
