Return-Path: <SRS0=17rj=KO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5876BC433B4
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 13:10:38 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C37AC61353
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 May 2021 13:10:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C37AC61353
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XXOa6/0ciWZi+EO5Bv+0AReTr3eBFFKdMwOXBtRAmFg=; b=bfuZH3BAAa85e8iFug2TTWIBJ
	g6CrAmohvEbTyTszrLGJYWM42Gy48MUAMKS7eXp6tP4gJhOTTjobsphi97NnP/tVZf8C0Q16ind8u
	Y1pQfHVMjisrBt6DR+6aIe1ukVAa/+JaXSujP6ldCV/dtamWu2Yw4se4IxuZbJX0yoc1UdDZZchWp
	Kjigdrn9U81XdU4zUpO2cMNg33TjjvXPKh1Lo0RKyabWaQE4hvZfZLy/Mo/LrEvWhyyXtdO19vIrF
	LGPBBzPlPf/crNy/P7ern6M/YT/8CyomkByPipacAWusQJXQlwelHp8aLtmFU8Oz8pf9S2GdbtbRd
	OClORzdBw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljLy3-0043JT-Sb; Wed, 19 May 2021 13:10:32 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljLZw-003xF7-IS
 for linux-rockchip@desiato.infradead.org; Wed, 19 May 2021 12:45:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-ID:Content-Description;
 bh=jtt1n0eLEl1LiBWRCYz9qpVqUohhN38baHabydz3ycA=; b=dO9HEAbjayo2QM/zpC8SRFwzeC
 u/eQe4lA2rGlBZirrnWI7O2qT67vJiKMygbENz6Km0ArIIt1iQV/B6Hj0JPTVvsRH4JRt7bnskGxi
 6Zy8OQr6H1g7XNkhfdJAmT+J4P2cmvyhESHoDO+uxNbQjyATvil24zrBanH47gnijMPTzQoayTO8A
 XkEAlRojhiAjIreilsfb2w01zo0+d5ufNYs4lpNkOuGX2n6EjSQ6V8v2WiOnwFZE4o6zJXUT0y9zW
 oyifukzVIdWw3Q5Ru/3aPtBa0cHeeGFHSMOWwjNvZaXaTRjtoeYV5F7NVaQLmzA1NU3fdgmwUD5L4
 QpFmFVxg==;
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljLZt-00FT4e-IA
 for linux-rockchip@lists.infradead.org; Wed, 19 May 2021 12:45:34 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id f9so17893467ybo.6
 for <linux-rockchip@lists.infradead.org>; Wed, 19 May 2021 05:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=jtt1n0eLEl1LiBWRCYz9qpVqUohhN38baHabydz3ycA=;
 b=NEnDsXCtA1Q9wuBI9XmJzViOobsr3kWfvewlt3fs1skzH1I2LWqW5vPgJNGukWOSnf
 Jsjz4pmKgAegaSN3iuTLyOQo4XpmEakW0Z/rMqgUYMkHRsOuivqr+xCdYUMA98KO8QMa
 uQudefXAZw03lyObXywpGpAbOxZXHO4/aldF9qCMQsPMKMHx0aDh3g3QwB+/GCDndUTD
 n7vIMexAqOffcxD9oSnFV5AGoDoBrjevwa4rTgYXR2UtCY2a2ue52/7wNYvoH6eHjhGS
 3FOWkdgQPJ9ZnH426Z39D2aunf5XAYK2CUrxiqVlqYbY3/RmWWlR1oEIZwLyYEVY7tV0
 vCzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=jtt1n0eLEl1LiBWRCYz9qpVqUohhN38baHabydz3ycA=;
 b=BhtRmUSZNxpWiNWe/GyLhXVxdLz9lzM3hAOuY9qL4ENcORWZClNHP9QvvVIyCDqoj/
 4h1sJFi74fgVxxdLX/CiCNC+PedNt7riucxpgu8d+//Qn1nlHpgJ/PWFPVf4EI7qYLQD
 iSW73yGSnnBx3zrJlzfDJWcueKYgJBBlxIUclvowJIQMC5dJvSV9NJ7F2+ysbjjCrXK0
 3nxf4EjDfRI5rqtgJvkJLMhGqlMnUcU+fjMrQLuQbsUkzpo6+oSW5XBlrE5lRzvlh0zr
 MvO8DMmQ6s1e6TvPUxfUyah6M49y0CbtlvOxINkoOcsHAYuLWPJ0QErrPyRXGJt9hTwp
 6dyQ==
