Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6808FD2502D
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Jan 2026 02:04:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=46F5ftRoj7MTTSrFTxd/EDDT7zkBiYQYXgJrhay+bP4=; b=hY4Ji1KDGno0a4
	cC/ZTL9QPRyxD7AiTzJ25E68W2WndATihAA5BYFJbsdwWOA5rv0ARYNAgfGNm3x5qie0FdeXiB/RJ
	hI9u5Y2eradMneW6u72ShYE9m7tEl7BJT3ywNx7Svx+3V+RdftkQp44AzlcGFyRlW0pH7wySzbbGr
	jjW0K5nh3nnfN2nUygr314iGg+kfGMkHOGW8iZ6D3XQLWw28EtRwjZA/McGPb7uQSW8X6oyQIrWip
	GjlKionhJnHwg2vULW88NnCUel1Xi/1KVWLQwEIXsPM3s5bnddhbqufxENLxOgzU/8SmvnouAT8FG
	jVVG3off+6AiL1ydwujw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vekoP-00000003pDN-3q8L;
	Sun, 11 Jan 2026 02:04:13 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vekoM-00000003pD0-1hhT
	for linux-rockchip@lists.infradead.org;
	Sun, 11 Jan 2026 02:04:12 +0000
Received: by mail-qk1-x72c.google.com with SMTP id af79cd13be357-8bb6a27d390so342712185a.3
        for <linux-rockchip@lists.infradead.org>; Sat, 10 Jan 2026 18:04:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rowland.harvard.edu; s=google; t=1768097048; x=1768701848; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sPlKshfxSpQ0HQa+lmV2aHIJv8iEBO5t6UJUCMI+nJY=;
        b=MMHdb0N1X1B5PBiF7I3QFSp2eRbuVw7NuFn3fRHsqbqh8EGxAB5qSg7ktxCJM8bI0O
         yCfpBAobVMkstDUTLSrh+aGd/BiqBQTKD+O1l/P2Zgjpyn/ybx+d7EsRijL+GLiWbG1x
         s2uF+z0Yoa4uZGGOYle9HKPYAS7N3X1SOn9siHLFQWTaNIkJku5iiaqhiOETXXDBboLf
         CVodBkPVRd6aQkulztaKFFV5+eZ0bKSHt7AMU3L4uU+amX0pGNg18+hJryoW+l2XFhGC
         itcL2lIfSWcsQS6VOcnVjQVZUBQtnUnFaTQAqKoYlRD7ZNck+UCQcZUqJkFekPwerX3D
         ZFtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768097048; x=1768701848;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sPlKshfxSpQ0HQa+lmV2aHIJv8iEBO5t6UJUCMI+nJY=;
        b=He66vVzlG5DRY0XtwAcYFx0jRjLo4ZVMRMdughW25EcJdNFwcpDFgnQ4wij4fYjdcy
         TIEauTGzQaAHwjhSD02VvlRM0rKWBLWXu1VjXzzkzYt9eN6cj1JdqlECC2dE48BedIe1
         wNbQqGX5NMfed67Q3218MghabmSe8AyjGGGszDJYklOnDQBWNtcI2bA7Do3sFBubS41C
         3nB1yq9ClhK64M2PB4svLINKmbNBPOeudTeqtuAkGG1y1u52H8iNutwiLlWGzwBsr5di
         Ceakuo2hXz1ze58nfdUbWTbZZJUwACaHPGtSXFtZ60tVPZs6cdrU+5+pJY5OY8KFHPAs
         sJvQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYQG9VUKtQGAcKL5KgBcp1lhveZj14Uv0RUiE1FlZKIMQMG9nAmSW4bU+RggNrHig/uaZYhcqKy9Ny48Pd8w==@lists.infradead.org
X-Gm-Message-State: AOJu0YxV2I3oBOgs+80e1y2xLG8iRq2YOfMwoYcOVvAYQ5/jVfqJw/hC
	Es2NcyEE71TEPKlir+9RiqUd1uBobPA+RiLrzzj7/qFkrmRpHuJFqcLNFWhMBMoH8A==
