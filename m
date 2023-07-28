Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9322C001DF
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Jul 2023 14:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5aSvNjOgwsOSPpnL3Qa9QNcau1psuvFCdhoLsKq+yrc=; b=M1mOp33vnourV2
	b1ptblqizBS9nW+HcCkH018KSVzI6WFCMt+EZvI2lVA/j3Llnu6S5Wy341xF35lmjqvIImnZF+Jtk
	gnp3FHYNQYWr8oGE9//2cALMvwZNGChcRa5YYtNFalXYqoLoSA53iCGgssz1GyWI+Q6NmMvP7WHq8
	rFs71wi6HpFSc2qCAdDkCroFToKl8jNlQivujc7bVyQV9xJ0FinkoM3vS0EeKs2iEQrC/vv1W5HL/
	GQuWadT717rmBUsPN+WsbPF6gRUBKLy8YAzEaLunkCGtegR27Qgi9v5a0X79HgnqCJxDvtTXwbpHQ
	uqSIV8Tavs68uIAT4pEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPObJ-003inW-1m;
	Fri, 28 Jul 2023 14:37:53 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPObF-003ilp-2P;
	Fri, 28 Jul 2023 14:37:51 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4fe04882c66so3856404e87.3;
        Fri, 28 Jul 2023 07:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690555064; x=1691159864;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OoBzPwja36fkGB2m2EIbRi55n5XYr4VNaYPCpY7zeKs=;
        b=mH17P6vfTfQdoT14pC3A4FfDJ2VBrkghAG4nBuM7YP9r7FzJpwrAFXB5UMTvtqhF40
         XHnTn9QeyjMKGzDXjQG0c4Tthbnl8t35Fbo4n0fUp5eVbJ8S11AC+mfrG/aPvVGubjpv
         jcunb7H8In7x+NbtE3ATP0FXQh2giufFWcsNZQpuzRCASB4ZZzp/+9+VsRFyxq7TerlQ
         B+DbL/+fE4gdv7uvDxokIcRTP7edsXWY1QHw87YUGF1qk1FfE0wcZmB6VBIGvlKbqDz5
         HQ1cwr6QXDanyk/pTVPTws4QTPAuqgF5F7qbF5rszCMz9nMXITHPXWMZeujKdSciAojn
         hIUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690555064; x=1691159864;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OoBzPwja36fkGB2m2EIbRi55n5XYr4VNaYPCpY7zeKs=;
        b=duCiyL36JEFhwXAePVa+zI6i5wmuoaabKGDCgZcSH/KSwwV1jrYjKZRLlZdV/XHYnE
         K1yIvOFXJPPtFHOgRlbokkUR5ZQiQDqKxQdmFW81EYc7ruPP7KajYLzHbXWxP2IFNWnp
         1OWvLYIxHgPOQPO016kpQn8FidKN7MvnFLLJ0sBjNHExoRJRBm8B3jprh4f75Ng6U7eD
         wfpqBVpVsVrCMK99vEDzuxZzamIFcdpot+v3YGG0NRRr4Re5iAtQzOfypyU64VrNEwQd
         Y5eUBi91LDoWvqRTYxKxfqLXllyOTBbd1V63/SMMfVFYHIejNfKz3P5hEj3z941sfaZ+
         lBcg==
X-Gm-Message-State: ABy/qLZU+pa24Oi0Os66mFR7y4yJlLOB0JnBdIBHyE5MyHY8SzHpxP5h
	GgG+FAS+8fJlb+UjPMslxd8OxoyPeCzEuOFPas4=
X-Google-Smtp-Source: APBJJlGUbR0qC9paIuIRHruH4iJ3Oi11S/UE+z1ge7FEfFZqlKQmVxkAQlUoMKoxelzsZCTu0j9nGxem/4l8cRw0JdU=
X-Received: by 2002:a05:6512:2083:b0:4fd:f590:1ff7 with SMTP id
 t3-20020a056512208300b004fdf5901ff7mr1806954lfr.40.1690555063602; Fri, 28 Jul
 2023 07:37:43 -0700 (PDT)
MIME-Version: 1.0
References: <20230720152737.102382-1-helen.koike@collabora.com>
 <CAF6AEGtXL5vjp3Uup6Mk19MiY8E26-tpyXVmxXYhMd3fiadykQ@mail.gmail.com>
 <CAF6AEGsxLg4og1EkCdno6P8x31KK=rJfmerJa8uMeNR-n7RVRg@mail.gmail.com> <CAPj87rPNyJ=mX1Um6yaN_jTV2gH5MhMxr3mnSb7=nB7NEOf2Ag@mail.gmail.com>
In-Reply-To: <CAPj87rPNyJ=mX1Um6yaN_jTV2gH5MhMxr3mnSb7=nB7NEOf2Ag@mail.gmail.com>
From: Rob Clark <robdclark@gmail.com>
Date: Fri, 28 Jul 2023 07:37:31 -0700
Message-ID: <CAF6AEGtan-bQ7syKAwOKDY=044aKu26SLPQ0j1ieLqXNyQQS3g@mail.gmail.com>
Subject: Re: [PATCH v10] drm: Add initial ci/ subdirectory
To: Daniel Stone <daniel@fooishbar.org>
Cc: Helen Koike <helen.koike@collabora.com>, emma@anholt.net, linux-doc@vger.kernel.org, 
	david.heidelberg@collabora.com, dri-devel@lists.freedesktop.org, 
	linux-amlogic@lists.infradead.org, jbrunet@baylibre.com, robdclark@google.com, 
	corbet@lwn.net, khilman@baylibre.com, sergi.blanch.torne@collabora.com, 
	gustavo.padovan@collabora.com, linux-rockchip@lists.infradead.org, 
	daniels@collabora.com, martin.blumenstingl@googlemail.com, mripard@kernel.org, 
	anholt@google.com, linux-mediatek@lists.infradead.org, 
	robclark@freedesktop.org, matthias.bgg@gmail.com, 
	linux-arm-kernel@lists.infradead.org, angelogioacchino.delregno@collabora.com, 
	neil.armstrong@linaro.org, guilherme.gallo@collabora.com, 
	linux-kernel@vger.kernel.org, tzimmermann@suse.de, 
	Dave Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230728_073749_783045_328D7A7B 
