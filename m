Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 190EBC71157
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jun 2025 13:24:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KKGFBd8r3Ahvx3lmxeZwkoadUBK1ZdU3ZBcr2tkP4kw=; b=JLMkrwsqDyQpyG
	SOlG7YpCIRhNjVlay+M9ln7V43dXvuJR41WnHWI7uDMV2dURalPckbhd/1Qdao1QT0yjt6WK15YuJ
	ngRojRIN7yQpCwsm4AL9vCbsiNR9qmFpL8AkrYACmyc2eSwTt6z7Lvvn9Zl9Djpxj60f3LUNzGdgh
	hdVGH6v8USZcC+MIFVNAgNAzZLhxnz3qLmgaOnak+htxew8H6R0Cy/Eq/ckm/Av4h6BQbwgfmtk20
	04UU7E9UEYqKGZxGQZnjw/pvPVGUxUVhr2B26e4gqcDWtgKPb6ZuikGOiFAxGSZ1sR0C7z0MtV1qq
	MyiQTKVNKa4pKK9694AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRWIT-00000007L4x-1ZAH;
	Tue, 17 Jun 2025 13:24:17 +0000
Received: from mail-vk1-xa31.google.com ([2607:f8b0:4864:20::a31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRVul-00000007G9j-1bwK;
	Tue, 17 Jun 2025 12:59:48 +0000
Received: by mail-vk1-xa31.google.com with SMTP id 71dfb90a1353d-525b44b7720so1330720e0c.0;
        Tue, 17 Jun 2025 05:59:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750165186; x=1750769986; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IJGnTu2P8k2zWLpKT9gQ0C6Ynav6qAdbDTnXBuG6SzE=;
        b=GhHBkvYdbeLm5S2p5fAes7jUJHQVt0WXgJHjiqy8nWJRyLMNIwQBwszHngsMB5MWfn
         WTpj5ZQnmUVA+xJS6bMGGhwjuHZG0hLLIrn/MtZW4BlIxn4hCv6KI1u6nqEZxxMNZEr+
         iq3yae2Y8VJON+KsIYCLOxoQ5AeT5J/wu7mL5I3L7LmZHDRaDZITwhrQ3S0y8IYPZLn5
         gi84r/5JKJeAWA6ZpwgxnbXJd+mzl33z+bZzKkuV/8othcW7/6A8BgvXfDAIGIeeEkH6
         f4iZGt9aHpPYTU/qXNnl3zOvBaHLIv+Ma/j3i3WoKpzolcPVECaM+sUHdvqiyMdfQFbg
         uWBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750165186; x=1750769986;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IJGnTu2P8k2zWLpKT9gQ0C6Ynav6qAdbDTnXBuG6SzE=;
        b=lwi/rw9ScsyafSiTtNdswiJV5KMB9JR4thbIrjtRG5dVWsOgI6yt0c+/cVDQyKiwir
         ySKG2H/7qRfQsgQ6WKAv3J3ZOqWwTAo8w7uwwB1BUL/vik7VHZ6nOEw9LLz/OTZXpfHa
         PCwWAGVWkc2PAPmjseLSoZ97HYKZkL/UrituOnU+8OSnoDDBH5Hwzh9b/dMb8x5eALCt
         YCWK/Qh0EcuiFad4eR6EMZrIAVh4wFxQI50Xbzrk046ZuLQi+mEzoztLRDZ1xCplA/92
         aPboTpUbsQ5Z9Wwbo9gCaoMTZQlyoniCFy4b8CjbswKWqDBOOSGDES+0i41/xq6sfmQ6
         86lQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFVIl5SvRpSxkIRjXOvMsbidJOYHpk4f5oVspO4U/0viiag99Hq2lB1z4JMreuiY4tv6OnE31QrvL2wRRvDt0=@lists.infradead.org, AJvYcCWnCWiRkhZE7qH/pPF3mYRncWkSIAiqC6jAqutIg7LuwxqvnFxaMjc8MQsmq/M3q6X8mt+oJoQy45PEYxyVcw==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywj/5toczqYiGSb7Dn1uhNMbMJEhyZDpGukjxo4JJ8X5f0U0bHX
	MAF8/tc6gRkr4lMOkAAnv/Vz768OGNxbvrbb0nVUxNic7WimVvMCGprvQq9lMfScC3S4KonP/f/
	FePnh9R0Wb04BrLPXgjv6RZbOsQkgMpl+01dT
X-Gm-Gg: ASbGncvJxtPRZVSXV8JFYN2TQBqpmpSvaA9/ywOauTKJcr45aU/k4eE2PUMAdz51ZM9
	8ckXg1vUGpokENvJq5KLI3SApHVhr6tsPQwv482AUIOOx0OrfW0miGBi0SVS5p1rGsYrhCCGoUp
	pHaSpF37mUKRZ+GRlmuGVrNkwlCE0nxPqIDNqZouwtag==
X-Google-Smtp-Source: AGHT+IFyDxk9ofOoSE1jUdDwuXC6uj68bPw86gFHeN0xbFulbam2J1M/auQRgbuNa5uXdcywAXE8tSUc/+x2hYqgo2M=
X-Received: by 2002:a05:6122:4586:b0:52f:47de:3700 with SMTP id
 71dfb90a1353d-53149677e4amr8402312e0c.5.1750165185838; Tue, 17 Jun 2025
 05:59:45 -0700 (PDT)
MIME-Version: 1.0
References: <20250613090431.127087-1-tzimmermann@suse.de> <20250613090431.127087-8-tzimmermann@suse.de>
In-Reply-To: <20250613090431.127087-8-tzimmermann@suse.de>
From: Inki Dae <daeinki@gmail.com>
Date: Tue, 17 Jun 2025 21:59:08 +0900
X-Gm-Features: Ac12FXy1YqAOwtksyoMPU_mcRXzK8GOxRWP5F_To6gWRQ1V5y95DviShSwJIG6g
Message-ID: <CAAQKjZOiz3Z42N_GEPzqU=CCfim+Z7oCuyxuji6Guj_dKYsimw@mail.gmail.com>
Subject: Re: [PATCH v5 07/25] drm/exynos: Compute dumb-buffer sizes with drm_mode_size_dumb()
To: Thomas Zimmermann <tzimmermann@suse.de>
Cc: simona@ffwll.ch, airlied@gmail.com, mripard@kernel.org, 
	maarten.lankhorst@linux.intel.com, geert@linux-m68k.org, 
	tomi.valkeinen@ideasonboard.com, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, freedreno@lists.freedesktop.org, 
	linux-arm-msm@vger.kernel.org, imx@lists.linux.dev, 
	linux-samsung-soc@vger.kernel.org, nouveau@lists.freedesktop.org, 
	virtualization@lists.linux.dev, spice-devel@lists.freedesktop.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-tegra@vger.kernel.org, intel-xe@lists.freedesktop.org, 
	xen-devel@lists.xenproject.org, Seung-Woo Kim <sw0312.kim@samsung.com>, 
	Kyungmin Park <kyungmin.park@samsung.com>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_055947_422879_115E81CC 
X-CRM114-Status: GOOD (  14.31  )
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

MjAyNeuFhCA27JuUIDEz7J28ICjquIgpIOyYpO2bhCA2OjA1LCBUaG9tYXMgWmltbWVybWFubiA8
dHppbW1lcm1hbm5Ac3VzZS5kZT7ri5jsnbQg7J6R7ISxOgo+Cj4gQ2FsbCBkcm1fbW9kZV9zaXpl
X2R1bWIoKSB0byBjb21wdXRlIGR1bWItYnVmZmVyIHNjYW5saW5lIHBpdGNoIGFuZAo+IGJ1ZmZl
ciBzaXplLiBObyBhbGlnbm1lbnQgcmVxdWlyZWQuCj4KCkFja2VkLWJ5IDogSW5raSBEYWUgPGlu
a2kuZGFlQHNhbXN1bmcuY29tPgoKVGhhbmtzLApJbmtpIERhZQoKPiBTaWduZWQtb2ZmLWJ5OiBU
aG9tYXMgWmltbWVybWFubiA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KPiBDYzogSW5raSBEYWUgPGlu
a2kuZGFlQHNhbXN1bmcuY29tPgo+IENjOiBTZXVuZy1Xb28gS2ltIDxzdzAzMTIua2ltQHNhbXN1
bmcuY29tPgo+IENjOiBLeXVuZ21pbiBQYXJrIDxreXVuZ21pbi5wYXJrQHNhbXN1bmcuY29tPgo+
IENjOiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnprQGtlcm5lbC5vcmc+Cj4gQ2M6IEFsaW0gQWto
dGFyIDxhbGltLmFraHRhckBzYW1zdW5nLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2V4
eW5vcy9leHlub3NfZHJtX2dlbS5jIHwgOCArKysrKy0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgNSBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9leHlub3MvZXh5bm9zX2RybV9nZW0uYyBiL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5
bm9zX2RybV9nZW0uYwo+IGluZGV4IDQ3ODdmZWU0Njk2Zi4uZmZhMWMwMmI0YjFlIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9nZW0uYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9leHlub3MvZXh5bm9zX2RybV9nZW0uYwo+IEBAIC0xMSw2ICsxMSw3IEBA
Cj4gICNpbmNsdWRlIDxsaW51eC9zaG1lbV9mcy5oPgo+ICAjaW5jbHVkZSA8bGludXgvbW9kdWxl
Lmg+Cj4KPiArI2luY2x1ZGUgPGRybS9kcm1fZHVtYl9idWZmZXJzLmg+Cj4gICNpbmNsdWRlIDxk
cm0vZHJtX3ByaW1lLmg+Cj4gICNpbmNsdWRlIDxkcm0vZHJtX3ZtYV9tYW5hZ2VyLmg+Cj4gICNp
bmNsdWRlIDxkcm0vZXh5bm9zX2RybS5oPgo+IEBAIC0zMzAsMTUgKzMzMSwxNiBAQCBpbnQgZXh5
bm9zX2RybV9nZW1fZHVtYl9jcmVhdGUoc3RydWN0IGRybV9maWxlICpmaWxlX3ByaXYsCj4gICAg
ICAgICB1bnNpZ25lZCBpbnQgZmxhZ3M7Cj4gICAgICAgICBpbnQgcmV0Owo+Cj4gKyAgICAgICBy
ZXQgPSBkcm1fbW9kZV9zaXplX2R1bWIoZGV2LCBhcmdzLCAwLCAwKTsKPiArICAgICAgIGlmIChy
ZXQpCj4gKyAgICAgICAgICAgICAgIHJldHVybiByZXQ7Cj4gKwo+ICAgICAgICAgLyoKPiAgICAg
ICAgICAqIGFsbG9jYXRlIG1lbW9yeSB0byBiZSB1c2VkIGZvciBmcmFtZWJ1ZmZlci4KPiAgICAg
ICAgICAqIC0gdGhpcyBjYWxsYmFjayB3b3VsZCBiZSBjYWxsZWQgYnkgdXNlciBhcHBsaWNhdGlv
bgo+ICAgICAgICAgICogICAgICB3aXRoIERSTV9JT0NUTF9NT0RFX0NSRUFURV9EVU1CIGNvbW1h
bmQuCj4gICAgICAgICAgKi8KPgo+IC0gICAgICAgYXJncy0+cGl0Y2ggPSBhcmdzLT53aWR0aCAq
ICgoYXJncy0+YnBwICsgNykgLyA4KTsKPiAtICAgICAgIGFyZ3MtPnNpemUgPSBhcmdzLT5waXRj
aCAqIGFyZ3MtPmhlaWdodDsKPiAtCj4gICAgICAgICBpZiAoaXNfZHJtX2lvbW11X3N1cHBvcnRl
ZChkZXYpKQo+ICAgICAgICAgICAgICAgICBmbGFncyA9IEVYWU5PU19CT19OT05DT05USUcgfCBF
WFlOT1NfQk9fV0M7Cj4gICAgICAgICBlbHNlCj4gLS0KPiAyLjQ5LjAKPgo+CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
