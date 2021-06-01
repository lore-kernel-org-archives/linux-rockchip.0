Return-Path: <SRS0=yzvA=K3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-19.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	INCLUDES_PULL_REQUEST,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D675C4708F
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 17:39:56 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6727961042
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Jun 2021 17:39:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6727961042
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ai97mR9fIoB/JPbl8WZ7Ad0Av4qTKpRwVNTvEyupRH4=; b=ucuS0uGidc0wbl
	SI9PEZ+NDgYL4dKEbysFb1WTirK3WL9uSZ/B6NAkzZMQFBU7TVXjs+wjz131ql1r+6x5STfRRCSo/
	Lq+3MYG21BKTeQm7SxkFA5nFoPpkOXW1/pe9MPfElqOPfW6SHjnObXrUUSj5aK4wAg0H83jr85q8t
	+Y78AKUH17xRRKBAO0xTN6MlW9a3C59n/axDa6ZIJKN6k49K3+ogAKHXMFc1axL2Zn0QzGnzcXWU9
	+zJt+DLauyfyvtfAdlrLUOAQjWkziGSnpiZ9MyLc6Wa9ApCp9Wo3AyEdFripGkoaTB0lZ8nzjBJbA
	a7ISFcHmoKEPbBoCTF+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lo8Mo-000711-Hv; Tue, 01 Jun 2021 17:39:50 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lo8Mm-0006zP-B8
 for linux-rockchip@lists.infradead.org; Tue, 01 Jun 2021 17:39:49 +0000
Received: by mail-wm1-x330.google.com with SMTP id
 p13-20020a05600c358db029019f44afc845so106671wmq.3
 for <linux-rockchip@lists.infradead.org>; Tue, 01 Jun 2021 10:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=ckX1hE1X5h3eT0h/m87roO0T13qKCf4f5KvdLUNsq4o=;
 b=hCdIvaZ3ggx8MJWwoI0wdAuLtfW3Tu9VYnkPDYEyLybyzS91y4mMITNwwa3QL/4Mht
 oqjHcCf6UcjMyDqtkLezt7g4DiJvUGzl1UOXKkNC5NNxDoU5b/GKM6bC4Uix0LLXRGuf
 kkA5TROosspb4tYpPJKYmIDMAGXmGls5jkGPEoCPOvPZRAIVpgGuQn9WM0T5kBApiJY4
 UP7wcZ3qL1dlssEPeUuhP42iAUlffeFRSEj6I8T+qUd7Wds2iIpTTG5XwxueqIO52AQ9
 0vIkWml2TMbGzeVvKYxoEqFPe/vS1dEP/4n2GuCBA9g8mW1yN4hnbCs+R29cj4ciBhm8
 Opww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=ckX1hE1X5h3eT0h/m87roO0T13qKCf4f5KvdLUNsq4o=;
 b=JQsGFwj5L4OgS8p3mgZsrWIACcJpsERtOeHkF2bJW/e6W8zXZDCGM60KIVWT90FdZI
 OkqZaxId1ApTu44AHp0AHA7UYHFsfQE+bvb53o3/fVp/xSo2h5G0X6jEo7OZno4Ky/MN
 6Mw8Eq1ELFayJs4HGpRvXbZn7NQ987KI4qND1hqjObtNIUFz36rCIGgiZLcZse1Z0wWy
 PgsGzXsONlSJmpqBlxQ7Z0923LMyYzL5hLjyTF0tRHp3jPOqXFM5I3isMbWKh1CxaFwR
 7ebGU3cn/JCw3mgNCwKgtD4ziAcgxnR8EEj98QnaKQMaS8rKsxEv3t7g5fuSL6aRW7jY
 kj2A==
X-Gm-Message-State: AOAM5335mySZnumDeAnQX2gxNbcyuR20VF434lM9x7pc0bLUxZj3H40E
 AEVVuypCeQs7X4V8Y2KYHQjJCQ==
X-Google-Smtp-Source: ABdhPJxdYv0jyO7O9FAIymUSdidBrGWPRyusB38lpaRJIWB099ppNWFyLEdGstcGhIf1QxHTUYR1vQ==
X-Received: by 2002:a1c:4d09:: with SMTP id o9mr6206006wmh.149.1622569186491; 
 Tue, 01 Jun 2021 10:39:46 -0700 (PDT)
Received: from dell ([91.110.221.249])
 by smtp.gmail.com with ESMTPSA id h46sm4352686wrh.44.2021.06.01.10.39.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Jun 2021 10:39:45 -0700 (PDT)
Date: Tue, 1 Jun 2021 18:39:44 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: alsa-devel@alsa-project.org, broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com,
 heiko@sntech.de, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [GIT PULL] Immutable branch between MFD and ASoC due for the
 v5.14 merge window
Message-ID: <20210601173944.GA2173308@dell>
References: <20210519203754.27184-1-macroalpha82@gmail.com>
 <20210601140145.GH543307@dell> <20210601155832.GC2165650@dell>
 <20210601171708.GA3529@wintermute.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210601171708.GA3529@wintermute.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210601_103948_459174_BE6BA93B 
X-CRM114-Status: GOOD (  20.59  )
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

