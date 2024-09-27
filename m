Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18F0BCDD1AC
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Sep 2024 13:20:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xmd+OAJwU26vO1xOGSvcr+SjAXKuaUyvmYd7ufAAhOo=; b=STbkIwbiiESBf5
	0O2HQpuxIX2oqGdlRi7sfmzxYdcDWcex4pGTUw3ySPRfUNvaXtJqyGsvE2pSUT9PFDFk8xOx2aVSl
	Q6T6BoR3SWJm2HqO/Qhf1Pi/QDAb/HNkIEI9IzYCXTSuuvHU6TWRqxThBMUKs+cLrkwn02a9PVjcJ
	PCpY+IWY9YYA56+i8bc0R/yRitbMueWr3cdQ0qfVghfijdb9c7d2DNa0PzXNZJ/GjgaIFetqNVuP2
	sGJEeOJkhP+cDvzVIl882CbIwAET3M9cbJx5xLo1WlUtdk17JSiEBZ3nn/4LXHs8kV7P4vnZyOLbd
	1IutciTYXgkiSCSYcQLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suAtQ-0000000BGGm-0tN9;
	Fri, 27 Sep 2024 13:20:20 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suAdf-0000000BCvQ-48QT;
	Fri, 27 Sep 2024 13:04:05 +0000
Received: by mail-pj1-x102d.google.com with SMTP id 98e67ed59e1d1-2db85775c43so1580103a91.0;
        Fri, 27 Sep 2024 06:04:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727442243; x=1728047043; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lLZBoouw/VuTYq1d8wJ2tQsyjB5lc2Ro32qoC8DsyX8=;
        b=eGGCycjj7S93JgkYAWZ9agbJjPbWwk0eVJK60JSkTDxZ6/qVrf1FnFisss7+bU4vR1
         04mNV9Gx/zCr8elbD+kBoKg7jnLODY1YUoLJnGthCMXQtFEh5ACb8H621ezf/nRQBvIt
         GNMCEJBEDdOaU3r8N9ZKaa1CpVnl5u4c+MjOlXNftCBAhTFHx1aX5s37QkpdCvk4LsWy
         jo7DROBV6XOdWJB04OQdgcUIxjvUFkGKqJR2DFtJWbKcJc1tKgbNnTwawu/6LKCmee/H
         +180IthpzJMJqYLkfKz792acPxGSKEcqQtbawHEXXDkfeLhorMsoyacWi8SmdtpsOY9u
         zqVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727442243; x=1728047043;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lLZBoouw/VuTYq1d8wJ2tQsyjB5lc2Ro32qoC8DsyX8=;
        b=iHQMnK4HjqVtgAi7i08g+53wlD4luFov8MEr/MKGImWt81YnDSUrPcwH1e6Vw97XCO
         RmzwusZdlCPufZSCmCKKrD4aNi0xwMO4mMtvGGkF5Dhi+oenkFVvVhDHKvEic4XTcwaU
         U60G00ZEwDR7qKbd7sXyxOtfrnPPg3v9U+Hvm7UrT5banFst57qZmSQYL0EhQIPsX+PJ
         LKtvg5S7YuNfNki87COhbeKuhE4y/jD9jbSjLevbnZZzUi/KwZ5iKda9lorUJ7LGUcgG
         s602ZGDJY/mRmMTLlAaW5pscqXHc+Xqc05ZUSjf925ae+FTS88zyVQxvMu3gFhTWY3gT
         6QRA==
X-Forwarded-Encrypted: i=1; AJvYcCV6DEJZvVXV7gfHyIEc5ygq9Er+mMK3pywwkuLqTS/8m4B8tIQUA+BuaDqEU3oivQl184kAcYPKvc9uuGsoDBBv@lists.infradead.org, AJvYcCWrPbZPAmmKA8RUlJEX+8NqAesStnncdVDeDhrMO8tWusGEe1seiVzWs/KI8c/7pVbtUVv+R/p1TL78WZNAG3U=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy90xIk48+nSF2pjyMGF+3I8p0a5QhtKxvGOGa7RbM0wlLWUjk+
	m7dEC8HyF3cY0UBRrOQ/ABObIjFW1fgmBY3rPfbH4wYFXieoz/aOmJfBsQ/IIFpzhkr4OtYAqWD
	07Cxq7c50ccH4yrHHRCXuWY+fUgY=
X-Google-Smtp-Source: AGHT+IFtB7KLDPn+GDWKySAL2J4hNThlacj2FyNRmL5tDSlTqDrYlCCyOxeg5M2NMx4sjqT6GHGIxy0O+b+GZDd+MQM=
X-Received: by 2002:a17:90a:8984:b0:2e0:855b:9b21 with SMTP id
 98e67ed59e1d1-2e09111a9ebmr10387052a91.8.1727442242759; Fri, 27 Sep 2024
 06:04:02 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1727438777.git.geert+renesas@glider.be> <7ff1bfb73a6d6fc71f3d751dbb7133b045853f64.1727438777.git.geert+renesas@glider.be>
 <00fd0f7d-e05b-4140-9997-b4ffe0fcd8e9@kernel.org>
