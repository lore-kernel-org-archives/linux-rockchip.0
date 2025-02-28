Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D60FBC282C1
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Feb 2025 03:30:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l/sMsin3JiOIADkcAHgRuFT4FcLvuuPM/ZOBxtpD5BE=; b=14k/uZ9r4xw7GG
	hTCfft7+DT1LDn5mhaAZy8FJIMxgHCG79O3/Ye4L0HvPtx6aMQFjc4LZpa1nfjdr37KWncJz7Xnhg
	QgWweNJjNdGypZHT6ETMWzygQfB2aUrbou+ZIeANVa71EbpWw3QM7Uo4UOIrLU1KCvYbihs7gWhNY
	SSWaI3ogLQbGaPUwePs2R6yqLlixuYK4yV+zLeyuZ7dN6dRw/rrx9jI/bnQt+O6ZHGjma3j+toklS
	CcdMKn5Jt46NqUCDI7h7t52rK8GXFDXq+EhvahB80cQFPpoZPFDUmR6yqX3gAzDgNl+BRPEBAYMF/
	k3KJuH4IBah1adXk9gfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnr5D-00000009aIW-2Ads;
	Fri, 28 Feb 2025 03:30:39 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnr5A-00000009aHK-3vi9
	for linux-rockchip@lists.infradead.org;
	Fri, 28 Feb 2025 03:30:38 +0000
Received: by mail-qt1-x82f.google.com with SMTP id d75a77b69052e-46c8474d8daso14997311cf.3
        for <linux-rockchip@lists.infradead.org>; Thu, 27 Feb 2025 19:30:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1740713436; x=1741318236; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=RVVG2IwvthWW/+RBCG6i5JXoqhlYqngpobZWnBOaYI4=;
        b=rQUZk41mjYBK6McZquRkctZfnLLTyfeFCKput/M8GsD9mPUHuL0Lq+3s9IagIor8KI
         usQRVXhTB3p1mI2EwN7EX1aEvi+lI/pgo64Zr/DqJvVyJWlYjPYkkWtAm/VDOXQeBieR
         R8PKZUcrgTpyui9wrIb76aZPkbLhBsnfN+er6ntmGrF4rjLOeJFkhWhgUKiyaff6fXrX
         2jQ7yBwbdP9UXUPLZiyGUp3sjUqze3nYlEKOMiwjiYiSXQR+6RmpB371VFqhIDphux7D
         LUL0JF76RMoIGcSV5O9GInUd6vMy7B4ag9IKnpUEiZbbobFwS1AgfUCYiVAcTvy8lL7e
         7uew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740713436; x=1741318236;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RVVG2IwvthWW/+RBCG6i5JXoqhlYqngpobZWnBOaYI4=;
        b=p8kwsrGQKfvvnzq1w/qycDXK6H7F4dcBoDNpyGy8CRpuH1ANcZXie5RNxrJ6CctJDC
         YmoSA2g0bPfOKdhY+2g2MC8rKhRQu9PwmTIZZo2pDWSg3Vf//5vyOAOz1AnJYJv7Xxhr
         8vARB5EQuRw28zl9qMvvc2/npLvuQJBjAE3pp5JyE9JPPhQ22wTkf/o9zJduwMK0FasJ
         iJQsi+0yaqGnJRqGurgfZ4LoVvsmE7/X+yvpxv95ntgmDOB/vCLnDV9W2eDZBWNF4lOc
         9N5CDUn3wbP6DWgL/t9y4JUzC28zm5IrV1IiC3BiqXWi2ho7AQsAd2bTlZvQVf6IkMCH
         dwAw==
X-Forwarded-Encrypted: i=1; AJvYcCUZ07IqhTqbMgvS1+6zaVBYYfCd0BEuX7dDAOCU8fY7664CufL8sTjjhVGB3aNK+ck4ieq9vhbFRFu/q9qXJg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxt1iBru/QXP+bcHKF5754+RpavuimLc7TbOX5f1WtOiVi5xp79
	h2+UBBVc77/6C5xgVqRF6lL63M3XcHqJ7LN31A3jmjG81c7Gr5VeHYSLQFR82qs=
