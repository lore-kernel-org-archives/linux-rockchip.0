Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 991BBD116F6
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Dec 2025 13:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ywKRMCCVyJtTLLxayisSXi7yI8QuN8yueqJviiB9mlg=; b=N1fYG6h6yg0L1b
	BXR8BM4NYTp+3JRDU8q5FqnquIdfj7jWFv9UgsecVfLpIwuUIwsH2OKSTHrQ51aT5tm8HLYkGrtp4
	aNIwtpIbdonkVeBXGtiZG4ODmxVDhClpKWNvkimmuxrjChxUqMnjYh/zYuPVU4NWVOkZOg9YaYlFW
	U9hkS9OTHjUiV7Ls+fld99gNQuYZx3xChZ6BavbPAWahyM0nIN63CpHHHErZvpz/QwN5X+n5giHC/
	Z5JQcwgnw0RzGKVKBm6sbidoZln9zMphElF+CvVuAGZJao/PKLw1c8QQA/pb6r85MnTvTDnOjnEu7
	LcZyszOL+Wd7uw0ZRyuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQQHH-00000005QNk-1SLM;
	Tue, 02 Dec 2025 13:18:47 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQQHE-00000005QMo-2EEn
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Dec 2025 13:18:46 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-59578e38613so4280788e87.2
        for <linux-rockchip@lists.infradead.org>; Tue, 02 Dec 2025 05:18:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1764681522; x=1765286322; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=d2qTS0djCtlvzenkDRiQ4JmBu4W3Dqf8pIaygUtSKbc=;
        b=P6gzwwHM6doo27prj7sHUNh9AadaJz/0jad0JZHfwNU1tDvtCPZbhszP0E7vOT2Qis
         TQdUX1fUgwga3HKzEuFveTvxEnGn5srkgMHGgHCPRcGZq3qTeZ3B96YAxVbG1p7fYfOM
         9vX0HJzAXK0Qlh5tJebC22yI2ot69en2yqkZubjXBe1J6JYub6cEWpg6YcDfhva+2x/n
         0yxZ9BqC5gg0xayjoFkDyKaBWPA221Vrmin8hdLKZSyoHiTvwgrcceFv61H8S8cDZORq
         b0Kh1Hb5RlGqiTsu4xWf6dIXGZ/gvft6fFnh30izmbg7IkmeleSJd7vNDBd0hieVZeW1
         oHgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764681522; x=1765286322;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=d2qTS0djCtlvzenkDRiQ4JmBu4W3Dqf8pIaygUtSKbc=;
        b=IiFJJXWjOtz0D/OiV4ZyEBe5poO/EkvjKtqNCjvtC2A6GelD6oST/RLvINOM3D1S5e
         LcYAmp/zCS6b0T0jrwqCwbnh1GcSL7AGzQrP16qlwZZdINyvhID7rudLzJ/a+YFxzEKN
         p0pn+cKrsOm3q9wdu7M5qgsFpIb1kOdjuvV22FKi1llctJMjI+R78U6WF9a7zWuTPcuQ
         qFh6hXlSXoN5BPZD4hH5y2nJC4sKVkgaTIK+gT8mqRxf5Sp8nXMWhuX59vl5mblsxrPx
         Gu2YAs9MANaX+S+cqV7OHToKT68J2gblzejqnCxqQh4frWfUTRivxoNH3CgVb+lADIb+
         i0xQ==
X-Forwarded-Encrypted: i=1; AJvYcCVGZVaWe8x6RRXkUCsUGh1sSyHiuiNXdC/ghUUakxYxgP9BQbP7vjGkxBx45pMOQ5D5yZ8ifQHEm8+eAaOOOA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyLRp/AbiUCfOaqdWxhRvaZ7tgp/0+ujlKX0zT3UFK7Cn38cRKo
	3sBHXYHRxSew8oxZw0PNO1BAdCjMqkvtUoq6MejHPYGvh+V1e2e/WnoZI1Mt8kCnk96pQutyLac
	T5Eib/n8OAGUft014ux+RYKHehfy9EV+YNJP3IZTp+w==