X-Gm-Message-State: AOAM531rEtMSUmKOOuq3nGICfDtItjJ9lAmeLMg1O5ckueiPsmAW7+M3
 bwH/g2Q26IvtSadaLWD7PJHXBnUfbE2p3nnRxBk=
X-Google-Smtp-Source: ABdhPJwMPTCVxlE6gNu2UuKI2B+TaQHhVUaLrY8DYMRGX/iv5HI7su7W5ZPqm8e85CihgSH4tsd9j1Y2SDbOIfNw+PM=
X-Received: by 2002:a25:1009:: with SMTP id 9mr14973539ybq.386.1621428332190; 
 Wed, 19 May 2021 05:45:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210511214605.2937099-1-pgwipeout@gmail.com>
 <YKOB7y/9IptUvo4k@unreal>
 <CAMdYzYrV0T9H1soxSVpQv=jLCR9k9tuJddo1Kw-c3O5GJvg92A@mail.gmail.com>
 <YKTJwscaV1WaK98z@unreal> <cbfecaf2-2991-c79e-ba80-c805d119ac2f@gmail.com>
 <YKT7bLjzucl/QEo2@unreal>
In-Reply-To: <YKT7bLjzucl/QEo2@unreal>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 19 May 2021 08:45:21 -0400
Message-ID: <CAMdYzYpVYuNuYgZp-sNj4QFbgHH+SoFpffbdCNJST2_KZEhSug@mail.gmail.com>
Subject: Re: [PATCH] net: phy: add driver for Motorcomm yt8511 phy
To: Leon Romanovsky <leon@kernel.org>
Cc: Heiner Kallweit <hkallweit1@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
 Russell King <linux@armlinux.org.uk>, "David S . Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 Linux Kernel Network Developers <netdev@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_054533_623666_6921AADA 
X-CRM114-Status: GOOD (  30.47  )
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

