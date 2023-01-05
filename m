Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB314C3DA7A
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jan 2023 18:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pVt1ucQLWRfF1YtpDBRu+MOwY2lbSZEHzk34vL/O2ao=; b=KJZZ+OvYfmOJr0
	JfqSas/bDC2hgPoLo8O+JgQx5QyrjCKfFIJranXs+dPEA427iATG2V4QZyqcsrSWufMP1dWYZkC9I
	W8J+SvkNBY4k/lgnUyU8VVIUZxpgS5LNrB7N2P6nt6DjwsAnMEZPBq4G+RL71hxUH3h5THUMmQ2oT
	OWXz0u3L0MgwJTDi3THXpjsynzZsvRbY8t4ybayxW5XLluXXyW5ayDB3Nb2Z6gEYLCVik7pwV1MxK
	WmN5tMkgcySAylDhApEubii6ACnZjEjGUrlEL8i80JYPmc7zKKbNkQOVBK5gUAZgWwUbNIhzfo2NM
	+NWy5aAUbfJv6sAcpUUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDVAK-00DjzY-OT; Thu, 05 Jan 2023 18:40:36 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pDE6l-00EcW2-3U
	for linux-rockchip@lists.infradead.org; Thu, 05 Jan 2023 00:27:49 +0000
Received: by mail-wr1-x42c.google.com with SMTP id w1so22559157wrt.8
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Jan 2023 16:27:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FwJo8SyNqEWUGnTsqoEsGKl4s4T5ApaUi3kwvvFppkM=;
        b=IBEdF01OrM9Y8hOTp9yGycGOcnLxNTwsFleSuqb9J/TWrIgm+kt1M9QyFczo/KPT/u
         BrH56vJg6+/ya0GkwtiRw/B3YEClNjtEVa5MDcYGQoYXGgOoTo6QuG4C/OM++FlwIaBv
         KN7ZHBPxkFZfy9aU2FiMRbeL2I1VP2SLDhe+T51VCuvvqo4qDDwP/k0l7KlcYSZkqTaG
         77FePIut8v0m5dO6miViQrf6cHXg+iQeEIu1omkMv44CaU3g3kkuzM7yrLb9jqp/TbtO
         QA/B+xiVShy22E7Vl39su+C1X8Y+91o7hEfzlXGtyPYMHxzkAPL+IXI26cgxrmWN3+yS
         w2Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FwJo8SyNqEWUGnTsqoEsGKl4s4T5ApaUi3kwvvFppkM=;
        b=E8UfJOptmjkzzon58rycTq3bq0MQUXS41XZseK+9FCFRmcOqwBj5vU2hoj8aI472Hc
         NqPKqEV5GnkWc7NEeoTt7tOOLeguPFXFIYIqYT3rMNZQorUOOi/Dkzj6r9j9naEIJ3II
         CBfJTANAbbccAs69W7/tF99R2KIPoxuUxqrDhqY/wNbKmCLUfmQC2TaBbUBkvGrW5JxE
         0BWGeMRXnEpgQ8kHrDpGyFpNSiOdXalcRliGe1p6MEM0YipaI0plzg98NR6De2gh0GA5
         WRDPvqMSBiYlMguUF5BA82nGy+vzwa81YtPB7/midVWkheBhlRF8El5tH8qWqbzBBCEY
         3+JA==
X-Gm-Message-State: AFqh2koJLIX/X61rRR82KS9AWlhAjDwCg0VwN8wvuNv/e6Az+CmoyUUD
	YE9Z2IKr0Xgfs1WrsqBUViUrlvcxd2PzOPIVzrg=
X-Google-Smtp-Source: AMrXdXtHBC+rS+HS2jvfL9JXrC5rglp5NOjfcuxUjrCm28IBolNK/Jx2EDnkIn7NC/v42I92aLwV3d7bGM6GaP8JYRU=
X-Received: by 2002:a5d:6903:0:b0:296:3eb0:f91b with SMTP id
 t3-20020a5d6903000000b002963eb0f91bmr407240wru.539.1672878464577; Wed, 04 Jan
 2023 16:27:44 -0800 (PST)
