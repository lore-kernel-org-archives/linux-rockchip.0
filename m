Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0BF6C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Mar 2023 12:06:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g7pQfFVvufQDncPW4W1/PonV/GXTDqebVe1FfYZrIkA=; b=xP7v1cfxFoFwIE
	dkOwAQRRQfTxrSMVF4+0Lbb4K59sAPCP+MuoonT/6YgVAU42SOpjSDaU01uct/DMsVqG2Piqa8iW9
	tkl5dIl/ACMQqBhq2UAUPyL/YGTq+gQdZfAWP7FcmDX3WwPhV+0fNmZJiujO7g+oPefvgzbIpew4x
	eBS1zpAxmFtScmoFuVPkw6H2v6+R8Rl0Yk9kZpvaQzLDixQVDgyCtXDIwtkW9ASC0mdrudI8PUq4H
	AUCJXPSAPMal8HCkx7dl53MM2wjXpCaAbisn3HIQqoNQV7dr+jmEUJKk2BH3qTx3vbB+R/3IBJ7k8
	lgk1XrI7riG+uG5+cUKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pc3Pp-00A3z5-0y;
	Tue, 14 Mar 2023 12:06:05 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pc3Pm-00A3yE-17
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Mar 2023 12:06:04 +0000
Received: by mail-lf1-x132.google.com with SMTP id x17so3567826lfu.5
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Mar 2023 05:06:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=vanguardiasur-com-ar.20210112.gappssmtp.com; s=20210112; t=1678795559;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tiwpJTGyHZGzBTJ6bO/L3VPi9zr8P9+edvack9f3BcY=;
        b=oXKjUL3PN99TsGJfkkVW3ZjQMXxMvzk7uxSKoqFKjsZRbIj3gPJC7lry1kjKyok5ek
         TR+sxblfDrQzDAcRUYb8XyPFJSVm9ENzaV5W0OGfMx7MWAMtGjADzQvZKrVo7IhVHMZ8
         WssTu6DLR+8eHQ0fZGVx6FyaCm0p3fAZJ5gH+aSJVZAfGCNGvd29jsx5muLmJHhmQ1nd
         DfVFtURAFjzBsH8RJzM5QKnHG6Jd1N4+2Ld5tzwnmTvjFvss1snC7xRjc0qbwJfTi4ST
         KBJskFmfg0JxzFlm53ZCOjvBR8KHfDiXc2LYxTjwQ2Iwr1YNiwdUqAu+qXWHaZNhvgGu
         L7NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678795559;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tiwpJTGyHZGzBTJ6bO/L3VPi9zr8P9+edvack9f3BcY=;
        b=FeUYUC8J3FMEM3wAB5KOYuxogOzGGx4I/5ZS7bL7LyO4a2cBs6Hcuez2I+ffdbvQdg
         ZW/LLoiKpeCN5D4xeYot/7aRk6Zg/Taf3naclYwLuNI9FhUyoCpEjrnIanFGzbtPlw8T
         uzZax8+/n+nvnv9mS4pFxjCq5OQWtnNmdwp4iCsIP/+dAQFzRWqxCGJ1ACLem3Dy8nf6
         zAUZ1+hHuhZ2ZLuyPM1DP4SaDUDNwuJi+wYsMpxBCzoO0MF/FJsFCGu+KwAQf/hunDhM
         Y3FpHW3USuSLMmSZxdmk6RzkprpiwVLhWtakLjiTogJHvg+S0BBC6V51pr0k+EO41Xst
         iLfQ==
X-Gm-Message-State: AO0yUKUipOa9ibbO0vxTHAkWJsdDtMAQkEHnnDkYgKsQ6KGkdPRE8N3L
	24oFgUJLVsVewy+S4T0Y7MaxXYtHLZ3CgRWTdNHdQA==
