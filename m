Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 333D7C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Feb 2022 11:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jib6hNutesUwKp9WYGfRqOW+lguPSNyDkXKB+e6o3V4=; b=zzGEeEAmtg8oHQ
	9tDUhYQPHmwk3l9BgP9gyStM0OHvTUsdFucitAP1b7t0s6dv+us6Yi1fsK5JZqcMCyDZjBXC9kLF1
	DxtbTheSMi8oK8nCoVveDhdttQHK6AlF0wMx6704M3jYU0+6qIz5GnP2se4AEM6xrO7UiVw+JjFQu
	6npC3NHnVbcj64pP/lrXVnI6dc0aJLT7aVf64EyJhxSK8pgZTi95V2kyogGMvKqxFpvqSCu1vcxtJ
	WVpaxVNEETYXlNhsbX+QmK5PjO82bPXzOa74Yf/ps6uLeIfwRBz+Nivfp305P7/mpRQNLmD9Qil/n
	31QGLCfMqAh3f6hl/Fxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNCYB-000ak9-O8; Thu, 24 Feb 2022 11:44:47 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNCXx-000agg-Vo
 for linux-rockchip@lists.infradead.org; Thu, 24 Feb 2022 11:44:36 +0000
Received: by mail-wr1-x429.google.com with SMTP id x15so2550692wrg.8
 for <linux-rockchip@lists.infradead.org>; Thu, 24 Feb 2022 03:44:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=By0koPKvfxcMR4uami4q6nEo7H/plZ6B7hXdRpr9zos=;
 b=i8qMcPf1Q3mE5GCDoGg5rN2z7KNR4v1QkWzdeaMyW3k3kXIOY/PIZZoO6jIzrS9GXf
 N9J6MgxVHAl8cKqQeyfCQQDG4qPlkD5aYJCyfFSPkTwQNcaQ9gYSWj1kbxmzh8jUh+4o
 WC4u08jO9c1zBuBLLsiQa8Spwvz7ssr2B3BAWulYxl4FnxeAYyvP13FtiYVEawCyqc0q
 +yzoQlx6Y4aTL5/fh1nHkgZbx5plCCjmpVTf1t+MWsHwZBuivtQnySk8fM3G6A5NiXCZ
 sXHHBvZ4aTdUjMWeM2AYEuCPcWqA5p7ojUQdIZHcKCaRG/P808wP/zP8G+Ji2NOxc4zc
 g81g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=By0koPKvfxcMR4uami4q6nEo7H/plZ6B7hXdRpr9zos=;
 b=M2l2cKgrcjQY2hsplJXNDchfmitgSyujyNNhMwWn67wWjf0C0hY/qZM6zL0kY83P25
 H7hHr5B3cCcoEw424qkKNINZe/iascI4ywlkre7seo4GhGlsNMNXtH3T1qZ03UUEmnpP
 C7sSmrtdDtK+cJTwL4Bk86bzgCeWk1xq4ozVUthA4OocPYde2jAf8BpBK95nRBAfaQce
 gjEPvKrJo9HNOVdtES94tsyT4LTmYFtEYXmT9ff2C12i2W7a1aCrUBke/dUeccwQiq7a
 NCkin1Xn0IK2DWTz1WGMRC59ewEDdZDClj5ksvd2m81B0M4ChSxej4r2hxrnGP5lqxjk
 fISw==
X-Gm-Message-State: AOAM532XuT8r+AC9IEgRMrrVYTpZ9X7gnNDlmbIfVpiFRAHayyyrJaAa
 6gpWyaKAWAR/k4HP4ANlXgF4pw==
X-Google-Smtp-Source: ABdhPJxFyXliu42yySrAeEXNzyWqVzug0J0Iti33/VcWEhV2LbIEmmE4MOW6ths5lINZk21h7SfROw==
X-Received: by 2002:a05:6000:186d:b0:1ea:8e14:21c5 with SMTP id
 d13-20020a056000186d00b001ea8e1421c5mr1880571wri.635.1645703071405; 
 Thu, 24 Feb 2022 03:44:31 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net.
 [86.27.177.88])
 by smtp.gmail.com with ESMTPSA id u14sm3164913wmq.41.2022.02.24.03.44.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Feb 2022 03:44:31 -0800 (PST)
Date: Thu, 24 Feb 2022 11:44:28 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Benson Leung <bleung@chromium.org>, Guenter Roeck <groeck@chromium.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Douglas Anderson <dianders@chromium.org>,
 devicetree@vger.kernel.org, chrome-platform@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/4] dt-bindings: pwm: google,cros-ec: include generic
 pwm schema
Message-ID: <YhdvnCnXbzFz63ys@google.com>
References: <20220214081916.162014-1-krzysztof.kozlowski@canonical.com>
 <3248917.W5uN0jUHDo@phil> <YhdXyBvAbdHzc4gH@google.com>
 <1817486.VeUe9BSz9F@phil>
 <ad6e347b-a25b-5309-2a6a-8fd3faba256c@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ad6e347b-a25b-5309-2a6a-8fd3faba256c@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220224_034434_079917_6DF2B1D3 
X-CRM114-Status: GOOD (  25.19  )
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

