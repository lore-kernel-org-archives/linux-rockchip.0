Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 550B5C282EC
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Mar 2025 18:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBRxmbZKSGb5l7mG63zmW1nlNoxptQBsA678C5WbfdU=; b=Qd+THexnr0VmA6
	J9+lYC3rcsVqvmiATvDQ0jzD4Dr/v+32shuR+gxjpWOcHr7TKw5vFknFg3L0XHsayz9zMCCEgB9cQ
	bnsjG4mpe7W/wAySak3UlWZeVaYdcy2KgCpqJ69FbUR5DW1Q1S2frviqOH9lQSCcg3rxzyU0VpRUg
	YtnYT0gsxWalSYNGgyw8OYtUPbbBeuRAm/R5aB1KyhvRX7Ozp+HVX/Uz0f8EoZ5BkkMv4HeLPFwG8
	JAM+VAqMNpEQkRFnxokVIJfDlDDODs1xVsTFudqHcfgiPzsRs1o5G6JAWvZkj5jhQjbZKALqGBBmY
	UigXzyTHruVSMt9U1wuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuc4P-00000006qjE-1c28;
	Tue, 18 Mar 2025 18:53:45 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuc4L-00000006qgb-26kM;
	Tue, 18 Mar 2025 18:53:42 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5e5c7d6b96fso1822802a12.3;
        Tue, 18 Mar 2025 11:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742324020; x=1742928820; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kSmaS9SiczKcQtf09ulZT+5WIK4YMWt6OMaokGfRCsg=;
        b=bW668hG3nnh6fL7KorXW/ATIY5hRehlJkHeOR8OKwefRO6JoPShIACcynU+AaEMnkS
         lYbTBP+68sY+sUVH2XSEgJlXAmXdeXJpl0ggMDQTrR9l/QSkJb0pjdxlq2HeZd08yE2P
         ruO5oajhfzHRxo4B8s2oXcQMju6HZ2/qg7dv7M+VfQSx1dqd8sygcjLSKVbEqyBqMsfB
         Sevsb8dCF4zt1ShcP0cJEJCiP1uvRhNqrvVo2T2pEgkYq30J5XmZY8tNBYXk7rCkIh10
         Gj5xnTNH2Kq7002eDGqfRRLFRXgy51jtm7Sg94gSSzbTlH7b7HFd+LeyKSH6VTLDfm3c
         Ek3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742324020; x=1742928820;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kSmaS9SiczKcQtf09ulZT+5WIK4YMWt6OMaokGfRCsg=;
        b=IuOyBswJwihaIwQApdQwXWysKrrXkzeTumCmD1aZna6Aia1g7lD8SoHhBUV0rSonOW
         uLBS/14Dg4Sy/x+6i50WlCp9nPd9WOvCfK7sIKinkjII17jdWnNplJAb+fmr9pACsegE
         +pFmyjNYLhqAILU0BPqaDolK8cekCceB8/iVxTY6IA7j1rmMo7GkGQ6LXgheeYkzc9og
         01ZrJJeonZi3f0NsYjVeV723dwJ/AGT2avnZbmJu3Y3W3Md59JCoFiA1rnC20DI6egbl
         qXDKqMrB5Szl4NPJ3Prz2/cT+YsxyF8dPEkBFesvg+qNsHnVUThrbJIK3ZiJuwIKQJLW
         56Ng==
X-Forwarded-Encrypted: i=1; AJvYcCV/U2eKlgJA7GDWdvpBgVlzSXnbUeRzUnASuFW15W2a0A45tVNIuGH1+7IZVVjXzMA6y3GbWCsRHv4/s0aER2o=@lists.infradead.org, AJvYcCVTkkFZHDd+CyaT3y0445punMh5bvTuZJhWVadUqYzd+04SYsd9bec/uOggpLvNtQ/PFUhMzmHW7ek+ANPk@lists.infradead.org, AJvYcCW3jOlQOB8gpMGUenkL8X3ZNTAsp/MJsgLynJxK4AbWnZEJB1AA82XE6MocRqlH6AD14qa+Lr8rCog1BV7kNQY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxblb6M9oh4ede+3vjBQYQZpgWn1XBQavpyao+jyflJYbkgpLzo
	mgqm6DWvVqND8lQrlkBg35/2zcf8/C8zgsG/kRXZlZZk5jdAbMj/IAGLjBSEw2yK9QCLaLXn0QI
	pUb1acERcME7MBpDFF/KPm0he9K8=
X-Gm-Gg: ASbGnctzQwS7Jwmhlo2FVry58Opw0mRW+/rYLJz+Ne7d+qkUr0WkY0Xjjqt4wpV96MQ
	C5a+ASBosBkDKFQssd7xQxIQDUmyrd0Y82pk+W3jx61/MWcnvWgZkxtKErSC11EUmpvc6sSLNjg
	lijeSAvIF9JnqMCHGef2qg6NR7ql0=
X-Google-Smtp-Source: AGHT+IHy0byJnCuVMXrI6AJh5ocZ8SngCGKvQOgZlVqfox+lUeg50TwL+nwFYQw3i7wWPHJ8oVgwl+RCo/bDzBfxPsI=
X-Received: by 2002:a17:907:6093:b0:ac3:17b6:737 with SMTP id
 a640c23a62f3a-ac330489663mr2006657366b.45.1742324019491; Tue, 18 Mar 2025
 11:53:39 -0700 (PDT)
