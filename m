Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3150EC54E65
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 May 2025 11:45:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DelyOHaMMIxlN1/iWP3y+SBOrUCrqvC5g7TIAq8zmRE=; b=jQk80O8PGwoRLr
	CZyDJ9hjMiSEd5a2+O0FIcB14+82BjLT116OMpBGiEeLAUBWG/cjfE5380UTqnYHcCEd9Xk4/NH0O
	xkRGQuST9cY2qAEpQBz5dTnwbhJYT1FQet4OHzsyz3WxSB8IIFt1hMmZSlmA6qxJ8JGxyUSymqdIy
	oXjp7s4x21NdVgUwMW2zuv+pISCLoGBtovIBbTXfR/kmgtWJjL2D3wrKhbAD5USNNN1U8Nk6NDIMe
	ML7FmWiXfHrgmXWdgjrlnaaTz5WDr4q/HFoZmm1cVwa1WarDHViaFlTGGEf0SnhDpk8S2nZ6y2JSg
	/fcqdBqTiMWhTTVbfT1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHhtA-0000000FfVB-3rW3;
	Wed, 21 May 2025 11:45:36 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uHhpe-0000000FeiL-24lm
	for linux-rockchip@lists.infradead.org;
	Wed, 21 May 2025 11:41:59 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-e7d664bcd34so121492276.0
        for <linux-rockchip@lists.infradead.org>; Wed, 21 May 2025 04:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747827717; x=1748432517; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6MZeJpkU6VblQ7OtI/wGvp2r9/BzM6xHr8FeygAttfY=;
        b=bgTrdBsKkj1Yov3HG96Xiq0JglCACZwwbRx++A8A+paYsvAczGz2+Pp+YPqBXKR+BR
         j94+Bhlt/2ArFo8stHiGhIsDHyJTMfpAxW0mqS+iFRBkA3Kkshlze97QsgmchMWQx4nv
         RC30fuFuPCf8oXQ3cDmuZoXADwy/sq5FkjEgerO4YeqmVzUU0j1Ie9MD8upaHyTPp/AC
         1dghrP1fxoX57fBzoYCpO2FNDTq/G5DR8ODfLPs31nlagScntmLjz5upI9jFOkjGP9gs
         UtEuVqX5OZsv/ot/5OGgx3cUfTEJk598es7bXb6gVXxgXol4bmrPMk3ho7XTZ4dI+aPu
         TugQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747827717; x=1748432517;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6MZeJpkU6VblQ7OtI/wGvp2r9/BzM6xHr8FeygAttfY=;
        b=gziTkF64DPDrfiVoyRipymKC6HPfHv9JJKUXDvlCy3o4CqGBXrE0T+MwHvBLA6YcuU
         1djTS47IFEpSOQuH85t/svM9EfSHOhYlw8E9/+ztGW4R1l+24HVd0WfuapbJ9XhVyb/f
         ucsAOohv53RcPcKpQl/uaRIt1MrPy21TFc0YgbU/4BCfcrcVxTSXfRG7nExOq9zAenpb
         bhyu85kus3fMEUywV1fPJujaSu/HbARpDBt2jfWvUxawMAXf0faG5fG31Q2I0zkkNDQq
         shb42DT+I0xHBunZakpTz38hTDgPDNuaZuIHLedWlwyEuDQkrJxCT4ewgsYGuM4i+/wn
         Tj/A==
X-Forwarded-Encrypted: i=1; AJvYcCWe3aQi+UB5HBkWkOnMl7E/g/9SzVsNW5rZlzekECK72xi4kBrQQpfHw3pBBZpoVHBmDB46eX0Up8ZAQqYFtQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yyjkss1ZOJxK+32KH/3kdyFkHXARehB11+EgcnGDFkDmxQIhEMt
	nIxbIifpqcU3IK3ssD1c8uV4cFgkeb+wDKji0MOnVIfSxuAG2UXnqlhGgkmYzqZE1mLaaF1dFM9
	GCqaMqe8wR0VKmBD2oTn9kfP3RBWhgNwuhKuMyE26Ew==
X-Gm-Gg: ASbGncuQPRWKzcQ4/Zpzs0MLzQERBWNI0c9ZIIP5ToazGV+3POn/3/rFQhZUPRO3/5C
	g0mLGZIW40jmidYAzMqFiF5yFkz8bp6AXRwCRztKtiWd5FzQ2GYRW9A0DjLYAxFb2im5yuLv5Jq
	WWafBGZaJ8I6vQfpaWG+MDdmQtiyKSMxy0kA==
