Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5AB1D41D6F
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Nov 2024 08:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lEKZYiriI4zqvEo+Zg3l9cTM1nTzB7bpe6JNdFQRbNM=; b=kbNej1QlLcK1kR
	l9NnifC1aGvsNX07yobib7C8oRqO/lT1z15WrVN+osKZY3uIbmj99ik++KRLPazaiAhQOlfV+Okzc
	51OauHWlDzdoUbM+N8KmWOInE0l6klqLM/9+rQ7uX8wOlJ+u9Xe0sLI0kDwhWfBB0E6nX2EchQV8F
	Fka3+GbjBc9jBX/3SHeQFBeTalsaD4qQVhbNr/g3PV4AFE6fjHugCyJN4es2f0mlyZfLPaFyiSmkd
	vQ0bC8w0e3ZAljom1wJlz02/YDhm0CKd6aBUk0df/SdzmRKX0OCsFLPV3wlGVtS4GgxY3k10SIN3t
	+ozYCFJUlu55X1BQQ3RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAmbj-00000002hne-3lUz;
	Tue, 12 Nov 2024 08:50:43 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAmZP-00000002hKe-3d44
	for linux-rockchip@lists.infradead.org;
	Tue, 12 Nov 2024 08:48:21 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2ff3232ee75so19531781fa.0
        for <linux-rockchip@lists.infradead.org>; Tue, 12 Nov 2024 00:48:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1731401297; x=1732006097; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BS4Z+JVLC+cIyIjSTxJTy/XnT+AgYmNkxO0eQSRVvDQ=;
        b=vEt1a18PyuPDhonc/Sv6FP9Oi8/4VAi2BkpRAj3yJr3HYPGMb+qi8vSS/iFwTw8MIF
         YhBisDRiAxJXrQjpRNNodMl/ZNlIl7s8HTw5BRz5u0844jnyhqr7lrDRSyjp2RRvnTaG
         4LNcWdZVtJe3ODWf4RpSmAU2iqXED7/QWK2TemXG9EdjtCnSi55PyJLXtgo+xudd42NL
         GPI6RqR9W2rRubnqhSK4CM52VlLqA8Ovk65QS7Xoa+GKVsTi9skVTEwe8FtJNLSgASar
         iknmuQBJeFF8+atFVk81Wixe05O7XvEjOW/u7LbMV/tP5aXZvSYzGf/1MyesM8i8238T
         T/DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731401297; x=1732006097;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BS4Z+JVLC+cIyIjSTxJTy/XnT+AgYmNkxO0eQSRVvDQ=;
        b=SXwAjts4uWLsyB7Ti/A7zgwmtQkPxvFj58PiI1jBW0tx0i3sB16T3AGnjpKLHm4+yS
         ICbruxLa/8KWmAKt1Jc29vJTbpp6yA65VEtXQp44ksDFIsOuwpJoGuTAnY3xWb/wVoAq
         C33Uvwxg8542l9RgFflMIoWu+sBk+r+Pnv+hzV6q2H89X2Jg4kc5em8Zo5flrC7UrlD4
         LdDWnHbbTYFjokn5Crnyv8SWowTQg7XjwXwG3W9JintXlZAcXT7LaRJmQEIJ7ySy0Eyk
         sUyqQL3xDVTgM6mn8RGT9DYEhaWCbkXKEmtH21I3NcDrAEf/KNDDWWWL0ZAGJU36EYb9
         KqkA==
X-Forwarded-Encrypted: i=1; AJvYcCVamC1mVIzOUWj73Y9w5szhU9Z8uREWvhu/Ix8bVTvmdW2q+EJziHMIfPQSpEvDEJcf95+Pi3tqJzDrv31Phg==@lists.infradead.org
X-Gm-Message-State: AOJu0YwRQAvyE58PeSrujdG/UvetptzSA+iZJbRc9zMxMLosNt8X55hF
	SX5Q7fxuEkFscxTM/dklkNgJt7Rgh//rsmuTa2BvO43sFX49P26HJxz23Dm+cAJ4935yRd56GRi
	atZ3HrxGr9zojrkLHfFfRfWk2Bqv/J2mbitPyDjLyd6mioumC
X-Google-Smtp-Source: AGHT+IFwq/t+KDsbuV2QhWwuNI5bupx1wsWOMyqz9EMw/Cb8GOHaigP3+bypOiWYwPdWO9Dvex17+Yq5iUawyDu5Osg=
X-Received: by 2002:a2e:9a0a:0:b0:2fb:3e27:cbef with SMTP id
 38308e7fff4ca-2ff201bc2c9mr64900231fa.23.1731401297361; Tue, 12 Nov 2024
 00:48:17 -0800 (PST)
