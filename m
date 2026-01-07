Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD693CD583B
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jan 2026 10:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Zp1L0FrlQv2U8sXLzmsgoaXTKZjQE5z0oyqiL5g9zE=; b=m+pcv7ahgAUXTo
	R8YizTZNLjqzopwfaqvUgdWPvUt3gnWnUquxPQKPxB3gkKL1baNRbwkIGfMDdPPaHUYYSDLyScBTZ
	+zxRrqcwRyRg0fethHG7PVADgWgYxLAHVKv7JAceXPp5XLVJZdYBcxN17UBek6q5X2av8pBu7krGO
	o56TMoDjvyFpXhjd3eMewvYhY3Qqc8S0k1uHVWC8VIw1uAlwW21O25631imVwR/fJYPizTC7O73FR
	rOBYu/IJZUgw9JpTdCgqOdB8hFtNHI/i+QL57zvzGFh/rGQSOBz85qNbjzjL4a9HxKpw5O0O+Kcuc
	dcsh/+GmkvYZwUFwsR9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdR9p-0000000EkwC-1f3k;
	Wed, 07 Jan 2026 10:52:53 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vdR9m-0000000EkvA-3Svb;
	Wed, 07 Jan 2026 10:52:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CF71D40060;
	Wed,  7 Jan 2026 10:52:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7C0D6C4CEF7;
	Wed,  7 Jan 2026 10:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767783169;
	bh=DUPfhQrr6JmsNOZ+CZkxyykOITDhWOpKmSkWkyOkKbs=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=ckVthmuUcZvDSlqlewy/Kb/0H0z9BF+bBYcIAw27KQ3c3NmdvXya8myv9+GoPEXrA
	 A5xs9jJ54qtmCIwJAzoSLo6BBxnPuM9s/t0QWsf+tKYaz0kKoS4bGbM5mEwoEb2kXB
	 W+EYW+kRftV9Q7tbpAx6XgsH2bu1pu80ToV5bcABTzafxespe1jlLasXmZmwxNxd4X
	 2KTfcVLSTsFiDvQtVlvQOTH7BuY0t3+0OFzw5k0frvDJYAF81W2HIpmTRriSZqheQ1
	 YO5zupcgJWtnGiJkjaNFgxIcYFUBj3bwGg09gi12jpkYSbqV5oLu1tQ+QPlDQUKNRE
	 h1vtfC+TizTwQ==
Message-ID: <080d9ed6-18f9-437e-89d4-aba8f69120fb@kernel.org>
Date: Wed, 7 Jan 2026 11:52:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/3] usb: typec: fusb302: Switch to threaded interrupt
 handler
To: =?UTF-8?B?5byg5rC45rOi?= <giraffesnn123@gmail.com>
References: <20260103083232.9510-1-linux.amoon@gmail.com>
 <20260103083232.9510-4-linux.amoon@gmail.com>
 <6f30a01c-8fc4-4368-88ef-7c513c505515@kernel.org>
 <CACpCAL0GLMV-2p1tKAXe6R+N2c4YadH9vpEG3GdPoHTNTQSuow@mail.gmail.com>
