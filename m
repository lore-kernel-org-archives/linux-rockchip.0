Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E39BFC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:25:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A7FF460F45
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 14:25:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A7FF460F45
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RFfvtUYNEQvv9cnUktaQnA5BMTcrwJuIUMTGQlRyw7U=; b=l2YGg7INr3gBVp
	F2iQogc+yWYXlNwZXa+RjTT76Pfk9Bjv4wbgP7RxVsAENGc2tbL/yFrYnOmWYzWEvGvU5VEVCjMFD
	om5Dhx471GpWtZD6Eia4H82CLJI59efzTLq+XoBIr7a16nIIhyBnWw7KYprBzMCm0+wtESS9bQNJX
	4z37RYwiBzJ0FRoZ8EhMrFo/YZ0x2aq45CQGQllzq1DTzABlcb6wt5ri+jWd0vBMjOzAfgkib/NeR
	8rswKVAr5aQp0GP0eDbrduK/JQDVVLulOybncFxpyFpCITPbztQziFUDriE0KVo0tjGFJeC6CWAp4
	T0emotd/jJTwoqlH3yzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8kUq-0014dC-KE; Wed, 28 Jul 2021 14:25:20 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8kUc-0014ac-DC; Wed, 28 Jul 2021 14:25:07 +0000
Received: by mail-yb1-xb36.google.com with SMTP id a201so4179711ybg.12;
 Wed, 28 Jul 2021 07:25:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ePnN+OtKJkL4YSga85tPRB9eA7yVn2R5VVoOGu/iPn4=;
 b=QJawNYLGS+LkejlMcc+iO8GHPjaS0YTFEU85ytYOdHqqlSzjsdd8gNfjMOHaTtv6PZ
 S5lQ5eLCDahi3OYMp0zlWbME/vrXMSneZWu9PZ5SeQ95q04FyUEfBlU40Wscg1Tu3AbA
 MXULAuj+a3uT1YIx8Jk0HZgtHS4N29+mkAK+8ZW1iSqxrLebu4aY80E9newHzZLJ+ruY
 W+3oXDrYkqmZ+o6PaC7ugd6bqWfV4FwGquyL0AyAYmonEuL9ZMLJMVRJ5LZ8vD1AquJj
 nCWosFKZk8cT/B1BABmk0WTf+QKGPLEwI2nlE4Kcnnp/U3k0K1oZwn4tHxGRiigWmb0w
 BVHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ePnN+OtKJkL4YSga85tPRB9eA7yVn2R5VVoOGu/iPn4=;
 b=UEn++dX/LhwfrDx1P1m9wZgoVGNEn1+v41esSP7sKOvjJHNHzYKWtCujkNw0oed977
 22kX7Bjq0muL+Ahifmj6vPJ3dFIYquH9exNv85xbsZRqz3e9/PWgeG6p1WzIMJS+Evw8
 eeFcukZD3LWg5N/HDQyZvvmvWxeLLw9D457FWRYk4dU7d5ACsO5GRG+Luph1AtoM5jcc
 X9QHWLOQYErCcZmOxsHIOfu6QkgD2t7Wr981i+cwO3whd/YV0oSo47wiMfWgMQXGodJp
 90kCDqK+z77WB4pzDEDrriPbJhsPFgnXcNWLw007HCrFaARQua+VgPsW6TKff3Zz6f+I
 zEUw==
X-Gm-Message-State: AOAM531qyaLh8rEvhIFH/EzvFyV2yPvMkTcsPXqE1IP53PLpClCTA8jQ
 hW3eAPelZJYQpcj8JlRFdko76wAhvEtcE8P87X8=
X-Google-Smtp-Source: ABdhPJxpNbQVTXN8VTyHHLkR0omthvWuLI1ddd5xIKEcDOnhwKOKPmkLi6o50NBt/TZP4M1hufqYonkrgkYWI/eCehU=
X-Received: by 2002:a25:d113:: with SMTP id i19mr15516799ybg.39.1627482305334; 
 Wed, 28 Jul 2021 07:25:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210728135534.703028-1-pgwipeout@gmail.com>
 <20210728135534.703028-8-pgwipeout@gmail.com>
 <3555961.44csPzL39Z@diego>
In-Reply-To: <3555961.44csPzL39Z@diego>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 28 Jul 2021 10:24:53 -0400
Message-ID: <CAMdYzYruEKc8na4NPo6OkouDTAgGrSgDRbTA3fA-LMrQ6T4fYQ@mail.gmail.com>
Subject: Re: [PATCH 7/9] arm64: dts: rockchip: adjust rk3568 pll clocks
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Rob Herring <robh+dt@kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 devicetree@vger.kernel.org, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_072506_513474_C08A04BB 
X-CRM114-Status: GOOD (  22.10  )
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

