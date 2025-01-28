Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B940C0218A
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jan 2025 10:30:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RfXkt/44uh20LJr8vrBMQDQAaqkvx1T3HkLGYbLSrvM=; b=ZsAxhH96HGsCTa
	AVNXqC0TIECULqMHUwQfa3XhBkXAzz3k0umRBx0pkt5/KUjxBLLaMsxmTEs4dW+DMfPIVwNO0PXxe
	QwernwtV8neNUGLjFoy5N10Bif+YgtVu551c+S6WsVaDP1DmohK0PO4xm2Vf17nH2o4zA9NOLpIlH
	30lcyxpmMgvDUCMUZVWnvb4I68/oPbn4XnQB5/90ij1VoolM9UDY2FQHuvExm90UQNfuvWrfzKJ/b
	ANlruD6Z3LvRMqZfaJvk1mYCVBxPbMd9T6QYgB5Xloq8iVXrPobfdYuSoJ8rPpv+jsKan5MS5vnb4
	3Tordw8vW8lz14Bo+JAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tcirL-00000004eIC-0eh5;
	Tue, 28 Jan 2025 10:30:19 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tcirI-00000004eHH-1qDk;
	Tue, 28 Jan 2025 10:30:17 +0000
Received: by mail-qt1-x82e.google.com with SMTP id d75a77b69052e-46b1d40abbdso50867491cf.2;
        Tue, 28 Jan 2025 02:30:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738060215; x=1738665015; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2veFNGdTL1atZAhB2vrZxwxXadzUoQya1iQSnNw0RO8=;
        b=nV3xRUnYeVn7ukC/8NTitjcZs65HcK0u38f4QFjQce2+CmNmh2Yp5wL9KfJNhFr3Nu
         he7j9s52btis/yIIZ9rUrsVJSEIgtdZNx1+HTZJm6O2wtNqDIlV0+LcIXh/NAC5YC6tk
         GckG2EdoxykxTDueBNC201blKgle9y+Ug1k2cRUY1PBr7A6MWUE60KKtzA2GOqc2RDnq
         X2F9sa9j4kmPQWnfPij6Yqnkrp59TfSXDlNJT1+UMhZ+RkwPZ+Sa50DNo0g2wDZ1CI2J
         Fa0kv/m/gZ79+kfLomWd14UDCfMQm9y7lFyrmhECnW55gSRTpNB9IRKcAkoqWHkWR840
         j/0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738060215; x=1738665015;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2veFNGdTL1atZAhB2vrZxwxXadzUoQya1iQSnNw0RO8=;
        b=FBfU/ODpO4RoVoh1m4mrY3d2kDC8wcVpBZTfTlRmyYelHZ294yf1Wn9jsgnwsB0c9e
         N/JKqB4KWPjbmfnrAUkNXtZoG89EkfR6xWczTVdP/uyyRnSJhTu7R3PuPixkCYnkqNbt
         07UbnTRpSz54+FOIrvooYZacfqchRHln9ciWvjvHdvrssx+eEyiJWg0NLMBSmdCW9DKR
         tYUzDBv9znG4IU4MdhEFYZ15BWfzmlx23jkaZeLNQnjeYX7GRpVdkFs+ff0nWPb//Gry
         G61o0WnlbXS3b2Uo3OZ2ess+QGvGtLR7aDjsY5/SgulxYoB50PAElXAX6m0Dbhtcd0FP
         kLqw==
X-Forwarded-Encrypted: i=1; AJvYcCULl/ou/C6BAxkDrPhkUEZ9ubHAVwcYkNNr8j9CKl9EZszpMGH9izBfEIi2RDcND5kWF2REei/Reoy/KA9Pe/ht@lists.infradead.org, AJvYcCWO8LrW8Fo2luBG0zVMFD0NAnri4ZhaAjhJG+s6clxjlkz3t9M9FDmFMM/xk460Yt9tvqz9HTvxplBUyClN8og=@lists.infradead.org
X-Gm-Message-State: AOJu0YzEOi7FSI5wCDYv/8LJZh6fWwMYL6MsPSK8LZhrdyK+cxQr5zTC
	Q67b5vv9dmn3lWagL2nWh0wNDoynhrAJtQ/2aaP0ix0pV6y+vHSrjb8zENlB3wP5og9YyUe/fXY
	YKEIIGI9nSxwLvzgT6fcG2tVUp3U=
