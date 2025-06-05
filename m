Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F21EAC5B552
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jun 2025 12:59:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LXyjceSX8rfjRFCNOykmoSSNJNEwWQRnMPOMgXvVi7E=; b=ZMHNuS7+DYux6v
	O0ug5PRfqfHJzwnI66BsrXv6oxVwo16/nfDJMguzwuKLYMki70YtgZ/lFcg5SgNpXpVTlYmsiwYtW
	J+8F0YdpqJZMJ2dwq6nKtK5/KPaFK+ko6Aa5e5sWBDnShqQRc+oQajAw/D31AFruE7rMYqZhq6a9m
	/8d34+DOziv2tJu6/8xBVcUjFzmokKYpUr0H7TVQnMuUXTooPorimcrAt4ofVtYJ+DmpWFlTZ4b+j
	ctxeYCmdijZZwuGA1lZ4A+copMDlIO/QUqd3gp52LBQADbs70C66txdpNZ59guZj9HTcDGfphXdBy
	cLF1CqI0udPJJbQR4A1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNABt-0000000FXNS-0CYu;
	Thu, 05 Jun 2025 12:59:29 +0000
Received: from mail-yw1-x112b.google.com ([2607:f8b0:4864:20::112b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNA9k-0000000FX3m-11UI
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Jun 2025 12:57:17 +0000
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-70e4043c5b7so8848667b3.1
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Jun 2025 05:57:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1749128235; x=1749733035; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8P9yRldB8efdjVI/GGOevnbpBNvIMbrliEBkXndufro=;
        b=x4iF4ygvHjVjs3iEkZiugJO7pdwJO9IWww4CjepGJ5Q3DmDfrAg2wwrYBFAfm87KUs
         ZOyx9dWDhI9e4ONlsN/o6KUsu0gwPcsHfrO6tbxczgzdBrYnbTirZCGB+1l52sevT2KF
         YOncMeH6PnGpAwNKJkmLKZ+aZljVWrlnWCUEKYzEvekRjEFvnBxt2/zYuGCtz6x8mE7m
         pzWN0q5cKXoGI2fJgU0ozRfFkXTt2aIdHvn/nUxgSZj3UXu8dEim9D90B4tbyX5KDgUt
         gOBLf0LAGMA/xFjOnMCFP74fv6tmRqlW9J09U1jKEYcNhA0iosfOsF75/vmzFTZZmoUt
         APcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749128235; x=1749733035;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8P9yRldB8efdjVI/GGOevnbpBNvIMbrliEBkXndufro=;
        b=jsXleNl+ASrFGel454QHsCF6HBfCrvCCEKkfmcaVCRf5LyDKvgehpo8kg7kmgpwOKe
         A8Rk92LxlFK3uBdBF9DwRYirRaIQoI1QMyI91fG3+csZ/0ATezlXDygtU9PpNKHcytSa
         shasfS2wkCHTkyuSxZh02rwx8FZTSagweksUbiaqNfdzKIc9vG31iQ5tTdz4tHzIlRBk
         E3vhx04RY6iO8HIHO5J7MSNSfzm3UsAQk77v6A3fQCFK4wV1jaUz1sjj9oxJHEGwvef4
         9eEdxf3g279kvai/r9j5snzp+q+zK+gjtya475MtLYx31CWADJa0fBl3HFro3GZ878dh
         E1Dg==
X-Forwarded-Encrypted: i=1; AJvYcCVUzifJhBblIuS2hGar68zzYRoRDlWwhWkyFWsQrM8kq0L+FMv3Tb7sBsYVM/hQMbpUhyZGmcIhk4XBAqY2cQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzrN2HkKTJzkKqhqZcuFMFvfKU6Ej2oVQpRytscbuEO/VIvnlCG
	s+J5pfa+R9hIt5fg+vuGlK1JpSiaSOAVART3Y2XjUX9LRjdNa1Xqj7CrD/4z2ftu6wk=
X-Gm-Gg: ASbGncu1P4eCCumeJLZYu9BGcqi4CHOekRf2D6emqChIOaiI6jsrbG5sPFA0khhdK1+
	2bgqC0CXmKs2Lxea5UKuz5klh5ZgDDBSkSTpUd5hwi+Uj/sjnEyLaxxkgdioePYyKP+v/ByWTf3
	xnR81rx6z3Li/1t8a4mTUfiNdr7Q+pDSqD/DMEwB/uDRCh9UCjIc0itQB233vWbS7/jCrYWP3nl
	muv7YNjWrHNfWfm34awTsDOZtfHWecG1psfTkt/LVQV25FyhUNnWvMts5iP+2ny4M5Vbst5u3Db
	W0T/7aIbO0ZP1xHTxFTcMxMYXqsEPEZLmOSYOtuWnChhcBaN+SpfcYzX7D2AM98Yo39MKRW8rux
	SBbhUE2znnZCk+UM1G8AGfwH2twPiPw==
X-Google-Smtp-Source: AGHT+IGP1JTjNBKOAVz+On1yDAptBCNtZ2lHBDuV58ZFk1R3I6KXOmSz6cp8vZ8zMbm67UAhowdYhg==
X-Received: by 2002:a05:690c:630d:b0:70d:f47a:7e40 with SMTP id 00721157ae682-710d9a707b0mr85304827b3.16.1749128234998;
        Thu, 05 Jun 2025 05:57:14 -0700 (PDT)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com. [209.85.219.173])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-710e4aa7655sm5213437b3.46.2025.06.05.05.57.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jun 2025 05:57:13 -0700 (PDT)
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-e817b40d6e7so917681276.1;
        Thu, 05 Jun 2025 05:57:13 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUnvjiflQXtiCHGdWPrXuFodo5Ct5V6aruf9/XeQbZ8KW78OvkWS7V11QdTxTR1CH7td+zcjqt5OiYkYpTF2WU=@lists.infradead.org, AJvYcCUu8iJZ6OcYyMAmeIsDlK7rPpBrW0V1sExXaA5DdT8alCu2sEqluB6N9VMlbZGSHBpscWVKWzK/DC44p3XrORN8@lists.infradead.org
X-Received: by 2002:a05:6902:1245:b0:e81:49ba:47ef with SMTP id
 3f1490d57ef6-e8179de2e64mr8284874276.27.1749128233149; Thu, 05 Jun 2025
 05:57:13 -0700 (PDT)
MIME-Version: 1.0
References: <20250604-6-10-rocket-v6-0-237ac75ddb5e@tomeuvizoso.net>
 <20250604-6-10-rocket-v6-6-237ac75ddb5e@tomeuvizoso.net> <CAPj87rPv7Pd5tbXhpRLaUJCGB8JmD4kfF50WRsEiST2gvtg3Bg@mail.gmail.com>
 <cc21a090-801d-4b32-bac2-01cebf896c85@arm.com> <CAAObsKDMhuqYtn=+xR6-n=Uk+5_rU91OqVKyQ5cxhqfTo5svjg@mail.gmail.com>
 <CAPj87rOKGcufM0xB+uMCxhs0SdXCHpViyTd+jQ0+=B1kSihvVw@mail.gmail.com>
In-Reply-To: <CAPj87rOKGcufM0xB+uMCxhs0SdXCHpViyTd+jQ0+=B1kSihvVw@mail.gmail.com>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Thu, 5 Jun 2025 14:57:02 +0200
X-Gmail-Original-Message-ID: <CAAObsKC2UCA2gfcS5M6FHodOGWh-D8_+ia_VJhp5K64wx8F5cA@mail.gmail.com>
X-Gm-Features: AX0GCFvkLrhe0xTjkvrmlzVcmcIDMHbj0V1goAH3SY_Lo_zCTT8XJB_kX_AKtNs
Message-ID: <CAAObsKC2UCA2gfcS5M6FHodOGWh-D8_+ia_VJhp5K64wx8F5cA@mail.gmail.com>
Subject: Re: [PATCH v6 06/10] accel/rocket: Add IOCTL for BO creation
To: Daniel Stone <daniel@fooishbar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_055716_335837_40A63335 
X-CRM114-Status: GOOD (  18.30  )
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
Cc: Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org, Robin Murphy <robin.murphy@arm.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, Maxime Ripard <mripard@kernel.org>, Kever Yang <kever.yang@rock-chips.com>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBKdW4gNSwgMjAyNSBhdCAyOjI54oCvUE0gRGFuaWVsIFN0b25lIDxkYW5pZWxAZm9v
aXNoYmFyLm9yZz4gd3JvdGU6Cj4KPiBIZXksCj4KPiBPbiBUaHUsIDUgSnVuIDIwMjUgYXQgMDg6
NDEsIFRvbWV1IFZpem9zbyA8dG9tZXVAdG9tZXV2aXpvc28ubmV0PiB3cm90ZToKPiA+ID4gSW5k
ZWVkIGlmIHlvdSdyZSB1c2luZyB0aGUgSU9NTVUgQVBJIGRpcmVjdGx5IHRoZW4geW91IG5lZWQg
dG8gZG8geW91cgo+ID4gPiBvd24gYWRkcmVzcyBzcGFjZSBtYW5hZ2VtZW50IGVpdGhlciB3YXks
IHNvIG1hdGNoaW5nIGJpdHMgb2YgcHJvY2VzcyBWQQo+ID4gPiBzcGFjZSBpcyBwcmV0dHkgc2lt
cGxlIHRvIHB1dCBvbiB0aGUgdGFibGUuCj4gPgo+ID4gTXkgaW1wcmVzc2lvbiB3YXMgdGhhdCB0
aGUgVk1fQklORCBmYWNpbGl0eSBpcyBpbnRlbmRlZCBmb3IgU1ZNIGFzIGluCj4gPiBPcGVuQ0wg
YW5kIG1heWJlIFZ1bGthbj8KPiA+Cj4gPiBHdWVzcyBteSBxdWVzdGlvbiBpcywgd2hhdCB3b3Vs
ZCBzdWNoIGFuIGFjY2VsZXJhdG9yIGRyaXZlciB3aW4gYnkKPiA+IGxldHRpbmcgdXNlcnNwYWNl
IG1hbmFnZSB0aGUgYWRkcmVzcyBzcGFjZT8KPgo+IEkgbWVhbiwgbm90IGEgbG90IGdhaW5lZCwg
YnV0IG90b2ggdGhlcmUncyBhbHNvIG5vdCBtdWNoIHRvIGJlIGdhaW5lZAo+IGJ5IHVzaW5nIHRo
ZSBrZXJuZWwncyByYW5nZSBhbGxvY2F0b3IgZWl0aGVyLCBhbmQgaXQgc2F2ZXMgdXNlcnNwYWNl
IGEKPiByb3VuZHRyaXAgdG8gZGlzY292ZXIgdGhlIFZBIGZvciBhIEJPIGl0IGp1c3QgY3JlYXRl
ZC9tYXBwZWQ/CgpPaCwgSSBqdXN0IG1hcCBvbiBjcmVhdGlvbiBhbmQgcmV0dXJuIHRoZSBWQSBh
cyBhbiBvdXQgYXJnIGluIHRoZQpjcmVhdGlvbiBpb2N0bC4KClNvIGl0IGp1c3Qgc2VlbWVkIHRo
ZSBzaW1wbGVzdCBhcHByb2FjaCwgd2l0aCB0aGUgbGVhc3QgY3VzdG9tIGNvZGUgaW4KdGhlIGRy
aXZlci4KCkNoZWVycywKClRvbWV1CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
