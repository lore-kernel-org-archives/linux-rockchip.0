Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B535C32772
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 14:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nbAzs8TVZCzHcSlFg6dL5mkiR/CvAqC6vJziIbLNYZM=; b=xJX9QPRcFpLpko
	+mNSzhggXrKbIh8DuzZ+sdrDcBIumT1RMqaUEepKX6wQP8dBLh1M9nvtrwfboy2ZJ1rG6TKg/B9Cv
	yaGLJRam0iiFv6DCQcFhmzIJJ4jR4E+O9YftseLECQ6svNSIYZQOiKMKBcuiZwlYf45lyq+THIsYy
	2AY0y8NV1w2KOZCI5mFcRak22sbZ2CZs7cwTJAIcNetrWpmRy+pHsERXHTy+hblaBNPnayQytcm9+
	k8xSmAKmEBih6tk2NJeaZyVH4D5bxpw/OMJSQiPPl4ug9+zYoobR+mjkYzLcsAzz3ZXRr/fFSEc6F
	u1apPtyoZ58ZXL4Hnqeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQUet-006ZhM-EI; Tue, 23 Aug 2022 14:13:35 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQUep-006Zdj-0h
	for linux-rockchip@lists.infradead.org; Tue, 23 Aug 2022 14:13:33 +0000
Received: by mail-ej1-x629.google.com with SMTP id j21so22307257ejs.0
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Aug 2022 07:13:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc;
        bh=R3+PgxM8z5XizNVDlTIKe8aLZ80jC+MqfgMZyAGS5D4=;
        b=FDDV7apJRIiE2DzIe56wIm0optzGxjCbo8HJG5mD8+1twp0EVv4WS9APAyLEy06J+H
         5uc7xlKxvdIALiuK27lTdGfrX96Gh/aEYbefWe/pxZ+y0Wsk3VIdwW7PJo9wdIPx+z4i
         /OhVbsRv320afGgESBwnm0HH8Nz1Phj0F7YrM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc;
        bh=R3+PgxM8z5XizNVDlTIKe8aLZ80jC+MqfgMZyAGS5D4=;
        b=DBHODMRXoD5kfTR2xx2h5X/gX0SEwS/2NB4qhVHxyTcfLrs/FYkLtFPAQkaRH/+n4E
         RPRrnpbcY7fSB+jAsRHam0pEGUbE0cOPorQoAEvpWax60TTLiAwaJAerfHZnRekix/yf
         sdUrEnkjJDwNVvg5ZsIhAGKUFTA4VRhAkXF8kfgoCMl1D/im9pvOWrnP/MfIOi271XeN
         ILTP4Aq8/jgKiO4My9QIB3/xxspzi/PSHvEiVRJWVRTmBh41j8RuA1SnkBVQCXzopC7I
         LOPndH2B1jviAlrJo8ReIG4gun1t3ST8mdptL+0NJYWJHCeVMOs63r3MnZTJqGFJyrro
         kiZQ==
X-Gm-Message-State: ACgBeo1wyy/c0AfpGMF5YUDZHRTTtWikKh44+YYkj0wkx61z2LfUHEnn
	+wOR+K+IPIHJutQQee6pDxL7noEYbU/9N243An0=
X-Google-Smtp-Source: AA6agR5rPsa3Hy+Pa1EkG7VrJSjEsHregopf2mSsFPthCZS7b72dB09fgkWytddlZxRE68Nm1Tgvng==
X-Received: by 2002:a17:907:1dce:b0:73d:6f4d:1b4b with SMTP id og14-20020a1709071dce00b0073d6f4d1b4bmr9254486ejc.69.1661264003110;
        Tue, 23 Aug 2022 07:13:23 -0700 (PDT)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com. [209.85.221.52])
        by smtp.gmail.com with ESMTPSA id kz10-20020a17090777ca00b0073d753759fasm3782482ejc.172.2022.08.23.07.13.21
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 07:13:21 -0700 (PDT)
Received: by mail-wr1-f52.google.com with SMTP id u5so9365710wrt.11
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Aug 2022 07:13:21 -0700 (PDT)
X-Received: by 2002:a05:6000:507:b0:225:5019:803b with SMTP id
 a7-20020a056000050700b002255019803bmr7303537wrf.617.1661264001119; Tue, 23
 Aug 2022 07:13:21 -0700 (PDT)
