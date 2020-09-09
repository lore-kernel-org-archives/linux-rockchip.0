Return-Path: <SRS0=OTpZ=CS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C348C43461
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2020 13:57:13 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AB2FE206A2
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Sep 2020 13:57:11 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="rHRxzSjO";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="bmYvV+I7"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AB2FE206A2
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LMeYv3pnKRdPTTPAQuIGbCRZE3oBleQuZF1e2UP8YlI=; b=rHRxzSjO5He44VTgUfvzKSHr8
	lLi0wKRWhewoQxo1uDS2ywGL1mvxUt+pvyxrQG7Qdl9QljaoKe86W/wy2JOt7AME3+Y6ChWPeRhI3
	V81nRVkUnWVsKp1OOLbG360IQ9bu7eb5fB6/Le2TweSlG1UbpoxS1iTCfzOH5MQ/vpq675AwXBMOb
	ix8Ro8eSzQjzemOtA9qCcDTDD4N31kZoBp5MCmvhByb7oCFEvM2poajjNtItxCulbiRcb4wH7+8nh
	MINO6bkGo/jx9FyEzCdjjta83CDxQGdGUZgs9ZT2QABCYHudaRs7kuDqfJ+hJSexzy2AlIUH4Ehvd
	DFD8S9Ihg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kG0au-0007Nn-CF; Wed, 09 Sep 2020 13:57:04 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kG0ar-0007MW-R1
 for linux-rockchip@lists.infradead.org; Wed, 09 Sep 2020 13:57:03 +0000
Received: by mail-ej1-x642.google.com with SMTP id z22so3691857ejl.7
 for <linux-rockchip@lists.infradead.org>; Wed, 09 Sep 2020 06:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=MENKoY7sLjEa2j5YMFoQoj6IgU1USAsQMBDdxrkFhWc=;
 b=bmYvV+I7LEbseXbHhtlbAYck9NqN46DhFgxBTsEeJ62wPE19xy8BFBuma+r8HSDDl1
 iuZJZ8QGSo4EVy9qOeJDa/xYKE2GSamLaVyFqXD1HKbEk2ngrJbnqfyNRdiR66NIpRwA
 3s9f9mHs1brTm/hm5ADtRKLLPVEXeFDabl0+E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MENKoY7sLjEa2j5YMFoQoj6IgU1USAsQMBDdxrkFhWc=;
 b=Rl4n3QpLCH/fQCN+FDjFm/UUzVtATNtpIZ5350F25GbEl4wdR0sBO9SfpQzxhA77e1
 Z9Z6tXXzFielxuWJZKjf6zfdenTc4I6/AeXvDP55W7r0/jkuZ3FvoNbYv/qk+T1D3Prr
 pw+haVTqDRELT0nrNb1JpOrRVNuwoPA42Uer63B5Dp88g3nGNtejdzY7FpxNM0Yp4xWU
 vQ5cf2Vqut2UT/8/FGFnRNcKFwKUPZ0Iq3H8y9HfW5Q2dsCMPu41wMkUWladx5IN194D
 ddAbW5lH+kwbB4uPVwVhqjbZpLg9XBzQOoLgvlEMnPbFgQDJOcE6Yfu8NZbDZ/i0qvQQ
 NXPQ==
X-Gm-Message-State: AOAM530IIsDis7yPpy0MCxj+/P9p+3AYi//EINRvkceoA0r2ZmJEsrcl
 63CHL8ld21UdH6OU9jj74q/x72/HhtnQuCzJBTJwnw==
X-Google-Smtp-Source: ABdhPJwG32nnroeWUrNq1UG84+2uFGxqral4DWpgnb4iJnEw6uoi6YO7+CdOPDvYDAQ+31gRePqleCHukCNdIJR9k7U=
X-Received: by 2002:a17:906:c1c6:: with SMTP id
 bw6mr2327666ejb.374.1599659818729; 
 Wed, 09 Sep 2020 06:56:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200904191830.387296-1-jagan@amarulasolutions.com>
 <6955091.ERBjKZ0CLf@diego>
