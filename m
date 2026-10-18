Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED9EFCCA490
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Oct 2026 04:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CoCnjpO2Tv5rJhSKf4f1crAnCV+ukZpOg+IivGPO8pI=; b=pdmFOVkv3L1wC/
	QjirZ7xNbOSqBzKjJdT14lBi36Yfa92fjfpdSNG63KkT5J/xIJowElyEDYD9UQxaiXXb0lAuAjABR
	xuySwr06FgjCIpK1jTuQJTmtFgPvpelcDyoKizrpg2fM4HPE8s2VsbXtbZi0zdnXtQ8ES4jwzn98j
	p1WkmbTwrBg1epoILWBH+Q9T1wRB1dSZSq0Je7Sp3mRs4G1yG7tddNocoqZ0n17eqVZJsLy5n2z+K
	Y+98FKBfP+/Y7YuKLSpqReVtLQIVyWdPaxReifnRqQRYFLN5DGHd3ws25J/PNsplUHAvNFDp8aSst
	rjQEl3u537eQJOOx3GqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIIck-00000005Wyp-2SQT;
	Sun, 18 Oct 2026 04:35:54 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIIci-00000005WyZ-1pyc
	for linux-rockchip@lists.infradead.org;
	Sun, 18 Oct 2026 04:35:52 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A1DEE60230;
	Sun, 18 Oct 2026 04:35:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14E451F000C4;
	Sun, 18 Oct 2026 04:35:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792298151;
	bh=qdIVrSpMtK5zxHRgcArGiQkPWd9/eYBAHEZePZ+kECI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=A3E9Rqqnj37ALGfj9RcYKyKZNOvIQSgWV+TXcMuqbPw6r9dnPHBV4Rv5dJdPyF93G
	 ICL7Q4aMhGC5eGXk3okNZmot2vxMuzRGjc+Y3erSJn4+sEUw782qElApJZE2XjBiWR
	 Dp61hdStKxV40IRbbu0FQ7G4uTXGUjKxl3GW5+/GNRGR9ZzElI5g1uUvQYkGjA6Ygu
	 8qjD9w2ANmU8FXA7S2yjAi722sS4CRNGP0iUGt5sCrV/iP/GgqDzGQ52TIUvPEluUZ
	 byd9IMJGOzIzNi5ExpIBVP0u24FelroZprGtRgC17smV9cWflUKKnIRno3W42NUog5
	 ioxRkbj77pvgA==
Date: Sun, 18 Oct 2026 10:05:39 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Thomas Gleixner <tglx@kernel.org>, 
	Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, 
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH] PCI: dw-rockchip: Enable INTx affinity support
Message-ID: <atRLsp1qUA_sGS-0@debian>
References: <1790664898-207928-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1790664898-207928-1-git-send-email-shawn.lin@rock-chips.com>
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

