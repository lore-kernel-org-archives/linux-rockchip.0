Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE375C5479D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Jan 2023 10:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wO9g6Qob3PsBGCOa1FVys2EtOlsA04KYtgbz4kXrEg4=; b=WIFTnQSAjq0Em0
	zISAUS+GTQVsjfyYa88Q2DDlxTYYQx9u5eDCoJwU3FJMb/peJ74d40RQ1rfmzxSNUs5EIGdulWhSp
	RwP8EWuLxx2HT4fEaecl1jUMarqc8vP8n1H+NOLbahPgqDnnR4+y6B7lssVBSaR2ZX1AtGOkbqr4n
	hCpozgayI3oTphAaqOEW7a7nx6V/yEPAS445lDYJtnXFUNQh0tsguADoYp7BELUMe9RJkjyvuhgPM
	I1ZysncubADgDKlaeAv20HSnQkWXfrgesQFpuSq3fRkdcbiiH6PY4wP7tird8gSDBO7A7dZhaZiWD
	sxiXjPlWLVNaUMw6vFoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYdw-00At80-6y; Wed, 11 Jan 2023 10:47:40 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFYdh-00At2Z-9R
	for linux-rockchip@lists.infradead.org; Wed, 11 Jan 2023 10:47:26 +0000
Received: by mail-pf1-x432.google.com with SMTP id 20so5682036pfu.13
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Jan 2023 02:47:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GjitaCz/hk6YfV1W4HIZDAHa41L/xLHca2rqUeyrDp8=;
        b=MjKTVmUUeXgoQSe88e85BwskYnR3J484S2tD0q6TtMMOscV//tk6F6fm/qWp0/iS0s
         IfdMkLmbmMGZv7KtapSrco89tlsROXPE6aI7h7I8J5gtjVuDoedqep7TCe0MC1ZxtKfS
         WUrf/1wx31DN8zCbKiCB7PmAWEPCc9rOZwf4xNtpLw1Gqnd2KATdjOAIxTv7gerRxsJ4
         vIKPlwvqKzzXxsQDaDFSIc9iNDi8uQDrYWzm0EcS2offltZZE4K2sl6aqQq1Bu2UAuMI
         b9RxP1eVogrPeicR135p9c4QhhRGOtE1P4Wv70NvOk/Ct83Z3ZNfarpCI38mg8DnhdCB
         zhpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GjitaCz/hk6YfV1W4HIZDAHa41L/xLHca2rqUeyrDp8=;
        b=uRJjMccgpVGLikfJL0d41m8zO1fVMSinf/4OA+kUkDrRPaKwHrk7JcTcrXP6UxTcdy
         8p2hTWcY+A9BGgTUrGrjCDsNYu6v3y0B5T34dIIYifqBMNY+a96CVFNmiB5g438DLL1F
         0faUlachZf0/v8dE9t/40UoXbXtEjHFVh10YhxJfE3KxD/lC+5ilX7JdMFQtIWG0svSU
         lz3PYByr76JJtG0d8Zqtv3stDXBBQGCiWedTUPhrJ55mXy8WaR6Alj2wXQbUn5s6BoxV
         Wi9PWIDALIorkoTYCokyNOT63p7fAB8jvV0NgCVBTj3CZZTlD1wa4gUWlfhjMOfNNCff
         8RYA==
X-Gm-Message-State: AFqh2kpwjJVwaQWzWe2ntDUvZEVjcbXquw+Y1l+gZXEXlUROBfq5obTc
	RvCS6h7XxLPz7qC7aZkfVIZEIkjHJnDaKCmzdX0LzQ==
X-Google-Smtp-Source: AMrXdXsKLd/a7djt6fm62b5uPSdYXm9jYzDZvmKt35kqXvcCsEgx//F7llRyFrDnBRvtY68bOcPjna9LtM8fNKoHPl4=
X-Received: by 2002:a65:5b42:0:b0:489:88ed:9b28 with SMTP id
 y2-20020a655b42000000b0048988ed9b28mr4258688pgr.61.1673434043284; Wed, 11 Jan
 2023 02:47:23 -0800 (PST)