MIME-Version: 1.0
References: <20230104205434.867219-1-lorenz@brun.one> <CAMdYzYq4Nev1Vya7Bw9M5x5Fv_QNh0tCjfn4e33T5wkA6iwijQ@mail.gmail.com>
 <3819910.R56niFO833@diego>
In-Reply-To: <3819910.R56niFO833@diego>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 4 Jan 2023 19:27:31 -0500
Message-ID: <CAMdYzYpsDe=xf6nkhgc5MsjPwhV1ra2M0EdhtJ1t_ZfbX-si8w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: fix USB regulator on ROCK64
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Lorenz Brun <lorenz@brun.one>, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230104_162747_606557_EEC106A1 
X-CRM114-Status: GOOD (  30.08  )
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

T24gV2VkLCBKYW4gNCwgMjAyMyBhdCA2OjUyIFBNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRl
Y2guZGU+IHdyb3RlOgo+Cj4gQW0gRG9ubmVyc3RhZywgNS4gSmFudWFyIDIwMjMsIDAwOjQ2OjI1
IENFVCBzY2hyaWViIFBldGVyIEdlaXM6Cj4gPiBPbiBXZWQsIEphbiA0LCAyMDIzIGF0IDM6NTUg
UE0gTG9yZW56IEJydW4gPGxvcmVuekBicnVuLm9uZT4gd3JvdGU6Cj4gPiA+Cj4gPiA+IEN1cnJl
bnRseSB0aGUgUk9DSzY0IGRldmljZSB0cmVlIHNwZWNpZmllcyB0d28gcmVndWxhdG9ycywgdmNj
X2hvc3RfNXYKPiA+ID4gYW5kIHZjY19ob3N0MV81diBmb3IgVVNCIFZCVVMgb24gdGhlIGRldmlj
ZS4gQm90aCBvZiB0aG9zZSBhcmUgaG93ZXZlcgo+ID4gPiBzcGVjaWZpZWQgd2l0aCBSS19QQTIg
YXMgdGhlIEdQSU8gZW5hYmxpbmcgdGhlbSwgY2F1c2luZyB0aGUgZm9sbG93aW5nCj4gPiA+IGVy
cm9yIHdoZW4gYm9vdGluZzoKPiA+ID4KPiA+ID4gICByb2NrY2hpcC1waW5jdHJsIHBpbmN0cmw6
IHBpbiBncGlvMC0yIGFscmVhZHkgcmVxdWVzdGVkIGJ5IHZjYy1ob3N0LTV2LXJlZ3VsYXRvcjsg
Y2Fubm90IGNsYWltIGZvciB2Y2MtaG9zdDEtNXYtcmVndWxhdG9yCj4gPiA+ICAgcm9ja2NoaXAt
cGluY3RybCBwaW5jdHJsOiBwaW4tMiAodmNjLWhvc3QxLTV2LXJlZ3VsYXRvcikgc3RhdHVzIC0y
Mgo+ID4gPiAgIHJvY2tjaGlwLXBpbmN0cmwgcGluY3RybDogY291bGQgbm90IHJlcXVlc3QgcGlu
IDIgKGdwaW8wLTIpIGZyb20gZ3JvdXAgdXNiMjAtaG9zdC1kcnYgIG9uIGRldmljZSByb2NrY2hp
cC1waW5jdHJsCj4gPiA+ICAgcmVnLWZpeGVkLXZvbHRhZ2UgdmNjLWhvc3QxLTV2LXJlZ3VsYXRv
cjogRXJyb3IgYXBwbHlpbmcgc2V0dGluZywgcmV2ZXJzZSB0aGluZ3MgYmFjawo+ID4gPgo+ID4g
PiBMb29raW5nIGF0IHRoZSBzY2hlbWF0aWMsIHRoZXJlIGFyZSBpbiBmYWN0IHRocmVlIFVTQiBy
ZWd1bGF0b3JzLAo+ID4gPiB2Y2NfaG9zdF81diwgdmNjX2hvc3QxXzV2IGFuZCB2Y2Nfb3RnX3Y1
LiBCdXQgdGhlIGVuYWJsZSBzaWduYWwgZm9yIGFsbAo+ID4gPiB0aHJlZSBpcyBkcml2ZW4gYnkg
UTI2MDQgd2hpY2ggaXMgaW4gdHVybiBkcml2ZW4gYnkgR1BJT19BMi9QQTIuCj4gPiA+Cj4gPiA+
IFNpbmNlIHRoZXNlIHRocmVlIHJlZ3VsYXRvcnMgYXJlIG5vdCBjb250cm9sbGFibGUgc2VwYXJh
dGVseSwgSSByZW1vdmVkCj4gPiA+IHRoZSBzZWNvbmQgb25lIHdoaWNoIHdhcyBjYXVzaW5nIHRo
ZSBlcnJvciBhbmQgbGVmdCBhIGNvbW1lbnQgZXhwbGFpbmluZwo+ID4gPiB0aGF0IHRoaXMgcmVn
dWxhdG9yIGFjdHVhbGx5IGNvbnRyb2xzIG11bHRpcGxlIHJhaWxzLgo+ID4gPgo+ID4gPiBTaWdu
ZWQtb2ZmLWJ5OiBMb3JlbnogQnJ1biA8bG9yZW56QGJydW4ub25lPgo+ID4gPiAtLS0KPiA+ID4g
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LXJvY2s2NC5kdHMgfCAxNCArKyst
LS0tLS0tLS0tLQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMTEgZGVs
ZXRpb25zKC0pCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzMyOC1yb2NrNjQuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azMzMjgtcm9jazY0LmR0cwo+ID4gPiBpbmRleCBmNjlhMzhmNDJkMmQuLmJkODJiYzgwNDQ0ZCAx
MDA2NDQKPiA+ID4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjgtcm9j
azY0LmR0cwo+ID4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC1y
b2NrNjQuZHRzCj4gPiA+IEBAIC0zNyw2ICszNyw5IEBAIHZjY19zZDogc2RtbWMtcmVndWxhdG9y
IHsKPiA+ID4gICAgICAgICAgICAgICAgIHZpbi1zdXBwbHkgPSA8JnZjY19pbz47Cj4gPiA+ICAg
ICAgICAgfTsKPiA+ID4KPiA+ID4gKyAgICAgICAvLyB2Y2NfaG9zdF81diBhbHNvIGNvbnRyb2xz
IHRoZSB2Y2NfaG9zdDFfNXYgYW5kIHZjY19vdGdfNXYgcmFpbHMKPiA+ID4gKyAgICAgICAvLyBi
dXQgdGhlcmUgaXMgb25seSBvbmUgY29tbW9uIGNvbnRyb2wgc2lnbmFsIChVU0IyMF9IT1NUX0RS
VikgYXQKPiA+ID4gKyAgICAgICAvLyBHUElPX0EyCj4gPiA+ICAgICAgICAgdmNjX2hvc3RfNXY6
IHZjYy1ob3N0LTV2LXJlZ3VsYXRvciB7Cj4gPiA+ICAgICAgICAgICAgICAgICBjb21wYXRpYmxl
ID0gInJlZ3VsYXRvci1maXhlZCI7Cj4gPiA+ICAgICAgICAgICAgICAgICBncGlvID0gPCZncGlv
MCBSS19QQTIgR1BJT19BQ1RJVkVfTE9XPjsKPiA+ID4gQEAgLTQ4LDE3ICs1MSw2IEBAIHZjY19o
b3N0XzV2OiB2Y2MtaG9zdC01di1yZWd1bGF0b3Igewo+ID4gPiAgICAgICAgICAgICAgICAgdmlu
LXN1cHBseSA9IDwmdmNjX3N5cz47Cj4gPiA+ICAgICAgICAgfTsKPiA+ID4KPiA+ID4gLSAgICAg
ICB2Y2NfaG9zdDFfNXY6IHZjY19vdGdfNXY6IHZjYy1ob3N0MS01di1yZWd1bGF0b3Igewo+ID4g
PiAtICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+ID4gPiAt
ICAgICAgICAgICAgICAgZ3BpbyA9IDwmZ3BpbzAgUktfUEEyIEdQSU9fQUNUSVZFX0xPVz47Cj4g
PiA+IC0gICAgICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4gPiAtICAg
ICAgICAgICAgICAgcGluY3RybC0wID0gPCZ1c2IyMF9ob3N0X2Rydj47Cj4gPiA+IC0gICAgICAg
ICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2Y2NfaG9zdDFfNXYiOwo+ID4gPiAtICAgICAgICAg
ICAgICAgcmVndWxhdG9yLWFsd2F5cy1vbjsKPiA+ID4gLSAgICAgICAgICAgICAgIHJlZ3VsYXRv
ci1ib290LW9uOwo+ID4gPiAtICAgICAgICAgICAgICAgdmluLXN1cHBseSA9IDwmdmNjX3N5cz47
Cj4gPiA+IC0gICAgICAgfTsKPiA+Cj4gPiBGaXhlZC1yZWd1bGF0b3Igc3VwcG9ydHMgbXVsdGlw
bGUgcmVndWxhdG9ycyBzaGFyaW5nIGEgZ3BpbywgdGhlIGlzc3VlCj4gPiBpcyB5b3UgaGF2ZSB0
aGUgcGluY3RybCBhc3NpZ25lZCBtdWx0aXBsZSB0aW1lcyB3aGljaCBpcyBub3QKPiA+IHN1cHBv
cnRlZC4gU2ltcGx5IHJlbW92aW5nIHRoZSBwaW5jdHJsIGZyb20gYWxsIGJ1dCBvbmUgb2YgdGhl
Cj4gPiByZWd1bGF0b3JzIHdpbGwgc29sdmUgdGhpcyBpc3N1ZS4KPgo+IEhtbSwgYnV0IHdoZXJl
IGlzIHRoZSBhZHZhbnRhZ2UgaW4gdGhhdD8KPiBJLmUuIGZ1bGx5IHJlcHJlc2VudGluZyB0aGUg
aGFyZHdhcmUgd291bGQgbWVhbiBub3Qgb25seSBzaGFyaW5nIHRoZSBncGlvCj4gYnV0IGFsc28g
dGhlIHBpbmN0cmwgb24gYWxsIGZpeGVkIHJlZ3VsYXRvcnMuCj4KPiBBbmQgd2l0aCBvbmx5IG9u
ZSBvZiB0aGVtIGhhdmluZyB0aGUgcGluY3RybCwgYXJlIHdlIHN1cmUgdGhlIHJlZ3VsYXRvcgo+
IHByb2JlZCBmaXJzdCB3aWxsIGFsd2F5cyBiZSB0aGUgc2FtZSwgb3IgZG9lcyB0aGUgcGluY3Ry
bCBzZXR0aW5nIG1heSBvbmx5Cj4gY29tZSBpbnRvIGVmZmVjdCBvbmNlIHRoZSAybmQgb3IgM3Jk
IG9uZSBwcm9iZXM/CgpJdCdzIGEgY3VycmVudCBsaW1pdGF0aW9uIG9mIHRoZSBwaW5jdHJsIGRy
aXZlciB1bmZvcnR1bmF0ZWx5LiBPbiB0aGUKb2ZmIGNoYW5jZSB0aGUgcmVndWxhdG9yIHRoYXQg
b3ducyB0aGUgcGluY3RybCBkb2Vzbid0IHByb2JlIGl0IG5ldmVyCmdldHMgYXBwbGllZCwgc28g
aXQncyBpbXBvcnRhbnQgdG8gYXNzaWduIGl0IGNhcmVmdWxseS4gRm9yIGluc3RhbmNlCnRoZSBi
ZXN0IHNjZW5hcmlvIGlzIGFzc2lnbmluZyBpdCB0byBhIGZpeGVkLXJlZ3VsYXRvciB0aGF0IGlz
IG9ubHkKZmVkIGJ5IG90aGVyIGZpeGVkLXJlZ3VsYXRvcnMuIFRoYXQgd2F5IGEgZGVwZW5kZW5j
eSBpc3N1ZSBkb2Vzbid0CmNhdXNlIHRoZSBwaW5jdHJsIHRvIG5vdCBhc3NpZ24uCgo+Cj4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
