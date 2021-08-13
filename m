Return-Path: <SRS0=gOg0=NE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 30BD6C432BE
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 15:10:55 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EC7F261158
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 15:10:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EC7F261158
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a9Rzd37DqUGbwqSENXVaQ6X/ODMkL6K6vIyHTzSYQtg=; b=jKAfH5l8BQJORo
	a6gGTD+tVQnQvFMK7uW3CiFTfDfp9vVCbuO+IPqNq3N2cUKBlhQAFbU4sSnIoIi+yubNQ4LjMpTlG
	Vhf+AxvJWazoAa0DgkgbJoZ8arhUDyAu4uCIXJ3wr9OrhDMr8dkcoHL/YljvF1xrhMZVHfSpw+QSK
	WDMPEy31a2l3GwfMqa+WcZfnrpF+DYtakj9i9jEfnxMQI8MlNVbjaENJy6s7vlkQNSJFbTi6prPXW
	mR5JiEi4SAdEolObbN6GxKm4rIYVWfAsUtzw70ILAw7DiVGZtp9LMaEZn3SuQm8oL4Wut1lnJai0F
	l44LVtFs1v/bbx0QFTcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEYpe-00Cu3l-5E; Fri, 13 Aug 2021 15:10:50 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEYpO-00Ctyg-IZ; Fri, 13 Aug 2021 15:10:38 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id c5so6317178ybn.5;
 Fri, 13 Aug 2021 08:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=X/kqYBjQkwFbfFHGVlf4OaSWUJ8/nIBF0RPqMs8Yh0k=;
 b=HyF5AE/ys7V0sdEN1tRr+aZLXXVZ9OvxNg92VCFCvsf7jL69ukhZHyQDor+YujNGsL
 wCgqvc0BQ/hyJHB1vwC+KbWBU58nVDge0WlJ+pwykI5e8C6VkFxHOUZm2z63b8zPq0Ri
 G7BD6wC7hMTPaq1KnIViSqp0NYkvY0Ry1z4cBaXVRZOs+OXQ+xmAUJB/+1lomJRqe6jm
 d3hFNVwZaSy2i9fJGvl8BG+pR194DTT/8b8PITZcXFJyL28RjJICoPGTd+lvFK8NzPHB
 cHNREdhrCO7oJ3NnumTX3w7aabeYBO2+z3EtuLLxmkOx89LtlQM1jGyoSd1M7jBMPHZa
 wvIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=X/kqYBjQkwFbfFHGVlf4OaSWUJ8/nIBF0RPqMs8Yh0k=;
 b=IG0ZoU/0Klqst0Z09roCsCtbqOCMsB8Skfyc/I712DF9wGytcegwgJW4E4j13jak/d
 xlSd7lfjbp7uCpJlcWMBfdDZ8uWkTjham6j/8jzDDlx0LFW26Zs3jH92eWI6gx6A2zpG
 rIIyLoWLjPOt4pI6v3n4synhcA/6n7qA6fZC9JYZeUcv33PlpCVMjUYkCMT2Alm5oyM2
 con1M6fEPcR6dhHw8Y4FWGGoPn9Qfw4iVSuycdgCcEiVLpAF2TbNhkU9fNXzImSbw8rK
 7EhShuVT7hbWOl3N4LZuzB5EceRyNBK8IS2HifPWTOPRbsO3kTix23R1NxW24q6MVnSu
 QOOg==
X-Gm-Message-State: AOAM532rkVgzUFxuVBdD3E8jqx2JZNC3KPG92R79xKPqAxULoCVyR7oj
 IhW4O/ZiLu3dkgoGDckR35KqzWmaKt21t7/svyM=
X-Google-Smtp-Source: ABdhPJxa0NvFb4qZ9t5F/jGaQ5OgVjYOv6GY0umZKAkxmzzehVdCoZC6LLB9QJJjiBv8G4Osj/i1r42R+7Ub3kQvS0Q=
X-Received: by 2002:a25:3108:: with SMTP id x8mr3557506ybx.386.1628867433281; 
 Fri, 13 Aug 2021 08:10:33 -0700 (PDT)
MIME-Version: 1.0
References: <20210730151727.729822-1-pgwipeout@gmail.com>
 <ad6d8025-977c-9ff2-81ff-a417df48231c@linaro.org>
 <893701da-ea17-00ab-5e31-c745051ac9b9@arm.com>
 <2b1050f2-0311-1871-820a-f876218894bc@linaro.org>
In-Reply-To: <2b1050f2-0311-1871-820a-f876218894bc@linaro.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 13 Aug 2021 11:10:20 -0400
Message-ID: <CAMdYzYptXpahbcdkPm1C9_aH2khNtjdZyBmckndcWLnrh259QQ@mail.gmail.com>
Subject: Re: [PATCH v3] arm64: dts: rockchip: add thermal fan control to
 rockpro64
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, devicetree <devicetree@vger.kernel.org>, 
 arm-mail-list <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_081034_663548_01EB931E 
X-CRM114-Status: GOOD (  24.39  )
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

