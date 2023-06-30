Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FE03EB64D7
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Jun 2023 11:35:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bd/Hh4Dl2fiHgcl1JVNhRWZy9HsOWkmGqrQkAb++uO4=; b=HxRVYtL7H3Deyl
	YzJvLjb8s0yraI+taIwJbbS3D06xwA/I65HgXPVlKw9KbRQHGr5w4erGeFpGYYTpqTOO9i4PYPHiT
	6GJBweIvZHLa2y1Fl92X4hm24rc5DJkbdp3g9fZ5HBHDbpBA8ie6EYJweLprUyPPUiIjVS7iX54rr
	0P9OJ5QY4McnxBuRmpAkx5u8eXR644K2paVeP6aCTVgWiyaYScDyutpdPZrnQ/8/G4U1UqJBqr3j2
	zFDaAjKVSBFDZRSQjvezzt13ECZnmU3YXk2gnGmQFCtYCPlx1cEg3d9gjKskwXTyON0Ewi1WKY+06
	ff+w2XCGtYA+0fecR2eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qFCP3-003bJh-0W;
	Fri, 30 Jun 2023 11:35:05 +0000
Received: from mail-yb1-f169.google.com ([209.85.219.169])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qFCOz-003bIq-1D
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Jun 2023 11:35:03 +0000
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-bd77424c886so1725259276.0
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Jun 2023 04:34:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688124898; x=1690716898;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O0jKDszbwIvx4kQhb6inc5XRGib++KkoEFXZhbmslHA=;
        b=SyVNjqC4JUeXC06zmq2L8T8QHbzs5oyXQvRMpWugkA1nmiSrEx8LNxf75vw4RYeOG8
         3gqfpJC9ifkVxqSqbJR/13fMv93114FZ8sFmIHL46cyanxDZx1WaYnCprxdr7ei+HiqF
         CveCNmjWWHB2YZyibt6ttgMkVkLmUn8vsViezKn2PCsBP6NZx693kc3ZXkgSmSSFSOBt
         lrB1bqDy1WTrFDrrlf9OSwBfRaYtxYDpDrhkG00U0KdDJXHIMkuhnCV6d9Wpk3UHAMyo
         inUKm/+BjTwk79V+HJ6m+Tp5dnIt7UfDApIiYGoxDVzFObKQgsylMCs36VyLLRm64FhM
         Jfpg==
X-Gm-Message-State: ABy/qLYH8DtDdjZyoZX1lAqW4e/a96LFBPuj+dcC5x0vlO35TPrR0PWp
	Kyf8ZimsyyMNgOpCWt3S+SEftZZ/CTK+3uD4
X-Google-Smtp-Source: APBJJlFZ4aMTVgxheAqUUWXe5Lg7zh0TH3V5UQUIh+Nc7X6bl+0icJUaPeuzhRU4SQ7PmoRByiJjzA==
X-Received: by 2002:a5b:442:0:b0:bab:8b8a:36e3 with SMTP id s2-20020a5b0442000000b00bab8b8a36e3mr2281732ybp.57.1688124898024;
        Fri, 30 Jun 2023 04:34:58 -0700 (PDT)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com. [209.85.219.172])
        by smtp.gmail.com with ESMTPSA id e127-20020a25e785000000b00bb21aeddeffsm2949403ybh.18.2023.06.30.04.34.57
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jun 2023 04:34:57 -0700 (PDT)
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-bd729434fa0so1719749276.1
        for <linux-rockchip@lists.infradead.org>; Fri, 30 Jun 2023 04:34:57 -0700 (PDT)
X-Received: by 2002:a25:34a:0:b0:bac:69be:9494 with SMTP id
 71-20020a25034a000000b00bac69be9494mr2301273ybd.36.1688124897049; Fri, 30 Jun
 2023 04:34:57 -0700 (PDT)
MIME-Version: 1.0
References: <20230504173618.142075-1-sebastian.reichel@collabora.com> <20230504173618.142075-6-sebastian.reichel@collabora.com>
In-Reply-To: <20230504173618.142075-6-sebastian.reichel@collabora.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 30 Jun 2023 13:34:44 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWRoNXrkD8ty4pUpFA-qQCMVF3wzXTCHFW4jYSy+dXivg@mail.gmail.com>
Message-ID: <CAMuHMdWRoNXrkD8ty4pUpFA-qQCMVF3wzXTCHFW4jYSy+dXivg@mail.gmail.com>
Subject: Re: [PATCH v8 05/14] mfd: rk808: split into core and i2c
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Lee Jones <lee@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Mark Brown <broonie@kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	Alessandro Zummo <a.zummo@towertech.it>, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kernel@collabora.com, Diederik de Haas <didi.debian@cknow.org>, 
	Vincent Legoll <vincent.legoll@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230630_043501_418951_F0348B81 
