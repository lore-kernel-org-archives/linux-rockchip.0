Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A2FD1C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Oct 2022 17:50:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WZ2E6quJOgx/3UpIcWAx9EfBK62Sx6NbpsECemArQY0=; b=J7X7VpSW1gj5Do
	5JqcUvlv2X21rZIMa8DQt4tL7PEYTfZyDZTIIVPiwLT20v8hbUgzRejS9xvaMCDeSf/ktSm5blDO8
	Gah9QN76kDpHkE6TeuE+KzVBjuqd77lVDgFZU/VhVn1aI7oeLdegUot9SbTuye6QAEAWKCsALPwIX
	3AGG06pOTbhCLGe1LBfzFyti9pMaib44Dx/K5zvqWdVOKUpGovk9VjHvi8nsXNj6Qr4LRcfmznysF
	4Xma+KRkvGTyvjFPl/COJRzPqF0UQYFBi/QhPl/xghCD5Von3vy+j5UHJXq8+du+A6vnS7CNM7rZ0
	W6A0u0KW3xa7AdVqegOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oifrq-008uOK-B8; Wed, 12 Oct 2022 17:50:06 +0000
Received: from mail-qv1-xf2f.google.com ([2607:f8b0:4864:20::f2f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oifrb-008uLA-TR; Wed, 12 Oct 2022 17:49:53 +0000
Received: by mail-qv1-xf2f.google.com with SMTP id f14so11363939qvo.3;
        Wed, 12 Oct 2022 10:49:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xfLxdqnnh0d/6BCOLRProKERjFayNi0GJ0Rv9EWEt34=;
        b=WAb4g/kwIEEwbhbnWqgwC5/H9Xgf6P8cZD/8VgwmHtkgPj1jWPsHjBcQpuzdFJMP+1
         v6h73qupXsKbcMzx9p8CpGuBM2/wCnyRdJ2b1EXJIri8751zhaA414FY1aXmaejbDLGf
         syOdMp9xUfkO9Rnnofo0wjr3BAa+VHjwNZ+WCTbd7r21d9ecbbJLgaEuCGr24/m1b8or
         geikeIop6WLnPp3Ethyhk619TFr27VfcMVj2djZ0gik1ncN/ZTSNHgWjHt/xD32N6UPn
         POFTPnkFxWemyJdoVUvllbMS38yQyx1I3fm2zMgj78WoQeU4FY+EmFyPIqZfN+CF6IMF
         OcCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xfLxdqnnh0d/6BCOLRProKERjFayNi0GJ0Rv9EWEt34=;
        b=BdJhlcW9oar36RIbC6xdC9AP6A4vE6JKP5QfDqEq1yy1GTXp07Wua3L6zTla2ZanvD
         EtrDE1xHVjdkHw3L1vrDFPQrj78VfIs9ZQEXgsb3mXqZjvCakJNY2V6BrIbw7DZlXUyk
         eRAm8ITogfyMgnSF3tUJ79Ztjq7Ppzsi9OKAiE+Gzh+8P+YTOWvWKPQMWN77wctMlp0h
         WYMkU2qjoxRLSSvbPEt3Ef++5yCp5SN8ooQr2gsGxq6aDTN6/qNvZjTAo68eI3koNMSt
         Xp69vkzhObV9cIeEPyKPz3PPgFUHMgAMyELnui5gcgNtXQfyfqpNg4Nr0tS6TPjpegSt
         ZDOw==
X-Gm-Message-State: ACrzQf0ZEpJyxlkPyDMV6pQmrRWB59UGiVFeA8gKJshPy1PWgZ0YER2u
	+/PhkiBn7bBGiYqF8j/aPmGxqwddHi9DvJWftPI=
X-Google-Smtp-Source: AMsMyM4ZhWmQqY8/dfke1Qoar92HAbwtO9L1ek/Awy2la1XHak6/Y0uDCrEofraFCtkZ++U6JFUMRLP7wWAibHkOjCI=
X-Received: by 2002:a05:6214:300c:b0:4b3:cefd:fae0 with SMTP id
 ke12-20020a056214300c00b004b3cefdfae0mr20928091qvb.48.1665596989653; Wed, 12
 Oct 2022 10:49:49 -0700 (PDT)
MIME-Version: 1.0
References: <20221012151620.1725215-1-nuno.sa@analog.com>
In-Reply-To: <20221012151620.1725215-1-nuno.sa@analog.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 12 Oct 2022 20:49:13 +0300
Message-ID: <CAHp75VcUaSaAQ5Gs32bmpUyROqRLjMuDykdKp34p+2DYsovSPw@mail.gmail.com>
Subject: Re: [PATCH v3 0/4] Make 'mlock' really private
To: =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-iio@vger.kernel.org, 
	linux-amlogic@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-imx@nxp.com, Chen-Yu Tsai <wens@csie.org>, 
	Andriy Tryshnivskyy <andriy.tryshnivskyy@opensynergy.com>, 
	Ciprian Regus <ciprian.regus@analog.com>, Vladimir Zapolskiy <vz@mleia.com>, 
	Cixi Geng <cixi.geng1@unisoc.com>, Neil Armstrong <narmstrong@baylibre.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Heiko Stuebner <heiko@sntech.de>, Fabio Estevam <festevam@gmail.com>, 
	Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
	Hans de Goede <hdegoede@redhat.com>, Alexandru Ardelean <aardelean@deviqon.com>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Haibo Chen <haibo.chen@nxp.com>, 
	Lars-Peter Clausen <lars@metafoo.de>, Jyoti Bhayana <jbhayana@google.com>, 
	Jonathan Cameron <jic23@kernel.org>, Florian Boor <florian.boor@kernelconcepts.de>, 
	Chunyan Zhang <zhang.lyra@gmail.com>, Orson Zhai <orsonzhai@gmail.com>, 
	Shawn Guo <shawnguo@kernel.org>, Kevin Hilman <khilman@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_104951_977654_8F3F9622 
X-CRM114-Status: GOOD (  31.61  )
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

T24gV2VkLCBPY3QgMTIsIDIwMjIgYXQgNjoxNSBQTSBOdW5vIFPDoSA8bnVuby5zYUBhbmFsb2cu
Y29tPiB3cm90ZToKPgo+IFRoaXMgcGF0Y2hzZXQgY2xlYW5zIGFsbCB0aGUgZHJpdmVycyBkaXJl
Y3RseSB1c2luZyB0aGUgaWlvX2RldmljZSAnbWxvY2snLgo+IFRoaXMgbG9jayBpcyBwcml2YXRl
IGFuZCBzaG91bGQgbm90IGJlIHVzZWQgb3V0c2lkZSB0aGUgY29yZSAob3IgYnkgdXNpbmcKPiBw
cm9wZXIgaGVscGVycykuCj4KPiBNb3N0IG9mIHRoZSBjb252ZXJzaW9ucyB3aGVyZSBzdHJhaWdo
dCwgYnV0IHRoZXJlIGFyZSBzb21lIHRoYXQgcmVhbGx5IG5lZWQKPiBleHRyYSBsb29raW5nLiBN
YWlubHkgcGF0Y2hlcyBbMTMvMTVdIGFuZCBbMTQvMTVdIHdlcmUgYSBiaXQgaGFja3kgc2luY2UK
PiBpaW9fZGV2aWNlX2NsYWltX2RpcmVjdF9tb2RlKCkgZG9lcyBub3QgZml0IDEwMCUuIFRoZSBy
ZWFzb24gaXMgdGhhdCB3ZQo+IHdhbnQgdG8gY2hlY2sgaWYgdGhlIGRldmljZSBpcyBidWZmZXJp
bmcgYW5kIGRvIHNvbWV0aGluZyBpZiBpdCBpcyAoaW4KPiB3aGljaCBjYXNlIHRoZSBBUEkgcmV0
dXJuIC1FQlVTWSBhbmQgcmVsZWFzZWQgdGhlIGxvY2suIEkganVzdCB1c2VkIGEKPiBjb21iaW5h
dGlvbnMgb2YgbG9ja3MgdG8gZ2V0IGFyb3VuZCB0aGlzIChob3BlZnVsbHkgSSBkaWQgbm90IG1l
c3NlZCB1cCkuCj4KPiBOb3RlIHRoYXQgdGhpcyBzZXJpZXMgd2FzIG9ubHkgY29tcGlsZWQgdGVz
dGVkIHVzaW5nIGFsbHllc2NvbmZpZyBmb3IKPiBBUk0uIEkgcmFuICdnaXQgZ3JlcCcgdG8gbWFr
ZSBzdXJlIHRoZXJlIHdlcmUgbm8gbW9yZSB1c2VycyBvZiAnbWxvY2snLgo+IEhvcGVmdWxseSBJ
IGNvdmVyZWQgdGhlbSBhbGwuLi4KClJldmlld2VkLWJ5OiBBbmR5IFNoZXZjaGVua28gPGFuZHku
c2hldmNoZW5rb0BnbWFpbC5jb20+CgpJIGhhdmVuJ3Qgc2VlbiBhbnkgc2VyaW91cyBpc3N1ZXMs
IHNvbWUgc21hbGwgb25lcyByZWdhcmRpbmcgc3BlbGxpbmcsCmluZGVudGF0aW9uIGFuZCBjb21t
ZW50IGFyZSBwZXIgaW5kaXZpZHVhbCBwYXRjaGVzLgoKPiB2MjoKPgo+IFtQQVRDSCAxLTgsIDEw
LTEyLzE2XQo+ICAqIE1lbnRpb24gdGhlIGluY2x1c2lvbiBvZiBtdXRleC5oIGluIHRoZSBjb21t
aXQgbWVzc2FnZS4KPgo+IFtQQVRDSCAxLTgsIDEwLCAxMi8xNl0KPiAgKiBJbml0aWFsaXplIG11
dGV4IGFzIGxhdGUgYXMgcG9zc2libGUuCj4gTm90ZSB0aGF0IFtQQVRDSCAxMS8xNl0gd2FzIG5v
dCBpbmNsdWRlZCBzaW5jZSB0aGUgY29kZSB0byBkbyBzbyB3YXMgbm90Cj4gZGlyZWN0IGVub3Vn
aC4gV291bGQgbmVlZCB0byBnZXQgYSBwb2ludGVyIHRvIHRoZSBwcml2YXRlIHN0cnV0dXJlCj4g
b3V0c2lkZSBvZiBzY21pX2FsbG9jX2lpb2RldigpIHRvIGRvIGl0LiBXaGlsZSBub3QgaGFyZCwg
dGhlIGFkZGVkIGNoYW5nZXMKPiBpbiB0aGUgY29kZSBpcyBub3QgcmVhbGx5IHdvcnRoIGl0IChJ
TU8gb2YgY291cnNlKS4KPgo+IFtQQVRDSCAxLzE2XQo+ICAqIFJlZmFjdG9yZWQgdGhlIGNvbW1p
dCBtZXNzYWdlIGEgYml0LiBJIGd1ZXNzIHRoaXMgb25lIHdpbGwgc3RpbGwgbmVlZHMKPiBtb3Jl
IGRpc2N1c3Npb24uLi4KPgo+IFtQQVRDSCA5LzE2XQo+ICAqIE5ldyBwYXRjaCB0byBhZGQgYW4g
aGVscGVyIGZ1bmN0aW9uIHRvIHJlYWQgdGhlIHNhbXBsZXMuCj4KPiBbUEFUQ0ggMTMvMTZdCj4g
ICogTmV3IHBhdGNoIHRvIGludHJvZHVjZSBpaW9fZGV2aWNlX3tjbGFpbXxyZWxlYXNlfV9idWZm
ZXJfbW9kZSgpIEFQSXMuCj4KPiBbUEFUQ0ggMTQvMTZdCj4gICogTWFrZSB1c2Ugb2YgdGhlIG5l
dyBpaW9fZGV2aWNlX3tjbGFpbXxyZWxlYXNlfV9idWZmZXJfbW9kZSgpIGhlbHBlcnMKPgo+IFtQ
QVRDSCAxNS8xNl0KPiAgKiBNYWtlIHVzZSBvZiB0aGUgbmV3IGlpb19kZXZpY2Vfe2NsYWltfHJl
bGVhc2V9X2J1ZmZlcl9tb2RlKCkgaGVscGVycwo+IGluIGNvbWJpbmF0aW9uIHdpdGggY2xhaW1f
ZGlyZWN0X21vZGUoKS4gVGhpcyBpcyBuZWVkZWQgc28gdGhhdCB3ZSBtYWtlIHN1cmUKPiB3ZSBh
bHdheXMgZ2V0IG9uZSBvZiB0aGUgbW9kZXMgKGFuZCBoZW5jZSB0aGUgaWlvX2RldiBsb2NrKSB0
byBzYWZlbHkgY2FsbAo+IG1heDMwMTAyX2dldF90ZW1wKCkuIE5vdGUgdGhhdCBJJ20gbm90IHBh
cnRpY3VsYXIgImhhcHB5IiB3aXRoIHRoZSBjb2RlIGJ1dAo+IE9UT0gsIGl0IGRvZXMgbm90IGxv
b2sgYXMgYmFkIGFzIEkgdGhvdWdodCA6KS4gQW55d2F5cywgaWYgdGhlcmUgYXJlIG5vCj4gY29t
cGxhaW5zIHdpdGggaXQsIEknbSBvayB0byBsZWF2ZSBpdCBhcy1pcy4gT3RoZXJ3aXNlLCBJIHRo
aW5rIHdlIGNhbiB0aGluawo+IG9uIHRoZSBmbGFnIGFwcHJvYWNoIChicmllZmx5IGRpc2N1c3Nl
ZCBpbiB0aGUgZmlyc3Qgc2VyaWVzKS4KPgo+IHYzOgo+Cj4gW1BBVENIIDEvNF0KPiAgKiBmaXgg
J21ha2UgVz0xJyB3YXJuaW5nIGFib3V0IHByb3RvdHlwZXMgbWlzbWF0Y2guCj4KPiBbUEFUQ0gg
Mi80XQo+ICAqIGltcHJvdmVkIGNvbW1pdCBtZXNzYWdlIHRvIGV4cGxhaW4gd2h5IHdlIGFyZSBz
aGFkb3dpbmcgZXJyb3IgY29kZXMuCj4KPiBbUEFUQ0ggNC80XQo+ICAqIG1pbm9yIEVuZ2xpc2gg
Zml4IG9uIHRoZSBjb21taXQgbWVzc2FnZSAoYXMgc3VnZ2VzdGVkIGJ5IEFuZHkpLgo+Cj4gTnVu
byBTw6EgKDQpOgo+ICAgaWlvOiBjb3JlOiBpbnRyb2R1Y2UgaWlvX2RldmljZV97Y2xhaW18cmVs
ZWFzZX1fYnVmZmVyX21vZGUoKSBBUElzCj4gICBpaW86IGhlYWx0aDogbWF4MzAxMDA6IGRvIG5v
dCB1c2UgaW50ZXJuYWwgaWlvX2RldiBsb2NrCj4gICBpaW86IGhlYWx0aDogbWF4MzAxMDI6IGRv
IG5vdCB1c2UgaW50ZXJuYWwgaWlvX2RldiBsb2NrCj4gICBpaW86IGNvcmU6IG1vdmUgJ21sb2Nr
JyB0byAnc3RydWN0IGlpb19kZXZfb3BhcXVlJwo+Cj4gIGRyaXZlcnMvaWlvL1RPRE8gICAgICAg
ICAgICAgICAgICAgfCAgMyAtLQo+ICBkcml2ZXJzL2lpby9oZWFsdGgvbWF4MzAxMDAuYyAgICAg
IHwgIDkgKystLS0KPiAgZHJpdmVycy9paW8vaGVhbHRoL21heDMwMTAyLmMgICAgICB8IDE5ICsr
KysrKystLS0KPiAgZHJpdmVycy9paW8vaW5kdXN0cmlhbGlvLWJ1ZmZlci5jICB8IDI5ICsrKysr
KysrLS0tLS0tLQo+ICBkcml2ZXJzL2lpby9pbmR1c3RyaWFsaW8tY29yZS5jICAgIHwgNTggKysr
KysrKysrKysrKysrKysrKysrKysrKy0tLS0tCj4gIGRyaXZlcnMvaWlvL2luZHVzdHJpYWxpby1l
dmVudC5jICAgfCAgNCArLS0KPiAgZHJpdmVycy9paW8vaW5kdXN0cmlhbGlvLXRyaWdnZXIuYyB8
IDEyICsrKy0tLS0KPiAgaW5jbHVkZS9saW51eC9paW8vaWlvLW9wYXF1ZS5oICAgICB8ICAyICsr
Cj4gIGluY2x1ZGUvbGludXgvaWlvL2lpby5oICAgICAgICAgICAgfCAgNSArKy0KPiAgOSBmaWxl
cyBjaGFuZ2VkLCA5NyBpbnNlcnRpb25zKCspLCA0NCBkZWxldGlvbnMoLSkKPgo+IC0tCj4gMi4z
OC4wCj4KCgotLSAKV2l0aCBCZXN0IFJlZ2FyZHMsCkFuZHkgU2hldmNoZW5rbwoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
