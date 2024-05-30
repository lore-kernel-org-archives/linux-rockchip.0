Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF7A3C27C43
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 May 2024 23:17:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OhmsNILs8WdJKDe30cwv3Amq2go9lnVmtAkYOOaPJOw=; b=sBtciGecEwGS0B
	xg6skNTfLONqI30CKGxoIV1OpB5aKpUUaKgiF8rrCrt2qz3HMrrEmM9iXr//kqzhM6UVbReACLj0J
	E2a+5A57W4iWXUcaC7ot3Q5w5uzfqP5kS89sLC/j2t0Pg0Co9FtCJzLnUNYvjcSmWJj4vmS+3mrYc
	oaPftsj2NAEwlX61z7cIYU8tenS+JNCUcDS7HIt2X8ILcLgyeOZxo3G6tUj9XT/N5DSSJBO98ObyJ
	zsaJ421kAOjtFj+6/dEB7dhFIjLX6Z8pPR2MLsyHUYuWYzj55pJMEPAzpCaJ2NLTmP+d1OuMudtob
	jFb5KTu6ZqrrVN9cCJpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCp1A-00000008ftr-0l7U;
	Thu, 30 May 2024 23:17:08 +0000
Received: from mail-ot1-x32f.google.com ([2607:f8b0:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCp16-00000008fs5-32Vd
	for linux-rockchip@lists.infradead.org;
	Thu, 30 May 2024 23:17:06 +0000
Received: by mail-ot1-x32f.google.com with SMTP id 46e09a7af769-6f8d688ba3cso271654a34.3
        for <linux-rockchip@lists.infradead.org>; Thu, 30 May 2024 16:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1717111014; x=1717715814; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h8KNeqwgU441IhOlEftCeN31AWUkQGVDTw621Xo3rrs=;
        b=j4PPlvZgaEQ7VwgfugwhQZaetTJvX6dzI35eEWKJMJc38TgEUGwbTEtZCgx0o1qRBO
         aESv4RkFBb61GMsDmFgOe38gbwoMqzExE/pu209m+B8FaGJ35KUWOym44/FH7xG042cx
         3azy0eEtZHg/JiK6oyIHYFrGl0xgMwkP95vcw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717111014; x=1717715814;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=h8KNeqwgU441IhOlEftCeN31AWUkQGVDTw621Xo3rrs=;
        b=ikFwedsJDurdk5D9nuH4Lf2lpS9OGFE+HmSwJNDgT7UnZaiw9C/yuhh5cEIgjVzrey
         BATqgut71M3emEF47HvaIuQY+BxI8dts7Vc+k40uCGGfA/Uo9WFIVIYHI5HSEkz8q2my
         sJsGz1KP3nxOv4iVGKPJt7UA5ae8T6+0xLp0F9uixlgaiYM2iPQ1rptrE4CDaoZ9xGhn
         TWvEYionBg9Y+ENxcp0RjZ6k8b2kCRH7GDj98vW1NLP9WdCY/O6UECCLTZrPklTkvLaW
         O1Suoi8OMuvbUoxT7rdZni/DDVLd+/oVlYTyizscsbBnpi1SG18+FCOQzGim6Co9J5u+
         GSsA==
X-Forwarded-Encrypted: i=1; AJvYcCVn22ChLrO3DkdZHPfr+F5m22CiVsmYx6g9BMY2Yz6gjHDY8rZVMzXIjm5ywrkgf9cty6kt8Dl/CgPDVM8kj1PRbqXt/Ca8FLKyIdH5LvLQ+yEy
X-Gm-Message-State: AOJu0YyhCCoJFmONeaZsnfQWHAIodEVmVadRk1qwvYF1Msr7yIJQ4ZwI
	8u9xULDOrfcILOfH7AA260Bzj2CbyTvyatWbJM9/hO8nY9pBSSp1iIHiFlgPQONCB9KcCN6s+nW
	KHg==
X-Google-Smtp-Source: AGHT+IH6JetUx+O1HJ2PmWTzPG4j5VCFwOPC7ZcvsbYgVpZbCSieqBqj1I5CV7vRZUFJBDLiCARqBg==
X-Received: by 2002:a05:6358:c626:b0:18f:673e:fce2 with SMTP id e5c5f4694b2df-19b48c1c438mr41950355d.6.1717111014033;
        Thu, 30 May 2024 16:16:54 -0700 (PDT)
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com. [209.85.160.179])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-794f3172da2sm18206685a.123.2024.05.30.16.16.52
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 May 2024 16:16:53 -0700 (PDT)
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-43e14f0bd75so75111cf.1
        for <linux-rockchip@lists.infradead.org>; Thu, 30 May 2024 16:16:52 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWuzKYSM3RIjedqHBR1r21nUVoHNQ9quwdUXwNWVWqlbnb+ohffD7QwGyjLAi7S8YtJOiNg1iQCmivVh4G/gTHRtEnGhIg1Tqv/xIY4BzriZ8Jc
X-Received: by 2002:a05:622a:1cc3:b0:43d:e001:69bc with SMTP id
 d75a77b69052e-43ff4f80e4cmr291431cf.17.1717111012344; Thu, 30 May 2024
 16:16:52 -0700 (PDT)
MIME-Version: 1.0
References: <20240531-edp-panel-drop-v3-0-4c98b2b95e3a@linaro.org>
In-Reply-To: <20240531-edp-panel-drop-v3-0-4c98b2b95e3a@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 30 May 2024 16:16:35 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XMgAnaEaHXZJL57+66OXs0afP9vurxf_ffqkum=xqEfA@mail.gmail.com>
Message-ID: <CAD=FV=XMgAnaEaHXZJL57+66OXs0afP9vurxf_ffqkum=xqEfA@mail.gmail.com>
Subject: Re: [PATCH v3 0/3] drm/panel-edp: remove several legacy compatibles
 used by the driver
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Sam Ravnborg <sam@ravnborg.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, dri-devel@lists.freedesktop.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, Jeffrey Hugo <quic_jhugo@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240530_161704_775743_372C80F1 
X-CRM114-Status: GOOD (  24.18  )
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

SGksCgpPbiBUaHUsIE1heSAzMCwgMjAyNCBhdCA0OjEz4oCvUE0gRG1pdHJ5IEJhcnlzaGtvdgo8
ZG1pdHJ5LmJhcnlzaGtvdkBsaW5hcm8ub3JnPiB3cm90ZToKPgo+IFRoZXJlIGFyZSB0d28gd2F5
cyB0byBkZXNjcmliZSBhbiBlRFAgcGFuZWwgaW4gZGV2aWNlIHRyZWUuIFRoZQo+IHJlY29tbWVu
ZGVkIHdheSBpcyB0byBhZGQgYSBkZXZpY2Ugb24gdGhlIEFVWCBidXMsIGlkZWFsbHkgdXNpbmcg
dGhlCj4gZWRwLXBhbmVsIGNvbXBhdGlibGUuIFRoZSBsZWdhY3kgd2F5IGlzIHRvIGRlZmluZSBh
IHRvcC1sZXZlbCBwbGF0Zm9ybQo+IGRldmljZSBmb3IgdGhlIHBhbmVsLgo+Cj4gRG9jdW1lbnQg
dGhhdCBhZGRpbmcgc3VwcG9ydCBmb3IgZURQIHBhbmVscyBpbiBhIGxlZ2FjeSB3YXkgaXMgc3Ry
b25nbHkKPiBkaXNjb3VyYWdlZCAoaWYgbm90IGZvcmJpZGRlbiBhdCBhbGwpLgo+Cj4gV2hpbGUg
d2UgYXJlIGF0IGl0LCBhbHNvIGRyb3AgbGVnYWN5IGNvbXBhdGlibGUgc3RyaW5ncyBhbmQgYmlu
ZGluZ3MgZm9yCj4gZml2ZSBwYW5lbHMuIFRoZXNlIGNvbXBhdGlibGUgc3RyaW5ncyB3ZXJlIG5l
dmVyIHVzZWQgYnkgYSBEVCBmaWxlCj4gcHJlc2VudCBpbiBMaW51eCBrZXJuZWwgYW5kIG1vc3Qg
bGlrZWx5IHdlcmUgbmV2ZXIgdXNlZCB3aXRoIHRoZQo+IHVwc3RyZWFtIExpbnV4IGtlcm5lbC4K
Pgo+IFRoZSBmb2xsb3dpbmcgY29tcGF0aWJsZXMgd2VyZSBuZXZlciB1c2VkIGJ5IHRoZSBkZXZp
Y2VzIHN1cHBvcnRlZCBieQo+IHRoZSB1cHN0cmVhbSBrZXJuZWwgYW5kIGFyZSBhIHN1YmplY3Qg
dG8gcG9zc2libGUgcmVtb3ZhbDoKPgo+IC0gbGcsbHAwOTdxeDEtc3BhMQo+IC0gc2Ftc3VuZyxs
c24xMjJkbDAxLWMwMQo+IC0gc2hhcnAsbGQtZDUxMTZ6MDFiCj4KPiBJJ20gY29uc2lkZXJpbmcg
ZHJvcHBpbmcgdGhlbSBsYXRlciwgdW5sZXNzIHRoZXJlIGlzIGEgZ29vZCByZWFzb24gbm90Cj4g
dG8gZG8gc28uCj4KPiBTaWduZWQtb2ZmLWJ5OiBEbWl0cnkgQmFyeXNoa292IDxkbWl0cnkuYmFy
eXNoa292QGxpbmFyby5vcmc+Cj4gLS0tCj4gQ2hhbmdlcyBpbiB2MzoKPiAtIFJlcGhyYXNlZCB0
aGUgd2FybmluZyBjb21tZW50LCBmb2xsb3dpbmcgc29tZSBvZiBEb3VnJ3Mgc3VnZ2VzdGlvbnMu
Cj4gLSBMaW5rIHRvIHYyOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjQwNTI5LWVkcC1w
YW5lbC1kcm9wLXYyLTAtZmNmYzQ1N2ZjOGRkQGxpbmFyby5vcmcKPgo+IENoYW5nZXMgaW4gdjI6
Cj4gLSBBY3R1YWxseSBkcm9wIHN1cHBvcnQgZm9yIGZpdmUgcGFuZWxzIGFja2VkIGJ5IERvdWcg
QW5kZXJzc29uCj4gLSBMaW5rIHRvIHYxOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIwMjQw
NTIzLWVkcC1wYW5lbC1kcm9wLXYxLTEtMDQ1ZDYyNTExZDA5QGxpbmFyby5vcmcKPgo+IC0tLQo+
IERtaXRyeSBCYXJ5c2hrb3YgKDMpOgo+ICAgICAgIGRybS9wYW5lbC1lZHA6IGFkZCBmYXQgd2Fy
bmluZyBhZ2FpbnN0IGFkZGluZyBuZXcgcGFuZWwgY29tcGF0aWJsZXMKPiAgICAgICBkdC1iaW5k
aW5nczogZGlzcGxheTogcGFuZWwtc2ltcGxlOiBkcm9wIHNldmVyYWwgZURQIHBhbmVscwo+ICAg
ICAgIGRybS9wYW5lbC1lZHA6IGRyb3Agc2V2ZXJhbCBsZWdhY3kgcGFuZWxzCj4KPiAgLi4uL2Jp
bmRpbmdzL2Rpc3BsYXkvcGFuZWwvcGFuZWwtc2ltcGxlLnlhbWwgICAgICAgfCAgMTAgLS0KPiAg
ZHJpdmVycy9ncHUvZHJtL3BhbmVsL3BhbmVsLWVkcC5jICAgICAgICAgICAgICAgICAgfCAxOTIg
KysrLS0tLS0tLS0tLS0tLS0tLS0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygr
KSwgMTc3IGRlbGV0aW9ucygtKQoKVGhhbmtzISBJJ20gaGFwcHkgdG8gYXBwbHkgdGhpcyBzZXJp
ZXMgb3IgYWxzbyBoYXBweSBpZiBzb21lIG90aGVyCmRybS1taXNjIGNvbW1pdHRlciBtZW1iZXIg
d2FudHMgdG8gYXBwbHkgaXQuIFByb2JhYmx5IHdlIHNob3VsZCB3YWl0CmZvciBhIERUIHBlcnNv
biB0byBtYWtlIHN1cmUgdGhhdCB0aGV5IGRvbid0IGhhdmUgYW55IHByb2JsZW1zIHdpdGgKdGhl
IGJpbmRpbmdzIGNoYW5nZS4KCgotRG91ZwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
