Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9731DC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Dec 2021 11:10:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T9zl8jcsdnfk3uJr3Al5lrkTSIoUX1VSZoLMedO85U0=; b=F2DCxVr8sDMhLl
	sL40Zdtkr2Wu7Ll2A4ufdg07kKIrz4mJ41NP5Homj09M2+wwqyz1Kfg9QtIoGEXWZOE1cGhyaQVmm
	2RsB2tSNc+BXErhrvd2Z1SdRpASNmdccUDprO69SlWfXl/iSV6FP+NRk3A7DZj23AIeeINkRzMtme
	T2sOyRkUDA8UBQT891MgAkF17D3H+ds38G9mFaOS7A6hLUiVC9TJEDBz/PxGrh/Weexdf3a18RJAr
	rIswQtcEQq6C2xWQTjYokshloAXDWd5diBZYf3gCHpHjRiRy7FyQ25vfAyIfs5iEAZFpMiy31bLd2
	BuKaGE1YLvGroaBB4ldg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mzzVU-00A4xz-4R; Wed, 22 Dec 2021 11:10:04 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mzzVR-00A4x2-Nd
 for linux-rockchip@lists.infradead.org; Wed, 22 Dec 2021 11:10:03 +0000
Received: by mail-wm1-x335.google.com with SMTP id
 j140-20020a1c2392000000b003399ae48f58so3584958wmj.5
 for <linux-rockchip@lists.infradead.org>; Wed, 22 Dec 2021 03:09:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=j1lOGi4XuCNFoWkwT37VTBiICql+UYv5lclfC2ZGXww=;
 b=Oz7A4t8x2FkuRIklWoeC2LwPdyPtYFMtkGfwsALFCup7drqgvv0imhE97bFFGtatng
 mnXhx62cJ+yxeAFGvttFa9oFP4xbP584Ph2u2b7/uuf0YrrmTkTzKsQ5HQSBFcQOVf9E
 P19yDSNTqOZtKI9xZkp7IUrm9Z3AYU7npzXSMgeUIjkbACijkHa5UZWscYi7vRwAmOVv
 cgmKlIB0Yv/U5QEg3BWmrAGcpQaTbsYa1OGXNgd6jgnE/grQG0CISR/RHcoOnHeGJydu
 0SFcVlT8M6Klb22t7y/sJqLxCl87Fm4FEIPAzp7GzSsKZOenJHNaaVXpqrA5dz/jbyAH
 2Meg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=j1lOGi4XuCNFoWkwT37VTBiICql+UYv5lclfC2ZGXww=;
 b=smaL9YiqoluPRu3B6CEA5NTe+B8wVEHAVZhNM8vQp9jYFD3PIzryBX9sZu+z4RQ58w
 VgebCTKqZw5JlZSVZU3hkXbLK/gYv6uYBiRDBH1OqrQnWsOx8zTvlqbw9ezdWY3MGWgW
 PHIv230aAdfl9Q5sjog+D5mR+vaJmkdgEd+P6MxW98RfvRJmEHVEsiTJEf0ZfK9y2fai
 VlTOk+MeYYmHaiSz3GKgUWK8nXDhQVPBy4KEFV/Xt5tSSTP+lbvBz4hqhLgBVOU307La
 cRuIK0YEDRwxzYDa0VUr6UrhNJFVyHaya1yaEqa+JM1sRMwzOU9+LTxRElPz1/OzZoK1
 c63g==
X-Gm-Message-State: AOAM530W/AWQrlekZauRvaW9H70QMa4azUVWBP302+y6OAbJR0iJ+TvR
 gLZhWaOjxe2jh/8PYXaAAfreuA==
X-Google-Smtp-Source: ABdhPJybBvd0zx9bUFwYmcCroy3Ek7RtFVbNWKeS7mYi2A0k6ezCDdEGm8Spzd0juXf51LPQC62qsA==
X-Received: by 2002:a05:600c:4e8f:: with SMTP id
 f15mr565287wmq.151.1640171398299; 
 Wed, 22 Dec 2021 03:09:58 -0800 (PST)
Received: from google.com ([2.31.167.18])
 by smtp.gmail.com with ESMTPSA id c13sm1559941wrt.114.2021.12.22.03.09.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Dec 2021 03:09:57 -0800 (PST)
Date: Wed, 22 Dec 2021 11:09:56 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Frank Wunderlich <frank-w@public-files.de>
Cc: Peter Geis <pgwipeout@gmail.com>, Robin Murphy <robin.murphy@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Dmitry Osipenko <digetx@gmail.com>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] mfd: rk808: add reboot support to rk808.c
Message-ID: <YcMHhJTsQMLDRRsN@google.com>
References: <20211220144654.926112-1-pgwipeout@gmail.com>
 <trinity-c54ecce4-7a39-4143-b136-f53c9b40ffd1-1640018026851@3c-app-gmx-bap45>
 <YcGU6pQqfEPBqjrO@google.com>
 <4963E4A2-63B4-48A1-BDDD-5F9D07D71598@public-files.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4963E4A2-63B4-48A1-BDDD-5F9D07D71598@public-files.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211222_031001_834720_A793E5C3 
