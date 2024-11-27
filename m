Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C163CD6ACCA
	for <linux-rockchip@archiver.kernel.org>; Wed, 27 Nov 2024 13:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RZVqPlCtV09rJKM4/f+SNtYdFhaupxv96wmaso7uc8Y=; b=gIIy/SQoN/7QnF
	KmOa/D+K5WCIRok3xxDBxdm0myiMrS6lQ/YCwz5n6ObeQ+gp+mC8SOO3eguMwGMS1PE3N6CsPxcS7
	Y02i4lk/+Sl2wE3eI6MBTtnobEFUb64js1eSzXbHMiMKXAfxsnHk2zTRls8AFVwpm3TUjmISNDed6
	X5HZ0JuNFezpHqYoyc4GjvUefWv1DLJM5znlWZx8EInud/KEIIAeLpLhzyKZhCgZpDU9Q1IESRrvG
	XA8ZgXWag8W+hbFdavXRht2nqmVqVYUXbx/Oh0UjerG27NzBuJWmLB1Pxd7RLV5EKGZ6P53a16e0u
	7kfuUHAhz6nwMv37rZEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGHt3-0000000DDFI-3aHc;
	Wed, 27 Nov 2024 13:15:21 +0000
Received: from mail-ot1-f49.google.com ([209.85.210.49])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGHs5-0000000DD9j-41cv;
	Wed, 27 Nov 2024 13:14:23 +0000
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-71d4d0516e6so1797290a34.2;
        Wed, 27 Nov 2024 05:14:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732713258; x=1733318058;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z5N5TeqIz8Hih/q2oo/F5dFMUP3Erj9K850b0DJCwPQ=;
        b=hPtQmMp4fGQQqJybisdAiEZSw8cFZ75f1AUlkjWra8p00fxm8psL4hpuenYkBmcOXD
         FLCQh84rupGn0JxfwQUSLMNJTAz8Vy/aQQt6qGQH0/xb79NjCKyNTyO44RcDqESXwh34
         Qx145vYnwPVZi9zvl/mky4WXmE1ze2GuqxjRb+Gjb9vX2Rve2/mbFlEezeeckkiNd1rQ
         F5g9vFK0U2XHu4NVN0nFNhmSp0sF0h9ZSNuh050GTgj9FWF85cNwwAywnf9vKYAsgITq
         EqdJY96W5hVd2OQ7RS/ziHNyzHowFKMGqX23X8phF8lwkgVJVv+M+wSDus9kxhYcIHIq
         W+gg==
X-Forwarded-Encrypted: i=1; AJvYcCWumTIkx3EKJoayHbBhpOLiwENnBVzS8RBFqK4viU57t5r12a9GRCpHOb0vJApPsKQYvd4Wt2YwrEcap+hPm8FP@lists.infradead.org, AJvYcCWyhFBRkBCc2+bAhyghimih0Nxl4PdjFFrqxX0hDC+wNWJ//E1DaOsYhRuFSR1kzJt0wrEVubvEBcgbJkvk7Mk=@lists.infradead.org
X-Gm-Message-State: AOJu0YxKULGsK/eYStZhI4hlFT2i/24rRvdkKuntOz44v5IddHA7hlLG
	iqLBxs6rlE6SlqNY2CdJSQcVb047fU/1fnyfmr6+YuxXVjRH5PG+4LNepZMTF/Y=
X-Gm-Gg: ASbGncuaP7nVOLUfD758qQBE0iRq3wJJ4/BbPD+LtelskecrAatInx2k1bp3Ml698oM
	hGuE/bkHdlyMzIttSv6MCpqGV/RMniOVjEQYG2Q5MNoxYyNP88zpXlYFG1b5F59Qz1wWcqJh/mc
	P+Bpz34neLUr+bNxIo3cNnjb0x2x2cU9Xc7giETqg4IsA2GgnYjDg8v7oMuvpsdVks37po+mhJy
	ZsgP2uA/FT3PTgmO/IFsAHgkLdQQrEoKrodRZsQjxiHBlY44K4puFLWnngLR8u0H1eMze/lH1Na
	trrSbREppR8T
