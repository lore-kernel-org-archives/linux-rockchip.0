Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28492C52D6F
	for <linux-rockchip@archiver.kernel.org>; Sat, 24 Aug 2024 14:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UwlEWiQbbMBfR6+aDSLj3Z1e6U2lnWraIRlwXBlfMiM=; b=zzbUP4wOglxG7K
	XBrqIBP2VArPlcdUxncy5mnFzxCyUhGAeoyI3jbT47lmbnLyJFHOBqxSLfQO89ZnBOKqmIwa/3UQL
	YanTgQl05JKwFtmQZFst0Se0WJDv5T1npn2sR5gY+NYxiBBQSI+TKDWdyjDUXIEGScJt4hwE665ad
	3EvczzMGbe7Q4973gAR9Z62bK8emzr9ZKyApNusjYLLL7VDaQMKP5RFtT03QhDuVvXcZoNDbPfyTu
	GpEgjwD0xB3we8BzA5ZBqP0ioszYKlfyWENpS86bol7C3oaH0Gg6ONNyJI9Jvn9b+r8ypnQvOKgot
	WnO/8JKfMzSt2SolU+dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shrxB-00000002Nt4-12Gs;
	Sat, 24 Aug 2024 14:41:21 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shrwN-00000002Nm5-3w0h
	for linux-rockchip@lists.infradead.org;
	Sat, 24 Aug 2024 14:40:34 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-533488ffaebso3293080e87.0
        for <linux-rockchip@lists.infradead.org>; Sat, 24 Aug 2024 07:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724510430; x=1725115230; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M+00aPqAIJfQiLjQyOBdsrvt8KcSjON06jxPta54+9s=;
        b=LhakOn8Ys/3bsITKIXhEo7xblJhiDIIu7aP2TjYo/fbVTdu+pyROaFyCBTIktV18S3
         JFd44h8IdydvhAze5gIkMIf9vrYU7JJY1aMhToE1hHkJU+9GXIFnJW5pwYycRPsOhiOy
         zFuX+my2Ak7j0rgv+d38GMVbHVscsJXBw+TKmpVnrTIkxobD59MC3AQDNXQbbHQJ21/p
         ClxeGUGw6uj3IatvQ5aZCBoAqRg8jgDxTpIaPsduuyzEmaFkLXPIRPQDOQ8t+zDdmozY
         VCY1pc/28SS/mu1/rCCtGis0MSPcJHiA3w9LH28xN6/S/OFT4qzXQXKxLQvQ6wGHTeWg
         ECOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724510430; x=1725115230;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M+00aPqAIJfQiLjQyOBdsrvt8KcSjON06jxPta54+9s=;
        b=ssb64HmU5GJT307lEYVBjNPTbSkAqtjILkpLOFdlcJaVe4gPaMkX9PV8HobqF90XEK
         NI1zNYXVZ+w2UnQzvPPd6uKG7XbZTGr0hGZpQTvce/tjNTe9XZ1uV+PyxoWy5KlwAAic
         WsnMUYIz4bzfSJK3iRkzOVINWK73RQi9yF/Noc0njw8qsvKcoLWqsr9fvHs4G/Y/TsDs
         yBr7B4/QNK1a2hulOsp3wLum6gUetzUSliQXW+LMv7RX2UlHcVWj4/lOgKfq8tUKifPd
         A8h5z/zeBRu736JWEGm4PTDI4xH6B3Hd1XmMb/i7qZWkbQdH2EvuEVuNYO6baZ9UGBTM
         +L7g==
X-Forwarded-Encrypted: i=1; AJvYcCUw74fFMuhdTTZ2yWIUqCwzwIu6NdGiL06y6pqPxkWE0NbOA8WSvnLdnILji/Y1qnzoAWJPjOBJOGDKgKCycw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyrLNAcH58n57cMTXKTksSXRKJfKMz37AtxXqnD1tHq3NpBi+RQ
	FIHiSqo+l1W7L/HWp2HnQ/C3XkZxb8gxfsb0MAa2hxRJ923EWAQIxAv3TTbgFHLjQ5julC9VwkM
	Bqh3XSU61pjSkFsdxkB2esN/niebPL8cn0SBSNg==
X-Google-Smtp-Source: AGHT+IFUWwNU4JjKJfUkk5+b7VaNM9tcGLgDxOphG4oT66UVqnMDc84a+SVvS7/Tom2C/L+hvh4W6uCE9zsb/aWB89Q=
X-Received: by 2002:a05:6512:230a:b0:533:4560:48b7 with SMTP id
 2adb3069b0e04-53438783ff4mr3214329e87.30.1724510429403; Sat, 24 Aug 2024
 07:40:29 -0700 (PDT)
