Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAA95EDEC06
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Mar 2026 03:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0OT4sfDTvtEqB5qNHFdiWn1dqIW9HKqq3Ce/2worhGg=; b=SEk0VNfWeM6JeS
	1MOFkf4E7NXI3RSSl7mnblR1WklDhiYeBD9QJnoW8/BtIXh1sSjbwzXTLhkLJw59xBXx0eQIRAuoE
	15SeaB1YeyhfnEGZjaNSe4+s1w8g78peCUEDqe2z0l0J1apkYTtOhClg6lEy06QL1RstK57cKeIZx
	Uo0rM5nxAZw6LyoePU8WswVQi/I8IJ/KAl81rwitp+IFVpigoUEeniwvSpx3dhIWN9AEHy6w0hqXU
	poeEnOsY00J3ujgSF/VsMlSe7cww7WT3/bBI4PjRfhK4CzN0aToxeODs488CNHO0njKwrdysmlKfD
	xWvza6g53lRK+ODOewPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxdBJ-0000000GOar-27zp;
	Wed, 04 Mar 2026 03:45:53 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxdBH-0000000GOZr-0LOp
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Mar 2026 03:45:52 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-439c5b40f60so458824f8f.0
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Mar 2026 19:45:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772595949; cv=none;
        d=google.com; s=arc-20240605;
        b=MO7O5g+sRewuuhnn4lXIyiZmLwA0dkRFJFjLsSHz9iZZDfqmd5ZEXJMhVhFQ+dqxkJ
         8CLIi0yIlGkC3kfVf5PIoZOVKYoMRf8Rk7tx2jn0XNK7P9HnClWWohUOAHL6cdHz0wG/
         puQYJnZut+8k/KmIERTSqDkDus5KFJ3a3Z14USgQx9UP4EqDB1rKXg0b6xlv9WV3ORAs
         h2nsGBfpOuuNA+X1FUCPXvScMRIhs94jGB186tIpfkJNjT+Ld4TSK3e8snIhc+7lLAg2
         n2O8PEZmNIsnOL/F5JrbnzoFvi2sQtA74QisXKyAs9d7cmbnQp1EkDdfGppNq1AFKXjP
         nM6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=0ck0SxwPDcv+Zqhqz8cZVKiShWiiww33rNFdcafCJLs=;
        fh=rjyAcvKC7elUY6+d9iLSswG5LSLu13ubvuuaK6gIzRQ=;
        b=D3UN5TxYEZpY6Bnh8NyGy4dQYWeO+IAPhJNes70nmJvUO637VbITjXvhqOuwPupxLs
         xLkXjgHhoxJoYsK48B0tGyFFlffP+bjfAJJV9ul2Lm1L+0icy7FKgCyRfidow7CBG0N1
         SaRxls7ILM7kKNFSb0GgPMU7YkQr1t0weep38smyBKIB6T2WRK0Hfvz+eRYEy7PhwRUl
         NqwQM/HSXQZ8kO3XarXIUwD+n+sfIuXITKQ2QTye3pVnM5K58ModwIltRgCkQFVqI0aP
         aaoGM9qYGLoJGsWiSoV8P+EK3UIp8v4EexxXxmdDnimD8zb8xaCsmr7r78HT92/n/umg
         kybA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772595949; x=1773200749; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0ck0SxwPDcv+Zqhqz8cZVKiShWiiww33rNFdcafCJLs=;
        b=fmIg1UnY30p6424AtdjLHzjf2vm2idkPPHNkjaYnu4CskTcthrz8znblfHelSiJNlA
         KNYggQvyos7T3qu5HptC93dngcBsZ7ygaCQt7cu51hKshwy2PY7IVVKacCOJnqCQYBWT
         9eQ3CcTA0jsf7tit95P0goTJh+XjgtQBPPBeMTZtbN9bw5O8VLgI2SJhinTp4XRTWarD
         k0yQXPYt+Me5IWeykfxMM7XM+SOMKTzV2UkBLpvEgYXsbLI4tl5uXNV2v/z1LsLpG+OJ
         f3YFZ4+S7Yvx7COTQaJauXtldEowOtqF62K1fJIB/sKx5J0U8bBCe5kFgHYb4TqKvijp
         NNJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772595949; x=1773200749;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0ck0SxwPDcv+Zqhqz8cZVKiShWiiww33rNFdcafCJLs=;
        b=k6cnisbzT/mcHPJEnimNBipUAh7+61zwbEWu+yjMetVqbxBtaEPwlwcdf/UHOE7LGS
         XuoRNPUppxYS1ddVRmPjVA3+MbypgR16s7Zdmb5sWlYwFruK+94dbRxGipovSI4aMuE0
         BSVXx+We3ILMu5Gqoz2jj1P6UEgcoM4V0HyqmPPRMlV1tgQkOkJ3DtDEIykaV5kasnqP
         r22494pFU6PoLfLxM1doSBPlrH9BqW5cwK4nOSrmRAL3UQVFaPeB3Nbu29EVXVaF0PQz
         rT5h3nUh2eyKUjVfjmzx+vWc11+B5F4BTxC+b1DW5D0ZtyRPyoyUQ4/p5ricJGNBYWh8
         gtog==
