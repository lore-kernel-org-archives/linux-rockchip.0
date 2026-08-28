Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41CBFC61DB9
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Aug 2026 12:14:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wSd2c9YS0LsgaBGOt9p0UIeqlk2wVf+cWB1AKSg92c4=; b=spcHeajE/0O9Um
	EKv/TUxS26IR8TVBa3u3dgtknnLo6aIrIRyGA8eGkpAqaulUq88nXJAqKC1ZN7xWLWs/BPPzMnLzr
	dkQVdX25uOUOB42q9QYC5vLBeJJmxzaZgoyMmYkHrAYWqJjBKcsOAPUex/0/dVYTrug8Cyy6FMxR1
	QJLyhrrqRk25ygp7/pHX5hSV3uqzx9PD6nzfMD5mNuAuvbJrxE+9+ip9iphUXevlxlxYVtf6FIOZS
	6wSfMh8FPWFZiqfxJqvC1CeepiO168ZU4YA0VoSGY33MZYK070n0KUU5tIuvNa0Hy0b8g3HgDEt1W
	H2ZHHKodelFIcGG8NcHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzvTf-00000005iKg-0imb;
	Fri, 28 Aug 2026 12:14:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wzvTd-00000005iK7-10Yy;
	Fri, 28 Aug 2026 12:14:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=msvDF/LcXKGcuEENSdT1nkJoOjtd4vV0hLHcxOpOB/Y=; b=ZNaQRRzJ6UqWH8EuUm79pM+zlc
	Gd/esYsnOYqhYI2iVEjEAB9i584MruJIlnem5CqaHGU91jt/WCjkeZkjmFXrHJUSnZDFduLW8eGJp
	rX7r+7aPLUk1s/t4EQRVmgTWA6kua4gZrfcjhwKNrUTUxrtQ+ufikb7K1ZHK2CFu77NrZqcfJHtR/
	iDkE/JqPz5aLRXLLkTdg14II7gx05qL8vtvlmJgtP0LgJptN2vCP5jB6ar0H9s3eBGghQMNQIpTN0
	E1uPFBV6EFZLTCYRnie2bgBGB7XIXR+FNA3jBpjk+IpRMDHxpQyaBvV+Gex6C+IDq4carWtV8SN3Y
	5hnak8uw==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rudi Heitbaum <rudi@heitbaum.com>
Cc: Matthias Kaehlcke <mka@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] usb: onboard_dev: add the Rockchip rk1808
Date: Fri, 28 Aug 2026 14:14:22 +0200
Message-ID: <4512468.iIbC2pHGDl@diego>
In-Reply-To: <apFpPP1O45BWXDv5@5be1eda4e59e>
References: <aouw7rH6FZxscUTO@0d3a7a881997> <5096877.GXAFRqVoOG@phil>
 <apFpPP1O45BWXDv5@5be1eda4e59e>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260828_051433_339068_0064F2C3 
X-CRM114-Status: GOOD (  20.79  )
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