X-Gm-Gg: AY/fxX7WA9oejh1+p63hZtcZHIdLVqBLF494gq18eNL5VUwFCUhx5TLzSqtAYZNuzFl
	jvw+nhXuYmhNKbPGn8PQ0CTMcTBxWbDQTKf/p7PmW3lov3uGEOoAZuQnr0eTPISQYlEZGzt6/3/
	2aaLnW2XQz4x2WZ99w8QMHL+rwTciKtqCG7GpPQChyj3RD9B3SFufYPx9LgA87HxI9rXSyZTvAw
	2p4PGNXSWfaSqP8mQTlXx6nFYa9KBL4tjipv/hBTLRPt+CB3dRDC8zr19xrggOKHGzOzxHB/+wz
	YFRpC8nndXz6Y/pi0WizaArjobAIha9zWamj+Q5TLHbAk7OZa7KI3YInLY8QdgXr/9XT1GLiHnA
	Cr683IZfe9bws42KxA3Pndss7zXu3ky9rYlcQgDisjsU73H0Vfpw2i8Sh0UC6WUM+JRxV5KMzY2
	0YqcJkzelgcRjK
X-Google-Smtp-Source: AGHT+IEPoPxAASdkOxBaAhyPye/IRL7zCXaZI4BaqOh1vZW3Nvc9rK2Dm+ItuSNWSSdIg7p2Nkke7g==
X-Received: by 2002:a05:620a:7006:b0:85d:aabb:47d4 with SMTP id af79cd13be357-8c38935623bmr1936873885a.6.1768097048130;
        Sat, 10 Jan 2026 18:04:08 -0800 (PST)
Received: from rowland.harvard.edu ([2601:19b:d03:1700::daa9])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c37f51bf8csm1186499685a.28.2026.01.10.18.04.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Jan 2026 18:04:07 -0800 (PST)
Date: Sat, 10 Jan 2026 21:04:05 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Huacai Chen <chenhuacai@kernel.org>
Cc: Diederik de Haas <diederik@cknow-tech.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Huacai Chen <chenhuacai@loongson.cn>, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	Shengwen Xiao <atzlinux@sina.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] USB: OHCI/UHCI: Add soft dependencies on ehci_hcd
Message-ID: <f5af98cd-6482-40c9-90b9-c8777d86f8ad@rowland.harvard.edu>
References: <0c85d288-405f-4aaf-944e-b1d452d0f275@rowland.harvard.edu>
 <CAAhV-H5GdkMg-uzMpDQPGLs+gWNAy6ZOH33VoLqnNyWbRenNDw@mail.gmail.com>
 <34c7edd0-3c0c-4a57-b0ea-71e4cba2ef26@rowland.harvard.edu>
 <CAAhV-H7j=cD9dkaB5bWxNdPtoVR4NUFvFs=n46TaNte1zGqoOA@mail.gmail.com>
 <98e36c6f-f0ee-40d2-be7f-d2ad9f36de07@rowland.harvard.edu>
 <CAAhV-H601B96D9rFrnARho4Lr9A+ah7Cx7eKiPr=epbG17ODHQ@mail.gmail.com>
 <561129d8-67ff-406c-afe8-73430484bd96@rowland.harvard.edu>
 <CAAhV-H41kwndL+oz2Gcfpe3-MCagaQd2X21gK9kMO2vpw_thhA@mail.gmail.com>
 <e6a02bff-6371-4a03-910e-b47c5eec726c@rowland.harvard.edu>
 <CAAhV-H7NGgHhrZ+oC2ZbzURj0--yVL8rpn4Z42xk9VzKD3E1Qw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAhV-H7NGgHhrZ+oC2ZbzURj0--yVL8rpn4Z42xk9VzKD3E1Qw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260110_180410_799864_12A5604E 
X-CRM114-Status: GOOD (  19.01  )
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

