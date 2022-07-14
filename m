Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35354C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 14 Jul 2022 17:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YDmuWLEQXGId2oMmS/VNosn+yEGtWE5VevTaFEbnQnI=; b=3Bas6xVBAvr4wt
	2/XehxJO8JPSPhF7zkoBKcVVHJR4iZOnEdgPd2lWZwClh8cAv4+JFPpNXxCozPRRPRhfjnzTvBWsH
	KFxJpQcms7dcWD7z4lXy0q2pNE7+z47FXvo4yUCfIuYQ0kqHUbPnWIdzigKn40D/kHgcY3aUdqocx
	7E2s4QcL676sMjDRenSeHLAaBIpUMadYnS1Ao9NuPga347MYqKEOuPB2aHgM6Hz5l+0npCxetj4/N
	ByTu+bNDpoqjkpswd6oPcB+A2laQ/578DcQvyPFE2S0xOgqV2n75WDCPxvlpPvDeLpwTvRE6UBe7z
	iOFvqHNqlgll6Gj1fC6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oC35y-00GvDR-0r; Thu, 14 Jul 2022 17:57:50 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oC35k-00Gv9d-Ut
	for linux-rockchip@lists.infradead.org; Thu, 14 Jul 2022 17:57:39 +0000
Received: by mail-ed1-x534.google.com with SMTP id r6so3409031edd.7
        for <linux-rockchip@lists.infradead.org>; Thu, 14 Jul 2022 10:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=Kp+K99xgr+TGedF33oXgcsqqibvo1diAm10fyZoaWhY=;
        b=hdkgVpkjvjjgdfQm2tqhoEOO5im6XnIjZWfnOPJppBazhDNPUg2Fpup31PjaFGb/Tt
         iB0GxO1las2zJbo6VCXWEowtUkRHBSjcW8DqsEQR/9rxdZJcbrAOGc9DCrvKSnAJJHTH
         1xnuftVbWyHq6yW90MXjkHGaEy1CJUVIcD681d2im3FVq2+XEuzVl5nPckHDWpx862Gf
         guV3K+vwpOCRsvBgtFLf/x2reOrkcLyHnGmADs2rqZ+o5WNMAGKgO+nE03IfqKxuach9
         mrwmLS0t8iDwmqbZKRvu6X2GQKgOsXLXKIyfftN5QayrM524YO0IikYK8XE7dzdtMwHb
         4anQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=Kp+K99xgr+TGedF33oXgcsqqibvo1diAm10fyZoaWhY=;
        b=B5gaiDEN5M6vPFWsJ9WTqPhW/YgSEnPo1qUcTZUbyWJJzEUrWf+xgqkGdFXmYvUTYI
         pnszP/7QSyvMKX+R57MHe9P1bUXOKVDPd4dKQT/CLV+iOjaElmusEwcGgijFSNtz8PSa
         6jJ2/vBdRPHf6FlsEeaeW8AZsoS8pBhemM9i5BkZUSDrCZbKmZclGK5vZLuG5o6+xmV3
         OiXhYhiB5ap4YNRNsD3prdA3HpqlAt0+pcLGvhahWkT3e9kt+kdbiSpFysnJV22qYV/+
         omZ2AGItLBfVgEMlctGmhC77z7Goctyp1ZPEJALYc5ysg97bP5C+IDhiukL+zI8neLq7
         /0AQ==
X-Gm-Message-State: AJIora8npcQKBkUZzVAbXPYEGiXRobWDg0R3/PDJxnbDMV4sOP3b+8jO
	Qp0XtUmxvZOHODuxmbapEr7RbQ==
