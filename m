Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0B658C5478C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Feb 2024 13:02:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FEvpb/yzGWUMbfaYl4sjjH7EhESSeDyvtI9DUOYFQPo=; b=jYETtCGBzfDdlF
	Klsoo6e6jUHUjDJSSnYVAHvk3Aib3eudfM9XSXDeDrhsjFP6DM/TYyehG9O9W1uAM2yPlmyuqbHUr
	N09neK6SMiwHVCHaKZiXW8zyr3hKXxc1R+7c07/zoRIQ9uQTPO+p4NP7fJBaJYdyMXLrCAooKx3EM
	xEky7qUokWu+gNdr3snEHjdcsadavrKED/Jd0ro6DxywHkH8mOJv+nmx3q1WEXtuSDb3MhdU1C8wA
	pGxDmbTJxLTI3mEJoTrhukhwSIiEvATkvlaOprbVnEfeqRAYNLjuhufftk74k7MBomD+1JmzzywYB
	dKSt/93/ttHkytP1XlfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdVB4-00000009RvM-15Gw;
	Fri, 23 Feb 2024 13:01:25 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdVAT-00000009RkU-3A70;
	Fri, 23 Feb 2024 13:00:48 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-a26fa294e56so135048766b.0;
        Fri, 23 Feb 2024 05:00:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708693243; x=1709298043; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v6EOiHBno6M8nUZDXDTbep6dCsGMg7HTrmnr42jez00=;
        b=XnBrxysUcM03AhpktnuweWQ6pu+bwOMPBvtRo2XdyQzR2WCJxEE6eOVUZ7ojZHks8o
         JEAqmcIj+5oGYscq75J7DO7nKnRbK9T8GEHJt4RXRieCqqnJ0xPrAe3BNgiQYqp9TuYH
         nN8R89re6xw+S3YuZpZTmt5BWhNfVD20322q53Bl0dn9n/LR8RgGsjJlKi/+BZ9xUVlb
         2Eu3S4ZDK6Yiu2+x3kKiNdB5YZ4Fi+xri9RaRoRQhz0J39fo9jsgwYYxn5mYmgNV7T8a
         YRKl3tgyB+LIYB8TQzqKAXm2oV6HsJFrN2j5uPxP29tEY8D8wJk1X49aYTC34m7frS6o
         MnKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708693243; x=1709298043;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v6EOiHBno6M8nUZDXDTbep6dCsGMg7HTrmnr42jez00=;
        b=agXXogOqEXjYS0ugR/k3BvFe2eTqfWeoDIiT7PvbkvnvgpZnEMsOc59LYJaRikjFSd
         S5gZf4UEh6SJgRdCh2prAhwgrVxnC6TVWq7Bx3RJZ74N+YOrcZawHMGNj6j8y43A9w3i
         G9thZzg5e3ruVaeIq0aA3MfWM5xwlJD6Yig42E8dF25MJNT9COI52YHzQTX5LnEcY4Jf
         3ZKpNn5rh5xAdioht0/MpNEOI1TRsT/bqHoZyGe8PBepWPiW2BN3upVeVk1VlaHIGMfo
         eAzMJq02/td9EyEwjJt4iiM/tXCF3oBRaz4tGBbeNgwXWBqtf/VlH0swXxpLcn3M8fKl
         tBUA==
X-Forwarded-Encrypted: i=1; AJvYcCW8toqqIA5mPWir9KdVSyXKnaJ/GZF3wFrC3Eas3ar2d5qWf4hNmDmoW0ZUavv06SFb9qfrsAn1VXHaotYfe6VfeFCAH/zDibrmV+4kMMt2YDVRe0IjPwVX9CbKiirWHyEzQP4m+cDDzytjFwYw6rc0YRfdCuUTdUU=
X-Gm-Message-State: AOJu0YwXokTD1iBES13oFsMfVwjHoss1/ZIIP/KVWOipzHCeY5JOLZTB
	7ixKQm5ItfYZx631cP4x88yJNxNWn7+x/o6sMfgZs+VTmj606iLl1Ey9tDgvM50p/ksaWiA4A5A
	qbYSjP50LhOUf05PpWMp7rzbhzJQ=
X-Google-Smtp-Source: AGHT+IEZTPrTP19ohID9DJOrlNAM4cEMjE1ZVzkL+6RbUHcbz/uUGqRu+3bVXh1Mp2P2R6zv/U2YETV35GWSkGwy/2A=
X-Received: by 2002:a17:906:68d5:b0:a3f:5c5c:33ac with SMTP id
 y21-20020a17090668d500b00a3f5c5c33acmr1258057ejr.62.1708693243510; Fri, 23
 Feb 2024 05:00:43 -0800 (PST)
MIME-Version: 1.0
References: <20240223-saradcv2-chan-mask-v1-0-84b06a0f623a@theobroma-systems.com>
 <20240223-saradcv2-chan-mask-v1-3-84b06a0f623a@theobroma-systems.com>
In-Reply-To: <20240223-saradcv2-chan-mask-v1-3-84b06a0f623a@theobroma-systems.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 23 Feb 2024 15:00:06 +0200
Message-ID: <CAHp75VfVTJsQDwaPoPgGiT6jnymXAR3WpETqaKai8rXAC70iLw@mail.gmail.com>
Subject: Re: [PATCH 3/3] iio: adc: rockchip_saradc: replace custom logic with devm_reset_control_get_optional_exclusive
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Heiko Stuebner <heiko@sntech.de>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Shreeya Patel <shreeya.patel@collabora.com>, Simon Xue <xxm@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
	linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_050045_979402_FBDBF867 
X-CRM114-Status: UNSURE (   8.40  )
X-CRM114-Notice: Please train this message.
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

T24gRnJpLCBGZWIgMjMsIDIwMjQgYXQgMjo0NuKAr1BNIFF1ZW50aW4gU2NodWx6IDxmb3NzK2tl
cm5lbEAwbGVpbC5uZXQ+IHdyb3RlOgo+Cj4gRnJvbTogUXVlbnRpbiBTY2h1bHogPHF1ZW50aW4u
c2NodWx6QHRoZW9icm9tYS1zeXN0ZW1zLmNvbT4KPgo+IGRldm1fcmVzZXRfY29udHJvbF9nZXRf
b3B0aW9uYWxfZXhjbHVzaXZlIGRvZXMgd2hhdCB0aGlzIGRyaXZlciBpcwoKZGV2bV9yZXNldF9j
b250cm9sX2dldF9vcHRpb25hbF9leGNsdXNpdmUoKQoKPiB0cnlpbmcgdG8gZG8gaW4gaXRzIHBy
b2JlIGZ1bmN0aW9uLCB0aGVyZWZvcmUgbGV0J3Mgc3dpdGNoIG92ZXIgdG8gdGhhdAoKZG8gaXQg
aW4KCj4gc3Vic3lzdGVtIGZ1bmN0aW9uLgoKPiBDYzogUXVlbnRpbiBTY2h1bHogPGZvc3Mra2Vy
bmVsQDBsZWlsLm5ldD4KCllvdSBtYXkgdXNlIHRoZSAtLWNjIG9wdGlvbiB0byBgZ2l0IHNlbmQt
ZW1haWxgIGluc3RlYWQgb2YgcG9sbHV0aW5nCmNvbW1pdCBtZXNzYWdlcywgb3IgbW92ZSB0aGlz
IGFmdGVyIHRoZSAnLS0tJyBjdXR0ZXIgbGluZS4KCi0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5k
eSBTaGV2Y2hlbmtvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