X-Google-Smtp-Source: AK7set+xYCmAbdBdcQCNI7sIm82/tx9Sa1F3IEC5x1caHOueNOUHQCBW9vh55B4Cx5WeoEW5qFU+x10x7qPdCufrpck=
X-Received: by 2002:a05:6512:502:b0:4db:38ba:618d with SMTP id
 o2-20020a056512050200b004db38ba618dmr642772lfb.12.1678795559024; Tue, 14 Mar
 2023 05:05:59 -0700 (PDT)
MIME-Version: 1.0
References: <20230313154856.3691660-1-zyytlz.wz@163.com>
In-Reply-To: <20230313154856.3691660-1-zyytlz.wz@163.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Tue, 14 Mar 2023 09:05:47 -0300
Message-ID: <CAAEAJfAtwguO-EpbCLkdOBu96U9mD+mq4PxBLsLAVZLuhC6Mtw@mail.gmail.com>
Subject: Re: [PATCH v4] media: hantro: fix use after free bug in hantro_remove
 due to race condition
To: Zheng Wang <zyytlz.wz@163.com>
Cc: p.zabel@pengutronix.de, mchehab@kernel.org, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	hackerzheng666@gmail.com, 1395428693sheep@gmail.com, alex000young@gmail.com, 
	hverkuil@xs4all.nl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_050602_605544_BCD4BA87 
X-CRM114-Status: GOOD (  21.33  )
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

