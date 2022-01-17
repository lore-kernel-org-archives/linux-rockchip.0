Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 909F6C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jan 2022 14:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QldFFYHpTCQayQPgh5qmF78FKijgnaf4EnKxTM75sEg=; b=ouT0hFSjF0f/v4
	OOLoc5HAxl1D2Ak3krIsDzrp/ka/9rgARJwIpaXN7vcFknAi6RoHNPRt7VqrBzdefLrzPezezspRJ
	VfjPQiZ/Ddma98ok9bxea2eGidJOyFGYB4yWfsWzNZaCOgRtXKCPRC+lxahFPzW1FLecHLw1Fk1+O
	wwe/9xwUJex+uVfcCiVxhFUQIeZdWmbLl2Ch+OgHq3uKyjANHyykkjfXQS0q821OyJWaT3+AR2dMC
	Obci5wrcf9mneSGtV2kMJ7Cm8P5L7CaPn6yGvtxUc6ZGFlAau/LuH9q8rQxpa9Bmp4yAd7TmivmlP
	2n3EqRoFkLV5e7ynpsYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9TAB-00FDKO-Rn; Mon, 17 Jan 2022 14:39:15 +0000
Received: from mail-yb1-xb31.google.com ([2607:f8b0:4864:20::b31])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9T9z-00FDHU-Iy; Mon, 17 Jan 2022 14:39:05 +0000
Received: by mail-yb1-xb31.google.com with SMTP id e195so16318312ybb.7;
 Mon, 17 Jan 2022 06:39:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=kHhCRgvF9Wf+R6yEgWiaK5gOZflCu4gFexOOmAZwK3A=;
 b=YsHtL+blfxwmFULnGvT3ULZ4xkuIYMK/Pd/Zg8NTRgLF6XqOZdWNT0SzetQ/F01GQo
 6Dld83r6NDOqox7MsT8O765x4oqVXIZD6EuiS7gZ0tJU+IlRB/C3veG4LcHqIwTrOUrO
 6HZA5rNpF4+dyXvRhpV6GxtZ6uRY/afq/4vyRWf4Wos3kZ5SEwwXgruJD2VBqTyRsmDi
 kEkd/HDGq3rYUHneKgp9Ik3B3yA+1EniOwtbuJ6yEdgckNeRbaEvJhGHXLdoEOUYihAs
 9XXDzpdCuxTxtSsjzAOmpMo6T5Qiqo8MDQfHpp56eqBtzDgrYiFzC5t4nVd+p7p99C2d
 9nKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=kHhCRgvF9Wf+R6yEgWiaK5gOZflCu4gFexOOmAZwK3A=;
 b=pkPN5avyg8tv+i4guylVBkzzeU/WlAbvF/pXR95BcQSdKdSd5xx+DbrXZduE/v2J4c
 SMr8cbzDw+94EPb6rHDIrb99I/fpZhSmSIfXVOIMU1SrDm8U3+nhk4AOr4YAtdlQxmxY
 yTPOCm1TC2MXfziPb2d5AGTXqpM6X7roGw9+CW7c0pLiWvMIpbq4ahgSDlRPpwM3jXFT
 Cu4XuzDYj1zFP5NsB8zemDfAi3hbjEQuwDeJZGR+zuiV5ucjZlpY7GBimvCs2xqRGYD/
 2mpnajVnoR8c/dtXix6ZOlnI4yk0ovCEufDc3EJt3arvMSf8W2J6w/s0CfW+BjERLufb
 hLcw==
X-Gm-Message-State: AOAM5313lGviIhsAPwwmI+TMWADue/zHBDWyrssSi3ixjjmafFBgqg0d
 2zzBwmL/jhYI1ZdiSiteJDJAxw9XGdc3HOpU558=
X-Google-Smtp-Source: ABdhPJyJ+PolclN9RQf6xwmgvGfwBqjnkvt5u/uY1RWTKSTVwNniNgVw5KppymYp82qhh17PSy5Z9SnKj28hDizciBY=
X-Received: by 2002:a25:6d06:: with SMTP id i6mr26656526ybc.216.1642430342223; 
 Mon, 17 Jan 2022 06:39:02 -0800 (PST)