X-CRM114-Status: GOOD (  15.64  )
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

T24gVHVlLCAyMSBEZWMgMjAyMSwgRnJhbmsgV3VuZGVybGljaCB3cm90ZToKCj4gQW0gMjEuIERl
emVtYmVyIDIwMjEgMDk6NDg6NDMgTUVaIHNjaHJpZWIgTGVlIEpvbmVzIDxsZWUuam9uZXNAbGlu
YXJvLm9yZz46Cj4gPk9uIE1vbiwgMjAgRGVjIDIwMjEsIEZyYW5rIFd1bmRlcmxpY2ggd3JvdGU6
Cj4gPgo+ID4+IEhpCj4gPj4gCj4gPj4gPiBHZXNlbmRldDogTW9udGFnLCAyMC4gRGV6ZW1iZXIg
MjAyMSB1bSAxNTo0NiBVaHIKPiA+PiA+IFZvbjogIlBldGVyIEdlaXMiIDxwZ3dpcGVvdXRAZ21h
aWwuY29tPgo+ID4+ID4gQEAgLTc0OSw2ICs3OTEsOSBAQCBzdGF0aWMgaW50IHJrODA4X3JlbW92
ZShzdHJ1Y3QgaTJjX2NsaWVudAo+ID4qY2xpZW50KQo+ID4+ID4gIAlpZiAocG1fcG93ZXJfb2Zm
ID09IHJrODA4X3BtX3Bvd2VyX29mZikKPiA+PiA+ICAJCXBtX3Bvd2VyX29mZiA9IE5VTEw7Cj4g
Pj4gPgo+ID4+ID4gKwlpZiAob2ZfcHJvcGVydHlfcmVhZF9ib29sKG5wLAo+ID4icm9ja2NoaXAs
c3lzdGVtLXBvd2VyLWNvbnRyb2xsZXIiKSkKPiA+PiA+ICsJCXVucmVnaXN0ZXJfcmVzdGFydF9o
YW5kbGVyKCZyazgwOF9yZXN0YXJ0X2hhbmRsZXIpOwo+ID4+ID4gKwo+ID4+ID4gIAlyZXR1cm4g
MDsKPiA+PiA+ICB9Cj4gPj4gCj4gPj4gdGhpcyBjaGFuZ2UgbWlzc2VzIGEgZGVjbGFyYXRpb24K
PiA+PiAKPiA+PiBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wID0gY2xpZW50LT5kZXYub2Zfbm9kZTsK
PiA+Cj4gPkhvdyBkaWQgdGhpcyBjb21waWxlIHdoZW4geW91IHRlc3RlZCBpdD8KPiAKPiBIZXJl
IGkgaGF2ZSBzcXVhc2hlZCB0aGUgY2hhbmdlIGluOgo+IAo+IGh0dHBzOi8vZ2l0aHViLmNvbS9m
cmFuay13L0JQSS1SMi00LjE0L2NvbW1pdC8wNjQzMGZmY2I2ZDU4ZDMzMDE0ZmI5NDAyNTZkZTc3
ODA3ZWQ2MjBmCj4gCj4gV2l0aCB0aGUgY2hhbmdlIGkgY2FuIGNvbXBpbGUgaXQuLi4KCk5vdCBz
dXJlIEkgdW5kZXJzdGFuZC4KClBsZWFzZSBtYWtlIHN1cmUgYWxsIHBhdGNoZXMgeW91IHNlbmQg
Zm9yIGluY2x1c2lvbiBpbnRvIHRoZSBMaW51eAprZXJuZWwgYXJlIGZ1bGx5IHRlc3RlZC4gIFRo
ZXkgc2hvdWxkIGFsc28gYmUgYmlzZWN0YWJsZSBpLmUuIG5vdApkZXBlbmQgb24gcGF0Y2hlcyBh
cHBsaWVkICpvbiB0b3AqLgoKPiBCdXQgaW4gdjQgKHBhdGNoIGlzIHRhZ2dlZCBhcyB2MyB0b28p
IHRoZSBvZl9wcm9wZXJ0eV9yZWFkX2Jvb2wgd2FzIGRyb3BwZWQgY29tcGxldGVseS4KPiByZWdh
cmRzIEZyYW5rCgotLSAKTGVlIEpvbmVzIFvmnY7nkLzmlq9dClNlbmlvciBUZWNobmljYWwgTGVh
ZCAtIERldmVsb3BlciBTZXJ2aWNlcwpMaW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2Fy
ZSBmb3IgQXJtIFNvQ3MKRm9sbG93IExpbmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
