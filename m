Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 92546E66893
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Nov 2024 10:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fp6Das6MS4HZBcvHS7ptiRb6PjcajycIk8qs+ujYPe0=; b=ASv66VvvUNQpDF
	Xonizl8d6bBQ63o803WAFinz/mG1N4ynxsJwkB7Mn70qc1wrsyWvRRkWnJh2tkS8pl1Dv0xNlGk3+
	pk/mrU3MNdXRUSUv4aRgmJrlaoTHO0wo2KDqUQHJ3aSgtu+REiyUF5qaBs3XUuCpoABCZMluXN0IV
	9qxAH6yW2geSHJqJXI3hli8nzziBaB3unKgWIYaCVUhBufyUZiyYR/j9NoVeVxooAZ9hCCEeVyHLQ
	nxa4mb/Ijlc5glwA6n28eGNuJl7pz+e46ybt+D8yWCV6r4usn/VCvSlGMV+paaYtw7hfrJmp9PaOg
	XnD8eIwN6rI2w3Ly5wHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFWSy-00000007mK0-2plT;
	Mon, 25 Nov 2024 10:37:16 +0000
Received: from mail-yw1-f171.google.com ([209.85.128.171])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFWS1-00000007mAU-18PG;
	Mon, 25 Nov 2024 10:36:18 +0000
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-6eeb3741880so37955297b3.1;
        Mon, 25 Nov 2024 02:36:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732530973; x=1733135773;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8d+g8WKkfE6s6pK+JrY3tSWdNLGevwdYmgstGGTm524=;
        b=ikipQxeqpOqyhHb6rRi0ZV5YtsRviVX1afHnSOlf8KFJ5117hnLspEFdUwBMPzgox8
         9G2G2QXL7lpDr0SLneVzl42UQlZPlSKcjnOVhP7qBSeYWmm8ti0LMcCrSNIVZ7Soqfr/
         Ao6xHfq6LZU0v3u+2Auq6ab7L7iPoJ1ffSKNhkvrS1n4A6P39snWHFCegGnY/3DJAJEW
         FdkmDweemPEI+dZGHaPmzkILqIeGL6gjIPoPGB3peg2+5XKP0Wkj4u4JXEvr+SBUex7d
         FD7RIzydw933TD/swB5W6DesiFuVDJ2j7hclde+W9aOVWePp0F9R8j9AddHMMvIM49G+
         soGA==
X-Forwarded-Encrypted: i=1; AJvYcCUVsF9roFiFw8SOsWXRRbPlwap1GTm8Mlb+MDUSaRShoQR3+fcxLH2pu10HkATxBKx9gRh+8omb/mhggcdOt7/T@lists.infradead.org, AJvYcCW538FgNeCPC/keFtuKJJaABcPUNPg0eCpwv7IIfBppB8qZWLhZM51t1n/43V9NT/MVFGMNmyrXQcssVtlxNyA=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx5gZuhqWp6unzlF0Ry1z7wweIpcqo2d/YI2db3yyldoixY6Uxm
	hFNrbRW5XVhwjWARST0SR7nQaipssA+vZemRPtX55+rherqOGxJd+/CsOL5m
X-Gm-Gg: ASbGncu+GMhahOwy8VwKSCqQnhSjqXBhyQdhZR/hEw8WvDMkf1r0+vbW4rTqx0Qmo4A
	ENrS48IH9XMvmZN/jIvFT1rA/7GvkXlY35BIj5pCR01Ec6kRC4lwyUPSCBSbSVGuYmLeAGOTHkm
	OezAhMwRdvPv5r67vMjWWjOEUY2XnIOLJI/hBxDdz/DkXdUitE4littcGrFVEV9fh/Q59+bNs6T
	bZlaE57G4bwVdcxD3ZISMI+krhuE8GFXWtui8IETUNaxYl8rCFDVN4CtbYqp/GQdWGdV0iheBl9
	mSLIjeTGpOXwDgrs
