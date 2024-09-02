Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6706FCA0ED3
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Sep 2024 10:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BSY+BhYRW6cDMRULX+Qg/kSuNy7LDg6OSCDAegH0D30=; b=azOEHMGPhbKo0B
	Oh0JNQ0/JiCM/mQ53KTqy1VWEMoCsBbK5ncBC+Xnxc7pruOh9hinvHuI+R4+Pp8TbyDE9ALdr+tR1
	8wXhnyvvdyRIU9E8PNSNJuiOz2n/zKqxv0hfJZG0/96QF6B7eBmcaf5bOwps+0pX2HkA7nunKkE1B
	ZzIzS+IofuA8xIjEVX8uCLgBjdZjOxcrKlUrcCDeJtmPXtGykO9cDkTctw8jjhj5c0dn9emLfBXsr
	buGe28A2SHARk9+rS19ttW2+R9oZpQnjoWxOKfhaKKhYUnjWJ3z4g2ixbHooNKOJ5yzEaleiY/sUU
	yFOInrhC3WFN9GLa195g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl4I4-0000000DuQB-3ezp;
	Mon, 02 Sep 2024 10:28:08 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sl4Dp-0000000DtTZ-2OVp
	for linux-rockchip@lists.infradead.org;
	Mon, 02 Sep 2024 10:23:49 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-5334adf7249so5253826e87.3
        for <linux-rockchip@lists.infradead.org>; Mon, 02 Sep 2024 03:23:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1725272624; x=1725877424; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mDD+TxaL8OzI4Gtek8H/QCUJmX/MpPhe6xEdoZdcnLM=;
        b=v34VZG847USfkP1JSBbij78foAUIMkm9tr/kF1V71q9iPYOL/XTOwIvOqYTSqK8j3a
         TSzZWG2IYvTRisfvzHsWgHHocR/zzMhSqc9odMTo6DokH1hu6n2JIli5cumgx+IRNSwl
         mX+BgTsNY2xbbazc/w6ZNc9JMM5r+L4ijmIUPRSTvef5QJrC0ySBDGGSxeyr52erZFMW
         wj2EiECHjHFPeS7N9ZkNMqkAWLz623vngyCDlSuahSUPlkRVoZdsUUcQfB/7zMHnZT++
         tprzI/4bA3AzENGD6Z161w+OimAUfrujKCATC1ZokmMvipVuVgKQDVlhbmWQyaiI4Jjh
         XtHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725272624; x=1725877424;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mDD+TxaL8OzI4Gtek8H/QCUJmX/MpPhe6xEdoZdcnLM=;
        b=eiuFdxIByI4ROsUYvY8tWRac/z8MJlt/gMb47oq1ocWcNw0HrfN4LxHmnckB7BsVc3
         sK230wdY/hBIYv35+0L91zgiFbDmBY7Hts4TYhU6GK7qa+wgrBz0oNY4x+JOjChgbMmc
         2vU6ux6OX3ym1PIR15hh/UByaZnCslyz4QQL5wOF2ik9DDyeXuFx8L51eHk4s2Y/tjgS
         d6QzIc7dMsTmwVpAbLAk7IV6hHoG71Yxe/8N+HeBxbJudPOQmjzBSYW6Qg4t/askZm4X
         mJfCEJE7PF2qVbkDcQWfaV01SuWOck1vRkfmcLWuuvUn1Z1o+ILpuVrrLlmMEYu4ZgvY
         +nIw==
X-Forwarded-Encrypted: i=1; AJvYcCUh6kfLZfon/EIBEPegOYX2HlCBtbnu5snoGquJ1SPb2TorXomQIXpvTfsCwn94KXcUx5FSqLChHWAIeoFeKw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyX6iy3YhC4c3f7uQEetu/T7E8VvQ5ekY7H9OfrpIBwz+hcrv5B
	MUZTyU/z+qWJmz8j8/qmTDsFzUIT1i4AoeiWesDd6FkwIeG6obDJdFHtu7NzyLMMdVGdbjxY/tp
	dpSegxTKAfXXAA8XJs/kTTSQ0b09qb1+69M/nzA==
X-Google-Smtp-Source: AGHT+IHIVwNggH5LxD0ZEJiqmV7/TbCJy0HDvDM1xWG+Bc0YfVA8LWZ9NHRHYFVkYMBCC3Xi+/HAVQJJJXZCSx66Bvk=
X-Received: by 2002:a05:6512:118a:b0:52c:e133:7b2e with SMTP id
 2adb3069b0e04-53546b4b08cmr8020045e87.35.1725272623132; Mon, 02 Sep 2024
 03:23:43 -0700 (PDT)
MIME-Version: 1.0
References: <20240826150832.65657-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240826150832.65657-1-krzysztof.kozlowski@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Mon, 2 Sep 2024 12:23:32 +0200
Message-ID: <CAMRc=MfzApzPVauqTm75PTGogRsW=cHH_zu_mCKnysvDTY8R7Q@mail.gmail.com>
Subject: Re: [PATCH] gpio: rockchip: fix OF node leak in probe()
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Jianqun Xu <jay.xu@rock-chips.com>, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240902_032348_448895_849C94E2 
X-CRM114-Status: GOOD (  16.00  )
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

T24gTW9uLCBBdWcgMjYsIDIwMjQgYXQgNTowOOKAr1BNIEtyenlzenRvZiBLb3psb3dza2kKPGty
enlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBEcml2ZXIgY29kZSBpcyBs
ZWFraW5nIE9GIG5vZGUgcmVmZXJlbmNlIGZyb20gb2ZfZ2V0X3BhcmVudCgpIGluCj4gcHJvYmUo
KS4KPgo+IEZpeGVzOiA5MzZlZTI2NzVlZWUgKCJncGlvL3JvY2tjaGlwOiBhZGQgZHJpdmVyIGZv
ciByb2NrY2hpcCBncGlvIikKPiBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxr
cnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvZ3Bpby9ncGlv
LXJvY2tjaGlwLmMgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncGlvL2dwaW8tcm9ja2NoaXAuYyBiL2RyaXZlcnMvZ3Bpby9n
cGlvLXJvY2tjaGlwLmMKPiBpbmRleCAwYmQzMzk4MTMxMTAuLjM2NWFiOTQ3OTgzYyAxMDA2NDQK
PiAtLS0gYS9kcml2ZXJzL2dwaW8vZ3Bpby1yb2NrY2hpcC5jCj4gKysrIGIvZHJpdmVycy9ncGlv
L2dwaW8tcm9ja2NoaXAuYwo+IEBAIC03MTMsNiArNzEzLDcgQEAgc3RhdGljIGludCByb2NrY2hp
cF9ncGlvX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAgICAgICAgICAg
ICAgIHJldHVybiAtRU5PREVWOwo+Cj4gICAgICAgICBwY3RsZGV2ID0gb2ZfcGluY3RybF9nZXQo
cGN0bG5wKTsKPiArICAgICAgIG9mX25vZGVfcHV0KHBjdGxucCk7Cj4gICAgICAgICBpZiAoIXBj
dGxkZXYpCj4gICAgICAgICAgICAgICAgIHJldHVybiAtRVBST0JFX0RFRkVSOwo+Cj4gLS0KPiAy
LjQzLjAKPgoKSG93IGFib3V0IHVzaW5nIF9fZnJlZShkZXZpY2Vfbm9kZSk/CgpCYXJ0CgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
