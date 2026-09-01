Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A301C624CF
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 01:19:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h+1pulaRe3OkFoeW0MsxvPVxDM6YsU2pB3RX2gtUb0A=; b=PyOeEr5MrzGVwu
	9WckHL7eRYwwgfr5bYf9oQtUptcG+ncZDnz0fcJg799F0wkUlBiMMrKIt9vpNvX0eXk1dUz52t10Q
	ukq0DkBs7irKqLq4doOSxzgVTuLz0NsrQ4v2GxNd57j1dIvJXVB25b1Hs1BHGPatXHMp56BPeEQun
	ZBwAu76jCq1c41ATY7OV6OhGqFeSVeD7ozA59w/IVX+wsvAXAVXmgM3q4eTu9LOaGLeU9YeUtX1mu
	zHGci3zrc9aRVh2GKmIBJWd4qRVQF0h8iZj1yAAu8jSSCA+q5JFF647SVvwFRrdx/vo91t4x7CNmB
	kWvDCc9KnYT3+mYrVHmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1D9N-0000000Ambd-14hs;
	Tue, 01 Sep 2026 01:18:57 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1D9L-0000000AmbJ-30C9;
	Tue, 01 Sep 2026 01:18:55 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id C1F38601DE;
	Tue,  1 Sep 2026 01:18:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2511B1F000E9;
	Tue,  1 Sep 2026 01:18:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1788225534;
	bh=VEw+Ox0DghdKeZ8X4o3noEp8fzw25Y32JHB4BzY58wA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=EXTX43n3Mp30tiy8dMe/16L2DfBWjbn9CXvP5TGjW6VYhMZzLqXGV2KCjnNf7G3c+
	 EzAgGHAubJSyCedCpY9KUZnsCnmPuLXJ6bVCldZFW+989JzUwkwbtY0tFTnrw+Vpf1
	 zA87pqo54fknw1bhvcIofjHM/xOuX37XnSOJSB9hZOTfjYOSTjhishxKVQ2GTQFfGo
	 U9Wgu8Ikd2bFPZBC3kVVxzYP2LBhDu3kh8qlPFxQ9exzOva+dpjJ6KinxPlaam4ceQ
	 vtokMVS1GxwhOnR3tpKvo8DYxda7YMe++e/DUT6V/M6Xo9EAGricAPjH8h1Ex+S9xT
	 9mGn23LBSHCqA==
Date: Tue, 1 Sep 2026 02:18:46 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
Cc: Vladislav Leonov <vlad@zlab.su>, David Lechner <dlechner@baylibre.com>,
 Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy Shevchenko
 <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Joshua Crofts
 <joshua.crofts1@gmail.com>, Simon Glass <sjg@chromium.org>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] Fix RV1106 SAR-ADC support
Message-ID: <20260901021846.59b71f5b@jic23-huawei>
In-Reply-To: <5330090.ejJDZkT8p0@diego>
References: <20260823122039.20831-1-vlad@zlab.su>
	<20260831025557.6ee7c42e@jic23-huawei>
	<5330090.ejJDZkT8p0@diego>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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

