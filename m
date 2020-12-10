Return-Path: <SRS0=ULk2=FO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EE97C4361B
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Dec 2020 21:01:15 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0D20D23E25
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Dec 2020 21:01:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0D20D23E25
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fXC37YXG4bt+N/sQ7H80YbHR+zJLzzf+6+213WcCuNA=; b=HmBMahP6z9Nba2HL64IZkEMHB
	8gXVrmX9rDz92O5WNxKbX+NeU0XUiDIPRiZlLdKzWK8tOsMhse/6JRwXbpGmZQdkiI6IGlAo1NMEt
	OPjiA8WhGsfQXWvdK6kTEno4yn+ob+FJu8kNf2uS83IMEx3pLGd16wbiycrr2cIDFAL3/rOm4RlvU
	66Zn8FQZgJTgvqGKlC0veI7/MzPohImFZQk6xNvWJNPUHfd90jIR2DLnAz9ozri9wkI9YcsLT6L69
	ZHX3DCvbftNRsy4e+XYLzH+b6FuwTznvGwWpKS0yZh6++p/DETJmBWtNFcbJVfuFWoVL7yx+eEzpf
	VufOMKb/A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1knT3l-0007Ss-CI; Thu, 10 Dec 2020 21:01:09 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1knT3f-0007R1-2k; Thu, 10 Dec 2020 21:01:05 +0000
Received: by mail-pf1-x442.google.com with SMTP id d2so5296305pfq.5;
 Thu, 10 Dec 2020 13:01:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xPHH24YwLAMs21kNmL4LSTAD+hhvdVBd+0DZSMEAuqk=;
 b=oeIuwL8YGCRilYpstqg6XEsqx87cqsviwsZBfuNAw2utu6tAJ/yjgNwYvy5Y08F+qL
 mVGMEY4u+aeBmv0iz7M+PuyM0CgaE0Hs+R03NLIcrOtSorbKfFS/CUfrXecCjyBRVvlP
 X9NgwC4B1pXbn+as+njljJ8LGIaFsjMUl0hiJ33CEWZPZT/uzMaJ+FaD/wbQiRNauuI6
 tq1/FkEFA0SqRx2u5wXG5Cn9SmslYwz0DxQTHGP7p9mddua+VC91n0X2MyaMvURlxBoS
 ptrKUzEQDsaBMTGoa82d2SkAM8UC8/MMRgc5yLVSazBJQbmFeww1Paaxoo9lRZePLz1G
 Lb6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xPHH24YwLAMs21kNmL4LSTAD+hhvdVBd+0DZSMEAuqk=;
 b=GS5kFmbpIYREcFiyCPoBRTuZsk6vuxZBy3JfnxpBUPVZaJseroaLk9gG4NCyySOkUQ
 vblZW4VTP4R530XgPii6nAefQ+SzJo0chPBjVp5HS3uy//QgiRbPxwr7wxNOvaRhjSg0
 cIFPDDnUVxPuwBgLNKzLMK0BGkvLWlnwxLfk7NM0hY3LpNrAgL09dLJNFknCoNJDK04b
 EQKqX05VkbwxWAXnDEyvE1Eu68WtWTawMFGXSIj4UoaKUZYEZo453+WCLz/uoOB1ja6x
 Y6am7bnQCNRMOS6zd6MXF/pzDDq0mPxEkKCsFnwU6ltDsOIuOnO2EsA5+e1fnKHwnoeB
 0Ahw==
X-Gm-Message-State: AOAM530c2LTOw28U875Mbfk0MfIDhouohio1IR/lGvf/5vHYftDbdGFQ
 DdzcgwNkjbQ95RhSjQGnWd0=
X-Google-Smtp-Source: ABdhPJzvTJCdjJcoko+gRT0vkMz0zNwNZoP8uJuNCXxbpHxV7kTGG3Og5g93Kh4IYpjNEbe8gJ+2pg==
X-Received: by 2002:a62:7a91:0:b029:19e:55db:9ddc with SMTP id
 v139-20020a627a910000b029019e55db9ddcmr8412355pfc.68.1607634059585; 
 Thu, 10 Dec 2020 13:00:59 -0800 (PST)
Received: from zen.local ([71.212.189.78])
 by smtp.gmail.com with ESMTPSA id u198sm6983712pgc.84.2020.12.10.13.00.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Dec 2020 13:00:58 -0800 (PST)
From: Trent Piepho <tpiepho@gmail.com>
To: Simon South <simon@simonsouth.net>,
 Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH] pwm: rockchip: Eliminate potential race condition when
 probing
