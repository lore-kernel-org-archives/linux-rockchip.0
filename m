Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8767CC47258
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jan 2024 19:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUYehw77HFgPD6xKt8D1RDvIFV98OKT2aaD8hDGrJVQ=; b=qUAelOrVBwVNrx
	2JGaEixydBQWadWvyyXN0ZxX7ZJ/eFrw5ERMulUcYwuB1rMoIpLb+hpTMwwKjcv1tu155eLvbeO99
	KM6WcwuYKTpQWyjNRpFHWXVGXBx/DKnuCnWhKC8yRqaCpA9rdr7YJrReOaO9wUmFJphK/DwNPr/21
	ep8vdtFlFfAtisMipFlDnejbvsszslkxUjko97Hl4/IcHoNV80qjR4rg/cIuNk316ls90HSqKGQNF
	09xdPk9V+Y2T1WSQOM1G3R561z7+iDG3S3WYbRNFXYKzj7d3XFVUWnhwsuOidISXLmLX3lmOcie6y
	XcYVU9/+NYApfv66uXfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQBOy-000TOJ-2z;
	Wed, 17 Jan 2024 19:16:40 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQBOn-000THz-1A
	for linux-rockchip@lists.infradead.org;
	Wed, 17 Jan 2024 19:16:39 +0000
Received: by mail-qk1-x732.google.com with SMTP id af79cd13be357-78339210979so703600785a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 17 Jan 2024 11:16:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1705518985; x=1706123785; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ogRg9OKr3TtBbn27PlJROK+uQ9hsjKmTfDTYT7Icesk=;
        b=T9g1m0i9NOWwjqSA/Uw3OYjotQN+3LfQR9u1/y2+bzSqFg7djAOH33N3FeaWv8e62L
         PKGOrcUAeUsi4GNzZnMcl0zOVJQiFPirlXwh0gfaNgIDLUUdNrrto+UZDpB0ab3SN59O
         lkoDbMUSqBlWbtMiXbMikFU56BZTtK6j8dffCxHXxMq1uUigl8mX1gNC43uEiEODe8NQ
         oolaOisPSluMOb/yF0AUWhkmsrbsOxFIAVhbtp5XBP4AFDhFzJyv1/od9VQ4JZO9658M
         k3A9hx6GcL9QsOgfHIiaipvqyKfqDYVlfdPy9Og0w5IKzNjUGUjd32+TcUyReccQ0zfc
         Vyrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705518985; x=1706123785;
        h=mime-version:user-agent:content-transfer-encoding:autocrypt
         :references:in-reply-to:date:cc:to:from:subject:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ogRg9OKr3TtBbn27PlJROK+uQ9hsjKmTfDTYT7Icesk=;
        b=MLSDnrJmeNT09o5SGkdqoziQ5rC45OIp836WdF5ViVPZj+2n3GQx0yf6Mt8cDMSjbz
         ovadQ9DwBxZt9eiYwx0k41mBJ2Dee9AU1yLI9tTWv6sPgDnxO8J23di3GSlzmY33htsZ
         RuV6yHUTotIrj5Hs8eKUghXLjX7q27pSl3Zb0g0t318bJVSsg0KrMMmV/6yUs/XlxfRK
         5rCSnp45F8ohHSVvKDCtWo2GJm04cRW61qPVcqrWYbtRgUKLj2knIIs8SBbUGgivpTkH
         FQMrAtf/TKwbNKzZyaJ+UpgBJS6DRQobXfeBuFsPCiBEcMNGoqivuG9jFyGf5VC3efRv
         wBrA==
X-Gm-Message-State: AOJu0YwZ72OXhADnjqQjah2utup7aTvhqHCPhoCH7cLXISpml5V/GMCw
	PUMDkPORtblHodGahxq8B0+mh8rpW06t/Q==
X-Google-Smtp-Source: AGHT+IExD4ARxCYdtDNLXXKK3wVBqruhp2TE7y6AV1ldpW1kqPOB4yyOE9by3LE6Xo8IHL6TwnwP5g==
X-Received: by 2002:a05:620a:4551:b0:783:3423:c76d with SMTP id u17-20020a05620a455100b007833423c76dmr12230144qkp.1.1705518985398;
        Wed, 17 Jan 2024 11:16:25 -0800 (PST)
Received: from nicolas-tpx395.localdomain ([2606:6d00:11:3354::7a9])
        by smtp.gmail.com with ESMTPSA id w9-20020a05620a148900b0078322355fb7sm4715898qkj.20.2024.01.17.11.16.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jan 2024 11:16:25 -0800 (PST)
Message-ID: <5490507acc121113e52a8cdddb155fddf6dbb374.camel@ndufresne.ca>
Subject: Re: [PATCH v3 0/2] [v3]Add hantro g1 video decoder support for
 RK3588
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Jianfeng Liu <liujianfeng1994@gmail.com>, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, heiko@sntech.de, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org
Date: Wed, 17 Jan 2024 14:16:24 -0500
In-Reply-To: <20231231151112.3994194-1-liujianfeng1994@gmail.com>
References: <20231231151112.3994194-1-liujianfeng1994@gmail.com>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual; keydata=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
User-Agent: Evolution 3.50.3 (3.50.3-1.fc39) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_111636_515887_D914316C 
X-CRM114-Status: GOOD (  15.74  )
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
Cc: sfr@canb.auug.org.au, Ezequiel Garcia <elezegarcia@gmail.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, knaerzche@gmail.com, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

