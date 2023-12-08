Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28A31C4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Dec 2023 10:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QxMOJezZazGos5U2O83tJ6IvoULONZUNJADkgT69B8s=; b=VMj+37c+xEL4NV
	EeOjDbUQjKR1EvG/Cq9qru7vbXxq45z747akFLuddw16+xSJtfzyXcrPRggczk4noDdVVF80EyUmo
	ZbE4tLNbGzEzL3t6IN0V4BZB1CGhU4BO67CM35mJ+Dk/yLFZohgqCY2aI2R6kZByeHhv2iHw+9OaT
	2Hdm/aJxiU3gJljDowSH/pZ7vp4s9VPUm7Flb6hZ/pleBQKKUmzAYvkxmnjyEwz7S8zHlxY+PmulQ
	WD0fBr39I11kRjdW7JyN+u8TUcvVPV9y4dIQBx8b0FvdQdHM4W95/f1sQ+ZikUDZm1gmrG7uvYFWZ
	Nc1QtQiL9ob+ZKMCzEMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBXjA-00FBxP-0X;
	Fri, 08 Dec 2023 10:05:00 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBXj7-00FBwS-10
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Dec 2023 10:04:58 +0000
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a1b75f59a12so240646666b.3
        for <linux-rockchip@lists.infradead.org>; Fri, 08 Dec 2023 02:04:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shantur-com.20230601.gappssmtp.com; s=20230601; t=1702029893; x=1702634693; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=00FETeAeDB2Oynd1eq8vCd/meHjd5He51nMab4m93uo=;
        b=us95tkfJAFA9l9b6YTa7CwQIwmMCZIri94SNCyo1QmZKS3kGtTfYUMvXxcx4uz7/zv
         XwlU7bBNFmjdUuhcAnNugqA2viS9aRoS2oRca5CSDfFLBfv9oP32SYOBI1c/FTA8KbAd
         DINOjfUwQ/5gOZYl6GVYv4waYj21onrBlE1A6+lauvqqZbB4moaXJC87lgC9TRu29JcP
         FuyY7APwTBRHSobVO3W0DYqaUwd2bCfHeQ+yv08s7PhwUnWNojpp0+1PJYc/sPsRXNtK
         CkM4yrWEVyE2zv1bvx3lluh/W+SJGlhUSxJBDFEMrD1a4d7bg5rcWHXAjDr6xeWTU3h+
         B0ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702029893; x=1702634693;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=00FETeAeDB2Oynd1eq8vCd/meHjd5He51nMab4m93uo=;
        b=b7FtrmFpBvGY+F4T28soYURIekRwtF5ML5/WlyZ6q2pkcEZMTQd4imO2CQiMNI9OdZ
         JoHIVFmDAykEp/8NZZd7+PykQV31bcIQVc7jEkx+pHnBQummrYj0g58DnZbIwRp5B2QC
         UXnBbyOQAhHdwuADUhXyJLyAktBWVGLwMQQ8ejYNPtV40GI/aw5LS9/z7GjRFEG6dN1W
         ye4IT8H3xFaCyZj6MQXsMlySY1UyYdrF/qfGJWJjl6cwWRBuWS4q2pW2uKcLwnwj6xeF
         fURi+LLpYG5xCf8aty7zkLPbWkphQH1IdeGFGZQljFxdKuBKkRhu2a+3XQwx2rqk5/4I
         GXAw==
X-Gm-Message-State: AOJu0YwEl0EUN/9VDqzaZAfYmTAiZUXbOgpl3q1OlwOhb9hOoNsM1fkM
	flG3v7XvxXzaVns4IdGeQsqovRoF6i9muD9w0nmlAA==
X-Google-Smtp-Source: AGHT+IGEaPztWub1UIsQkyJSKFjnXMLGAsrym6Nid3ILdFZwUwYLiZRbpYiU1ibXluIP9t+uaKcImQ==
X-Received: by 2002:a17:906:a3d3:b0:a1d:66d:1c21 with SMTP id ca19-20020a170906a3d300b00a1d066d1c21mr1061078ejb.119.1702029892925;
        Fri, 08 Dec 2023 02:04:52 -0800 (PST)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com. [209.85.218.43])
        by smtp.gmail.com with ESMTPSA id v20-20020a170906489400b00a1de512fa24sm796609ejq.191.2023.12.08.02.04.52
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Dec 2023 02:04:52 -0800 (PST)
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a00c200782dso241881966b.1
        for <linux-rockchip@lists.infradead.org>; Fri, 08 Dec 2023 02:04:52 -0800 (PST)
X-Received: by 2002:a17:906:a2d0:b0:a03:d6d0:a0c4 with SMTP id
 by16-20020a170906a2d000b00a03d6d0a0c4mr1276028ejb.44.1702029891955; Fri, 08
 Dec 2023 02:04:51 -0800 (PST)
MIME-Version: 1.0
References: <CAHc5_t0N7tDDKvWvviBXTKK_0UAEtKLxuvMYi8qZ6hp_f6LNew@mail.gmail.com>
 <CAMty3ZDXxNZomicTtMm88SUc9MKmmaKK+GsnnKsOcZqp65ACZw@mail.gmail.com>
