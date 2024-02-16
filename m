Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DB4AC48260
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Feb 2024 19:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ubtrTtSNUIt56sM22sZ5KY7w9pWve9NN3UebUfCb5cs=; b=VyRGMk5xWr6jlC
	LJV6LN4Jvd9/CgDQP+UVyp83gNcDgUPQDyNz+rtFa0CLgYeAFa6NO9j5lXAkt/bcYbcOPjj1aDbh4
	jVVqCr8hskmL0hT2vep3CBlltjE1MZIuRLSGl3nk8VSz+e3eb7E9q/2nC2aSf5jU+bM5Qo6MEYDOl
	Jv2eTiljE+4iHqSMKMl34y0cCTA+dbm9Y6K9a4mdXjJ2p5BKb4sJDrw2PdQikGLgtZejmJlNbwDKO
	vZMx+G8mD07BPi9k7Vek55xvOsvK2lUDM4EDVS9AMi+b453vlimVxNVf6jDUxb3+jW+5OCZqtctpQ
	USadcZkcey6pTI9O1shg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb3uN-00000003VIG-2HwW;
	Fri, 16 Feb 2024 19:30:03 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rb3uK-00000003VGC-01I7
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Feb 2024 19:30:01 +0000
Received: by mail-ot1-x335.google.com with SMTP id 46e09a7af769-6e2f0d6c82eso422592a34.2
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Feb 2024 11:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1708111798; x=1708716598; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cjtHHDVg1EP31BktP6Ck1iG9AHnmh+yzE4yzLtOxWPg=;
        b=BFPv71szo5XlIZFP30DXdXWN18MTH4mzOhoZ/x5gvk1yLOXMdqxw/FFmN1dTS40r/y
         39R+LDia4H5lg9u0mrfNcaVTlRREDP8jctUTIJfyC9EWxWYiSJ5bD/KyVdlPbeME/b8Z
         i+BCTUgnNlotq9MO91E44xkaCe7ck2c4kxJgpKF1xrzWbrnL8goidr3BHaQjzMy8EhQ9
         Y7cIhxp9Y2xgl82fHWz6Kh8gE5HITyjT3uV9Ye7rwEhUOIsJ5qUWRYa9hVx4a7iSGdxv
         vxowwBefhHKLjk3tCy5b+YSnjojhJ3n2UunlYAJt1jvGhrJ/MBYXXscUipt6zzzO/FXS
         fQLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708111798; x=1708716598;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cjtHHDVg1EP31BktP6Ck1iG9AHnmh+yzE4yzLtOxWPg=;
        b=J28FlqaEb/5GuOl2FzAr3aMH2GcSKNoNBfl0k+QN4xnGnieSCFxYXJZs0tbaQ3u1xH
         QDybu5iakjzyhTmFoRi43lpxyTiWojNyxwxtRMefTPiNPezBnV5jJgxxrDPw5wG75oPx
         uGxYa6+MRnq3visW7USCzqYBcooyDbr0vX8ttcV63J5yfBaIWQ+tFIkZvWA1xzvpP7NH
         VDVrrDbGWH1godNkp+p/woofmd111kkgY+UZtB2fOW5v/O6u1ezJWQbPYEwqtQt4p7pI
         iDJs/AEYqPBhexfpEkSAdi18cxEnh6BygYcdYt2ScPbgv1QU0iWbRow6OJuCUDlZ2FpA
         7dsw==
X-Forwarded-Encrypted: i=1; AJvYcCX4ILZEARbWpuvc/gorfCmShX78hKpY09lJDyqSVT+w8XFuP3OuLxgtq7hXxvAp7fhoyF8JTrdcRFtfC66ozppaHWGvbjNl3WbBkZCrBP5nXoQO
X-Gm-Message-State: AOJu0Yyr0jZiZyDZpVpLTbnmNx/wWe+FeOxtu1lOCF1EwJj7t+IpZqlb
	6U9GTXGdypcJoAm0ulMOncquRUKjegKAhOqUKACqK0If5BArJ5ocP83z2gaFFQo=
X-Google-Smtp-Source: AGHT+IFEYuJ0J4q6Ri7W8LG928weSbYRDzhIjrV39IhvTbn+aiKejHqcf79FSbmpyPZyQyd4jTYPuQ==
X-Received: by 2002:a05:6358:5389:b0:178:dac3:2b99 with SMTP id z9-20020a056358538900b00178dac32b99mr6283861rwe.1.1708111796945;
        Fri, 16 Feb 2024 11:29:56 -0800 (PST)
Received: from nicolas-tpx395.localdomain ([2606:6d00:11:3354::7a9])
        by smtp.gmail.com with ESMTPSA id p6-20020ac84606000000b0042dc7edf2f4sm206963qtn.45.2024.02.16.11.29.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 11:29:56 -0800 (PST)
