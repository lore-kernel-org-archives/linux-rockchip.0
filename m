Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2FB5CCD1A5
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 11:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T6iIzSu4uV4Qhs4Qk1P/fpVlWFn1uInEIzJsXOblCLo=; b=JSMDUSyIo6d8PG
	d8xyEf/DrXGYfbkz0bl452bsUS9Q6r1z2VagGlujlRWOuY79liUCfdgbVxEFTRXth/WEDjlm8rIxB
	tgRJb+5+eCize8XkXAisjx/TAbfRwrZakGTi4p0TESqOD2X6aMp2aAaYlIp3nYYdTPvVlRNlfA9n2
	VWCbMm3wu1dO5ELvoNZqOd0FhLD7JVunMfFWXovCM1i+JX1RqdEsWQxoVUhPfqX1PDNb7qEtKf2/N
	QiP2TZl9E9fFOnA7hZbx2bn0oRQfznEw75TMOrwtzB70E3RIRGVWg4FR7nBHvEAS1qpKR3+t1eoYH
	CFWN8E8yFZPdEj9GkvtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBA8V-0000000Gi4t-2oyS;
	Tue, 21 Oct 2025 11:02:39 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBA8U-0000000Gi4M-1sn6
	for linux-rockchip@lists.infradead.org;
	Tue, 21 Oct 2025 11:02:38 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 73D6F62343;
	Tue, 21 Oct 2025 11:02:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F6DAC4CEF1;
	Tue, 21 Oct 2025 11:02:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761044543;
	bh=fGuJO/oCH0UaZiLZGDBuwIIRNqetEE6lB+0vfgiklFA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PyWnWQLm33SXnzzJWQ6YwLRa6RGD6qdXuS7PybHYHip5ywjwGOCJpvBG6JXxroKTX
	 /NpW24PuqI74lqh29nh2jXknlhOq/keeVZDIw9gRFRIjrqWMz5AoWulsrDjmSCYgZJ
	 curNQ4bXYh+gaeGlKFwIYIC3egNQYccfc70d19xXal8FIpQaO05BP5sU9CuIv2pO6Y
	 SjymRMbL0+MeuhjlzIEebkRypd6D54iZzu9e3QU896AiZLikHKTBSdtUgdwsdbrtX0
	 41ZlBw552T9CyGiwa9LV6o8HRGk1WiUPzy6wSxBYBTwKOcA/nD8ZoKwNYv6JugpYdC
	 Nzxp9d5ScQZiQ==
Date: Tue, 21 Oct 2025 16:32:09 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org
Subject: Re: ROCK 5B/5B+ RTL8852BE probe failure on v6.18-rc
Message-ID: <dgn3ekyon6jwfinerxx2ohpvebnxvuvpyqratfc3ciys4l4et7@5un6wskt4xn3>
References: <7755D0222F97F8A4+6c855efa-561f-4fd9-aadd-a4de3d244c7e@radxa.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7755D0222F97F8A4+6c855efa-561f-4fd9-aadd-a4de3d244c7e@radxa.com>
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

