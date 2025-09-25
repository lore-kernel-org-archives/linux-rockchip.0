Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4DDD0CAC5A5
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Sep 2025 09:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cB3lTW3KX4BAFIMeRk1IftnQBV4+k+6mPi43VwYmixU=; b=JMU04euPfjlEhe
	HMxmQxBU/PQRahcxQ7czy8p+SU5U0FaVbNaeuYcUgvwmMQJnEC9yrXOgGppTKgO/m+5HOedtAQ39J
	X6tG/ohabPiOPT4SHsegg3Bg8zCIcJo+u3PQ1XSNLhLXGVfVsAbgPQTWl2ZAyQ4dFdMTZEsgGE3v7
	c539fKAD5y8DI7Qs4vtV4b2Ru5AOOg4kH9SBucu9z3ftTVs2RL9UmpVZq+ARQOExisFh3Av3gfeJM
	mjyJqbKxP1L3ns4w+OAdzvpI2gjfBkeYQVs5uDQhdVzVml02caXwa2vqYYupBgSNH6ymQexGqCU9d
	kR3tTfoJ/1eXZsxsqWkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1iFd-00000007avr-3QyX;
	Thu, 25 Sep 2025 09:26:57 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1iFb-00000007aug-0UdR;
	Thu, 25 Sep 2025 09:26:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=76q1OAIbWzsCuKoQwsNyMbJZPYklly4WZ986Ya6JeA4=; b=s6RMm+4h6CxXXGd4nuCdWwwZhb
	3cMJIRtOA+1IzJ3XrBcy7tY+wNR8uNj8KB1shy/sVyqHiMTKVtcEBYwrN7D2BrQW/g9lZNKpOO0Mz
	sWPWmocZIsm5docjMWQW/gDkrLdEvf1h0JoegVhvTOpxviENR2vRPJn7XaQc1OpDvA4B+IiDIgN6r
	21cctmRbuprrDDZWO1dslwRIzVsqcIsvdOgcbuoRat/9uvc/mOZclN5RgbfgY0q/shTzfPihxpwr+
	YbXJMYADcLS0yMc5HZH3XBfA6A7qSpwhSF4ugCcvcOl8QkF2iqQ05bampl2rpVS/zjXD0cVf5O40M
	sY8BTiLQ==;
Received: from i53875a54.versanet.de ([83.135.90.84] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1v1iFE-0001MQ-H3; Thu, 25 Sep 2025 11:26:32 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 quentin.schulz@cherry.de, kever.yang@rock-chips.com, naoki@radxa.com,
 honyuenkwun@gmail.com, inindev@gmail.com, ivan8215145640@gmail.com,
 neil.armstrong@linaro.org, mani@kernel.org, dsimic@manjaro.org,
 pbrobinson@gmail.com, alchark@gmail.com, didi.debian@cknow.org,
 jjm2473@gmail.com, jbx6244@gmail.com, Liangbin Lian <jjm2473@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/3] arm64: dts: rockchip: introduce LinkEase EasePi R1
Date: Thu, 25 Sep 2025 11:26:29 +0200
Message-ID: <2320204.Dhsi8hcfAM@diego>
In-Reply-To: <20250925092037.13582-1-jjm2473@gmail.com>
References: <20250925092037.13582-1-jjm2473@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250925_022655_174071_1E6B9152 
X-CRM114-Status: GOOD (  10.81  )
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

QW0gRG9ubmVyc3RhZywgMjUuIFNlcHRlbWJlciAyMDI1LCAxMToyMDozNCBNaXR0ZWxldXJvcMOk
aXNjaGUgU29tbWVyemVpdCBzY2hyaWViIExpYW5nYmluIExpYW46Cj4gTGlua0Vhc2UgRWFzZVBp
IFIxIFsxXSBpcyBhIGhpZ2gtcGVyZm9ybWFuY2UgbWluaSByb3V0ZXIuCj4gCj4gU3BlY2lmaWNh
dGlvbjoKPiAtIFJvY2tjaGlwIFJLMzU2OAo+IC0gMkdCLzRHQiBMUEREUjQgUkFNCj4gLSAxNkdC
IG9uLWJvYXJkIGVNTUMKPiAtIDF4IE0uMiBrZXkgZm9yIDIyODAgTlZNZSAoUENJZSAzLjApCj4g
LSAxeCBVU0IgMy4wIFR5cGUtQQo+IC0gMXggVVNCIDIuMCBUeXBlLUMgKGZvciBVU0IgZmxhc2hp
bmcpCj4gLSAyeCAxMDAwIEJhc2UtVCAobmF0aXZlLCBSVEw4MjExRikKPiAtIDJ4IDI1MDAgQmFz
ZS1UIChQQ0llLCBSVEw4MTI1QikKPiAtIDF4IEhETUkgMi4wIE91dHB1dAo+IC0gMTJ2IERDIEph
Y2sKPiAtIDF4IFBvd2VyIGtleSBjb25uZWN0ZWQgdG8gUE1JQwo+IC0gMnggTEVEcyAob25lIHN0
YXRpYyBwb3dlciBzdXBwbGllZCwgb25lIEdQSU8gY29udHJvbGxlZCkKPiAKPiBbMV0gaHR0cHM6
Ly9kb2MubGlua2Vhc2UuY29tL3poL2d1aWRlL2Vhc2VwaS1yMS9oYXJkd2FyZS5odG1sCj4gCj4g
U2lnbmVkLW9mZi1ieTogTGlhbmdiaW4gTGlhbiA8amptMjQ3M0BnbWFpbC5jb20+Cj4gLS0tCj4g
Q2hhbmdlcyBpbiB2MjoKPiAtIENoYW5nZSBkZXByZWNhdGVkICJyb2NrY2hpcCxzeXN0ZW0tcG93
ZXItY29udHJvbGxlciIgdG8gInN5c3RlbS1wb3dlci1jb250cm9sbGVyIgo+IC0gTGluayB0byB2
MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI1MDkyNTA1NTkwNi44MzM3NS0xLWpqbTI0
NzNAZ21haWwuY29tLwoKZ2VuZXJhbCBwcm9jZXNzIGNvbW1lbnQsICBwbGVhc2UgZG9uJ3Qgc2Vu
ZCBtdWx0aXBsZSB2ZXJzaW9ucyBvbiB0aGUKc2FtZSBkYXkuCgpUaGlzIHNwbGl0cyByZXZpZXdl
cnMgYXR0ZW50aW9uIChwb3NzaWJseSByZXZpZXdpbmcgb3V0ZGF0ZWQgc3VibWlzc2lvbnMpLApk
b2Vzbid0IGdpdmUgcGVvcGxlIGFjdHVhbCB0aW1lIHRvIHJldmlldyBhbmQgYWxzbyBqdXN0IGZp
bGxzIHVwIGluYm94ZXMgOi0pCgoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
