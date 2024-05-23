Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EB06FC25B79
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 May 2024 23:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j5g4Djg28BzmkBTNAoczTy44iVZUgzWDvL1+NGU0v9E=; b=rw+JLXbB4/LJXz
	egMiaOcVpBpOPEWF/Td65Wd1gcVfRSDXwnNFqLsnCM7U3hvTP+q4HYinxwEYPrv5K7ShPOmJkXa5o
	cx/AY7+Bsd515aokIxUatzIIW0AXFurIXnMYU6OrjSpOuZABHvT5a+wwHY1vfqHLF/WraOefG8X5j
	vNHvfaEwsGp8m60IkFqnl5zvvaELNrHK2FahOYJyUlUVdLNyHZWa39aMDTWefBTpNqdjsEdpLi04A
	3ckwBWxMVcu1CeLg0jLQrpsyyH97s4u51VUHZHk5qy4W9kPGJru15rNC4FQTyz9uGRVmuJTOkMTw2
	f9lVFBi7Gr4DTN5+J5/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAHlx-00000007Zcc-43xU;
	Thu, 23 May 2024 23:22:57 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sAHlv-00000007ZZl-08nM
	for linux-rockchip@lists.infradead.org;
	Thu, 23 May 2024 23:22:56 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2e538a264e0so114394931fa.1
        for <linux-rockchip@lists.infradead.org>; Thu, 23 May 2024 16:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716506571; x=1717111371; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=JFndDbSEPFGWTHHMY8d+FZXd6zTs2WlrRGp5IfPBkeI=;
        b=DsNU+GXXhFIzrU3QZRRL59pU40oI+8tpkYv+iI3mfNqGv9C/volQ+VmD2n4laCDQh1
         pZvycWF84un0SPID63Tftz4n06dIMZe/5l0gx3eWESubvhYziUX3nFR0nmMDwNvyO2yM
         OFTA1Ay1QMT7xXBe7RKIJaxt2Soq8jXvvVgjjw8NFngKFZrRd6Zx/SUqjwRUAJzFJQ+n
         TNU5nllWCvvdCwBmqUPta9GFByZP28Xlv36GSjSvu/qaOleqJDVeFPXTR975aRnKB+Aa
         y8yEBzeEo6BC1HJo4/jgSEz6awq36VVkLwjct3slRrqMbCPXndtkfK/24rxnrs0Yxdl3
         Dc6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716506571; x=1717111371;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JFndDbSEPFGWTHHMY8d+FZXd6zTs2WlrRGp5IfPBkeI=;
        b=i/p17DR0eJechhER5+iM4I+NuKsGvYvn/uF3i3QSJT3tBkVwvDpMk6K+RfRpSXCXUF
         i01XiBAs9avgt7Aw+NuhvHU5K/e6vKG4BmrumraoZzdMrj2DEVzAjphAyNiIepXu9CdX
         v79t9fi+s+hLv7frSFc7F0Vfk5ytQ4ymmHO40oRHLNRIFPqNF44HGwiMPKN3EBE04wvq
         3iWEiB6PtutzsWN3kO91G6CpKwr1TgEDczo1JHmxWifr0aValFQ4WIKnnSk4Rw0cs0bG
         R7eLTlo6xS5NDR3PVJ8TBTpq4KiITAl1SvJgZgxMr6IzED/03xSWsFlaYCRB2IqnGQbJ
         XPTA==
X-Forwarded-Encrypted: i=1; AJvYcCWyt5sWlc4EnErsTM2FKr8DLVuF49gQ5OgOcy+JYn4LlDqsH0D+zbXSJaSk8XqIbp+o2n5sHkIwTOCvxIxpDVoigxepVCzTvNwLMKl6lRxpB+Pm
X-Gm-Message-State: AOJu0YxnX69x3zbfgkZ/0d0HioZTjwm4uGSiFaYQG+Sfg33ArdtAT4em
	2zG2FXTOJXbnKDrlEMMd8KtM19haS7DmdOfd53dlCrLLwp9FEw0X/NT6lqFxyv0=
X-Google-Smtp-Source: AGHT+IF4P8BB0TG4cx6LOlYv3K27CXQM5lsuUzYsdgB4XMRi7GyT4ZdjwvZ5ytrxEpqVrOoi24g7HQ==
X-Received: by 2002:a2e:b784:0:b0:2e0:3f37:5af5 with SMTP id 38308e7fff4ca-2e95b2564a0mr3991731fa.41.1716506571062;
        Thu, 23 May 2024 16:22:51 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e95bcd7c20sm231521fa.33.2024.05.23.16.22.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 May 2024 16:22:50 -0700 (PDT)
