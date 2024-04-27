Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A7F3C4345F
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Apr 2024 07:17:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0CHeTtkcjmwBMVdfksQYGiBfSBltRFt6g1duQjwTpwQ=; b=1w01lS98UYqzSk
	gpcyEbOSV9Um0D18NPvqcdAdB7uPDHILcn3U+gnpyv3SANg9jqgpWIa0jPLSWlpdUAKJahPp8gQwt
	Fpv0FRKPl6eXAzKZl2qjIgGsO4ACfYHdAypYOtErBMy33Fxnc+fdEJ7JsCxlzjMthq/hsjGi+/ewJ
	Wb09LoG5vLrJGjPUfpG4FHXbJDjzf5BWDRaVyB8wd9vyzFPnIjll3WVDaE85LNefH9jldzifGN2Vt
	y/Vmh95GtMocF9KKmzgR8FSovL9aDMccNU2WvLMSBvmLTsNrWxZeSjS0skPqzC+IH4KWz/d/aYlH5
	wuboQpxehwjtUbERZuAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0cJa-0000000F2U9-3sQO;
	Sat, 27 Apr 2024 07:17:42 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s0cJX-0000000F2Rz-0MGs;
	Sat, 27 Apr 2024 07:17:40 +0000
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-5e4f79007ffso1847665a12.2;
        Sat, 27 Apr 2024 00:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714202255; x=1714807055; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=X8kCB3I1nqc74i13dcnZcbSCBOzeY8bK9si08l2dEgE=;
        b=Qslyn0RGu8njG5idbhRTl2ZlEyUbZmSbepGh87vleJUQsoS6D9kWrm2Bu4MpVEGiyf
         iJYJAq3TmCOHRGzIyzxDjRj91xG/s/m6Kuc/QQpGNZRuUNo3/mjHObE6td32h9NCMIq5
         50rQ0YdNmXHxSaPy8DKB5+nIWiyVRsFB4nQo9HhhgEHa3P2r/wfHKX90BnvgPjUyq8cL
         8H8E0HzPf5MbxT34sCC3FeqSDsFBBUWpmkG71ka5fOPO5XnOqvCiAqCnjNSeOTGxD218
         Nf05xNLJNVMsHn9VGgZvBgy2mMGP18ro2rgdUxgMhOmomKs2kfzXHWMdZrPalQ22LTs3
         10AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714202255; x=1714807055;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X8kCB3I1nqc74i13dcnZcbSCBOzeY8bK9si08l2dEgE=;
        b=vwFqkdoWZ8pUlMWZSgv0Gp8U2nnn3uqyQUDNsux1xiGlrpVlzs87g1G9pPKTHl+eAF
         ldZmzCu4fcArFIs2Vi5Kwa8JZGfkDUuW/hzuwT/69yPqS54U+05GHhzwgc0Iga0neHIn
         6x2NsEnx0TcvUPw/eaM9hrOoyAy5KxJ9DMgDHKgXHMiOkzrY8pKZq3iVE76xN48QY8aO
         +A0Fg3Bx7FzDop2he5ztmRqcBv1MOaARKds//oC6xl7X0XXixg3kvx4qXKo2GKu5SmpJ
         f67MKaKUDgcCR/Azar7w+of1c55sE9ZezZ4Si7GXlDBUGkTb4FUIBxVhb0IN89ZPXl6Z
         xx9g==
X-Forwarded-Encrypted: i=1; AJvYcCWL+qMJVNCUD9hQu5dgOzGQWKoWOtY39aKXAjOvtJNNfRkdqh7SKZCy2+Bb3DcTd/pgXEk2CvaAPS70C6VkG1zh0Y6J2LJWGfpAWIkdzIPL6iWueCj99pNycFrR6ZoYGfocsvX8s77vetVoZoLStHrQCBAYJuMswQs=
X-Gm-Message-State: AOJu0YzHE/EeJtp00+i76EqjHUOF6HJZPYXbgmxZD9vmdqoRjqaq8CoH
	Rw8wg1zVV6I/y/MiCLeuqK/ldj5U7Jpj+9RRA7eVxagonp0WoomF
