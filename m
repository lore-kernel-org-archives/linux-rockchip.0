Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DB7EC3DA6D
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 May 2025 19:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7/AI8/UwJfeVWl974uHKjLmQXlzvgPKsLFC1AMDFdNQ=; b=qvJrX45PQEFdQf
	IfWY1JSI4g0qFv+mF3choxA+eKL+tjAzawS/ub/rKjiI/dA/fbqe4DbJbJS+X9qHWNWwIxfctNzgC
	979aS9sv3z6euaykS8KQdQRCDxYoXABoDdJB8z104CAVbpdVmproeLwPC/fKdQLQ9no798Jw8dmXV
	xLPJBH7ExIahtGLRyGSitKsiqvZEUUrjNj4ZR6XyazD3AoXm+eip9BG26tIkxTRrRoZHF1MVDuu7Y
	SNrLxinOw5/yZZyT7f5wpLI5h31Xu6e5AcHTxl68znOpwDDPmvrdpmKCw6GknjgCXxPsfB8zokkAu
	dxXl4fJpAAytQgD22N+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHSEF-0000000DsjO-1FSx;
	Tue, 20 May 2025 19:02:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHSDs-0000000Dsfr-3Vxd;
	Tue, 20 May 2025 19:01:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=UvGH6qRwQcbhO99OunJTG4MQCjsdpwOOq5jFQkxbcCM=; b=gbGl/dPhMuTmG/lpymtn1obWb6
	VjjI4aIoT2yGPdOpl+N7ldDaG8WKfWP4+j+kS1k2IvZ5vDxVfYmPlkcgQz8dq56NiD9M4FZC1lAMW
	+G5D41NCWzC/P2clzm3JwqMzIeJTmkMiblepFFt8O6fX9o1O9ecgzFi/tBqf4ud0wnM8NqyN1J74S
	/kw9x5XHpYhIPBnDjPSZ8rI4QopuszOT/bPF0REKfR+KIG9KTHGeqwxN5eeRs26wnfYGOHIqmebm3
	sS8IRAjvWD1R6gE5pkNesekr/dxiPv6b9yeNh0ABXyuAVuj/JaEnkEVdMHncsCC85UcQjupi2/k61
	TSZXTqvQ==;
Received: from [61.8.146.112] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uHSDl-0004Wi-Nw; Tue, 20 May 2025 21:01:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Shawn Lin <shawn.lin@rock-chips.com>,
 Diederik de Haas <didi.debian@cknow.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v2] arm64: defconfig: Enable Rockchip UFS host driver
Date: Tue, 20 May 2025 21:01:48 +0200
Message-ID: <24315320.6Emhk5qWAg@phil>
In-Reply-To: <D9VW95BJVUZM.2KDNW7JLCKKF0@cknow.org>
References: <1741161252-138526-1-git-send-email-shawn.lin@rock-chips.com>
 <D9VW95BJVUZM.2KDNW7JLCKKF0@cknow.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250520_120156_880794_6B6088E4 
X-CRM114-Status: GOOD (  22.10  )
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

