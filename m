Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48779C47074
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jan 2024 09:44:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=szlGYMDBEmWqrkBDe1Vjz1S0zcYRRm68MeUysbAh6CU=; b=YxpymNwSK8oV/T
	DADERm9Bb3ZroCbbg9pltBUJOjBfu7mFE5PGUsvjHgIKwZtuOtCXe2b4LATTdjoEWLJ9Bo2+dvCA8
	TJwq3g47kw131KjABpSjLbACn/HtYC0hI1GQFkJgiilEPYV+xyVoQCTmRoS4JVpwxJOb28G9g/XkF
	EBT3gnqjLoWoiGEuT6zoM9aN9TlunP2zEXrddXzw9pwMBCw0YmcPGNSLgaaO3YbbOhEps/OIMWYum
	c7K7aUd0fM7HcEmKq+L8zFKGBki2/GQBQjVPy1Z6BT6gXBn4XzS1NlbwrMlRRIE+fOQr050B8usD/
	QsEhaAlBqAQeLkzmW0SA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLKHF-00DQ5Y-06;
	Thu, 04 Jan 2024 09:44:37 +0000
Received: from mail-vk1-xa30.google.com ([2607:f8b0:4864:20::a30])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLKHB-00DQ4O-1B
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jan 2024 09:44:36 +0000
Received: by mail-vk1-xa30.google.com with SMTP id 71dfb90a1353d-49618e09f16so91041e0c.2
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Jan 2024 01:44:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shantur-com.20230601.gappssmtp.com; s=20230601; t=1704361470; x=1704966270; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KL+BFmkA6DEGueNkcmUtIl3aeHKtthqFqP2SJiyrXjM=;
        b=FX8AVzCBKNuMJpUaGJXCmX2FB1yNc6EayIyDPib2uyEHpm49Gdfk3RbPi/KWqHSgxI
         I7eayC8YKX6f7V6xfUqf6UIWmPwDtakIfWdJuYoDx4Tc995Xw3xcxoj1AxX2jtj5Q3VL
         HKugYVmDKlyZKqneWj+LzxM65Ow6VJpzIx+mRvqt+ihuP+R/xmb+z88Ha1IViyhx2tD+
         KAwv3xtMZtHiRNsHObrUd34MKJyZgs4RPOGYj9SNPpNErk5snKZ6O7KswhHAolvGMZnd
         XIXqFIY8uhjSAEdGxmLW25rz10rBgtH6HyubMqjEmcZ7L9q/y3knIgiqJWMnCTOcDBjq
         bBYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704361470; x=1704966270;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KL+BFmkA6DEGueNkcmUtIl3aeHKtthqFqP2SJiyrXjM=;
        b=s0P7G0bs3lz65DWLY/rNXlRSW9zf9vFuoRkNFtPxSQVOpgOzv5CgsI1V/epWms5hLq
         w07NyrTOX4g9KMAKTC83q2CIQv+YigF/8QPWZGQpQhQ2hNBcbqcI2iMxLjFIZaveKm7S
         iUn0KOIG/0qAqT5Q+bsyVuWlnaQE4AD9/wAFsL/8mr3nWuA/2ctyP8Gww4wvh3JeGnJM
         YULawy+XeqyC97TXUzPwoWENsKfQex+rPG7mK1s5VZUKzJktSyQiVs501rQeNAgGzn/x
         pGdAlq6/ShocTe1Sp/a8wiRjt4xR6PqLUlTE3fBzqv6Ea9UufxsZSiEJAWmbhKgSGV4K
         T7BQ==
X-Gm-Message-State: AOJu0YzUaGVMsHGeLa82gqGhMahq17RUufCf88kmKJtsI2n86ilLlw6q
	3BLedVIXD4n8cstiKZvmPgoIk/zdrWVHxc+ZChdrO6fB1hgBrw==
X-Google-Smtp-Source: AGHT+IEmKatiFXU5jrT1Y+qLG5Z2tT15J2/KyXKcN8B36rYHpBL0Z7EQFQCpKx+owfQKfZQF3n7CfUAd88GPattGWZQ=
X-Received: by 2002:a05:6122:709:b0:4b6:be59:ebc5 with SMTP id
 9-20020a056122070900b004b6be59ebc5mr229700vki.30.1704361467947; Thu, 04 Jan
 2024 01:44:27 -0800 (PST)