SGkgWmhlbmcsIEhhbnMsCgpPbiBNb24sIE1hciAxMywgMjAyMyBhdCAxMjo0OeKAr1BNIFpoZW5n
IFdhbmcgPHp5eXRsei53ekAxNjMuY29tPiB3cm90ZToKPgo+IEluIGhhbnRyb19wcm9iZSwgdnB1
LT53YXRjaGRvZ193b3JrIGlzIGJvdW5kIHdpdGgKPiBoYW50cm9fd2F0Y2hkb2cuIFRoZW4gaGFu
dHJvX2VuZF9wcmVwYXJlX3J1biBtYXkKPiBiZSBjYWxsZWQgdG8gc3RhcnQgdGhlIHdvcmsuCj4K
PiBJZiB3ZSBjbG9zZSB0aGUgZmlsZSBvciByZW1vdmUgdGhlIG1vZHVsZSB3aGljaCB3aWxsCj4g
Y2FsbCBoYW50cm9fcmVsZWFzZSBhbmQgaGFudHJvX3JlbW92ZSB0byBtYWtlIGNsZWFudXAsCj4g
dGhlcmUgbWF5IGJlIGFuIHVuZmluaXNoZWQgd29yay4gVGhlIHBvc3NpYmxlIHNlcXVlbmNlCj4g
aXMgYXMgZm9sbG93cywgd2hpY2ggd2lsbCBjYXVzZSBhIHR5cGljYWwgVUFGIGJ1Zy4KPgo+IFRo
ZSBzYW1lIHRoaW5nIHdpbGwgaGFwcGVuIGluIGhhbnRyb19yZWxlYXNlLCBhbmQgdXNlCj4gY3R4
IGFmdGVyIGZyZWVpbmcgaXQuCj4KPiBGaXggaXQgYnkgY2FuY2VsaW5nIHRoZSB3b3JrIGJlZm9y
ZSBjbGVhbnVwIGluIGhhbnRyb19yZWxlYXNlLgo+Cj4gQ1BVMCAgICAgICAgICAgICAgICAgIENQ
VTEKPgo+ICAgICAgICAgICAgICAgICAgICAgfGhhbnRyb193YXRjaGRvZwo+IGhhbnRyb19yZW1v
dmUgICAgIHwKPiAgIHY0bDJfbTJtX3JlbGVhc2UgIHwKPiAgICAga2ZyZWUobTJtX2Rldik7IHwK
PiAgICAgICAgICAgICAgICAgICAgIHwKPiAgICAgICAgICAgICAgICAgICAgIHwgdjRsMl9tMm1f
Z2V0X2N1cnJfcHJpdgo+ICAgICAgICAgICAgICAgICAgICAgfCAgIG0ybV9kZXYtPmN1cnJfY3R4
IC8vdXNlCj4KPiBTaWduZWQtb2ZmLWJ5OiBaaGVuZyBXYW5nIDx6eXl0bHoud3pAMTYzLmNvbT4K
PiBGaXhlczogOTMyYTkzMTdhYzQ5ICgibWVkaWE6IGhhbnRybzogQWRkIGhlbHBlcnMgdG8gcHJl
cGFyZS9maW5pc2ggYSBydW4iKQoKVGhhbmtzIGZvciB0aGUgcGF0Y2guCgpHaXZlIG1lIGEgZmV3
IGRheXMgdG8gdGFrZSBhIGNsb3NlciBsb29rLgoKVGhhbmtzLApFemVxdWllbAoKPiAtLS0KPiB2
NDoKPiAtIGFkZCBGaXhlcyBsYWJlbCB0byBoZWxwIHdpdGggdGhlIGZpeAo+Cj4gdjM6Cj4gLSB1
c2UgY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jIGluc3RlYWQgb2YgY2FuY2VsX2RlbGF5ZWRfd29y
ayBhbmQgYWRkIGl0IHRvCj4gaGFudHJvX3JlbGVhc2Ugc3VnZ2VzdGVkIGJ5IEhhbnMgVmVya3Vp
bAo+Cj4gdjI6Cj4gLSBtb3ZlIHRoZSBjYW5jZWwtd29yay1yZWxhdGVkIGNvZGUgdG8gaGFudHJv
X3JlbW92ZSBzdWdnZXN0ZWQgYnkgSGFucyBWZXJrdWlsCj4gLS0tCj4gIGRyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jIHwgMiArKwo+ICAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zlcmlz
aWxpY29uL2hhbnRyb19kcnYuYwo+IGluZGV4IGIwYWVlZGFlN2I2NS4uODZhNGMwZmE4YzdkIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Ry
di5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2
LmMKPiBAQCAtNTk3LDYgKzU5Nyw3IEBAIHN0YXRpYyBpbnQgaGFudHJvX3JlbGVhc2Uoc3RydWN0
IGZpbGUgKmZpbHApCj4gICAgICAgICBzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4ID0KPiAgICAgICAg
ICAgICAgICAgY29udGFpbmVyX29mKGZpbHAtPnByaXZhdGVfZGF0YSwgc3RydWN0IGhhbnRyb19j
dHgsIGZoKTsKPgo+ICsgICAgICAgY2FuY2VsX2RlbGF5ZWRfd29ya19zeW5jKCZjdHgtPmRldi0+
d2F0Y2hkb2dfd29yayk7Cj4gICAgICAgICAvKgo+ICAgICAgICAgICogTm8gbmVlZCBmb3IgZXh0
cmEgbG9ja2luZyBiZWNhdXNlIHRoaXMgd2FzIHRoZSBsYXN0IHJlZmVyZW5jZQo+ICAgICAgICAg
ICogdG8gdGhpcyBmaWxlLgo+IEBAIC0xMDk5LDYgKzExMDAsNyBAQCBzdGF0aWMgaW50IGhhbnRy
b19yZW1vdmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPgo+ICAgICAgICAgdjRsMl9p
bmZvKCZ2cHUtPnY0bDJfZGV2LCAiUmVtb3ZpbmcgJXNcbiIsIHBkZXYtPm5hbWUpOwo+Cj4gKyAg
ICAgICBjYW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJnZwdS0+d2F0Y2hkb2dfd29yayk7Cj4gICAg
ICAgICBtZWRpYV9kZXZpY2VfdW5yZWdpc3RlcigmdnB1LT5tZGV2KTsKPiAgICAgICAgIGhhbnRy
b19yZW1vdmVfZGVjX2Z1bmModnB1KTsKPiAgICAgICAgIGhhbnRyb19yZW1vdmVfZW5jX2Z1bmMo
dnB1KTsKPiAtLQo+IDIuMjUuMQo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
