Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FE6CC5321D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 03:07:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8ngLlJLFXPMK3xEp5HhV0yl5Uk3ieGA3JM4tJlDFne4=; b=ca0UYpa+I4hF/W
	eKRzx4XHgf6HcGNrfcK4+Q79o0TI4fFAeLvmM9aF1yFUSp3OoEQi+Qm2JGsElRzF8iezll8YHBin/
	6VoG+m4NO36AmQ8toDXH3QmMIGkAif62wv8MHlepCHK+ppLeDbTl91VVpddyLQZaTYZVxKoh7kyG9
	+Zj4MobUNwSUTYwKGqjTNy/yb5AthnyhgoUd4m4+rkGWFpdfpIpVLj80zweHDxSwZhJIkWXaLsQTU
	0WtCAvomDT7jl/7SdCiQd9Vk6u3c3wAZbuAyLMQZftOkyziA+7ollG/ruHVu863ytjIbrYwXCeXAn
	wbTyPM4vUIS98PksRe0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1simXu-00000009YXU-3lGD;
	Tue, 27 Aug 2024 03:07:02 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1simX5-00000009YO9-1oSd
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Aug 2024 03:06:14 +0000
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-7142448aaf9so3375114b3a.1
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Aug 2024 20:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724727970; x=1725332770; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F2IxSWIgW9K+Ycy7Q1UnTr8RqMZZFrbF0akh3JGxgko=;
        b=HqEQqtt/yMdnvmquvqAPTNGr84l3XvxSQMk5bZRxrkCRhqee/mEN/iIZbHJN4LnNDe
         v2YBay4LvG2OrNlkOgARn7BPZbJMiApNBpPkkX70SeYrXZg5HNSXQmYhULkunbzFIF3x
         cXtSz7jgPq1yUWksgbqx61nMvQhcpmMBjhmrU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724727970; x=1725332770;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F2IxSWIgW9K+Ycy7Q1UnTr8RqMZZFrbF0akh3JGxgko=;
        b=IZBQURqmVrUfLy/+kzZxSaI8Yd1Fq+5jvdWMfviu8gABSOay1Ca0IJ7SFyM3WDkW2x
         FhOMU9hXEvAlwlRT7Kmaudjzlkwg2B1azfe9sQdTEMrf3Q6Au3I9VF5JLSDpobHvMxRy
         Pq5Agq1Uhle6lJNxFqfQIJxvxl2rni4zyqBB3+jJzJ1qZf8xbkfIyxWxgZ1aiCPb6YY5
         WvDB0afl/Qx/9OYrAw/L+uNp8FL5LYu9w5pw7fsTROtQQxqaUNr5y4CuPrZNY2BFCrp4
         hmkgqFi4FyhsQQbQJKl6FrdztizYw9BIzuIqxZnYbhCpR1TkIoP+4QARIEoDJvxfHog5
         fPZA==
X-Forwarded-Encrypted: i=1; AJvYcCXwYk2eYoH7bKGCVfN0QDz8JTpedFkBR4sKsVdgybYjpr6CB5pp1IE7sfDOBgTFR1P/A0yKkJQht3xoZ1IRfA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwYvN7Gp1oe0+l7qtkHm0hIB2hS3Nam0Hmwy1hKy7bKvq2Ykznf
	IB3H2FEnnMXGN3PQO5FIWAeSjzZ5Y3HiK5ioRmDYLXH6Gzj/UoGNS+yrzTICl9+gp2MdI9ZSJ04
	4YQ==