T24gVGh1LCAyNCBGZWIgMjAyMiwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKCj4gT24gMjQv
MDIvMjAyMiAxMTowNiwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4gPiBBbSBEb25uZXJzdGFnLCAy
NC4gRmVicnVhciAyMDIyLCAxMTowMjo0OCBDRVQgc2NocmllYiBMZWUgSm9uZXM6Cj4gPj4gT24g
V2VkLCAyMyBGZWIgMjAyMiwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4gPj4KPiA+Pj4gSGkgTGVl
LAo+ID4+Pgo+ID4+PiBBbSBNaXR0d29jaCwgMjMuIEZlYnJ1YXIgMjAyMiwgMTA6MTY6MDEgQ0VU
IHNjaHJpZWIgTGVlIEpvbmVzOgo+ID4+Pj4gT24gTW9uLCAxNCBGZWIgMjAyMiwgS3J6eXN6dG9m
IEtvemxvd3NraSB3cm90ZToKPiA+Pj4+Cj4gPj4+Pj4gSW5jbHVkZSBnZW5lcmljIHB3bS55YW1s
IHNjaGVtYSwgd2hpY2ggZW5mb3JjZXMgUFdNIG5vZGUgbmFtaW5nLiAgS2VlcAo+ID4+Pj4+IHRo
ZSBvbGQgbmFtZSBpbiBiaW5kaW5ncyBhcyBkZXByZWNhdGVkLgo+ID4+Pj4+Cj4gPj4+Pj4gU2ln
bmVkLW9mZi1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBjYW5v
bmljYWwuY29tPgo+ID4+Pj4+IC0tLQo+ID4+Pj4+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvbWZkL2dvb2dsZSxjcm9zLWVjLnlhbWwgICAgfCA0ICsrKysKPiA+Pj4+Cj4gPj4+
PiBBY2tlZC1ieTogTGVlIEpvbmVzIDxsZWUuam9uZXNAbGluYXJvLm9yZz4KPiA+Pj4KPiA+Pj4g
d2hhdCBpcyB5b3VyIGV4cGVjdGF0aW9uIHJlZ2FyZGluZyB0aGlzIHBhdGNoPwo+ID4+Pgo+ID4+
PiBBcmUgeW91IHBsYW5uaW5nIHRvIG1lcmdlIGl0IG9yIGFyZSB5b3UgZXhwZWN0aW5nIHRoaXMg
dG8gZ28gdGhyb3VnaAo+ID4+PiBzb21lIG90aGVyIHRyZWU/Cj4gPj4+Cj4gPj4+IFRoZSBiaW5k
aW5nLWNoYW5nZSBoZXJlIGlzIGJhY2t3YXJkLWNvbWFwdGlibGUgaW4gdGhhdCB0aGUgb2xkCj4g
Pj4+IG5vZGUtbmFtZSBpcyBzdGlsbCBpbiBpdCwgb25seSBtYXJrZWQgYXMgZGVwcmVjYXRlZCwg
c28gaW4gdGhlb3J5Cj4gPj4+IHRoaXMgcGF0Y2ggc2hvdWxkIGJlIGFibGUgdG8gYmUgYXBwbGll
ZCBvbiBpdHMgb3duIHdpdGhvdXQKPiA+Pj4gY2F1c2luZyBkZWZlY3RzLgo+ID4+Cj4gPj4gSW4g
YW4gaWRlYWwgd29ybGQsIGl0IHdvdWxkIGJlIGJyb2tlbiB1cCBhbmQgSSB3b3VsZCB0YWtlIHRo
ZSBNRkQKPiA+PiBwYXJ0LiAgIElzIHRoYXQgcG9zc2libGUgb3IgYXJlIHRoZXJlIGRlcGVuZGVu
Y2llcz8KPiA+IAo+ID4gVGhhdCBpcyBhbHNvIHdoYXQgS3J6eXN6dG9mIGhhZCBpbiBtaW5kIC0g
c2VlIGhpcyByZXBseSB0byBwYXRjaDQuCj4gPiBCaW5kaW5nIGdvaW5nIHRocm91Z2ggdGhlIE1G
RCB0cmVlIGFuZCBzb2MgbWFpbnRhaW5lcnMgYXBwbHlpbmcKPiA+IHRoZSBpbmRpdmlkdWFsIGR0
cyBwYXRjaGVzLgo+ID4gCj4gPiBBcyB3cml0dGVuIHRoZSBiaW5kaW5nIGNoYW5nZSBpcyBiYWNr
d2FyZCBjb21wYXRpYmxlLCBzbyBubyBoYXJtLgo+ID4gCj4gPiBJIHdhcyBqdXN0IGNvbmZ1c2Vk
IGJ5IHRoZSAiQWNrZWQtYnkiIGFuZCB3YW50ZWQgdG8gY2xhcmlmeSBob3cgeW91Cj4gPiBzZWUg
aXQgOy0pCj4gPgo+IAo+IFRoZSBiaW5kaW5ncyBwYXRjaCBzaG91bGQgbm90IGJlIHNwbGl0IG1v
cmUsIGJ1dCBpdHNlbGYgY2FuIGJlIHRha2VuCj4gYWxvbmUuIERUUyBwYXRjaGVzIGNhbiBnbyB2
aWEgU29DIG1haW50YWluZXIgdHJlZXMuCgpTbyBpbiBhbnN3ZXIgdG8gSGVpa28ncyBxdWVzdGlv
biwgZWl0aGVyIFRoaWVycnksIFJvYiBvciBJIGNhbiB0YWtlCnRoZSBwYXRjaC4gIEknbSBub3Qg
b3Zlcmx5IGZ1c3NlZCB3aGljaC4gIElmIEkgYW0gdG8gdGFrZSBpdCwgSSBuZWVkClRoaWVycnkn
cyBnby1haGVhZCBhbmQgaW5mbyBvbiB3aGV0aGVyIGhlIHJlcXVpcmVzIGEgUFIgb3Igbm90LgoK
LS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpQcmluY2lwYWwgVGVjaG5pY2FsIExlYWQgLSBEZXZl
bG9wZXIgU2VydmljZXMKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFy
bSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
