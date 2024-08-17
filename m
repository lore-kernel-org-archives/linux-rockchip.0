Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C756BC531DF
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Aug 2024 19:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=T4kly2DsFghPydoGhoYR8kowqfqGrxEcfWqnoBMfbF4=; b=kl8rRfW+mX05gL9vEWPRDNZGj/
	AU8JsQi576hQo6v9P3plREl5svSSJLh7N31L71AMuPmb3y68oVRoaUFZFyKRcnQe7jD7p4792L/Lt
	ekNpj0JSSnuUo5HGsF6wW9y8sijBWjXFmdSmA/X26CDLjesdE+6pREfMVM9PrS3NZRrgRRtHJpCm2
	j9vEwLACsctUw0VfWlbFPRN3INZ0iqxNseiDprCwvdqlXC8zqyR1pVnKjPLxS3etUz0R+tINkShl/
	nynaDJnZtnAK/pwXJlNEX1KAVBOkBW4uY8VMHjUKADLvXUXS7hF7yNHltWb17FHWx2jzaz+75sjqH
	rY04OvRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfPSz-0000000FgV3-1vIS;
	Sat, 17 Aug 2024 19:52:01 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfPSx-0000000FgUg-0Jnu
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Aug 2024 19:52:00 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1723924317;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tMUHzAPWeIe9jDKUn+917WgoVJcOaq2JBwVHOlqe/WA=;
	b=HF1+bvtnmpw1HozTFAc6NZw3WSaX9TekWfp7e3nzqEsg9bphRpRO1z42RvO+YTolWUCfX/
	8jSM2TAah9PT8qRN0VRbP62S7GBKrrdirM48zkLr1gOkKogF6chmTB0t+50eB6bkahbjlF
	7w+wdMdubYQJ7Ww6mn4wtfRVgIi4ZD5qS7RYF+xuD02J2rYtLyS+sq3VjxlEFdWjNFQb9Y
	NCOXCZASh1YRD5nyl6y1czqIH3JRswYbgqM1zmWDbigYEDHfjnyQJxsRufvLcbLzrch0Y+
	v5Ig2zK0mqg3GHy5GpgueXWWbSVpmHMwxn6DHvjeiRsSgtarSKKZZHDF5dHj2g==
Date: Sat, 17 Aug 2024 21:51:57 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 2/2] arm64: dts: rockchip: add support for Radxa ROCK
 Pi E v3.0
In-Reply-To: <cd08ce18bde728e2b33a995834441399@manjaro.org>
References: <20240816213429.1093-1-naoki@radxa.com>
 <20240816213429.1093-2-naoki@radxa.com> <1819066.TLkxdtWsSY@diego>
 <85AB3D0B7214AEEA+d54aaa4a-ce0b-43ef-8cb8-ea2c2f305bcd@radxa.com>
 <cd08ce18bde728e2b33a995834441399@manjaro.org>