X-Google-Smtp-Source: AGHT+IE+EOLm/fCWnu5Klk0Uvb8G9aQwz/SUpl/3KXPofQ6JO9JzbIdpzZrAweksBQvWMfELrO9Neg==
X-Received: by 2002:a05:6830:34a7:b0:718:a52:e1cc with SMTP id 46e09a7af769-71d65d09848mr2821770a34.25.1732713258392;
        Wed, 27 Nov 2024 05:14:18 -0800 (PST)
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com. [209.85.210.41])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71d42b231e8sm2541458a34.34.2024.11.27.05.14.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Nov 2024 05:14:17 -0800 (PST)
Received: by mail-ot1-f41.google.com with SMTP id 46e09a7af769-71d4d0516e6so1797271a34.2;
        Wed, 27 Nov 2024 05:14:17 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWVnyGEwXR8dn8oyxxJXW0iKLgobPD/EgvwxVB6wwADlsHA0Zip4pX9QwV2D8JcuGo97DrJXmEREP2fSxbx4s6V@lists.infradead.org, AJvYcCWigcHaqzR6+Lon44dFbbztAzPGBMjl4nLgU+oai7uCxnfPumaNmxZwhmeqlL/htWLMmzr6KSBexm9g4t4YXn4=@lists.infradead.org
X-Received: by 2002:a05:6358:7e95:b0:1ca:a1d1:65d2 with SMTP id
 e5c5f4694b2df-1cab15dbb24mr152078355d.15.1732713256919; Wed, 27 Nov 2024
 05:14:16 -0800 (PST)
MIME-Version: 1.0
References: <20240823-cleanup-h-guard-pm-domain-v1-0-8320722eaf39@linaro.org> <20240823-cleanup-h-guard-pm-domain-v1-9-8320722eaf39@linaro.org>
In-Reply-To: <20240823-cleanup-h-guard-pm-domain-v1-9-8320722eaf39@linaro.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 27 Nov 2024 14:14:05 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWXUyLbypvgTrtx0mY5vF6abW8bab2poso=xn88gNqEmA@mail.gmail.com>
Message-ID: <CAMuHMdWXUyLbypvgTrtx0mY5vF6abW8bab2poso=xn88gNqEmA@mail.gmail.com>
Subject: Re: [PATCH 09/10] pmdomain: renesas: rcar-gen4-sysc: Use scoped
 device node handling to simplify error paths
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-msm@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241127_051421_995674_5881F24F 
X-CRM114-Status: GOOD (  24.54  )
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

