Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE90AC32771
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 14:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XN+NSbgj5ywf9Er+KLMj0NoX/b0lA7EhGpnJfZbh4KU=; b=sutkb57Au7tcmR
	BC+L6phFBtAvnTN5BCo2wIaR83HHN65lFvY7bqW8fLmkVWZPiYmUxXI6ZV9258jQPAqmpGGNvU+hB
	TUKv1cykR0lW5uCJJzAZ6SPlOhvKgqtSa0uGkiEicgUA5jh6A6hKJw3VOlaPhiE5IsbiMtPUeGhhN
	Dm3BPeKC8eLjE+KAw2t86/LE06Vu+Ma0nqHR5iuk8ZTkiQ8Af5SCrq7NaZTo6K6JANYlDBaFjxrfX
	YoeftJFqS6Gogzs5Tc6/gs3/ID2XIGXnbMYzXJSA6ydT1mwI77/RBNC260kCRO6zT88quHsBIUvnm
	cWFbFmgFX7uVY+U9mgjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odYBK-00Ghh7-Th; Wed, 28 Sep 2022 14:37:02 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odYBH-00Ghg4-KA
	for linux-rockchip@lists.infradead.org; Wed, 28 Sep 2022 14:37:00 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 2757561EBE;
	Wed, 28 Sep 2022 14:36:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 62B6AC433D6;
	Wed, 28 Sep 2022 14:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664375818;
	bh=AKYUXMSFyJEZ3MGh7qhq3oHM1Mb/mSjFZvL+qW4J4Xw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cilv0RnWY6aMcLrOusXlX2smuNnfveULRAIwVCDtx9cP9A+F7KiyS9pnTLXK8GoFN
	 iYNGFqn1cI5XffnO+PzjmkI4o2+hNjz6eyHFR9heN6HD4HrkItuvqggRHRN1jFglRA
	 o2FZCXXxFyGIXzlacxBkMPz4Aoh1Gb91/fQfMjBe6FoasNyEUEzk8sL2vgcA6hdtR8
	 336BaQCy71O1WY4us+f4/JcBHSCeBsavWWoISeUu7R87yHPm7A8jYTc5xI5l4n9m75
	 V+0upk/xVcP4CotURW7XiVT+TRuDVmSDmoH92HBcUEmlPPjmujUpt2z9SDpEHftDmN
	 7H/T/XXYM3GUg==
Date: Wed, 28 Sep 2022 15:36:52 +0100
From: Lee Jones <lee@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-pm@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, zhangqing@rock-chips.com,
	zyw@rock-chips.com, jon.lin@rock-chips.com, maccraft123mc@gmail.com,
	sre@kernel.org, heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org, philip@pscan.uk, mazziesaccount@gmail.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V10 3/4] power: supply: Add charger driver for Rockchip
 RK817
Message-ID: <YzRcBJ7HHstO49Eq@google.com>
References: <20220827021623.23829-1-macroalpha82@gmail.com>
 <20220827021623.23829-4-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220827021623.23829-4-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_073659_718191_F56DCDBF 
X-CRM114-Status: GOOD (  11.53  )
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

T24gRnJpLCAyNiBBdWcgMjAyMiwgQ2hyaXMgTW9yZ2FuIHdyb3RlOgoKPiBGcm9tOiBDaHJpcyBN
b3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgo+IAo+IEFkZCBzdXBwb3J0IGZvciB0aGUg
Um9ja2NoaXAgcms4MTcgYmF0dGVyeSBjaGFyZ2VyIGludGVncmF0ZWQgaW50byB0aGUKPiByazgx
NyBQTUlDLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIE1vcmdhbiA8bWFjcm9tb3JnYW5AaG90
bWFpbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWF5YSBNYXR1c3pjenlrIDxtYWNjcmFmdDEyM21j
QGdtYWlsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9wb3dlci9zdXBwbHkvS2NvbmZpZyAgICAgICAg
IHwgICAgNiArCj4gIGRyaXZlcnMvcG93ZXIvc3VwcGx5L01ha2VmaWxlICAgICAgICB8ICAgIDEg
Kwo+ICBkcml2ZXJzL3Bvd2VyL3N1cHBseS9yazgxN19jaGFyZ2VyLmMgfCAxMjExICsrKysrKysr
KysrKysrKysrKysrKysrKysrCj4gIDMgZmlsZXMgY2hhbmdlZCwgMTIxOCBpbnNlcnRpb25zKCsp
Cj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3Bvd2VyL3N1cHBseS9yazgxN19jaGFyZ2Vy
LmMKCkFwcGxpZWQsIHRoYW5rcy4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