MIME-Version: 1.0
References: <20210728135534.703028-1-pgwipeout@gmail.com>
 <20210728135534.703028-6-pgwipeout@gmail.com>
 <C3AE0A81-A829-4241-A65E-EB28825E3C33@gmail.com>
 <CAMdYzYo2gkNvNYjU9_kc4cTwNBFU+kg3bRwaS3yCCAsMdo-Tow@mail.gmail.com>
 <E3AA167E-1E40-45CD-8CBB-3EB280856604@gmail.com>
In-Reply-To: <E3AA167E-1E40-45CD-8CBB-3EB280856604@gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Mon, 17 Jan 2022 09:38:50 -0500
Message-ID: <CAMdYzYqsPgAbLBt+xwDL2s7ViLDJw5mnzDnupimRVESt0xFksQ@mail.gmail.com>
Subject: Re: [PATCH 5/9] arm64: dts: rockchip: add rk3568 tsadc nodes
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>, 
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_063903_657638_266ACE9C 
X-CRM114-Status: GOOD (  19.13  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gTW9uLCBKYW4gMTcsIDIwMjIgYXQgOToxMyBBTSBQaW90ciBPbmlzemN6dWsKPHBpb3RyLm9u
aXN6Y3p1a0BnbWFpbC5jb20+IHdyb3RlOgo+Cj4KPgo+ID4gV2lhZG9tb8WbxIcgbmFwaXNhbmEg
cHJ6ZXogUGV0ZXIgR2VpcyA8cGd3aXBlb3V0QGdtYWlsLmNvbT4gdyBkbml1IDE3LjAxLjIwMjIs
IG8gZ29kei4gMTQ6NDk6Cj4gPgo+ID4+Cj4gPj4gUGV0ZXIsCj4gPj4KPiA+PiBJJ20gdHJ5aW5n
IHRvIHVzZSB0aGlzIHNlcmllcyB0byBnZXQgdGhlcm1hbCBvbiByazM1NjYgYmFzZWQgdHZib3gg
KHg5Ni14NikuCj4gPj4gRHJpdmVyIGxvYWRzIGJ1dCBpJ20gZ2V0dGluZyBmb2xsb3dpbmcgZXJy
b3I6Cj4gPj4KPiA+PiBbICAxMzIuODczOTc5XSByb2NrY2hpcC10aGVybWFsIGZlNzEwMDAwLnRz
YWRjOiBmYWlsZWQgdG8gcmVnaXN0ZXIgc2Vuc29yIDA6IC01MTcKPiA+PiBbICAxMzIuODc0NjUw
XSByb2NrY2hpcC10aGVybWFsIGZlNzEwMDAwLnRzYWRjOiBmYWlsZWQgdG8gcmVnaXN0ZXIgc2Vu
c29yWzBdIDogZXJyb3IgPSAtNTE3Cj4gPj4KPiA+PiBNYXliZSB5b3UgaGF2ZSBzb21lIGhpbnRz
IGhlcmU/Cj4gPgo+ID4gRXJyb3IgLTUxNyBtZWFucyAtRVBST0JFX0RFRkVSLCBhIGRldmljZSBp
dCByZWxpZXMgb24gaGFzbid0IHByb2JlZC4KPiA+IFRTQURDIGRvZXNuJ3QgZGlyZWN0bHkgcmVs
eSBvbiBhbnl0aGluZyB0aGF0IHNob3VsZG4ndCBhbHJlYWR5IGJlCj4gPiBlbmFibGVkLiAoUGlu
Y3RybCwgY2xvY2tzLCBhbmQgZ3JmIGFsbCBicmVhayBhIGxvdCBtb3JlIHRoYW4gdHNhZGMgaWYK
PiA+IGRpc2FibGVkKQo+ID4gRG9lcyB5b3VyIGtlcm5lbCBjb25maWcgaGF2ZSBhbGwgb2YgdGhl
IHJvY2tjaGlwIGVsZW1lbnRzIGVuYWJsZWQ/Cj4gPgo+Cj4gUGV0ZXIsCj4gRm9yIHN1cmUgSSBj
YW4ndCBzYXkgJ3llcycgd2l0aCAxMDAlIGNvbmZpZGVuY2UuCj4gSSdtIHRyeWluZyBkbyBteSBi
ZXN0IGZvciByazM1NjYgKGN1cnJlbnRseSBoYXZlIHdvcmtpbmc6IFNEL0V0aC9IRE1JL1NvdW5k
L1VTQjJwb3J0MC9CVCkuCj4KPiBNYXliZSB5b3UgbWF5IHBvaW50IG1lIHBscyBmb3IgZ29vZCBy
ZWZlcmVuY2Ugb2YgcmszNTZ4IGRlZmNvbmZpZz8KPgo+IGJ0dzogYSBiaXQgb2YgIGNvbnRleHQ6
Cj4gSW4gbXkgYXBwbGljYXRpb24gKGh0dHBzOi8vZ2l0aHViLmNvbS93YXJwbWUvbWluaW15dGgy
KSBpIGhhdmUgdGFyZ2V0IHRvIGhhdmUgc2luZ2xlIE9TIGJpbmFyeSBmb3IgYWxsIHN1cHBvcnRl
ZCBBbGx3aW5uZXIvQW1sb2dpYy9Sb2NrY2hpcC9Ccm9hZGNvbSBkZXZpY2VzLgo+IEJ5IHRoaXMg
a2VybmVsIGNvbmZpZyBpJ20gdXNpbmcgaXMgcGFpbmZ1bGx5IGFzc2VtYmxlZCB0byBoYXZlIG1p
bmltYWwgd29ya2luZyBrZXJuZWwgZm9yIGFsbCB0YXJnZXRzLgo+IEl0J3MgYSBwYWluZnVsIHJv
YWQuLi4uYnV0IHN0aWxsIHdhbnQgdG8gZ28gdGhpcyByb3V0ZSBmb3I6IG1pbmltYWwgaW1hZ2Ug
c2l6ZTsgc2hvcnRlc3QgYnVpbGQgdGltZSAmIG9uZS1mb3ItYWxsIGJpbmFyeS4KPiBteSBjdXJy
ZW50IGNvbmZpZzogaHR0cHM6Ly9naXRodWIuY29tL3dhcnBtZS9taW5pbXl0aDIvYmxvYi9tYXN0
ZXIvc2NyaXB0L2tlcm5lbC9saW51eC01LjE2L2ZpbGVzL2xpbnV4LTUuMTYtYXJtNjQtYXJtdjgu
Y29uZmlnCgpJIHJlY29tbWVuZCB5b3UgdXNlIGBtYWtlIHNhdmVkZWZjb25maWdgLgpJdCBwcm9k
dWNlcyBhIHNpbXBsaWZpZWQgZGVmY29uZmlnIGJhc2VkIG9uIHlvdXIgLmNvbmZpZy4KCllvdXIg
aXNzdWUgaXMgaW4geW91ciBkdHMuCllvdSBoYXZlIHJldGFpbmVkIHRoZSBxdWFydHo2NC1hICZj
cHVfdGhlcm1hbCBhY3RpdmUgdGhlcm1hbCBub2RlCndpdGhvdXQgdHlpbmcgaW4gYW4gYWN0aXZl
IHRoZXJtYWwgY29udHJvbCBkZXZpY2UgKGEgZmFuKS4KQnkgZGVmYXVsdCB0aGUgcmszNTZ4IGR0
c2kgcGFzc2l2ZSB0aGVybWFsIHRyaXBzIGFyZSBob29rZWQgdXAgYW5kCndpbGwgdGhyb3R0bGUg
dGhlIGRldmljZSBpbiBjYXNlIG9mIG92ZXJ0ZW1wLgpJZiB5b3VyIGRldmljZSBoYXMgbm8gYWN0
aXZlIHRoZXJtYWwgY29udHJvbCwgeW91IGRvbid0IG5lZWQgdG8gYWRkCnRoZSAmY3B1X3RoZXJt
YWwgbm9kZSBhdCBhbGwgdG8geW91ciBkdHMuCgo+Cj4gYnR3MjogZm9yIHJrMzU2NiBpJ20gdXNp
bmcgbWFqb3JpdHkgb2YgeW91ciBwYXRjaGVzIQo+IEdyZWF0IHdvcmsgb2YgeW91IQo+Cj4KPgo+
Cj4KPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