TGUgZGltYW5jaGUgMzEgZMOpY2VtYnJlIDIwMjMgw6AgMjM6MTEgKzA4MDAsIEppYW5mZW5nIExp
dSBhIMOpY3JpdMKgOgo+IFRoaXMgaXMgdGhlIHYzIHZlcnNpb24gb2YgdGhpcyBzZXJpZXMgYWRk
aW5nIGhhbnRybyBnMSB2aWRlbyBkZWNvZGVyCj4gc3VwcG9ydCBmb3IgcmszNTg4Lgo+IAo+IFJL
MzU4OCBoYXMgSGFudHJvIEcxIHZpZGVvIGRlY29kZXIga25vd24gYXMgVkRQVTEyMSBpbiBUUk0g
b2YgUkszNTg4IHdoaWNoCj4gaXMgY2FwYWJsZSB0byBkZWNvZGUgTVBFRzIvSC4yNjQvVlA4IHVw
IHRvIDE5MjB4MTA4OC4gVGhpcyB2cHUgaXAgaXMgYWxzbwo+IGZvdW5kIGluIFJLMzU2OC4KClRo
ZSBvbmx5IGNvbmNlcm4gSSBoYXZlIGlzIHRoYXQgd2UgcmVqZWN0ZWQgZW5hYmxpbmcgdGhpcyBW
UFUgb24gUkszMzk5LCBzaW5jZQpoYXZpbmcgdHdvIEguMjY0IGRlY29kZXJzIHdhcyBjb25mdXNp
bmcgdXNlcnNwYWNlIHNvZnR3YXJlcyBhdCB0aGUgdGltZSwgY2F1c2luZwp0aGUgc2xvdyBvbmUg
dG8gYmUgcGlja2VkIHNvbWV0aW1lcy4gSSBrbm93IHRoZSBzZWxlY3Rpb24gaXMgbm90IGZ1bGx5
CmltcGxlbWVudGVkIGluIEdTdHJlYW1lciBlaXRoZXIsIG5vdCBzdXJlIGZvciBMaWJyZUVMRUMg
ZmZtcGVnIGZvcmssIENocm9taXVtIG9yCkNyb3MtY29kZWMuCgpPZiBjb3Vyc2UsIGl0cyBub3Qg
YSBwcm9ibGVtIG5vdywgYnV0IG9ubHkgd2hlbiBzb21lb25lIHByb3ZpZGVzIGFuIHJrdmRlYzIK
ZHJpdmVyIHRoYXQgZW5hYmxlcyB0aGUgbXVjaCBtb3JlIGNhcGFibGUgSFcgZGVjb2Rlci4gU2hh
bGwgd2UgaG9sZCBvbiBILjI2NAptYWlubGluZSBmb3Igbm93ID8KCk5pY29sYXMKCj4gCj4gVGVz
dCByZXN1bHRzIGZyb20gZmx1c3RlciBjYW4gYmUgZm91bmQgZnJvbSB0aHJlYWQgb2YgdjJbMV1b
Ml0uCj4gCj4gWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC9DQUFYTnhNVDNmNjgtcHRN
N0NyaHJmbW43aXdUeUpjOXB3ejRCZW9iKzViZVZPRGFTSFFAbWFpbC5nbWFpbC5jb20KPiBbMl0g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjMxMjMwMTUzMTU5LjM3NDg1ODAtMS1saXVq
aWFuZmVuZzE5OTRAZ21haWwuY29tCj4gCj4gCj4gQ2hhbmdlcyBpbiB2MzoKPiAgLSBEcm9wIGNv
ZGUgaW4gaGFudHJvX2Rydi5jIGJlY2F1c2UgaGFudHJvIGcxIHZwdSBpbiByazM1ODggaXMgY29t
cGF0aWJsZQo+IHdpdGggdGhlIG9uZSBpbiByazM1NjgsIG9ubHkgYWRkaW5nIGRldmljZXRyZWUg
bm9kZSBzaG91bGQgd29yay4KPiAgLSBDaGFuZ2UgZGV2aWNldHJlZSBub2RlIG5hbWUgdG8gdmlk
ZW8tY29kZWNAZmRiNTAwMDAgdG8gbWF0Y2ggdGhlIHJlZwo+IGFkZHJlc3MuCj4gIC0gQWRkIGR0
LWJpbmRpbmdzIHJvY2tjaGlwLHJrMzU4OC12cHUgY29tcGF0aWJsZSB3aXRoIHJvY2tjaGlwLHJr
MzU2OC12cHUKPiAgLSBMaW5rIHRvIHYyOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAy
MzEyMjgxMzE2MTcuMzQxMTU2MS0xLWxpdWppYW5mZW5nMTk5NEBnbWFpbC5jb20KPiAKPiBKaWFu
ZmVuZyBMaXUgKDIpOgo+ICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBIYW50cm8gRzEgVlBV
IHN1cHBvcnQgZm9yIFJLMzU4OAo+ICAgZHQtYmluZGluZ3M6IG1lZGlhOiByb2NrY2hpcC12cHU6
IEFkZCByazM1ODggdnB1IGNvbXBhdGlibGUgc3RyaW5nCj4gCj4gIC4uLi9iaW5kaW5ncy9tZWRp
YS9yb2NrY2hpcC12cHUueWFtbCAgICAgICAgICB8ICAzICsrKwo+ICBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OHMuZHRzaSAgICAgfCAyMCArKysrKysrKysrKysrKysrKysrCj4g
IDIgZmlsZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKQo+IAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
