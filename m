Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CEFFCF2564
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 12:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yKYA3uuRf94M7uyM8HbRRaiB9aM54NYQlpTGpKosJIk=; b=NcITgQcHf1xsol
	9++weHAFo8R0MWmo68eXHmVqpa17WNDG9Eg/3ly6FFv7uF7xqUiWM/noBOObK8SWlQv188TmtokwJ
	H2BagpmSsBrVt2IrQ+e8zYHtvPdIYe/GzsHfIqm1LQ7F4dL5XtiMPdmn2ppd929Zhjj/KaHGwVLzA
	sJqSCe/pZH0UMFVn6CXWfRDe2MAtCRdT4bXCFP3yL/vNA9Roa1ryq76agA5cgLqiqOiWLVQS+KUd0
	jyfhGjBOgGG3Hi9SwDO3YqhH+nlZdmTBC2g/WPfVMejbMGPc6AbU8M2bfTPG9xIvVDPRp4yWWzb1q
	LDGIMsN00UoAtgmkpVjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szb2v-00000001B8Z-3U3a;
	Sat, 12 Oct 2024 12:16:33 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szb2t-00000001B8C-1fSe
	for linux-rockchip@lists.infradead.org;
	Sat, 12 Oct 2024 12:16:32 +0000
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-71dff3b3c66so1802043b3a.0
        for <linux-rockchip@lists.infradead.org>; Sat, 12 Oct 2024 05:16:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728735390; x=1729340190; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CuW3rboOAG1eM7gMjWc9QpSNVTecsSZqlvXpnegovBc=;
        b=dnfRtTujiA0QA8uxOflgss+0jiAX0zB/4USlpkvD3TFa7GS5EdPb33JwbQDooVgZ3n
         oakwJEu5gonbRqDnSKBrPty9DxJF1urWz2tzHfBRq5L7169L7vRLDljMZaq6sOsCpGha
         Pn1H3DbyGlo0hNIl7/QuRDD2RLumrMVGtxx3L9/7tr9wAG8QfQz9uS4XfBDwNoRsV1YR
         PpF/Lz3CndFQPJoVa3B3g52cQdPnMWjKzQIgBo7k+fZauj59/jnxC7zvODAcS9Cy1xrH
         bqp1wtD/3YvSO9NqxoqWTVbtyOkCIopGz0wfMQ0h4fV2PlMvjkDKP+UfmXG40jbN1V2V
         4dRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728735390; x=1729340190;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CuW3rboOAG1eM7gMjWc9QpSNVTecsSZqlvXpnegovBc=;
        b=jPAN8LwTqoY5yHkuBOyW8HTprp4Lnm/L3uKIfVXQnUihfCou4E0T2tY2bWiobwYIhb
         dqpCBv8np7RRNTe8rL9BvRWFso5atUKl9Yf94jJ9J2zbtIPBUWCdO03XBgQS/iQwihG7
         09MxZcX5n9G/r9l4OQXwVP6hZICQdImgXOvaSyvowpmsVNU6bPiyUbsvKIHavdiULJIf
         fsvhNseU/IaR37KJghf+hh+WFPGzaVcUD4WfTQBncjUzoeKuzV9H+j9qjMptv9JC47we
         v1n2+YzOLmpf9QLOcPGr2vmOJFyGEFcuu/O4bLcl2xWFzggiUr119S82Ln9VOuTrRYa/
         70oA==
X-Forwarded-Encrypted: i=1; AJvYcCVZrZFJ9ecC00K52uYyAO3m1QenooJdHvA4kh6E/fPI8f6P62YMQp1qU2pe8Ubq4sq370r/kXv+T4q5rhZQBA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw4BDMRFctEyk4R4jsm2KpdfBadhz2tHVG0KihsNg/Bgsbjk/yf
	tCg1GNHX0M4SOJDGGkgqPcMBq1FUZyQTUUNMCC3i9Ub5chlHiUr9uUSRUOthlQ==
X-Google-Smtp-Source: AGHT+IFJFAKq8AvKr5WqJJluQSblJRPi1x8ZqEJtRUpmaq30Rs5xjtclmV9IFrQu3SO8OQr5mniMDQ==
X-Received: by 2002:a05:6a21:168e:b0:1d7:7ea:2f36 with SMTP id adf61e73a8af0-1d8bcefde33mr8009237637.4.1728735390374;
        Sat, 12 Oct 2024 05:16:30 -0700 (PDT)
Received: from thinkpad ([220.158.156.122])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e4dbad815sm1142523b3a.175.2024.10.12.05.16.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 05:16:29 -0700 (PDT)
Date: Sat, 12 Oct 2024 17:46:22 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v3 10/12] PCI: rockchip-ep: Improve link training
Message-ID: <20241012121622.owkg5geqp5jqtjod@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-11-dlemoal@kernel.org>
 <20241010103550.elwd2k35t4k4cypu@thinkpad>
 <84efa346-c1de-44d5-8b27-2481043e9102@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <84efa346-c1de-44d5-8b27-2481043e9102@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_051631_466288_54CAEEBF 
X-CRM114-Status: GOOD (  19.92  )
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