In-Reply-To: <00fd0f7d-e05b-4140-9997-b4ffe0fcd8e9@kernel.org>
From: Adam Ford <aford173@gmail.com>
Date: Fri, 27 Sep 2024 08:03:51 -0500
Message-ID: <CAHCN7xKywTnuW9W-5abwpq8txNYhN39G9OX8zJDy_j=fqJFPfg@mail.gmail.com>
Subject: Re: [PATCH treewide 10/11] ARM: dts: nxp: imx: Switch to {hp,mic}-det-gpios
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lubomir Rintel <lkundrak@v3.sk>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Paul Cercueil <paul@crapouillou.net>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Shengjiu Wang <shengjiu.wang@gmail.com>, 
	Xiubo Li <Xiubo.Lee@gmail.com>, Nicolin Chen <nicoleotsuka@gmail.com>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
	Adrien Grassein <adrien.grassein@gmail.com>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-mips@vger.kernel.org, 
	alsa-devel@alsa-project.org, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_060404_048313_0A181131 
X-CRM114-Status: GOOD (  18.72  )
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

T24gRnJpLCBTZXAgMjcsIDIwMjQgYXQgODowMOKAr0FNIEtyenlzenRvZiBLb3psb3dza2kgPGty
emtAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiAyNy8wOS8yMDI0IDE0OjQyLCBHZWVydCBVeXR0
ZXJob2V2ZW4gd3JvdGU6Cj4gPiBSZXBsYWNlIHRoZSBkZXByZWNhdGVkICJocC1kZXQtZ3BpbyIg
YW5kICJtaWMtZGV0LWdwaW8iIHByb3BlcnRpZXMgYnkKPiA+ICJocC1kZXQtZ3Bpb3MiIHJlc3Au
ICJtaWMtZGV0LWdwaW9zIiBpbiBGcmVlc2NhbGUgR2VuZXJpYyBBU29DIFNvdW5kCj4gPiBDYXJk
IGRldmljZSBub2Rlcy4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBHZWVydCBVeXR0ZXJob2V2ZW4g
PGdlZXJ0K3JlbmVzYXNAZ2xpZGVyLmJlPgo+ID4gLS0tCj4gPiBUaGlzIGhhcyBhIHJ1bi10aW1l
IGRlcGVuZGVuY3kgb24gIkFTb0M6IGZzbC1hc29jLWNhcmQ6IEFkZCBtaXNzaW5nCj4gPiBoYW5k
bGluZyBvZiB7aHAsbWljfS1kdC1ncGlvcyIuCj4KPiBUaGVyZWZvcmUgdGhpcyBzaG91bGQgd2Fp
dCBhIGN5Y2xlLiBQYXRjaCBpcyBnb29kLCBhbHRob3VnaCBtYXliZSB3ZQo+IHNob3VsZCBrZWVw
IGJvdGggcHJvcGVydGllcyBmb3IgYmFja3dhcmRzIGNvbXBhdGliaWxpdHk/CgpJIGFsc28gd29u
ZGVyIHdoYXQgdGhlIHBvaW50IG9mIHRoZSBjdXN0b21lciBmc2wtYXNvYy1jYXJkIGlzIHdoZW4K
dXNlZCBpbiBjb25qdW5jdGlvbiB3aXRoIGEgc3RhbmRhcmQgYXVkaW8gY29kZWMgYmVjYXVzZSB0
aGUgc2ltcGxlCmF1ZGlvIGNhcmQgd29ya3MganVzdCBmaW5lLiAgSSB0aGluayB0aGV5IGhhdmUg
c29tZSBzcGVjaWFsIGRyaXZlcnMKdGhhdCBuZWVkIGl0IGxpa2UgdGhlaXIgQVJDL2VBUkMgYW5k
IEhETUkgZHJpdmVycywgYnV0IEkgaGF2ZSB0ZXN0ZWQKc2V2ZXJhbCBOWFAgYm9hcmRzIHVzaW5n
IGEgc2ltcGxlIHNvdW5kIGNhcmQgYW5kIGl0IHdvcmtzIGZpbmUuCgphZGFtCj4KPiBTdWJqZWN0
OiBkcm9wICJueHAiIHByZWZpeC4KPgo+ID4gLS0tCj4gPiAgYXJjaC9hcm0vYm9vdC9kdHMvbnhw
L2lteC9pbXg2cWRsLXNhYnJlc2QuZHRzaSAgfCA0ICsrLS0KPiA+ICBhcmNoL2FybS9ib290L2R0
cy9ueHAvaW14L2lteDZzbC1ldmsuZHRzICAgICAgICB8IDIgKy0KPiA+ICBhcmNoL2FybS9ib290
L2R0cy9ueHAvaW14L2lteDZzbGwtZXZrLmR0cyAgICAgICB8IDIgKy0KPiA+ICBhcmNoL2FybS9i
b290L2R0cy9ueHAvaW14L2lteDZzeC1zZGIuZHRzaSAgICAgICB8IDIgKy0KPiA+ICBhcmNoL2Fy
bS9ib290L2R0cy9ueHAvaW14L2lteDZ1bC0xNHgxNC1ldmsuZHRzaSB8IDIgKy0KPiA+ICBhcmNo
L2FybS9ib290L2R0cy9ueHAvaW14L2lteDdkLXNkYi5kdHMgICAgICAgICB8IDIgKy0KPgo+Cj4g
QmVzdCByZWdhcmRzLAo+IEtyenlzenRvZgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
