Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB160C3DA6F
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Aug 2023 18:16:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZxlLM51He3dgRdFM0Zl00vC8C8oYtI7cTAAPJqP8x54=; b=nxuCbJjYXx22q2
	T+tePPqIND25Hfvjm6tsnuIPzOxvnr05GhraZTH93Ku7hk8CyzG4eyZC4KiynmO8iWKoGKh/1evmP
	ju89GLSZ+NCpAeirsZM3e/iW+f2Ya6cxcUIKkTGwmLkLZ5rKAHcsg3Kq5aoc3kDgrL7FcFDzbBb7P
	7CqpnbrVZFLBHX16AD051T7EsPOtzQkq7LNFLtgRNCPyH9XRYX7qBH9c/yuSXifcoimAUYNdQAntU
	Ix6ugEV0lYOLOXEWzyM489XdNIu8EeVsxv5YSD/2xm4qi6ucUgZDPRfRVyF6Q9nVuqcraex9Sqjft
	KVmXAdrhJd351vIEwQKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZbLY-005qWG-05;
	Fri, 25 Aug 2023 18:15:48 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZbLT-005qUV-0o;
	Fri, 25 Aug 2023 18:15:45 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-5007c8308c3so1877847e87.0;
        Fri, 25 Aug 2023 11:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692987339; x=1693592139;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z/FGw8WTQcGNaVQqRBSGTtSHwW9E63Wb1NNcuS9eK8s=;
        b=OxzC34VYQ/lOuAIJBv07wp6fPeLehLOAi1mU0uJLZSHMKrmj+EwYKRbIIaTKzGM0OD
         FELyHBv8icVGpooaDMH3pX56dJa2Wwqw0V1UOotJHLaAiAGC1WhZgkjwzjb+PigyH2OO
         qFu/a5ucbI3kLN3Rx4zRSLPky+hrc1dteGIHl/xz3OLfM3wEhzCkuhFy8oZFBdcQUsIl
         CetyjZ4N7p2FqAbZhzJxrFNfPtCayDJZ+fEtxSGfa3e621rdXxWjQR+5/+GD5oFVXLKu
         NBQYlM4Z037DJO07cmUfuVuyUIkjCbxMv2CfK1LjPyWxZWSdiHITq0jJPn22qbsZ/miw
         X1YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692987339; x=1693592139;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z/FGw8WTQcGNaVQqRBSGTtSHwW9E63Wb1NNcuS9eK8s=;
        b=dOM+HwmnRG9ykjDyRDZkgY7CQTjnW67Y4HRA4cy+7RQOaOWqZbW04N0dA7wyJHYRzi
         ikVsOCPaTCaH9028cmnfHPItDeKfybm5js46DiqCKqPPSuAswPnZtBjVjQbegE1mq9qG
         kxH6Q1QOpe91DLiRQ8IqVOdMJ/jxZZr5bdRD8WUfThZQeRWYvgqU+g4Nu9P+k+9xosR/
         Imeo8qWf8BPBXf2Qy/hjKEeKtWc4uurNEsLaExyDmvQyM1DT4yBxZ6haNZR0tH84R8rl
         6wzbJYproAOUi0R3fftCffC1VFTKMBRSwhDZWFUFUq/vP9LMg99zRsOZkdBWuWJ7ZVjD
         NnSA==
X-Gm-Message-State: AOJu0YybMlF4eIy7uc5wtRYeBfJTPIpytofAvyulVEmIxlaqRaWbupem
	MXQYVNodtVt6wqFW4DyLMWEBnLkUFeoaH2qB3lE=
X-Google-Smtp-Source: AGHT+IHpRCVvS7diQdycBT5DGX0/HZUcX9oDLtQP3DT3UbV1oJ30vCnXpa+uG6GgEKk5nHZkYu+C35njfaJ8/ELaD5A=
X-Received: by 2002:ac2:5f85:0:b0:500:9860:f8a with SMTP id
 r5-20020ac25f85000000b0050098600f8amr5130105lfe.4.1692987338930; Fri, 25 Aug
 2023 11:15:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAF6AEGsdR4XMQ73mwNEE-fntPFLbQrxmzdoWchjReoVXKexdVw@mail.gmail.com>
 <3f08-64e8c380-3-f083520@11689262>
