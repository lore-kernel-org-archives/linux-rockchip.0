Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71692C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 19 Jan 2022 10:11:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=C6rbZiCVONC0Cd0+lH7oTqrpj9GsYjgyLM7S2z/dIjw=; b=zluenmNvXEIRmYHY0iz0lIGxNN
	dZvDSVCIxlWebhaHLFjOndn4qNxmG6BPH7PZ1hCYsR+oXxX9JlnnoMblQFa3x64QFtPQS+fBedXOv
	GKSNDF1h6cArWgv1QWOT3xmMR5/ZdPvJ1cf63QOdlTyCu0qUCqIQFOppmEzJ5QcD+MdzaI5SJEaj+
	hWMenkCouG2yS34U7EzsLEZn2sVztL4xFikfgkodxS8fz9xDj+nInUIxOS6lUFBV9IJVhX3rWe0o1
	TVsjCqKl1niF+LwOXj+S+8bsS+VyWsWQ/9FOXNfg3PtWAitRMijalUvJcL2hgegOGxn+63sKH5fqN
	/CCA+2Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nA7w8-004pUp-G3; Wed, 19 Jan 2022 10:11:28 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nA7w2-004pQK-Pq
 for linux-rockchip@lists.infradead.org; Wed, 19 Jan 2022 10:11:27 +0000
Received: by mail-wm1-x331.google.com with SMTP id w26so4401422wmi.0
 for <linux-rockchip@lists.infradead.org>; Wed, 19 Jan 2022 02:11:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=subject:to:cc:references:from:organization:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HJNnzt0d5+w9Guhb3CJhVdmh2tzznUIQr10p4N94BuY=;
 b=P3YqFoM3CZXc6yzRuSnNXCecrPFfoynbKUNRVTkd2+EEf4WLvh76+qjqw8uy4Ep7hL
 RBgu0J3AaPevsGeVNw2xHAqNU5dz0RtDMzIvBpAmadOkkZZ6r2aICeUaITTK5JljfYv6
 x3Nx3OqPQP4sKcYaA9VlbpuGntZOX4TiW2dn4uzJU0Bp4MC7hkmSigLazkmwuiZTO5Me
 5oO8QTbjO8SIU/7K1EN9bmYddnV89rLeSdmRTKQlaNJ8z5SHg7J6rQdmZXqZqJciY/so
 23w4yqgi77XteHP95woiWgBtIgwJv/HMM7HM/s88w0Tr7iDb423XEjl48kyI7v+nDLA4
 gvJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:to:cc:references:from:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=HJNnzt0d5+w9Guhb3CJhVdmh2tzznUIQr10p4N94BuY=;
 b=nJPOurCXEoARS9dtnBOF4+8MLj7TUBQ+LrC+IijAEjQR/Js2E59/eV+EiAsPQLNPJx
 gIcYsRWb/mlXp+zxWUUGLoIJj28tXE/Vs6FrBIwPc5NLJAqyZCCrt2cTz/3io2UyOLM8
 z3vJJWxpjWAyaJqhI36BitTp9wt8R+Ue24Y+/uyoIrEqY6gs8cv7zdMNA1OzIFgtm2NP
 QpvIgc2T8w0v7UT6vdKtd/NIFNpe0lr77GGd5rfwUBOM3po0/vmyKvJnWBag8IIhjiOB
 pS6UFaw5WGMjVp15LMt/GJlLtAXYXpu5Fj9xk9QXlRtR18v3+T0TRt94pAPsgbgQ4AZD
 BAzQ==
X-Gm-Message-State: AOAM5306tcm5iatKnQJABBSk2WufROTCxZq4QEOHAgqciQ+iCr6G+0m7
 a3zgwRRrdy8C2GkW0k0TqhNTNw==
X-Google-Smtp-Source: ABdhPJy7PTq1LvBtjKach+0oRrh0xqZiSxVCHiUQtVMyP70UaeJblU8JiuUHr+gZEZa4GyWdbwufRg==
X-Received: by 2002:a7b:c042:: with SMTP id u2mr2796832wmc.18.1642587081098;
 Wed, 19 Jan 2022 02:11:21 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:d394:97d0:bc02:3846?
 ([2001:861:44c0:66c0:d394:97d0:bc02:3846])
 by smtp.gmail.com with ESMTPSA id u5sm5089062wrs.16.2022.01.19.02.11.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Jan 2022 02:11:20 -0800 (PST)
