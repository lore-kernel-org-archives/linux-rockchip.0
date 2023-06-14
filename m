Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 969F0EB64D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jun 2023 19:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jIFzGgkiX6xIuEORXNPX9X+99UljOVTauMybswubfRg=; b=xU9w2/aApg2Exr
	QsnXKb+WgPf99WVWq/qDCaLDaW4Dc+Gf+E0aGsuq37gh03ISiQyHoMhJwidZM/fqnrJcDSDim3OMy
	P0QH97KZBBHWaOPWVeKgr/Tq4NC56AMk1xQB9FMSEYdjeeV063VAawXE2nygRWJt6M2IHeXq3xZBl
	jPT0zkc2aDT+ONpOfqY9M9tdFywnc7kmXAyH6E9i3fGp4g1jtVnNWyrV1LApUzZdvRYJcoVeMeOmZ
	1/YYQm01+VmSPJI6q8mH+e6HAm55u08movmbAlEkq2B73aR3W7ZWHVsL9n+i8xiqTQYglYn4TSTl5
	HTQkAKrncHOKDS9+21RQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9WWm-00Cae7-0D;
	Wed, 14 Jun 2023 19:51:36 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9WWj-00CadX-2h;
	Wed, 14 Jun 2023 19:51:35 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-543d32eed7cso3165411a12.2;
        Wed, 14 Jun 2023 12:51:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686772293; x=1689364293;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Md9lJKmlQJvh1OZaUzX4DgJIrqm76TL4au4CTghcG/E=;
        b=V9thkchiKXb6KvcRpmH/5tE9tuUGZmrVmTfS7pyVleoqsTeSmhRR9IvR8QY1biyoPp
         U6YrtENufunf28NM775x4KZRl6ucdZDoAnzir4SoqIPQ5Nmo9EBxgxoeAJ+1R/NK0v+a
         vOwGkkeHoPP6liCkXMt23SYxJTvokHgy0wrZjYChsit6Q019r0jGZl/BCgg7vVgcP6lQ
         JqqyFDqfGs0ITwi5atzwRNShjy4YoybKD/k3w//ENXiFJENvXT+oBUq5QrX497nejLyD
         QksrO3itaCMlV6msn2LA6oCa7xLMYc8Rxx0gkyR+OV0SJIBO2shoPD4wcAgva43SLzjs
         bYSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686772293; x=1689364293;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Md9lJKmlQJvh1OZaUzX4DgJIrqm76TL4au4CTghcG/E=;
        b=D/XttmTDWXAc45dRRhK+5bxcfuYAlUb7feX797loLTfsUdk5im/ni+j/cizQTdPspe
         wwrdp/bTIV5H+8BOlOsJUTOVJIx40KUvDGlIjQuONg6fs5JxH9aFkSUYqUG7MwanHMrr
         K0ug9DiTalQBcwoOizKXbpKgtEQepCec0SM72XeeZN5LIRJg9fGswfgvELpTrsSaLRwP
         narOC1Jy2YSpnX1zhylhNvdNll+OG3p6rLWDxpud6DeoD19GSHEzxSuco9A64QQbBbGR
         o/GHkCxc8JyWc1uMitbhkCjyFvSfjSvgHboWLeMo6m4v2i9uk7ucsWg9mWMWuLbhMDow
         A0og==
X-Gm-Message-State: AC+VfDwfE1rNo3kE0lHwlVDQQsKOdurMfy7gy8NBvdurxBndJmbTI1sJ
	KlugnAFb+pCKbehXpxv0jFOWMPmc/Yryxl3SNY4=
X-Google-Smtp-Source: ACHHUZ4VBmluG6ODSEiZ+YZ6cKjQzEkNwgG2Jx/k+1Wq+rcowseSsrI8mlOimnJNxswGpbk4W/FFajCTW8uIUS7z47c=
X-Received: by 2002:a17:90b:4b8f:b0:256:2fd4:e238 with SMTP id
 lr15-20020a17090b4b8f00b002562fd4e238mr2401011pjb.38.1686772292745; Wed, 14
 Jun 2023 12:51:32 -0700 (PDT)
MIME-Version: 1.0
References: <20230524083153.2046084-1-s.hauer@pengutronix.de>
 <20230614134034.3p3p75a3jophi2eu@mercury.elektranox.org> <20230614152721.eep5ip726ump2kpe@mercury.elektranox.org>