T24gU3VuLCBKYW4gMTEsIDIwMjYgYXQgMDk6NTQ6NDZBTSArMDgwMCwgSHVhY2FpIENoZW4gd3Jv
dGU6Cj4gT24gU2F0LCBKYW4gMTAsIDIwMjYgYXQgMTE6MDDigK9QTSBBbGFuIFN0ZXJuIDxzdGVy
bkByb3dsYW5kLmhhcnZhcmQuZWR1PiB3cm90ZToKPiA+Cj4gPiBPbiBTYXQsIEphbiAxMCwgMjAy
NiBhdCAxMjowNToxOVBNICswODAwLCBIdWFjYWkgQ2hlbiB3cm90ZToKPiA+ID4gU28gSSB0aGlu
ayB3ZSBuZWVkIGEgc29mdGRlcCBiZXR3ZWVuIG9oY2ktcGxhdGZvcm0vdWhjaS1wbGF0Zm9ybSBh
bmQKPiA+ID4gZWhjaS1wbGF0Zm9ybSwgd2hpY2ggaXMgc2ltaWxhciB0byB0aGUgUENJIGNhc2Uu
Cj4gPgo+ID4gWWVzLCBvbiB5b3VyIHBsYXRmb3JtLiAgQnV0IG5vdCBvbiBvdGhlciBwbGF0Zm9y
bXMuICAoRm9yIGV4YW1wbGUsIG5vdAo+ID4gb24gYSBwbGF0Zm9ybSB0aGF0IGRvZXNuJ3QgaGF2
ZSBhbiBFSENJIGNvbnRyb2xsZXIuKQo+IEZvciB0aGUgUENJIGNhc2UsIE9IQ0kgd2l0aG91dCBF
SENJIGlzIGFsc28gcG9zc2libGU/IFNvIEkgdGhpbmsgdGhleQo+IGFyZSBzaW1pbGFyLgoKVGhh
dCdzIGEgZ29vZCBwb2ludC4KCj4gPiBJIHRoaW5rIHRoZSBiZXN0IHdheSB0byBkbyB0aGlzIGlz
IHRvIGNyZWF0ZSBhIG5ldyBDT05GSUdfRUhDSV9TT0ZUREVQUwo+ID4gS2NvbmZpZyBzeW1ib2ws
IGFuZCBhZGQgdGhlIHNvZnQgZGVwZW5kZW5jeSBvbmx5IGlmIHRoZSBzeW1ib2wgaXMKPiA+IGRl
ZmluZWQuICBOb3JtYWxseSBpdCB3aWxsIGJlIHVuZGVmaW5lZCBieSBkZWZhdWx0LCBidXQgb24g
eW91ciBwbGF0Zm9ybQo+ID4gKGFuZCBhbnkgb3RoZXJzIHRoYXQgbmVlZCBpdCkgeW91IGNhbiBz
ZWxlY3QgaXQuCj4gPgo+ID4gSG93IGRvZXMgdGhhdCBzb3VuZD8KPiBGcm9tIG15IHBvaW50IG9m
IHZpZXcsIGtlZXBpbmcgaXQgc2ltcGxlIG1heSBiZSBiZXR0ZXIuIEkgdGhpbmsgYW4KPiB1bmNv
bmRpdGlvbmFsIHNvZnRkZXAgaXMgaGFybWxlc3MuCgpTdWJtaXQgeW91ciBwYXRjaCBhbmQgbGV0
J3Mgc2VlIHdoYXQgR3JlZyB0aGlua3MuICBZb3Ugc2hvdWxkIGluY2x1ZGUgCnRoYXQgbG9nIGV4
dHJhY3Qgd2l0aCB0aGUgZXh0cmEgZGlzY29ubmVjdC9yZWNvbm5lY3QgbWVzc2FnZXMgaW4gdGhl
IApwYXRjaCBkZXNjcmlwdGlvbiwgdG8gaW5kaWNhdGUgY2xlYXJseSB3aGF0IHlvdSB3YW50IHRv
IHByZXZlbnQuCgpBbGFuIFN0ZXJuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
