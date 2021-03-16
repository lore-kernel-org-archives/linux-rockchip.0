Return-Path: <SRS0=XIeQ=IO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5713BC433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Mar 2021 16:39:12 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 03A27650D9
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Mar 2021 16:39:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 03A27650D9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lBcCY6xc4UoHr58ZxyvHU5xs4nwHImiI5QNBG6Kp0Is=; b=VWYtHSah7Huey8emlcQ0tuNTI
	lu7W2oqN5472t+yngD27VXNQhhyZyoGbdNlrHTuvWHDrNAhBYID5CGtc0Qu3xwVAEfFgIaze4Xtje
	bUbC1WNb7FUkgc4TPRpx6XxFFZuYz4sBcEqz1+lq+9KUVyw49kMDbxxRTkE8BRIvlPbRogB59twlN
	z8qRcPzsN4MWFUPsV1iuLyUGz0ZFjNBUqDTLUn2bF1lkqY+UrotKPKIqLrrE4lijLTYMGA++pm1dy
	skosCqCaV+FlShZBB6EjiczsUYc67bNdMw6G5nO549k//K+N2UemKmFRhZ2DfEtiJ0ZIl4pLSfDFy
	QVw4E+uqQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lMCip-001FwJ-FI; Tue, 16 Mar 2021 16:39:07 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lMCie-001Fuo-Hz; Tue, 16 Mar 2021 16:38:58 +0000
Received: by mail-lf1-x12e.google.com with SMTP id t18so15676439lfl.3;
 Tue, 16 Mar 2021 09:38:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=HavWasjxV9NQ1oI4iDdWCtYqPVYFm4z7qKSkYjITAbU=;
 b=I6yNUVH/2EruY7ZLi2CzCRDe4KA1Ei1x7yCHvFlZImPsmyOwJSzqSUMvidbSIQHZ5C
 R+vzT0NWXTG7wmaER0xMugBaTZzSMpnFsd/X4Vyp0wr9vPXsURfLOQZrufspTFVK483M
 NJ7AYjafaVs3bAotWjP97ntjTWKKRAzoZSF2V/GU6qOqcgewa+fuXuwoTxgLH84XJhvp
 PAdDAtN8dNRUlIcOopu15y0FewGtcCaZjlOjarmAHxrQGJSdK2dir57pHVhI1wWXZ7st
 VNuoAhRuXNdVJDCSXYjoAr1SOvxZyQzcjVDwk1fffR5ZR4Tx+EJkLWyOm69m4rmLAlAt
 +cPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=HavWasjxV9NQ1oI4iDdWCtYqPVYFm4z7qKSkYjITAbU=;
 b=klSDfBVQ6HvLv9eHCCJCNbQuqM5dr6jRzmBCzfJab0qGYPw/ZnNM5WeSsz6LUfkZXk
 45m+ZQc09seyre/J61Lcb8XSoLm2EyJLlT9WTZ0eVFA154mpd7GpOoJWAYMFFa332WZw
 d4ShnIswP0ZeZXQcw8J88IfFalwAvQUFjlecCW9KMwIktiUVJOL9ql7pfJxS9vhQceLm
 KPI6W/JkazH3Ymqk4HG6QqmHBmFI/jYMyGx3cELtBKZGQBJmPBZ3kF8RuQnkINWC2o0y
 mTMaQ0PqyxW6KjSHHN6X6DzIxjSzxB2Xrnwe+aEqqozgt+miEiuPEcAELJHArah1HckM
 zA8Q==
X-Gm-Message-State: AOAM5326Mrhgp0ZMJ652VDSeRpG0RXSZsf6y4J3Uo0kotqtJTuJE8EQV
 LoETa5830ah5ndEs6A3FTN+y2PnLkclUTbgkXWw=
X-Google-Smtp-Source: ABdhPJw4u+xt7+sbHoua05Z3aaUK0a22EuFY82JHHu0pg1Wc73HeDFvQhMj7MCdPu36LP//hg7Uby0M6MugcoHoFxFY=
X-Received: by 2002:a05:6512:ad3:: with SMTP id
 n19mr11974682lfu.328.1615912735697; 
 Tue, 16 Mar 2021 09:38:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAMuHMdWYrS=YT7F7erM-e6xhDME4judx-T7rdFGi7CpW1_iqkg@mail.gmail.com>
 <20210316150033.15987-1-cnsztl@gmail.com>
 <CAMuHMdU+agaOdf4hQhn5JQDHCbuWm3dETJu01baxfDAY=nikow@mail.gmail.com>