X-Google-Smtp-Source: AGHT+IG76IhWOKIFxX4gAwpubnHZ8WHn1cnNUiND6pnTIb9c/TwhN8Q1oWDZ/8Mt7Y0rIRUYy5lJ9Q==
X-Received: by 2002:a05:690c:6007:b0:64b:5cc7:bcbc with SMTP id 00721157ae682-6eee0a25186mr122773477b3.32.1732530973066;
        Mon, 25 Nov 2024 02:36:13 -0800 (PST)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com. [209.85.128.177])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6eedfe153e3sm17416777b3.22.2024.11.25.02.36.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 Nov 2024 02:36:11 -0800 (PST)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-6ef0ef11aafso7207887b3.2;
        Mon, 25 Nov 2024 02:36:11 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUajcawARBH60ZCW8yjKCM2AvrLXtKGfscMe8hN5qedVG8iLYLOP0aLKHSsgDSwImRyFkeimg1tqSM5C6SrxHU=@lists.infradead.org, AJvYcCXwFfJhTwVO9YTSi/s+TN5kVawkKa6H0uwqbE14E11aGysHNoemd0y+kbH48UTs71zsw0cbEVmBPID+dxCWD7+b@lists.infradead.org
X-Received: by 2002:a05:690c:4a13:b0:6ee:cf8b:c6c1 with SMTP id
 00721157ae682-6eee0a24b1cmr108161527b3.29.1732530970890; Mon, 25 Nov 2024
 02:36:10 -0800 (PST)
MIME-Version: 1.0
References: <20241018151016.3496613-1-arnd@kernel.org> <20241104172950.GA741087@thelio-3990X>
 <CAMuHMdXrrCiLm2sQmpegtVHV8X5AUp-8E5BejDxRpMbeAfHhvQ@mail.gmail.com> <20241122-rebel-donkey-of-atheism-a0b8b6@houat>