X-CRM114-Status: GOOD (  21.44  )
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

SGkgU2ViYXN0aWFuLAoKT24gVGh1LCBNYXkgNCwgMjAyMyBhdCA3OjM44oCvUE0gU2ViYXN0aWFu
IFJlaWNoZWwKPHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+IFNwbGl0
IHJrODA4IGludG8gYSBjb3JlIGFuZCBhbiBpMmMgcGFydCBpbiBwcmVwYXJhdGlvbiBmb3IKPiBT
UEkgc3VwcG9ydC4KPgo+IEFja2VkLWZvci1NRkQtYnk6IExlZSBKb25lcyA8bGVlQGtlcm5lbC5v
cmc+Cj4gQWNrZWQtYnk6IEFsZXhhbmRyZSBCZWxsb25pIDxhbGV4YW5kcmUuYmVsbG9uaUBib290
bGluLmNvbT4gIyBmb3IgUlRDCj4gVGVzdGVkLWJ5OiBEaWVkZXJpayBkZSBIYWFzIDxkaWRpLmRl
YmlhbkBja25vdy5vcmc+ICMgUm9jazY0LCBRdWFydHo2NCBNb2RlbCBBICsgQgo+IFRlc3RlZC1i
eTogVmluY2VudCBMZWdvbGwgPHZpbmNlbnQubGVnb2xsQGdtYWlsLmNvbT4gIyBQaW5lNjQgUXVh
cnR6UHJvNjQKPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJl
aWNoZWxAY29sbGFib3JhLmNvbT4KClRoYW5rcyBmb3IgeW91ciBwYXRjaCwgd2hpY2ggaXMgbm93
IGNvbW1pdCBjMjBlOGM1YjEyMDNhZjM3ICgibWZkOgpyazgwODogU3BsaXQgaW50byBjb3JlIGFu
ZCBpMmMiKSBpbiBsaW51cy9tYXN0ZXIgc3RhYmxlL21hc3RlcgoKPiAtLS0gYS9kcml2ZXJzL21m
ZC9LY29uZmlnCj4gKysrIGIvZHJpdmVycy9tZmQvS2NvbmZpZwo+IEBAIC0xMTgzLDEyICsxMTgz
LDE3IEBAIGNvbmZpZyBNRkRfUkM1VDU4Mwo+ICAgICAgICAgICBBZGRpdGlvbmFsIGRyaXZlcnMg
bXVzdCBiZSBlbmFibGVkIGluIG9yZGVyIHRvIHVzZSB0aGUKPiAgICAgICAgICAgZGlmZmVyZW50
IGZ1bmN0aW9uYWxpdHkgb2YgdGhlIGRldmljZS4KPgo+IC1jb25maWcgTUZEX1JLODA4Cj4gK2Nv
bmZpZyBNRkRfUks4WFgKPiArICAgICAgIGJvb2wKCklzIHRoZXJlIGFueSBzcGVjaWZpYyByZWFz
b24gd2h5IHRoaXMgY2Fubm90IGJlIG1vZHVsYXIsIGxpa2UgbW9zdCAoYWxsPykKb2YgaXRzIHVz
ZXJzIHRoYXQgc2VsZWN0IGl0PwoKPiArICAgICAgIHNlbGVjdCBNRkRfQ09SRQo+ICsKPiArY29u
ZmlnIE1GRF9SSzhYWF9JMkMKPiAgICAgICAgIHRyaXN0YXRlICJSb2NrY2hpcCBSSzgwNS9SSzgw
OC9SSzgwOS9SSzgxNy9SSzgxOCBQb3dlciBNYW5hZ2VtZW50IENoaXAiCj4gICAgICAgICBkZXBl
bmRzIG9uIEkyQyAmJiBPRgo+ICAgICAgICAgc2VsZWN0IE1GRF9DT1JFCj4gICAgICAgICBzZWxl
Y3QgUkVHTUFQX0kyQwo+ICAgICAgICAgc2VsZWN0IFJFR01BUF9JUlEKPiArICAgICAgIHNlbGVj
dCBNRkRfUks4WFgKPiAgICAgICAgIGhlbHAKPiAgICAgICAgICAgSWYgeW91IHNheSB5ZXMgaGVy
ZSB5b3UgZ2V0IHN1cHBvcnQgZm9yIHRoZSBSSzgwNSwgUks4MDgsIFJLODA5LAo+ICAgICAgICAg
ICBSSzgxNyBhbmQgUks4MTggUG93ZXIgTWFuYWdlbWVudCBjaGlwcy4KCkdye29ldGplLGVldGlu
Z31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tCkdlZXJ0IFV5dHRlcmhvZXZl
biAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4
ay5vcmcKCkluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJ
IGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0
cyBJIGp1c3Qgc2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