T24gV2VkLCBKdWwgMjgsIDIwMjEgYXQgMTA6MDkgQU0gSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4gd3JvdGU6Cj4KPiBIaSBQZXRlciwKPgo+IEFtIE1pdHR3b2NoLCAyOC4gSnVsaSAy
MDIxLCAxNTo1NTozMiBDRVNUIHNjaHJpZWIgUGV0ZXIgR2VpczoKPiA+IFRoZSByazM1NjggZ3Bs
bCBzaG91bGQgcnVuIGF0IDEyMDBtaHogYW5kIHRoZSBwcGxsIHNob3VsZCBydW4gYXQgMjAwbWh6
Lgo+ID4gVGhlc2UgYXJlIHNldCBpbmNvcnJlY3RseSBieSB0aGUgYm9vdGxvYWRlciwgc28gZml4
IHRoZW0gaGVyZS4KPgo+IENhbiB5b3Ugc3BlY2lmeSB3aGVyZSB0aGUgInNob3VsZCBydW4gYXQi
IGNvbWVzIGZyb20/Cj4gTm9ybWFsbHkgSSdkIGFzc3VtZSBzZXR0aW5nIGRlc2lyZWQgUExMIGZy
ZXF1ZW5jaWVzIHdvdWxkIGJlIHF1aXRlCj4gYm9hcmQtc3BlY2lmaWMuCgpncGxsIGJvb3RzIGF0
IDExODhtaHosIGJ1dCB0byBnZXQgYWNjdXJhdGUgZGl2aWRlcnMgZm9yIGFsbApncGxsX2Rpdmlk
ZXJzIGl0IG5lZWRzIHRvIHJ1bgphdCAxMjAwbWh6LCBvdGhlcndpc2UgZXZlcnlvbmUgZG93bnN0
cmVhbSBpc24ndCBxdWl0ZSByaWdodC4KCnBwbGwgZmVlZHMgdGhlIGNvbWJvcGh5cywgd2hpY2gg
aGFzIGEgZGl2aWRlIGJ5IDIgY2xvY2ssIHNvIDIwMG1oeiBpcwpyZXF1aXJlZCB0byByZWFjaCBh
IDEwMG1oeiBjbG9jayBpbnB1dCBmb3IgdGhlbS4KRG93bnN0cmVhbSBhbHNvIG1ha2VzIHRoaXMg
Zml4LgoKcmszNTZ4IGhhcyBhIG51bWJlciBvZiBkaXZpZGVycyB0aGF0IHByb2R1Y2UgZXhwZWN0
ZWQgY2xvY2sgdmFsdWVzIGZvcgp2YXJpb3VzIHBlcmlwaGVyYWxzLCBzbyBjaGFuZ2luZyB0aGUg
ZGVmYXVsdHMgd291bGQgbWVhbiByZWNsb2NraW5nIGEKbnVtYmVyIG9mIGNoaWxkIGRpdmlkZXJz
LgoKPgo+IFNvIGlmIHdlJ3JlIHNldHRpbmcgZGVmYXVsdHMgZm9yIGFsbCBib2FyZHMsIEknZCBs
aWtlIHNvbWUgcmVhc29uaW5nCj4gYmVoaW5kIHRoYXQgOy0pIC4uLiBlc3BlY2lhbGx5IHdoZW4g
dGhlIG90aGVyIG9wdGlvbiB3b3VsZCBiZSB0bwo+IGZpeCB0aGUgYm9vdGxvYWRlci4KCkN1cnJl
bnRseSB3ZSBhcmUgZm9yY2VkIHRvIHVzZSBkb3duc3RyZWFtIHUtYm9vdCAobWFpbmxpbmUgaXNu
J3QgcmVhZHkgeWV0KS4KRG93bnN0cmVhbSBkb2Vzbid0IHNlZW0gdG8gd2FudCB0byBhc3NpZ24g
Y2xvY2tzIGNvcnJlY3RseSwgc28gdGhlCnNpbXBsZXN0IG1ldGhvZCByaWdodCBub3cgaXMgdG8g
aGF2ZSB0aGUga2VybmVsIGVuc3VyZSB0aGV5IGFyZQpjb3JyZWN0LgoKPgo+IFRoYW5rcwo+IEhl
aWtvCj4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBHZWlzIDxwZ3dpcGVvdXRAZ21haWwu
Y29tPgo+ID4gLS0tCj4gPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NnguZHRz
aSB8IDIgKysKPiA+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4gPgo+ID4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTZ4LmR0c2kgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2eC5kdHNpCj4gPiBpbmRleCA4YmEwNTE2ZWVk
ZDguLjkxYWUzYzU0MWMxYSAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTZ4LmR0c2kKPiA+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTZ4LmR0c2kKPiA+IEBAIC0yMzAsNiArMjMwLDggQEAgY3J1OiBjbG9jay1jb250cm9sbGVy
QGZkZDIwMDAwIHsKPiA+ICAgICAgICAgICAgICAgcm9ja2NoaXAsZ3JmID0gPCZncmY+Owo+ID4g
ICAgICAgICAgICAgICAjY2xvY2stY2VsbHMgPSA8MT47Cj4gPiAgICAgICAgICAgICAgICNyZXNl
dC1jZWxscyA9IDwxPjsKPiA+ICsgICAgICAgICAgICAgYXNzaWduZWQtY2xvY2tzID0gPCZjcnUg
UExMX0dQTEw+LCA8JnBtdWNydSBQTExfUFBMTD47Cj4gPiArICAgICAgICAgICAgIGFzc2lnbmVk
LWNsb2NrLXJhdGVzID0gPDEyMDAwMDAwMDA+LCA8MjAwMDAwMDAwPjsKPiA+ICAgICAgIH07Cj4g
Pgo+ID4gICAgICAgaTJjMDogaTJjQGZkZDQwMDAwIHsKPiA+Cj4KPgo+Cj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