In-Reply-To: <20241122-rebel-donkey-of-atheism-a0b8b6@houat>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 25 Nov 2024 11:35:58 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUC6cq+ybVzOC9n3XaT-x3oy+7tpA+Z=e8a4yd3B6Ykng@mail.gmail.com>
Message-ID: <CAMuHMdUC6cq+ybVzOC9n3XaT-x3oy+7tpA+Z=e8a4yd3B6Ykng@mail.gmail.com>
Subject: Re: [PATCH] drm/rockchip: avoid 64-bit division
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_023617_302039_A2857ABD 
X-CRM114-Status: GOOD (  35.24  )
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
Cc: Simona Vetter <simona@ffwll.ch>, Arnd Bergmann <arnd@kernel.org>, Algea Cao <algea.cao@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, Arnd Bergmann <arnd@arndb.de>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Sandy Huang <hjc@rock-chips.com>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, Nathan Chancellor <nathan@kernel.org>, linux-rockchip@lists.infradead.org, Thomas Zimmermann <tzimmermann@suse.de>, Andy Yan <andy.yan@rock-chips.com>, David Airlie <airlied@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgTWF4aW1lLAoKT24gRnJpLCBOb3YgMjIsIDIwMjQgYXQgMTA6MTXigK9BTSBNYXhpbWUgUmlw
YXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+IHdyb3RlOgo+IE9uIEZyaSwgTm92IDIyLCAyMDI0IGF0
IDA5OjM2OjE2QU0gKzAxMDAsIEdlZXJ0IFV5dHRlcmhvZXZlbiB3cm90ZToKPiA+IE9uIE1vbiwg
Tm92IDQsIDIwMjQgYXQgNjozMOKAr1BNIE5hdGhhbiBDaGFuY2VsbG9yIDxuYXRoYW5Aa2VybmVs
Lm9yZz4gd3JvdGU6Cj4gPiA+IE9uIEZyaSwgT2N0IDE4LCAyMDI0IGF0IDAzOjEwOjEwUE0gKzAw
MDAsIEFybmQgQmVyZ21hbm4gd3JvdGU6Cj4gPiA+ID4gRnJvbTogQXJuZCBCZXJnbWFubiA8YXJu
ZEBhcm5kYi5kZT4KPiA+ID4gPgo+ID4gPiA+IERpdmlkaW5nIGEgNjQtYml0IGludGVnZXIgcHJl
dmVudHMgYnVpbGRpbmcgdGhpcyBmb3IgMzItYml0IHRhcmdldHM6Cj4gPiA+ID4KPiA+ID4gPiBF
UlJPUjogbW9kcG9zdDogIl9fYWVhYmlfdWxkaXZtb2QiIFtkcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcm9ja2NoaXBkcm0ua29dIHVuZGVmaW5lZCEKPiA+ID4gPgo+ID4gPiA+IEFzIHRoaXMgZnVu
Y3Rpb24gaXMgbm90IHBlcmZvcm1hbmNlIGNyaXRpY2lhbCwganVzdCBVc2UgdGhlIGRpdl91NjQo
KSBoZWxwZXIuCj4gPiA+ID4KPiA+ID4gPiBGaXhlczogMTI4YTliZjhhY2UyICgiZHJtL3JvY2tj
aGlwOiBBZGQgYmFzaWMgUkszNTg4IEhETUkgb3V0cHV0IHN1cHBvcnQiKQo+ID4gPiA+IFNpZ25l
ZC1vZmYtYnk6IEFybmQgQmVyZ21hbm4gPGFybmRAYXJuZGIuZGU+Cj4gPiA+Cj4gPiA+IFJldmll
d2VkLWJ5OiBOYXRoYW4gQ2hhbmNlbGxvciA8bmF0aGFuQGtlcm5lbC5vcmc+Cj4gPiA+Cj4gPiA+
IENhbiBzb21lb25lIHBsZWFzZSBwaWNrIHRoaXMgdXA/IEl0IGlzIHN0aWxsIGJyb2tlbiBpbiBu
ZXh0LTIwMjQxMTA0Li4uCj4gPiA+Cj4gPiA+IGh0dHBzOi8vc3RvcmFnZS50dXhzdWl0ZS5jb20v
cHVibGljL2NsYW5nYnVpbHRsaW51eC9jb250aW51b3VzLWludGVncmF0aW9uMi9idWlsZHMvMm9O
dkpGUmo4dGtEaWViNlZmck1mNHJoMUtuL2J1aWxkLmxvZwo+ID4gPgo+ID4gPiA+IC0tLQo+ID4g
PiA+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaV9xcC1yb2NrY2hpcC5jIHwgMiAr
LQo+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
PiA+ID4gPgo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdf
aGRtaV9xcC1yb2NrY2hpcC5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWlfcXAt
cm9ja2NoaXAuYwo+ID4gPiA+IGluZGV4IDljNzk2ZWU0YzMwMy4uYzhiMzYyY2MyYjk1IDEwMDY0
NAo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pX3FwLXJvY2tj
aGlwLmMKPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaV9xcC1y
b2NrY2hpcC5jCj4gPiA+ID4gQEAgLTgyLDcgKzgyLDcgQEAgc3RhdGljIHZvaWQgZHdfaGRtaV9x
cF9yb2NrY2hpcF9lbmNvZGVyX2VuYWJsZShzdHJ1Y3QgZHJtX2VuY29kZXIgKmVuY29kZXIpCj4g
PiA+ID4gICAgICAgICAgICAgICAgKiBjb21tZW50IGluIHJrX2hkcHR4X3BoeV9wb3dlcl9vbigp
IGZyb20KPiA+ID4gPiAgICAgICAgICAgICAgICAqIGRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1y
b2NrY2hpcC1zYW1zdW5nLWhkcHR4LmMKPiA+ID4gPiAgICAgICAgICAgICAgICAqLwo+ID4gPiA+
IC0gICAgICAgICAgICAgcGh5X3NldF9idXNfd2lkdGgoaGRtaS0+cGh5LCByYXRlIC8gMTAwKTsK
PiA+ID4gPiArICAgICAgICAgICAgIHBoeV9zZXRfYnVzX3dpZHRoKGhkbWktPnBoeSwgZGl2X3U2
NChyYXRlLCAxMDApKTsKPiA+ID4gPiAgICAgICB9Cj4gPiA+ID4gIH0KPiA+Cj4gPiBub3JlcGx5
QGVsbGVybWFuLmlkLmF1IGhhcyBqdXN0IHRvbGQgbWUgdGhpcyBidWlsZCBpc3N1ZSBpcyBub3cg
dXBzdHJlYW06Cj4gPgo+ID4gICAgIEZBSUxFRCBsaW51cy9tNjhrLWFsbG1vZGNvbmZpZy9tNjhr
LWdjYzguMSBGcmkgTm92IDIyLCAwNTozNAo+ID4gICAgIGh0dHA6Ly9raXNza2IuZWxsZXJtYW4u
aWQuYXUva2lzc2tiL2J1aWxkcmVzdWx0LzE1Mjc3MjQyLwo+ID4KPiA+ICAgICBDb21taXQ6ICAg
TWVyZ2UgdGFnICdkcm0tbmV4dC0yMDI0LTExLTIxJyBvZgo+ID4gaHR0cHM6Ly9naXRsYWIuZnJl
ZWRlc2t0b3Aub3JnL2RybS9rZXJuZWwKPiA+ICAgICAgICAgICAgICAgMjhlYjc1ZTE3OGQzODlk
MzI1ZjE2NjZlNDIyYmMxM2JiYmI5ODA0Ywo+ID4gICAgIENvbXBpbGVyOiBtNjhrLWxpbnV4LWdj
YyAoR0NDKSA4LjEuMCAvIEdOVSBsZCAoR05VIEJpbnV0aWxzKSAyLjMwCj4gPgo+ID4gICAgIEVS
Uk9SOiBtb2Rwb3N0OiAiX191ZGl2ZGkzIgo+ID4gW2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9y
b2NrY2hpcGRybS5rb10gdW5kZWZpbmVkIQo+ID4KPiA+IEFwcGx5aW5nIHRoaXMgcGF0Y2ggZml4
ZXMgaXQsIHNvCj4gPiBBY2tlZC1ieTogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydEBsaW51eC1t
NjhrLm9yZz4KPiA+Cj4gPiBEbyB3ZSByZWFsbHkgbmVlZCArNSB3ZWVrcyB0byBhcHBseSBhIGZp
eCBmb3IgYSByZXBvcnRlZCBidWlsZCBpc3N1ZT8KPgo+IERvIHdlIHJlYWxseSBuZWVkIHRoYXQg
a2luZCBvZiBjb21tZW50cz8KPgo+IEl0IHdhcyBhcHBsaWVkIGFscmVhZHksIEkgbWFkZSBzdXJl
IGl0J3MgcGFydCBvZiB0aGUgbmV4dCBQUiB3ZSBzZW5kIHRvCj4gTGludXMuIEFuZCBpdCBzaG91
bGQgYmUgaW4gbGludXgtbmV4dCB0b21vcnJvdy4KClRoYW5rIHlvdSwgSSBjYW4gY29uZmlybSBp
dCBpcyBub3cgY29tbWl0IDgxODk1NmM3NjUxN2UxMjcKKCJkcm0vcm9ja2NoaXA6IGF2b2lkIDY0
LWJpdCBkaXZpc2lvbiIpIGluIGRybS1taXNjL2Zvci1saW51eC1uZXh0CmFuZCBuZXh0LTIwMjQx
MTI1LgoKSW50ZXJlc3RpbmdseSwgdGhlIGNvbW1pdCBkZXNjcmlwdGlvbiBjb250YWluczoKCiAg
ICAoY2hlcnJ5IHBpY2tlZCBmcm9tIGNvbW1pdCA0YjY0YjRhODFmY2Q1MWY1NzBjMDQ2Y2Y5MDRh
ZWYxOWVjNzU2ZDQ1KQoKd2hpY2ggaXMgbm90IGluIGFueSB0cmVlIG9uIGdpdC5rZXJuZWwub3Jn
LCBidXQgdGhlIGdpdGh1YiBjb2xsZWN0aXZlCmRvZXMga25vdyBhYm91dCBpdDoKaHR0cHM6Ly9n
aXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2NvbW1pdC80YjY0YjRhODFmY2Q1MWY1NzBjMDQ2Y2Y5
MDRhZWYxOWVjNzU2ZDQ1CgpQcm9iYWJseSB5b3Ugd2FudCB0byBkcm9wIHRoYXQgbGluZS4KCkdy
e29ldGplLGVldGluZ31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVy
dCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdl
ZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5p
Y2FsIHBlb3BsZSwgSSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcg
dG8gam91cm5hbGlzdHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2Ug
dGhhdC4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
