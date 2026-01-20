Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B689D2ED12
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jan 2026 15:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fVn76DhEn6fizwbJGV68614I1K5Lklpi3kAVhD6ZQhg=; b=wOJSroTUggQdUX
	5QNGRXALvAqYRo1LwmCRimX/+EbVqQMqgvfM82deONcyp1sJIsMgnET6066Cr8fFchQTVhDowmasQ
	1qhdN5FzSm85xADJvQP/9VlkNW6rgDJjOVC3T/6l5OyVXMctxcV5TTgwd1XsPPmVHTifKOiT73vpi
	z1jnI/wS0Ow2IPPp5zPOAn6ZWCBc37AeaFixRQM9hwX+gfkYyvWBSbNaCHBtjW46cmqk6WYAQOo4U
	Azh0AEmQMQ3kpFUoAalrzV4RAdgF2hkO/YXMOHr5G+WCY2EkxY+s7g1xqIX9uKh1LYjpF4X9Y1sQ1
	3qdxa5I1JyKANf5fyVwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viDDr-000000042SR-3CGp;
	Tue, 20 Jan 2026 15:00:47 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viDDq-000000042Ry-1FSG;
	Tue, 20 Jan 2026 15:00:46 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id A28B960018;
	Tue, 20 Jan 2026 15:00:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9864C16AAE;
	Tue, 20 Jan 2026 15:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768921245;
	bh=+emPDXpQmKKz6bMWTLUYNLMNyJcpfWYBtJXaLaKBvpU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=JsKIMcRLL9OzB8pMebonIu8h9YMLxwWFNlLDnnSHkwdUPZqU50DI9cBUjP7oETmC3
	 SxmvEynZ4oxVYz1H/5bbGOWWrNTXU1P7XsjS3QNaZg83C0WerWi5+zWPJ1F25j81dE
	 7tH5j2vNughw/NJtCEF4KIrVM+zDPcGsQxvj032ZBNeSKoF7vi88Wx2PwZ9fDu+6Ab
	 DgJQRkEl0g+74XT18Gu06lUnJnDPwem78VX4LJkexBa4/xnqsoMw9wz5AcjfNUUWoF
	 LRI5ceMfPuQsOMJSabjfKVRsBxwANZ3tRrd8KGliEFwF9mStHMlMj4yQGma4Fx/eli
	 CuDAhLaxnXtdQ==
From: Lee Jones <lee@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Lee Jones <lee@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Joseph Chen <chenjh@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org
In-Reply-To: <20260112124351.17707-1-chenjh@rock-chips.com>
References: <20260112124351.17707-1-chenjh@rock-chips.com>
Subject: Re: [PATCH v3 0/3] Add RK801 PMIC support
Message-Id: <176892124246.2259507.3674990175192687595.b4-ty@kernel.org>
Date: Tue, 20 Jan 2026 15:00:42 +0000
MIME-Version: 1.0
X-Mailer: b4 0.15-dev-52d38
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

T24gTW9uLCAxMiBKYW4gMjAyNiAyMDo0Mzo0OCArMDgwMCwgSm9zZXBoIENoZW4gd3JvdGU6Cj4g
VGhpcyBwYXRjaCBzZXJpZXMgYWRkcyBzdXBwb3J0IGZvciB0aGUgUm9ja2NoaXAgUks4MDEgUG93
ZXIgTWFuYWdlbWVudAo+IEludGVncmF0ZWQgQ2lyY3VpdCAoUE1JQykgdG8gdGhlIExpbnV4IGtl
cm5lbC4KPiAKPiBUaGUgUks4MDEgaXMgYSBQTUlDIGRlc2lnbmVkIGZvciBtdWx0aW1lZGlhIGFu
ZCBoYW5kaGVsZCBkZXZpY2VzLiBJdAo+IGluY2x1ZGVzOgo+IC0gNCBCVUNLIHJlZ3VsYXRvcnMg
KERDREMpCj4gLSAyIExETyByZWd1bGF0b3JzCj4gLSAxIFNXSVRDSCByZWd1bGF0b3IKPiAtIElu
dGVycnVwdCBzdXBwb3J0IGZvciBwb3dlciBrZXkgZXZlbnRzCj4gCj4gWy4uLl0KCkFwcGxpZWQs
IHRoYW5rcyEKClsxLzNdIGR0LWJpbmRpbmdzOiBtZmQ6IEFkZCByazgwMSBiaW5kaW5nCiAgICAg
IGNvbW1pdDogYThhMmFkZDdiMTg4OWYwMGJjNWQyYjFmMjVmYWQzNGU4OWVmODVmYgpbMi8zXSBt
ZmQ6IHJrOHh4OiBBZGQgUks4MDEgc3VwcG9ydAogICAgICBjb21taXQ6IDE1NjQ0MmViNmU0NGQ1
NDVmMDk1NTliZDcwYzViMzFmYmEzOWViMDEKWzMvM10gcmVndWxhdG9yOiByazgwODogQWRkIFJL
ODAxIHN1cHBvcnQKICAgICAgY29tbWl0OiAzZTEwYmJkOWM4YTZkNWQwMTZiOGU1MmM1ZDRjZWJh
OTNhMjMwNGEwCgotLQpMZWUgSm9uZXMgW+adjueQvOaWr10KCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