T24gRnJpLCBBdWcgMTMsIDIwMjEgYXQgMTA6NTQgQU0gRGFuaWVsIExlemNhbm8KPGRhbmllbC5s
ZXpjYW5vQGxpbmFyby5vcmc+IHdyb3RlOgo+Cj4KPiBIaSBSb2JpbiwKPgo+Cj4gT24gMTMvMDgv
MjAyMSAxNTo1MSwgUm9iaW4gTXVycGh5IHdyb3RlOgo+ID4gT24gMjAyMS0wOC0xMyAxMzo1OSwg
RGFuaWVsIExlemNhbm8gd3JvdGU6Cj4gPj4gT24gMzAvMDcvMjAyMSAxNzoxNywgUGV0ZXIgR2Vp
cyB3cm90ZToKPiA+Pj4gVGhlIHJvY2twcm82NCBoYWQgYSBmYW4gbm9kZSBzaW5jZQo+ID4+PiBj
b21taXQgNTg4MmQ2NWMxNjkxICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBQV00gZmFuIGZv
ciBSb2NrUHJvNjQiKQo+ID4+PiBob3dldmVyIGl0IHdhcyBuZXZlciB0aWVkIGludG8gdGhlIHRo
ZXJtYWwgZHJpdmVyIGZvciBhdXRvbWF0aWMgY29udHJvbC4KPiA+Pj4KPiA+Pj4gQWRkIHRoZSBs
aW5rcyB0byB0aGUgdGhlcm1hbCBub2RlIHRvIHBlcm1pdCB0aGUga2VybmVsIHRvIGhhbmRsZSB0
aGlzCj4gPj4+IGF1dG9tYXRpY2FsbHkuCj4gPj4+IEJvcnJvd2VkIGZyb20gdGhlIChyazMzOTkt
a2hhZGFzLWVkZ2UuZHRzaSkuCj4gPj4+Cj4gPj4+IFNpZ25lZC1vZmYtYnk6IFBldGVyIEdlaXMg
PHBnd2lwZW91dEBnbWFpbC5jb20+Cj4KPiBbIC4uLiBdCj4KPiA+Pj4gICArJmNwdV90aGVybWFs
IHsKPiA+Pj4gKyAgICB0cmlwcyB7Cj4gPj4+ICsgICAgICAgIGNwdV93YXJtOiBjcHVfd2FybSB7
Cj4gPj4+ICsgICAgICAgICAgICB0ZW1wZXJhdHVyZSA9IDw1NTAwMD47Cj4gPj4+ICsgICAgICAg
ICAgICBoeXN0ZXJlc2lzID0gPDIwMDA+Owo+ID4+PiArICAgICAgICAgICAgdHlwZSA9ICJhY3Rp
dmUiOwo+ID4+PiArICAgICAgICB9Owo+ID4+PiArCj4gPj4+ICsgICAgICAgIGNwdV9ob3Q6IGNw
dV9ob3Qgewo+ID4+PiArICAgICAgICAgICAgdGVtcGVyYXR1cmUgPSA8NjUwMDA+Owo+ID4+PiAr
ICAgICAgICAgICAgaHlzdGVyZXNpcyA9IDwyMDAwPjsKPiA+Pj4gKyAgICAgICAgICAgIHR5cGUg
PSAiYWN0aXZlIjsKPiA+Pj4gKyAgICAgICAgfTsKPiA+Pj4gKyAgICB9Owo+ID4+PiArCj4gPj4K
PiA+PiBXaHkgdHdvIHRyaXAgcG9pbnRzID8KPiA+Pgo+ID4+IFdoeSBub3Qgb25lIGZ1bmN0aW9u
aW5nIHRlbXBlcmF0dXJlIGFuZCBubyBsb3dlciAvIHVwcGVyIGxpbWl0cyBmb3IgdGhlCj4gPj4g
Y29vbGluZyBtYXBzID8KPiA+Cj4gPiBDZXJ0YWlubHkgd2hlbiBJIGZpcnN0IGRpZCB0aGlzIGZv
ciBOYW5vUEMtVDQsIElJUkMgaXQgd2FzIHRvIGF2b2lkIHRoZQo+ID4gZmFuIHJhbXBpbmcgdXAg
dG9vIGVhZ2VybHksIHNpbmNlIGxldmVsIDEgZm9yIG15IGZhbiBpcyBlZmZlY3RpdmVseQo+ID4g
c2lsZW50IGJ1dCBzdGlsbCBjb29scyBlbm91Z2ggdG8gbGV0IGEgbW9kZXJhdGUgbG9hZCBldmVu
dHVhbGx5IHNldHRsZQo+ID4gdG8gYSBzdGVhZHkgc3RhdGUgYmVsb3cgdGhlIHNlY29uZCB0cmlw
LgoKVGhhdCdzIHRoZSBzYW1lIGlzc3VlIEkgaGFkIG9uIHRoZSByb2NrcHJvNjQuCgo+Cj4gVGhh
bmtzIGZvciB5b3VyIGFuc3dlci4KPgo+IFdoYXQgd291bGQgYmUgdGhlIGdvdmVybm9yIGZvciB0
aGlzIHNldHVwID8KPgoKVGhlIGRlZmF1bHQgZ292ZXJub3Igd2hlbiB1c2luZyBhcm02NF9kZWZj
b25maWcgaXMgc3RlcF93aXNlLgoKPgo+Cj4KPiAtLQo+IDxodHRwOi8vd3d3LmxpbmFyby5vcmcv
PiBMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKPgo+IEZv
bGxvdyBMaW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNl
Ym9vayB8Cj4gPGh0dHA6Ly90d2l0dGVyLmNvbS8jIS9saW5hcm9vcmc+IFR3aXR0ZXIgfAo+IDxo
dHRwOi8vd3d3LmxpbmFyby5vcmcvbGluYXJvLWJsb2cvPiBCbG9nCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