T24gV2VkLCBNYXkgMTksIDIwMjEgYXQgNzo1MCBBTSBMZW9uIFJvbWFub3Zza3kgPGxlb25Aa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBXZWQsIE1heSAxOSwgMjAyMSBhdCAxMjozNzo0M1BNICsw
MjAwLCBIZWluZXIgS2FsbHdlaXQgd3JvdGU6Cj4gPiBPbiAxOS4wNS4yMDIxIDEwOjE4LCBMZW9u
IFJvbWFub3Zza3kgd3JvdGU6Cj4gPiA+IE9uIFR1ZSwgTWF5IDE4LCAyMDIxIGF0IDA4OjIwOjAz
UE0gLTA0MDAsIFBldGVyIEdlaXMgd3JvdGU6Cj4gPiA+PiBPbiBUdWUsIE1heSAxOCwgMjAyMSBh
dCA0OjU5IEFNIExlb24gUm9tYW5vdnNreSA8bGVvbkBrZXJuZWwub3JnPiB3cm90ZToKPiA+ID4+
Pgo+ID4gPj4+IE9uIFR1ZSwgTWF5IDExLCAyMDIxIGF0IDA1OjQ2OjA2UE0gLTA0MDAsIFBldGVy
IEdlaXMgd3JvdGU6Cj4gPiA+Pj4+IEFkZCBhIGRyaXZlciBmb3IgdGhlIE1vdG9yY29tbSB5dDg1
MTEgcGh5IHRoYXQgd2lsbCBiZSB1c2VkIGluIHRoZQo+ID4gPj4+PiBwcm9kdWN0aW9uIFBpbmU2
NCByazM1NjYtcXVhcnR6NjQgZGV2ZWxvcG1lbnQgYm9hcmQuCj4gPiA+Pj4+IEl0IHN1cHBvcnRz
IGdpZ2FiaXQgdHJhbnNmZXIgc3BlZWRzLCByZ21paSwgYW5kIDEyNW1oeiBjbGsgb3V0cHV0Lgo+
ID4gPj4+Pgo+ID4gPj4+PiBTaWduZWQtb2ZmLWJ5OiBQZXRlciBHZWlzIDxwZ3dpcGVvdXRAZ21h
aWwuY29tPgo+ID4gPj4+PiAtLS0KPiA+ID4+Pj4gIE1BSU5UQUlORVJTICAgICAgICAgICAgICAg
ICB8ICA2ICsrKwo+ID4gPj4+PiAgZHJpdmVycy9uZXQvcGh5L0tjb25maWcgICAgIHwgIDYgKysr
Cj4gPiA+Pj4+ICBkcml2ZXJzL25ldC9waHkvTWFrZWZpbGUgICAgfCAgMSArCj4gPiA+Pj4+ICBk
cml2ZXJzL25ldC9waHkvbW90b3Jjb21tLmMgfCA4NSArKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrCj4gPiA+Pj4+ICA0IGZpbGVzIGNoYW5nZWQsIDk4IGluc2VydGlvbnMoKykK
PiA+ID4+Pj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL25ldC9waHkvbW90b3Jjb21tLmMK
PiA+ID4+Pgo+ID4gPj4+IDwuLi4+Cj4gPiA+Pj4KPiA+ID4+Pj4gK3N0YXRpYyBjb25zdCBzdHJ1
Y3QgbWRpb19kZXZpY2VfaWQgX19tYXliZV91bnVzZWQgbW90b3Jjb21tX3RibFtdID0gewo+ID4g
Pj4+PiArICAgICB7IFBIWV9JRF9NQVRDSF9FWEFDVChQSFlfSURfWVQ4NTExKSB9LAo+ID4gPj4+
PiArICAgICB7IC8qIHNlbnRpbmFsICovIH0KPiA+ID4+Pj4gK30KPiA+ID4+Pgo+ID4gPj4+IFdo
eSBpcyB0aGlzICJfX21heWJlX3VudXNlZCI/IFRoaXMgKi5jIGZpbGUgZG9lc24ndCBoYXZlIGFu
eSBjb21waWxhdGlvbiBvcHRpb24KPiA+ID4+PiB0byBjb21waWxlIHBhcnQgb2YgaXQuCj4gPiA+
Pj4KPiA+ID4+PiBUaGUgIl9fbWF5YmVfdW51c2VkIiBpcyBub3QgbmVlZGVkIGluIHRoaXMgY2Fz
ZS4KPiA+ID4+Cj4gPiA+PiBJIHdhcyBzaW1wbHkgZm9sbG93aW5nIGNvbnZlbnRpb24sIGZvciBl
eGFtcGxlIHRoZSByZWFsdGVrLmMsCj4gPiA+PiBtaWNyZWwuYywgYW5kIHNtc2MuYyBkcml2ZXJz
IGFsbCBoYXZlIHRoaXMgYXMgd2VsbC4KPiA+ID4KPiA+ID4gTWF5YmUgdGhleSBoYXZlIGEgcmVh
c29uLCBidXQgdGhpcyBzcGVjaWZpYyBkcml2ZXIgZG9lc24ndCBoYXZlIHN1Y2guCj4gPiA+Cj4g
Pgo+ID4gSXQncyB1c2VkIGxpa2UgdGhpczoKPiA+IE1PRFVMRV9ERVZJQ0VfVEFCTEUobWRpbywg
PG1kaW9fZGV2aWNlX2lkX3RibD4pOwo+ID4KPiA+IEFuZCBNT0RVTEVfREVWSUNFX1RBQkxFIGlz
IGEgbm8tb3AgaWYgTU9EVUxFIGlzbid0IGRlZmluZWQ6Cj4gPgo+ID4gI2lmZGVmIE1PRFVMRQo+
ID4gLyogQ3JlYXRlcyBhbiBhbGlhcyBzbyBmaWxlMmFsaWFzLmMgY2FuIGZpbmQgZGV2aWNlIHRh
YmxlLiAqLwo+ID4gI2RlZmluZSBNT0RVTEVfREVWSUNFX1RBQkxFKHR5cGUsIG5hbWUpICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgXAo+ID4gZXh0ZXJuIHR5cGVvZihuYW1l
KSBfX21vZF8jI3R5cGUjI19fIyNuYW1lIyNfZGV2aWNlX3RhYmxlICAgICAgICAgICAgIFwKPiA+
ICAgX19hdHRyaWJ1dGVfXyAoKHVudXNlZCwgYWxpYXMoX19zdHJpbmdpZnkobmFtZSkpKSkKPiA+
ICNlbHNlICAvKiAhTU9EVUxFICovCj4gPiAjZGVmaW5lIE1PRFVMRV9ERVZJQ0VfVEFCTEUodHlw
ZSwgbmFtZSkKPiA+ICNlbmRpZgo+ID4KPiA+IEluIHRoaXMgY2FzZSB0aGUgdGFibGUgaXMgdW51
c2VkLgo+Cj4gRG8geW91IHNlZSBjb21waWxhdGlvbiB3YXJuaW5nIGZvciBzdWNoIHNjZW5hcmlv
PwoKVGhlIGlzc3VlIHlvdSBhcmUgZGVzY3JpYmluZyBoYXMgYmVlbiBmaXhlZCBzaW5jZSAyMDEw
OgoKY29tbWl0IGNmOTNjOTQ1ODFiYWI0NDdhNTYzNGM2ZDczN2MxY2YzOGMwODAyNjEKQXV0aG9y
OiBVd2UgS2xlaW5lLUvDtm5pZyA8dS5rbGVpbmUta29lbmlnQHBlbmd1dHJvbml4LmRlPgpEYXRl
OiAgIFN1biBPY3QgMyAyMzo0MzozMiAyMDEwICswMDAwCgogICAgbmV0L3BoeTogZml4IG1hbnkg
ImRlZmluZWQgYnV0IHVudXNlZCIgd2FybmluZ3MKCiAgICBNT0RVTEVfREVWSUNFX1RBQkxFIG9u
bHkgZXhwYW5kcyB0byBzb21ldGhpbmcgaWYgaXQncyBjb21waWxlZAogICAgZm9yIGEgbW9kdWxl
LiAgU28gd2hlbiBidWlsZGluZy1pbiBzdXBwb3J0IGZvciB0aGUgcGh5cywgdGhlCiAgICBtZGlv
X2RldmljZV9pZCB0YWJsZXMgYXJlIHVudXNlZC4gIE1hcmtpbmcgdGhlbSB3aXRoIF9fbWF5YmVf
dW51c2VkCiAgICBmaXhlcyB0aGUgZm9sbG93aW5nIHdhcm5pbmdzOgoKVGhlcmUgaXMgYSBzdHJv
bmcgcHVzaCB0byBmaXggYWxsIHdhcm5pbmdzIGR1cmluZyBidWlsZCwgaW5jbHVkaW5nIFc9MSB3
YXJuaW5ncy4KRm9yIGZ1biBJIHJlYnVpbHQgd2l0aG91dCBtb2R1bGUgc3VwcG9ydCBhbmQgY29u
ZmlybWVkIHRoYXQgcmVtb3ZpbmcKdGhpcyBkb2VzIHRyaWdnZXIgYSBXPTEgd2FybmluZy4KCj4K
PiBUaGFua3MKPgo+ID4KPiA+ID4gVGhhbmtzCj4gPiA+Cj4gPiA+Pgo+ID4gPj4+Cj4gPiA+Pj4g
VGhhbmtzCj4gPgo+ID4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
