Return-Path: <SRS0=kcRh=JJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2AD06C433ED
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 13:34:16 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9F6CF61288
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Apr 2021 13:34:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9F6CF61288
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ATxKvARPqHVjupnZczrPOwbBMPWmnYEGq1GBImJCDUw=; b=Rhu4J3tfCZ97qbRmrH9BSlrUF
	NDs73F8ZJ1Qqcd+h+KOmvnQTvzITbhO4vlg84NzpSvfu9U8ZUPg7pwMnhAxYA4iILySLEFHuEKGK5
	mQJVvsuGxFNmbXb3ZpIzQaLp9YHNLXfKsKDzwjPuilFN8hCLyQTZaLuzeDZ0azlGOstD0T9c0AD7l
	OJ66aUTJwcTv6S8iI6+T9IS28OfKrHIpwS0ATujtrnLykqXGXvo8Dc7BgAWt/WUhVdKXhMMuEM3k+
	gcYsfFNvTbR66hSSq3ayTJIkCU1eVL1lAx+oZfNE1mZz2sMJxsuk9IPfUaoAMDD/yI7xyPa7SImMr
	5xVwcjzQw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVwhd-006rWR-UO; Mon, 12 Apr 2021 13:34:10 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVwhc-006rWC-7E
 for linux-rockchip@desiato.infradead.org; Mon, 12 Apr 2021 13:34:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
 MIME-Version:Sender:Reply-To:Content-ID:Content-Description;
 bh=pjHW4XTRsl1wYF4qZYdcelMTAy0IBBCksHH1WS+omlE=; b=zUfK8Rm1LennoX+52fQSKJLwKj
 BtFZZPykYAxXkj100z3LKkto33IOOxMyKQOrP9qN6txtSrCfwzT1t9+opFHb76xbLi7q6HOxRp6wB
 x7QaZli3rOUgTIJ6tFBUVXQ1oJ1Lap9HKT+Y1oZC4O3K0FPKg+jXFwB17WAbVieTEhomF39GzP19y
 z43t816nClbUC2YxaxKPay51nGxX1t4Jd9MscVa7biDTkV8udrNq9Tkk32aMWy+EKfqqz3EtdJzaM
 ADfD2C1tBgeV6xbkDi8j+9KDYnzhcN3HRTVlZGyPB30ii89MKGxDhg7tfK1Mwv3d5aGUi/gWtZhUK
 aDzzCs5g==;
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVwhZ-006Gph-QU
 for linux-rockchip@lists.infradead.org; Mon, 12 Apr 2021 13:34:07 +0000
Received: by mail-pj1-x1030.google.com with SMTP id
 u14-20020a17090a1f0eb029014e38011b09so2291010pja.5
 for <linux-rockchip@lists.infradead.org>; Mon, 12 Apr 2021 06:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=pjHW4XTRsl1wYF4qZYdcelMTAy0IBBCksHH1WS+omlE=;
 b=MnPALWznjnz/cu8jMvdqHAG0Up0fYcBUaRQSpUsWkhQbKEfoZUd9ATvHUIK5gA0NVu
 HmyIYWad0CWwaMS7EsQsJThFbwSacdbHQeMV1i20DxBWW6B9QTKq3zQmzjgybOooxKnP
 htvxPXSnRoPsHFlE0BOi9V83y/vob1iQ72VkZVpzKfKToikl/zLGlL0G9Wqf0/18grS1
 KjxwGmp7tBcHU0PTOZ8dBAmHL6khTTS8hVhG3xXZ0PdaDlrxCvPXFspzLx2QhSgqGcK3
 HMBEnCk2w8ggM2Q4RzX6Eam1Sw/7eltdSteLn8j2S7cl3m4/3TvARSwYfwUV5qIrBE+t
 uw2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=pjHW4XTRsl1wYF4qZYdcelMTAy0IBBCksHH1WS+omlE=;
 b=s6w6uNgw26Zy5y2S4NCi3ay8PoHWxRn/arlHa6UEha63f575gcc7ca+Q60YslMOiqU
 xdEDBYX2WXZ//XuD3HLpBrCFISBUOJYFJprN45QL85IdgT85dtD265jeZDkDileXZum0
 NRd+eWa4ZTDSbSRNQa4s6L+3yOcYwqhgm+21QjMddkvkLa6rHakvidvxAmmrVS1YTtQJ
 fAq+j5nV1D/ApRFQ/kh3tC1DhQQOpu3fxoLxpuGuWfRyHoInQDykMHQvb+KAgs01qeet
 Yv0VHv1NjFWODtpRTG5vu8ofdlUEdz8umjw4RMaL0Jm+lqbNjrwpZ1r3SBjg0sdcpUK6
 EYjA==
X-Gm-Message-State: AOAM533GYntiyR1zf7KVuNr12wTpODeY5nWtcuAmEdTq9iHraGoEO+OZ
 kVaMDq59M5WHFhuc25r9K0dzAL8xlLhg3tKnyZ4se5V6RbKa+XgH