X-Google-Smtp-Source: AGRyM1u/Qfgd+1kjEfG5MeEMA+kZ7cC2XlCJVQd2C5XHMQgdYlzBUtVpALKtNw1mjM2dynllJ7uM8w==
X-Received: by 2002:a05:6402:3297:b0:43a:9233:23b4 with SMTP id f23-20020a056402329700b0043a923323b4mr13834408eda.397.1657821453341;
        Thu, 14 Jul 2022 10:57:33 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id t21-20020aa7d4d5000000b0043a5bcf80a2sm1451885edr.60.2022.07.14.10.57.32
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 Jul 2022 10:57:32 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: Re: [PATCH v2] arm64: dts: rockchip: Fix SD card init on
 rk3399-nanopi4
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
In-Reply-To: <5ca9bd94-54d9-04f8-0098-a56ffb6f5fe1@arm.com>
Date: Thu, 14 Jul 2022 19:57:31 +0200
Cc: Markus Reichl <m.reichl@fivetechno.de>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>
Message-Id: <3DC86B72-41E7-47C2-8401-D511B8818972@kohlschutter.com>
References: <C639AD88-77A1-4485-BAEA-2FF8FC15A844@kohlschutter.com>
 <12878108.O9o76ZdvQC@diego> <103b714c-b07c-f016-1062-84bd94786b22@arm.com>
 <9AF1E75F-5947-49B0-887D-82C426527B99@kohlschutter.com>
 <590f7a08-a6ca-be54-4254-363343642a52@arm.com>
 <A6B896E5-CD25-4441-B6A5-0BE1FA284B2C@kohlschutter.com>
 <A9634366-A012-43D2-B253-8BB9BF6005C7@kohlschutter.com>
 <CAGb2v65Ehbu1wrib2CzF1fDZuD3fHZQDhKfVusyUF9KnxTvi+Q@mail.gmail.com>
 <5ca9bd94-54d9-04f8-0098-a56ffb6f5fe1@arm.com>
To: Robin Murphy <robin.murphy@arm.com>,
 wens@kernel.org
X-Mailer: Apple Mail (2.3696.100.31)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_105737_214361_07653D4B 
X-CRM114-Status: GOOD (  29.87  )
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