X-Gm-Gg: ASbGncuL54k//X7nYwlPWBs8T3+v02lbNdjvB7cxxbz5lzAU5oT6Waip2yX1p+BAhYp
	vt2Y+EplH3ceHbQN4GfiOuSzNo8l5P0ADDwgbzVmr+ncIO4wjeyEwrYRJPW3nt8WFcn3ldVe/
X-Google-Smtp-Source: AGHT+IFptAPSbmWwcq0EvSGs9/WQk9gEFjx4eFpUlVUg+jaJrVO+3/mHFzqrzQpEkuhDpBlIt/Oq38oTIAXUASFu73U=
X-Received: by 2002:a05:622a:2d5:b0:467:87df:851a with SMTP id
 d75a77b69052e-46e12a56380mr637928261cf.12.1738060214750; Tue, 28 Jan 2025
 02:30:14 -0800 (PST)
MIME-Version: 1.0
References: <20250124052611.3705-1-eagle.alexander923@gmail.com>
 <CABjd4YwA8P9LVuDviO6xydkHpuuOY7XT0pk1oa+FDqOo=uZN4A@mail.gmail.com>
 <a76f315f023a3f8f5435e0681119b4eb@manjaro.org> <CABjd4Ywh_AkbXHonx-8vL-hNY5LMLJge5e4oqxvUG+qe6OF-Og@mail.gmail.com>
 <61b494b209d7360d0f36adbf6d5443a4@manjaro.org> <CABjd4Yx0p0B=e00MjCpDDq8Z=0FtM0s9EN86WdvRimt-_+kh2w@mail.gmail.com>
 <CABjd4Yy14bpjzvFyc8et-=pmds5uwzfxNqcs7L=+XRXBogZEsQ@mail.gmail.com>
 <CAP1tNvTRER=QzC29Udw4ffOetVECWV+MfZ2o-mbUFvuZ0_i-Kw@mail.gmail.com> <b57d8a834f5c07e37e0e7ee74346c700@manjaro.org>
In-Reply-To: <b57d8a834f5c07e37e0e7ee74346c700@manjaro.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Tue, 28 Jan 2025 14:30:03 +0400
X-Gm-Features: AWEUYZkFoDxmRPVn24plApRoTji5kgp1WG-euAKTrUa39_3kburtp9GexnHZUNs
Message-ID: <CABjd4YwCH93-=Cqck5TiuJoTUkYbRh0495J6w=J8t93oHdt43g@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix broken tsadc pinctrl binding
 for rk3588
To: Dragan Simic <dsimic@manjaro.org>
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, stable@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250128_023016_481410_CF09094B 
X-CRM114-Status: GOOD (  21.74  )
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

