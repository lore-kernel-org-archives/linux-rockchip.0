Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04354CCFA00
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Oct 2025 08:27:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SyCj99qk8XxhY4mUYYFiIH9WD8apS47EWyg1vuRQPCg=; b=YsQk409KlAjhL/
	3KKSOJYkFh9TVLy2NwQPdeob6VWXSWgedgRLol996YXCdMsDgoRfa013TmR8LwzdL0MXoWR3tsIIM
	eEVO600Xb5vkmxKejjWJlnTqdtdU4JOuYtn1FNHrs/g0n+63LDXI9nVonrx/F0UH63yM1VciD/92I
	cVD425J6o6Wq2xgWd7wf7nI4+cgGiYc2RoaoCm2zZliG1ERB2e5gKKGbEBNOdMR4/rFOS3MSohX4z
	Xq3sy3UyOe/dmO1SKf6DcGfysq4NhrerrOotLDp6lFt3RtzRUb1M0P4Y/RgiDY8/B0Mqc8C1l66ur
	RONhkddUa9hid3yVtdTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEkTR-00000005e5Y-0zIt;
	Fri, 31 Oct 2025 08:27:05 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEkTL-00000005e4d-0CKs;
	Fri, 31 Oct 2025 08:27:01 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 1216844075;
	Fri, 31 Oct 2025 08:26:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 88D0FC4CEE7;
	Fri, 31 Oct 2025 08:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761899216;
	bh=7FtxklPeT6kKf2wTFmqdmmGJFJ7GxQ6bHxoFQMYY/V4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f3zR/XC7p6Zomw1FOVOBxx9Hg3K/K3GJWlmPCCuxACNGowc+e/9Lnz3fDyl1oam56
	 HN6xulnnJf4h19cSOG0ColJf3c/MoRjB91E03+KslAEijYiNWoO0jNmmBotvaMzzfE
	 CaVyetElwwXlVUospfMZWUmXYPpk46l4h/Doc1CNXHm+ZXdt1rSKJ9loGBPwNfog3J
	 UDQxJ8XqbftMrM5RT67moTYhKVxDL2tzKX15TfAIBlEdscNmNc9iyb+B3+/I/bU9tF
	 aBXiJxaLh7pt4mt993I2WiNqJaud8c2vrGlJL5fXWZXbOgoGlJb8sM3c+T45jdoqeO
	 FRQ8TsN2su5aw==
Date: Fri, 31 Oct 2025 13:56:43 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Heiko Stuebner <heiko@sntech.de>, "open list:PCIE DRIVER FOR ROCKCHIP" <linux-pci@vger.kernel.org>, 
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-rockchip@lists.infradead.org>, 
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>, open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1] PCI: rockchip: Propagate dev_err_probe return value
Message-ID: <kgnhru4vpkt6vgsmphrvxhpeuvl73tlt35vmi5ubgmnxyvdk5k@6tpvzojpaflz>
References: <20251018061127.7352-1-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251018061127.7352-1-linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251031_012659_133534_276F6D3C 
X-CRM114-Status: GOOD (  16.20  )
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

T24gU2F0LCBPY3QgMTgsIDIwMjUgYXQgMTE6NDE6MjZBTSArMDUzMCwgQW5hbmQgTW9vbiB3cm90
ZToKPiBFbnN1cmUgdGhhdCB0aGUgcmV0dXJuIHZhbHVlIGZyb20gZGV2X2Vycl9wcm9iZSgpIGlz
IGNvbnNpc3RlbnRseSBhc3NpZ25lZAo+IGJhY2sgdG8gcmV0dXJuIGluIGFsbCBlcnJvciBwYXRo
cyB3aXRoaW4gcm9ja2NoaXBfcGNpZV9pbml0X3BvcnQoKQo+IGZ1bmN0aW9uLiBUaGlzIGVuc3Vy
ZXMgdGhlIG9yaWdpbmFsIGVycm9yIGNvZGUgYXJlIHByb3BhZ2F0aW9uIGZvcgo+IGRlYnVnZ2lu
Zy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBBbmFuZCBNb29uIDxsaW51eC5hbW9vbkBnbWFpbC5jb20+
Cj4gLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5jIHwgMiArLQo+
ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmMgYi9kcml2ZXJz
L3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuYwo+IGluZGV4IDBmODhkYTM3ODgwNTQuLjEy
NGFiN2I5ZjM0MDQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJv
Y2tjaGlwLmMKPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuYwo+
IEBAIC0xMzQsNyArMTM0LDcgQEAgaW50IHJvY2tjaGlwX3BjaWVfaW5pdF9wb3J0KHN0cnVjdCBy
b2NrY2hpcF9wY2llICpyb2NrY2hpcCkKPiAgCWVyciA9IHJlc2V0X2NvbnRyb2xfYnVsa19hc3Nl
cnQoUk9DS0NISVBfTlVNX0NPUkVfUlNUUywKPiAgCQkJCQlyb2NrY2hpcC0+Y29yZV9yc3RzKTsK
PiAgCWlmIChlcnIpIHsKPiAtCQlkZXZfZXJyX3Byb2JlKGRldiwgZXJyLCAiQ291bGRuJ3QgYXNz
ZXJ0IENvcmUgcmVzZXRzXG4iKTsKPiArCQllcnIgPSBkZXZfZXJyX3Byb2JlKGRldiwgZXJyLCAi
Q291bGRuJ3QgYXNzZXJ0IENvcmUgcmVzZXRzXG4iKTsKClRoaXMgY2hhbmdlIGlzIHBvaW50bGVz
cy4gSXMgdGhlICdlcnInIHZhbHVlIGdvaW5nIHRvIGNoYW5nZSB3aXRoIHRoZQpyZWFzc2lnbm1l
bnQ/IE5PLiBUaGVuIHdoYXQgdGhpcyBjaGFuZ2UgaXMgYWJvdXQ/CgpQbGVhc2UgZG8gbm90IHNl
bmQgY2xlYW51cCBwYXRjaGVzIHRoYXQgZG9lcyBub3RoaW5nIHVzZWZ1bC4KCi0gTWFuaQoKLS0g
CuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