Subject: Re: [PATCH v2] phy: dphy: Correct clk_pre parameter
To: Liu Ying <victor.liu@nxp.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: linux-imx@nxp.com, Andrzej Hajda <andrzej.hajda@intel.com>,
 Robert Foss <robert.foss@linaro.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Heiko Stuebner <heiko@sntech.de>, Maxime Ripard <mripard@kernel.org>,
 =?UTF-8?Q?Guido_G=c3=bcnther?= <agx@sigxcpu.org>
References: <20220119023714.1498508-1-victor.liu@nxp.com>
 <28e3f723-daf0-b3c5-ee10-519c4cabfe17@baylibre.com>
 <5a638561-c704-49e7-1fed-70e26fedb186@baylibre.com>
 <8ad2cd76e80056192395ca5b73ff514e59881ba3.camel@nxp.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <e02c9226-2dfb-5931-60e3-a22e51172c30@baylibre.com>
Date: Wed, 19 Jan 2022 11:11:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <8ad2cd76e80056192395ca5b73ff514e59881ba3.camel@nxp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220119_021122_871708_F5619A1B 
X-CRM114-Status: GOOD (  36.04  )
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

SGksCgpPbiAxOS8wMS8yMDIyIDExOjAxLCBMaXUgWWluZyB3cm90ZToKPiBIaSBOZWlsLAo+IAo+
IE9uIFdlZCwgMjAyMi0wMS0xOSBhdCAxMDoxMSArMDEwMCwgTmVpbCBBcm1zdHJvbmcgd3JvdGU6
Cj4+IE9uIDE5LzAxLzIwMjIgMDk6NDAsIE5laWwgQXJtc3Ryb25nIHdyb3RlOgo+Pj4gSGksCj4+
Pgo+Pj4gT24gMTkvMDEvMjAyMiAwMzozNywgTGl1IFlpbmcgd3JvdGU6Cj4+Pj4gVGhlIEQtUEhZ
IHNwZWNpZmljYXRpb24gKHYxLjIpIGV4cGxpY2l0bHkgbWVudGlvbnMgdGhhdCB0aGUgVC1DTEst
UFJFCj4+Pj4gcGFyYW1ldGVyJ3MgdW5pdCBpcyBVbml0IEludGVydmFsKFVJKSBhbmQgdGhlIG1p
bmltdW0gdmFsdWUgaXMgOC4gIEFsc28sCj4+Pj4ga2VybmVsIGRvYyBvZiB0aGUgJ2Nsa19wcmUn
IG1lbWJlciBvZiBzdHJ1Y3QgcGh5X2NvbmZpZ3VyZV9vcHRzX21pcGlfZHBoeQo+Pj4+IG1lbnRp
b25zIHRoYXQgaXQgc2hvdWxkIGJlIGluIFVJLiAgSG93ZXZlciwgdGhlIGRwaHkgY29yZSBkcml2
ZXIgd3JvbmdseQo+Pj4+IHNldHMgJ2Nsa19wcmUnIHRvIDgwMDAsIHdoaWNoIHNlZW1zIHRvIGhp
bnQgdGhhdCBpdCdzIGluIHBpY29zZWNvbmRzLgo+Pj4+IEFuZCwgdGhlIGtlcm5lbCBkb2Mgb2Yg
dGhlICdjbGtfcHJlJyBtZW1iZXIgd3JvbmdseSBzYXlzIHRoZSBtaW5pbXVtIHZhbHVlCj4+Pj4g
aXMgJzggVUknLCBpbnN0ZWFkIG9mIDguCj4+Pj4KPj4+PiBTbywgbGV0J3MgZml4IGJvdGggdGhl
IGRwaHkgY29yZSBkcml2ZXIgYW5kIHRoZSBrZXJuZWwgZG9jIG9mIHRoZSAnY2xrX3ByZScKPj4+
PiBtZW1iZXIgdG8gY29ycmVjdGx5IHJlZmxlY3QgdGhlIFQtQ0xLLVBSRSBwYXJhbWV0ZXIncyB1
bml0IGFuZCB0aGUgbWluaW11bQo+Pj4+IHZhbHVlIGFjY29yZGluZyB0byB0aGUgRC1QSFkgc3Bl
Y2lmaWNhdGlvbi4KPj4+Pgo+Pj4+IEknbSBhc3N1bWluZyB0aGF0IGFsbCBpbXBhY3RlZCBjdXN0
b20gZHJpdmVycyBzaGFsbCBwcm9ncmFtIHZhbHVlcyBpbgo+Pj4+IFR4Qnl0ZUNsa0hTIGN5Y2xl
cyBpbnRvIGhhcmR3YXJlIGZvciB0aGUgVC1DTEstUFJFIHBhcmFtZXRlci4gIFRoZSBELVBIWQo+
Pj4+IHNwZWNpZmljYXRpb24gbWVudGlvbnMgdGhhdCB0aGUgZnJlcXVlbmN5IG9mIFR4Qnl0ZUNs
a0hTIGlzIGV4YWN0bHkgMS84Cj4+Pj4gdGhlIEhpZ2gtU3BlZWQoSFMpIGJpdCByYXRlKGVhY2gg
SFMgYml0IGNvbnN1bWVzIG9uZSBVSSkuICBTbywgcmVsZXZhbnQKPj4+PiBjdXN0b20gZHJpdmVy
IGNvZGUgaXMgY2hhbmdlZCB0byBwcm9ncmFtIHRob3NlIHZhbHVlcyBhcwo+Pj4+IERJVl9ST1VO
RF9VUChjZmctPmNsa19wcmUsIEJJVFNfUEVSX0JZVEUpLCB0aGVuLgo+Pj4+Cj4+Pj4gTm90ZSB0
aGF0IEkndmUgb25seSB0ZXN0ZWQgdGhlIHBhdGNoIHdpdGggUk02NzE5MSBEU0kgcGFuZWwgb24g
aS5NWDhtcSBFVksuCj4+Pj4gSGVscCBpcyBuZWVkZWQgdG8gdGVzdCB3aXRoIG90aGVyIGkuTVg4
bXEsIE1lc29uIGFuZCBSb2NrY2hpcCBwbGF0Zm9ybXMsCj4+Pj4gYXMgSSBkb24ndCBoYXZlIHRo
ZSBoYXJkd2FyZXMuCj4+Pj4KPj4+PiBGaXhlczogMmVkODY5OTkwZTE0ICgicGh5OiBBZGQgTUlQ
SSBELVBIWSBjb25maWd1cmF0aW9uIG9wdGlvbnMiKQo+Pj4+IENjOiBBbmRyemVqIEhhamRhIDxh
bmRyemVqLmhhamRhQGludGVsLmNvbT4KPj4+PiBDYzogTmVpbCBBcm1zdHJvbmcgPG5hcm1zdHJv
bmdAYmF5bGlicmUuY29tPgo+Pj4+IENjOiBSb2JlcnQgRm9zcyA8cm9iZXJ0LmZvc3NAbGluYXJv
Lm9yZz4KPj4+PiBDYzogTGF1cmVudCBQaW5jaGFydCA8TGF1cmVudC5waW5jaGFydEBpZGVhc29u
Ym9hcmQuY29tPgo+Pj4+IENjOiBKb25hcyBLYXJsbWFuIDxqb25hc0Brd2lib28uc2U+Cj4+Pj4g
Q2M6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BnbWFpbC5jb20+Cj4+Pj4gQ2M6IERh
dmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5pZT4KPj4+PiBDYzogRGFuaWVsIFZldHRlciA8ZGFu
aWVsQGZmd2xsLmNoPgo+Pj4+IENjOiBLaXNob24gVmlqYXkgQWJyYWhhbSBJIDxraXNob25AdGku
Y29tPgo+Pj4+IENjOiBWaW5vZCBLb3VsIDx2a291bEBrZXJuZWwub3JnPgo+Pj4+IENjOiBLZXZp
biBIaWxtYW4gPGtoaWxtYW5AYmF5bGlicmUuY29tPgo+Pj4+IENjOiBKZXJvbWUgQnJ1bmV0IDxq
YnJ1bmV0QGJheWxpYnJlLmNvbT4KPj4+PiBDYzogTWFydGluIEJsdW1lbnN0aW5nbCA8bWFydGlu
LmJsdW1lbnN0aW5nbEBnb29nbGVtYWlsLmNvbT4KPj4+PiBDYzogSGVpa28gU3R1ZWJuZXIgPGhl
aWtvQHNudGVjaC5kZT4KPj4+PiBDYzogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3Jn
Pgo+Pj4+IENjOiBHdWlkbyBHw7xudGhlciA8YWd4QHNpZ3hjcHUub3JnPgo+Pj4+IFRlc3RlZC1i
eTogTGl1IFlpbmcgPHZpY3Rvci5saXVAbnhwLmNvbT4gIyBSTTY3MTkxIERTSSBwYW5lbCBvbiBp
Lk1YOG1xIEVWSwo+Pj4+IFNpZ25lZC1vZmYtYnk6IExpdSBZaW5nIDx2aWN0b3IubGl1QG54cC5j
b20+Cj4+Pj4gLS0tCj4+Pj4gdjEtPnYyOgo+Pj4+ICogVXNlIEJJVFNfUEVSX0JZVEUgbWFjcm8u
IChBbmRyemVqKQo+Pj4+ICogRHJvcCBkc2kgYXJndW1lbnQgZnJvbSB1aTJiYygpIGluIG53bC1k
c2kuYy4KPj4+Pgo+Pj4+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL253bC1kc2kuYyAgICAgICAg
ICAgICAgICAgfCAxMiArKysrKy0tLS0tLS0KPj4+PiAgZHJpdmVycy9waHkvYW1sb2dpYy9waHkt
bWVzb24tYXhnLW1pcGktZHBoeS5jICAgIHwgIDMgKystCj4+Pj4gIGRyaXZlcnMvcGh5L3BoeS1j
b3JlLW1pcGktZHBoeS5jICAgICAgICAgICAgICAgICB8ICA0ICsrLS0KPj4+PiAgZHJpdmVycy9w
aHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLWlubm8tZHNpZHBoeS5jIHwgIDMgKystCj4+Pj4gIGlu
Y2x1ZGUvbGludXgvcGh5L3BoeS1taXBpLWRwaHkuaCAgICAgICAgICAgICAgICB8ICAyICstCj4+
Pj4gIDUgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgMTIgZGVsZXRpb25zKC0pCj4+
Pj4KPj4gWy4uLl0KPj4KPj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvYW1sb2dpYy9waHkt
bWVzb24tYXhnLW1pcGktZHBoeS5jIGIvZHJpdmVycy9waHkvYW1sb2dpYy9waHktbWVzb24tYXhn
LW1pcGktZHBoeS5jCj4+Pj4gaW5kZXggY2QyMzMyYmYwZTMxLi5mZGJkNjRjMDNlMTIgMTAwNjQ0
Cj4+Pj4gLS0tIGEvZHJpdmVycy9waHkvYW1sb2dpYy9waHktbWVzb24tYXhnLW1pcGktZHBoeS5j
Cj4+Pj4gKysrIGIvZHJpdmVycy9waHkvYW1sb2dpYy9waHktbWVzb24tYXhnLW1pcGktZHBoeS5j
Cj4+Pj4gQEAgLTksNiArOSw3IEBACj4+Pj4gIAo+Pj4+ICAjaW5jbHVkZSA8bGludXgvYml0Zmll
bGQuaD4KPj4+PiAgI2luY2x1ZGUgPGxpbnV4L2JpdG9wcy5oPgo+Pj4+ICsjaW5jbHVkZSA8bGlu
dXgvYml0cy5oPgo+Pj4+ICAjaW5jbHVkZSA8bGludXgvY2xrLmg+Cj4+Pj4gICNpbmNsdWRlIDxs
aW51eC9kZWxheS5oPgo+Pj4+ICAjaW5jbHVkZSA8bGludXgvaW8uaD4KPj4+PiBAQCAtMjUwLDcg
KzI1MSw3IEBAIHN0YXRpYyBpbnQgcGh5X21lc29uX2F4Z19taXBpX2RwaHlfcG93ZXJfb24oc3Ry
dWN0IHBoeSAqcGh5KQo+Pj4+ICAJCSAgICAgKERJVl9ST1VORF9VUChwcml2LT5jb25maWcuY2xr
X3plcm8sIHRlbXApIDw8IDE2KSB8Cj4+Pj4gIAkJICAgICAoRElWX1JPVU5EX1VQKHByaXYtPmNv
bmZpZy5jbGtfcHJlcGFyZSwgdGVtcCkgPDwgMjQpKTsKPj4+PiAgCXJlZ21hcF93cml0ZShwcml2
LT5yZWdtYXAsIE1JUElfRFNJX0NMS19USU0xLAo+Pj4+IC0JCSAgICAgRElWX1JPVU5EX1VQKHBy
aXYtPmNvbmZpZy5jbGtfcHJlLCB0ZW1wKSk7Cj4+Pj4gKwkJICAgICBESVZfUk9VTkRfVVAocHJp
di0+Y29uZmlnLmNsa19wcmUsIEJJVFNfUEVSX0JZVEUpKTsKPj4+PiAgCj4+Pj4gIAlyZWdtYXBf
d3JpdGUocHJpdi0+cmVnbWFwLCBNSVBJX0RTSV9IU19USU0sCj4+Pj4gIAkJICAgICBESVZfUk9V
TkRfVVAocHJpdi0+Y29uZmlnLmhzX2V4aXQsIHRlbXApIHwKPj4+Cj4+PiBJJ2xsIHRyeSB0byBy
dW4gYSB0ZXN0LCBjdXJyZW50bHkgdGhlIGNhbGN1bGF0aW9uIGdpdmVzIDIsIHNvIHRoaXMgd291
bGQgZ2l2ZSAxLgo+Pgo+PiBUaGUgQW1sb2dpYyB2ZW5kb3IgY29kZSBkb2VzOgo+Pgo+PiAvKiA+
OCp1aSAqLwo+PiAjZGVmaW5lIERQSFlfVElNRV9DTEtfUFJFKHVpKSAgICAgICAoMTAgKiB1aSkK
PiAKPiBUaGlzIGxvb2tzIGxpa2UgY2xrX3ByZSB0aW1lIGlzIDEwICogdWksIHdoaWNoIG1hdGNo
ZXMgdGhlIGNvbW1lbnQKPiAnPjgqdWknIC0gbG9uZ2VyIHRpbWUgOCAqIHVpLgo+IAo+Pgo+PiB0
X3VpID0gbGNkX3RpbWluZy5iaXRfcmF0ZQo+Pgo+PiB0X3VpID0gKDEwMDAwMDAgKiAxMDApIC8g
KGRzaV91aSAvIDEwMDApOyAvKjEwMCpucyAqLwo+PiB0ZW1wID0gdF91aSAqIDg7IC8qIGxhbmVf
Ynl0ZSBjeWNsZSB0aW1lICovCj4gCj4gSWYgSSByZWFkIGNvcnJlY3RseSwgdGhpcyB0ZW1wIGlu
IHZlbmRvciBjb2RlIGlzIFR4Qnl0ZUNsa0hTIHBlcmlvZAo+IHRpbWUgaW4gcGljb3NlY29uZHMu
IFNvLi4uCj4gCj4+Cj4+IGRwaHktPmNsa19wcmUgPSAoKERQSFlfVElNRV9DTEtfUFJFKHRfdWkp
ICsgdGVtcCAtIDEpIC8gdGVtcCkgJiAweGZmOwo+IAo+IElJVUMsICdkcGh5LT5jbGtfcHJlJyBl
c3NlbnRpYWxseSBtZWFucyBkcGh5LT5jbGtfcHJlID0gRElWX1JPVU5EX1VQKDEwCj4gKiB1aSwg
dGVtcCksIHRoYXQgaXMsIHRoZSB0aW1lIGZvciBkcGh5LT5jbGtfcHJlIGlzIG5vIGxlc3MgdGhh
biAKPiAxMCAqIHVpLiAgVGhlIEQtUEhZIHNwZWMgKHYxLjIpJ3Mgc2F5aW5nIGlzIHRoYXQgdGhl
IG1pbmltdW0gdGltZSBmb3IKPiBkcGh5LT5jbGtfcHJlIGlzIDggKiB1aS4gIFNvLCBpdCBsb29r
cyBsaWtlIG1lc29uIGlzIHN0cmljdGVyIHRoYW4gdGhlCj4gc3BlYy4KPiAKPiBIb3dldmVyLCB0
aGUgdmVuZG9yIGNvZGUgZG9lc24ndCBzZWVtIHRvIG1hdGNoIHRoZSBjdXJyZW50IG1lc29uIGRy
aXZlcgo+IGltcGxlbWVudGF0aW9uLiAgVGhlIHRlbXAgaW4gZHJpdmVyIGNvZGUgaXMgYWxzbyBU
eEJ5dGVDbGtIUyBwZXJpb2QKPiB0aW1lIGluIHBpY29zZWNvbmRzLiBBbmQsIHdpdGhvdXQgdGhp
cyBwYXRjaCwgSSdtIGFzc3VtaW5nIHRoYXQKPiBwcml2LT5jb25maWcuY2xrX3ByZSBpcyA4MDAw
LiAgU28sIGl0IGxvb2tzIGxpa2UgTUlQSV9EU0lfQ0xLX1RJTTEgaXMKPiBzZXQgdG8gRElWX1JP
VU5EX1VQKDgwMDAsIHRlbXApLiAgVGhpcyAnODAwMCcgZG9lcyBfbm90XyByZWZsZWN0Cj4gJzEw
ICogdWknLgo+IAo+IFNvLCAzIGNob2ljZXMgZm9yIG1lc29uLCB1cCB0byB5b3U6Cj4gMSkgSWYg
bWVzb24gcmVhbGx5IHJlcXVpcmVzIHRoZSB0aW1lIGZvciBjbGtfcHJlIG5vIGxlc3MgdGhhbgo+
IDEwICogdWksIHRoZW4gc3RoIGxpa2UgRElWX1JPVU5EX1VQKDEwLCBCSVRTX1BFUl9CWVRFKSBj
YW4gYmUgdXNlZC4KPiAyKSBJZiBtZXNvbiBmb2xsb3dzIHRoZSBzcGVjJ3MgbWluaW11bSB2YWx1
ZSwgdGhlbiB0aGUgcGF0Y2ggZG9lcwo+IHRoaW5ncyByaWdodCBmb3IgbWVzb24uCj4gMykgRm9y
Y2UgdG8gdXNlIDgwMDAgcGljb3NlY29uZHMgZm9yIGNsa19wcmUsIHRoYXQgaXMsIHVzZSBzdGgg
bGlrZQo+IERJVl9ST1VORF9VUCg4MDAwLCB0ZW1wKS4KPiAKPiBXaXRoIHRoaXMgcGF0Y2ggYXBw
bGllZCwgZG8geW91IHNlZSBhbnkgZGlzcGxheSBhcnRpZmFjdHMgYnkgdmlzdWFsCj4gY2hlY2s/
IE9yIGV2ZW4gY2hlY2tlZCBzaWduYWxzIHRocm91Z2ggRFNJIGFuYWx5emVyPwoKVGhhbmtzIGZv
ciB0aGUgZmVlZGJhY2ssIEknbSBjdXJyZW50bHkgdHJ5aW5nIHRvIHB1dCB0aGUgc2V0dXAgYmFj
ayB0bwpydW4gYSB0ZXN0IHdpdGggdGhpcyBjaGFuZ2UuCgpOZWlsCgo+IAo+IFJlZ2FyZHMsCj4g
TGl1IFlpbmcKPiAKPj4KPj4gUEhZIFJlZ2lzdGVycyBvbmx5IHNheXM6Cj4+IE1JUElfRFNJX0NM
S19USU0xCVszMTowXQo+PiA3OjAgCVIvVwkwCSB0Q0xLX1BSRQo+Pgo+Pj4gTmVpbAo+Pj4KPj4K
Pj4gWy4uLl0KPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