Date: Thu, 10 Dec 2020 13:00:57 -0800
Message-ID: <2304095.iZASKD2KPV@zen.local>
In-Reply-To: <X9JfbpTnfqUVk6iN@ulmo>
References: <875z5nof46.fsf@simonsouth.net>
 <20201130004419.1714-1-simon@simonsouth.net> <X9JfbpTnfqUVk6iN@ulmo>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201210_160103_185584_AEAE15B8 
X-CRM114-Status: GOOD (  21.72  )
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
Cc: linux-pwm@vger.kernel.org, heiko@sntech.de, bbrezillon@kernel.org,
 linux-rockchip@lists.infradead.org, u.kleine-koenig@pengutronix.de,
 lee.jones@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1cnNkYXksIERlY2VtYmVyIDEwLCAyMDIwIDk6NDg6MzAgQU0gUFNUIFRoaWVycnkgUmVk
aW5nIHdyb3RlOgo+IE9uIFN1biwgTm92IDI5LCAyMDIwIGF0IDA3OjQ0OjE5UE0gLTA1MDAsIFNp
bW9uIFNvdXRoIHdyb3RlOgo+ID4gQEAgLTMyNiwyMSArMzI5LDM4IEBAIHN0YXRpYyBpbnQgcm9j
a2NoaXBfcHdtX3Byb2JlKHN0cnVjdAo+ID4gcGxhdGZvcm1fZGV2aWNlICpwZGV2KT4gCj4gPiAg
CQlyZXR1cm4gcmV0Owo+ID4gIAkKPiA+ICAJfQo+ID4gCj4gPiAtCXJldCA9IGNsa19wcmVwYXJl
X2VuYWJsZShwYy0+Y2xrKTsKPiA+ICsJcmV0ID0gY2xrX3ByZXBhcmUocGMtPmNsayk7Cj4gPiAK
PiA+ICAJaWYgKHJldCkgewo+ID4gCj4gPiAtCQlkZXZfZXJyKCZwZGV2LT5kZXYsICJDYW4ndCBw
cmVwYXJlIGVuYWJsZSBidXMgY2xrOiAlZFxuIiwgcmV0KTsKPiA+ICsJCWRldl9lcnIoJnBkZXYt
PmRldiwgIkNhbid0IHByZXBhcmUgYnVzIGNsazogJWRcbiIsIHJldCk7Cj4gPiAKPiA+ICAJCXJl
dHVybiByZXQ7Cj4gPiAgCQo+ID4gIAl9Cj4gPiAKPiA+ICsJLyoKPiA+ICsJICogSWYgaXQgYXBw
ZWFycyB0aGUgUFdNIGhhcyBhbHJlYWR5IGJlZW4gZW5hYmxlZCwgcGVyaGFwcyBieSBhCj4gPiAr
CSAqIGJvb3Rsb2FkZXIsIHJlLWVuYWJsZSBpdHMgY2xvY2sgdG8gaW5jcmVtZW50IHRoZSBjbG9j
aydzIGVuYWJsZQo+ID4gKwkgKiBjb3VudGVyIGFuZCBlbnN1cmUgaXQgaXMga2VwdCBydW5uaW5n
IChwYXJ0aWN1bGFybHkgaW4gdGhlIGNhc2UKPiA+ICsJICogd2hlcmUgdGhlcmUgaXMgbm8gc2Vw
YXJhdGUgQVBCIGNsb2NrKS4KPiA+ICsJICovCj4gPiArCWVuYWJsZV9jb25mID0gcGMtPmRhdGEt
PmVuYWJsZV9jb25mOwo+ID4gKwljdHJsID0gcmVhZGxfcmVsYXhlZChwYy0+YmFzZSArIHBjLT5k
YXRhLT5yZWdzLmN0cmwpOwo+ID4gKwllbmFibGVkID0gKGN0cmwgJiBlbmFibGVfY29uZikgPT0g
ZW5hYmxlX2NvbmY7Cj4gCj4gR2l2ZW4gdGhhdCB3ZSBkb24ndCBlbmFibGUgdGhlIGJ1cyBjbG9j
ayBiZWZvcmUgdGhpcywgaXMgaXQgZXZlbiBzYWZlIHRvCj4gYWNjZXNzIHJlZ2lzdGVycyBvbiB0
aGUgYnVzIGlmIHRoZSBjbG9jayBpcyBkaXNhYmxlZD8gSSd2ZSBzZWVuIGEgbG90IG9mCj4gY2Fz
ZXMgd2hlcmUgYWNjZXNzZXMgdG8gYW4gdW5jbG9ja2VkIGJ1cyBlaXRoZXIgbGVhZCB0byBzaWxl
bnQgaGFuZ3Mgb3IKPiB2ZXJ5IG5vaXN5IGNyYXNoZXMsIGFuZCBJIHdvdWxkIGV4cGVjdCBzb21l
dGhpbmcgbGlrZSB0aGF0IChvciBzb21ldGhpbmcKPiBpbiBiZXR3ZWVuKSB0byBoYXBwZW4gb24g
Um9ja2NoaXAgU29Dcy4KCkkgd291bGQgYWxzbyBhc3N1bWUgcmVnaXN0ZXIgYWNjZXNzIHdpdGgg
dGhlIGNsb2NrIGRpc2FibGVkIHdvdWxkIGhhbmcgb3IKb3RoZXJ3aXNlIGZhaWwuICBUaGVyZSBh
cmUgcG9zc2libHkgdHdvIGNsb2Nrcywgb25lIGNhbGxlZCAiYnVzIGNsb2NrIiBhbmQKdGhlIG90
aGVyICJBUEIgY2xvY2siLiAgQVBCIGJlaW5nIEFkdmFuY2VkIFBlcmlwaGVyYWwgQnVzLiAgTm90
IHRoZSBncmVhdGVzdApjaG9pY2Ugb2YgbmFtZXMuICBJIGFzc3VtZSB0aGUgQVBCIGNsb2NrIGlz
IG5lZWRlZCBmb3IgcmVnaXN0ZXIgYWNjZXNzIGFuZAp0aGUgImJ1cyBjbG9jayIgaXMgdXNlZCB0
byBnZW5lcmF0ZSB0aGUgUFdNIHNpZ25hbCBhbmQgZG9lcyBub3QgbmVlZCB0byBiZQplbmFibGVk
IGZvciByZWdpc3RlciBhY2Nlc3MuICBVbmZvcnR1bmF0ZWx5IHRoZSBSSzMzOTkgZG9jcyBkbyBu
b3QgaGF2ZSBhCmNsb2NrIGRpYWdyYW0gZm9yIHRoZSBQV00gb3IgaW5jbHVkZSBkZXRhaWxzIHN1
Y2ggYXMgdGhlc2UuCgpUaGVyZSBpcyBhIGxvdyBwb3dlciBtb2RlIGJpdCBpbiB0aGUgY29udHJv
bCByZWdpc3RlciB0aGF0IGRpc2FibGVzIHRoZSBQV00Kc2lnbmFsJ3MgY2xvY2suICBBbmQgd2hp
Y2ggY2xvY2sgZG9lcyB0aGF0IGRpc2FibGVkLCB0aGUgIkFCUCBjbG9jayIgb3IgdGhlCiJidXMg
Y2xvY2siPyAgSSBxdW90ZSDCpzE4LjYuNCwgInRoZSBBUEIgYnVzIGNsb2NrIOKApiBpcyBnYXRl
ZOKApiIgIEl0J3MgbGlrZQp0aGV5J3JlIGJlaW5nIGludGVudGlvbmFsIGFtYmlndW91cy4KCkFu
eXdheSwgZnJvbSB0aGUgZXhpc3RpbmcgY29kZSwgaXQgc2VlbXMgY2xlYXIgdGhhdCBwYy0+cGNs
ayBuZWVkcyB0byBiZQplbmFibGVkIGZvciByZWdpc3RlciBhY2Nlc3MgYW5kIHBjLT5jbGsgdG8g
Z2VuZXJhdGUgYSBzaWduYWwuICBUaGUgY2FsbCB0bwpjbGtfcHJlcGFyZShwYy0+cGNsaykgc2hv
dWxkIGJlY29tZSBjbGtfcHJlcGFyZV9lbmFibGUocGMtPnBjbGspIGFuZCBtb3ZlZAp0byBiZWZv
cmUgdGhlIGVuYWJsZWRfY29uZiBjaGVjay4gIFRoZW4gY2xrX2Rpc2FibGUocGMtPnBjbGspIGFm
dGVyd2FyZC4KVGhlIGV4aXN0aW5nIGNvZGUgd2lsbCBkaXNhYmxlIHBjbGsgZXZlbiBpZiB0aGUg
UFdNIGlzIGVuYWJsZWQsIHNvIHVubGVzcwp0aGF0IGlzIGFsc28gYSBidWcsIGl0IHNob3VsZCBi
ZSBvayB0byBkaXNhYmxlIHBjLT5wY2xrIGFmdGVyIGVuYWJsaW5nCnBjLT5jbGsuCgoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
