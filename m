Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA8E6C71157
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Jun 2025 05:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tXcYo3N7oBs6hvBnxbswE2n/fJmJiIyNZTuYRpe6lcU=; b=lrPgJo9dNTSv/T
	O2twgQPiOcoPv3HqcAk2szOLS950G96973eA0Irc5eNWe3wCW58d/qvSrMuqOrhKOCE9kYxLdVCvp
	BU2oq53x8u18xedAH6Cg31ENaYz4g9ZeecCEETsyYS5vLPlaFH42HBiY9EZDDDY22AvQ++9kPWAZ+
	ihp580AwCC1fFA3pjZo+1eGZdMUfhbnMaMBPKjESqnTdi2Imu3CU/dH1hJfRj8Lk6PJ1J7XGgFYul
	3d0jyT7j7rFzgw6WW8aKE5fKvt2a+WY3heSWtxRbV5puSxUAg78xEiRvP8BTTg/xw8yX9z2uslzbU
	Hg2gyUCgZ1m1gy8MxuWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTvrp-00000004ef5-2zjr;
	Tue, 24 Jun 2025 05:06:45 +0000
Received: from mail-yw1-x112e.google.com ([2607:f8b0:4864:20::112e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTvpK-00000004eWg-17s0
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Jun 2025 05:04:12 +0000
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-70e6bddc30aso42433027b3.0
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Jun 2025 22:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1750741448; x=1751346248; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZqEyiR61C1W0/+KTWzUiTKCsg/9mevRSEFCD7wnXFig=;
        b=b//4Pz7NGu/eaUjbAvfAKPZpzIEHtLy2mL5XPvxFNYWMatviHt04hEczV1lyezLC3p
         5EMj4X5+stYJuEKnvtATSgF7g9aRr+Vp96k8FfGmBheNaCxU2LSpAT8CfBSnDJmz85Sc
         BLWNk0W0oSeV9wyN5tF8Apqvt86bk/UOReDeTGct/knx21+108SdlTMT6XlNojahGca7
         0/QJfAKeidCO98lbWua2+tRCZscjiRPMFUijAzoDepDvrZek5oIWfYUpE1VmSIbRk31J
         VIi8hNPUU+ypa81ddT0axKxMofGTfI2HyaoHzVmNy981IyyOyh9ey43rH0Lep21bvwBi
         Fgpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750741448; x=1751346248;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZqEyiR61C1W0/+KTWzUiTKCsg/9mevRSEFCD7wnXFig=;
        b=MMqwIeZSK9Hbe3cAanf+MrCvVQA/0/zzIJVn7Su6Ajwr2EXDWpo2wYSci3U06DZ0Zv
         WMG4kiJdZyvKMMSnA2pjWKX/pIg9ORtkG6aka6CMVJmc5wXUVeubq6jZq+kxnw2OFzq7
         UCbe7hggdfG8Du6DzzjVrNnsxpFe6N8s+IdqXAi7MZWPvhOB/fzhv4AuWMYJQ1A01H74
         78c34cXC8uF54vZ51dauqTTbLSDDCWSzxsnU0NQaTxcPnUGKQU9/gPYmx9edhOYwOgRC
         bygp7MTgFFzzFA6FxvCpOdTlbrkQQKQggcxswbIe1r3nZNik82tUlS4PTMtVrEy+gD3n
         MYFA==
X-Forwarded-Encrypted: i=1; AJvYcCUEl/W3bf/1CxlC4MbCY8n1JEbDW1bGqP/aGsb1RZOZrFy0XY3wZjODkHHs9GdjS3fIL2VdhzZLJ72unAn/8w==@lists.infradead.org
X-Gm-Message-State: AOJu0YzbtdDT82ORK+fg6Hi7DTkiuhgqLVXQuL1Txm7XVPGcEeJiMFJL
	+y3DrFs3YVurltWHkEB8Z1fVQlP6zurlxRFIg7ZxgNE2QzffUTuvn3HBOpr5zhEtTFN5ZTUmQHE
	g576W1yy4qQ==
X-Gm-Gg: ASbGncuf6dbOS8edHXoOAqvD0CXDAd/GrYkjrvp6TtGwoLcQ2Psu3u/yfrKwbII3OiU
	Q+AqE5w9S+4nAaWKwDL3NxURVJ3AVJ3zL/hmYAmzAnnhV5cCeW8iYB4RlbbQ4vRc0ihvGObJTq+
	GJ6vRU+4qOx2G15W8nzkTMtcRmxApksMaqkWJ40ZD2IMsNkIR3qMgv8hV7BglT8hQZq1Jx7XJfG
	pLn5CnywEvnjZ8ykAAygm1R4G0LCmgw+Hqt/EtptrBwZgS22tlce+fr2H0Xxqh2GKPbMVxohWWO
	SHpgUIpppSKSWvYc6+x/fanQTBNHm/EhKugevLSfoBloYVRolMqcbBTcQwCYMhbAsVxnTbz7k5b
	UqInls5l60wMJJrNkjqdGIDF6GgvAuC97ZP/lBB1a
X-Google-Smtp-Source: AGHT+IGm/P6K25DpiQF7YkgLr49/raT+4WnLgZKMNcfiNtPUu4DSQdRLH4DmfxjqjeuLlDpGyce8jQ==
X-Received: by 2002:a05:690c:931c:10b0:70d:fd2a:1457 with SMTP id 00721157ae682-712c638321emr159821667b3.1.1750741448580;
        Mon, 23 Jun 2025 22:04:08 -0700 (PDT)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com. [209.85.219.172])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-712c49b9ab5sm18631367b3.1.2025.06.23.22.04.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Jun 2025 22:04:07 -0700 (PDT)
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-e81a7d90835so4737553276.1;
        Mon, 23 Jun 2025 22:04:07 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUIsgq1XaR7IFRh3nHdSUzqJFFmTFNWLxAyuxA5MC8oi1/U3+0SOVKg4DWJYbKKRPHJ9t1Y45M85bI9MxKX37UI@lists.infradead.org, AJvYcCXSR7w/v0xl+CHMlGvlIHWUFain+GYl+gUHZaIFNiy61/QD42MoLtDtWXOIWKlzBaaIByjXapb2yst4clJAr18=@lists.infradead.org
X-Received: by 2002:a05:6902:2402:b0:e7d:a012:290a with SMTP id
 3f1490d57ef6-e842bd31ba5mr17718497276.44.1750741446999; Mon, 23 Jun 2025
 22:04:06 -0700 (PDT)
MIME-Version: 1.0
References: <20250606-6-10-rocket-v7-0-dc16cfe6fe4e@tomeuvizoso.net> <2241399.8hzESeGDPO@phil>
In-Reply-To: <2241399.8hzESeGDPO@phil>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Tue, 24 Jun 2025 07:03:55 +0200
X-Gmail-Original-Message-ID: <CAAObsKB2tLewhCt6LWtuCW1niCPAHvqjWYAQ8t6fv9YLVsQmJQ@mail.gmail.com>
X-Gm-Features: AX0GCFuWUi05UoZnTls2Tcn0dm5ovOsTmo6J_0Og6xGh9EfBiQOG6iE0FtJ2MtI
Message-ID: <CAAObsKB2tLewhCt6LWtuCW1niCPAHvqjWYAQ8t6fv9YLVsQmJQ@mail.gmail.com>
Subject: Re: [PATCH v7 00/10] New DRM accel driver for Rockchip's RKNN NPU
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_220410_617496_75632E7B 
X-CRM114-Status: GOOD (  18.51  )
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
Cc: linux-doc@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>, dri-devel@lists.freedesktop.org, David Airlie <airlied@gmail.com>, Sumit Semwal <sumit.semwal@linaro.org>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Jonathan Corbet <corbet@lwn.net>, Sebastian Reichel <sebastian.reichel@collabora.com>, Daniel Stone <daniel@fooishbar.org>, linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jeff Hugo <jeff.hugo@oss.qualcomm.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, linaro-mm-sig@lists.linaro.org, linux-arm-kernel@lists.infradead.org, Oded Gabbay <ogabbay@kernel.org>, linux-kernel@vger.kernel.org, Da Xue <da@libre.computer>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBKdW4gMjAsIDIwMjUgYXQgMTE6MjjigK9BTSBIZWlrbyBTdHVlYm5lciA8aGVpa29A
c250ZWNoLmRlPiB3cm90ZToKPgo+IEFtIEZyZWl0YWcsIDYuIEp1bmkgMjAyNSwgMDg6Mjg6MjAg
TWl0dGVsZXVyb3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBUb21ldSBWaXpvc286Cj4gPiBU
aGlzIHNlcmllcyBhZGRzIGEgbmV3IGRyaXZlciBmb3IgdGhlIE5QVSB0aGF0IFJvY2tjaGlwIGlu
Y2x1ZGVzIGluIGl0cwo+ID4gbmV3ZXIgU29DcywgZGV2ZWxvcGVkIGJ5IHRoZW0gb24gdGhlIE5W
RExBIGJhc2UuCj4gPgo+ID4gSW4gaXRzIGN1cnJlbnQgZm9ybSwgaXQgc3VwcG9ydHMgdGhlIHNw
ZWNpZmljIE5QVSBpbiB0aGUgUkszNTg4IFNvQy4KPiA+Cj4gPiBUaGUgdXNlcnNwYWNlIGRyaXZl
ciBpcyBwYXJ0IG9mIE1lc2EgYW5kIGFuIGluaXRpYWwgZHJhZnQgY2FuIGJlIGZvdW5kIGF0Ogo+
ID4KPiA+IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9tZXNhL21lc2EvLS9tZXJnZV9y
ZXF1ZXN0cy8yOTY5OAo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFRvbWV1IFZpem9zbyA8dG9tZXVA
dG9tZXV2aXpvc28ubmV0Pgo+Cj4gPiAtLS0KPiA+IE5pY29sYXMgRnJhdHRhcm9saSAoMik6Cj4g
PiAgICAgICBhcm02NDogZHRzOiByb2NrY2hpcDogYWRkIHBkX25wdSBsYWJlbCBmb3IgUkszNTg4
IHBvd2VyIGRvbWFpbnMKPiA+ICAgICAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBlbmFibGUgTlBV
IG9uIFJPQ0sgNUIKPiA+Cj4gPiBUb21ldSBWaXpvc28gKDgpOgo+ID4gICAgICAgYWNjZWwvcm9j
a2V0OiBBZGQgcmVnaXN0ZXJzIGhlYWRlcgo+ID4gICAgICAgYWNjZWwvcm9ja2V0OiBBZGQgYSBu
ZXcgZHJpdmVyIGZvciBSb2NrY2hpcCdzIE5QVQo+ID4gICAgICAgYWNjZWwvcm9ja2V0OiBBZGQg
SU9DVEwgZm9yIEJPIGNyZWF0aW9uCj4gPiAgICAgICBhY2NlbC9yb2NrZXQ6IEFkZCBqb2Igc3Vi
bWlzc2lvbiBJT0NUTAo+ID4gICAgICAgYWNjZWwvcm9ja2V0OiBBZGQgSU9DVExzIGZvciBzeW5j
aHJvbml6aW5nIG1lbW9yeSBhY2Nlc3Nlcwo+ID4gICAgICAgZHQtYmluZGluZ3M6IG5wdTogcm9j
a2NoaXAscmtubjogQWRkIGJpbmRpbmdzCj4gPiAgICAgICBhcm02NDogZHRzOiByb2NrY2hpcDog
QWRkIG5vZGVzIGZvciBOUFUgYW5kIGl0cyBNTVUgdG8gcmszNTg4LWJhc2UKPiA+ICAgICAgIGFy
bTY0OiBkdHM6IHJvY2tjaGlwOiBFbmFibGUgdGhlIE5QVSBvbiBxdWFydHpwcm82NAo+Cj4gZnJv
bSBhIGhhbmRsaW5nIHBvaW50IG9mIHZpZXcsIEkgd291bGQgZXhwZWN0IHBhdGNoIDEgLSA2Cj4g
KGRyaXZlciBjb2RlICsgZHQtYmluZGluZyBwYXRjaCkgdG8gZ28gdGhyb3VnaCBzb21lIGRyaXZl
ciB0cmVlCj4gYnV0IGhhdmUgbm90IGNsdWUgd2hpY2ggb25lIHRoYXQgaXMuCgpJIHRoaW5rIEpl
ZmYgSHVnbyB3b3VsZCBiZSBwdWxsaW5nIGl0IGludG8gZHJtLW1pc2M/IFdlIHN0aWxsIG5lZWQg
YQpSLWIgZm9yIHRoZSBqb2Igc3VibWlzc2lvbiBwYXRjaCwgYW5kIGFsc28gaGF2ZSB0aGUgdXNl
cnNwYWNlIGRyaXZlcgpyZWFkeSBmb3IgbWVyZ2luZy4KCj4gQW5kIGFmdGVyd2FyZHMsIEkgd291
bGQgcGljayB1cCB0aGUgYXJtNjQgZGV2aWNldHJlZSBhZGRpdGlvbnMKPiBwYXRjaGVzIDcgLSAx
MCAuCgpTb3VuZHMgZ3JlYXQuCgpUaGFua3MhCgpUb21ldQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
