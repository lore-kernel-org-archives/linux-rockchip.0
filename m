Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DF8A10AB810
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Mar 2026 19:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VJ4SPA9tEnD9FxmvWZJLsQTedCnXeMNayMoXgRzXxYw=; b=Y5RxuspzUduHbN
	gVmmMIbasRMDfxu8Z/ZQPS2ujVN1QHDbb2at9Vy+EGBzhKPFfxtssTW7bD5QcKee/GMFjY/ElCBBG
	cZaY1Z6mBJKl9DilnPz0KLybSUsye65/X6unCeoq2bjaYdDZjH5FVKrCpbymXmIdbgKpfcbphQJ2t
	FguiPqPsjBATdpBqpLq6esn8wVxUFHExjc2dlmLEzl5vPyrF44rq+VKYEk15ec/zhSxW7cv2TQSNX
	NpKakg2bYR/7H5+oi40N43q1AH3oFoP3+NphLxqkMXppMr8AAGZY5BzNLP9kGjwRyU5f2+NYKyKis
	RcrkWu/g/CKY33uxMiJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5qbK-000000068LR-3tVH;
	Thu, 26 Mar 2026 19:42:42 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5qbI-000000068KN-0CDl
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Mar 2026 19:42:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6A40D444A6
	for <linux-rockchip@lists.infradead.org>; Thu, 26 Mar 2026 19:42:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 408CBC4AF0C
	for <linux-rockchip@lists.infradead.org>; Thu, 26 Mar 2026 19:42:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774554159;
	bh=Y2ZHozORnLfqvKi2dwhQTPb5sPuBtjKNxVIRQIiOzsg=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=ZLbLVLgvUsqHZKVA1+e3imKCmqIoVEkun5ZRNqM7lbL1EeK45BJ63eP/YP64X0gBA
	 0fbGQKnS/h8sMuT0HSsszhRY3fO/xwDo3yGNxd9wqqBupGAqjPDOYWM4JO+5VkKrY2
	 rbk7a+2hjn6RrquDffH43lFRwFN+wS56GYGSqgLM9PzRj1BvplJw5gUEj2llY8NyrT
	 QhIOGjjRGTOB1FcuuZRqvmv0/4SOEbv+7hi834VtTaKeQx1nkElKWQE37ZwApuN/IR
	 t3ah8M72NV4upm4AJ95KO7OtNI8Myy1O1sklmXIbTZ3v81aHnBEFNjZpS+RaV2DStW
	 3g8GOFo1OspQw==
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-661d20c9787so1921740a12.0
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Mar 2026 12:42:39 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVtqbgoSluVAHeK+j3UBUEhmjfCi7al1+dI0LuTDNBmNwWyfanUCt3ltFJyeCBQ7Bbc3DZXD0jBsI6GsTuTaQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz2yiS6YKNVqEKbMawGzhlfiWJN6+IGYo58S7nhN1SqgWmpGLma
	uYHM86EFXtolvOBCjbKwsFt4GZLY11yrx/z4RXh7r/GMMVVq5/AkiHwrdD07hyw82prKLJ5Lc7t
	H8FmWzBgroh8imlmHmWQf8vIZDraBHw==
X-Received: by 2002:a17:907:3c96:b0:b98:49d:7e37 with SMTP id
 a640c23a62f3a-b9a5427e5a8mr665511866b.44.1774554157684; Thu, 26 Mar 2026
 12:42:37 -0700 (PDT)
MIME-Version: 1.0
References: <20260305-rk3588-csi2rx-v3-0-754473981f39@collabora.com>
 <20260305-rk3588-csi2rx-v3-1-754473981f39@collabora.com> <20260325210634.GA3963190-robh@kernel.org>
 <703bcf13-ab45-4e9a-b80c-80911d85d819@collabora.com>
In-Reply-To: <703bcf13-ab45-4e9a-b80c-80911d85d819@collabora.com>
From: Rob Herring <robh@kernel.org>
Date: Thu, 26 Mar 2026 14:42:26 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLy4=z24-RrJWLp3hPpTwYLJ8=ehRw8cRdhZiW-eAsYCA@mail.gmail.com>
X-Gm-Features: AQROBzAHITEw9UIh2Vq6i4lzrBpyx12hq94f54-wyHg8H8rls8eAXLegvhqv8Gk
Message-ID: <CAL_JsqLy4=z24-RrJWLp3hPpTwYLJ8=ehRw8cRdhZiW-eAsYCA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] media: dt-bindings: rockchip,rk3568-mipi-csi2: add
 rk3588 compatible
To: Michael Riesch <michael.riesch@collabora.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Frank Li <Frank.li@nxp.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>, 
	Collabora Kernel Team <kernel@collabora.com>, linux-media@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260326_124240_116645_57E1ACD5 
X-CRM114-Status: GOOD (  22.09  )
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