From: Hans de Goede <hansg@kernel.org>
Content-Language: en-US, nl
In-Reply-To: <CACpCAL0GLMV-2p1tKAXe6R+N2c4YadH9vpEG3GdPoHTNTQSuow@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260107_025250_881075_18B4F16B 
X-CRM114-Status: GOOD (  16.17  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, Heiko Stuebner <heiko@sntech.de>, "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, Anand Moon <linux.amoon@gmail.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "open list:USB TYPEC CLASS" <linux-usb@vger.kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, open list <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, FUKAUMI Naoki <naoki@radxa.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, "moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiA3LUphbi0yNiAxMDo1Miwg5byg5rC45rOiIHdyb3RlOgo+PiBTdGlsbCBpZGVhbGx5
IHdlIHdvdWxkIHNvbHZlIHRoaXMgaW4gYW5vdGhlciB3YXkgdGhlbgo+PiBzd2l0Y2hpbmcgdG8g
YSB0aHJlYWRlZCBJUlEgaGFuZGxlci4KPj4KPj4gQXMgdGhlIGNvbW1pdCBtZXNzYWdlIG9mIHRo
ZSBtZWktdnNjIGZpeCBtZW50aW9ucwo+PiB0aGUgcm9vdCBjYXVzZSBvZiB0aGVzZSBlcnJvcnMg
aXMgdHlwaWNhbGx5IGFuIGludGVycnVwdAo+PiBjaGlwIGRyaXZlciB3aGljaCB1c2VzIElSUUZf
Tk9fVEhSRUFEIGRpc2FibGluZyB0aGUgYXV0bwo+PiB0aHJlYWRpbmcgb2YgYWxsIGludGVycnVw
dCBoYW5kbGVycyBpbiBSVCBtb2RlLgo+Pgo+PiBTbyB0aGUgZmlyc3QgcXVlc3Rpb24gaGVyZSB3
b3VsZCBiZSB0byBzZWUgaWYgdGhhdCBmbGFnIGlzCj4+IHVzZWQgaW4gdGhlIGludGVycnVwdCBj
aGlwIGFuZCBpZiB5ZXMsIGlzIHRoYXQgZmxhZyByZWFsbHkKPj4gbmVjZXNzYXJ5ID8KPiBUaGlz
IGlzIHZlcnkgc2ltaWxhciB0byB0aGUgaXNzdWUgYWRkcmVzc2VkIGluIGNvbW1pdCAyNGIxNzZk
ODgyN2QKPiAoImRybS9tc20vZHNpOiBSZW1vdmUgc3B1cmlvdXMgSVJRRl9PTkVTSE9UIGZsYWci
KS4KPiBUaGUgSVJRRl9PTkVTSE9UIGZsYWcgaXMgcHJldmVudGluZyBmb3JjZWQgdGhyZWFkaW5n
IGhlcmUuCj4gCj4gSW4gaXJxX3NldHVwX2ZvcmNlZF90aHJlYWRpbmcoKSwgdGhlIGNvbnZlcnNp
b24gdG8gdGhyZWFkZWQgaW50ZXJydXB0cwo+IGlzIGV4cGxpY2l0bHkgc2tpcHBlZCBpZiBhbnkg
b2YgdGhlIElSUUZfTk9fVEhSRUFELCBJUlFGX1BFUkNQVSwKPiBvciBJUlFGX09ORVNIT1QgZmxh
Z3MgYXJlIHByZXNlbnQuIEluIHRoaXMgY2FzZSwgSVJRRl9PTkVTSE9UCj4gYXBwZWFycyB0byBi
ZSB0aGUgcmVhc29uLgoKQWgsIHdlbGwgdGhlIGNvZGUgZWZmZWN0aXZlbHkgZG9lcyBpdHMgb3du
IElSUUZfT05FU0hPVCBoYW5kbGluZywKc2luY2UgaXQgbmVlZHMgdG8gZG8gaXRzIG93biB0aHJl
YWRlZC1pcnEgbGlrZSBoYW5kbGluZyBmb3IKc3VzcGVuZC9yZXN1bWUgcmVhc29ucy4gSXQgZGlz
YWJsZXMgdGhlIElSUSB3aGVuIGl0IGZpcmVzIGFuZAp0aGVuIG9ubHkgcmUtZW5hYmxlcyBpdCBv
bmNlIHRoZSB3b3JrIGhhcyBkb25lIHByb2Nlc3NpbmcgdGhlIElSUS4KClNvIGl0IHNob3VsZCBi
ZSBwZXJmZWN0bHkgc2FmZSB0byBkcm9wIHRoZSBJUlFGX09ORVNIT1QgZmxhZy4KCklmIHRoYXQg
YWxzbyB3b3JrcyB0byByZXNvbHZlIHRoZSBsb2NrZGVwIGlzc3VlIHRoYXQgd291bGQgYmUKdGhl
IHByZWZlcnJlZCB3YXkgb2YgZml4aW5nIHRoaXMgSU1ITy4KClJlZ2FyZHMsCgpIYW5zCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