X-Google-Smtp-Source: AGHT+IHJfQPXFS7OBZFeEFcpK8lf6jesr3Fh/we+IxuK4g10tn0Cews/JiDJcKQ/f1CywsSTfIyZdg==
X-Received: by 2002:a05:6a00:2d8f:b0:704:151d:dcce with SMTP id d2e1a72fcca58-715bff12fb0mr2248094b3a.5.1724727970143;
        Mon, 26 Aug 2024 20:06:10 -0700 (PDT)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com. [209.85.214.179])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7143431052bsm7681470b3a.181.2024.08.26.20.06.09
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2024 20:06:09 -0700 (PDT)
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-202018541afso83665ad.1
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Aug 2024 20:06:09 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVofLaAJ4RuRs9lQgWsx09FBpUgN1mI+WgKIzWPFAnEhyM6ZQcpgocubfmqe5PLVlUXxJiSltW/yUo/63iYkg==@lists.infradead.org
X-Received: by 2002:a17:903:228a:b0:1fc:60f2:a089 with SMTP id
 d9443c01a7336-204e4cb920bmr1085965ad.17.1724727969099; Mon, 26 Aug 2024
 20:06:09 -0700 (PDT)
MIME-Version: 1.0
References: <20240825035422.900370-1-jon.lin@rock-chips.com>
In-Reply-To: <20240825035422.900370-1-jon.lin@rock-chips.com>
From: Brian Norris <briannorris@chromium.org>
Date: Mon, 26 Aug 2024 20:05:56 -0700
X-Gmail-Original-Message-ID: <CA+ASDXOnwQ4Jrz=yo1QS-EAfTN_=FMZ1xtF=2-a8iDC6PwDBSQ@mail.gmail.com>
Message-ID: <CA+ASDXOnwQ4Jrz=yo1QS-EAfTN_=FMZ1xtF=2-a8iDC6PwDBSQ@mail.gmail.com>
Subject: Re: [PATCH] spi: rockchip: Avoid redundant clock disable in pm operation
To: Jon Lin <jon.lin@rock-chips.com>
Cc: broonie@kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, heiko@sntech.de, 
	linux-arm-kernel@lists.infradead.org, linux-spi@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_200612_291577_1AA554BB 
X-CRM114-Status: GOOD (  16.51  )
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

