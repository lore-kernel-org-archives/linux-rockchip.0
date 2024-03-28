Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8088CC54E67
	for <linux-rockchip@archiver.kernel.org>; Thu, 28 Mar 2024 05:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5XcMiF9irNNeg5lL34QiT/5CN8E2r89/ZBVTpyIBLbA=; b=sxFF/OrX0kDdpA
	UqD1pCb4y15Ou6UfolLfuX/pIEaevV/RYW5SjmSCZuF9fCNLGnSPo3NUbG0h314vRjYCNfcjAsgWc
	OKJxnxiLmJ/OrpwplH1FyA6v6tvKFHT41uacNJoBM7HLSp1XVc0Vp8XkB8aKHhbQzz5/Grk/0IN6M
	dTdM/hpqOHdOytMXCKHuc1J//8sk08U0VWOtF7IS065360a+S76Zc2YVzMzNTfhHWfDlTFMIa4j7g
	7EFRyj3thzpQ0zoyNf8UFDztoJEE+1dD54A1HPAC9BO7chwnxq/3twetp+b0FXn2Em6ls+alJhCwa
	2NnCxlSDBeB1xshAk8MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpiU9-0000000CaNO-3oeC;
	Thu, 28 Mar 2024 05:39:33 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rpiTw-0000000CaJa-0H1m;
	Thu, 28 Mar 2024 05:39:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 8AB69CE2948;
	Thu, 28 Mar 2024 05:39:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EA83C433A6;
	Thu, 28 Mar 2024 05:39:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711604356;
	bh=1TbVjwG6FjPG/Z+RHTuE5W+27StHygVuGEX2BEaRZIQ=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=AR4OYyazeXF+nobr/ZHjH1xHqId0IihH3wDnZu58NmTUN8qUbZnULVfxduNtn4RNj
	 A+QXAVhj/cxydxEEOjGVMngiqE5wUxh4YSnl+qj226koCR9aiVKhc+VLYBTLPk/GXw
	 KnUt0bG/hba5VuK9cMKjdjmHpQxlwCmzYmS80xv34YeNcyhEjSabxXsJcT6f5gQV7d
	 BoG9LB1TAYMZlQcFmUqPbgT6tTBPcxLFcYvTkLaAHV9/ftuCxQMTesUWOvksfqFJBp
	 ce/J8F6NlhI4h4pXNGDWZ3NCCsTp6bSwJyOI6i+avQsPeBEgrmEGR0lwPHQRrEHsls
	 3Zk6jxRbtYXVw==
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2d6c9678cbdso6300891fa.2;
        Wed, 27 Mar 2024 22:39:16 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWxIxeJLMN+p+JlCR9Lp4V1XwGWSIJbAcHzEHgo4MJouTNaajarv5fny5K12x2mUMz6lu5I4DGkN2N0tiWQUsjmuT/gr8xERjMD4naiCiQ08pvA4zD7LrPCUy4n99Zu+6CWXf+s4EuCX3R/jGIH7USTiykeyqiqb7w=
X-Gm-Message-State: AOJu0YyAkWe3MNftOmcdx5rkWSLY43q8avoFzXE4ywY9x6KS7V1JAoxp
	iwbHOsrTSDGqv5O7Jsb9hDFxPWz1OwZl24N0Dzex53OsoBDqlPgHcubw3etm4I2FsTT/c0NaoFx
	PLE4sEh7Xw668WSm9Y0RT9zyBMrM=
X-Google-Smtp-Source: AGHT+IHNSdF8hndCSvCQ2ourQ5vvSJzuTkZn1875zvnJtAV/TEo1f+17uBEMHEz4TNCvw6DWTrnRTDW1SKXSjV/JKIY=
X-Received: by 2002:a2e:9d96:0:b0:2d4:7a3:67a7 with SMTP id
 c22-20020a2e9d96000000b002d407a367a7mr1272069ljj.22.1711604354573; Wed, 27
 Mar 2024 22:39:14 -0700 (PDT)
MIME-Version: 1.0
References: <20240327192641.14220-1-dev@folker-schwesinger.de> <20240327192641.14220-2-dev@folker-schwesinger.de>
In-Reply-To: <20240327192641.14220-2-dev@folker-schwesinger.de>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 28 Mar 2024 13:39:02 +0800
X-Gmail-Original-Message-ID: <CAGb2v64cF2fuW7vKq_=AhY+ciAp8t=fxT23AFJWB1qOv1xWuNw@mail.gmail.com>
Message-ID: <CAGb2v64cF2fuW7vKq_=AhY+ciAp8t=fxT23AFJWB1qOv1xWuNw@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Add enable-strobe-pulldown to
 emmc phy on ROCK Pi 4