X-Google-Smtp-Source: AGHT+IEJRa6TVkfzQ58O9FhFkfZAdhxX16+QFG8CIAfdeWEH8fgSALQEibspuxtnsso331LoIjY97FnEoFxQVh+nbuw=
X-Received: by 2002:a05:6902:460d:b0:e79:67c9:b647 with SMTP id
 3f1490d57ef6-e7b69e857dfmr26356893276.16.1747827717440; Wed, 21 May 2025
 04:41:57 -0700 (PDT)
MIME-Version: 1.0
References: <ab0476382e3342161beda94a45ddadb49b026dcd.1747760015.git.robin.murphy@arm.com>
 <6f0a38e596c0727d0de13a29c9224f71bc7d30f1.1747760015.git.robin.murphy@arm.com>
 <2393836.usQuhbGJ8B@phil>
In-Reply-To: <2393836.usQuhbGJ8B@phil>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 21 May 2025 13:41:21 +0200
X-Gm-Features: AX0GCFtZEPdXq2RFpP8dY62bvQ_oqyF_Bdfij7jDVf1Di2-SOIPajRHFWge-u3o
Message-ID: <CAPDyKFpTaRZqdpwFnC5DgLjJAf1YawJ1L5OVgwfjnfs7iNyUhQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] pmdomain: rockchip: Relax SMCCC dependency
To: Heiko Stuebner <heiko@sntech.de>
Cc: mark.rutland@arm.com, lpieralisi@kernel.org, sudeep.holla@arm.com, 
	Robin Murphy <robin.murphy@arm.com>, linux-pm@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250521_044158_534240_FF003631 
X-CRM114-Status: GOOD (  12.86  )
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

T24gVHVlLCAyMCBNYXkgMjAyNSBhdCAyMDozOCwgSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVj
aC5kZT4gd3JvdGU6Cj4KPiBBbSBEaWVuc3RhZywgMjAuIE1haSAyMDI1LCAxOToxMDoxNyBNaXR0
ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIFJvYmluIE11cnBoeToKPiA+IE1vc3Qg
MzItYml0IFJvY2tjaGlwIHBsYXRmb3JtcyBkbyBub3QgdXNlIFBTQ0ksIHNvIGhhdmluZyB0byBz
ZWxlY3QKPiA+IEFSTV9QU0NJIHRvIHNhdGlzZnkgYSBkZXBlbmRlbmN5IGNoYWluIHRvIHJldGFp
biB3b3JraW5nIHBvd2VyIGRvbWFpbgo+ID4gc3VwcG9ydCBpcyBhIGJpdCB3ZWlyZCBhbmQgbm9u
LW9idmlvdXMuIE5vdyB0aGF0IHRoZSBvZmZlbmRpbmcgU01DQ0MgQVBJCj4gPiBpcyBwcm9wZXJs
eSBzdHViYmVkIG91dCBmb3Igb3B0aW9uYWwgdXNhZ2UsIHdlIGNhbiByZWxheCB0aGlzIGFnYWlu
Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFJvYmluIE11cnBoeSA8cm9iaW4ubXVycGh5QGFybS5j
b20+Cj4KPgo+IFJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+
Cj4gT2YgY291cnNlIHRoaXMgbmVlZHMgcGF0Y2gxIG9mIHRoaXMgc2VyaWVzIHRvIGdldCBhcHBs
aWVkCj4gZmlyc3QuCj4KPiBJIHRoaW5rIGZvciBiaXNlY3RhYmlsaXR5LCBkb2luZyB0aGlzIGRp
cmVjdGx5IGluIHBhdGNoMSBtaWdodAo+IGJlIGxlc3MgZGFuZ2Vyb3VzIHRob3VnaD8KPgoKSWYg
aXQgaGVscHMsIEkgY2FuIHBpY2sgYm90aCBwYXRjaGVzIHZpYSBteSBwbWRvbWFpbiB0cmVlLCB0
byBtYWtlCnN1cmUgcGF0Y2gxIHJlYWxseSBnZXRzIGFwcGxpZWQgcHJpb3IgdG8gcGF0Y2gyLgoK
TWFyaywgU3VkZWVwLCBMb3JlbnpvIGRvIHlvdSBzZWUgYW55IHByb2JsZW1zIHdpdGggdGhpcz8K
ClsuLi5dCgpLaW5kIHJlZ2FyZHMKVWZmZQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
