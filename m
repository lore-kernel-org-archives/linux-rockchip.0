Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50008C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 13 Apr 2022 23:14:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Ie65nUplO7i2WDD0zgpaJNfSwUFGEsAvJwIAf+mJZw=; b=n7pLwPZ+i4Hqbk
	ItAMq0e0Uw+k9IGcj3LCgda6BHCPFr4EHwu6oMfD0ytKuAh+GcEH0q1k4K4AVtwRkSCGMWY1j79nJ
	rvHqMei4cGvgM0yxK5QxQAPHOkDiZ/hWJ3lld444Mauo2uipRND3HOg3/kPTV7Uf2eOQxExOMwcGi
	hdXWhB/qaCE026j+mAwXeA1LS5d878d9Iopu6pMwAVQFxCamhzcf3aT4KvTSeSAeWUGduG45I7vMR
	j1/F3fmnE/cB8c+LMGsf4QNNnqBADhzLJKBlJhHU44wMkvnHGn0V9nux09ZG03GhADUd1Pk/Lyb5K
	MktMeAQuXR115dag+nZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nemBX-00345j-39; Wed, 13 Apr 2022 23:14:03 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nemBL-003435-Tj; Wed, 13 Apr 2022 23:13:53 +0000
Received: by mail-pl1-x62b.google.com with SMTP id j8so3198559pll.11;
 Wed, 13 Apr 2022 16:13:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=kWx4kuwqUqPCRq2vnSKBnzzGe5+yrJ0mzhBM9ESQvds=;
 b=qeL5sRdil4P1oO5GVdWOovYd5WwhZ+goHVTepE0Eqx/2H3qtJzKKTZme7lHRmfMW/Q
 UusYhPDToq1dlNCFX8A9sW01Msnfd9JI0Axlv/rpnJwGFbql8jlkG16n20SNYZibbMmf
 KblnmUVPv9/hZYcIvZBX2Z9i1qihzmpRwSXFAz+/HYaDnQTssahfnqAqfZ7q9GNCl8uE
 /EN8TPoSBiExnWrCOEz5J8JbqGQelRQfGt5SnbEq2M2taNxqnPYkpRdofeyX8rLhcjVM
 zfXPq+yombU5+XcGUgb+sfqT+BrjpdfEcVqtoNIzR4RpcpOEfvNYqwUQonWNnZF3Ze3t
 6ZAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=kWx4kuwqUqPCRq2vnSKBnzzGe5+yrJ0mzhBM9ESQvds=;
 b=HfYU3TjZCBUOIrbjzsmQ0mHo7hQe9hmK+yigJgTuN1nJcPmHqCtOHZhxqNF2dXO8Md
 xNn4r0Ck1+I0k/DVZvvR0P9XCEOYK/jQiod+a8Sq3rTnbIDuuRho1BMN4e0uv+v6IWvn
 lywiraatPnonDTPvcZ+Wxl/YfTZJihO6NtOH6fly8UTwtNu0Z5sILSbD+9dbXdBsca/T
 Y5kDG6QK4odRSsYX5c8/iXdIfxpj/kr6r7mDtCEjTMBivuAPsk/6690Y7t6/AAPVKzXf
 dGn8B7gfKXCSBs05ss0FAJsqsfIxfRTIkHhE8MqGXrZNJYJnbCcGgqx8MoV+zNodzAWx
 6Fig==
X-Gm-Message-State: AOAM530f1WMc9ZiGfvej+7bzG38YUHePbPSWZbRyvsVAfzL/KqKC8hqx
 WN5TGYfKPnguRUfkgKk0ej0=
X-Google-Smtp-Source: ABdhPJxzBPi73YEPEQiMGVA1+E5/vikRotNKxeILYirYP1w1ewhUibYQFMdWYGiJqtjeKoaKay7pEg==
X-Received: by 2002:a17:90b:4a41:b0:1c7:a0d7:718c with SMTP id
 lb1-20020a17090b4a4100b001c7a0d7718cmr1120180pjb.57.1649891617074; 
 Wed, 13 Apr 2022 16:13:37 -0700 (PDT)