QW0gMTQuMDcuMjAyMiB1bSAxOTozNSBzY2hyaWViIFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5
QGFybS5jb20+Ogo+IAo+IE9uIDE0LzA3LzIwMjIgNjowMiBwbSwgQ2hlbi1ZdSBUc2FpIHdyb3Rl
Ogo+PiBPbiBGcmksIEp1bCAxNSwgMjAyMiBhdCAxMjoyNyBBTSBDaHJpc3RpYW4gS29obHNjaMO8
dHRlcgo+PiA8Y2hyaXN0aWFuQGtvaGxzY2h1dHRlci5jb20+IHdyb3RlOgo+Pj4gCj4+PiBtbWMv
U0QtY2FyZCBpbml0aWFsaXphdGlvbiBtYXkgZmFpbCBvbiBOYW5vUGkgcjRzIHdpdGgKPj4+ICJt
bWMxOiBwcm9ibGVtIHJlYWRpbmcgU0QgU3RhdHVzIHJlZ2lzdGVyIiAvCj4+PiAibW1jMTogZXJy
b3IgLTExMCB3aGlsc3QgaW5pdGlhbGlzaW5nIFNEIGNhcmQiCj4+PiAKPj4+IE1vcmVvdmVyLCBy
ZWJvb3Rpbmcgd291bGQgYWxzbyBzb21ldGltZXMgaGFuZy4KPj4+IAo+Pj4gVGhpcyBpcyBjYXVz
ZWQgYnkgdGhlIGdwaW8gZW50cnkgZm9yIHRoZSB2Y2MzdjAtc2QgcmVndWxhdG9yOwo+Pj4gZXZl
biB0aG91Z2ggaXQgYXBwZWFycyB0byBiZSB0aGUgY29ycmVjdCBHUElPIHBpbiwgdGhlIHByZXNl
bmNlCj4+PiBvZiB0aGUgYmluZGluZyBjYXVzZXMgdGhlc2UgZXJyb3JzLgo+Pj4gCj4+PiBGaXgg
dGhlIHJlZ3VsYXRvciB0byBkcm9wIHRoZSBncGlvIGJpbmRpbmcgYW5kIGFkZCBhIGNvbW1lbnQK
Pj4+IHRvIHByZXZlbnQgYWNjaWRlbnRhbCByZWludHJvZHVjdGlvbiBvZiB0aGF0IGVudHJ5Lgo+
Pj4gCj4+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS29obHNjaMO8dHRlciA8Y2hyaXN0aWFu
QGtvaGxzY2h1dHRlci5jb20+Cj4+PiAtLS0KPj4+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzM5OS1uYW5vcGk0LmR0c2kgfCAyICstCj4+PiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4+PiAKPj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1uYW5vcGk0LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzM5OS1uYW5vcGk0LmR0c2kKPj4+IGluZGV4IDhjMGZmNmM5NmUwMy4u
ZDVmOGE2MmUwMWJlIDEwMDY0NAo+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzOTktbmFub3BpNC5kdHNpCj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzM5OS1uYW5vcGk0LmR0c2kKPj4+IEBAIC02Nyw3ICs2Nyw3IEBAIHZjYzF2OF9zMzog
dmNjMXY4LXMzIHsKPj4+ICAgICAgICAgdmNjM3YwX3NkOiB2Y2MzdjAtc2Qgewo+Pj4gICAgICAg
ICAgICAgICAgIGNvbXBhdGlibGUgPSAicmVndWxhdG9yLWZpeGVkIjsKPj4+ICAgICAgICAgICAg
ICAgICBlbmFibGUtYWN0aXZlLWhpZ2g7Cj4+PiAtICAgICAgICAgICAgICAgZ3BpbyA9IDwmZ3Bp
bzAgUktfUEExIEdQSU9fQUNUSVZFX0hJR0g+Owo+Pj4gKyAgICAgICAgICAgICAgIC8vIGdwaW8g
PSA8JmdwaW8wIFJLX1BBMSBHUElPX0FDVElWRV9ISUdIPjsgLy8gYnJlYWtzIFNESEMgY2FyZCBz
dXBwb3J0Cj4+IFRoaXMgY2hhbmdlIG9ubHkgbWVhbnMgdGhhdCB0aGUgcmVndWxhdG9yIG5vIGxv
bmdlciBnZXRzIGN5Y2xlZCB3aGVuCj4+IGl0IHByb2Jlcy4gSXQncyBub3QgYSBwcm9wZXIgZml4
LiBZb3UncmUgbGVhdmluZyB0aGUga2VybmVsIHdpdGhvdXQKPj4gYW55IGNvbnRyb2wgb3ZlciBT
RCBjYXJkIHBvd2VyLCBhbmQgd2l0aCB3aGF0ZXZlciBzdGF0ZSB0aGUgYm9vdGxvYWRlcgo+PiBs
ZWZ0IHRoZSBHUElPIGluLiBJZiB0aGUgYm9vdGxvYWRlciBsZWZ0IHRoZSBHUElPIGxvdywgdGhl
biB5b3UgZG9uJ3QKPj4gZ2V0IHRvIHVzZSB0aGUgU0QgY2FyZCwgZXZlci4KClRoaXMgaXMgdGhl
IGN1cnJlbnQgc2l0dWF0aW9uIGluIHRoZSBtYWlubGluZSBrZXJuZWwgKHJlZ3VsYXRvci1hbHdh
eXMtb24gaXMgdGhlcmUgYW5kIHVuY2hhbmdlZCksIGJ1dCB5ZXMsIHlvdSBhcmUgY29ycmVjdCB0
aGF0J3MgYSBidWcuCgpTZWUgYmVsb3cgZm9yIG15IHJlc3VsdHMgd2l0aCB5b3VyIHByb3Bvc2Vk
IGNoYW5nZXMuCgo+PiBJdCBjeWNsZXMgYmVjYXVzZSBvZiB0aGUgbGFjayBvZiByZWd1bGF0b3It
Ym9vdC1vbiwgc28gdGhlIGRyaXZlcgo+PiByZXF1ZXN0cyB0aGUgR1BJTyB3aXRoIGluaXRpYWwg
bG93IHN0YXRlLCBhbmQgdGhlbiBkcml2ZXMgaXQKPj4gaGlnaCB0byBlbmFibGUgdGhlIHJlZ3Vs
YXRvci4KPiAKPiBIbW0sIHRoYXQncyBhIGdvb2QgcG9pbnQgLSBieSB0aGUgdGltZSB3ZSBnZXQg
dG8gTGludXgsIHdlIHNob3VsZCBoYXZlIGNvbnRyb2wgb3ZlciB0aGUgVkNDX1NESU8gcmVndWxh
dG9yIGFuZCB0aGUgSS9PIGRvbWFpbiBhcyB3ZWxsLCBzbyBhIGZ1bGwgY2xlYW4gcmVzZXQgc2hv
dWxkIHJlYWxseSBiZSBubyBwcm9ibGVtIDovCj4gCj4gVGhlICJUaW5rZXJib2FyZCBwcm9ibGVt
IiBJIHdhcyB0aGlua2luZyBvZiBpcyB3aGVuIHRoZSBTRCBjYXJkIGlzIHRoZSBib290IG1lZGl1
bSwgVkNDX1NESU8gc3RheXMgYXQgMS44ViBvdmVyIGEgcmVib290IGJ1dCB0aGUgSS9PIGRvbWFp
biBnZXRzIHJlc2V0IGJhY2sgdG8gMy4zViBtb2RlLCB0aHVzIGNhbm5vdCBzZWUgYSBsb2dpYyBo
aWdoIG9uIGFueSBvZiB0aGUgSS9PIGxpbmVzLCB0aHVzIHRoZSBib290IFJPTSBnaXZlcyB1cCBh
ZnRlciBmYWlsaW5nIHRvIGRldGVjdCB0aGUgY2FyZC4gSWYgd2UncmUgc3RpbGwgYWJsZSB0byBi
b290IGFzIGZhciBhcyBMaW51eCwgaXQncyBwcm9iYWJseSBhIGRpZmZlcmVudCB0aGluZy4gQXBv
bG9naWVzIGZvciB0aGUgY29uZnVzaW9uLgoKSSBiZWxpZXZlIGl0J3MgdGhhdCBwcm9ibGVtIHlv
dSBkZXNjcmliZS4KCkluIG15IGNhc2UsIEkgYm9vdCBvZmYgdGhlIG1tYyBjYXJkIHdpdGggdS1i
b290IG1haW5saW5lIHYyMDIyLjA3LCB3aGljaCBpbnZva2VzIElQWEUgdGhhdCBib290cyB0aGUg
a2VybmVsICg1LjE4LjEwIG1haW5saW5lKSArIHJrMzM5OS1uYW5vcGktcjRzIGR0YiBvdmVyIHRo
ZSBuZXR3b3JrLiAKVGhpcyBsZXRzIG1lIHF1aWNrbHkgdGVzdCBrZXJuZWwgY2hhbmdlcyB3aXRo
b3V0IGp1Z2dsaW5nIHNkLWNhcmRzLgoKPiAKPj4+ICAgICAgICAgICAgICAgICBwaW5jdHJsLW5h
bWVzID0gImRlZmF1bHQiOwo+Pj4gICAgICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmc2RtbWMw
X3B3cl9oPjsKPj4+ICAgICAgICAgICAgICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+PiBJIHRo
aW5rIGRyb3BwaW5nICJyZWd1bGF0b3ItYWx3YXlzLW9uIiBzbyB0aGF0IExpbnV4IGNhbiBjeWNs
ZSBwb3dlcgo+PiBhbmQgcHJvcGVybHkgcmVzZXQgdGhlIFNEIGNhcmQgaXMgdGhlIHByb3BlciBm
aXggdG8gdGhlIGNhcmQgYmVpbmcKPj4gc3R1Y2sgaW4gVUhTIGFuZCBub3QgcmVzcG9uZGluZy4K
Pj4gQWxzbywgdGhlIHJlZ3VsYXRvciB1c2VkIGlzIFJUOTE5MywgYWNjb3JkaW5nIHRvIHRoZSBz
Y2hlbWF0aWNzLiBUaGF0Cj4+IGNoaXAgaGFzIGFuIGVuYWJsZSBkZWxheSB1bmRlciA1MCBtaWNy
by1zZWNvbmRzLiBJZiB0aGF0IG5lZWRzIHRvIGJlCj4+IG1vZGVsZWQsIHRoZW4gYWRkIHJlZ3Vs
YXRvci1lbmFibGUtcmFtcC1kZWxheS4KPiAKPiBJbmRlZWQsIGlmIGl0J3MgYSBzbG93IHJlZ3Vs
YXRvciBhbmQgd2UncmUgc2ltcGx5IHRyeWluZyB0byBwcm9iZSB0aGUgY2FyZCB0b28gc29vbiBi
ZWZvcmUgaXRzIHN1cHBseSB2b2x0YWdlIGhhcyBhY3R1YWxseSBzdGFiaWxpc2VkLCB0aGF0IHNv
dW5kcyBlbnRpcmVseSBwbGF1c2libGUsIHBhcnRpY3VsYXJseSBpZiB0aGUgZmFpbHVyZSBpcyBv
bmx5IGludGVybWl0dGVudC4KCldpdGgKPiBncGlvID0gPCZncGlvMCBSS19QQTEgR1BJT19BQ1RJ
VkVfSElHSD47Cj4gLy8gcmVndWxhdG9yLWFsd2F5cy1vbjsKPiByZWd1bGF0b3ItZW5hYmxlLXJh
bXAtZGVsYXkgPSA8NTA+OwpJJ20gc3RpbGwgbm90IGdldHRpbmcgdGhlIHJlc2V0IGdvaW5nLiBJ
dCBsb29rcyB0aGUgTU1DIGdldHMgZGV0ZWN0ZWQgcmVsaWFibHkgdXBvbiBjb2xkIHN0YXJ0LCBi
dXQgSSBjYW5ub3QgdGVzdCByZWJvb3Qvd2FybSBzdGFydC4KCkl0IGxvb2tzIGxpa2UgdGhlcmUn
cyBvbmUgaXNzdWUgdXBvbiBzdGFydCAod2hpY2ggTUFZIGJlIGZpeGVkIGJ5IHRoZXNlIGNoYW5n
ZXMpLCBidXQgdGhlcmUncyBhbm90aGVyIGlzc3VlIHVwb24gcmVzdGFydCAoInN1c3BlbmQiIGlu
IGRldmljZSB0cmVlIGxpbmdvPykuCkkgdHJpZWQgYm90aAoKPiByZWd1bGF0b3Itc3RhdGUtbWVt
IHsKPiAgICAgICAgIHJlZ3VsYXRvci1vZmYtaW4tc3VzcGVuZDsKPiB9OyAgICAKYW5kCj4gcmVn
dWxhdG9yLXN0YXRlLW1lbSB7Cj4gICAgICAgICByZWd1bGF0b3Itb24taW4tc3VzcGVuZDsKPiB9
Owp0byBubyBhdmFpbCAobm8gZGlmZmVyZW5jZTsgcmVib290IHN0aWxsIGhhbmdzKS4KCldoYXQg
YXJlIHdlIG1pc3Npbmc/CgpCZXN0LApDaHJpc3RpYW4KCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
