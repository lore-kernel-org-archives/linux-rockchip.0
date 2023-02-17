Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 410EEC636D6
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Feb 2023 23:47:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NOttJrECj+lXgdOfQGVPJ4gcM1KGi5oj4/eG5CqRqv8=; b=XrfzmD+qoWYN5M
	xzIOxS4xnnz9E6oiPEzNRxlpRl6ZGkY806tGzUMyImBgI2p2NjJtDC+KEGOCJwr+j65YQFMEmqfq4
	CFCN3wMyFAY3PaqoY53WDiBoxPjixQmV4mNj/sDA4OlbNcr/rm6FNwcniE2WcjqWGVZYdn8/AGwb9
	m2dy5kutTi3KKnr5tSYNPFUDw8gK5uWg22aLyzGjjqVjnox9zdl0KCXg7d0LOMIF4jxSqN4X9pqTL
	sQn61lLxYyf4HtuEmf5B82a6EOmFfD3WUkFnCpdVSJmamUWGlhBKPrzo1PS2XNlezkphEGeVm85gX
	k9oqvsFfr8ESFJVGv9Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pTARV-00Fyjl-L1; Fri, 17 Feb 2023 23:47:05 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pTARL-00Fyi6-9l
	for linux-rockchip@lists.infradead.org; Fri, 17 Feb 2023 23:46:57 +0000
Received: by mail-pj1-x1034.google.com with SMTP id dw24so245594pjb.1
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Feb 2023 15:46:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112; t=1676677613;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ckp4pLuUHkuempvnYbrn9XuKX3oztgaEXvwAfzzvbKY=;
        b=rWGWSdMT5ixaW0iNl8IhrhsuifkVG2oQPpuqB2Eetrood7DpY5O3hTe8+qsucNsr11
         UCr2m1Sm7iSV33/sNfViZVRh1QGM0SlGmlVSekcypOu6X2iwzSK0RiUkTAyCxHutakzb
         ZNFHMeAzuxMeRESMv9EdMvXIpiJXuIGsMayaq2iAVID//4R0tOdLAuq2IrOqg9gGKVqm
         BbbYZZdAtHuaOsGVxkdFuk5s6nY5jWvbns5uG/pcVznnZmBCoAdMiUf9cDPwfYlAzRhk
         QTGnsMphT8kymOGYBnNjK2l1BJ/0o7Xw8dR/pzvTnvHYrUG2zYDaWbuCzglaw5NaFn72
         pxeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1676677613;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ckp4pLuUHkuempvnYbrn9XuKX3oztgaEXvwAfzzvbKY=;
        b=X8JNS7q4l1z1+WxaHvovFtcJ1ek4ASnxr15yI9Kl3RQqvsmf0MNkpETg7KZ/9l320k
         10o5GXXTiRJiCmZwBWMG80S751YFJilkMwI3ltiNhduYI//vH/zXbPbD1C1ULDGcUK50
         iaEy/d08GQR34uzYBAJGWK1t/p8GCipVOGQvVv5cTV7p/Osl6VAdvRMcWh9xv7p/XooQ
         Jl78+2izeXa4HAlRGsekKYRsQKGHjV6iv3QQpHlN7hhfXdb+vKnfpIDnE9qVAi7btUGj
         RTgG8PRCt+D0YqMSqzgHqjfpj5rqcDSEihurunVaecGFrSJSV9yTjK5JCk2jGTAihfJG
         MpzA==
X-Gm-Message-State: AO0yUKXS1sSpDBdUGA6lv2uvSO34eocKkM4mAxTJfnsz+OZ2O9wqu2tk
	lCU6VdbTafLErllAe3iBPTO+I4s5VDiRo6MHk1xWLA==
X-Google-Smtp-Source: AK7set/WKbRLdtHn4gVAoqZXddY2wGOMgp4LCc77gafDWBJfKQOBHBqd8D3oSx1xsHRCoFAuoVn5+jh3RFhp9BlMoys=
X-Received: by 2002:a17:903:328e:b0:19b:c39:3ba5 with SMTP id
 jh14-20020a170903328e00b0019b0c393ba5mr862857plb.29.1676677613373; Fri, 17
 Feb 2023 15:46:53 -0800 (PST)
MIME-Version: 1.0
References: <932DEB17-70FB-4416-80B3-C48A7C31848F@kohlschutter.com>
 <20220825212842.7176-1-christian@kohlschutter.com> <CAGETcx__Ez8i9O2O30-Q1R00xOqBjkKMCwt37_AGAQjNvZqpdg@mail.gmail.com>
 <B6E001E2-9BCD-420A-B0F6-1495DE46955E@kohlschutter.com>
In-Reply-To: <B6E001E2-9BCD-420A-B0F6-1495DE46955E@kohlschutter.com>
From: Saravana Kannan <saravanak@google.com>
Date: Fri, 17 Feb 2023 15:46:17 -0800
Message-ID: <CAGETcx_OKA+MkExc98337kZYKsoJtV0ZdfYJE7Tk00CFvCt2bA@mail.gmail.com>
Subject: Re: [PATCH v5] regulator: core: Resolve supply name earlier to
 prevent double-init
