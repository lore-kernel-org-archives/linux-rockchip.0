Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAB1DC5AE59
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jun 2025 16:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EV+7uRlBpmpDAiTPHiokKj4k/6TbFue4qKvq8gYkpkQ=; b=Rn4QUbHeOkum3u
	LDmYiDLoFdsGIiG3H7/citsnAJmnunaV8o11rV9y6HqiQBFj9yBZRHjw9Eheht4eDuQCBymzRz77j
	GROjNZoxhGZBoorIxTZJGzxraVhAAY9u60bNjY/SRbmVE9V6+9fO3qj2vl9k/KSKcAMdIq3OAMIOm
	AhQ/wYwVvqLm0IegDAbewI6iNKtlZ++pyYDycfN6STGKCYpdKXSWysVy9RhBuHXFwp1tHSFHlyaWy
	Ki9Lx7Y+qkxUgoPhJezlin+QddBTnBtIa5meVCXEIis0eHxIWEuTlBRvMDy7APnz5Soe0UOINMnPW
	EMY1bTlQPP0oM4S7HQzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNDa6-0000000G2iw-3Jkz;
	Thu, 05 Jun 2025 16:36:42 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNDa3-0000000G2g4-1c5X
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Jun 2025 16:36:41 +0000
Received: by mail-qv1-xf29.google.com with SMTP id 6a1803df08f44-6fad79433bbso11832626d6.0
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Jun 2025 09:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1749141398; x=1749746198; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=m/AMED1uCKw6PLorZVcAc+las3T70VIL6/pCq2JraOc=;
        b=GzG5hjBEUtk0f2MwXfodNC6R/WQlGYPwl/dBruj3MagZIrIsmTheErBbahFA97XNmQ
         7991IQjkkeJ4F/Zh4Nw7T9gsvmdTMsMht2YBEsITkfBRr/9IXI9aiicpi3RAmBxhO99k
         VgE//bJWlz8Sjl5nnkkuLTA2voW5ESPZoGNjm83y7OpnwNO7PSwAn5Z044E9TlRiGyAJ
         6cBUYO0gmmZSTxEtO/gPQhxBy5rL3dfHO3XleetzgurXzkH3Qe22CXCwI2h8gO83ssTi
         fnWxbq7Lj5yFcfHontFnCYlSw+ViK2cxBAt7ZEtZXza3W2IF3xpwpkaQ8qraWKjoOBjW
         dVDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749141398; x=1749746198;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m/AMED1uCKw6PLorZVcAc+las3T70VIL6/pCq2JraOc=;
        b=KLxXPbhHPAu2lnPVIlikSJpX0B5PkDKuguiwZiX+q47WyZwx23JGQPnFUmBKGjXOKN
         CbF8m5+ucftDHosPJKiBHV3nHBrBpm+c7UFQolwO1XoCEgn0yOuYitfiZsblz8ovRhCS
         R6HF7b+UoWwRBH1i9N/D+BB8lCTo26mASwY8QXPrp19wrDcbu60yX8fPseYsd+Oaju9Q
         sIHzvbEcXvDngr5yljCyqHkGO/QXOifJUMI0ROpN5vk45dGzwcuRgJwHjhiWiJgP8YSm
         FZId8XymIXNwBED8Q9+fJV6/ioqmUdNZf2c3ut32vviUZaWMR87WFU9D3OKU8f4urVPx
         YNsg==
X-Forwarded-Encrypted: i=1; AJvYcCXtrn2DzmUEJU/HF3coGbPEhJxYsn1wj/qCqUivYSdyCkfrc0o2UAjxr9USTJ60vCtg1yJi1c6WDP3a8gXKNA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzns0EYIPnAjOFo213/N5PJG5PZwcK53nNAxdUiXPsa1cLhMVP7
	2id7hU3zZclNN5yp8OLqXZsF/Q9zrKARdUM7Usq4n490udDSRKS3Kl40u143IVhcPAZbPwXKJow
	19j/t4EZOUOuuY5gRu1xkfxRv0IvAil+/So+fFeWjNw==
X-Gm-Gg: ASbGncs1ECkmHpxXNbtmnkWUp8cukl6SIou+fSzzVkKt6j364Zenyx3LsomVj80OnCF
	8mwGUK7fSuVKQrHsZoqypxtdJdJLR/2e0zZvPKzyoKeXkasj0IlMB+nyX0B9HFaGQakSkxx3hAJ
	yIOg82aNjzP8XX0QvTsRN/uTbhU6oqehI=
X-Google-Smtp-Source: AGHT+IH/vUqInLnUsBsqIxZVLljlV2JNq6TLN0zeIbDOndYPLtFZP9dtkbRS+wnOk9zZ8yyAo/Oy9zg7yUbo3S0v9LM=
X-Received: by 2002:ad4:5dc8:0:b0:6f8:8fdf:f460 with SMTP id
 6a1803df08f44-6fb08f4d0a5mr2148076d6.9.1749141397948; Thu, 05 Jun 2025
 09:36:37 -0700 (PDT)
