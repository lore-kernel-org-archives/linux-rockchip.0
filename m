Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 58946E65D3B
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Nov 2024 09:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XP1mtpnSb5wQszEqNo01V+AJ/9A0jpQaYTG2o//ZOpY=; b=wdw4+8TjRAeVHu
	rMN350qitiBoqoMsGEmJwFSq0c5tWa+6FlFmq1fbe249FJHwO7ntDDlL88wFdhwskSFYGPxWaERhH
	jcly6ZBEIFvDfuW3urH+qal+r6HWfTc9ufFkaiMt/pLrRj1UskJ4rRTKnBUaAJwgmxIecUeVAl4QD
	iwR5ZrFRpe0oqjkJCrnl/yEJkMFktjQfYNG/UJoDk5rzKxC6emVcFOi0aex0mWDGAxQMM9V/p42yq
	hialTmZNyyzB4Yl8YuLpmwaCnGxDGiI5x/ypGx/zV6pRXpUoOI3Mafw8yHJbyxKHT4AdVuAOwcBdy
	nKc4vBS5J+6vfFkBRHuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tEQ3Q-000000026xg-3gxU;
	Fri, 22 Nov 2024 09:34:20 +0000
Received: from mail-yw1-f181.google.com ([209.85.128.181])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tEQ2S-000000026qF-1XtQ;
	Fri, 22 Nov 2024 09:33:21 +0000
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-6eebc318242so18627737b3.3;
        Fri, 22 Nov 2024 01:33:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732267997; x=1732872797;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xM8g64sET8hw7b+gyg+vsiEnmYLC8RSZn0rXhR5lgBE=;
        b=DtPDUbJrtoNO/7YoX2u3AiSOGO1L1X9sH5FXcx8PbqWVDGPgwthjPql4ruEFhV/+he
         xv339P6FovUM1KowYO5aJdSSDqKPDUw/opVbdTOG06y6g134RpfQr+W+jnKLgKPa9sOA
         KGvKAJJHBq30UG/MGwsdkwBn8bySTR185CBr9zseOijuga2+ZUM1cjji1K6C5QXuskRD
         nmB/GsDvhvYMX1o52S/XHpRNvVjURL028BCeJviu77c3cwpvWiyt/BmAPVkyjYKxrcSk
         5DRs7qVUGRexJS/WUOqcwX21sim3aKC7zB1cOLVGXXkTWncEKUbIlz7EpNUxi9yoOEA2
         ibcQ==
X-Forwarded-Encrypted: i=1; AJvYcCUzFuDWbxW2UqKYTxjwnM1dFU/O3UULolJMoEfnjMJiXNjY1ZgbpWTom0EZ7aCqqGQq9YTfKLBvpVcd6ku4xbRQ@lists.infradead.org, AJvYcCVmdCASjinJ4Fm7LrQ+NP7a0pe5TUi11V1MEEmnKt+MF2Gk1YDiWryluFHE9diUXObQtYPCnIyO720/yz1OKaU=@lists.infradead.org
X-Gm-Message-State: AOJu0YxHcgmMn9YUj1O8Pk9dvkqRZ19VukCwuGU7tTnxj7G6GernayIj
	yVwd8Q6Id459mO7tO4VscphxQWZChFaOOM+q0dGPSK/SAWmTzwup7uq5JBOX
X-Gm-Gg: ASbGnctznNrm0PvYTpIRHc45PqjsaKeynEkMcngwjhA2vxDlHTQCC6UZql7onNpZd1q
	vddqPkU2BTqAucnIGJy3LkNKP+4+PW01uambi1qAsyagi72Xy4RLTDvChEJmUQqbrjCCQl1o9M8
	yfsxck/jAVDXccyoSGnT15dsX8YlhNVUSI4KDlmRWlDBHIPgAc2kE0UOyLVfYleshWKUyJcJ+Xj
	ARI07445hBVRqCouyms78W9u7BnucXJ13bmOjH4GpbGVtRUYODCU07TjmhjxdwPtSMFI2oFCHor
	uZUf/otPnDCUIroq