SGkgUnVkaSwKCkFtIEZyZWl0YWcsIDI4LiBBdWd1c3QgMjAyNiwgMTI6NTU6NTYgTWl0dGVsZXVy
b3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBSdWRpIEhlaXRiYXVtOgo+IE9uIFRodSwgQXVn
IDI3LCAyMDI2IGF0IDAzOjI1OjIzUE0gKzAyMDAsIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+ID4g
QW0gTW9udGFnLCAyNC4gQXVndXN0IDIwMjYsIDA0OjUyOjAyIE1pdHRlbGV1cm9ww6Rpc2NoZSBT
b21tZXJ6ZWl0IHNjaHJpZWIgUnVkaSBIZWl0YmF1bToKPiA+ID4gVGhlIHJrMTgwOCBpcyB0aGUg
bnB1IGRpZSBpbiBhbiByazMzOTlwcm8gcGFja2FnZS4gSXQgaXMgd2lyZWQgdG8gb25lCj4gPiA+
IG9mIHRoZSB1c2IzIGNvbnRyb2xsZXJzIHJhdGhlciB0aGFuIHRvIGFuIGV4dGVybmFsIHBvcnQs
IGFuZCBpdCBuZWVkcwo+ID4gPiBpdHMgcmVmZXJlbmNlIGNsb2NrIHJ1bm5pbmcgYmVmb3JlIGl0
IHdpbGwgYm9vdCwgd2hpY2ggaXMgZXhhY3RseSB3aGF0Cj4gPiA+IHRoaXMgZHJpdmVyIGV4aXN0
cyB0byBkbyBmb3Igb25ib2FyZCBkZXZpY2VzLgo+ID4gPiAKPiA+ID4gSXQgdGFrZXMgbm8gc3Vw
cGx5IGZyb20gdGhlIGRyaXZlcjogdGhlIHJhaWxzIGFyZSBzZXF1ZW5jZWQgZWxzZXdoZXJlLgo+
ID4gPiBPbmx5IHRoZSBjbG9jayBtYXR0ZXJzIGhlcmUsIGFuZCB0aGF0IGlzIGFscmVhZHkgb3B0
aW9uYWwgYW5kIGhhbmRsZWQKPiA+ID4gZ2VuZXJpY2FsbHkuCj4gPiAKPiA+IHRoZSAiZWxzZXdo
ZXJlIiBtaWdodCBuZWVkIGEgYml0IG1vcmUgZXhwbGFuYXRpb24gdG8gdmVyaWZ5IGl0J3MgdGhl
IHJpZ2h0Cj4gPiBpbXBsZW1lbnRhdGlvbi4gRXZlbiBpZiB0aGUgcmVndWxhdG9ycyBhcmUgYWx3
YXlzLW9uIG9yIHNvbWV0aGluZywgd2UKPiA+IHN0aWxsIHdhbnQgdGhlIHN1cHBsaWVzIGRlZmlu
ZWQgLSBmb3IgZnV0dXJlIHVzZXMuCj4gCj4gQXMgZm9sbG93IHVwIG9uIHRoZSBicmluZ3VwIG9m
IHRoZSBSb2NrLVBpLU4xMCwgdGhlIHByb3Bvc2VkIGNoYW5nZSB0byB0aGUgZHRzaQo+IGZvciB0
aGUgcmszMzk5cHJvLXZtYXJjLXNvbSBpcyBoZXJlLCBidXQgbmVlZHMgdGhlIHByb3Zpc2lvbiBv
ZiB0aGUgdXNiIGZpcnN0Lgo+IGh0dHBzOi8vZ2l0aHViLmNvbS9oZWl0YmF1bS9saW51eC9jb21t
aXQvNmIxMTRiNmZmZjQwMjJjMzMwMDAzZDdmNzBjZTA5OTE1ZmZkNzc0ZgoKSSBtaWdodCBoYXZl
IGZvcm11bGF0ZWQgdGhhdCBzdHJhbmdseSwgd2hhdCBJIG1lYW50IHdhcywgd2hvIGlzIGVuYWJs
aW5nCnRoZSBwb3dlciBzdXBwbGllcy4KClRoZSAiTlBVIFBvd2VyIiBwYXJ0IG9mIGFueSByazMz
OTlwcm8gc2NoZW1hdGljcyAoc2hvdWxkKSBsaXN0IDUgcG93ZXIKc3VwcGxpZXMgZm9yIHRoZSBO
UFUgYmxvY2sgaXRzZWxmOgoKTlBVX0xPR0lDX1ZERAogICAgLS0+IHJlZ3VsYXRvciBsaWtlbHkg
bmFtZWQgTlBVX1ZERF9MT0dfUzAKICAgICAgICAtLT4gZW5hYmxlZCBieSBOUFVfUFdSRU5fMiBn
cGlvIGZpeGVkIHJlZ3VsYXRvcgoKTlBVX0VGVVNFX1ZRUFMKICAgIC0tPiByZWd1bGF0b3IgbGlr
ZWx5IG5hbWVkIE5QVV9WQ0MxVjhfRUZVU0UKICAgICAgICAtLT4gZW5hYmxlZCBieSBOUFVfRUZV
U0VfRU5fSCBncGlvIGZpeGVkIHJlZ3VsYXRvcgoKTlBVX0NPUkVfVkRECiAgICAtLT4gcmVndWxh
dG9yIGxpa2VseSBuYW1lZCBOUFVfVkREX1MwCiAgICAgICAgLS0+IFRDUzQ1MjUgcmVndWxhdG9y
IHdpdGggdm9sdGFnZSBiZWluZyBzZXQgdmlhIHRoZSBpMmMgY29udHJvbGxlcgogICAgICAgICAg
ICAgaW5zaWRlIHRoZSBOUFUgLSBidXQgZW5hYmxlZCBieSB0aGUgTlBVX1BXUkVOXzYgZ3BpbyBm
cm9tCiAgICAgICAgICAgICBjb3JlIFJLMzM5OS4KCk5QVV9DUFVfVkRECiAgICAtLT4gcmVndWxh
dG9yIGxpa2VseSBuYW1lZCBOUFVfVkREX0NQVV9TMAogICAgICAgIC0tPiBlbmFibGVkIGJ5IE5Q
VV9QV1JFTl80IGdwaW8gZml4ZWQgcmVndWxhdG9yCgpOUFVfQURDX0FWRERfMVY4CiAgICAtLT4g
cmVndWxhdG9yIGxpa2VseSBuYW1lZCBOUFVfVkNDXzFWOF9TMwogICAgICAgIC0tPiBlbmFibGVk
IGJ5IE5QVV9QV1JFTl8zIGdwaW8gZml4ZWQgcmVndWxhdG9yCgpOYW1pbmcgbWlnaHQgdmFyeSwg
SSBmb3VuZCBqdXN0IHNvbWUgRVZCIHNjaGVtYXRpY3MuCgpTb21lb25lIG5lZWRzIHRvIGVuYWJs
ZSB0aGVzZSwgc28gdGhlIHF1ZXN0aW9uIHdhcywgd2hvIGlzIGRvaW5nIHRoYXQ/CgpUaGFua3MK
SGVpa28KCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