In-Reply-To: <3f08-64e8c380-3-f083520@11689262>
From: Rob Clark <robdclark@gmail.com>
Date: Fri, 25 Aug 2023 11:15:26 -0700
Message-ID: <CAF6AEGtzfEFpr610c8TdLAH_zEYEtXzt61ywQTcFbvCOj-G9-A@mail.gmail.com>
Subject: Re: [PATCH 2/6] drm: ci: Force db410c to host mode
To: Helen Mae Koike Fornazier <helen.koike@collabora.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>, 
	Vignesh Raman <vignesh.raman@collabora.com>, dri-devel@lists.freedesktop.org, 
	emma@anholt.net, linux-doc@vger.kernel.org, david.heidelberg@collabora.com, 
	linux-amlogic@lists.infradead.org, jbrunet@baylibre.com, robdclark@google.com, 
	corbet@lwn.net, khilman@baylibre.com, sergi.blanch.torne@collabora.com, 
	gustavo.padovan@collabora.com, linux-rockchip@lists.infradead.org, 
	daniels@collabora.com, martin.blumenstingl@googlemail.com, 
	robclark@freedesktop.org, anholt@google.com, 
	linux-mediatek@lists.infradead.org, mripard@kernel.org, 
	matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org, 
	angelogioacchino.delregno@collabora.com, neil.armstrong@linaro.org, 
	guilherme.gallo@collabora.com, linux-kernel@vger.kernel.org, 
	tzimmermann@suse.de
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230825_111543_290091_D311C262 
X-CRM114-Status: GOOD (  48.04  )
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