MIME-Version: 1.0
References: <20240709105428.1176375-1-i@eh5.me>
In-Reply-To: <20240709105428.1176375-1-i@eh5.me>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 24 Aug 2024 16:40:18 +0200
Message-ID: <CACRpkdaekcM-rGNzczQFFwDcte8cR2D=j6LB9h5W1XRbBtBhJg@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: rockchip: correct RK3328 iomux width flag for
 GPIO2-B pins
To: Huang-Huang Bao <i@eh5.me>
Cc: Heiko Stuebner <heiko@sntech.de>, Richard Kojedzinszky <richard@kojedz.in>, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240824_074032_007600_1C49FA83 
X-CRM114-Status: GOOD (  10.98  )
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

T24gVHVlLCBKdWwgOSwgMjAyNCBhdCAxMjo1NeKAr1BNIEh1YW5nLUh1YW5nIEJhbyA8aUBlaDUu
bWU+IHdyb3RlOgoKPiBUaGUgYmFzZSBpb211eCBvZmZzZXRzIGZvciBlYWNoIEdQSU8gcGluIGxp
bmUgYXJlIGFjY3VtdWxhdGl2ZWx5Cj4gY2FsY3VsYXRlZCBiYXNlZCBvZmYgaW9tdXggd2lkdGgg
ZmxhZyBpbiByb2NrY2hpcF9waW5jdHJsX2dldF9zb2NfZGF0YS4KPiBJZiB0aGUgaW9tdXggd2lk
dGggZmxhZyBpcyBvbmUgb2YgSU9NVVhfV0lEVEhfNEJJVCwgSU9NVVhfV0lEVEhfM0JJVCBvcgo+
IElPTVVYX1dJRFRIXzJCSVQsIHRoZSBiYXNlIG9mZnNldCBmb3IgbmV4dCBwaW4gbGluZSB3b3Vs
ZCBpbmNyZWFzZSBieSA4Cj4gYnl0ZXMsIG90aGVyd2lzZSBpdCB3b3VsZCBpbmNyZWFzZSBieSA0
IGJ5dGVzLgo+Cj4gRGVzcGl0ZSBtb3N0IG9mIEdQSU8yLUIgaW9tdXggaGF2ZSAyLWJpdCBkYXRh
IHdpZHRoLCB3aGljaCBjYW4gYmUgZml0Cj4gaW50byA0IGJ5dGVzIHNwYWNlIHdpdGggd3JpdGUg
bWFzaywgaXQgYWN0dWFsbHkgdGFrZSA4IGJ5dGVzIHdpZHRoIGZvcgo+IHdob2xlIEdQSU8yLUIg
bGluZS4KPgo+IENvbW1pdCBlODQ0OGE2YzgxN2MgKCJwaW5jdHJsOiByb2NrY2hpcDogZml4IHBp
bm11eCBiaXRzIGZvciBSSzMzMjgKPiBHUElPMi1CIHBpbnMiKSB3cm9uZ2x5IHNldCBpb211eCB3
aWR0aCBmbGFnIHRvIDAsIGNhdXNpbmcgYWxsIGJhc2UKPiBpb211eCBvZmZzZXQgZm9yIGxpbmUg
YWZ0ZXIgR1BJTzItQiB0byBiZSBjYWxjdWxhdGVkIHdyb25nLiBGaXggdGhlCj4gaW9tdXggd2lk
dGggZmxhZyB0byBJT01VWF9XSURUSF8yQklUIHNvIHRoZSBvZmZzZXQgYWZ0ZXIgR1BJTzItQiBp
cwo+IGNvcnJlY3RseSBpbmNyZWFzZWQgYnkgOCwgbWF0Y2hpbmcgdGhlIGFjdHVhbCB3aWR0aCBv
ZiBHUElPMi1CIGlvbXV4Lgo+Cj4gRml4ZXM6IGU4NDQ4YTZjODE3YyAoInBpbmN0cmw6IHJvY2tj
aGlwOiBmaXggcGlubXV4IGJpdHMgZm9yIFJLMzMyOCBHUElPMi1CIHBpbnMiKQo+IENjOiBzdGFi
bGVAdmdlci5rZXJuZWwub3JnCj4gUmVwb3J0ZWQtYnk6IFJpY2hhcmQgS29qZWR6aW5zemt5IDxy
aWNoYXJkQGtvamVkei5pbj4KPiBDbG9zZXM6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4
LXJvY2tjaGlwLzRmMjliNzQzMjAyMzk3ZDYwZWRmYjNjNzI1NTM3NDE1QGtvamVkei5pbi8KPiBU
ZXN0ZWQtYnk6IFJpY2hhcmQgS29qZWR6aW5zemt5IDxyaWNoYXJkQGtvamVkei5pbj4KPiBTaWdu
ZWQtb2ZmLWJ5OiBIdWFuZy1IdWFuZyBCYW8gPGlAZWg1Lm1lPgoKUGF0Y2ggYXBwbGllZCBmb3Ig
Zml4ZXMhCgpZb3VycywKTGludXMgV2FsbGVpagoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