SGkgS3J6eXN6dG9mLAoKT24gRnJpLCBBdWcgMjMsIDIwMjQgYXQgMjo1MeKAr1BNIEtyenlzenRv
ZiBLb3psb3dza2kKPGtyenlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4gT2J0
YWluIHRoZSBkZXZpY2Ugbm9kZSByZWZlcmVuY2Ugd2l0aCBzY29wZWQvY2xlYW51cC5oIHRvIHJl
ZHVjZSBlcnJvcgo+IGhhbmRsaW5nIGFuZCBtYWtlIHRoZSBjb2RlIGEgYml0IHNpbXBsZXIuCj4K
PiBTaWduZWQtb2ZmLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tp
QGxpbmFyby5vcmc+CgpSZXZpc2l0aW5nIGFuIG9sZCBwYXRjaCAodGhlIHNhbWUgYXBwbGllcyB0
byAxMC8xMCkuLi4KCj4gLS0tIGEvZHJpdmVycy9wbWRvbWFpbi9yZW5lc2FzL3JjYXItZ2VuNC1z
eXNjLmMKPiArKysgYi9kcml2ZXJzL3BtZG9tYWluL3JlbmVzYXMvcmNhci1nZW40LXN5c2MuYwo+
IEBAIC02LDYgKzYsNyBAQAo+ICAgKi8KPgo+ICAjaW5jbHVkZSA8bGludXgvYml0cy5oPgo+ICsj
aW5jbHVkZSA8bGludXgvY2xlYW51cC5oPgo+ICAjaW5jbHVkZSA8bGludXgvY2xrL3JlbmVzYXMu
aD4KPiAgI2luY2x1ZGUgPGxpbnV4L2RlbGF5Lmg+Cj4gICNpbmNsdWRlIDxsaW51eC9lcnIuaD4K
PiBAQCAtMzAzLDEyICszMDQsMTIgQEAgc3RhdGljIGludCBfX2luaXQgcmNhcl9nZW40X3N5c2Nf
cGRfaW5pdCh2b2lkKQo+ICAgICAgICAgY29uc3Qgc3RydWN0IHJjYXJfZ2VuNF9zeXNjX2luZm8g
KmluZm87Cj4gICAgICAgICBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkICptYXRjaDsKPiAgICAg
ICAgIHN0cnVjdCByY2FyX2dlbjRfcG1fZG9tYWlucyAqZG9tYWluczsKPiAtICAgICAgIHN0cnVj
dCBkZXZpY2Vfbm9kZSAqbnA7Cj4gICAgICAgICB2b2lkIF9faW9tZW0gKmJhc2U7Cj4gICAgICAg
ICB1bnNpZ25lZCBpbnQgaTsKPiAgICAgICAgIGludCBlcnJvcjsKPgo+IC0gICAgICAgbnAgPSBv
Zl9maW5kX21hdGNoaW5nX25vZGVfYW5kX21hdGNoKE5VTEwsIHJjYXJfZ2VuNF9zeXNjX21hdGNo
ZXMsICZtYXRjaCk7Cj4gKyAgICAgICBzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wIF9fZnJlZShkZXZp
Y2Vfbm9kZSkgPQo+ICsgICAgICAgICAgICAgICBvZl9maW5kX21hdGNoaW5nX25vZGVfYW5kX21h
dGNoKE5VTEwsIHJjYXJfZ2VuNF9zeXNjX21hdGNoZXMsICZtYXRjaCk7Cj4gICAgICAgICBpZiAo
IW5wKQo+ICAgICAgICAgICAgICAgICByZXR1cm4gLUVOT0RFVjsKClsuLi5dCgo+IEBAIC0zNjks
MTQgKzM2NSwxMiBAQCBzdGF0aWMgaW50IF9faW5pdCByY2FyX2dlbjRfc3lzY19wZF9pbml0KHZv
aWQpCj4gICAgICAgICAgICAgICAgIGlmIChlcnJvcikgewo+ICAgICAgICAgICAgICAgICAgICAg
ICAgIHByX3dhcm4oIkZhaWxlZCB0byBhZGQgUE0gc3ViZG9tYWluICVzIHRvIHBhcmVudCAldVxu
IiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGFyZWEtPm5hbWUsIGFyZWEtPnBh
cmVudCk7Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgZ290byBvdXRfcHV0Owo+ICsgICAgICAg
ICAgICAgICAgICAgICAgIHJldHVybiBlcnJvcjsKPiAgICAgICAgICAgICAgICAgfQo+ICAgICAg
ICAgfQo+Cj4gICAgICAgICBlcnJvciA9IG9mX2dlbnBkX2FkZF9wcm92aWRlcl9vbmVjZWxsKG5w
LCAmZG9tYWlucy0+b25lY2VsbF9kYXRhKTsKCm5wIGlzIHBhc3NlZCB0byBvZl9nZW5wZF9hZGRf
cHJvdmlkZXJfb25lY2VsbCgpLCB3aGljaCBzdG9yZXMgYSBjb3B5CmZvciBsYXRlciB1c2UsIHNv
IEkgdGhpbmsgaXQgbXVzdCBub3QgYmUgcmVsZWFzZWQgaW4gY2FzZSBvZiBzdWNjZXNzPwpJLmUu
IGJvdGggdGhlIG9sZCBhbmQgdGhlIG5ldyBjb2RlIGFyZSB3cm9uZz8KCj4KPiAtb3V0X3B1dDoK
PiAtICAgICAgIG9mX25vZGVfcHV0KG5wKTsKPiAgICAgICAgIHJldHVybiBlcnJvcjsKPiAgfQo+
ICBlYXJseV9pbml0Y2FsbChyY2FyX2dlbjRfc3lzY19wZF9pbml0KTsKCkdye29ldGplLGVldGlu
Z31zLAoKICAgICAgICAgICAgICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0ZXJob2V2
ZW4gLS0gVGhlcmUncyBsb3RzIG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02
OGsub3JnCgpJbiBwZXJzb25hbCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwg
SSBjYWxsIG15c2VsZiBhIGhhY2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlz
dHMgSSBqdXN0IHNheSAicHJvZ3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