X-Forwarded-Encrypted: i=1; AJvYcCXNr0df/anR7pj4SJm9hNm0Z0KyByNTkbSrXVWIPzQvB/BeesuBIiNjhjmWXhfiai64pUnasANa+oFUMZiBRA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+DncKYyK+AaTkUkAnZeVFxlHPiP8TuFGYOX3R5RMNOFc8T8h7
	VjgQZeSD6nLRhSW88pFj0xuLxJZZPlmzHw01iuUdPDE1x47sTSptQpXpmMiNZcl/7jwcoZqNhlT
	j1nMABg+n8REVQNwz41kdnXyg3f/y31s=
X-Gm-Gg: ATEYQzzI8o4jWOznC5+csFsBNf64ulldvFX1yEj4xF1AohKGkLiZ4DHbsUPI4QguIa1
	WZMr8nRT2KO+gdQjM43mefphTDOpTkoE1IduT4PP4g4rharx59aBSNZwClvaRbOd4n3x4RrefXm
	e3wIImYtLWdEsan2punqSq/Y35bjVybMwagmPrSxmIIu57HbXYOivQAdbq2uYqLXQbgcS7rokoR
	qHhPvVN8Th7XEQtx6Nfnwi5SI6SW8f8T+SwCDs4ZWnc1nH7VJRYIEa6Kv9vXEIJvjKqr93h1ZFZ
	2BJY2BZyuzJSwCYx3+xggC8w6YMEP69gWMYiKqI=
X-Received: by 2002:a05:6000:1acc:b0:439:ac53:a94d with SMTP id
 ffacd0b85a97d-439c80005a2mr1016259f8f.29.1772595949061; Tue, 03 Mar 2026
 19:45:49 -0800 (PST)
MIME-Version: 1.0
References: <20260228205418.2944620-1-dennis@ausil.us> <20260228205418.2944620-3-dennis@ausil.us>
 <CALWfF7LZV07x7zAgufE_aa58s7x6e_ODAM2LgZqjbEakDticpA@mail.gmail.com> <CAABkxwsJ2ZnytCcHEvXWzNkjwzNThoTR23FAeHJLdf4JjXJEMg@mail.gmail.com>
In-Reply-To: <CAABkxwsJ2ZnytCcHEvXWzNkjwzNThoTR23FAeHJLdf4JjXJEMg@mail.gmail.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Tue, 3 Mar 2026 21:45:37 -0600
X-Gm-Features: AaiRm510_muOP2trKshqRAe1MQ9prhJ4qP0ttHmvpYHaggzE4klTOIJdcnDBxLM
Message-ID: <CALWfF7+gdNqSgzk4uAnVRkG8vT9FwJDV46VXpb26hd7BzdaGcw@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
To: Dennis Gilmore <dennis@ausil.us>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, 
	Hsun Lai <i@chainsx.cn>, Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	John Clark <inindev@gmail.com>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Andrew Lunn <andrew@lunn.ch>, 
	Alexey Charkov <alchark@gmail.com>, Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260303_194551_172274_7B93E79B 
X-CRM114-Status: GOOD (  13.97  )
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