In-Reply-To: <CAMty3ZDXxNZomicTtMm88SUc9MKmmaKK+GsnnKsOcZqp65ACZw@mail.gmail.com>
From: Shantur Rathore <i@shantur.com>
Date: Fri, 8 Dec 2023 10:04:39 +0000
X-Gmail-Original-Message-ID: <CAHc5_t0K7jAi-2912tvRwDQZa7aFEZVggskVWV9xAERoh8i5Kg@mail.gmail.com>
Message-ID: <CAHc5_t0K7jAi-2912tvRwDQZa7aFEZVggskVWV9xAERoh8i5Kg@mail.gmail.com>
Subject: Re: Rk3399 - Typec - Extcon
To: Jagan Teki <jagan@amarulasolutions.com>
Cc: Suniel Mahesh <sunil@amarulasolutions.com>, cw00.choi@samsung.com, tom@radxa.com, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231208_020457_576517_0FAEE99F 
X-CRM114-Status: GOOD (  17.43  )
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

SGkgSmFnYW4sCgoKT24gRnJpLCBEZWMgOCwgMjAyMyBhdCA3OjQ14oCvQU0gSmFnYW4gVGVraSA8
amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5jb20+IHdyb3RlOgo+Cj4gSGkgU2hhbnR1ciwKPgo+IE9u
IEZyaSwgRGVjIDgsIDIwMjMgYXQgMjo0MuKAr0FNIFNoYW50dXIgUmF0aG9yZSA8aUBzaGFudHVy
LmNvbT4gd3JvdGU6Cj4gPgo+ID4gSGkgSmFnYW4sCj4gPgo+ID4gV2hpbGUgdHJ5aW5nIHRvIGZp
Z3VyZSBvdXQgaXNzdWVzIHdpdGggVHlwZWMgQWx0TW9kZSArIFN1cGVyU3BlZWQgb24KPiA+IG1h
aW5saW5lIGZvciBSazMzOTkgYmFzZWQgUm9ja1BybzY0LCBJIGNhbWUgYWNyb3NzIHlvdXIgcHJv
cG9zZWQgcGF0Y2gKPiA+IGZvciBUeXBlQyBWaXJ0dWFsIFBEIERyaXZlciBbMF0uCj4gPgo+ID4g
V291bGQgeW91IGtub3cgaWYgdGhlcmUncyBiZWVuIGFueSBvdGhlciBkZXZlbG9wbWVudCBvbiBz
dXBwb3J0aW5nCj4gPiBSb2NrY2hpcC1UeXBlQy1QaHkgd2l0aCBGVVNCMzAyIGJvYXJkcyBsaWtl
IFJvY2tQcm82NCBvciBQaW5lQm9vayBQcm8uCj4gPgo+ID4gWzBdIC0gaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvbGttbC8yMDIwMDkwNDE5MTgzMC4zODcyOTYtMy1qYWdhbkBhbWFydWxhc29sdXRp
b25zLmNvbS9ULyNtN2I1ZDY3NDc2NDM3OTI1MzU2OGE0OTE1ZjJmOTk4OGQ3NGM4NjU5Mwo+Cj4g
MS4gUGh5c2ljYWwgVHlwZS1DIEZVU0IzMDI6IFJPQy1SSzMzOTktUEMgKFBDLCBBbHRtb2RlKQo+
Cj4gVGhpcyBzdXBwb3J0IFBELCBhbmQgQWx0bW9kZS4KPgo+IC0gUEQgcHJvY2VzcyAoaW5jbHVk
aW5nIG5lZ290aWF0aW9uKSBpcyBpbmNvbnNpc3RlbnQgaW4gbWFpbmxpbmUgdGNwbS4KPiBJZiB3
ZSBjb25uZWN0IFBEIHN1cHBseSBib2FyZCB3aWxsIChoYXJkIHJlc2V0KSByZWJvb3QgYW5kIG5l
Z290aWF0aW9uCj4gd29uJ3QgaGFwcGVuIHByb3Blcmx5Lgo+Cj4gMi4gVmlydHVhbCBQRCAoTm90
IHJlbGF0ZWQgdG8gdGhlIHR5cGUtYyBjb25uZWN0b3IgYW5kIEZVU0IzMDIpOiBST0NLCj4gNCBC
b2FyZHMgKEFsdG1vZGUpCj4KPiBUaGlzIGhhcyB0byBiZSBzdXBwb3J0ZWQgdmlhIHNvbWUgZmFr
ZSBjb25uZWN0b3Igd2l0aCBhbHQtbW9kZSBzdXBwb3J0Cj4gdGhhdCBsaW5rcyB0byBEUCBhcyBl
eHRjb24gaXMgbm90IHRoZSB3YXkgdG8gZ28uIFFDIFVTQiBoYXMgc29tZQo+IHNvbHV0aW9ucyBm
b3IgaXQgYnV0IG5lZWQgdG8gZmluZCB0aGUgcHJvcGVyIG9uZXMuCj4KPiBEYSBoYXMgNi4xIFdo
aWNoIGZpeGVzIHN0ZXAgMSBidXQgaXQgYmVjb21lcyBub3Qgc3RhYmxlIGluIExUUyA2LjEgYW5k
Cj4gTWFpbmxpbmUuIFN1bmllbCBoYXMgcHJvZ3Jlc3NlZCBzb21ldGhpbmcgb24gdGhpcyBpbiBM
VFMgNi4xIGFuZAo+IHRyeWluZyB0byBmaXggVENQTSAtbmV4dC4gIE1heSBiZSBoZSB3aWxsIHB1
c2ggc29tZSBwYXRjaGVzIHNvb24gb24KPiB0aGUgbWFpbGluZyBsaXN0Lgo+CgpUaGFua3MsIEkg
d2lsbCBrZWVwIGFuIGV5ZS4KClJlZ2FyZHMsClNoYW50dXIKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