X-Gm-Gg: ASbGnctq/e5HM6rqJrRbWbLqDapKL9uQ0pWYBC8KlbHqKmjDitoqj4/xT1jjhuuXy+7
	vBG/4f/zOCucbgrZnFWVBNHdtvN3rFGB5NyG+G+O5y+eumP6RtmVKWDo74CApWxOBADZ+6EaYgd
	ie1p6NFQCOheoZo8beyx0YEQe2qlwyr0ijGg0HRiTCRmJaIO91ldDxcOIjGE+rL7y4xodBio4r2
	CUXqGbgwfr3H1P9yR/VM8lcXRTD5lwTeu5chY8Kf1CQtPIga8uqIRK5upTq0aUFlfBGNRNMBmkF
	VJ04IOMpLtMd1s9fBwA53c/lSTAgQEw=
X-Google-Smtp-Source: AGHT+IEEio0A7nIEAZI3ddno0TpSgz9fND8CuYHuE1x0cFd3ArDKQjvW9X1ozId7B5F4Eo4JdE2bJw==
X-Received: by 2002:a05:622a:11d0:b0:471:eca0:113c with SMTP id d75a77b69052e-474bc0fef42mr23052141cf.42.1740713435715;
        Thu, 27 Feb 2025 19:30:35 -0800 (PST)
Received: from ?IPv6:2606:6d00:11:e976::c41? ([2606:6d00:11:e976::c41])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-474b7696709sm11029291cf.48.2025.02.27.19.30.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 19:30:34 -0800 (PST)
Message-ID: <25beec7ea929b624d845f5ba4abce6267974ed82.camel@ndufresne.ca>
Subject: Re: [PATCH v3 1/2] media: videobuf2: Fix dmabuf cache sync/flush in
 dma-contig
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Mikhail Rudenko <mike.rudenko@gmail.com>, Dafna Hirschfeld	
 <dafna@fastmail.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
  Mauro Carvalho Chehab	 <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Tomasz Figa	 <tfiga@chromium.org>, Marek Szyprowski
 <m.szyprowski@samsung.com>, Hans Verkuil	 <hverkuil@xs4all.nl>, Sergey
 Senozhatsky <senozhatsky@chromium.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, Mauro
 Carvalho Chehab <mchehab+huawei@kernel.org>, stable@vger.kernel.org
Date: Thu, 27 Feb 2025 22:30:33 -0500
In-Reply-To: <20250128-b4-rkisp-noncoherent-v3-1-baf39c997d2a@gmail.com>
References: <20250128-b4-rkisp-noncoherent-v3-0-baf39c997d2a@gmail.com>
	 <20250128-b4-rkisp-noncoherent-v3-1-baf39c997d2a@gmail.com>
User-Agent: Evolution 3.54.3 (3.54.3-1.fc41) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_193037_231449_02D62720 
X-CRM114-Status: GOOD (  17.26  )
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