X-CRM114-Status: GOOD (  20.51  )
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

T24gVGh1LCBKdWwgMjcsIDIwMjMgYXQgMTA6MjbigK9QTSBEYW5pZWwgU3RvbmUgPGRhbmllbEBm
b29pc2hiYXIub3JnPiB3cm90ZToKPgo+IE9uIFRodSwgMjcgSnVsIDIwMjMgYXQgMjI6NDcsIFJv
YiBDbGFyayA8cm9iZGNsYXJrQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+IEkgZGlkIHJ1biBpbnRv
IGEgYml0IG9mIGEgY2hpY2tlbiB2cy4gZWdnIHByb2JsZW0gd2l0aCB0ZXN0aW5nIHRoZSAiaW4K
PiA+ID4gdHJlZSIgdmVyc2lvbiAoY29tcGFyZWQgdG8gZWFybGllciB2ZXJzaW9ucyB3aGljaCBr
ZXB0IG1vc3Qgb2YgdGhlIHltbAo+ID4gPiBhbmQgc2NyaXB0cyBpbiBhIHNlcGFyYXRlIHRyZWUp
LCBpcyB0aGF0IGl0IGFjdHVhbGx5IHJlcXVpcmVzIHRoaXMKPiA+ID4gY29tbWl0IHRvIGV4aXN0
IGluIHRoZSBicmFuY2ggeW91IHdhbnQgdG8gcnVuIENJIG9uLiAgTXkgZWFybGllcgo+ID4gPiB3
b3JrYXJvdW5kIG9mIHB1bGxpbmcgdGhlIGRybS9jaSBjb21taXQgaW4gdmlhCj4gPiA+ICR7YnJh
bmNobmFtZX0tZXh0ZXJuYWwtZml4ZXMgbm8gbG9uZ2VyIHdvcmtzLgo+ID4KPiA+IEFmdGVyIHVu
d2luZGluZyBzb21lIG1vcmUgZ2l0bGFiIHJlcG8gc2V0dGluZ3MgdGhhdCB3ZXJlIGZvciB0aGUK
PiA+IHByZXZpb3VzIG91dC1vZi10cmVlIHltbCBzZXR1cCwgSSBoYXZlIHRoaXMgd29ya2luZy4K
PiA+Cj4gPiBUZXN0ZWQtYnk6IFJvYiBDbGFyayA8cm9iZGNsYXJrQGdtYWlsLmNvbT4KPiA+IEFj
a2VkLWJ5OiBSb2IgQ2xhcmsgPHJvYmRjbGFya0BnbWFpbC5jb20+Cj4KPiBBbmQgaXQncyBhbHNv
Ogo+IEFja2VkLWJ5OiBEYW5pZWwgU3RvbmUgPGRhbmllbHNAY29sbGFib3JhLmNvbT4KPgo+IEl0
J3MgYmVlbiBiYWNrIGFuZCBmb3J0aCBhIGZldyB0aW1lcyBieSBub3cgYW5kIHJldmlld2VkIHBy
ZXR0eQo+IGhlYXZpbHkgYnkgYWxsIHRoZSBwZW9wbGUgd2hvIGFyZSBhY3Jvc3MgdGhlIENJIGRl
dGFpbHMuIEkgdGhpbmsgdGhlCj4gbmV4dCBzdGVwIGlzIHRvIGFuc3dlciBhbGwgdGhlIHdvcmtm
bG93IHF1ZXN0aW9ucyBieSBhY3R1YWxseSBnZXR0aW5nCj4gaXQgaW50byB0cmVlcyBhbmQgdXNp
bmcgaXQgaW4gYW5nZXIuIFRoZXJlIHdhcyBzb21lIGRpc2N1c3Npb24gYWJvdXQKPiB3aGV0aGVy
IHRoaXMgc2hvdWxkIGNvbWUgaW4gZnJvbSBkcm0tbWlzYywgb3IgdGhlIGNvcmUgRFJNIHRyZWUs
IG9yIGEKPiBjb21wbGV0ZWx5IHNlcGFyYXRlIHB1bGwsIGJ1dCBJJ20gbm90IHN1cmUgd2hhdCB0
aGUgY29uY2x1c2lvbiB3YXMgLi4uCj4gbWFpbnRhaW5lcnMsIHRob3VnaHRzPwoKSSdkIHByZWZl
ciBhIHNlcGFyYXRlIHB1bGwsIHNvIHRoYXQgSSBjb3VsZCBtZXJnZSBpdCBpbnRvIG1zbS1uZXh0
IGFzCndlbGwgd2l0aG91dCBoYXZpbmcgdG8gcHVsbCBpbiBhbGwgb2YgZHJtLW1pc2MKClBvc3Np
Ymx5IHNvbWUgb3RoZXIgZHJpdmVyIHRyZWVzIHdvdWxkIGxpa2UgdG8gZG8gc2ltaWxhcj8KCkJS
LAotUgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