To: Folker Schwesinger <dev@folker-schwesinger.de>
Cc: Vinod Koul <vkoul@kernel.org>, Yogesh Hegde <yogi.kernel@gmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, Chris Ruehl <chris.ruehl@gtsys.com.hk>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>, 
	Christopher Obbard <chris.obbard@collabora.com>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240327_223922_156977_2266B0BA 
X-CRM114-Status: GOOD (  19.13  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBNYXIgMjgsIDIwMjQgYXQgNDozM+KAr0FNIEZvbGtlciBTY2h3ZXNpbmdlcgo8ZGV2
QGZvbGtlci1zY2h3ZXNpbmdlci5kZT4gd3JvdGU6Cj4KPiBDb21taXQgOGI1YzJiNDViOGYwIGRp
c2FibGVkIHRoZSBpbnRlcm5hbCBwdWxsLWRvd24gZm9yIHRoZSBzdHJvYmUgbGluZQo+IGNhdXNp
bmcgSS9PIGVycm9ycyBpbiBIUzQwMCBtb2RlIGZvciB2YXJpb3VzIGVNTUMgbW9kdWxlcy4KPgo+
IEVuYWJsZSB0aGUgaW50ZXJuYWwgc3Ryb2JlIHB1bGwtZG93biBmb3IgUk9DSyBQaSA0IGJvYXJk
cy4gQWxzbyByZS1lbmFibGUKPiBIUzQwMCBtb2RlLCB0aGF0IHdhcyByZXBsYWNlZCB3aXRoIEhT
MjAwIG1vZGUgYXMgYSB3b3JrYXJvdW5kIGZvciB0aGUKPiBzdGFiaWxpdHkgaXNzdWVzIGluOgo+
IGNlZTU3Mjc1NmFhMiAoImFybTY0OiBkdHM6IHJvY2tjaGlwOiBEaXNhYmxlIEhTNDAwIGZvciBl
TU1DIG9uIFJPQ0sgUGkgNCIpLgo+Cj4gVGhpcyB3YXMgdGVzdGVkIG9uIFJPQ0sgNFNFIGFuZCBS
T0NLIFBpIDRCKy4KPgo+IEZpeGVzOiA4YjVjMmI0NWI4ZjAgKCJwaHk6IHJvY2tjaGlwOiBzZXQg
cHVsbGRvd24gZm9yIHN0cm9iZSBsaW5lIGluIGR0cyIpCj4gU2lnbmVkLW9mZi1ieTogRm9sa2Vy
IFNjaHdlc2luZ2VyIDxkZXZAZm9sa2VyLXNjaHdlc2luZ2VyLmRlPgo+IC0tLQo+ICBhcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrLXBpLTQuZHRzaSB8IDQgKysrLQo+ICAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jay1waS00LmR0c2kg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrLXBpLTQuZHRzaQo+IGlu
ZGV4IDI4MWExMjE4MDcwMy4uYjlkNjI4NGJiODA0IDEwMDY0NAo+IC0tLSBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2stcGktNC5kdHNpCj4gKysrIGIvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9jay1waS00LmR0c2kKPiBAQCAtMTk0LDYgKzE5
NCw3IEBAICZjcHVfYjEgewo+ICB9Owo+Cj4gICZlbW1jX3BoeSB7Cj4gKyAgICAgICByb2NrY2hp
cCxlbmFibGUtc3Ryb2JlLXB1bGxkb3duOwo+ICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ICB9
Owo+Cj4gQEAgLTY0OCw3ICs2NDksOCBAQCAmc2FyYWRjIHsKPiAgJnNkaGNpIHsKPiAgICAgICAg
IG1heC1mcmVxdWVuY3kgPSA8MTUwMDAwMDAwPjsKPiAgICAgICAgIGJ1cy13aWR0aCA9IDw4PjsK
PiAtICAgICAgIG1tYy1oczIwMC0xXzh2OwoKU2hvdWxkbid0IHRoaXMgYmUga2VwdCBhcm91bmQ/
IFRoZSBub2RlIHNob3VsZCBsaXN0IGFsbCBzdXBwb3J0ZWQgbW9kZXMsCm5vdCBqdXN0IHRoZSBo
aWdoZXN0IG9uZS4gU2FtZSBmb3IgdGhlIG90aGVyIHBhdGNoLgoKQ2hlbll1Cgo+ICsgICAgICAg
bW1jLWhzNDAwLTFfOHY7Cj4gKyAgICAgICBtbWMtaHM0MDAtZW5oYW5jZWQtc3Ryb2JlOwo+ICAg
ICAgICAgbm9uLXJlbW92YWJsZTsKPiAgICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPiAgfTsKPiAt
LQo+IDIuNDQuMAo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IGxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5l
bEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
