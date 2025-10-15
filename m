Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4734ACCD194
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Oct 2025 13:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jU7FINe/SMWDdflYV81M/xQM8Lc6N2jDLglb23mRxAY=; b=hWzEfR2APRp1pd
	EXo35sJl3WXmLOxFOpVkwuKEMt2CoXQyVA/PDyNtCDfDmi5IP6MrEtIahgBTa7Nlzqb8PaEjk0qnT
	GZ7x9DJRSRc6j+Aqi1K9I2ELXXM9GVEJt4g5PnqaFQnVy8Pm5goOcMsqDNpPtnQG/v3OVlWGR4zvs
	TWLC+WL3OMbPj/NuTB9fzgJj9+g9qNIJJ41jY0Sbbg1xEQWzBzv4UQHBEADz7oIjXK32zkzv8Wu9A
	z4YbBhnJ6uHykRCqdc+xBu4etfLDOqBer4dAn+k1aB/mWG3Ea30l6BTYTos8hLNpf7wHd1F+uZl9g
	31+mJnSrIdPcOD1Qponw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v91XJ-00000001hz0-3vVH;
	Wed, 15 Oct 2025 13:27:25 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v91XH-00000001hwm-0eho;
	Wed, 15 Oct 2025 13:27:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=EFu78uXLNhhYEH7SVSyRI1WHuG5g54Ao3mQfyxG+tcA=; b=tWVdwD3BvmoVph276K/6AP4+qH
	FOgl0YNA7jJdbhOWcHJU/rnlh1YeNzgB9WF4tJPvuZKylLCkTWCzzR5K/D0I8cpazCXWYylTCdo7Z
	CJYaFUS7GccbUgcRUhX4T9cy/WFZ6RiFo6LexaXZpK6XVNPlissl69o1kRlu7mI8qYHBuKZ/5Rdya
	4BAA8eEnVsoY8kve7J9ddgxVXZbwAWfyUZIiEIvXV/ib2DyzjHnNWKJIvC34fzk0KH4N2bjYtWdvX
	GCb9B0oBFseQS66XDAw8YFoR+YhZJXBi1kUgasdPvWT17hTspcUsJFwPHgfcXGc/d1NGMro/KJFIu
	MairWdyQ==;
Received: from i53875a40.versanet.de ([83.135.90.64] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1v91X6-0007hd-Ux; Wed, 15 Oct 2025 15:27:12 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: mturquette@baylibre.com, sboyd@kernel.org, zhangqing@rock-chips.com,
 sebastian.reichel@collabora.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] clk: rockchip: rk3588: Don't change PLL rates when setting
 dclk_vop2_src
Date: Wed, 15 Oct 2025 15:27:12 +0200
Message-ID: <2749454.BddDVKsqQX@diego>
In-Reply-To: <6677ebf9-50bd-4df0-806c-9698f2256a8d@cherry.de>
References: <20251008133135.3745785-1-heiko@sntech.de>
 <6677ebf9-50bd-4df0-806c-9698f2256a8d@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251015_062723_232352_026DCA01 
X-CRM114-Status: GOOD (  18.61  )
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