In-Reply-To: <CAMuHMdU+agaOdf4hQhn5JQDHCbuWm3dETJu01baxfDAY=nikow@mail.gmail.com>
From: Tianling Shen <cnsztl@gmail.com>
Date: Wed, 17 Mar 2021 00:38:43 +0800
Message-ID: <CAOP2_TheFHfPZYXm0jYV-a-FOudtqFXmTxDi_pb+_Yt5E_W2YA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] rockchip: rk3399: Add support for FriendlyARM
 NanoPi R4S
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Jagan Teki <jagan@amarulasolutions.com>, Chen-Yu Tsai <wens@csie.org>, 
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <uwe@kleine-koenig.org>, 
 Johan Jonker <jbx6244@gmail.com>, David Bauer <mail@david-bauer.net>, 
 Jensen Huang <jensenhuang@friendlyarm.com>, Marty Jones <mj8263788@gmail.com>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, Pavel Machek <pavel@ucw.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210316_163856_703710_B9843870 
X-CRM114-Status: GOOD (  23.66  )
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

T24gMjAyMS0wMy0xNiAxMTozNSwgR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydEBsaW51eC1tNjhr
Lm9yZz4gd3JvdGXvvJoKPgo+IEhpIFRpYW5saW5nLAo+Cj4gQ0MgSmFjZWssIFBhdmVsCj4KPiBP
biBUdWUsIE1hciAxNiwgMjAyMSBhdCA0OjAwIFBNIFRpYW5saW5nIFNoZW4gPGNuc3p0bEBnbWFp
bC5jb20+IHdyb3RlOgo+ID4gT24gMjAyMS0wMy0xNiAwMjoyMyBHZWVydCBVeXR0ZXJob2V2ZW4g
PGdlZXJ0QGxpbnV4LW02OGsub3JnPiB3cm90ZToKPiA+ID4gUGVyc29uYWxseSwgSSdtIG5vdCBz
byBmb25kIG9mIHRoZSA8Zm9vPi0ldSBub2RlIG5hbWVzLCBhbmQgcHJlZmVyCj4gPiA+IDxmb28+
LTxmdW5jdGlvbj4uICBXaXRoIHRoZSBmb3JtZXIsIGl0J3Mgd2F5IHRvbyBlYXN5IHRvIGhhdmUg
YSBzaWxlbnQKPiA+ID4gb3ZlcnJpZGUgaW4geW91ciAuZHRzKGkpIHN0YWNrLgo+ID4gPiBDZnIu
IGNvbW1pdCA0NWY1ZDVhOWUzNGQzZmU0ICgiYXJtNjQ6IGR0czogcmVuZXNhczogcjhhNzc5OTU6
IGRyYWFrOgo+ID4gPiBGaXggYmFja2xpZ2h0IHJlZ3VsYXRvciBuYW1lIikKPiA+Cj4gPiBIb3cg
YWJvdXQgdXNpbmcgYGxhbi1sZWRgLCBgc3lzLWxlZGAgYW5kIGB3YW4tbGVkYCBoZXJlPwo+Cj4g
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2xlZHMvbGVkcy1ncGlvLnlhbWwgc2F5
cyAibGVkLSV1Igo+IGlzIHRoZSBwcmVmZXJyZWQgZm9ybSwgYnV0IHRoYXQgYW55dGhpbmcgY29u
dGFpbmluZyAibGVkIiBhcyBhIHN1YnN0cmluZwo+IGlzIGFjY2VwdGVkLiAgU28gSSdkIGdvIGZv
ciAibGVkLWxhbiIgZXRjLgo+Cj4gQlRXLCB5b3UgY2FuIHZhbGlkYXRlIHlvdXIgRFRCIGFnYWlu
c3QgdGhlIGxlZHMtZ3BpbyBEVCBiaW5kaW5ncwo+IGJ5IHJ1bm5pbmc6Cj4KPiAgICAgbWFrZSBk
dGJzX2NoZWNrCj4gRFRfU0NIRU1BX0ZJTEVTPURvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9sZWRzL2xlZHMtZ3Bpby55YW1sCj4KClRoYW5rIHlvdSBzbyBtdWNoIQpJIHJlbmFtZWQg
dGhlbSB0byBgbGVkLWxhbmAgZXRjLiwgYW5kIHRoZSByZXN1bHQgb2YgZHRic19jaGVjayBzZWVt
cyBmaW5lLgoKPiBCYWNrZ3JvdW5kIGluZm8gZm9yIENDZWQgcGFydGllczoKPiBodHRwczovL2xv
cmUua2VybmVsLm9yZy9saW51eC1hcm0ta2VybmVsLzIwMjEwMzE2MTUwMDMzLjE1OTg3LTEtY25z
enRsQGdtYWlsLmNvbS8KPgo+IEdye29ldGplLGVldGluZ31zLAo+Cj4gICAgICAgICAgICAgICAg
ICAgICAgICAgR2VlcnQKPgo+IC0tCj4gR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90
cyBvZiBMaW51eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwo+Cj4gSW4gcGVy
c29uYWwgY29udmVyc2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYg
YSBoYWNrZXIuIEJ1dAo+IHdoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNh
eSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KPiAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgpUaWFubGluZy4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