Message-ID: <8d68a49a35799d1686d9b674ce4edfd91c68850b.camel@ndufresne.ca>
Subject: Re: [PATCH 1/4] clk: rockchip: rst-rk3588: Add BIU reset
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Shreeya Patel
	 <shreeya.patel@collabora.com>, heiko@sntech.de, mchehab@kernel.org, 
	robh@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de, 
	jose.abreu@synopsys.com, nelson.costa@synopsys.com, 
	dmitry.osipenko@collabora.com, sebastian.reichel@collabora.com, 
	shawn.wen@rock-chips.com
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-clk@vger.kernel.org, linux-dt@vger.kernel.org, 
	linux-arm@lists.infradead.org
Date: Fri, 16 Feb 2024 14:29:55 -0500
In-Reply-To: <237e690a-2f49-4046-b054-3a878eed6748@linaro.org>
References: <20240216094922.257674-1-shreeya.patel@collabora.com>
	 <20240216094922.257674-2-shreeya.patel@collabora.com>
	 <237e690a-2f49-4046-b054-3a878eed6748@linaro.org>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual; keydata=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
User-Agent: Evolution 3.50.3 (3.50.3-1.fc39) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_113000_071417_6F54824A 
X-CRM114-Status: GOOD (  12.18  )
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

TGUgdmVuZHJlZGkgMTYgZsOpdnJpZXIgMjAyNCDDoCAxMTowMyArMDEwMCwgS3J6eXN6dG9mIEtv
emxvd3NraSBhIMOpY3JpdMKgOgo+IE9uIDE2LzAyLzIwMjQgMTA6NDksIFNocmVleWEgUGF0ZWwg
d3JvdGU6Cj4gPiBFeHBvcnQgaGRtaXJ4X2JpdSBzb2Z0IHJlc2V0IGlkIHdoaWNoIGlzIHJlcXVp
cmVkIGJ5IHRoZSBoZG1pcnggY29udHJvbGxlci4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogU2hy
ZWV5YSBQYXRlbCA8c2hyZWV5YS5wYXRlbEBjb2xsYWJvcmEuY29tPgo+ID4gLS0tCj4gPiAgZHJp
dmVycy9jbGsvcm9ja2NoaXAvcnN0LXJrMzU4OC5jICAgICAgICAgICAgICAgfCAxICsKPiA+ICBp
bmNsdWRlL2R0LWJpbmRpbmdzL3Jlc2V0L3JvY2tjaGlwLHJrMzU4OC1jcnUuaCB8IDIgKysKPiAK
PiBQbGVhc2UgcnVuIHNjcmlwdHMvY2hlY2twYXRjaC5wbCBhbmQgZml4IHJlcG9ydGVkIHdhcm5p
bmdzLiBTb21lCj4gd2FybmluZ3MgY2FuIGJlIGlnbm9yZWQsIGJ1dCB0aGUgY29kZSBoZXJlIGxv
b2tzIGxpa2UgaXQgbmVlZHMgYSBmaXguCj4gRmVlbCBmcmVlIHRvIGdldCBpbiB0b3VjaCBpZiB0
aGUgd2FybmluZyBpcyBub3QgY2xlYXIuCj4gCj4gUGxlYXNlIGRvIGludGVybmFsIHJldmlldy4g
VGhlIGludGVybmFsIENvbGxhYm9yYSByZXZpZXcgd291bGQgdGVsbCB5b3U6Cj4gWU9VIE1VU1Qg
cnVuIGNoZWNrcGF0Y2guIFRoZW4geW91IHNlZSBlcnJvcnMsIHNvIHdoeSBkbyB5b3Ugc2VuZCBw
YXRjaAo+IHdpdGggZXJyb3JzIHRvIHRoZSBtYWlsaW5nIGxpc3Q/CgpNaXN0YWtlcyBoZWxwcyB5
b3UgbGVhcm4uIE1lYW53aGlsZSwgSSd2ZSB0cmlnZ2VyZWQgb3VyIHRlbXBvcmFyeSBDSSB3aGlj
aApob3BlZnVsbHkgd2lsbCBjYXRjaCB0aGlzIGFuZCBzb21lIG1vcmUgZm9yIGEgYmV0dGVyIHYy
LiBTaHJlZXlhLCBJIGRvbid0IHRoaW5rCnRoaXMgaW5jbHVkZXMgYW55IERUIGF1dG9tYXRlZCBj
aGVja3MsIHRoaXMgaXMgb24geW91LgoKaHR0cHM6Ly9naXRsYWIuY29sbGFib3JhLmNvbS9saW51
eC9idWlsZC1zY3JpcHRzLy0vcGlwZWxpbmVzLzg1OTM1Cgo+IAo+IEJlc3QgcmVnYXJkcywKPiBL
cnp5c3p0b2YKPiAKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
