Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47921EB64D9
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Jul 2023 13:08:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0pWRoMT9POjpFhHFwxGHq+Z6DKbCKW1fWG5vahORP4M=; b=CgyikkitYkps47
	SzcCwJGTzgIqDWPBin8nhnYbJ4Gdyz9kYfrRM2qlRUPQWCfS8c1v+1k7DBrY8ghTMwsCgG29b5sFx
	U+oEYCGUDTH73R6nHp8uewY7d3m9Kx5P/6853/Hp3z2ZvZ+OJ/IPOfjGrEreONlf1v7BAEDyrBPuz
	uBwlwE2TNf8+0hyF68LPph3syKBS+9oDFldgDKfeOgxe2t2LBPBjAdRj5L9CDzpkvRb7xBQULX/kg
	ZEFoOtG7qHMKqtOGo+1LPRrBamp65A3TJXVI+QVpBIZyvk7XSTfOZPXo2zmkYwsUiLZNEQ0Zkc2ch
	j811jbYRhTIpyXe7wHJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGfla-00DL6w-1P;
	Tue, 04 Jul 2023 13:08:26 +0000
Received: from mail-yw1-f173.google.com ([209.85.128.173])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGflX-00DL5j-26
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Jul 2023 13:08:24 +0000
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-579ed2829a8so30240277b3.1
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Jul 2023 06:08:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688476100; x=1691068100;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BkpYMVU8rJa52DI8rHfrIhMR4F2XjuGdUJqnXmGYafs=;
        b=l6nyEvm8PO3jLlQ1C+WhAllrttkQFQsXIw0V/6eWWUbqeUMAYL3YC4ya6kWijkVgSD
         HrT4mUgva7qXf76y8IUf4nrCDUWQwaREzAv3of3APuXsDs+vNXP4y/3BRGzRBUJNVLqi
         xkvGSkK3Tt1dLiTl4n896JO+ZE6ALaDQqqDqTgEqdHFDGTsoZ03HXITTRchDsejOGFK3
         JEycXVXE+TSHf8UivrffrC43saC2kBoKbxsVzKktI5XfDrTfgkHyhLWpVyOYYBM61+HS
         KfbTrNuibVkdPIlHN+Ox1aVdOYTPREbxJLFRbd/rFGo2m4B5obo6e6+pAG9CkTLOLARG
         1xEA==
X-Gm-Message-State: ABy/qLZFnxjIpUOAcsskOwedrMuXHuZ7wr2lHl/UNuSsgCdTvmfPe73z
	cENGRZXtxNU4ic2Knzfq0QO7hWjxmUsB1Q==
X-Google-Smtp-Source: APBJJlGEcGqHK9dl+ObMHFRvJInPenwgJBhjGdrlrDp4KVEeIuEZ9qN2+nKbmMqJMOna47l73+WdVw==
X-Received: by 2002:a81:7757:0:b0:576:91e0:b8c5 with SMTP id s84-20020a817757000000b0057691e0b8c5mr12461252ywc.0.1688476100240;
        Tue, 04 Jul 2023 06:08:20 -0700 (PDT)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com. [209.85.128.182])
        by smtp.gmail.com with ESMTPSA id w126-20020a814984000000b00577269ba9e9sm2991540ywa.86.2023.07.04.06.08.19
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jul 2023 06:08:19 -0700 (PDT)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-577497ec6c6so45955557b3.2
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Jul 2023 06:08:19 -0700 (PDT)
X-Received: by 2002:a25:ce4f:0:b0:bc8:f082:2301 with SMTP id
 x76-20020a25ce4f000000b00bc8f0822301mr13920562ybe.6.1688476099296; Tue, 04
 Jul 2023 06:08:19 -0700 (PDT)
MIME-Version: 1.0
References: <20230504173618.142075-1-sebastian.reichel@collabora.com>
 <20230504173618.142075-6-sebastian.reichel@collabora.com> <CAMuHMdWRoNXrkD8ty4pUpFA-qQCMVF3wzXTCHFW4jYSy+dXivg@mail.gmail.com>
 <20230630184833.o3lgqrtqzzwgb7nk@mercury.elektranox.org>
In-Reply-To: <20230630184833.o3lgqrtqzzwgb7nk@mercury.elektranox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 4 Jul 2023 15:08:07 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVVFFt84nESQRgBergcdgfyoO4Bx3jxrjc=3cXfoW2Bjw@mail.gmail.com>
Message-ID: <CAMuHMdVVFFt84nESQRgBergcdgfyoO4Bx3jxrjc=3cXfoW2Bjw@mail.gmail.com>
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
X-CRM114-CacheID: sfid-20230704_060823_690894_88C8052A 
X-CRM114-Status: GOOD (  24.41  )
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

SGkgU2ViYXN0aWFuLAoKT24gRnJpLCBKdW4gMzAsIDIwMjMgYXQgODo0OOKAr1BNIFNlYmFzdGlh
biBSZWljaGVsCjxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPiBPbiBG
cmksIEp1biAzMCwgMjAyMyBhdCAwMTozNDo0NFBNICswMjAwLCBHZWVydCBVeXR0ZXJob2V2ZW4g
d3JvdGU6Cj4gPiA+IC0tLSBhL2RyaXZlcnMvbWZkL0tjb25maWcKPiA+ID4gKysrIGIvZHJpdmVy
cy9tZmQvS2NvbmZpZwo+ID4gPiBAQCAtMTE4MywxMiArMTE4MywxNyBAQCBjb25maWcgTUZEX1JD
NVQ1ODMKPiA+ID4gICAgICAgICAgIEFkZGl0aW9uYWwgZHJpdmVycyBtdXN0IGJlIGVuYWJsZWQg
aW4gb3JkZXIgdG8gdXNlIHRoZQo+ID4gPiAgICAgICAgICAgZGlmZmVyZW50IGZ1bmN0aW9uYWxp
dHkgb2YgdGhlIGRldmljZS4KPiA+ID4KPiA+ID4gLWNvbmZpZyBNRkRfUks4MDgKPiA+ID4gK2Nv
bmZpZyBNRkRfUks4WFgKPiA+ID4gKyAgICAgICBib29sCj4gPgo+ID4gSXMgdGhlcmUgYW55IHNw
ZWNpZmljIHJlYXNvbiB3aHkgdGhpcyBjYW5ub3QgYmUgbW9kdWxhciwgbGlrZSBtb3N0IChhbGw/
KQo+ID4gb2YgaXRzIHVzZXJzIHRoYXQgc2VsZWN0IGl0Pwo+Cj4gSSBkb24ndCByZW1lbWJlciB3
aHkgSSBtYWRlIHRoYXQgYm9vbC4gVHJpc3RhdGUgc2hvdWxkIGJlIHBlcmZlY3RseQo+IGZpbmUu
IERvIHlvdSB3YW50IHRvIHNlbmQgYSBwYXRjaCAoSSB3aWxsIHRlc3QgaXQgb2YgY291cnNlKSwg
b3Igc2hvdWxkCj4gSSB0YWtlIGNhcmUgb2YgaXQ/CgpJIGhhdmUgc2VudCBhIHBhdGNoLgpodHRw
czovL2xvcmUua2VybmVsLm9yZy9yL2QxMzIzNjNmYzkyMjg0NzNlOWU2NTJiNzBhMzc2MWI5NGRl
MzJkNzAuMTY4ODQ3NTg0NC5naXQuZ2VlcnQrcmVuZXNhc0BnbGlkZXIuYmUKCkdye29ldGplLGVl
dGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0ZXJo
b2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4
LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3Bs
ZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5h
bGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