T24gV2VkLCBNYXIgMjUsIDIwMjYgYXQgNDozNOKAr1BNIE1pY2hhZWwgUmllc2NoCjxtaWNoYWVs
LnJpZXNjaEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPgo+IEhpIFJvYiwKPgo+IE9uIDMvMjUvMjYg
MjI6MDYsIFJvYiBIZXJyaW5nIHdyb3RlOgo+ID4gT24gV2VkLCBNYXIgMjUsIDIwMjYgYXQgMTE6
MjU6MzRBTSArMDEwMCwgTWljaGFlbCBSaWVzY2ggd3JvdGU6Cj4gPj4gVGhlIFJLMzU4OCBNSVBJ
IENTSS0yIHJlY2VpdmVycyBhcmUgY29tcGF0aWJsZSB0byB0aGUgb25lcyBmb3VuZCBpbgo+ID4+
IHRoZSBSSzM1NjguCj4gPj4gSW50cm9kdWNlIGEgbGlzdCBvZiBjb21wYXRpYmxlIHZhcmlhbnRz
IGFuZCBhZGQgdGhlIFJLMzU4OCB2YXJpYW50IHRvCj4gPj4gaXQuCj4gPj4KPiA+PiBBY2tlZC1i
eTogUm9iIEhlcnJpbmcgKEFybSkgPHJvYmhAa2VybmVsLm9yZz4KPgo+IEZpcnN0IG9mIGFsbCwg
YXBvbG9naWVzIGZvciBhcHBseWluZyB5b3VyIEFja2VkLWJ5IHRhZy4gSSBmaWd1cmVkCj4gcmVz
b2x2aW5nIHRoZSBtZXJnZWQgY29uZmxpY3Qgd2FzIHRyaXZpYWwgYW5kIGltcG9zc2libGUgdG8g
c2NyZXcgdXAsIGJ1dC4uLgoKTm8gd29ycmllcy4gSSB3b3VsZCBoYXZlIGtlcHQgaXQgdG9vLgoK
PiA+PiBTaWduZWQtb2ZmLWJ5OiBNaWNoYWVsIFJpZXNjaCA8bWljaGFlbC5yaWVzY2hAY29sbGFi
b3JhLmNvbT4KPiA+PiAtLS0KPiA+PiAgLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9j
a2NoaXAscmszNTY4LW1pcGktY3NpMi55YW1sICAgfCAxMCArKysrKysrLS0tCj4gPj4gIDEgZmls
ZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gPj4KPiA+PiBkaWZm
IC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3JvY2tjaGlw
LHJrMzU2OC1taXBpLWNzaTIueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9tZWRpYS9yb2NrY2hpcCxyazM1NjgtbWlwaS1jc2kyLnlhbWwKPiA+PiBpbmRleCA0YWM0YTNi
NmY0MDYuLjNkM2IzY2Q3ODg4NCAxMDA2NDQKPiA+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvbWVkaWEvcm9ja2NoaXAscmszNTY4LW1pcGktY3NpMi55YW1sCj4gPj4g
KysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21lZGlhL3JvY2tjaGlwLHJr
MzU2OC1taXBpLWNzaTIueWFtbAo+ID4+IEBAIC0xNiw5ICsxNiwxMyBAQCBkZXNjcmlwdGlvbjoK
PiA+Pgo+ID4+ICBwcm9wZXJ0aWVzOgo+ID4+ICAgIGNvbXBhdGlibGU6Cj4gPj4gLSAgICBlbnVt
Ogo+ID4+IC0gICAgICAtIGZzbCxpbXg5My1taXBpLWNzaTIKPiA+PiAtICAgICAgLSByb2NrY2hp
cCxyazM1NjgtbWlwaS1jc2kyCj4gPj4gKyAgICBvbmVPZjoKPiA+PiArICAgICAgLSBjb25zdDog
ZnNsLGlteDkzLW1pcGktY3NpMgo+ID4+ICsgICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazM1Njgt
bWlwaS1jc2kyCj4gPgo+ID4gVGhlc2UgMiBzaG91bGQgYmUgYSBzaW5nbGUgZW51bSBhcyB0aGV5
IHdlcmUgYmVmb3JlLgo+Cj4gLi4uIGhtLiBXZWxsLgo+Cj4gRmlyc3QsIGRvIHlvdSBtZWFuCj4K
PiBwcm9wZXJ0aWVzOgo+ICAgY29tcGF0aWJsZToKPiAgICAgb25lT2Y6Cj4gICAgICAgLSBlbnVt
Ogo+ICAgICAgICAgIC0gZnNsLGlteDkzLW1pcGktY3NpMgo+ICAgICAgICAgIC0gcm9ja2NoaXAs
cmszNTY4LW1pcGktY3NpMgo+ICAgICAgIC0gaXRlbXM6Cj4gICAgICAgICAgLSBlbnVtOgo+ICAg
ICAgICAgICAgIC0gcm9ja2NoaXAscmszNTg4LW1pcGktY3NpMgo+ICAgICAgICAgIC0gY29uc3Q6
IHJvY2tjaGlwLHJrMzU2OC1taXBpLWNzaTIKPiA/CgpZZXMuCgo+IElmIHNvLCB3aGF0IGlzIHRo
ZSBwcmFjdGljYWwgZGlmZmVyZW5jZT8KCkZpcnN0LCB0aGVuIHlvdSBhcmVuJ3QgY2hhbmdpbmcg
d2hhdCdzIGFscmVhZHkgdGhlcmUuIEZvciB2YWxpZGF0aW9uLAp0aGVyZSBpcyBubyBkaWZmZXJl
bmNlIG90aGVyIHRoYW4gZmFpbHVyZXMgd2l0aCAnb25lT2YnIGdpdmUgcG9vcgplcnJvciBtZXNz
YWdlcy4gSXQgd291bGRuJ3QgYmUgbXVjaCBiZXR0ZXIsIGp1c3Qgb25lIGxlc3Mgb25lT2YgZW50
cnkuCgpSb2IKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