KyBUaG9tYXMKCk9uIFR1ZSwgU2VwIDI5LCAyMDI2IGF0IDAyOjU0OjU4UE0gKzA4MDAsIFNoYXdu
IExpbiB3cm90ZToKPiBMZXZlcmFnZSB0aGUgaW50ZXJydXB0IHJlZGlyZWN0aW9uIGluZnJhc3Ry
dWN0dXJlIHRvIGVuYWJsZSBDUFUKPiBhZmZpbml0eSBzdXBwb3J0IGZvciB0aGUgbGVnYWN5IElO
VHggaW50ZXJydXB0cy4gVGhlIElOVHggdmlycXMgYXJlCj4gZGVtdWx0aXBsZXhlZCBieSB0aGUg
Y2hhaW5lZCBoYW5kbGVyIG9mIHRoZSAibGVnYWN5IiBpbnRlcnJ1cHQsIHdob3NlCj4gYWZmaW5p
dHkgY2Fubm90IGJlIGNoYW5nZWQsIHNvIGFmZmluaXR5IGNvbnRyb2wgZm9yIHRoZSBJTlR4IHZp
cnFzIGlzCj4gYWNoaWV2ZWQgYnkgcmVkaXJlY3RpbmcgdGhlIGhhbmRsZXIgdG8gcnVuIGluIElS
USB3b3JrIGNvbnRleHQgb24gdGhlCj4gdGFyZ2V0IENQVS4KPiAKPiBNYXNrIHRoZSBJTlR4IHNv
dXJjZSBpbiAuaXJxX3ByZV9yZWRpcmVjdCgpIGJlZm9yZSB0aGUgaGFuZGxlciBpcwo+IHJlZGly
ZWN0ZWQ6IHRoZSBsZWdhY3kgaW50ZXJydXB0IGlzIGxldmVsIHRyaWdnZXJlZCwgc28gYW4gdW5t
YXNrZWQKPiBsaW5lIHdvdWxkIGtlZXAgcmUtZmlyaW5nIHRoZSBjaGFpbmVkIGludGVycnVwdCB1
bnRpbCB0aGUgcmVkaXJlY3RlZAo+IGhhbmRsZXIgcnVucy4KPiAKPiBTYW1lIGFwcHJvYWNoIGFz
IHRoZSBEZXNpZ25XYXJlIGNvcmUsIGNvbW1pdCBlYWYyOTBjNDA0ZjdjMzlmMiAoIlBDSToKPiBk
d2M6IEVuYWJsZSBNU0kgYWZmaW5pdHkgc3VwcG9ydCIpLgo+IAo+IFRlc3Qgd2FzIGRvbmUgb24g
UkszNTg4IEVWQjEgYm9hcmQgd2l0aCBhbiBOVk1lIHdpdGggcGNpPW5vbXNpCj4gcGFyYW1ldGVy
LiBUaGUgL3Byb2MvaW50ZXJydXB0cyBjb2x1bW5zIGFyZSB0cmltbWVkIGZvciBicmV2aXR5Lgo+
IAo+ICAgIyBjYXQgL3Byb2MvaW50ZXJydXB0cyB8IGdyZXAgSU5UeAo+ICAgNTE6ICAxMzcgMCAw
IDAgMCAwIDAgMCBJTlR4IDAgRWRnZSBQQ0llIFBNRSwgbnZtZTBxMCwgbnZtZTBxMQo+ICAgIyBl
Y2hvIDEwID4gL3Byb2MvaXJxLzUxL3NtcF9hZmZpbml0eQo+ICAgIyBkZCBpZj0vZGV2L252bWUw
bjFwMSBvZj0vZGV2L251bGwgYnM9MU0gY291bnQ9MjAwCj4gICAyMDArMCByZWNvcmRzIGluCj4g
ICAyMDArMCByZWNvcmRzIG91dAo+ICAgMjA5NzE1MjAwIGJ5dGVzICgyMTAgTUIsIDIwMCBNaUIp
IGNvcGllZCwgMC4xODIwMjEgcywgMS4yIEdCL3MKPiAgICMgY2F0IC9wcm9jL2ludGVycnVwdHMg
fCBncmVwIElOVHgKPiAgIDUxOiAgMTM3IDAgMCAwIDk0NiAwIDAgMCBJTlR4IDAgRWRnZSBQQ0ll
IFBNRSwgbnZtZTBxMCwgbnZtZTBxMQo+IAo+IFNpZ25lZC1vZmYtYnk6IFNoYXduIExpbiA8c2hh
d24ubGluQHJvY2stY2hpcHMuY29tPgoKSSdkIGxpa2UgdG8gZ2V0IGFuIEFjayBmcm9tIFRob21h
cyBmb3IgdGhpcyBwYXRjaCBzaW5jZSBJJ20gbm90IGFuIGlycWNoaXAKZXhwZXJ0IHRvIGRlY2lw
aGVyIHdoZXRoZXIgdGhpcyBwYXRjaCBpcyB2YWxpZCBvciBub3QuCgpJZiB0aGlzIHBhdGNoIGlz
IHZhbGlkIGFuZCBJTlR4IGFmZmluaXR5IGNhbiBiZSBlbmFibGVkIGxpa2UgdGhpcywgSSdkIGxp
a2UgdG8KZXh0ZW5kIHRoaXMgdG8gb3RoZXIgUkMgZHJpdmVycyBleHBvc2luZyBJTlR4IGlycWNo
aXAuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+4K6a
4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
