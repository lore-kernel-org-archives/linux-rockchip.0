Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3F31C54ED1
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 May 2025 10:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lyBEdM3zvM80wunOmQiYV1s+FMefgyn4Ga5mixBuPd0=; b=M0/8jIKCAt8+J6
	fqJ18+1efLCAYO0UYBYpKDrMChd+qiTocO8tuRDdPu9T7YnCddCMEEtSVwWaBIoHr2a3KOzVGi5Vs
	EtTckT6KHy4OMlQqYwKZ9OzCKdiTTRLLHVXiQDNM7pP0lpYMgZPAyC5alkLTAo1r//NIc1Y88HUfS
	GLLZwJZuUbMqY1e+QKX4lkrww12ZBbKe4BakBd/eYI9BF5Bz0t3A79C8RckTvCwMELVFAGlvzcJLh
	/hRIQilO1OY/bvJgzYNHnMGlOOuYPrNmJR9lZd+/ZhvBctNcyls6Zmfa69HwZSTWGOEg55DW9Tcs7
	sj0uuzuWOs3OorlDfqQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJr6y-0000000AQO5-1pqn;
	Tue, 27 May 2025 10:00:44 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJr4n-0000000AQ69-1i0U;
	Tue, 27 May 2025 09:58:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=CkhC4UgjPuQVaDzWVls8hkO6XTDFrLoAmVdIcxrQuac=; b=zdyPE/6FYF0B9hHYOcyAJQSQVb
	v5p2PtNxurf+8p3BwNCAmbsiWZt75jOct2i6rviYg7cuSxRIJMtJLKN+NASU9Oo66Djpdjp4wjfEm
	m0IwHZ8ZVzTGe770tvvY2YWklQCYcQBuQw38CgwAkZpu0e3lAIH4gUiUICPcvh03Q666yjHPzeCNu
	e63o+lEPFgUfnMU19+gIuQSh+XsjmE3UK9ZYLFPVTC7Q4sj3pQzcYDP9Y/R3x5iT9hPP8Z6fVHuM+
	PdZyny0o+QjDlJp124lzkh06v5yuaeiXkjwMVh0o3Jn15L7JVjC/0BDKhqrsJq8PmNGgFGa2J466h
	gcnPF5dA==;
Received: from i53875bdb.versanet.de ([83.135.91.219] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uJr4i-0007Bf-FG; Tue, 27 May 2025 11:58:24 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Quentin Schulz <foss+kernel@0leil.net>
Cc: Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Quentin Schulz <quentin.schulz@cherry.de>
Subject: Re: [PATCH v2] arm64: dts: rockchip: support Ethernet Switch adapter for
 RK3588 Jaguar
Date: Tue, 27 May 2025 11:58:23 +0200
Message-ID: <2600723.TLnPLrj5Ze@diego>
In-Reply-To: <20250523-jaguar-mezz-eth-switch-v2-1-aced8bf6612d@cherry.de>
References: <20250523-jaguar-mezz-eth-switch-v2-1-aced8bf6612d@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_025829_470646_8A499E40 
X-CRM114-Status: GOOD (  12.03  )
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

QW0gRnJlaXRhZywgMjMuIE1haSAyMDI1LCAxODo0ODo0MiBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIFF1ZW50aW4gU2NodWx6Ogo+IEZyb206IFF1ZW50aW4gU2NodWx6IDxx
dWVudGluLnNjaHVsekBjaGVycnkuZGU+Cj4gCj4gVGhpcyBhZGRzIHN1cHBvcnQgZm9yIHRoZSBF
dGhlcm5ldCBTd2l0Y2ggYWRhcHRlciBjb25uZWN0ZWQgdGhyb3VnaCB0aGUKPiBtZXp6YW5pbmUg
Y29ubmVjdG9yIG9uIFJLMzU4OCBKYWd1YXIuCj4gCj4gVGhpcyBhZGFwdGVyIGhhcyBhIEtTWjk4
OTYgRXRoZXJuZXQgU3dpdGNoIHdpdGggNCAxR2JFIEV0aGVybmV0Cj4gY29ubmVjdG9ycywgdHdv
IHVzZXIgY29udHJvbGxhYmxlIExFRHMsIGFuZCBhbiBNMTIgMTItcGluIGNvbm5lY3Rvcgo+IHdo
aWNoIGV4cG9zZXMgdGhlIGZvbGxvd2luZyBzaWduYWxzOgo+ICAtIFJTMjMyL1JTNDg1IChtYXgg
MjUwS2Jwcy81MDBLYnBzLCBSWCBwaW4xLCBUWCBwaW4yKQo+ICAtIHR3byBkaWdpdGFsIGlucHV0
cyAocGluNCByb3V0ZWQgdG8gR1BJTzNfQzUgb24gU29DLCBwaW41IHRvIEdQSU80X0I0KQo+ICAt
IHR3byBkaWdpdGFsIG91dHB1dHMgKHBpbjcgcm91dGVkIHRvIEdQSU8zX0QzIG9uIFNvQywgcGlu
OCB0bwo+ICAgIEdQSU8zX0QxKQo+ICAtIHR3byBhbmFsb2cgaW5wdXRzIChwaW4xMCB0byBjaGFu
bmVsMSBvZiBBRFMxMDE1LCBwaW4xMSB0byBjaGFubmVsMikKPiAKPiBTaWduZWQtb2ZmLWJ5OiBR
dWVudGluIFNjaHVseiA8cXVlbnRpbi5zY2h1bHpAY2hlcnJ5LmRlPgoKPiArJmkyYzEgewo+ICsJ
I2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gKwkvKiBBRFMxMDE1IGNhbiBoYW5kbGUgaGlnaC1zcGVl
ZCAoSFMpIG1vZGUgKHVwIHRvIDMuNE1Ieikgb24gSTJDIGJ1cywKPiArCSAgIGJ1dCBTT0MgY2Fu
IGhhbmRsZSBvbmx5IHVwIHRvIDQwMGtIei4gKi8KCk11bHRpLWxpbmUgY29tbWVudCBzdHlsZSB3
b3VsZCBiZQoJLyoKCSAqIEFEUzEwMTUgY2FuIGhhbmRsZSBoaWdoLXNwZWVkIChIUykgbW9kZSAo
dXAgdG8gMy40TUh6KSBvbiBJMkMgYnVzLAoJICogYnV0IFNPQyBjYW4gaGFuZGxlIG9ubHkgdXAg
dG8gNDAwa0h6CgkgKi8KCj4gKwljbG9jay1mcmVxdWVuY3kgPSA8NDAwMDAwPjsKPiArCSNzaXpl
LWNlbGxzID0gPDA+Owo+ICsJc3RhdHVzID0gIm9rYXkiOwo+ICsKCm90aGVyIHRoYW4gdGhhdCwg
bG9va3MgZmluZQoKCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