In-Reply-To: <20230614152721.eep5ip726ump2kpe@mercury.elektranox.org>
From: Vincent Legoll <vincent.legoll@gmail.com>
Date: Wed, 14 Jun 2023 19:51:21 +0000
Message-ID: <CAEwRq=qufx6Y6JCD3pzA31y7mfXUxFeMLtwthE_N7rYY7k9+-A@mail.gmail.com>
Subject: Re: [PATCH v5 00/25] Add perf support to the rockchip-dfi driver
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Sascha Hauer <s.hauer@pengutronix.de>, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>, 
	Kyungmin Park <kyungmin.park@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>, 
	Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, kernel@pengutronix.de, 
	Michael Riesch <michael.riesch@wolfvision.net>, Robin Murphy <robin.murphy@arm.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_125133_897268_3352D92A 
X-CRM114-Status: GOOD (  14.05  )
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

SGksCgpPbiBXZWQsIEp1biAxNCwgMjAyMyBhdCAzOjI34oCvUE0gU2ViYXN0aWFuIFJlaWNoZWwK
PHNlYmFzdGlhbi5yZWljaGVsQGNvbGxhYm9yYS5jb20+IHdyb3RlOgo+IE9uIFdlZCwgSnVuIDE0
LCAyMDIzIGF0IDAzOjQwOjM0UE0gKzAyMDAsIFNlYmFzdGlhbiBSZWljaGVsIHdyb3RlOgo+ID4g
SSB0ZXN0ZWQgdGhlIHNlcmllcyBvbiBSSzM1ODggRVZCMS4gVGhlIHJlYWQvd3JpdGUgYnl0cyBs
b29rcwo+ID4gc2Vuc2libGUuIFNvbWV0aW1lcyBjeWNsZXMgcmVhZHMgdW5yZWFsaXN0aWMgdmFs
dWVzLCB0aG91Z2g6Cj4gPgo+ID4gMTg0NDY3NDQwNzA0NzUxMTA0MDAgICAgICByb2NrY2hpcF9k
ZHIvY3ljbGVzLwo+Cj4gSSBoYXZlIHNlZW4gdGhpcyBnb2luZyBvZmYgYSBmZXcgdGltZXMgd2l0
aCBhbmQgd2l0aG91dCBtZW1vcnkKPiBwcmVzc3VyZS4gSWYgaXQncyB3YXkgb2ZmLCBpdCBhbHdh
eXMgc2VlbXMgdG8gZm9sbG93IHRoZSBzYW1lCj4gcGF0dGVybjogVGhlIHVwcGVyIDMyIGJpdHMg
YXJlIDB4ZmZmZmZmZmYgaW5zdGVhZCBvZiAweDAwMDAwMDAwCj4gd2l0aCB0aGUgbG93ZXIgMzIg
Yml0cyBjb250YWluaW5nIHNlbnNpYmxlIGRhdGEuCgpIb3cgb2Z0ZW4gaXMgdGhhdCBoYXBwZW5p
bmcgPwoKSSBoYXZlIGJlZW4gcnVubmluZyB0aGlzIGluIGEgbG9vcCB3aXRoIHZhcnlpbmcgc2xl
ZXAgZHVyYXRpb24gZm9yCnRoZSBsYXN0IGZldyBob3VycyB3aXRob3V0IGhpdHRpbmcgaXQsIHdp
dGggYW5kIHdpdGhvdXQgbWVtdGVzdGVyLgoKUkVQRUFUUz0xMDAwCk1BWF9EVVJBVElPTj0xMDAK
Ck9VVD0iL3RtcC9wZXJmLWRmaS1yazM1ODgtJHtSRVBFQVRTfXgke01BWF9EVVJBVElPTn1zLnR4
dCIKZWNobyAtbiA+ICRPVVQKCmZvciBpIGluICQoc2VxICRSRVBFQVRTKSA7IGRvCiAgRFVSQVRJ
T049JChzaHVmIC1pICIwLSR7TUFYX0RVUkFUSU9OfSIgLW4gMSkKICBlY2hvIC1uICIke0RVUkFU
SU9OfSA6ICIgPj4gJE9VVAogIHBlcmYgc3RhdCAtYSAtZSByb2NrY2hpcF9kZHIvY3ljbGVzLyBz
bGVlcCAkRFVSQVRJT04gMj4mMSB8IGF3awonL3JvY2tjaGlwX2Rkci8ge3ByaW50ZigiJVhcbiIs
IGludCgkMSkpfScgPj4gJE9VVApkb25lCgpCVFcsIGl0J3Mgb24gYSBtdXNsLWxpYmMgYXJtNjQg
dm9pZCBsaW51eCB1c2Vyc3BhY2UuCgotLSAKVmluY2VudCBMZWdvbGwKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