Date: Fri, 24 May 2024 02:22:48 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Doug Anderson <dianders@chromium.org>, Yakir Yang <ykk@rock-chips.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH RFC] drm/panel-edp: add fat warning against adding new
 panel compatibles
Message-ID: <6pivdkrvtknj4g4nniq3fesdzp2pyskkkhn57kg2huro7v253q@ygco3sc23u76>
References: <20240523-edp-panel-drop-v1-1-045d62511d09@linaro.org>
 <CAD=FV=Xz1VsF8jG0q-Ldk+p=NY-ChJkTk0iW8fq2bO=oRFvXRA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=Xz1VsF8jG0q-Ldk+p=NY-ChJkTk0iW8fq2bO=oRFvXRA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240523_162255_260589_88EC24A1 
X-CRM114-Status: GOOD (  40.54  )
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

T24gVGh1LCBNYXkgMjMsIDIwMjQgYXQgMDg6MzY6MzlBTSAtMDcwMCwgRG91ZyBBbmRlcnNvbiB3
cm90ZToKPiBIaSwKPiAKPiBPbiBXZWQsIE1heSAyMiwgMjAyNCBhdCAzOjA34oCvUE0gRG1pdHJ5
IEJhcnlzaGtvdgo+IDxkbWl0cnkuYmFyeXNoa292QGxpbmFyby5vcmc+IHdyb3RlOgo+ID4KPiA+
IEFkZCBhIGZhdCB3YXJuaW5nIGFnYWluc3QgYWRkaW5nIG5ldyBwYW5lbCBjb21wYXRpYmxlcyB0
byB0aGUgcGFuZWwtZWRwCj4gPiBkcml2ZXIuIEFsbCBuZXcgdXNlcnMgb2YgdGhlIGVEUCBwYW5l
bHMgYXJlIHN1cHBvc2VkIHRvIHVzZSB0aGUgZ2VuZXJpYwo+ID4gImVkcC1wYW5lbCIgY29tcGF0
aWJsZSBkZXZpY2Ugb24gdGhlIEFVWCBidXMuIFRoZSByZW1haW5pbmcgY29tcGF0aWJsZXMKPiA+
IGFyZSBlaXRoZXIgdXNlZCBieSB0aGUgZXhpc3RpbmcgRFQgb3Igd2VyZSB1c2VkIHByZXZpb3Vz
bHkgYW5kIGFyZQo+ID4gcmV0YWluZWQgZm9yIGJhY2t3YXJkcyBjb21wYXRpYmlsaXR5Lgo+ID4K
PiA+IFN1Z2dlc3RlZC1ieTogRG91ZyBBbmRlcnNvbiA8ZGlhbmRlcnNAY2hyb21pdW0ub3JnPgo+
ID4gU2lnbmVkLW9mZi1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtvdkBsaW5h
cm8ub3JnPgo+ID4gLS0tCj4gPiBUaGUgZm9sbG93aW5nIGNvbXBhdGlibGVzIHdlcmUgbmV2ZXIg
dXNlZCBieSB0aGUgZGV2aWNlcyBzdXBwb3J0ZWQgYnkKPiA+IHRoZSB1cHN0cmVhbSBrZXJuZWwg
YW5kIGFyZSBhIHN1YmplY3QgdG8gcG9zc2libGUgcmVtb3ZhbDoKPiA+Cj4gPiAtIGF1byxiMTMz
aGFuMDUKPiAKPiBBY2suIExvb2tzIGxpa2UgdGhpcyB3YXMgYWRkZWQgYnkgQmpvcm4gYnV0IGJ5
IHRoZSB0aW1lIHRoZSBkdHMgZm9yCj4gdGhlIGJvYXJkIChmcm9tIGNvbnRleHQsIHNjODE4MHgt
cHJpbXVzKSB1c2luZyBpdCBtYWRlIGl0IHVwc3RyZWFtIGl0Cj4gd2FzIHVzaW5nICJlZHAtcGFu
ZWwiLgo+IAo+IAo+ID4gLSBhdW8sYjE0MGhhbjA2Cj4gCj4gQWNrLiBTYW1lIGFzIGFib3ZlLCBi
dXQgdGhpcyB0aW1lIHRoZSBib2FyZCB3YXMgInNjODE4MHgtbGVub3ZvLWZsZXgtNWciLgo+IAo+
IAo+ID4gLSBpdm8sbTEzM253ZjQtcjAKPiAKPiBBY2suIEFsc28gYWRkZWQgYnkgQmpvcm4gYnV0
IG5vdCBlYXN5IHRvIHRlbGwgZnJvbSBjb250ZXh0IHdoaWNoIGJvYXJkCj4gaXQgd2FzIGZyb20u
ICJtMTMzbndmNCIgbmV2ZXIgc2hvd3MgdXAgaW4gdGhlIGhpc3Rvcnkgb2YgYXJtNjQgcWNvbQo+
IGR0cyBmaWxlcy4KPiAKPiAKPiA+IC0gbGcsbHAwOTdxeDEtc3BhMQo+IAo+IE1heWJlLiBBZGRl
ZCBieSBZYWtpciBhdCBSb2NrY2hpcC4gSSBkb24ndCB0aGluayB0aGlzIHdhcyBDaHJvbWVPUwo+
IHJlbGF0ZWQgc28gSSBkb24ndCBoYXZlIGFueSBpbnNpZGUga25vd2xlZGdlLiBQcmVzdW1hYmx5
IHRoaXMgaXMgZm9yCj4gc29tZSBvdGhlciBoYXJkd2FyZSB0aGV5IHdlcmUgdXNpbmcuIFByb2Jh
Ymx5IHdvcnRoIENDaW5nIFJvY2tjaGlwCj4gbWFpbGluZyBsaXN0LiBJdCdzIGVudGlyZWx5IHBv
c3NpYmxlIHRoYXQgdGhleSBoYXZlIGRvd25zdHJlYW0gZHRzCj4gZmlsZXMgdXNpbmcgdGhpcyBh
bmQgdGhlcmUncyBubyByZXF1aXJlbWVudCB0byB1cHN0cmVhbSBkdHMgZmlsZXMgdGhhdAo+IEkn
bSBhd2FyZSBvZi4KCkkgc2VlLiBBZGRpbmcgaGltIHRvIHRoZSBDQyBsaXN0LgoKPiAKPiAKPiA+
IC0gbGcsbHAxMjlxZQo+IAo+IE5BSy4gU2VlICJhcmNoL2FybS9ib290L2R0cy9udmlkaWEvdGVn
cmExMjQtdmVuaWNlMi5kdHMiCgpZZXMuIEkgZXZlbiBoYWQgYSBjb21tZW50IG5leHQgdG8gaXQu
IEFuZCB0aGVuIGJsaW5kbHkgcG9zdGVkIGl0IGhlcmUuCgo+IAo+IAo+ID4gLSBzYW1zdW5nLGxz
bjEyMmRsMDEtYzAxCj4gCj4gTWF5YmUuIEFsc28gYnkgWWFraXIgYXQgUm9ja2NoaXAgYW5kIGFs
c28gZG9lc24ndCBhcHBlYXIgdG8gYmUKPiBDaHJvbWVPUywgc28geW91IHNob3VsZCBhc2sgdGhl
bS4KPiAKPiAKPiA+IC0gc2Ftc3VuZyxsdG4xNDBhdDI5LTMwMQo+IAo+IE5BSy4gYXJjaC9hcm0v
Ym9vdC9kdHMvbnZpZGlhL3RlZ3JhMTI0LW55YW4tYmxhemUuZHRzCj4gCj4gCj4gPiAtIHNoYXJw
LGxkLWQ1MTE2ejAxYgo+IAo+IEFkZGVkIGJ5IEplZmZyZXkgSHVnby4gTWF5YmUgQ2MgaGltIHRv
IG1ha2Ugc3VyZSBpdCdzIE9LIHRvIGRlbGV0ZT8KCkkgcGluZ2VkIGhpbSBvbiBJUkMuCgo+IAo+
IAo+ID4gLSBzaGFycCxscTE0MG0xanc0Ngo+IAo+IEFjay4gRmVlbCBmcmVlIHRvIGRlbGV0ZS4g
VGhpcyB3YXMgdXNlZCBpbiB0aGUgc2M3MjgwIHJlZmVyZW5jZSBib2FyZAo+IChob2dsaW4vem9n
bGluKSBhbmQgYnkgdGhlIHRpbWUgdGhlIGR0cyBtYWRlIGl0IHVwc3RyZWFtIGl0IHdhcwo+IGFs
cmVhZHkgdXNpbmcgZ2VuZXJpYyBlZHAtcGFuZWwuCj4gCj4gCj4gPiAtIHN0YXJyeSxrcjEyMmVh
MHNyYQo+IAo+IEFjay4gRnJvbSBteSBwcmV2aW91cyBub3RlczogInN0YXJyeSxrcjEyMmVhMHNy
YSAtIHJrMzM5OS1ncnUtZ3J1Cj4gKHJlZmVyZW5jZSBib2FyZCwgbm90IHVwc3RyZWFtKSIuIE5v
Ym9keSBuZWVkcyB0aGlzLgo+IAo+IAo+ID4gSSdtIGNvbnNpZGVyaW5nIGRyb3BwaW5nIHRoZW0s
IHVubGVzcyB0aGVyZSBpcyBhIGdvb2QgcmVhc29uIG5vdCB0byBkbwo+ID4gc28uCj4gPiAtLS0K
PiA+ICBkcml2ZXJzL2dwdS9kcm0vcGFuZWwvcGFuZWwtZWRwLmMgfCAxOCArKysrKysrKysrKysr
KysrKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcGFuZWwvcGFuZWwtZWRwLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vcGFuZWwvcGFuZWwtZWRwLmMKPiA+IGluZGV4IDZkYjI3N2VmY2Ji
Ny4uOTViMjVlYzY3MTY4IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3BhbmVsL3Bh
bmVsLWVkcC5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcGFuZWwvcGFuZWwtZWRwLmMKPiA+
IEBAIC0xNzc2LDcgKzE3NzYsMjMgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBvZl9kZXZpY2VfaWQg
cGxhdGZvcm1fb2ZfbWF0Y2hbXSA9IHsKPiA+ICAgICAgICAgewo+ID4gICAgICAgICAgICAgICAg
IC8qIE11c3QgYmUgZmlyc3QgKi8KPiA+ICAgICAgICAgICAgICAgICAuY29tcGF0aWJsZSA9ICJl
ZHAtcGFuZWwiLAo+ID4gLSAgICAgICB9LCB7Cj4gPiArICAgICAgIH0sCj4gPiArICAgICAgIC8q
Cj4gPiArICAgICAgICAqIERvIG5vdCBhZGQgcGFuZWxzIHRvIHRoZSBsaXN0IGJlbG93IHVubGVz
cyB0aGV5IGNhbm5vdCBiZSBoYW5kbGVkIGJ5Cj4gPiArICAgICAgICAqIHRoZSBnZW5lcmljIGVk
cC1wYW5lbCBjb21wYXRpYmxlLgo+ID4gKyAgICAgICAgKgo+ID4gKyAgICAgICAgKiBUaGUgb25s
eSB0d28gdmFsaWQgcmVhc29ucyBhcmU6Cj4gPiArICAgICAgICAqIC0gYmVjYXVzZSBvZiB0aGUg
cGFuZWwgaXNzdWVzIChlLmcuIGJyb2tlbiBFRElEIG9yIGJyb2tlbgo+ID4gKyAgICAgICAgKiAg
IGlkZW50aWZpY2F0aW9uKSwKPiA+ICsgICAgICAgICogLSBiZWNhdXNlIHRoZSBwbGF0Zm9ybSB3
aGljaCB1c2VzIHRoZSBwYW5lbCBkaWRuJ3Qgd2lyZSB1cCB0aGUgQVVYCj4gPiArICAgICAgICAq
ICAgYnVzIHByb3Blcmx5Lgo+IAo+IFlvdSBtZWFuIHRoYXQgdGhleSBwaHlzaWNhbGx5IGRpZG4n
dCB3aXJlIHVwIHRoZSBBVVggYnVzPyBJIGRvbid0Cj4gdGhpbmsgdGhhdCdzIGFjdHVhbGx5IHBv
c3NpYmxlLiBJIGRvbid0IGJlbGlldmUgeW91IGNhbiB1c2UgYW4gZURQCj4gcGFuZWwgd2l0aG91
dCB0aGlzIHdvcmtpbmcuIENvbmNlaXZhYmx5IGEgcmVhc29uIHRvIGFkZCBoZXJlIGlzIGlmCj4g
dGhlcmUncyBzb21lIG9sZCBwbGF0Zm9ybSB0aGF0IGhhc24ndCBjb2RlZCB1cCBzdXBwb3J0IGZv
ciBBVVggYnVzLgo+IC4uLmJ1dCBpdCB3b3VsZCBiZSBtdWNoIHByZWZlcnJlZCB0byB1cGRhdGUg
dGhlIHBsYXRmb3JtIGRyaXZlciB0bwo+IHN1cHBvcnQgaXQuCgpJIHdhcyB0aGlua2luZyBhYm91
dCB0aGUgRFQvZHJpdmVyIHNpZGUgb2YgdGhlIHN0b3J5LiBMZXQgbWUgcmVwaHJhc2UgaXQKaW4g
YSBjbGVhbmVyIHdheS4KCi0tIApXaXRoIGJlc3Qgd2lzaGVzCkRtaXRyeQoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