MIME-Version: 1.0
References: <20230111064842.5322-1-anand@edgeble.ai> <7148963.18pcnM708K@diego>
 <CACF1qnd=o+QWuofgAb+YXOs1R_dOuCPxWrb-+YEhuN4z8OnTrA@mail.gmail.com> <2917690.KRxA6XjA2N@diego>
In-Reply-To: <2917690.KRxA6XjA2N@diego>
From: Anand Moon <anand@edgeble.ai>
Date: Wed, 11 Jan 2023 16:17:13 +0530
Message-ID: <CACF1qnffL-YFJeoeU1nNJueKdb86bDfP2TuR4h1jn8ZZgHfCWw@mail.gmail.com>
Subject: Re: [PATCHv4 linux-next 3/4] Rockchip RV1126 has GMAC 10/100/1000M
 ethernet controller
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Richard Cochran <richardcochran@gmail.com>, Johan Jonker <jbx6244@gmail.com>, 
	Jagan Teki <jagan@edgeble.ai>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_024725_366926_B60CAEA6 
X-CRM114-Status: GOOD (  15.67  )
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

SGkgSGVpa28KCk9uIFdlZCwgMTEgSmFuIDIwMjMgYXQgMTY6MTMsIEhlaWtvIFN0w7xibmVyIDxo
ZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+Cj4gQW0gTWl0dHdvY2gsIDExLiBKYW51YXIgMjAyMywg
MTE6MzE6NDAgQ0VUIHNjaHJpZWIgQW5hbmQgTW9vbjoKPiA+IEhpIEhlaWtvLAo+ID4KPiA+IFRo
YW5rcyBmb3IgeW91ciByZXZpZXcgY29tbWVudHMuCj4gPgo+ID4gT24gV2VkLCAxMSBKYW4gMjAy
MyBhdCAxNTo0MSwgSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cj4gPiA+
Cj4gPiA+IEhpLAo+ID4gPgo+ID4gPiBBbSBNaXR0d29jaCwgMTEuIEphbnVhciAyMDIzLCAwNzo0
ODozOCBDRVQgc2NocmllYiBBbmFuZCBNb29uOgo+ID4gPiA+IEFkZCBFdGhlcm5ldCBHTUFDIG5v
ZGUgZm9yIFJWMTEyNiBTb0MuCj4gPiA+ID4KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbmFuZCBN
b29uIDxhbmFuZEBlZGdlYmxlLmFpPgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kg
PGphZ2FuQGVkZ2VibGUuYWk+Cj4gPiA+Cj4gPiA+IHBhdGNoZXMgMi00IGhhdmUgdGhpcyBTaWdu
ZWQtb2ZmLWJ5IGZyb20gSmFnYW4gYWdhaW4gd2hlcmUgaGUgaXMgbm90Cj4gPiA+IG5vdCB0aGUg
YXV0aG9yIGJ1dCBhbHNvIG5vdCB0aGUgc2VuZGVyLgo+ID4KPiA+IFdlIGJvdGggd29yayB0byBm
aXggdGhpcyBwYXRjaCBoZW5jZSBKYWdhbidzIFNvQiB3YXMgYWRkZWQuCj4KPiBvaywgdGhlbiBJ
IHRoaW5rIHRoZSBjb3JyZWN0IHdheSB0byBleHByZXNzIHRoYXQgd291bGQgYmU6Cj4KPiBDby1E
ZXZlbG9wZWQtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGVkZ2VibGUuYWk+Cj4gU2lnbmVkLW9mZi1i
eTogSmFnYW4gVGVraSA8amFnYW5AZWRnZWJsZS5haT4KPiBTaWduZWQtb2ZmLWJ5OiBBbmFuZCBN
b29uIDxhbmFuZEBlZGdlYmxlLmFpPgo+ClllcywgeW91IGFyZSByaWdodC4KClRoYW5rcwotQW5h
bmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