T24gVHVlLCAwMSBKdW4gMjAyMSwgQ2hyaXMgTW9yZ2FuIHdyb3RlOgoKPiBPbiBUdWUsIEp1biAw
MSwgMjAyMSBhdCAwNDo1ODozMlBNICswMTAwLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiBPbiBUdWUs
IDAxIEp1biAyMDIxLCBMZWUgSm9uZXMgd3JvdGU6Cj4gPiAKPiA+ID4gSSd2ZSBhcHBsaWVkIHRo
ZSBub24tQXJtIHBhdGNoZXMuCj4gPiA+IAo+ID4gPiBUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2lu
Y2UgY29tbWl0IDZlZmI5NDNiODYxNmVjNTNhNWU0NDQxOTNkY2NmMWFmOWFkNjI3YjU6Cj4gPiA+
IAo+ID4gPiAgIExpbnV4IDUuMTMtcmMxICgyMDIxLTA1LTA5IDE0OjE3OjQ0IC0wNzAwKQo+ID4g
PiAKPiA+ID4gYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0IHJlcG9zaXRvcnkgYXQ6Cj4gPiA+IAo+
ID4gPiAgIGdpdDovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC9sZWUv
bWZkLmdpdCB0Yi1tZmQtYXNvYy12NS4xNAo+ID4gPiAKPiA+ID4gZm9yIHlvdSB0byBmZXRjaCBj
aGFuZ2VzIHVwIHRvIDQzN2ZhYWE2Y2ViYWRmOGZmNGMyYzI4ZDdjYjI2ZWQ0ZTM0YWViMTQ6Cj4g
PiA+IAo+ID4gPiAgIGR0LWJpbmRpbmdzOiBBZGQgUm9ja2NoaXAgcms4MTcgYXVkaW8gQ09ERUMg
c3VwcG9ydCAoMjAyMS0wNi0wMSAxMzo0MDo0MSArMDEwMCkKPiA+ID4gCj4gPiA+IC0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0K
PiA+ID4gSW1tdXRhYmxlIGJyYW5jaCBiZXR3ZWVuIE1GRCBhbmQgQVNvQyBkdWUgZm9yIHRoZSB2
NS4xNCBtZXJnZSB3aW5kb3cKPiA+ID4gCj4gPiA+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ID4gQ2hyaXMgTW9yZ2Fu
ICgzKToKPiA+ID4gICAgICAgbWZkOiBBZGQgUm9ja2NoaXAgcms4MTcgYXVkaW8gQ09ERUMgc3Vw
cG9ydAo+ID4gPiAgICAgICBBU29DOiBBZGQgUm9ja2NoaXAgcms4MTcgYXVkaW8gQ09ERUMgc3Vw
cG9ydAo+ID4gPiAgICAgICBkdC1iaW5kaW5nczogQWRkIFJvY2tjaGlwIHJrODE3IGF1ZGlvIENP
REVDIHN1cHBvcnQKPiA+ID4gCj4gPiA+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGlu
Z3MvbWZkL3JrODA4LnR4dCB8IDE4OCArKysrKysrKysKPiA+ID4gIGRyaXZlcnMvbWZkL3JrODA4
LmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgIDgxICsrKysKPiA+ID4gIGluY2x1ZGUv
bGludXgvbWZkL3JrODA4LmggICAgICAgICAgICAgICAgICAgICAgIHwgIDgxICsrKysKPiA+ID4g
IHNvdW5kL3NvYy9jb2RlY3MvS2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICAgIHwgICA2ICsK
PiA+ID4gIHNvdW5kL3NvYy9jb2RlY3MvTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgIHwg
ICAyICsKPiA+ID4gIHNvdW5kL3NvYy9jb2RlY3Mvcms4MTdfY29kZWMuYyAgICAgICAgICAgICAg
ICAgIHwgNTM5ICsrKysrKysrKysrKysrKysrKysrKysrKwo+ID4gPiAgNiBmaWxlcyBjaGFuZ2Vk
LCA4OTcgaW5zZXJ0aW9ucygrKQo+ID4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IHNvdW5kL3NvYy9j
b2RlY3Mvcms4MTdfY29kZWMuYwo+ID4gCj4gPiBMb29rcyBsaWtlIHRoZSBidWlsZGVycyByZXBv
cnRlZCBhIFc9MSB3YXJuaW5nIGludHJvZHVjZWQgYnkgdGhlIHNldC4KPiA+IAo+ID4gV291bGQg
eW91IGxpa2UgbWUgdG8gZml4IGl0IGFuZCBzdWJtaXQgYSBwYXRjaD8KPiAKPiBJIGNhbid0IHNl
ZW0gdG8gcmVwcm9kdWNlIHRoZSB3YXJuaW5nLCBhcmUgdGhlcmUgbW9yZSBkZXRhaWxzIGFzIHRv
Cj4gd2hhdCBpcyBjYXVzaW5nIGl0PwoKWWVzLCBpdCdzIGEgVz0xIHdhcm5pbmcuICBQdXQgdGhh
dCBvbiB5b3VyIGNvbW1hbmQgbGluZS4KCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KU2VuaW9y
IFRlY2huaWNhbCBMZWFkIC0gRGV2ZWxvcGVyIFNlcnZpY2VzCkxpbmFyby5vcmcg4pSCIE9wZW4g
c291cmNlIHNvZnR3YXJlIGZvciBBcm0gU29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3
aXR0ZXIgfCBCbG9nCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