TGUgbWFyZGkgMjggamFudmllciAyMDI1IMOgIDIzOjM1ICswMzAwLCBNaWtoYWlsIFJ1ZGVua28g
YSDDqWNyaXTCoDoKPiBXaGVuIHN1cHBvcnQgZm9yIFY0TDJfRkxBR19NRU1PUllfTk9OX0NPTlNJ
U1RFTlQgd2FzIHJlbW92ZWQgaW4KPiBjb21taXQgMTI5MTM0ZTU0MTVkICgibWVkaWE6IG1lZGlh
L3Y0bDI6IHJlbW92ZQo+IFY0TDJfRkxBR19NRU1PUllfTk9OX0NPTlNJU1RFTlQgZmxhZyIpLAo+
IHZiMl9kY19kbWFidWZfb3BzX3tiZWdpbixlbmR9X2NwdV9hY2Nlc3MoKSBmdW5jdGlvbnMgd2Vy
ZSBtYWRlCj4gbm8tb3BzLiBMYXRlciwgd2hlbiBzdXBwb3J0IGZvciBWNEwyX01FTU9SWV9GTEFH
X05PTl9DT0hFUkVOVCB3YXMKPiBpbnRyb2R1Y2VkIGluIGNvbW1pdCBjMGFjZjljZmVlZTAgKCJt
ZWRpYTogdmlkZW9idWYyOiBoYW5kbGUKPiBWNEwyX01FTU9SWV9GTEFHX05PTl9DT0hFUkVOVCBm
bGFnIiksIHRoZSBhYm92ZSBmdW5jdGlvbnMgcmVtYWluZWQKPiBuby1vcHMsIG1ha2luZyBjYWNo
ZSBtYWludGVuYW5jZSBmb3Igbm9uLWNvaGVyZW50IGRtYWJ1ZnMgYWxsb2NhdGVkCj4gYnkKPiBk
bWEtY29udGlnIGltcG9zc2libGUuCj4gCj4gRml4IHRoaXMgYnkgcmVpbnRyb2R1Y2luZyBkbWFf
c3luY19zZ3RhYmxlX2Zvcl97Y3B1LGRldmljZX0gYW5kCj4ge2ZsdXNoLGludmFsaWRhdGV9X2tl
cm5lbF92bWFwX3JhbmdlIGNhbGxzIHRvCj4gdmIyX2RjX2RtYWJ1Zl9vcHNfe2JlZ2luLGVuZH1f
Y3B1X2FjY2VzcygpIGZ1bmN0aW9ucyBmb3Igbm9uLWNvaGVyZW50Cj4gYnVmZmVycy4KPiAKPiBG
aXhlczogYzBhY2Y5Y2ZlZWUwICgibWVkaWE6IHZpZGVvYnVmMjogaGFuZGxlCj4gVjRMMl9NRU1P
UllfRkxBR19OT05fQ09IRVJFTlQgZmxhZyIpCj4gQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcK
PiBTaWduZWQtb2ZmLWJ5OiBNaWtoYWlsIFJ1ZGVua28gPG1pa2UucnVkZW5rb0BnbWFpbC5jb20+
Cj4gLS0tCj4gwqAuLi4vbWVkaWEvY29tbW9uL3ZpZGVvYnVmMi92aWRlb2J1ZjItZG1hLWNvbnRp
Zy5jwqAgfCAyMgo+ICsrKysrKysrKysrKysrKysrKysrKysKPiDCoDEgZmlsZSBjaGFuZ2VkLCAy
MiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvY29tbW9uL3Zp
ZGVvYnVmMi92aWRlb2J1ZjItZG1hLWNvbnRpZy5jCj4gYi9kcml2ZXJzL21lZGlhL2NvbW1vbi92
aWRlb2J1ZjIvdmlkZW9idWYyLWRtYS1jb250aWcuYwo+IGluZGV4Cj4gYmIwYjdmYTY3YjUzOWFh
NzNhZDVjY2YzYzNiYzMxOGUyNmY4YTRjYi4uMTQ2ZDc5OTdhMGRhNTk4OWZiMDgxYTZmMjhjCj4g
ZTA2NDFmZTcyNmU2MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL2NvbW1vbi92aWRlb2J1
ZjIvdmlkZW9idWYyLWRtYS1jb250aWcuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvY29tbW9uL3Zp
ZGVvYnVmMi92aWRlb2J1ZjItZG1hLWNvbnRpZy5jCj4gQEAgLTQyNyw2ICs0MjcsMTcgQEAgc3Rh
dGljIGludAo+IMKgdmIyX2RjX2RtYWJ1Zl9vcHNfYmVnaW5fY3B1X2FjY2VzcyhzdHJ1Y3QgZG1h
X2J1ZiAqZGJ1ZiwKPiDCoAkJCQnCoMKgIGVudW0gZG1hX2RhdGFfZGlyZWN0aW9uCj4gZGlyZWN0
aW9uKQo+IMKgewo+ICsJc3RydWN0IHZiMl9kY19idWYgKmJ1ZiA9IGRidWYtPnByaXY7Cj4gKwlz
dHJ1Y3Qgc2dfdGFibGUgKnNndCA9IGJ1Zi0+ZG1hX3NndDsKPiArCj4gKwlpZiAoIWJ1Zi0+bm9u
X2NvaGVyZW50X21lbSkKPiArCQlyZXR1cm4gMDsKPiArCj4gKwlpZiAoYnVmLT52YWRkcikKPiAr
CQlpbnZhbGlkYXRlX2tlcm5lbF92bWFwX3JhbmdlKGJ1Zi0+dmFkZHIsIGJ1Zi0+c2l6ZSk7CgpB
bSBJIGNvcnJlY3QgdGhhdCB0aGlzIGlzIG1vc3RseSB0byBwcmV2ZW50IHRoZSBrZXJuZWwgZnJv
bSByZWFkaW5nCmJhY2sgb2xkIGRhdGEgZnJvbSB0aGUgY2FjaGUgYWZ0ZXIgYW4gYXBwbGljYXRp
b24gb3Igb3RoZXIgZHJpdmVyIGRpZApDUFUgd3JpdGVzID8gSWYgc28sIGNhbid0IHdlIHJlc3Ry
aWN0IHRoYXQgdG8gRE1BX1RPX0RFVklDRSBhbmQKRE1BX0JJRElSRUNUSU9OQUwgPwoKQXMgZm9y
IHBlbmRpbmcga2VybmVsIHdyaXRlcywgdGhleSBzaG91bGQgaGF2ZSBiZWVuIGZsdXNoZWQgYmVm
b3JlIHRoZQpidWZmZXIgaXMgbWFkZSBhdmFpbGFibGUgZm9yIGRlcXVldWUuIEFuZCBhbnkgYWNj
ZXNzIHdoaWxlIGEgYnVmZmVyIGlzCnF1ZXVlZCBpcyBjb25jdXJyZW50IGFjY2Vzcywgd2hpY2gg
aXMgZXhwZWN0ZWQgdG8gaGF2ZSB1bmRlZmluZWQKYmVoYXZpb3VyLgoKPiArCj4gKwlkbWFfc3lu
Y19zZ3RhYmxlX2Zvcl9jcHUoYnVmLT5kZXYsIHNndCwgYnVmLT5kbWFfZGlyKTsKCklzbid0IHRo
ZXJlIGEgbGluayB0byBtYWtlIGJldHdlZW4gYnVmLT5kbWFfZGlyIGFuZCBkaXJlY2N0aW9uIGJl
Zm9yZQpjYWxsaW5nIHRoaXMgPyBBbHNvLCBzaG91bGRuJ3Qgd2UgdXNlIGRpcmVjdGlvbiBpbnNl
YWQgb2YgYnVmLT5kbWFfZGlyCnRvIHBvc3NpYmx5IGxpbWl0IHRoZSBzY29wZSA/Cgo+ICsKPiDC
oAlyZXR1cm4gMDsKPiDCoH0KPiDCoAo+IEBAIC00MzQsNiArNDQ1LDE3IEBAIHN0YXRpYyBpbnQK
PiDCoHZiMl9kY19kbWFidWZfb3BzX2VuZF9jcHVfYWNjZXNzKHN0cnVjdCBkbWFfYnVmICpkYnVm
LAo+IMKgCQkJCSBlbnVtIGRtYV9kYXRhX2RpcmVjdGlvbiBkaXJlY3Rpb24pCj4gwqB7Cj4gKwlz
dHJ1Y3QgdmIyX2RjX2J1ZiAqYnVmID0gZGJ1Zi0+cHJpdjsKPiArCXN0cnVjdCBzZ190YWJsZSAq
c2d0ID0gYnVmLT5kbWFfc2d0Owo+ICsKPiArCWlmICghYnVmLT5ub25fY29oZXJlbnRfbWVtKQo+
ICsJCXJldHVybiAwOwo+ICsKPiArCWlmIChidWYtPnZhZGRyKQo+ICsJCWZsdXNoX2tlcm5lbF92
bWFwX3JhbmdlKGJ1Zi0+dmFkZHIsIGJ1Zi0+c2l6ZSk7Cj4gKwo+ICsJZG1hX3N5bmNfc2d0YWJs
ZV9mb3JfZGV2aWNlKGJ1Zi0+ZGV2LCBzZ3QsIGJ1Zi0+ZG1hX2Rpcik7CgpTaW1pbGFyIHF1ZXN0
aW9ucyBmb3IgdGhlIGVuZF9jcHVfYWNjZXNzIGltcGxlbWVudGF0aW9uLgoKTmljb2xhcwoKPiAr
Cj4gwqAJcmV0dXJuIDA7Cj4gwqB9Cj4gwqAKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