QW0gTWl0dHdvY2gsIDE0LiBNYWkgMjAyNSwgMTQ6NDg6NDYgTWl0dGVsZXVyb3DDpGlzY2hlIFNv
bW1lcnplaXQgc2NocmllYiBEaWVkZXJpayBkZSBIYWFzOgo+IEhpLAo+IAo+IEknbSB1cGRhdGlu
ZyBteSBvd24ga2VybmVsIGNvbmZpZyBhbmQgaGF2ZSBhIHF1ZXN0aW9uIGFib3V0IHRoaXMgY2hh
bmdlLgo+IAo+IE9uIFdlZCBNYXIgNSwgMjAyNSBhdCA4OjU0IEFNIENFVCwgU2hhd24gTGluIHdy
b3RlOgo+ID4gRW5hYmxlIFJvY2tjaGlwIFVGUyBob3N0IGRyaXZlci4KPiA+Cj4gPiBUaGlzIGRy
aXZlciBpcyBmaXJzdCBpbnRyb2R1Y2VkIG9uIFJvY2tjaGlwIFJLMzU3NiBTb0MsIGFuZCB3aWxs
Cj4gPiBiZSB1c2VkIGZvciBtb3JlIFNvQ3MgaW4gbmVhciBmdXR1cmUsIHNvIGFkZCBpdCB0byBk
ZWZjb25maWcKPiA+IHdpbGwgbWFrZSB0aGVzZSBwbGF0Zm9ybXMgd29yayBiZXR0ZXIuCj4gPgo+
ID4gUmV2aWV3ZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lA
bGluYXJvLm9yZz4KPiA+IFNpZ25lZC1vZmYtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2st
Y2hpcHMuY29tPgo+ID4gLS0tCj4gPgo+ID4gIGFyY2gvYXJtNjQvY29uZmlncy9kZWZjb25maWcg
fCAxICsKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiA+Cj4gPiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9jb25maWdzL2RlZmNvbmZpZyBiL2FyY2gvYXJtNjQvY29uZmlncy9k
ZWZjb25maWcKPiA+IGluZGV4IDNhMzcwNmQuLjkwN2U5MmQgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNo
L2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnCj4gPiArKysgYi9hcmNoL2FybTY0L2NvbmZpZ3MvZGVm
Y29uZmlnCj4gPiBAQCAtMTE5MSw2ICsxMTkxLDcgQEAgQ09ORklHX1NDU0lfVUZTX0hJU0k9eQo+
ID4gIENPTkZJR19TQ1NJX1VGU19SRU5FU0FTPW0KPiA+ICBDT05GSUdfU0NTSV9VRlNfVElfSjcy
MUU9bQo+ID4gIENPTkZJR19TQ1NJX1VGU19FWFlOT1M9eQo+ID4gK0NPTkZJR19TQ1NJX1VGU19S
T0NLQ0hJUD15Cj4gCj4gSXMgdGhlcmUgYSBwYXJ0aWN1bGFyIHJlYXNvbiB3aHkgdGhpcyBpcyBg
PXlgIGFuZCBub3QgYD1tYD8KPiAKPiBGb3IgU0NTSV9VRlNfRVhZTk9TIHRoZXJlIGlzIGFuIGV4
cGxpY2l0IHJlYXNvbiBmb3IgYD15YCBpbgo+IDViZTkxZmU4ZDkxYiAoImFybTY0OiBkZWZjb25m
aWc6IEVuYWJsZSBFeHlub3MgVUZTIGRyaXZlciIpCj4gKGl0IHdvbid0IGRldGVjdCAoc29tZT8p
IFVGUyBkZXZpY2VzIG90aGVyd2lzZSkKPiAKPiBCdXQgdGhpcyBwYXRjaC9jb21taXQgZG9lc24n
dCBzYXkgaWYvd2h5IGl0IG11c3QgYmUgYnVpbHQtaW4uCj4gSXMgdGhlcmUgc3VjaCBhIHJlYXNv
biBvciBpcyBgPW1gIGZpbmUgYXMgd2VsbD8KCk1vc3QgdGhpbmdzIGFyZSBzdXBwb3NlZCB0byBi
ZSBtb2R1bGVzLiBUaG91Z2ggdGhlIG9uLXNvYyBtYXNzLQpzdG9yYWdlIGRldmljZXMgZ2V0IGEg
Yml0IG9mIGxlbmllbmN5IDstKSAuCgpJLmUuIGRlZmNvbmZpZyBpcyBzdXBwb3NlZCB0byBnZXQg
eW91IHN0YXJ0ZWQsIHNvIG5vdCBoYXZpbmcgdG8ganVtcAp0aHJvdWdoIGFuIGluaXRyYW1mcyB0
byBsb2FkIHRoZSBtbWMgb2YgdWZzIG1vZHVsZSBpcyBoZWxwZnVsLgoKCkhlaWtvCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