Received: from [172.30.1.44] ([14.32.163.5]) by smtp.gmail.com with ESMTPSA id
 e15-20020a63ae4f000000b003995a4ce0aasm166419pgp.22.2022.04.13.16.13.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 13 Apr 2022 16:13:36 -0700 (PDT)
Message-ID: <582e3645-b24e-356e-7f0f-0d37bb1e32e6@gmail.com>
Date: Thu, 14 Apr 2022 08:13:32 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [RFC PATCH 2/2] PM / devfreq: rk3399_dmc: Block PMU during
 transitions
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Brian Norris <briannorris@chromium.org>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: linux-kernel@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>,
 linux-pm@vger.kernel.org, Doug Anderson <dianders@chromium.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20220406014842.2771799-1-briannorris@chromium.org>
 <20220405184816.RFC.2.I2d73b403944f0b8b5871a77585b73f31ccc62999@changeid>
 <8824147c-5512-a7a5-9e89-60b510111500@gmail.com> <3484357.R56niFO833@diego>
From: Chanwoo Choi <cwchoi00@gmail.com>
In-Reply-To: <3484357.R56niFO833@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220413_161351_987493_0BF26699 
X-CRM114-Status: GOOD (  15.53  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjIuIDQuIDE0LiAwNzo0NSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gSGksCj4gCj4gQW0g
RG9ubmVyc3RhZywgMTQuIEFwcmlsIDIwMjIsIDAwOjE0OjQwIENFU1Qgc2NocmllYiBDaGFud29v
IENob2k6Cj4+IE9uIDIyLiA0LiA2LiAxMDo0OCwgQnJpYW4gTm9ycmlzIHdyb3RlOgo+Pj4gU2Vl
IHRoZSBwcmV2aW91cyBwYXRjaCAoInNvYzogcm9ja2NoaXA6IHBvd2VyLWRvbWFpbjogTWFuYWdl
IHJlc291cmNlCj4+PiBjb25mbGljdHMgd2l0aCBmaXJtd2FyZSIpIGZvciBhIHRob3JvdWdoIGV4
cGxhbmF0aW9uIG9mIHRoZSBjb25mbGljdHMuCj4+PiBXaGlsZSBBUk0gVHJ1c3RlZCBGaXJtd2Fy
ZSBtYXkgYmUgbW9kaWZ5aW5nIG1lbW9yeSBjb250cm9sbGVyIGFuZAo+Pj4gcG93ZXItZG9tYWlu
IHN0YXRlcywgd2UgbmVlZCB0byBibG9jayB0aGUga2VybmVsJ3MgcG93ZXItZG9tYWluIGRyaXZl
ci4KPj4+Cj4+PiBJZiB0aGUgcG93ZXItZG9tYWluIGRyaXZlciBpcyBkaXNhYmxlZCwgdGhlcmUg
aXMgbm8gcmVzb3VyY2UgY29uZmxpY3QKPj4+IGFuZCB0aGlzIGJlY29tZXMgYSBuby1vcC4KPj4+
Cj4+PiBTaWduZWQtb2ZmLWJ5OiBCcmlhbiBOb3JyaXMgPGJyaWFubm9ycmlzQGNocm9taXVtLm9y
Zz4KPj4+IC0tLQo+Pj4KPj4+ICAgIGRyaXZlcnMvZGV2ZnJlcS9yazMzOTlfZG1jLmMgfCAxMyAr
KysrKysrKysrKysrCj4+PiAgICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9ucygrKQo+Pj4K
Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RldmZyZXEvcmszMzk5X2RtYy5jIGIvZHJpdmVycy9k
ZXZmcmVxL3JrMzM5OV9kbWMuYwo+Pj4gaW5kZXggZTQ5NGQxNDk3ZDYwLi5kYWZmNDA3MDI2MTUg
MTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2RldmZyZXEvcmszMzk5X2RtYy5jCj4+PiArKysgYi9k
cml2ZXJzL2RldmZyZXEvcmszMzk5X2RtYy5jCj4+PiBAQCAtMjEsNiArMjEsNyBAQAo+Pj4gICAg
I2luY2x1ZGUgPGxpbnV4L3J3c2VtLmg+Cj4+PiAgICAjaW5jbHVkZSA8bGludXgvc3VzcGVuZC5o
Pgo+Pj4gICAgCj4+PiArI2luY2x1ZGUgPHNvYy9yb2NrY2hpcC9wbV9kb21haW5zLmg+Cj4+PiAg
ICAjaW5jbHVkZSA8c29jL3JvY2tjaGlwL3JrMzM5OV9ncmYuaD4KPj4+ICAgICNpbmNsdWRlIDxz
b2Mvcm9ja2NoaXAvcm9ja2NoaXBfc2lwLmg+Cj4+PiAgICAKPj4+IEBAIC05Myw2ICs5NCwxNiBA
QCBzdGF0aWMgaW50IHJrMzM5OV9kbWNmcmVxX3RhcmdldChzdHJ1Y3QgZGV2aWNlICpkZXYsIHVu
c2lnbmVkIGxvbmcgKmZyZXEsCj4+PiAgICAKPj4+ICAgIAltdXRleF9sb2NrKCZkbWNmcmVxLT5s
b2NrKTsKPj4+ICAgIAo+Pj4gKwkvKgo+Pj4gKwkgKiBFbnN1cmUgcG93ZXItZG9tYWluIHRyYW5z
aXRpb25zIGRvbid0IGludGVyZmVyZSB3aXRoIEFSTSBUcnVzdGVkCj4+PiArCSAqIEZpcm13YXJl
IHBvd2VyLWRvbWFpbiBpZGxpbmcuCj4+PiArCSAqLwo+Pj4gKwllcnIgPSByb2NrY2hpcF9wbXVf
YmxvY2soKTsKPj4+ICsJaWYgKGVycikgewo+Pj4gKwkJZGV2X2VycihkZXYsICJGYWlsZWQgdG8g
YmxvY2sgUE1VOiAlZFxuIiwgZXJyKTsKPj4+ICsJCWdvdG8gb3V0X3VubG9jazsKPj4+ICsJfQo+
Pj4gKwo+Pj4gICAgCS8qCj4+PiAgICAJICogU29tZSBpZGxlIHBhcmFtZXRlcnMgbWF5IGJlIGJh
c2VkIG9uIHRoZSBERFIgY29udHJvbGxlciBjbG9jaywgd2hpY2gKPj4+ICAgIAkgKiBpcyBoYWxm
IG9mIHRoZSBERFIgZnJlcXVlbmN5Lgo+Pj4gQEAgLTE5OCw2ICsyMDksOCBAQCBzdGF0aWMgaW50
IHJrMzM5OV9kbWNmcmVxX3RhcmdldChzdHJ1Y3QgZGV2aWNlICpkZXYsIHVuc2lnbmVkIGxvbmcg
KmZyZXEsCj4+PiAgICAJZG1jZnJlcS0+dm9sdCA9IHRhcmdldF92b2x0Owo+Pj4gICAgCj4+PiAg
ICBvdXQ6Cj4+PiArCXJvY2tjaGlwX3BtdV91bmJsb2NrKCk7Cj4+PiArb3V0X3VubG9jazoKPj4+
ICAgIAltdXRleF91bmxvY2soJmRtY2ZyZXEtPmxvY2spOwo+Pj4gICAgCXJldHVybiBlcnI7Cj4+
PiAgICB9Cj4+Cj4+IEFja2VkLWJ5OiBDaGFud29vIENob2kgPGN3MDAuY2hvaUBzYW1zdW5nLmNv
bT4KPiAKPiBzbyBJIGd1ZXNzIHlvdSdyZSBvayB3aXRoIG1lIHBpY2tpbmcgdXAgYm90aCBwYXRj
aGVzLCByaWdodD8KPiBbSnVzdCBtYWtpbmcgc3VyZSA6LSkgXQoKVGhpcyBwYXRjaCBoYXZlIHRo
ZSBkZXBlbmRlbmN5IG9mIGxhdGVzdCBkZXZmcmVxLW5leHQgYnJhbmNoLgpTbyB0aGF0IG5lZWQg
dG8gbWFrZSB0aGUgaW1tdXRhYmxlIGJyYW5jaCBiZXR3ZWVuIHJvY2tjaGlwIGFuZCBkZXZmcmVx
LgoKLS0gCkJlc3QgUmVnYXJkcywKU2Ftc3VuZyBFbGVjdHJvbmljcwpDaGFud29vIENob2kKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