X-Gm-Gg: ASbGncscjljZuabugDtqizbCaJWBb3Vd8H7mGuVfQnztnTSn9yJ+DtwJBsfbQI6sebF
	LFQzoyaxIvyxdirxOuWU13ZdtZy25JAMqDfV7pHI6ijU3ExOlI0dJjYcioSuXJzgMt9DwzI5D9c
	oZDzPl7FGwvyGMmYOPaKZcXLkbpM5uCejzpgUo8QRfKrsH05VSevgEzjJ8WHNBODV/UdfjrAyhZ
	lgscvqz79hsPXSiSXsCz/uXvrMZudiO9OXbJ2pyb8NoTLvcbTka1f7OCL8BRHAZBUkBibHvY9M+
	AgoO+mGAYmM9CJ09t3MXcGSziKjb
X-Google-Smtp-Source: AGHT+IHXPq/1WU7Y6p5Y1lD+k5wDuWG4cZs/H+fFh7MfEyTT0+oPBhUYEG6IeIhzVNqgsaoRyEt5M7vDP9CoP0oYIqI=
X-Received: by 2002:a05:6512:159c:b0:595:9152:b932 with SMTP id
 2adb3069b0e04-596b526c87bmr9950731e87.47.1764681521679; Tue, 02 Dec 2025
 05:18:41 -0800 (PST)
MIME-Version: 1.0
References: <20251031104846.119503-1-marco.crivellari@suse.com>
In-Reply-To: <20251031104846.119503-1-marco.crivellari@suse.com>
From: Marco Crivellari <marco.crivellari@suse.com>
Date: Tue, 2 Dec 2025 14:18:30 +0100
X-Gm-Features: AWmQ_blWaASpaRpR4V19dOIxX8T97Dq9h1s9NUCUDv7AzhCvoFkKrXxIheilGew
Message-ID: <CAAofZF7BnLm3XKBVsOvAcfON29PgxvA4dfkd4N4+yx40LSTV-A@mail.gmail.com>
Subject: Re: [PATCH 0/2] rename system_wq and system_unbound_wq
To: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Cc: Tejun Heo <tj@kernel.org>, Lai Jiangshan <jiangshanlai@gmail.com>, 
	Frederic Weisbecker <frederic@kernel.org>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
	Michal Hocko <mhocko@suse.com>, Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_051844_583146_D2B870D2 
X-CRM114-Status: UNSURE (   8.81  )
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

SGksCgpPbiBGcmksIE9jdCAzMSwgMjAyNSBhdCAxMTo0OOKAr0FNIE1hcmNvIENyaXZlbGxhcmkK
PG1hcmNvLmNyaXZlbGxhcmlAc3VzZS5jb20+IHdyb3RlOgo+IE1hcmNvIENyaXZlbGxhcmkgKDIp
Ogo+ICAgZHJtL3JvY2tjaGlwOiByZXBsYWNlIHVzZSBvZiBzeXN0ZW1fdW5ib3VuZF93cSB3aXRo
IHN5c3RlbV9kZmxfd3EKPiAgIGRybS9yb2NrY2hpcDogcmVwbGFjZSB1c2Ugb2Ygc3lzdGVtX3dx
IHdpdGggc3lzdGVtX3BlcmNwdV93cQo+Cj4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19o
ZG1pX3FwLXJvY2tjaGlwLmMgfCA0ICsrLS0KPiAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3Jv
Y2tjaGlwX2RybV92b3AuYyAgICB8IDIgKy0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKyksIDMgZGVsZXRpb25zKC0pCgpHZW50bGUgcGluZyBhYm91dCB0aGlzLgoKVGhhbmtzIQoK
LS0gCgpNYXJjbyBDcml2ZWxsYXJpCgpMMyBTdXBwb3J0IEVuZ2luZWVyLCBUZWNobm9sb2d5ICYg
UHJvZHVjdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