Message-ID: <10ac45cf5bb5dfab9c08160c826c9b28@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240817_125159_286844_ED59AA51 
X-CRM114-Status: GOOD (  10.39  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyNC0wOC0xNyAyMToyOCwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+IEhlbGxvIEZ1a2F1bWks
Cj4gCj4gT24gMjAyNC0wOC0xNyAwMDoyMCwgRlVLQVVNSSBOYW9raSB3cm90ZToKPj4gT24gOC8x
Ny8yNCAwNzoxMSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4+PiBBbSBGcmVpdGFnLCAxNi4gQXVn
dXN0IDIwMjQsIDIzOjM0OjI5IENFU1Qgc2NocmllYiBGVUtBVU1JIE5hb2tpOgo+Pj4+IFJhZHhh
IFJPQ0sgUGkgRSB2My4wIGlzIGEgY29tcGFjdCBuZXR3b3JraW5nIFNCQ1sxXSB1c2luZyB0aGUg
Cj4+Pj4gUm9ja2NoaXAKPj4+PiBSSzMzMjggY2hpcCB0aGF0IHNoaXBzIGluIGEgbnVtYmVyIG9m
IFJBTS9lTU1DL1dpRmkvQlQgCj4+Pj4gY29uZmlndXJhdGlvbnM6Cj4+Pj4gCj4+Pj4gLSBSb2Nr
Y2hpcCBSSzMzMjggU29DCj4+Pj4gLSBRdWFkIEE1MyBDUFUKPj4+PiAtIDUxMk1CLzFHQi8yR0Ig
RERSNCBSQU0KPj4gKHNuaXApCj4+PiBjYW4geW91IHBsZWFzZSBkZXNjcmliZSB3aGF0IGlzIGRp
ZmZlcmVudCBpbiB0aGF0IHYzIGJvYXJkPwo+Pj4gRGVzY3JpYmluZyB3aGF0IGlzIGRpZmZlcmVu
dCB0byByZXF1aXJlIGEgc2VwYXJhdGUgYm9hcmQgc2hvdWxkJ3ZlIAo+Pj4gYmVlbgo+Pj4gcGFy
dCBvZiB0aGUgY29tbWl0IG1lc3NhZ2UuCj4+PiAKPj4+IEJlY2F1c2UgZnJvbSB0aG9zZSBjaGFu
Z2VzLCB0aGUgYm90dG9tIGxpbmUgY3VycmVudGx5IHNlZW1zIHRvIGJlCj4+PiB0aGUgc2FtZSBi
b2FyZCB3aXRoIHN3YXBwZWQgbW1jIGFsaWFzZXM/Cj4+IAo+PiBpdCdzIG5ldyBib2FyZCB3aGlj
aCB1c2VzIEREUjQgUkFNIChpbnN0ZWFkIG9mIEREUjMgUkFNIG9uIFBpIEUpLgo+PiBkaWZmZXJl
bnQgYm9vdGxvYWRlciAoVS1Cb290KSBpcyByZXF1aXJlZC4KPj4gCj4+IGFkZGluZyB2MyBkdHMg
c2VlbXMgbm90IHRvIGJlIHNvIGltcG9ydGFudCBmb3IgTGludXgsIGJ1dCBpdCdzIHZlcnkKPj4g
aW1wb3J0YW50IGZvciBVLUJvb3QgYW5kIE9wZW5XcnQoaXQgaW5jbHVkZXMgYm9vdGxvYWRlciBm
b3IKPj4gZGlzdHJpYnV0ZWQgYmluYXJ5KS4KPiAKPiBBcmVuJ3QgdGhlcmUgZGlmZmVyZW50IG1l
dGhvZHMgdGhhdCBhbGxvdyBzdWNoIGJvYXJkIHZhcmlhbnRzIHRvIGJlCj4gc3VwcG9ydGVkIGlu
IFUtQm9vdCwgd2l0aCBubyBuZWVkIGZvciBhIHNlcGFyYXRlIERUIGluIHRoZSBrZXJuZWw/Cj4g
SUlSQywgdGhlcmUgYXJlIGFscmVhZHkgbW9yZSB0aGFuIGEgZmV3IGV4YW1wbGVzIG9mIHN1Y2gg
Ym9hcmQgCj4gdmFyaWFudHMsCj4gd2hpY2ggcmVxdWlyZSBkaWZmZXJlbnQgRFJBTSBpbml0aWFs
aXphdGlvbiwgd2hpY2ggaXMgY292ZXJlZCBpbiBVLUJvb3QKPiBieSBwcm92aWRpbmcgZGlmZmVy
ZW50IGJ1aWxkcyB0aGF0IHVzZSB0aGUgc2FtZSBEVC4KCkFzIGFuIGV4YW1wbGUsIHBsZWFzZSBo
YXZlIGEgbG9vayBhdCB0aGUgZm9sbG93aW5nIGZpbGVzIGluIFUtQm9vdDoKCi0gYXJjaC9hcm0v
ZHRzL3JrMzM5OS1uYW5vcGktbTQtdS1ib290LmR0c2kKLSBhcmNoL2FybS9kdHMvcmszMzk5LW5h
bm9waS1tNC0yZ2ItdS1ib290LmR0c2kKLSBjb25maWdzL25hbm9waS1tNC1yazMzOTlfZGVmY29u
ZmlnCi0gY29uZmlncy9uYW5vcGktbTQtMmdiLXJrMzM5OV9kZWZjb25maWcKCkJhc2ljYWxseSwg
dGhlcmUncyBubyBuZWVkIGZvciBzZXBhcmF0ZSBEVHMgaW4gdGhlIGtlcm5lbCwganVzdCB0byAK
c3VwcG9ydApib2FyZCB2YXJpYW50cyB3aXRoIGRpZmZlcmVudCBEUkFNIHR5cGVzIGluIFUtQm9v
dC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