In-Reply-To: <6955091.ERBjKZ0CLf@diego>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 9 Sep 2020 19:26:47 +0530
Message-ID: <CAMty3ZDNVZyYHAuBpCcn_=BhLvcRRHcOXKEWQqxUOdOs2+fp-Q@mail.gmail.com>
Subject: Re: [PATCH 0/3] extcon: Add Type-C Virtual PD
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200909_095702_197980_3EBF48D0 
X-CRM114-Status: GOOD (  17.59  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree <devicetree@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Tom Cubie <tom@radxa.com>, linux-kernel <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgSGVpa28sCgpPbiBTYXQsIFNlcCA1LCAyMDIwIGF0IDI6NTMgQU0gSGVpa28gU3TDvGJuZXIg
PGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cj4KPiBIaSBKYWdhbiwKPgo+IEFtIEZyZWl0YWcsIDQu
IFNlcHRlbWJlciAyMDIwLCAyMToxODoyNyBDRVNUIHNjaHJpZWIgSmFnYW4gVGVraToKPiA+IFVT
QiBUeXBlLUMgcHJvdG9jb2wgc3VwcG9ydHMgdmFyaW91cyBtb2RlcyBvZiBvcGVyYXRpb25zCj4g
PiBpbmNsdWRlcyBQRCwgVVNCMywgYW5kIEFsdG1vZGUuIElmIHRoZSBwbGF0Zm9ybSBkZXNpZ24K
PiA+IHN1cHBvcnRzIGEgVHlwZS1DIGNvbm5lY3RvciB0aGVuIGNvbmZpZ3VyaW5nIHRoZXNlIG1v
ZGVzCj4gPiBjYW4gYmUgZG9uZSB2aWEgZW51bWVyYXRpb24uCj4gPgo+ID4gSG93ZXZlciwgdGhl
cmUgYXJlIHNvbWUgcGxhdGZvcm1zIHRoYXQgZGVzaWduIHRoZXNlIG1vZGVzCj4gPiBvZiBvcGVy
YXRpb25zIGFzIHNlcGFyYXRlIHByb3RvY29sIGNvbm5lY3RvcnMgbGlrZSBkZXNpZ24KPiA+IERp
c3BsYXkgUG9ydCBmcm9tIG9uLWNoaXAgVVNCMyBjb250cm9sbGVyLiBTbyBhY2Nlc3NpbmcKPiA+
IFR5cGUtQyBBbHRtb2RlIERpc3BsYXkgUG9ydCB2aWEgb25ib2FyZCBEaXNwbGF5IFBvcnQKPiA+
IGNvbm5lY3RvciBpbnN0ZWFkIG9mIGEgVHlwZS1DIGNvbm5lY3Rvci4KPiA+Cj4gPiBUaGVzZSBr
aW5kcyBvZiBwbGF0Zm9ybXMgcmVxdWlyZSBhbiBleHBsaWNpdCBleHRjb24gZHJpdmVyCj4gPiBp
biBvcmRlciB0byBoYW5kbGUgUG93ZXIgRGVsaXZlcnkgYW5kIFBvcnQgRGV0ZWN0aW9uLgo+ID4K
PiA+IFRoaXMgc2VyaWVzIHN1cHBvcnQgdGhpcyBUeXBlLUMgVmlydHVhbCBQRCBhbmQgZW5hYmxl
IHRoZQo+ID4gc2FtZSBpbiBST0NLIFBpIDRDIFNCQy4KPiA+Cj4gPiBBbnkgaW5wdXRzPwo+Cj4g
SSB0ZW5kIHRvIGRpc2FncmVlIG9uIHRoZSBkZXNpZ24gdmlhIGFuIGV4dGNvbi4KCk9rYXksIGFy
ZSB5b3UgZGlzYWdyZWUgd2l0aCB0aGUgZXh0Y29uIGV4dGVuc2lvbiBmb3IgZnVzYiBjaGlwcwpy
b3V0aW5nIG9yIGVudGlyZSByazMzOTkgZGVzaWducz8KCkkgdG90YWxseSBhZ3JlZSB3aXRoIHRo
aXMgcG9pbnQgb2YgYnlwYXNzaW5nIGV4dGNvbiBmb3IgdGhlIGRlc2lnbnMKd2hpY2ggaGFzIGZ1
c2IzMDIgY2hpcHMuIE15IG9ubHkgY29uY2VybiBpcyBhYm91dCBkZXNpZ25zIHRoYXQgZG9uJ3QK
aGF2ZSBmdXNiIGNoaXBzIC0gZm9yIGV4YW1wbGUgcm9jay1waS00LiBEZXNpZ25zIHRoYXQgZG8g
aGF2ZSBmdXNiMzAyCmNoaXBzLCBoYXMgZHluYW1pYyBwb3NzaWJpbGl0aWVzIHRvIGlkZW50aWZ5
IGRhdGEgcm9sZXMsIGxpa2UKZGV0ZWN0aW5nIEFsdG1vZGUgRFAgdmlhIFR5cGUtQyBjb25uZWN0
b3Igd2hlcmVhcyBkZXNpZ25zIHRoYXQgZG9uJ3QKaGF2ZSBmdXNiMzAyIG9yIGFueSB0eXBlLWMg
Y2hpcCBuZWVkIHN0YXRpYyBpZGVudGlmaWNhdGlvbiBvZiBkYXRhCnJvbGUsIHBvbGFyaXR5LCBh
bmQgc3MgZm9yIGRldGVjdGluZyBkaXJlY3QgRFAgcG9ydCBpZSB3aGVyZQp2aXJ0dWFsLXBkIGlz
IHVzZWZ1bC4KCkxvb2sgbGlrZSB3ZSBoYXZlIHR3byBwb3RlbnRpYWwgaXNzdWVzIG9mIGhhbmRs
aW5nIERQIG9uIHJrMzM5OSBoZXJlLApsZXQgbWUga25vdyBpZiB5b3UgdGhpbmsgdGhlc2Ugbm9u
LXR5cGUtYyBjaGlwcyBkZXNpZ25zIGFsc28gcG9zc2libGUKdG8gZGV0ZWN0IHcvbyBleHRjb24/
CgpKYWdhbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