X-Google-Smtp-Source: AGHT+IEkCZTnG1llqHidAq0UfunXnyVRvm2qf53CjY50+lzRXQ7sDIy8UkF9yFtEdXuHUHYfMyBNTg==
X-Received: by 2002:a05:690c:6801:b0:6ea:86b6:f703 with SMTP id 00721157ae682-6eee08b6a17mr27051027b3.1.1732267997384;
        Fri, 22 Nov 2024 01:33:17 -0800 (PST)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com. [209.85.128.169])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6eedfe15636sm3717147b3.19.2024.11.22.01.33.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Nov 2024 01:33:16 -0800 (PST)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-6eee6874ef8so3134327b3.2;
        Fri, 22 Nov 2024 01:33:16 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUEZBgrvCSQVFQ5FLNcokRKTQ7d05t3mbOnziVPZZUgqBYMHzD4MFIR/BqI2jVzi39CWXEceDeSCyToSAVHZWp4@lists.infradead.org, AJvYcCUuxhSRXNoa0jM5a1v3iDoDDHgxjbfxE2SvfiNUWo1DnTl7vZix4GOyvfJYxnkSt2Nl6mXhBhx8B47BnHomdoo=@lists.infradead.org
X-Received: by 2002:a05:690c:6e09:b0:6ee:9cb7:dc31 with SMTP id
 00721157ae682-6eee08b5abemr26651957b3.3.1732267996019; Fri, 22 Nov 2024
 01:33:16 -0800 (PST)
MIME-Version: 1.0
References: <20241018151016.3496613-1-arnd@kernel.org> <20241104172950.GA741087@thelio-3990X>
 <CAMuHMdXrrCiLm2sQmpegtVHV8X5AUp-8E5BejDxRpMbeAfHhvQ@mail.gmail.com> <20241122-rebel-donkey-of-atheism-a0b8b6@houat>
In-Reply-To: <20241122-rebel-donkey-of-atheism-a0b8b6@houat>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 22 Nov 2024 10:33:03 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUGfCWyFHnAKeg4YViErzX5BReb2A-8gtqECstUMn2Oeg@mail.gmail.com>
Message-ID: <CAMuHMdUGfCWyFHnAKeg4YViErzX5BReb2A-8gtqECstUMn2Oeg@mail.gmail.com>
Subject: Re: [PATCH] drm/rockchip: avoid 64-bit division
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241122_013320_414481_22BF5D68 
X-CRM114-Status: GOOD (  36.09  )
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
a2luZCBvZiBjb21tZW50cz8KClBlcmhhcHMgbm90Li4uCgo+IEl0IHdhcyBhcHBsaWVkIGFscmVh
ZHksCgpXaGVyZSB3YXMgaXQgYXBwbGllZD8KSG93IHdvdWxkIEkga25vdyB0aGF0LCB3aGVuIHRo
ZSBmaXggaXMgbm90IGluIGxpbnV4LW5leHQ/Cgo+IEkgbWFkZSBzdXJlIGl0J3MgcGFydCBvZiB0
aGUgbmV4dCBQUiB3ZSBzZW5kIHRvCj4gTGludXMuIEFuZCBpdCBzaG91bGQgYmUgaW4gbGludXgt
bmV4dCB0b21vcnJvdy4KClRoYW5rIHlvdSEKClRoZSBpc3N1ZSBpcyB0aGF0IHRoZSByZXBvcnRl
ZCBidWlsZCBpc3N1ZSB3YXMgbm90IGZpeGVkIGluIGxpbnV4LW5leHQsCmRlc3BpdGUgdGhlIGZp
eCBoYXZpbmcgYmVlbiBhdmFpbGFibGUgZm9yIDUgd2Vla3MsIHRodXMgcmVkdWNpbmcKKGJ1aWxk
KSB0ZXN0IGNvdmVyYWdlIGZvciBhbGwgYWZmZWN0ZWQgYXJjaGl0ZWN0dXJlcywgcG9zc2libHkg
aGlkaW5nCm90aGVyIGlzc3Vlcy4KSW4gYWRkaXRpb24sIGEgUFIgaW5jbHVkaW5nIHRoZSBidWls
ZCBpc3N1ZSB3YXMgc2VudCB0byBMaW51cywgc28gbm93CnRoZSBhYm92ZSBhcHBsaWVzIHRvIExp
bnVzJyB0cmVlLCB0b28uCgpHcntvZXRqZSxlZXRpbmd9cywKCiAgICAgICAgICAgICAgICAgICAg
ICAgIEdlZXJ0CgotLSAKR2VlcnQgVXl0dGVyaG9ldmVuIC0tIFRoZXJlJ3MgbG90cyBvZiBMaW51
eCBiZXlvbmQgaWEzMiAtLSBnZWVydEBsaW51eC1tNjhrLm9yZwoKSW4gcGVyc29uYWwgY29udmVy
c2F0aW9ucyB3aXRoIHRlY2huaWNhbCBwZW9wbGUsIEkgY2FsbCBteXNlbGYgYSBoYWNrZXIuIEJ1
dAp3aGVuIEknbSB0YWxraW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIi
IG9yIHNvbWV0aGluZyBsaWtlIHRoYXQuCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
LS0gTGludXMgVG9ydmFsZHMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