SGkgSm9uLAoKT24gU2F0LCBBdWcgMjQsIDIwMjQgYXQgODo1NeKAr1BNIEpvbiBMaW4gPGpvbi5s
aW5Acm9jay1jaGlwcy5jb20+IHdyb3RlOgo+IC0tLSBhL2RyaXZlcnMvc3BpL3NwaS1yb2NrY2hp
cC5jCj4gKysrIGIvZHJpdmVycy9zcGkvc3BpLXJvY2tjaGlwLmMKPiArI2lmZGVmIENPTkZJR19Q
TV9TTEVFUAo+ICtzdGF0aWMgaW50IHJvY2tjaGlwX3NwaV9zdXNwZW5kKHN0cnVjdCBkZXZpY2Ug
KmRldikKPiAgewo+ICsgICAgICAgaW50IHJldDsKPiAgICAgICAgIHN0cnVjdCBzcGlfY29udHJv
bGxlciAqY3RsciA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+IC0gICAgICAgc3RydWN0IHJvY2tj
aGlwX3NwaSAqcnMgPSBzcGlfY29udHJvbGxlcl9nZXRfZGV2ZGF0YShjdGxyKTsKPgo+IC0gICAg
ICAgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHJzLT5zcGljbGspOwo+IC0gICAgICAgY2xrX2Rpc2Fi
bGVfdW5wcmVwYXJlKHJzLT5hcGJfcGNsayk7Cj4gKyAgICAgICByZXQgPSBzcGlfY29udHJvbGxl
cl9zdXNwZW5kKGN0bHIpOwo+ICsgICAgICAgaWYgKHJldCA8IDApCj4gKyAgICAgICAgICAgICAg
IHJldHVybiByZXQ7Cj4gKwo+ICsgICAgICAgLyogQXZvaWQgcmVkdW5kYW50IGNsb2NrIGRpc2Fi
bGUgKi8KPiArICAgICAgIGlmICghcG1fcnVudGltZV9zdGF0dXNfc3VzcGVuZGVkKGRldikpCj4g
KyAgICAgICAgICAgICAgIHJvY2tjaGlwX3NwaV9ydW50aW1lX3N1c3BlbmQoZGV2KTsKCnJvY2tj
aGlwX3NwaV9ydW50aW1lX3N1c3BlbmQoKSByZXR1cm5zIGFuIGVycm9yIGNvZGUuIEkgdW5kZXJz
dGFuZAp0aGF0IGl0IGRvZXNuJ3QgYWN0dWFsbHkgZmFpbCBpbiBwcmFjdGljZSwgYnV0IHlvdSBz
aG91bGQgcHJvYmFibHkKY2hlY2sgaXQgYW55d2F5LgoKPiArCj4gKyAgICAgICBwaW5jdHJsX3Bt
X3NlbGVjdF9zbGVlcF9zdGF0ZShkZXYpOwo+Cj4gICAgICAgICByZXR1cm4gMDsKPiAgfQo+Cj4g
LXN0YXRpYyBpbnQgcm9ja2NoaXBfc3BpX3J1bnRpbWVfcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRl
dikKPiArc3RhdGljIGludCByb2NrY2hpcF9zcGlfcmVzdW1lKHN0cnVjdCBkZXZpY2UgKmRldikK
PiAgewo+ICAgICAgICAgaW50IHJldDsKPiAgICAgICAgIHN0cnVjdCBzcGlfY29udHJvbGxlciAq
Y3RsciA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+IC0gICAgICAgc3RydWN0IHJvY2tjaGlwX3Nw
aSAqcnMgPSBzcGlfY29udHJvbGxlcl9nZXRfZGV2ZGF0YShjdGxyKTsKPgo+IC0gICAgICAgcmV0
ID0gY2xrX3ByZXBhcmVfZW5hYmxlKHJzLT5hcGJfcGNsayk7Cj4gLSAgICAgICBpZiAocmV0IDwg
MCkKPiAtICAgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiArICAgICAgIHBpbmN0cmxfcG1fc2Vs
ZWN0X2RlZmF1bHRfc3RhdGUoZGV2KTsKPgo+IC0gICAgICAgcmV0ID0gY2xrX3ByZXBhcmVfZW5h
YmxlKHJzLT5zcGljbGspOwo+ICsgICAgICAgaWYgKCFwbV9ydW50aW1lX3N0YXR1c19zdXNwZW5k
ZWQoZGV2KSkgewo+ICsgICAgICAgICAgICAgICByZXQgPSByb2NrY2hpcF9zcGlfcnVudGltZV9y
ZXN1bWUoZGV2KTsKPiArICAgICAgICAgICAgICAgaWYgKHJldCA8IDApCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgcmV0dXJuIHJldDsKPiArICAgICAgIH0KPiArCj4gKyAgICAgICByZXQgPSBz
cGlfY29udHJvbGxlcl9yZXN1bWUoY3Rscik7Cj4gICAgICAgICBpZiAocmV0IDwgMCkKPiAtICAg
ICAgICAgICAgICAgY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHJzLT5hcGJfcGNsayk7Cj4gKyAgICAg
ICAgICAgICAgIHJvY2tjaGlwX3NwaV9ydW50aW1lX3N1c3BlbmQoZGV2KTsKCkkgZG9uJ3QgdGhp
bmsgdGhpcyBpcyB2YWxpZCBlcnJvciBoYW5kbGluZy4gQUZBSUssIGZhaWxpbmcgdGhlCnJlc3Vt
ZSgpIGZ1bmN0aW9uIGRvZXNuJ3QgYWN0dWFsbHkgImRpc2FibGUiIHRoZSBkZXZpY2UgaW4gYW55
IHdheQooaXQncyBqdXN0IGluZm9ybWF0aXZlIGF0IGJlc3QpLCBzbyB3ZSBwcm9iYWJseSBzaG91
bGRuJ3QgZGlzYWJsZQpjbG9ja3MgaGVyZS4gT3RoZXJ3aXNlLCB5b3UgbWlnaHQgbGVhdmUgdGhl
IGNsb2NrIGRpc2FibGVkIHdoaWxlIHRoZQpydW50aW1lIFBNIGZyYW1ld29yayB0aGlua3MgaXQn
cyBlbmFibGVkLgoKQnJpYW4KCj4KPiAgICAgICAgIHJldHVybiAwOwo+ICB9Cj4gLS0KPiAyLjM0
LjEKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