T24gTW9uLCAzMSBBdWcgMjAyNiAxMDoxNzoxNyArMDIwMApIZWlrbyBTdMO8Ym5lciA8aGVpa29A
c250ZWNoLmRlPiB3cm90ZToKCj4gSGkgSm9uYXRoYW4sCj4gCj4gQW0gTW9udGFnLCAzMS4gQXVn
dXN0IDIwMjYsIDAzOjU1OjU3IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIg
Sm9uYXRoYW4gQ2FtZXJvbjoKPiA+IE9uIFN1biwgMjMgQXVnIDIwMjYgMTU6MjA6MzEgKzAzMDAK
PiA+IFZsYWRpc2xhdiBMZW9ub3YgPHZsYWRAemxhYi5zdT4gd3JvdGU6Cj4gPiAgIAo+ID4gPiBU
aGlzIHNlcmllcyBmaXhlcyB0aGUgc3VwcG9ydCBmb3IgdGhlIFJWMTEwNiBTQVItQURDIGluIHRo
ZQo+ID4gPiByb2NrY2hpcF9zYXJhZGMgZHJpdmVyIGFuZCBpdHMgZGV2aWNlIHRyZWUgYmluZGlu
Z3MuICAKPiA+IAo+ID4gSSBkZWJhdGVkIGhvdyB0byBhcHBseSB0aGlzLiAgVGVjaG5pY2FsbHkg
cGF0Y2ggMyBpcyBhIGZpeCwgMiBpcyBhbiBlbmFibGVyCj4gPiBhbmQgMSBpcyBhbHNvIGEgZml4
LCBidXQgb25lIGZvciBzb21ldGhpbmcgdGhhdCB3ZSBqdXN0IGVmZmVjdGl2ZWx5IHBhdGNoZWQK
PiA+IG91dCBmcm9tIHJ1bm5pbmcgaW4gcGF0Y2ggMy4KPiA+IAo+ID4gU28gaW4gdGhlIGVuZCBJ
J20gdGhpbmtpbmcgdGFrZSB0aGlzIHRoZSBzbG93IHBhdGggZm9yIG5leHQgY3ljbGUuICBTaG91
dAo+ID4gaWYgYW55b25lIHRoaW5rcyB0aGlzIHNob3VsZCBnbyBpbiBkdXJpbmcgdGhlIC1SQ3Mg
YW5kIHdoZXRoZXIgYWxsIDMKPiA+IHNob3VsZCBkbyBzbyBvciBqdXN0IHBhdGNoZXMgMiBhbmQg
MyAobGVhdmluZyB1cyB3aXRob3V0IGRyaXZlciBzdXBwb3J0IGZvcgo+ID4gbm93KS4KPiA+IAo+
ID4gQXBwbGllZCB0byB0aGUgdGVzdGluZyBicmFuY2ggb2YgaWlvLmdpdCAgCj4gCj4gSSBndWVz
cyBJIHNob3VsZCBzaG91dCB0aGVuIDstKSAuCj4gCj4gRFQtQmluZGluZyBwYXRjaGVzIGFyZSBz
b3J0IG9mIGluZGVwZW5kZW50IG9mIHRoZSBkcml2ZXIgY2hhbmdlIGFuZAo+IGFyZSBjb25zaWRl
cmVkIEFQSSB3aGljaCBzaG91bGQgbm90IGNoYW5nZSBhZnRlciB0aGUgZmFjdC4KPiAKPiBPdXIg
RFRzIChidXQgYWxzbyBvbmVzIHBvc3NpYmx5IGNvbnRhaW5lZCBpbiBmaXJtd2FyZSBzb21ld2hl
cmUpIGFyZQo+IHZhbGlkYXRlZCBhZ2FpbnN0IHRoZSBiaW5kaW5nIGFuZCBpdCBzZWVtcyB0aGUg
Y29ycmVjdCBjb21wYXJ0aWJsZSBnb2VzCj4gZnJvbSAKPiAgICAgInJvY2tjaGlwLHJ2MTEwNi1z
YXJhZGMiLCAiIHJvY2tjaGlwLHJrMzU4OC1zYXJhZGMiCj4gdG8KPiAgICAgInJvY2tjaGlwLHJ2
MTEwNi1zYXJhZGMiCj4gCj4gQXMgdGhlIGZpeGVkIGNvbW1pdCBpcyBwYXJ0IG9mIDcuMy1yYzEs
IEkgZ3Vlc3MgaXQgd291bGQgYmUgbmljZSB0bwo+IGhhdmUgcGF0Y2hlcyAyKzMgaW4gNy4zIGFu
ZCBwYXRjaCAxIGNhbiB3YWl0IGZvciA3LjQgLgo+IAo+IFdlIGRvbid0IG5lZWQgdGhlIGRyaXZl
ciBzdXBwb3J0IChkdC1ub2RlcyBqdXN0IGRvZXNuJ3QgYmluZCB0bwo+IGFueXRoaW5nKSwgYnV0
IGl0IHdvdWxkIGJlIG5pY2UgdG8gbm90IHByb2xpZmVyYXRlIHRoZSB3cm9uZyBiaW5kaW5nIGlu
Cj4gYW4gYWN0dWFsIHJlbGVhc2UuCgpBaC4gSSBzaG91bGQgaGF2ZSBjaGVja2VkIHdoZW4gdGhl
IG9yaWdpbmFsIGJ1ZyB3ZW50IGluLgpBcyBpdCdzIHRoaXMgY3VycmVudCBjeWNsZSwgd2hhdCB5
b3Ugc2F5IGlzIGluZGVlZCBhbiBlYXN5IGZpeC4KCkFwcGxpZWQgMi0zIHRvIHRoZSBmaXhlcy10
b2dyZWcgYnJhbmNoIGFuZCBsZWZ0IDEgaW4gdGhlIHRlc3RpbmcKYnJhbmNoIGZvciA3LjQuCgpU
aGFua3MKCkpvbmF0aGFuCgo+IAo+IAo+IG15IDJjdCA6LSkKPiBIZWlrbwo+IAo+IAo+IAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
