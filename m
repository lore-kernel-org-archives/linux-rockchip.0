Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E8BCC001DF
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Aug 2023 13:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0v+RGrqKJ1VXyAGRNNLscLDS1ojA/Sum5YsD8x4TMVk=; b=ymgyEKAQull/sF
	HLRwwJiZaxRuFaikTHcVxISKa2QWOCiFjj1a49LuXZFwzx9JJ04ewk6rMhedBbU9ExTEEK5xXRfBO
	3M477sxR4YM9o09xwHNVoUAIBzux11KrfZ3Z8bXtlKyyt1Q3hVGc1ap93noWTRaJXuYldL4U9kxGv
	xZ/Wx5WmZXkpBMxMLBncJyTXNDM3XWuV9XL3nMp06nSryV1t3p6J9SOC04uSjrv/+BhnZg9X9iSXT
	ib7hq7I95v84a2ONd+u25ZgG98msXMwKCPT4Cq//SHBH5ivti2cIJs2rsciBHgtBA8BgG1UFChAQs
	OxxCBPScToPdNQ0XKiow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qQpgk-002Tsi-2O;
	Tue, 01 Aug 2023 13:45:26 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qQpgi-002TrP-1L;
	Tue, 01 Aug 2023 13:45:25 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 45FD2615AA;
	Tue,  1 Aug 2023 13:45:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AA07DC433CC;
	Tue,  1 Aug 2023 13:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690897522;
	bh=FlNMB4occqS43nWZw7tCdE81qdOmSaFvz51TyVwZ12A=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=V/Atskh0zJalEV3june32SmY+QY+ml0aprBa2qNx55YyaxGsx9+KWxumY8cWPqzLT
	 HI2vWkUpJ+hyaHKzejhLj0m04KzuCr+5A7l+l01VBKxmADbPsasuUokvoukPlIk9c4
	 9EqQnEdGg+MEKBvz4WZIKjt/AMEh/lCyK54N+btBGsftEblUu27TknPQD5rxvSkQtf
	 jRABjhAHAlTGBLQ1JFNOIUbsxpwuTG4kOX9bbyVUWG+dVRD931p5N458wshmJ0l7K6
	 1CzYkDRnrq7A7GlAdHhQDAZhltWazPq69IWuZDe9Fed3+dHCnySSEAPgrhfto5yBUT
	 WAf8thcb3CjBA==
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2b9cdba1228so69865311fa.2;
        Tue, 01 Aug 2023 06:45:22 -0700 (PDT)
X-Gm-Message-State: ABy/qLZjsgrM0FUhJ+NhAlItK7X7OwbgQDcaoBEmTQdGkbxPI19EBbfz
	eu688UiX22/xAi0NiVgnBZI3rhoq0GNc10bL0g==
X-Google-Smtp-Source: APBJJlGnhX9iKt57XHeT9WSosBHuXMkDbBmL27QD49R6iCNM2dCQvYNxQbuweCPsYlRjfVRMiCmQ2gLfv5RsNo/PvvI=
X-Received: by 2002:a2e:805a:0:b0:2b6:e2aa:8fbc with SMTP id
 p26-20020a2e805a000000b002b6e2aa8fbcmr2093301ljg.8.1690897520717; Tue, 01 Aug
 2023 06:45:20 -0700 (PDT)
MIME-Version: 1.0
References: <20230707210604.868002-1-robh@kernel.org> <ZMeZIGyD+ET6gaox@valkosipuli.retiisi.eu>
In-Reply-To: <ZMeZIGyD+ET6gaox@valkosipuli.retiisi.eu>
From: Rob Herring <robh@kernel.org>
Date: Tue, 1 Aug 2023 07:45:08 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK4A9vpUiP3sCz9+hAHitcsB9NYMMy05n4=1hn7NvjOtg@mail.gmail.com>
Message-ID: <CAL_JsqK4A9vpUiP3sCz9+hAHitcsB9NYMMy05n4=1hn7NvjOtg@mail.gmail.com>
Subject: Re: [PATCH] media: dt-bindings: Merge OV5695 into OV5693 binding
To: Sakari Ailus <sakari.ailus@iki.fi>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Daniel Scally <djrscally@gmail.com>, Dafna Hirschfeld <dafna@fastmail.com>, 
	Heiko Stuebner <heiko@sntech.de>, Tommaso Merciai <tommaso.merciai@amarulasolutions.com>, 
	Helen Koike <helen.koike@collabora.com>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230801_064524_522381_95BB7AC9 