X-Google-Smtp-Source: ABdhPJypL6Sgp40ZheF9duG6Z/2tCTtJ9JDjKbwColpcsDzH1Okztn7XqqAbB9SliJcoyjFRqfRUEjPgvwzgWkVA9pg=
X-Received: by 2002:a17:90a:5407:: with SMTP id
 z7mr29801094pjh.228.1618234444625; 
 Mon, 12 Apr 2021 06:34:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210411133030.1663936-1-pgwipeout@gmail.com>
 <CAHp75Ve=1EbJ1qOjnTLKOwvv-UKLfxMHS-UUp=ET0zoJ9fV=ng@mail.gmail.com>
 <2004066.IobQ9Gjlxr@diego>
In-Reply-To: <2004066.IobQ9Gjlxr@diego>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Mon, 12 Apr 2021 16:33:48 +0300
Message-ID: <CAHp75VdWES51UPiKayYZ15Mr7pS-Aaz51hKNFmyhbv2JqwPwPA@mail.gmail.com>
Subject: Re: [PATCH v2 0/7] gpio-rockchip driver
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Peter Geis <pgwipeout@gmail.com>, Jianqun Xu <jay.xu@rock-chips.com>, 
 Tao Huang <huangtao@rock-chips.com>, Kever Yang <kever.yang@rock-chips.com>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 linux-rockchip@lists.infradead.org, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210412_063405_882504_DD3AB04D 
X-CRM114-Status: GOOD (  15.73  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBBcHIgMTIsIDIwMjEgYXQgNDozMCBQTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250
ZWNoLmRlPiB3cm90ZToKPiBBbSBNb250YWcsIDEyLiBBcHJpbCAyMDIxLCAxNDoxMzozNyBDRVNU
IHNjaHJpZWIgQW5keSBTaGV2Y2hlbmtvOgo+ID4gT24gU3VuLCBBcHIgMTEsIDIwMjEgYXQgNDoz
NSBQTSBQZXRlciBHZWlzIDxwZ3dpcGVvdXRAZ21haWwuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4g
U2VwYXJhdGUgZ3BpbyBkcml2ZXIgZnJvbSBwaW5jdHJsIGRyaXZlciwgYW5kIHN1cHBvcnQgdjIg
Y29udHJvbGxlci4KPiA+ID4KPiA+ID4gVGVzdGVkIG9uIHJrMzU2Ni1xdWFydHo2NCBwcm90b3R5
cGUgYm9hcmQuCj4gPgo+ID4gQ2FuIHlvdSBnaXZlIGEgYml0IG1vcmUgY29udGV4dD8KPiA+IFVz
dWFsbHkgc2VwYXJhdGlvbiBtZWFucyB0aGF0IGhhcmR3YXJlIGlzIHJlcHJlc2VudGVkIGJ5IHR3
byBkaWZmZXJlbnQKPiA+IElQIGJsb2NrcyB0aGF0IGFyZSAoYWxtb3N0KSBpbmRlcGVuZGVudCB0
byBlYWNoIG90aGVyLiBXYXMgaXQgdGhlIGNhc2UKPiA+IG9uIHRoZSBvcmlnaW5hbCBwbGF0Zm9y
bXM/IERvIHlvdSBoYXZlIGRpZmZlcmVudCBwaW4gY29udHJvbGxlciAob3IKPiA+IGl0J3MgYWJz
ZW50IGNvbXBsZXRlbHkpIG9uIHNvbWUgbmV3IC8gb2xkIHBsYXRmb3JtPwo+Cj4gVGhleSBhcmUg
c2VwYXJhdGUgb24gYWxsIFJvY2tjaGlwIFNvQ3MuCj4KPiBJLmUuIHRoZSBwaW5jb25maWcgKG11
eGluZywgcHVsbHMsIGV0YykgaXMgZG9uZSB2aWEgc29tZSByZWdpc3RlcnMgaW5zaWRlCj4gdGhl
ICJHZW5lcmFsIFJlZ2lzdGVyIEZpbGVzIiBbYXJlYSBmb3IgbWlzYyByZWdpc3RlcnNdCj4gYW5k
IGNvbnRyb2wgZm9yIHRoZSBncGlvIGZ1bmN0aW9uYWxpdHkgaXMgZG9uZSBpbiBzZXBhcmF0ZSBi
bG9ja3MKPiBmb3IgZWFjaCBiYW5rLgo+Cj4gTHVtcGluZyB0aGF0IHN0dWZmIHRvZ2V0aGVyIGlu
dG8gb25lIGRyaXZlciwgd2FzIGEgZGVzaWduLW1pc3Rha2UKPiBmcm9tIHlvdW5nZXItbWUgYmFj
ayBpbiAyMDEzIDstKQoKVGhhbmtzIQoKVG8gdGhlIHN1Ym1pdHRlcjogSnVzdCBmb3IgdGhlIGZ1
dHVyZSwgcGxlYXNlIGVsYWJvcmF0ZSBzdWNoIHRoaW5ncyBpbgp0aGUgY292ZXIgbGV0dGVyLgoK
LS0gCldpdGggQmVzdCBSZWdhcmRzLApBbmR5IFNoZXZjaGVua28KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