MIME-Version: 1.0
References: <20250314085858.39328-1-vignesh.raman@collabora.com> <20250314085858.39328-4-vignesh.raman@collabora.com>
In-Reply-To: <20250314085858.39328-4-vignesh.raman@collabora.com>
From: Helen Mae Koike Fornazier <helen.fornazier@gmail.com>
Date: Tue, 18 Mar 2025 15:53:27 -0300
X-Gm-Features: AQ5f1Jqexkq1v060b1nOUslkHnhYmXG2PP3WoUMn-4HQvHnlhFu6oru5qnG3QTk
Message-ID: <CAPW4XYb6zci74=maL8bCPDXMV=WZG=M9sFnpNxMX3auELvzUSQ@mail.gmail.com>
Subject: Re: [PATCH v1 3/3] drm/ci: arm64.config: mediatek: enable PHY drivers
To: Vignesh Raman <vignesh.raman@collabora.com>
Cc: dri-devel@lists.freedesktop.org, daniels@collabora.com, airlied@gmail.com, 
	simona.vetter@ffwll.ch, robdclark@gmail.com, guilherme.gallo@collabora.com, 
	sergi.blanch.torne@collabora.com, valentine.burley@collabora.com, 
	lumag@kernel.org, quic_abhinavk@quicinc.com, mripard@kernel.org, 
	jani.nikula@linux.intel.com, linux-mediatek@lists.infradead.org, 
	linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, 
	intel-gfx@lists.freedesktop.org, virtualization@lists.linux.dev, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_115341_539295_2082A7EC 
X-CRM114-Status: GOOD (  11.89  )
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

RW0gc2V4LiwgMTQgZGUgbWFyLiBkZSAyMDI1IMOgcyAwNTo1OSwgVmlnbmVzaCBSYW1hbgo8dmln
bmVzaC5yYW1hbkBjb2xsYWJvcmEuY29tPiBlc2NyZXZldToKPgo+IFRoZSBtZWRpYXRlayBkaXNw
bGF5IGRyaXZlciBmYWlscyB0byBwcm9iZSBvbiBtdDgxNzMtZWxtLWhhbmEgYW5kCj4gbXQ4MTgz
LWt1a3VpLWphY3V6emktanVuaXBlci1za3UxNiBpbiB2Ni4xNC1yYzQgZHVlIHRvIG1pc3Npbmcg
UEhZCj4gY29uZmlndXJhdGlvbnMuCj4KPiBFbmFibGUgdGhlIGZvbGxvd2luZyBQSFkgZHJpdmVy
cyBmb3IgTWVkaWFUZWsgcGxhdGZvcm1zOgo+IC0gQ09ORklHX1BIWV9NVEtfSERNST15IGZvciBI
RE1JIGRpc3BsYXkKPiAtIENPTkZJR19QSFlfTVRLX01JUElfRFNJPXkgZm9yIERTSSBkaXNwbGF5
Cj4KPiBTaWduZWQtb2ZmLWJ5OiBWaWduZXNoIFJhbWFuIDx2aWduZXNoLnJhbWFuQGNvbGxhYm9y
YS5jb20+CgpBY2tlZC1ieTogSGVsZW4gS29pa2UgPGhlbGVuLmZvcm5hemllckBnbWFpbC5jb20+
CgpUaGFua3MsCkhlbGVuCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vY2kvYXJtNjQuY29uZmln
IHwgMiArKwo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2NpL2FybTY0LmNvbmZpZyBiL2RyaXZlcnMvZ3B1L2RybS9jaS9h
cm02NC5jb25maWcKPiBpbmRleCBhOGZjYTA3OTkyMWIuLmZkZGZiZDRkMjQ5MyAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vY2kvYXJtNjQuY29uZmlnCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2NpL2FybTY0LmNvbmZpZwo+IEBAIC0xOTMsNiArMTkzLDggQEAgQ09ORklHX1BXTV9NVEtf
RElTUD15Cj4gIENPTkZJR19NVEtfQ01EUT15Cj4gIENPTkZJR19SRUdVTEFUT1JfREE5MjExPXkK
PiAgQ09ORklHX0RSTV9BTkFMT0dJWF9BTlg3NjI1PXkKPiArQ09ORklHX1BIWV9NVEtfSERNST15
Cj4gK0NPTkZJR19QSFlfTVRLX01JUElfRFNJPXkKPgo+ICAjIEZvciBub3V2ZWF1LiAgTm90ZSB0
aGF0IERSTSBtdXN0IGJlIGEgbW9kdWxlIHNvIHRoYXQgaXQncyBsb2FkZWQgYWZ0ZXIgTkZTIGlz
IHVwIHRvIHByb3ZpZGUgdGhlIGZpcm13YXJlLgo+ICBDT05GSUdfQVJDSF9URUdSQT15Cj4gLS0K
PiAyLjQ3LjIKPgoKCi0tIApIZWxlbiBLb2lrZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
