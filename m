Return-Path: <SRS0=l5YQ=DI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 088DDC4363D
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Oct 2020 02:07:37 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id ED64A2193E
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Oct 2020 02:07:34 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="fRVloyC5"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org ED64A2193E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=kobol.io
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Bv+JYlm8mvgfJwAgMBEvSi5jKuQfX4Mkx+7oYg6AIBY=; b=fRVloyC5ymPu2JBpl39eDGq/p
	oDBRDb8m5MfHjoABT4auR5QGaEKf/9pWR7esQdnpoF33/Jq+Lg5nQlpvUz/4U71pCjh6M1ImgkRsJ
	QSU56hG5JFnFpg9Tbomy4i/RbuZV21fSjx6QKs12vcgM2MPruJspPP8EH5qftldknMFu39gihOEu1
	Aru5OSG2exYJNwjC1UCkD6UVmSCGsLt1sB+uT8XI1ZGTH6n38noHCQJPJuSsFZFdeyP3z+LyNyzw/
	OHMkfyUPDdbWLx0tKIcZcwhNsQ2n7ziGpmL43StQ/uH260OApObwhqO73bwuNi8asABh57fjqDRpb
	R7DlMN8cA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNo0D-0006sa-UJ; Thu, 01 Oct 2020 02:07:25 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNo07-0006rK-OF; Thu, 01 Oct 2020 02:07:21 +0000
X-Originating-IP: 209.85.217.43
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com
 [209.85.217.43]) (Authenticated sender: aditya@kobol.io)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 7BEBE40004;
 Thu,  1 Oct 2020 02:07:13 +0000 (UTC)
Received: by mail-vs1-f43.google.com with SMTP id 5so1896218vsu.5;
 Wed, 30 Sep 2020 19:07:13 -0700 (PDT)
X-Gm-Message-State: AOAM531ykQ87mYw6Vv8KbWIEu5DGse2CfAG9Wsgr7lRuJLpcEKSv7VFY
 QDwQfhwQ5lSgEDUBXxguqGfgVDkyGmFZgZxInMk=
X-Google-Smtp-Source: ABdhPJxtR9sqDvtxZkHRCFuQmT7REE3/QbaaZHxBaMnf79ZhgXzCvPSu7pKLyQ5Bd5eXjJaeqICIA/3x49ZoPl2ddG8=
X-Received: by 2002:a67:6952:: with SMTP id e79mr3927526vsc.4.1601518032397;
 Wed, 30 Sep 2020 19:07:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200925214003.27186-1-uwe@kleine-koenig.org>
 <20200925214003.27186-2-uwe@kleine-koenig.org>
 <20200926135553.GA17434@taurus.defre.kleine-koenig.org>
In-Reply-To: <20200926135553.GA17434@taurus.defre.kleine-koenig.org>
From: Aditya Prayoga <aditya@kobol.io>
Date: Thu, 1 Oct 2020 09:07:01 +0700
X-Gmail-Original-Message-ID: <CAFTRUBc3BA1mrboJ5Lpjg=C0ckkZ4H4GckEDk=1BmzzWdTbv8A@mail.gmail.com>
Message-ID: <CAFTRUBc3BA1mrboJ5Lpjg=C0ckkZ4H4GckEDk=1BmzzWdTbv8A@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add basic support for Kobol's
 Helios64
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <uwe@kleine-koenig.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200930_220719_881353_89246160 
X-CRM114-Status: GOOD (  11.59  )
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
Cc: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiBTYXQsIFNlcCAyNiwgMjAyMCBhdCA4OjU1IFBNIFV3ZSBLbGVpbmUtS8O2bmlnIDx1
d2VAa2xlaW5lLWtvZW5pZy5vcmc+IHdyb3RlOgo+Cj4gT25lIGltcG9ydGFudCB0aGluZyBJIGZv
cmdvdCB0byBtZW50aW9uIGhlcmUgaXM6IFRoaXMgZGV2aWNldHJlZSBpcyBhCj4gc3RyaXBwZWQg
ZG93biB2ZXJzaW9uIG9mIHRoZSBoZWxpb3M2NCBzdXBwb3J0IGluY2x1ZGVkIGluIEFybWJpYW4g
dGhhdAo+IHdhcyB3cml0dGVuIGJ5IEFkaXR5YSBQcmF5b2dhLiBUaGUgb3JpZ2luYWwgaGFzIGEg
bGluZQo+Cj4gICAgICAgICBDb3B5cmlnaHQgKGMpIDIwMjAgQWRpdHlhIFByYXlvZ2EgKGFkaXR5
YUBrb2JvbC5pbykKPgo+IHdoZXJlIEkgd2FzIHVuc3VyZSBpZiBJIHNob3VsZCBkcm9wIGl0IG9y
IG5vdC4gQEFkaXR5YTogUGxlYXNlIGFkdmlzZSBpZgo+IHlvdSB3YW50IHRoaXMgaW5jbHVkZWQs
IHRoZW4gSSB0YWtlIGNhcmUgb2YgdGhhdCBmb3IgdjIuCj4KWWVzLCBwbGVhc2UgaW5jbHVkZSBp
dC4gVGhhbmtzCgpBZGl0eWEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