X-CRM114-Status: GOOD (  19.72  )
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

T24gTW9uLCBKdWwgMzEsIDIwMjMgYXQgNToyMeKAr0FNIFNha2FyaSBBaWx1cyA8c2FrYXJpLmFp
bHVzQGlraS5maT4gd3JvdGU6Cj4KPiBIaSBSb2IsCj4KPiBPbiBGcmksIEp1bCAwNywgMjAyMyBh
dCAwMzowNjowNFBNIC0wNjAwLCBSb2IgSGVycmluZyB3cm90ZToKPiA+IFRoZSBPVjU2OTUgYmlu
ZGluZyBpcyBhbG1vc3QgdGhlIHNhbWUgYXMgdGhlIE9WNTY5MyBiaW5kaW5nLiBUaGUgb25seQo+
ID4gZGlmZmVyZW5jZSBpcyAnY2xvY2stbmFtZXMnIGlzIGRlZmluZWQgZm9yIE9WNTY5NS4gSG93
ZXZlciwgdGhlIGxhY2sgb2YKPiA+IGNsb2NrLW5hbWVzIGlzIGFuIG9taXNzaW9uIGFzIHRoZSBM
aW51eCBPVjU2OTMgZHJpdmVyIGV4cGVjdHMgdGhlIHNhbWUKPiA+ICd4dmNsaycgY2xvY2sgbmFt
ZS4KPiA+Cj4gPiAnbGluay1mcmVxdWVuY2llcycgaXMgcmVxdWlyZWQgYnkgT1Y1NjkzLCBidXQg
bm90IE9WNTY5NS4gSnVzdCBkcm9wIGl0Cj4gPiBmcm9tIGJlaW5nIHJlcXVpcmVkLiBFeHByZXNz
aW5nIGl0IGNvbmRpdGlvbmFsbHkgd291bGQgYmUgdWdseS4gSXQKPiA+IHNob3VsZG4ndCByZWFs
bHkgYmUgcmVxdWlyZWQgZWl0aGVyIGFzIHRoZSBkcml2ZXIgb25seSBzdXBwb3J0cyAxCj4gPiBm
cmVxdWVuY3kgYW55d2F5cy4KPgo+IFRoZSBjb3JyZWN0IHdheSB0byBhZGRyZXNzIHRoaXMgd291
bGQgYXBwZWFyIHRvIGJlIHRvIGFkZCBsaW5rLWZyZXF1ZW5jaWVzCj4gZm9yIGJvdGggb2YgdGhl
c2UgZGV2aWNlcy4gSSB0aGluayBJJ3ZlIHNlZW4gb25lIG9yIHR3byBzZW5zb3JzIG9mIHRoaXMK
PiBjbGFzcyAocmF3LCBDU0ktMi9wYXJhbGxlbCwgZXh0ZXJuYWwgY2xvY2sgZXRjLikgd2l0aCBs
aW5rIGZyZXF1ZW5jaWVzCj4gZG9jdW1lbnRlZCBhcyAiZml4ZWQiIC0tLSB3aGljaCBpcyBwcm9i
YWJseSBhIGRvY3VtZW50YXRpb24gaXNzdWUgbW9yZSB0aGFuCj4gYW55dGhpbmcgZWxzZS4KCmxp
bmstZnJlcXVlbmNpZXMgaXMgYWxyZWFkeSBzdXBwb3J0ZWQuIEl0J3MganVzdCBhIHF1ZXN0aW9u
IG9mIGJlaW5nCnJlcXVpcmVkIG9yIG5vdC4gQWRkaW5nIGEgcHJvcGVydHkgYXMgcmVxdWlyZWQg
aXMgYW4gQUJJIGJyZWFrIChpZiB0aGUKT1Mgc3RhcnRzIHJlcXVpcmluZyB0aGUgcHJvcGVydHkp
LgoKUm9iCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