MIME-Version: 1.0
References: <20250604-6-10-rocket-v6-0-237ac75ddb5e@tomeuvizoso.net>
 <20250604-6-10-rocket-v6-6-237ac75ddb5e@tomeuvizoso.net> <CAPj87rPv7Pd5tbXhpRLaUJCGB8JmD4kfF50WRsEiST2gvtg3Bg@mail.gmail.com>
 <cc21a090-801d-4b32-bac2-01cebf896c85@arm.com> <CAAObsKDMhuqYtn=+xR6-n=Uk+5_rU91OqVKyQ5cxhqfTo5svjg@mail.gmail.com>
 <3a8e1101-469b-4686-b160-6fdb1737a636@arm.com> <CAAObsKCjv=K7Dk=QD+MAqwWUNyw_pCh2Eqij3Qwx1jzKoKg4zw@mail.gmail.com>
In-Reply-To: <CAAObsKCjv=K7Dk=QD+MAqwWUNyw_pCh2Eqij3Qwx1jzKoKg4zw@mail.gmail.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 5 Jun 2025 17:36:26 +0100
X-Gm-Features: AX0GCFsF7cxglaKZSX8Koz---6tL_CI5LfT0LL-n_NzmXSV0kUJg5xHMCVro-r4
Message-ID: <CAPj87rOggG6_wNHvv55onxcw00UxASUJYK2pmdkc+oUmYFyp2w@mail.gmail.com>
Subject: Re: [PATCH v6 06/10] accel/rocket: Add IOCTL for BO creation
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_093639_567964_598C065C 
X-CRM114-Status: GOOD (  17.90  )
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

T24gVGh1LCA1IEp1biAyMDI1IGF0IDE3OjMyLCBUb21ldSBWaXpvc28gPHRvbWV1QHRvbWV1dml6
b3NvLm5ldD4gd3JvdGU6Cj4gT24gVGh1LCBKdW4gNSwgMjAyNSBhdCAzOjM34oCvUE0gUm9iaW4g
TXVycGh5IDxyb2Jpbi5tdXJwaHlAYXJtLmNvbT4gd3JvdGU6Cj4gPiBJdCBzaG91bGQgb25seSBu
ZWVkIGEgc2luZ2xlIElPTU1VIGRvbWFpbiBwZXIgRFJNIGNsaWVudCwgc28gbm8gZmFmZmluZwo+
ID4gYWJvdXQgcmVwbGljYXRpbmcgbWFwcGluZ3MuIGlvbW11X3BhZ2luZ19kb21haW5fYWxsb2Mo
KSBkb2VzIG5lZWQgKmFuKgo+ID4gYXBwcm9wcmlhdGUgdGFyZ2V0IGRldmljZSBzbyBpdCBjYW4g
aWRlbnRpZnkgdGhlIHJpZ2h0IElPTU1VIGRyaXZlciwgYnV0Cj4gPiB0aGF0IGluIGl0c2VsZiBk
b2Vzbid0IHByZWNsdWRlIGF0dGFjaGluZyBvdGhlciBkZXZpY2VzIHRvIHRoZSByZXN1bHRpbmcK
PiA+IGRvbWFpbiBhcyB3ZWxsIGFzIChvciBldmVuIGluc3RlYWQgb2YpIHRoZSBub21pbmFsIG9u
ZS4gSW4gZ2VuZXJhbCwgbm90Cj4gPiBhbGwgSU9NTVUgZHJpdmVycyBzdXBwb3J0IGNyb3NzLWlu
c3RhbmNlIGF0dGFjaCBzbyBpdCBtYXkgZmFpbCB3aXRoCj4gPiAtRUlOVkFMLCBhbmQgKnRoYXQq
J3Mgd2hlbiB5b3UgbWlnaHQgbmVlZCB0byBmYWxsIGJhY2sgdG8gYWxsb2NhdGluZwo+ID4gbXVs
dGlwbGUgcGVyLWluc3RhbmNlIGRvbWFpbnMgLSBidXQgYXMgSSBzYXkgc2luY2UgdGhpcyBpcyBh
Cj4gPiBSb2NrY2hpcC1zcGVjaWZpYyBkcml2ZXIgd2hlcmUgdGhlIElPTU1VICppcyogaW50ZW5k
ZWQgdG8gc3VwcG9ydCB0aGlzCj4gPiBhbHJlYWR5LCB5b3UgZG9uJ3QgbmVlZCB0byBib3RoZXIu
Cj4KPiBPaywgSSBkaWQganVzdCB0aGF0IGFuZCBpdCdzIHdvcmtpbmcgZ3JlYXQgaW4gbXkgdGVz
dGluZzoKPgo+IEkgY3JlYXRlIGEgZG9tYWluIHdoZW4gdGhlIGNsaWVudCBvcGVucyB0aGUgRFJN
IGNvbm5lY3Rpb24gYW5kIG1hcCBhbGwKPiBpdHMgQk9zIHRvIGl0LiBUaGVuIHdoZW4gYSBqb2Ig
aXMgYWJvdXQgdG8gc3RhcnQsIEkgZGV0YWNoIHdoYXRldmVyCj4gZG9tYWluIHdhcyBhdHRhY2hl
ZCB0byB0aGUgY29yZSdzIGdyb3VwIGFuZCBhdHRhY2ggdGhhdCBjbGllbnQncwo+IGRvbWFpbi4K
Pgo+IFdpbGwgc2VuZCBhIHY3IHdpdGggaXQgaW4gYSBjb3VwbGUgb2YgZGF5cy4KCkF3ZXNvbWUs
IHRoYW5rcyBzbyBtdWNoIGZvciB0aGF0IFRvbWV1IQoKQ2hlZXJzLApEYW5pZWwKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
