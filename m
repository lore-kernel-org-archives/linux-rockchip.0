Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5507CC77B7D
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 May 2023 10:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GxGSV7+R+m3RS/9CMltQUtDi2xRQVkUBudHRr7FsfkA=; b=3YqB45hnzSYqMI
	SO2LnCKbdodrdoN+g11ELl3tK80vZ/HMY7fbq6XoUBwiC40KnlTxhHQVGSba+Buee5ST7TP14GqBw
	5t2oOp8yFgkoYCwxjk81fXj9XvsMY8iZTIxzhiniByFNN2icbd/7bVzwTiZ14OASPvx3H/lA0OO+Q
	9fF17C+pTsLSqzUlMjRnwVfDzokO79/b26OKbGosPULbCpMSB2q64QajyR7MqFkWHsiZhqzj9KCxE
	rDV1FGCbhAAIV85SLWEAT4pAaS5E0ExGkDUJ+OPwAS/wteRekjvL9nB+lM1Y2YtleaGy5lBGfHEq7
	Px/GLwLmVxQMZysoM63w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pxmNm-00EGTt-2A;
	Sat, 13 May 2023 10:21:46 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pxmNi-00EGSw-1V;
	Sat, 13 May 2023 10:21:43 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-50bc075d6b2so19833445a12.0;
        Sat, 13 May 2023 03:21:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683973297; x=1686565297;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VfXf7Z/pwISSyuK+G+umykCTaKNJLWzISvgkZ065u5k=;
        b=aR6Sr3i5k6WraX9j/SyZ2Rxrq7j31Tk45stLmYBeyAGOgaR2TR3tP1VaG5v7dbGscu
         8pOw7C4PSCdVcXlDOe/kNdIFvO7I9Vnd4jKmCekdV8+DLPuNi7uzFADogRFQLbzGVBSE
         4lr6PqMINBzXP4cEgQjt62DrwEBLBMITxVFfijt/oz9ITGvKuvXL/l0EpPZjRz7uBT0j
         tkMVfvHX/TyM3T7mpECAqzPW5E4XeBcWGqV3yEM4AKwNJniJiYzio8LLgPZBFtPG+fUd
         x6voE9h29AS6ZVvQ7vNSTaT9B9YXfqytPGVJCTh/wMaQpfsVoG3IaEmG6QuHUy8GeV6q
         Y+fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683973297; x=1686565297;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VfXf7Z/pwISSyuK+G+umykCTaKNJLWzISvgkZ065u5k=;
        b=Fskax9yvCasHf8CG/60XGi5X7Y76lcByeyDVjKeJMu+DI+vAN8+kk37DzxMz4yP+ev
         0RWCcAu1lAFOSQGgg3WKqv7enkcuS4COAqZ29kXjpPxKog6jzx32J9+E3bZ4a8kmzKgX
         /RAjORiTewty+e9LepJeziQSvEmyUZBzG+QaUNiPO1enOGD8ZwXYgn4bdptyicyTSXOp
         oxNb6jEjhcMH1/aN7PmXkbCyKVORyFq7yn13Or8Weg8wEFN1IHqzubQSr//q5yNhRc+m
         mtcioML5SDx4RJ6MZlTsSXgQ3KKy53BSHpU4ga/G0n/ZiOR6daDrIMw8PH9DDO0qcEYm
         KrOQ==
X-Gm-Message-State: AC+VfDzrI7NmJWr2TY97KPn1G7vd1sk/uZOc6uZ23fQTJdTOh0Cr65H5
	bQQsveZcxHx/023EbG5cjMG1Q3+KgWgAqKMiXTM=
X-Google-Smtp-Source: ACHHUZ4de0cW1jvj/9uHt+A8zE/qtBZ1cxXz0GH361g1zYUo9VbzkUW+vXmb5SVO1ltaKq1HwKDg6xa4D0S3/9GPg+E=
X-Received: by 2002:a17:907:1c14:b0:95e:d74d:c4e6 with SMTP id
 nc20-20020a1709071c1400b0095ed74dc4e6mr33805176ejc.25.1683973296581; Sat, 13
 May 2023 03:21:36 -0700 (PDT)
MIME-Version: 1.0
References: <20230513065228.25971-1-cnsztl@gmail.com> <ff7aa7b6-dc45-25ba-9636-058c2bb73a6d@linaro.org>
In-Reply-To: <ff7aa7b6-dc45-25ba-9636-058c2bb73a6d@linaro.org>
From: Tianling Shen <cnsztl@gmail.com>
Date: Sat, 13 May 2023 18:21:24 +0800
Message-ID: <CAOP2_TjbWMpqPtpAfRZSh5+da6HxCJb_f59_jNX73Cc0vg_n2Q@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R2C Plus
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>, 
	Andy Yan <andyshrk@163.com>, Chris Morgan <macromorgan@hotmail.com>, 
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Brian Norris <briannorris@chromium.org>, 
	Maya Matuszczyk <maccraft123mc@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
	Michael Riesch <michael.riesch@wolfvision.net>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Andrew Powers-Holmes <aholmes@omnom.net>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230513_032142_511789_20A25E79 
X-CRM114-Status: GOOD (  10.77  )
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

SGkgS3J6eXN6dG9mLAoKT24gU2F0LCBNYXkgMTMsIDIwMjMgYXQgNToxN+KAr1BNIEtyenlzenRv
ZiBLb3psb3dza2kKPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBP
biAxMy8wNS8yMDIzIDA4OjUyLCBUaWFubGluZyBTaGVuIHdyb3RlOgo+ID4gQWRkIGRldmljZXRy
ZWUgYmluZGluZyBkb2N1bWVudGF0aW9uIGZvciB0aGUgTmFub1BpIFIyQyBQbHVzLgo+ID4KPiA+
IFNpZ25lZC1vZmYtYnk6IFRpYW5saW5nIFNoZW4gPGNuc3p0bEBnbWFpbC5jb20+Cj4KPiBzdWJq
ZWN0OiBtaXNzaW5nIHByZWZpeGVzIChhcm06IHJvY2tjaGlwOikKPgo+IERyb3AgImRvYyBmb3Ii
Cj4KPiBTdWJqZWN0OiBkcm9wIHNlY29uZC9sYXN0LCByZWR1bmRhbnQgImRvYyIuIFRoZSAiZHQt
YmluZGluZ3MiIHByZWZpeCBpcwo+IGFscmVhZHkgc3RhdGluZyB0aGF0IHRoZXNlIGFyZSBiaW5k
aW5ncyBhbmQgaXQgaXMgZG9jdW1lbnRhdGlvbi4KClRoYW5rcyBmb3IgdGhlIHN1Z2dlc3Rpb24h
IFdpbGwgc2VuZCB2MiBmb3IgaXQuCgpSZWdhcmRzLApUaWFubGluZy4KCj4gPiAtLS0KPiA+ICBE
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwgfCAxICsK
Pgo+Cj4gQWNrZWQtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5rb3psb3dza2lA
bGluYXJvLm9yZz4KPgo+IEJlc3QgcmVnYXJkcywKPiBLcnp5c3p0b2YKPgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