QW0gTWl0dHdvY2gsIDE1LiBPa3RvYmVyIDIwMjUsIDE0OjU4OjQ2IE1pdHRlbGV1cm9ww6Rpc2No
ZSBTb21tZXJ6ZWl0IHNjaHJpZWIgUXVlbnRpbiBTY2h1bHo6Cj4gSGkgSGVpa28sCj4gCj4gT24g
MTAvOC8yNSAzOjMxIFBNLCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiA+IGRjbGtfdm9wMl9zcmMg
Y3VycmVudGx5IGhhcyBDTEtfU0VUX1JBVEVfUEFSRU5UIHwgQ0xLX1NFVF9SQVRFX05PX1JFUEFS
RU5UCj4gPiBmbGFncyBzZXQsIHdoaWNoIGlzIHZhc3RseSBkaWZmZXJlbnQgdGhhbiBkY2xrX3Zv
cDBfc3JjIG9yIGRjbGtfdm9wMV9zcmMsCj4gPiB3aGljaCBoYXZlIG5vbmUgb2YgdGhvc2UuCj4g
PiAKPiA+IFdpdGggdGhlc2UgZmxhZ3MgaW4gZGNsa192b3AyX3NyYywgYWN0dWFsbHkgc2V0dGlu
ZyB0aGUgY2xvY2sgdGhlbiByZXN1bHRzCj4gPiBpbiBhIGxvdCBvZiBvdGhlciBwZXJpcGhlcmFs
cyBicmVha2luZywgYmVjYXVzZSBzZXR0aW5nIHRoZSByYXRlIHJlc3VsdHMKPiA+IGluIHRoZSBQ
TEwgc291cmNlIGdldHRpbmcgY2hhbmdlZDoKPiA+IAo+ID4gWyAgIDE0Ljg5ODcxOF0gY2xrX2Nv
cmVfc2V0X3JhdGVfbm9sb2NrOiBzZXR0aW5nIHJhdGUgZm9yIGRjbGtfdm9wMiB0byAxNTI4NDAw
MDAKPiA+IFsgICAxNS4xNTUwMTddIGNsa19jaGFuZ2VfcmF0ZTogc2V0dGluZyByYXRlIGZvciBw
bGxfZ3BsbCB0byAxNjgwMDAwMDAwCj4gPiBbIGNsayBhZGp1c3RpbmcgZXZlcnkgZ3BsbCB1c2Vy
IF0KPiA+IAo+ID4gVGhpcyBpbmNsdWRlcyBwb3NzaWJseSB0aGUgb3RoZXIgdm9wcywgaTJzLCBz
cGRpZiBhbmQgZXZlbiB0aGUgdWFydHMuCj4gPiBBbW9uZyBvdGhlciBwb3NzaWJsZSB0aGluZ3Ms
IHRoaXMgYnJlYWtzIHRoZSB1YXJ0IGNvbnNvbGUgb24gYSBib2FyZAo+ID4gSSB1c2UuIFNvbWV0
aW1lcyBpdCByZWNvdmVycyBsYXRlciBvbiwgYnV0IHRoZXJlIHdpbGwgYmUgYSBiaWcgYmxvY2sK
PiAKPiBJIGNhbiByZXByb2R1Y2Ugb24gdGhlIHNhbWUgYm9hcmQgYXMgeW91cnMgYW5kIHRoaXMg
Zml4ZXMgdGhlIGlzc3VlIAo+IGluZGVlZCAobm90ZSBJIGNhbiBvbmx5IHJlcHJvZHVjZSBmb3Ig
bm93IHdoZW4gZGlzcGxheSB0aGUgbW9kZXRlc3QgCj4gcGF0dGVybiwgb3RoZXJ3aXNlIGFmdGVy
IGJvb3QgdGhlIGNvbnNvbGUgc2VlbXMgZmluZSB0byBtZSkuCgpJIGJvb3QgaW50byBhIERlYmlh
biByb290ZnMgd2l0aCBmYmNvbiBvbiBteSBzeXN0ZW0sIGFuZCB0aGUgc2VyaWFsCmNvbnNvbGUg
cHJvZHVjZXMgZ2FyYmxlZCBvdXRwdXQgd2hlbiB0aGUgdm9wIGFkanVzdHMgdGhlIGNsb2NrCgpT
b21ldGltZXMgaXQgcmVjb3ZlcnMgYWZ0ZXIgYSBiaXQsIGJ1dCBvdGhlciB0aW1lcyBpdCBkb2Vz
bid0Cgo+IFJldmlld2VkLWJ5OiBRdWVudGluIFNjaHVseiA8cXVlbnRpbi5zY2h1bHpAY2hlcnJ5
LmRlPgo+IFRlc3RlZC1ieTogUXVlbnRpbiBTY2h1bHogPHF1ZW50aW4uc2NodWx6QGNoZXJyeS5k
ZT4gIyBSSzM1ODggVGlnZXIgdy8gCj4gRFAgY2FycmllcmJvYXJkCgpUaGFua3MgZm9yIHRlc3Rp
bmcKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