To: =?UTF-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
Cc: Mark Brown <broonie@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, lgirdwood@gmail.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mmc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	m.reichl@fivetechno.de, robin.murphy@arm.com, vincent.legoll@gmail.com, 
	wens@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230217_154655_346552_79F8E674 
X-CRM114-Status: GOOD (  18.74  )
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

T24gRnJpLCBGZWIgMTcsIDIwMjMgYXQgMzozMyBQTSBDaHJpc3RpYW4gS29obHNjaMO8dHRlcgo8
Y2hyaXN0aWFuQGtvaGxzY2h1dHRlci5jb20+IHdyb3RlOgo+Cj4gT24gMTguIEZlYiAyMDIzLCBh
dCAwMDoyMiwgU2FyYXZhbmEgS2FubmFuIDxzYXJhdmFuYWtAZ29vZ2xlLmNvbT4gd3JvdGU6Cj4g
Pgo+ID4gT24gVGh1LCBBdWcgMjUsIDIwMjIgYXQgMjoyOCBQTSBDaHJpc3RpYW4gS29obHNjaMO8
dHRlcgo+ID4gPGNocmlzdGlhbkBrb2hsc2NodXR0ZXIuY29tPiB3cm90ZToKPiA+Pgo+ID4+IFBy
ZXZpb3VzbHksIGFuIHVucmVzb2x2ZWQgcmVndWxhdG9yIHN1cHBseSByZWZlcmVuY2UgdXBvbiBj
YWxsaW5nCj4gPj4gcmVndWxhdG9yX3JlZ2lzdGVyIG9uIGFuIGFsd2F5cy1vbiBvciBib290LW9u
IHJlZ3VsYXRvciBjYXVzZWQKPiA+PiBzZXRfbWFjaGluZV9jb25zdHJhaW50cyB0byBiZSBjYWxs
ZWQgdHdpY2UuCj4gPj4KPiA+PiBUaGlzIGluIHR1cm4gbWF5IGluaXRpYWxpemUgdGhlIHJlZ3Vs
YXRvciB0d2ljZSwgbGVhZGluZyB0byB2b2x0YWdlCj4gPj4gZ2xpdGNoZXMgdGhhdCBhcmUgdGlt
aW5nLWRlcGVuZGVudC4gQSBzaW1wbGUsIHVucmVsYXRlZCBjb25maWd1cmF0aW9uCj4gPj4gY2hh
bmdlIG1heSBiZSBlbm91Z2ggdG8gaGlkZSB0aGlzIHByb2JsZW0sIG9ubHkgdG8gYmUgc3VyZmFj
ZWQgYnkKPiA+PiBjaGFuY2UuCj4gPgo+ID4gSW4geW91ciBjYXNlLCBjYW4geW91IGVsYWJvcmF0
ZSB3aGljaCBwYXJ0IG9mIHRoZSBjb25zdHJhaW50cy9pbml0Cj4gPiB0d2ljZSBjYXVzZWQgdGhl
IGlzc3VlPwo+ID4KPiA+IEknbSB0cnlpbmcgdG8gc2ltcGxpZnkgc29tZSBvZiB0aGUgc3VwcGx5
IHJlc29sdmluZyBjb2RlIGFuZCBJJ20KPiA+IHRyeWluZyB0byBub3QgYnJlYWsgeW91ciB1c2Ug
Y2FzZS4KPiA+Cj4gPiAtU2FyYXZhbmEKPgo+IEhlcmUncyBhIHdyaXRlLXVwIG9mIG15IHVzZSBj
YXNlLCBhbmQgaG93IHdlIGdvdCB0byB0aGUgc29sdXRpb246Cj4gaHR0cHM6Ly9rb2hsc2NodWV0
dGVyLmdpdGh1Yi5pby9ibG9nL3Bvc3RzLzIwMjIvMTAvMjgvbGludXgtbmFub3BpLXI0cy8KCkkg
ZGlkIHJlYWQgdGhlIHdyaXRlIHVwIGJlZm9yZSBJIHNlbnQgbXkgcmVxdWVzdC4gSSdtIGFza2lu
ZyBmb3IKc3BlY2lmaWNzIG9uIHdoaWNoIGZ1bmN0aW9ucyBpbiB0aGUgc2V0X21hY2hpbmVfY29u
c3RyYWludHMoKSB3YXMKY2F1c2luZyB0aGUgaXNzdWUuIEFuZCBpdCdzIGFsc28gYSBiaXQgdW5j
bGVhciB0byBtZSBpZiB0aGUgaXNzdWUgd2FzCndpdGggaGF2aW5nIHN0dWZmIGNhbGxlZCB0d2lj
ZSBvbiB0aGUgYWx3YXktb24gcmVndWxhdG9yIG9yIHRoZQpzdXBwbHkuCgotU2FyYXZhbmEKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