T24gVHVlLCBNYXIgMywgMjAyNiBhdCAxOjQz4oCvUE0gRGVubmlzIEdpbG1vcmUgPGRlbm5pc0Bh
dXNpbC51cz4gd3JvdGU6Cj4KPiBPbiBNb24sIE1hciAyLCAyMDI2IGF0IDExOjU34oCvUE0gSmlt
bXkgSG9uIDxob255dWVua3d1bkBnbWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+IEhpIERlbm5pcywK
PiA+Cj4gPiBTb21lIGN1cmlvc2l0aWVzIGJlbG93LAo+ID4KPiA+IE9uIFNhdCwgRmViIDI4LCAy
MDI2IGF0IDI6NTTigK9QTSA8ZGVubmlzQGF1c2lsLnVzPiB3cm90ZToKPiA+IDxzbmlwPgo+ID4g
PiArCj4gPiA+ICsgICAgICAgLyogUHJvIHVzZXMgZ3Bpby1sZWRzIGluc3RlYWQ7IHB3bTAgTEVE
IGlzIG5vdCB3aXJlZCB1cCAqLwo+ID4gPiArICAgICAgIC9kZWxldGUtbm9kZS8gcHdtLWxlZHM7
Cj4gPiA8c25pcD4KPiA+ID4gKwo+ID4gPiArICAgICAgIGdwaW8tbGVkcyB7Cj4gPiA+ICsgICAg
ICAgICAgICAgICBjb21wYXRpYmxlID0gImdwaW8tbGVkcyI7Cj4gPiA+ICsgICAgICAgICAgICAg
ICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4gPiArICAgICAgICAgICAgICAgcGluY3Ry
bC0wID0gPCZsZWRzX3JnYj47Cj4gPiA+ICsKPiA+ID4gKyAgICAgICAgICAgICAgIGJsdWUtbGVk
IHsKPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgY29sb3IgPSA8TEVEX0NPTE9SX0lEX0JM
VUU+Owo+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBmdW5jdGlvbiA9IExFRF9GVU5DVElP
Tl9TVEFUVVM7Cj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGdwaW9zID0gPCZncGlvMSBS
S19QQzYgR1BJT19BQ1RJVkVfSElHSD47Cj4gPiBIb3cgY29tZSB5b3UgZGVjaWRlZCBncGlvLWxl
ZHMgaW5zdGVhZCBvZiBwd20tbGVkcyBmb3IgdGhpcz8gR1BJTzEgQzYKPiA+IGlzIG11eGVkIHdp
dGggUFdNMTVfSVJfTTIKPgo+IHRoZSBkb3duc3RyZWFtIGR0cyB1c2VzIGdwaW8tbGVkcyAgdGhl
IEdQSU8gY29tZXMgZnJvbSB0aGUgc2NoZW1hdGljCkl0IHNob3VsZCBiZSBmaW5lIHRvIHVwZ3Jh
ZGUgdG8gcHdtLWxlZHMgd2hlbiBhZGRpbmcgaW50byBtYWlubGluZS4KVGhlIE9yYW5nZSA1IFBs
dXMgZGlkLgpJbiB0aGUgZG93bnN0cmVhbSBEVFMsIHRoZXkgdXNlZCBncGlvLWxlZCBmb3IgdGhl
IGdyZWVuIGxlZApodHRwczovL2dpdGh1Yi5jb20vb3JhbmdlcGkteHVubG9uZy9saW51eC1vcmFu
Z2VwaS9ibG9iLzIzMmVkNGI5N2I2NWRhMmI3YjY0N2M0ZTNjNDk2Zjg1OTRiOWYzZjEvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtb3JhbmdlcGktNS1wbHVzLmR0cyNMMzEtTDM2
CkJ1dCBpbiB0aGUgbWFpbmxpbmUga2VybmVsLCBpdCB3YXMgY29udmVydGVkIHRvIHVzZSBwd20t
bGVkLgpodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2
YWxkcy9saW51eC5naXQvY29tbWl0L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4
LW9yYW5nZXBpLTUtcGx1cy5kdHM/aWQ9MjM2ZDIyNWUxZWU3MmEyOGFhN2MyYjFlMzk4OTRlNDM5
MGJiZjUxYwoKSmltbXkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