T24gVHVlLCBKYW4gMjgsIDIwMjUgYXQgMToyNOKAr1BNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1h
bmphcm8ub3JnPiB3cm90ZToKPgo+IEhlbGxvIEFsZXhhbmRlciwKPgo+IE9uIDIwMjUtMDEtMjYg
MTU6MjUsIEFsZXhhbmRlciBTaGl5YW4gd3JvdGU6Cj4gPj4gPiA+IEkgdGhpbmsgaXQncyBhY3R1
YWxseSBiZXR0ZXIgdG8gYWNjZXB0IHRoZSBhcHByb2FjaCBpbiBBbGV4YW5kZXIncwo+ID4+ID4g
PiBwYXRjaCwgYmVjYXVzZSB0aGUgd2hvbGUgdGhpbmcgYXBwbGllcyB0byBvdGhlciBSb2NrY2hp
cCBTb0NzIGFzIHdlbGwsCj4gPj4gPiA+IG5vdCBqdXN0IHRvIHRoZSBSSzM1ODgoUykuCj4gPj4g
Pgo+ID4+ID4gQW55d2F5LCBJJ3ZlIGp1c3QgdHJpZWQgaXQgYWZ0ZXIgaW5jbHVkaW5nIHRoZSBj
aGFuZ2VzIGJlbG93LCBhbmQKPiA+PiA+IHdoaWxlIC9zeXMva2VybmVsL2RlYnVnL3BpbmN0cmwv
cGluY3RybC1oYW5kbGVzIHNob3dzIHRoZSBleHBlY3RlZAo+ID4+ID4gcGluY3RybHMgdW5kZXIg
dHNhZGMsIHRoZSBkcml2ZXIgc3RpbGwgZG9lc24ndCBzZWVtIHRvIGJlIHRyaWdnZXJpbmcgYQo+
ID4+ID4gUE1JQyByZXNldC4gV2VpcmQuIEFueSB0aG91Z2h0cyB3ZWxjb21lLgo+ID4+Cj4gPj4g
SSBmb3VuZCB0aGUgY3VscHJpdC4gIm90cG91dCIgKG9yICJkZWZhdWx0IiBpZiB3ZSBmb2xsb3cg
QWxleGFuZGVyJ3MKPiA+PiBzdWdnZXN0ZWQgYXBwcm9hY2gpIHBpbmN0cmwgc3RhdGUgc2hvdWxk
IHJlZmVyIHRvIHRoZSAmdHNhZGNfc2h1dF9vcmcKPiA+PiBjb25maWcgaW5zdGVhZCBvZiAmdHNh
ZGNfc2h1dCAtIHRoZW4gdGhlIFBNSUMgcmVzZXQgd29ya3MuCj4gPgo+ID4gR3JlYXQsIEknbGwg
dXNlIHRoaXMgaW4gdjIuCj4KPiBQbGVhc2UsIGxldCdzIHdhaXQgd2l0aCB0aGUgdjIgdW50aWwg
SSBnbyB0aHJvdWdoIHRoZSB3aG9sZSB0aGluZyBhZ2FpbgoKSSwgZm9yIG9uZSwgd291bGQgd2Vs
Y29tZSBhIHYyIHRoYXQgY291bGQgYmUgdGVzdGVkIGFuZCBjb25maXJtZWQKd29ya2luZyB3aXRo
IGFuZCB3aXRob3V0IGRyaXZlciBjaGFuZ2VzLiBFc3BlY2lhbGx5IGdpdmVuIHRoYXQ6CiAtIHRo
ZSBjaGFuZ2VzIGFyZSBwcmV0dHkgc21hbGwKIC0gaGFyZHdhcmUgZG9jcyBzYXkgbm90aGluZyBh
Ym91dCB0aGUgZGlmZmVyZW5jZSBiZXR3ZWVuIFRTQURDX1NIVVQKdnMuIFRTQURDX1NIVVRfT1JH
LCBleGNlcHQgdGhhdCBvbmUgaXMgY29uZmlnICMyIGFuZCB0aGUgb3RoZXIgaXMKY29uZmlnICMx
CiAtIG5vbmUgb2YgdGhlIHNvdXJjZSB0cmVlcyBJIGxvb2tlZCBhdCBzZWVtIHRvIGVuYWJsZSBQ
TUlDIGJhc2VkCnJlc2V0cyBvbiBhbnkgUkszNTg4LWJhc2VkIGJvYXJkcywgc28gdGhlc2UgcGlu
Y3RybCBjb25maWdzIGFwcGVhciB0bwpoYXZlIG5ldmVyIGJlZW4gdGVzdGVkIGluIHRoZSB3aWxk
IGZvciBSSzM1ODgqCgpTbyB0cnlpbmcgYW5kIHRlc3Rpbmcgc2VlbXMgdG8gYmUgdGhlIG9ubHkg
d2F5IHRvIHVuZGVyc3RhbmQgdGhlIGJlc3QKd2F5IGZvcndhcmQuIFVubGVzcywgb2YgY291cnNl
LCBzb21lb25lIGZyb20gUm9ja2NoaXAgY2FuIGNvbW1lbnQgb24KaG93IHRoZSBoYXJkd2FyZSB3
b3JrcyB3aXRoIFRTQURDX1NIVVQgdnMuIFRTQURDX1NIVVRfT1JHLgoKQmVzdCByZWdhcmRzLApB
bGV4ZXkKCj4gd2hpY2ggSSBleHBlY3RlZCB0byBoYXZlIGRvbmUgYWxyZWFkeSwgYnV0IGhhZCBz
b21lIG90aGVyICJJUkwgc3R1ZmYiCj4gdGhhdAo+IGludHJvZHVjZWQgYSBkZWxheS4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