MIME-Version: 1.0
References: <20231222141616.508073-1-i@shantur.com> <2323515.eGJsNajkDb@diego>
In-Reply-To: <2323515.eGJsNajkDb@diego>
From: Shantur Rathore <i@shantur.com>
Date: Thu, 4 Jan 2024 09:44:17 +0000
Message-ID: <CABEcMwVwyp0zGvxL0nY3aW1_SFUEh++0bV8qBRZLK1aEpa=NHw@mail.gmail.com>
Subject: Re: [PATCH v2] dts: rockpro64: Remove usb regulator-always-on
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_014433_609521_88E82F27 
X-CRM114-Status: GOOD (  19.61  )
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
Cc: linux-rockchip@lists.infradead.org, dsimic@manjaro.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28sCgpPbiBGcmksIERlYyAyOSwgMjAyMyBhdCAxMDowOOKAr1BNIEhlaWtvIFN0w7xi
bmVyIDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+Cj4gSGksCj4KPiBBbSBGcmVpdGFnLCAyMi4g
RGV6ZW1iZXIgMjAyMywgMTU6MTY6MTYgQ0VUIHNjaHJpZWIgU2hhbnR1ciBSYXRob3JlOgo+ID4g
VVNCIHBvcnQgcmVndWxhdG9ycyBzaG91bGQgYmUgY29udHJvbGxlZCBieSBQSFlzCj4gPiBzbyB3
ZSByZW1vdmUgYWx3YXlzLW9uIHByb3BlcnR5IGFuZCBsZXQgUEhZcyBtYW5hZ2UgdGhlCj4gPiBy
ZWd1bGF0b3IuCj4gPgo+ID4gcGh5LXN1cHBseSBpc24ndCBzY29uZnVncmVkIGZvciB0aGUgVHlw
ZUMgcG9ydCBhbmQgbm93IHRoYXQgd2UgYXJlCj4gICAgICAgICAgICAgICAgIF5eIGNvbmZpZ3Vy
ZWQgPwo+Cj4gPiByZW1vdmluZyByZWd1bGF0b3ItYWx3YXlzLW9uLCB3ZSBuZWVkIHRvIGZpeCB0
aGUgcGh5LXN1cHBseQo+ID4gc28gdGhlIFBIWXMgYXJlIGFibGUgdG8gdHVybiBwb3dlciB0byB0
eXBlLWMgcG9ydC4KPiA+Cj4gPiBTZXJpZXMtdmVyc2lvbjogMgo+ID4KPiA+IFNpZ25lZC1vZmYt
Ynk6IFNoYW50dXIgUmF0aG9yZSA8aUBzaGFudHVyLmNvbT4KPiA+IC0tLQo+ID4gIGFyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHNpIHwgMyArLS0KPiA+ICAx
IGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlm
ZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5k
dHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kK
PiA+IGluZGV4IGJjYTJiNTBlMGEuLmY3MjczZjc5OTAgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1yb2NrcHJvNjQuZHRzaQo+ID4gKysrIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0c2kKPiA+IEBAIC0x
OTIsNyArMTkyLDYgQEAgdmNjNXYwX2hvc3Q6IHZjYzV2MC1ob3N0LXJlZ3VsYXRvciB7Cj4gPiAg
ICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiAgICAgICAgICAgICAg
IHBpbmN0cmwtMCA9IDwmdmNjNXYwX2hvc3RfZW4+Owo+ID4gICAgICAgICAgICAgICByZWd1bGF0
b3ItbmFtZSA9ICJ2Y2M1djBfaG9zdCI7Cj4gPiAtICAgICAgICAgICAgIHJlZ3VsYXRvci1hbHdh
eXMtb247Cj4gPiAgICAgICAgICAgICAgIHZpbi1zdXBwbHkgPSA8JnZjYzV2MF91c2I+Owo+ID4g
ICAgICAgfTsKPiA+Cj4gPiBAQCAtMjAzLDcgKzIwMiw2IEBAIHZjYzV2MF90eXBlYzogdmNjNXYw
LXR5cGVjLXJlZ3VsYXRvciB7Cj4gPiAgICAgICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVm
YXVsdCI7Cj4gPiAgICAgICAgICAgICAgIHBpbmN0cmwtMCA9IDwmdmNjNXYwX3R5cGVjX2VuPjsK
PiA+ICAgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAidmNjNXYwX3R5cGVjIjsKPiA+IC0g
ICAgICAgICAgICAgcmVndWxhdG9yLWFsd2F5cy1vbjsKPiA+ICAgICAgICAgICAgICAgdmluLXN1
cHBseSA9IDwmdmNjNXYwX3VzYj47Cj4gPiAgICAgICB9Owo+ID4KPiA+IEBAIC04NTksNiArODU3
LDcgQEAgJnUycGh5MCB7Cj4gPiAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gPgo+ID4gICAgICAg
dTJwaHkwX290Zzogb3RnLXBvcnQgewo+ID4gKyAgICAgICAgICAgICBwaHktc3VwcGx5ID0gPCZ2
Y2M1djBfdHlwZWM+Owo+ID4gICAgICAgICAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gPiAgICAg
ICB9Owo+Cj4gSnVzdCB0byBleHBsYWluIGZvciBtZSwgd2hhdCBpcyBzdXBwbHlpbmcgdGhlICJv
dGhlciIgT1RHIHBvcnQKPiAgICAgICAgIHUycGh5MV9vdGc6IG90Zy1wb3J0IHt9Cj4KPiBpbiB1
MnBoeTEgLi4uIHRoaXMgb25lIGlzIHN0YXR1cyBva2F5LCBidXQgZG9lcyBub3QgaGF2ZSBhbnkg
cGh5Cj4gc3VwcGx5Pwo+CgpJbiBSb2NrUHJvNjQgdGhlcmUgaXMgb25seSAxIFVTQi1DIE9URyBw
b3J0IGFuZCB0aGUgb3RoZXIgcG9ydAppcyBhIFVTQi0zLjAgcG9ydC4KVG8gYmUgaG9uZXN0LCBJ
IGFtIG5vdCAxMDAlIHN1cmUgaG93IHRoaXMgYWxsIHdvcmtzLCBhcyBJIHVuZGVyc3RhbmQKdGhl
IFVTQjMuMCBwb3J0IGlzIHdpcmVkIHRvIHRoZSBzZWNvbmQgVHlwZUMgUGh5LgoKTWF5YmUgRHJh
Z2FuIGhhcyBtb3JlIGluZm8gb24gdGhpcy4KCktpbmQgcmVnYXJkcywKU2hhbnR1cgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