MIME-Version: 1.0
References: <20241112015408.3139996-1-ye.zhang@rock-chips.com> <20241112015408.3139996-5-ye.zhang@rock-chips.com>
In-Reply-To: <20241112015408.3139996-5-ye.zhang@rock-chips.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 12 Nov 2024 09:48:06 +0100
Message-ID: <CAMRc=MfTmpLSEUVTXSu8jf9tyTfQc=iG9NpovFem-qSDOCnagQ@mail.gmail.com>
Subject: Re: [PATCH v5 4/4] gpio: rockchip: Set input direction when request irq
To: Ye Zhang <ye.zhang@rock-chips.com>
Cc: linus.walleij@linaro.org, heiko@sntech.de, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, mika.westerberg@linux.intel.com, 
	andriy.shevchenko@linux.intel.com, tao.huang@rock-chips.com, 
	finley.xiao@rock-chips.com, tim.chen@rock-chips.com, 
	elaine.zhang@rock-chips.com, 
	Sebastian Reichel <sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_004819_931270_6DB00BFC 
X-CRM114-Status: GOOD (  16.42  )
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

T24gVHVlLCBOb3YgMTIsIDIwMjQgYXQgMjo1NOKAr0FNIFllIFpoYW5nIDx5ZS56aGFuZ0Byb2Nr
LWNoaXBzLmNvbT4gd3JvdGU6Cj4KPiBTaW5jZSB0aGUgR1BJTyBjYW4gb25seSBnZW5lcmF0ZSBp
bnRlcnJ1cHRzIHdoZW4gaXRzIGRpcmVjdGlvbiBpcyBzZXQgdG8KPiBpbnB1dCwgaXQgaXMgc2V0
IHRvIGlucHV0IGJlZm9yZSByZXF1ZXN0aW5nIHRoZSBpbnRlcnJ1cHQgcmVzb3VyY2VzLgo+Cj4g
U2lnbmVkLW9mZi1ieTogWWUgWmhhbmcgPHllLnpoYW5nQHJvY2stY2hpcHMuY29tPgo+IFJldmll
d2VkLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNv
bT4KPiAtLS0KPiAgZHJpdmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYyB8IDUgKysrKy0KPiAgMSBm
aWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3Bpby9ncGlvLXJvY2tjaGlwLmMgYi9kcml2ZXJzL2dwaW8vZ3Bpby1yb2Nr
Y2hpcC5jCj4gaW5kZXggYzA5MGNhYzY5NGJmLi5jZGZkZDU1MDFhMWUgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYwo+ICsrKyBiL2RyaXZlcnMvZ3Bpby9ncGlvLXJv
Y2tjaGlwLmMKPiBAQCAtNDc2LDggKzQ3NiwxMSBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2lycV9y
ZXFyZXMoc3RydWN0IGlycV9kYXRhICpkKQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgaXJxX2NoaXBf
Z2VuZXJpYyAqZ2MgPSBpcnFfZGF0YV9nZXRfaXJxX2NoaXBfZGF0YShkKTsKPiAgICAgICAgIHN0
cnVjdCByb2NrY2hpcF9waW5fYmFuayAqYmFuayA9IGdjLT5wcml2YXRlOwo+ICsgICAgICAgaXJx
X2h3X251bWJlcl90IGh3aXJxID0gaXJxZF90b19od2lycShkKTsKPgo+IC0gICAgICAgcmV0dXJu
IGdwaW9jaGlwX3JlcXJlc19pcnEoJmJhbmstPmdwaW9fY2hpcCwgZC0+aHdpcnEpOwo+ICsgICAg
ICAgcm9ja2NoaXBfZ3Bpb19kaXJlY3Rpb25faW5wdXQoJmJhbmstPmdwaW9fY2hpcCwgaHdpcnEp
Owo+ICsKPiArICAgICAgIHJldHVybiBncGlvY2hpcF9yZXFyZXNfaXJxKCZiYW5rLT5ncGlvX2No
aXAsIGh3aXJxKTsKPiAgfQo+Cj4gIHN0YXRpYyB2b2lkIHJvY2tjaGlwX2lycV9yZWxyZXMoc3Ry
dWN0IGlycV9kYXRhICpkKQo+IC0tCj4gMi4zNC4xCj4KClRoaXMgbG9va3MgbGlrZSBhIGZpeCB0
byBtZSwgZG8geW91IHdhbnQgaXQgc2VudCBmb3Igc3RhYmxlPyBJZiBzbywKcGxlYXNlIGFkZCB0
aGUgRml4ZXMgdGFnIGFuZCBwdXQgaXQgZmlyc3QgaW4gdGhlIHNlcmllcy4KCkJhcnQKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
