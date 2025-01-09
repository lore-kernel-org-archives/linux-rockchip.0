Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD755E77197
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jan 2025 11:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=klru/K7GH4Nws+YxY09I/4GchvKThCUZP6PWlDJBzAs=; b=YBAkhFaCkMCj2b
	og3U+HHd7ReN4xo24rTV+OQsGhBRqS89NTma/VPFHnSi91SkDuYkckPZPOH4vBZr677uvPisxydq0
	9xgUyelwbO9hShmndC1pVCxbvKES2ioGJFdwrEzqrWusFM5Ea8FW6rHAxH63vqcD8ZSGtxW6tRVMD
	Z6Pg+2+yBkM+UKpCx/PjLdsROkZmTVWQD65FPM4WP4Q5+VWX7fiVkRHTE87r8BXNuFZBbdPKwAukg
	DLRvFhZvnkXuRSYg3lJPv8z6VaERtchoAAEwgfz2RepJHY8vX3llXfkpX8/ypuVR/yxoWrrPRVAUM
	5eYTNQEd/A8YQ+9anCKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVqZ7-0000000Bgl4-3D3x;
	Thu, 09 Jan 2025 11:19:05 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVqTv-0000000Bfpu-18ho
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Jan 2025 11:13:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id EC88EA41866;
	Thu,  9 Jan 2025 11:11:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7E413C4CED2;
	Thu,  9 Jan 2025 11:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736421222;
	bh=p9TIhZ7OX45tv8xEyiNTKxCq5RRiqfzvRAm+X/81d7E=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=P3Osmzss9bivLlAXPP80FDZzf6i4wCubrYw4m30ieMYEX66TKKpeBb4gwp/iaDKn8
	 kHuURrzwslSw57vBc0Hq+KqWTVGWoET3kYvSZNJOESlkNOnz3TucmliRrRf3o2yjBc
	 uwpF57uRS2o7KSfIVXtA8G0D5WNrXDlN3/19iyPOxvyPQesho77n8v2cYEGiVUecw8
	 nRnn53J+ZaAiHDGTD7LWeTfyEDr+k6AWv8vnIT5brFe9NOSaFP4aV9e4FoczeYezSd
	 tiClthcn+T6qJNW6PNdZiw9jMc1NPD0t4xKDv60ziltqnLfUPhyL4+sERxuQYg3v4s
	 KWHb3X1YSiThA==
From: Lee Jones <lee@kernel.org>
To: heiko@sntech.de, Kever Yang <kever.yang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
In-Reply-To: <20241224094920.3821861-16-kever.yang@rock-chips.com>
References: <20241224094920.3821861-1-kever.yang@rock-chips.com>
 <20241224094920.3821861-16-kever.yang@rock-chips.com>
Subject: Re: (subset) [PATCH v2 15/17] dt-bindings: mfd: syscon: Add rk3562
 QoS register compatible
Message-Id: <173642122026.2601082.8486356764608570006.b4-ty@kernel.org>
Date: Thu, 09 Jan 2025 11:13:40 +0000
MIME-Version: 1.0
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_031343_373660_33476785 
X-CRM114-Status: UNSURE (   3.93  )
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

T24gVHVlLCAyNCBEZWMgMjAyNCAxNzo0OToxOCArMDgwMCwgS2V2ZXIgWWFuZyB3cm90ZToKPiBE
b2N1bWVudCByazM1NjIgY29tcGF0aWJsZSBmb3IgUW9TIHJlZ2lzdGVycy4KPiAKPiAKCkFwcGxp
ZWQsIHRoYW5rcyEKClsxNS8xN10gZHQtYmluZGluZ3M6IG1mZDogc3lzY29uOiBBZGQgcmszNTYy
IFFvUyByZWdpc3RlciBjb21wYXRpYmxlCiAgICAgICAgY29tbWl0OiBhYmE0ZjczNmZjNTU1M2I5
MzY4MDhjY2RmZDNjZTIxZWUzZWM3YWUwCgotLQpMZWUgSm9uZXMgW+adjueQvOaWr10KCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