X-Google-Smtp-Source: AGHT+IHWfWgdcQqxoTVmFJIu2SLzNm3A0qQRERzEXLa7neH1QrNrTJ0T8DF6bh4XJ6eY6mQO553c/Q==
X-Received: by 2002:a17:90b:1d01:b0:2a2:bd4b:764f with SMTP id on1-20020a17090b1d0100b002a2bd4b764fmr4481541pjb.3.1714202255374;
        Sat, 27 Apr 2024 00:17:35 -0700 (PDT)
Received: from toyko-2.5 ([45.32.55.39])
        by smtp.gmail.com with ESMTPSA id e14-20020a17090ab38e00b002a03456ccabsm17233086pjr.30.2024.04.27.00.16.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Apr 2024 00:17:34 -0700 (PDT)
From: Jianfeng Liu <liujianfeng1994@gmail.com>
To: linkmauve@linkmauve.fr
Cc: andy.yan@rock-chips.com,
	conor+dt@kernel.org,
	cristian.ciocaltea@collabora.com,
	devicetree@vger.kernel.org,
	dsimic@manjaro.org,
	ezequiel@vanguardiasur.com.ar,
	frattaroli.nicolas@gmail.com,
	heiko@sntech.de,
	iommu@lists.linux.dev,
	joro@8bytes.org,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	macromorgan@hotmail.com,
	mchehab@kernel.org,
	p.zabel@pengutronix.de,
	robh@kernel.org,
	robin.murphy@arm.com,
	sebastian.reichel@collabora.com,
	shreeya.patel@collabora.com,
	will@kernel.org,
	sigmaris@gmail.com,
	nicolas@ndufresne.ca
Subject: Re: [PATCH v4 0/2] Enable JPEG encoding on rk3588
Date: Sat, 27 Apr 2024 15:16:38 +0800
Message-Id: <20240427071638.79915-1-liujianfeng1994@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240418141509.2485053-1-linkmauve@linkmauve.fr>
References: <20240418141509.2485053-1-linkmauve@linkmauve.fr>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240427_001739_203061_DBBA7357 
X-CRM114-Status: UNSURE (   8.06  )
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

SGkgRW1tYW51ZWwsCgpPbiBUaHUsIDE4IEFwciAyMDI0IDE2OjE1OjA0ICswMjAwLCBFbW1hbnVl
bCBHaWwgUGV5cm90IHdyb3RlOgo+LSBPbmx5IGV4cG9zZSBhIHNpbmdsZSBWRVBVMTIxLCBzaW5j
ZSB0aGUgZHJpdmVyIGRvZXNu4oCZdCB5ZXQgc3VwcG9ydAo+ICBleHBvc2luZyB0aGVtIGFsbCBh
cyBhIHNpbmdsZSB2aWRlbyBub2RlIHRvIHVzZXJzcGFjZS4KSSdtIGFsc28gZG9pbmcgd29yayB3
aXRoIHRoZSBoYW50cm8gbm9kZSBvbiByazM1ODggd2hpY2ggaGFzIGJvdGggdmRwdQphbmQgdmVw
dS4gRGlzY3Vzc2lvbnMgY2FuIGJlIGZvdW5kIGhlcmVbMV0uIElmIEkgZW5hYmxlIHRoZSBqcGVn
IGVuY29kZXIKYXQgZmViNTAwMDAsIHdvdWxkIGl0IGNhdXNlIGFueSBzaWRlIGVmZmVjdHMgaWYg
b3RoZXIganBlZyBlbmNvZGVycyBpbgp5b3VyIHBhdGNoIGFyZSBlbmFibGVkPyBBbmQgd2hhdCdz
IHRoZSBkaXNhZHZhbnRhZ2Ugb2YgZW5hYmxpbmcgbXVsdGkKanBlZyBlbmRvZXJzIGluIGRldmlj
ZXRyZWU/CgpbMV0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXJv
Y2tjaGlwL3BhdGNoLzIwMjQwNDE4MTExMDAyLjgzMDE1LTMtbGl1amlhbmZlbmcxOTk0QGdtYWls
LmNvbS8KCkJlc3QgcmVnYXJkcywKSmlhbmZlbmcKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