T24gRnJpLCBBdWcgMjUsIDIwMjMgYXQgODowNuKAr0FNIEhlbGVuIE1hZSBLb2lrZSBGb3JuYXpp
ZXIKPGhlbGVuLmtvaWtlQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+Cj4gT24gRnJpZGF5LCBBdWd1
c3QgMjUsIDIwMjMgMTE6NDEgLTAzLCBSb2IgQ2xhcmsgPHJvYmRjbGFya0BnbWFpbC5jb20+IHdy
b3RlOgo+Cj4gPiBPbiBGcmksIEF1ZyAyNSwgMjAyMyBhdCA3OjM04oCvQU0gSGVsZW4gTWFlIEtv
aWtlIEZvcm5hemllcgo+ID4gPGhlbGVuLmtvaWtlQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+ID4g
Pgo+ID4gPiBPbiBGcmlkYXksIEF1Z3VzdCAyNSwgMjAyMyAxMTozMCAtMDMsIFJvYiBDbGFyayA8
cm9iZGNsYXJrQGdtYWlsLmNvbT4gd3JvdGU6Cj4gPiA+Cj4gPiA+ID4gT24gRnJpLCBBdWcgMjUs
IDIwMjMgYXQgNjo1NuKAr0FNIEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5j
b20+IHdyb3RlOgo+ID4gPiA+ID4KPiA+ID4gPiA+IE9uIEZyaSwgMjUgQXVnIDIwMjMsIFZpZ25l
c2ggUmFtYW4gPHZpZ25lc2gucmFtYW5AY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4gPiA+ID4gPiA+
IEZvcmNlIGRiNDEwYyB0byBob3N0IG1vZGUgdG8gZml4IG5ldHdvcmsgaXNzdWUgd2hpY2ggcmVz
dWx0cyBpbiBmYWlsdXJlCj4gPiA+ID4gPiA+IHRvIG1vdW50IHJvb3QgZnMgdmlhIE5GUy4KPiA+
ID4gPiA+ID4gU2VlIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9nZngtY2kvbGludXgv
LS9jb21taXQvY2I3MmE2MjliOGMxNWM4MGE1NGRkYTUxMDc0M2NlZmQxYzRiNjViOAo+ID4gPiA+
ID4gPgo+ID4gPiA+ID4gPiBTaW5jZSB0aGlzIGZpeCBpcyBub3Qgc2VudCB1cHN0cmVhbSwgYWRk
IGl0IHRvIGJ1aWxkLnNoIHNjcmlwdAo+ID4gPiA+ID4gPiBiZWZvcmUgYnVpbGRpbmcgdGhlIGtl
cm5lbCBhbmQgZHRzLiBCZXR0ZXIgYXBwcm9hY2ggd291bGQgYmUKPiA+ID4gPiA+ID4gdG8gdXNl
IGRldmljZXRyZWUgb3ZlcmxheXMuCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFNpZ25lZC1vZmYt
Ynk6IFZpZ25lc2ggUmFtYW4gPHZpZ25lc2gucmFtYW5AY29sbGFib3JhLmNvbT4KPiA+ID4gPiA+
ID4gLS0tCj4gPiA+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vY2kvYnVpbGQuc2ggfCA0ICsrKysK
PiA+ID4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykKPiA+ID4gPiA+ID4K
PiA+ID4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9jaS9idWlsZC5zaCBiL2Ry
aXZlcnMvZ3B1L2RybS9jaS9idWlsZC5zaAo+ID4gPiA+ID4gPiBpbmRleCA3YjAxNDI4N2EwNDEu
LmMzOTgzNGJkNmJkNyAxMDA2NDQKPiA+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2Np
L2J1aWxkLnNoCj4gPiA+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9jaS9idWlsZC5zaAo+
ID4gPiA+ID4gPiBAQCAtNzAsNiArNzAsMTAgQEAgaWYgWyAteiAiJENJX01FUkdFX1JFUVVFU1Rf
UFJPSkVDVF9QQVRIIiBdOyB0aGVuCj4gPiA+ID4gPiA+ICAgICAgZmkKPiA+ID4gPiA+ID4gIGZp
Cj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+ICsjIEZvcmNlIGRiNDEwYyB0byBob3N0IG1vZGUgdG8g
Zml4IG5ldHdvcmsgaXNzdWUgd2hpY2ggcmVzdWx0cyBpbiBmYWlsdXJlIHRvIG1vdW50IHJvb3Qg
ZnMgdmlhIE5GUy4KPiA+ID4gPiA+ID4gKyMgU2VlIGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9w
Lm9yZy9nZngtY2kvbGludXgvLS9jb21taXQvY2I3MmE2MjliOGMxNWM4MGE1NGRkYTUxMDc0M2Nl
ZmQxYzRiNjViOAo+ID4gPiA+ID4gPiArc2VkIC1pICcvJnVzYiB7Lywvc3RhdHVzID0gIm9rYXki
Oy9zL3N0YXR1cyA9ICJva2F5IjsvJlxuXHRkcl9tb2RlID0gImhvc3QiOy8nIGFyY2gvYXJtNjQv
Ym9vdC9kdHMvcWNvbS9hcHE4MDE2LXNiYy5kdHMKPiA+ID4gPiA+ID4gKwo+ID4gPiA+ID4KPiA+
ID4gPiA+IEl0IHNlZW1zIGxpa2UgYSByZWFsbHkgYmFkIGlkZWEgdG8gbWUgdG8gaGF2ZSB0aGUg
Q0kgYnVpbGQgbW9kaWZ5IHRoZQo+ID4gPiA+ID4gc291cmNlIHRyZWUgYmVmb3JlIGJ1aWxkaW5n
Lgo+ID4gPiA+ID4KPiA+ID4gPiA+IFRoZSBrZXJuZWwgYmVpbmcgYnVpbHQgd2lsbCBoYXZlIGEg
ZGlydHkgZ2l0IHJlcG8sIGFuZCB0aGUgbG9jYWx2ZXJzaW9uCj4gPiA+ID4gPiB3aWxsIGhhdmUg
LWRpcnR5IGluIGl0Lgo+ID4gPiA+ID4KPiA+ID4gPiA+IEkgdGhpbmsgaXQgd291bGQgYmUgYmV0
dGVyIHRvIGRvIG91dC1vZi10cmVlIGJ1aWxkcyBhbmQgYXNzdW1lIHRoZQo+ID4gPiA+ID4gc291
cmNlIGlzIHJlYWQtb25seS4KPiA+ID4gPgo+ID4gPiA+IFdlIGhhdmUgdGhlICR7dGFyZ2V0X2Jy
YW5jaH0tZXh0ZXJuYWwtZml4ZXMgbWVjaGFuaXNtIHRvIG1lcmdlCj4gPiA+ID4gbmVjZXNzYXJ5
IGNoYW5nZXMgYmVmb3JlIGJ1aWxkaW5nIHRoZSBrZXJuZWwgZm9yIENJLiAgV2hpY2ggaXMKPiA+
ID4gPiBuZWNlc3NhcnkgZm9yIGEgY291cGxlIG9mIHJlYXNvbnM6Cj4gPiA+Cj4gPiA+IFNob3Vs
ZCB3ZSBjcmVhdGUgYW4gb2ZmaWNpYWwgdG9waWMvZHJtLWNpLWV4dGVybmFsLWZpeGVzIGJyYW5j
aCA/Cj4gPgo+ID4gSG1tLCBtYXliZS4uIEkgZ3Vlc3MgYXMgd2UgZXhwYW5kIHRoaXMgdG8gbW9y
ZSBkcml2ZXIgdHJlZXMsIGFuZCB3YW50Cj4gPiB0byBiZSBhYmxlIHRvIHJlLXJ1biBDSSBpbiB0
aGUgZHJtIHRyZWUgYWZ0ZXIgbWVyZ2VzIHRvCj4gPiBkcm0tbmV4dC9kcm0tZml4ZXMsIHdlIG1h
eWJlIHdhbnQgdG8gaGF2ZSBjZW50cmFsCj4gPiBkcm0tbmV4dC1leHRlcm5hbC1maXhlcyBhbmQg
ZHJtLWZpeGVzLWV4dGVybmFsLWZpeGVzLiAgSSBndWVzcyB3ZSBjYW4KPiA+IGtlZXAgdGhvc2Ug
YmFzZWQgb24gZHJtLW5leHQgYW5kIGRybS1maXhlcz8gIEFuZCBpZiB0aGVyZSB3b3VsZCBiZQo+
ID4gY29uZmxpY3RzIGJlY2F1c2UsIHNheSwgJHtkcml2ZXJ9LW5leHQgaXMgYmVoaW5kIGRybS1u
ZXh0LCB0aGVuCj4gPiAke2RyaXZlcn0tbmV4dCBjb3VsZCBiZSByZWJhc2VkIG9uIGRybS1uZXh0
Pwo+ID4KPgo+IHRiaCB0aGlzIGlzIG9uZSBvZiB0aGUgcmVhc29ucyBJIHdvdWxkIHByZWZlciBp
bi1jb2RlIGZpeGVzIGluc3RlYWQgb2YKPiBjb21taXRzIG9uIGEgLWV4dGVybmFsLWZpeGVzIGJy
YW5jaCwgc2luY2UgaXQgc2VlbXMgdGhpbmdzIHN0YXJ0IHRvIGJlY29tZQo+IGNvbXBsZXggdG8g
bWFuYWdlIGFsbCBkaWZmZXJlbnQgdHJlZXMgZm9yIHBlb3BsZSBleGVjdXRpbmcgY2kgdGVzdHMK
PiBvbiBkaWZmZXJlbnQgaGlzdG9yeSBwb2ludHMsIGJ1dCBJIGRvbid0IG9wcG9zZSBnb2luZyBm
b3IgLWV4dGVybmFsLWZpeGVzCj4gZWl0aGVyLgoKSWYgYnkgaW4tY29kZSB5b3UgbWVhbiBpbiB0
aGUgc2FtZSBicmFuY2ggdGhhdCB3ZSBhcmUgcnVubmluZyBDSSBvbiwgSQp0aGluayB0aGF0IHdp
bGwgYmUgZGlmZmljdWx0IHRvIGRvIHdpdGhvdXQgaGF2aW5nIGZvcmNlLXB1c2hlcyBsYXRlcgp0
byByZW1vdmUgdGhlIHVucmVsYXRlZCBwYXRjaC4KCkl0IGRvZXNuJ3QgaGFwcGVuIGV2ZXJ5IHJl
bGVhc2UsIGJ1dCBzb21ldGltZXMgdGhlcmUgaXMgYW4gaXNzdWUKcmVxdWlyaW5nIGEgZml4IG91
dHNpZGUgb2YgZHJtLCB3aGljaCByZWFsbHkgc2hvdWxkbid0IGxhbmQgdmlhCmRybS1uZXh0LiAg
SW4gc29tZSBjYXNlcyBldmVuLCB3ZSBtaWdodCBuZWVkIGEgdGVtcG9yYXJ5IGhhY2sgZml4IHdo
ZW4KYSBwcm9wZXIgc29sdXRpb24gaXMgc3RpbGwgYmVpbmcgd29ya2VkIG91dC4gIFNpbmNlIHRo
ZSBrZXJuZWwKZGV2ZWxvcG1lbnQgaXMgdW5saWtlIG1lc2EsIHdoZXJlIHdlIGhhdmUgYSBzaW5n
bGUgbWFpbiBicmFuY2ggYW5kIENJCnJ1bnMgb24gZXZlcnkgY2hhbmdlIGVudGVyaW5nIHRoYXQg
bWFpbiBicmFuY2gsIHdlIGFyZSBnb2luZyB0byBoYXZlCnRvIGRlYWwgb2NjYXNpb25hbGx5IHdp
dGggYnJlYWthZ2UgdGhhdCBjb21lcyBpbiB2aWEgYW5vdGhlciB0cmVlIHRoYXQKaXNuJ3QgcnVu
bmluZyBDSS4gIEJ1dCBJTUUgc28gZmFyIHdpdGggbXNtLW5leHQtZXh0ZXJuYWwtZml4ZXMsIGl0
Cmhhc24ndCBiZWVuIHNvIGJhZC4uIEkgaGF2ZW4ndCBldmVuIGhhZCB0byByZWJhc2UgaXQgZXZl
cnkga2VybmVsCmN5Y2xlLiAgKElmIHRoZSBmaXggY2hlcnJ5LXBpY2tlZCBpbnRvIC1leHRlcm5h
bC1maXhlcyBmcm9tIGEgcHJldmlvdXMKcmVsZWFzZSBjeWNsZSBhbHJlYWR5IGV4aXN0cyBpbiBt
c20tbmV4dCB0aGVuIHRoZSBtZXJnZSBvZiB0aGF0IGNvbW1pdAppcyBhIG5vLW9wLikKCkJSLAot
UgoKPiBSZWdhcmRzLAo+IEhlbGVuCj4KPiA+IEJSLAo+ID4gLVIKPiA+Cj4gPiA+IFJlZ2FyZHMs
Cj4gPiA+IEhlbGVuCj4gPiA+Cj4gPiA+ID4KPiA+ID4gPiAxKSBwYXRjaGVzIGxpa2UgdGhpcyB3
aGljaCBhcmVuJ3QgYXBwcm9wcmlhdGUgdXBzdHJlYW0gYnV0IG5lY2Vzc2FyeQo+ID4gPiA+IGR1
ZSB0byB0aGUgQ0kgbGFiIHNldHVwCj4gPiA+ID4gMikgdGFyZ2V0IGJyYW5jaCBpZiBvZnRlbiBi
YXNlZCBvbiBhbiBlYXJseSAtcmMsIGFuZCBpdCBpc24ndCB1bmhlYXJkCj4gPiA+ID4gb2YgdG8g
bmVlZCBzb21lIGZpeCBmb3Igc29tZSBib2FyZCBvciBhbm90aGVyIHdoaWNoIGlzbid0IGFwcHJv
cHJpYXRlCj4gPiA+ID4gdG8gbGFuZCB2aWEgZHJtLW5leHQKPiA+ID4gPgo+ID4gPiA+IFdlIHNo
b3VsZCB1c2UgdGhlIC1leHRlcm5hbC1maXhlcyBicmFuY2ggbWVjaGFuaXNtIGZvciBwYXRjaGVz
IGxpa2UgdGhpcyBvbmUuCj4gPiA+ID4KPiA+ID4gPiBCUiwKPiA+ID4gPiAtUgo+ID4gPiA+Cj4g
PiA+ID4gPiA+ICBmb3Igb3B0IGluICRFTkFCTEVfS0NPTkZJR1M7IGRvCj4gPiA+ID4gPiA+ICAg
IGVjaG8gQ09ORklHXyRvcHQ9eSA+PiBkcml2ZXJzL2dwdS9kcm0vY2kvJHtLRVJORUxfQVJDSH0u
Y29uZmlnCj4gPiA+ID4gPiA+ICBkb25lCj4gPiA+ID4gPgo+ID4gPiA+ID4gRGl0dG8gZm9yIHRo
ZSBjb25maWcgY2hhbmdlcyBpbiB0aGUgY29udGV4dCBoZXJlLiBUaG9zZSBhcmUgZmlsZXMgaW4K
PiA+ID4gPiA+IGdpdCwgZG9uJ3QgY2hhbmdlIHRoZW0uCj4gPiA+ID4gPgo+ID4gPiA+ID4gU2hv
dWxkbid0IHRoaXMgdXNlIHNvbWV0aGluZyBsaWtlICdzY3JpcHRzL2NvbmZpZyAtLWVuYWJsZScg
b3IKPiA+ID4gPiA+ICdzY3JpcHRzL2NvbmZpZyAtLWRpc2FibGUnIG9uIHRoZSAuY29uZmlnIGZp
bGUgdG8gYmUgdXNlZCBmb3IgYnVpbGRpbmcKPiA+ID4gPiA+IGluc3RlYWQ/Cj4gPiA+ID4gPgo+
ID4gPiA+ID4KPiA+ID4gPiA+IEJSLAo+ID4gPiA+ID4gSmFuaS4KPiA+ID4gPiA+Cj4gPiA+ID4g
Pgo+ID4gPiA+ID4gLS0KPiA+ID4gPiA+IEphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBH
cmFwaGljcyBDZW50ZXIKPiA+ID4KPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