MIME-Version: 1.0
References: <20220822074139.3810-1-jensenhuang@friendlyarm.com> <23552842.6Emhk5qWAg@diego>
In-Reply-To: <23552842.6Emhk5qWAg@diego>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 23 Aug 2022 07:13:06 -0700
X-Gmail-Original-Message-ID: <CAD=FV=W-ajJDfYcP3P8Jyk_KgsUAbdTtmwiNXqJ=Ab2ojgrUGw@mail.gmail.com>
Message-ID: <CAD=FV=W-ajJDfYcP3P8Jyk_KgsUAbdTtmwiNXqJ=Ab2ojgrUGw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add enable-strobe-pulldown to emmc
 phy on rk3399
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
	Chris Ruehl <chris.ruehl@gtsys.com.hk>, Jensen Huang <jensenhuang@friendlyarm.com>, 
	Brian Norris <briannorris@chromium.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_071331_844720_E39B5C46 
X-CRM114-Status: GOOD (  17.14  )
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

SGksCgpPbiBUdWUsIEF1ZyAyMywgMjAyMiBhdCA0OjUzIEFNIEhlaWtvIFN0w7xibmVyIDxoZWlr
b0BzbnRlY2guZGU+IHdyb3RlOgo+Cj4gQW0gTW9udGFnLCAyMi4gQXVndXN0IDIwMjIsIDA5OjQx
OjM5IENFU1Qgc2NocmllYiBKZW5zZW4gSHVhbmc6Cj4gPiBJbnRlcm5hbCBwdWxsLWRvd24gZm9y
IHN0cm9iZSBsaW5lIChHUkZfRU1NQ1BIWV9DT04yWzldKSB3YXMgZGlzYWJsZWQKPiA+IGJ5IGNv
bW1pdCA4YjVjMmI0NWI4ZjAsIHdoaWNoIGNhdXNlcyBJL08gZXJyb3IgaW4gSFM0MDAgbW9kZS4K
PiA+Cj4gPiBUZXN0ZWQgb24gTmFub1BDLVQ0Lgo+ID4KPiA+IEZpeGVzOiA4YjVjMmI0NWI4ZjAg
KCJwaHk6IHJvY2tjaGlwOiBzZXQgcHVsbGRvd24gZm9yIHN0cm9iZSBsaW5lIGluIGR0cyIpCj4g
PiBTaWduZWQtb2ZmLWJ5OiBKZW5zZW4gSHVhbmcgPGplbnNlbmh1YW5nQGZyaWVuZGx5YXJtLmNv
bT4KPgo+IG9rLCBzbyB0aGlzIGxvb2tzIGxpa2UgaXQgcmVzdG9yZXMgcHJldmlvdXMgZnVuY3Rp
b25hbGl0eS4KPgo+IEknbSBqdXN0IHdvbmRlcmluZyBhcyB0aGUgIm9mZmVuZGluZyIgcGF0Y2gg
aXMgZnJvbSAyMDIwLCB3aHkgdGhpcwo+IG9ubHkgdHVybnMgdXAgbm93LiBBbnkgaWRlYXM/CgpB
aCwgSSBzZWUuIFNvIGJlZm9yZSB0aGUgb2ZmZW5kaW5nIHBhdGNoIHdlIHVzZWQgdG8ganVzdCBs
ZWF2ZSB0aGUKcHVsbCBzdGF0ZSBhdCB3aGF0ZXZlciB0aGUgZGVmYXVsdCB3YXMgd2hlbiB0aGUg
a2VybmVsIHdhcyBib290ZWQuCkFmdGVyIHRoZSBvZmZlbmRpbmcgcGF0Y2ggd2UgY2hvc2UgYSBk
ZWZhdWx0LgoKT24ga2V2aW4gSSBzZWUgYW4gZXh0ZXJuYWwgcHVsbCBkb3duIG9uIHRoaXMgbGlu
ZS4gRW5hYmxpbmcgYm90aCB0aGUKaW50ZXJuYWwgYW5kIGV4dGVybmFsIGlzIHByb2JhYmx5IG5v
dCBhIGh1Z2UgZGVhbCwgaXQnbGwganVzdCBhZmZlY3QKdGhlIHN0cmVuZ3RoIG9mIHRoZSBwdWxs
LgoKT24gYm9iIEkgX3RoaW5rXyB0aGUgZXh0ZXJuYWwgcHVsbCBkb3duIGlzIGFsc28gc3R1ZmZl
ZC4KCi4uLnNvIEkgZ3Vlc3MgdGhhdCB3b3VsZCBleHBsYWluIHdoeSBpdCBkaWRuJ3QgY2F1c2Ug
YSBwcm9ibGVtIGZvciBhdApsZWFzdCB0aG9zZSB0d28gYm9hcmRzPwoKLURvdWcKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