T24gVHVlLCBPY3QgMjEsIDIwMjUgYXQgMDc6MTI6MjFQTSArMDkwMCwgRlVLQVVNSSBOYW9raSB3
cm90ZToKPiBIaSwKPiAKPiBJJ3ZlIG9ic2VydmVkIGFuIGlzc3VlIHdoZXJlIHRoZSBSVEw4ODUy
QkUgZmFpbHMgdG8gcHJvYmUgb24gdGhlIFJPQ0sgNUIgYW5kCj4gUk9DSyA1QisgdXNpbmcgTGlu
dXggdjYuMTgtcmMuCj4gCj4gWyAgICA3LjcxOTI4OF0gcnR3ODlfODg1MmJlIDAwMDI6MjE6MDAu
MDogbG9hZGVkIGZpcm13YXJlCj4gcnR3ODkvcnR3ODg1MmJfZnctMS5iaW4KPiBbICAgIDcuNzIw
MTkyXSBydHc4OV84ODUyYmUgMDAwMjoyMTowMC4wOiBlbmFibGluZyBkZXZpY2UgKDAwMDAgLT4g
MDAwMykKPiBbICAgIDcuNzI4NTk2XSBydHc4OV84ODUyYmUgMDAwMjoyMTowMC4wOiBGaXJtd2Fy
ZSB2ZXJzaW9uIDAuMjkuMjkuNQo+IChkYTg3Y2NjZCksIGNtZCB2ZXJzaW9uIDAsIHR5cGUgNQo+
IFsgICAgNy43Mjk0MDddIHJ0dzg5Xzg4NTJiZSAwMDAyOjIxOjAwLjA6IEZpcm13YXJlIHZlcnNp
b24gMC4yOS4yOS41Cj4gKGRhODdjY2NkKSwgY21kIHZlcnNpb24gMCwgdHlwZSAzCj4gWyAgIDEx
LjQyMDYyM10gcnR3ODlfODg1MmJlIDAwMDI6MjE6MDAuMDogZmFpbGVkIHRvIGR1bXAgZWZ1c2Ug
cGh5c2ljYWwgbWFwCj4gWyAgIDExLjQyMjg1OV0gcnR3ODlfODg1MmJlIDAwMDI6MjE6MDAuMDog
ZmFpbGVkIHRvIHNldHVwIGNoaXAgaW5mb3JtYXRpb24KPiBbICAgMTEuNDI1MjczXSBydHc4OV84
ODUyYmUgMDAwMjoyMTowMC4wOiBwcm9iZSB3aXRoIGRyaXZlciBydHc4OV84ODUyYmUKPiBmYWls
ZWQgd2l0aCBlcnJvciAtMTYKPiAKPiBUaGlzIGlzc3VlIGRvZXMgbm90IHJlcHJvZHVjZSBvbiB2
Ni4xNi4gVGhlIGlzc3VlIGRvZXMgbm90IHJlcHJvZHVjZSB3aXRoCj4gdGhlIE1UNzkyMUUgb3Ig
dGhlIEFYMjEwLiBGdXJ0aGVybW9yZSwgdGhlIGlzc3VlIGRvZXMgbm90IHJlcHJvZHVjZSBvbiB0
aGUKPiBST0NLIDVBIG9yIHRoZSBST0NLIDUgSVRYKy4KPiAKPiBUaGUgaXNzdWUgYXBwZWFycyBu
b3QgdG8gcmVwcm9kdWNlIGluIG9yIHByaW9yIHRvIGNvbW1pdCAxNGJlZDliYzgxYmEuIFRoZQo+
IGlzc3VlIHJlcHJvZHVjZXMsIGFsYmVpdCB3aXRoIGEgbG93IGluY2lkZW5jZSByYXRlLCBhZnRl
ciBjb21taXQKPiBiZjc2ZjIzYWExYzEuCgpCb3RoIG9mIHRoZXNlIGNvbW1pdHMgYXJlIG1lcmdl
IGNvbW1pdHMgYW5kIHRoZXkgc2VlbSB0byBiZSBub3QgcmVsYXRlZCB0byBQQ0kKb3IgV2lGaS4K
Cj4gSXQgcmVwcm9kdWNlcywgYnV0IG5vdCAxMDAlLCBvbiB2Ni4xNywgYW5kIGlzIGxpa2VseSAx
MDAlCj4gcmVwcm9kdWNpYmxlIG9uIHY2LjE4LXJjLgo+IAo+IFRoZSBkbWVzZyBvdXRwdXQgYW5k
IHRoZSByZXN1bHQgb2YgbHNwY2kgLXZ2IHdoZW4gdGhlIGlzc3VlIG9jY3VycyBjYW4gYmUKPiBm
b3VuZCBiZWxvdzoKPiAgaHR0cHM6Ly9naXN0LmdpdGh1Yi5jb20vUmFkeGFOYW9raS9iZjU3YjZk
M2Q4OGMxZTQzMTBhMjMyNDdlN2JhYzlkZQo+IAo+IFdoYXQgc2hvdWxkIEkgaW52ZXN0aWdhdGUg
bmV4dD8KPiAKClNvIHRoZSBwYXRjaCBmcm9tIE5pa2xhcyBbMV0gZGlkbid0IHNvbHZlIHRoZSBp
c3N1ZSBvbiB0aGVzZSBib2FyZCArIFdpRmkgY2hpcApjb21ibz8KCi0gTWFuaQoKWzFdIGh0dHBz
Oi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXBjaS8yMDI1MTAxNzE2MzI1Mi41OTg4MTItMi1jYXNz
ZWxAa2VybmVsLm9yZy8KCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a4K6k4K6+
4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