T24gRnJpLCBPY3QgMTEsIDIwMjQgYXQgMDU6NTU6MjVQTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gT24gMTAvMTAvMjQgMTk6MzUsIE1hbml2YW5uYW4gU2FkaGFzaXZhbSB3cm90ZToK
PiA+PiArc3RhdGljIHZvaWQgcm9ja2NoaXBfcGNpZV9lcF9saW5rX3RyYWluaW5nKHN0cnVjdCB3
b3JrX3N0cnVjdCAqd29yaykKPiA+PiArewo+ID4+ICsJc3RydWN0IHJvY2tjaGlwX3BjaWVfZXAg
KmVwID0KPiA+PiArCQljb250YWluZXJfb2Yod29yaywgc3RydWN0IHJvY2tjaGlwX3BjaWVfZXAs
IGxpbmtfdHJhaW5pbmcud29yayk7Cj4gPj4gKwlzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2No
aXAgPSAmZXAtPnJvY2tjaGlwOwo+ID4+ICsJc3RydWN0IGRldmljZSAqZGV2ID0gcm9ja2NoaXAt
PmRldjsKPiA+PiArCXUzMiB2YWw7Cj4gPj4gKwlpbnQgcmV0Owo+ID4+ICsKPiA+PiArCS8qIEVu
YWJsZSBHZW4xIHRyYWluaW5nIGFuZCB3YWl0IGZvciBpdHMgY29tcGxldGlvbiAqLwo+ID4+ICsJ
cmV0ID0gcmVhZGxfcG9sbF90aW1lb3V0KHJvY2tjaGlwLT5hcGJfYmFzZSArIFBDSUVfQ09SRV9D
VFJMLAo+ID4+ICsJCQkJIHZhbCwgUENJRV9MSU5LX1RSQUlOSU5HX0RPTkUodmFsKSwgNTAsCj4g
Pj4gKwkJCQkgTElOS19UUkFJTl9USU1FT1VUKTsKPiA+PiArCWlmIChyZXQpCj4gPj4gKwkJZ290
byBhZ2FpbjsKPiA+PiArCj4gPj4gKwkvKiBNYWtlIHN1cmUgdGhhdCB0aGUgbGluayBpcyB1cCAq
Lwo+ID4+ICsJcmV0ID0gcmVhZGxfcG9sbF90aW1lb3V0KHJvY2tjaGlwLT5hcGJfYmFzZSArIFBD
SUVfQ0xJRU5UX0JBU0lDX1NUQVRVUzEsCj4gPj4gKwkJCQkgdmFsLCBQQ0lFX0xJTktfVVAodmFs
KSwgNTAsCj4gPj4gKwkJCQkgTElOS19UUkFJTl9USU1FT1VUKTsKPiA+PiArCWlmIChyZXQpCj4g
Pj4gKwkJZ290byBhZ2FpbjsKPiA+PiArCj4gPj4gKwkvKiBDaGVjayB0aGUgY3VycmVudCBzcGVl
ZCAqLwo+ID4+ICsJdmFsID0gcm9ja2NoaXBfcGNpZV9yZWFkKHJvY2tjaGlwLCBQQ0lFX0NPUkVf
Q1RSTCk7Cj4gPj4gKwlpZiAoIVBDSUVfTElOS19JU19HRU4yKHZhbCkgJiYgcm9ja2NoaXAtPmxp
bmtfZ2VuID09IDIpIHsKPiA+IAo+ID4gUENJRV9MSU5LX0lTX0dFTjIoKT8KPiAKPiBUaGlzIGlz
IGRlZmluZWQgaW4gZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmguIFdoYXQg
aXMgaXQgZXhhY3RseQo+IHlvdSB3b3VsZCBsaWtlIHRvIGtub3cgYWJvdXQgdGhpcyA/Cj4gCgoh
UENJRV9MSU5LX0lTX0dFTjIgbWVhbnMgY2hlY2sgaXMgZm9yIG5vbi1HZW4yIG1vZGUsIGlzbid0
IGl0PyBJIGd1ZXNzIHRoZSBjaGVjawpzaG91bGQgYmUgJ2lmIChQQ0lFX0xJTktfSVNfR0VOMi4u
LikKCj4gPiAKPiA+PiArCQkvKiBFbmFibGUgcmV0cmFpbiBmb3IgZ2VuMiAqLwo+ID4+ICsJCXJv
Y2tjaGlwX3BjaWVfZXBfcmV0cmFpbl9saW5rKHJvY2tjaGlwKTsKPiA+PiArCQlyZWFkbF9wb2xs
X3RpbWVvdXQocm9ja2NoaXAtPmFwYl9iYXNlICsgUENJRV9DT1JFX0NUUkwsCj4gPj4gKwkJCQkg
ICB2YWwsIFBDSUVfTElOS19JU19HRU4yKHZhbCksIDUwLAo+ID4+ICsJCQkJICAgTElOS19UUkFJ
Tl9USU1FT1VUKTsKPiA+PiArCX0KPiA+PiArCj4gPj4gKwkvKiBDaGVjayBhZ2FpbiB0aGF0IHRo
ZSBsaW5rIGlzIHVwICovCj4gPj4gKwlpZiAoIXJvY2tjaGlwX3BjaWVfZXBfbGlua191cChyb2Nr
Y2hpcCkpCj4gPj4gKwkJZ290byBhZ2FpbjsKPiA+IAo+ID4gVFJNIGRvZXNuJ3QgbWVudGlvbiB0
aGlzIGNoZWNrLiBJcyB0aGlzIHJlYWxseSBuZWNlc3Nhcnk/Cj4gCj4gSSB0aGluayBzbywgdG8g
Y2hlY2sgdGhlIHJlc3VsdCBvZiB0aGUgc2Vjb25kIHRyYWluaW5nIGZvciBnZW4yLgo+IEV2ZW4g
dGhvdWdoIHRoZSBUUk0gZG9lcyBub3Qgc2F5IHNvLCBJIHByZWZlciBjaGVja2luZyB0aGF0IHRo
ZSByZXN1bHQgaXMgd2hhdAo+IHdlIGV4cGVjdDogdGhlIGxpbmsgaXMgdXAuCj4gCgpPay4KCi0g
TWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXg
rq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
