Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B080CF11D7
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Oct 2024 12:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ryBGsEEzGULbGlrlFmn/ECtaJW+tCD7ToZ7GT9SHuME=; b=lrmnQzfgs3GlpK
	Q0yLowUPhEp/9BDJnLqFLUzVF6nVXBXiFf1QiBb26GFq73X295l6347UGMVmA7rSfHWnA9IrSQiFH
	lGjdIRoGEQRkqhCrw5GXnRhg+/afWUimYHymc2/ec/wb1+PUsPDDTQ4tMtzPJvbVv8n/QCi9JFhkY
	DxyG9y/ZMQG8jCsnF/TDgWjDBbf1Whq/TaMUFxh/ggfNXCMs0HgkXmlbSPum6DH9uEuxolM5PFwvQ
	UukjHJ8Mw571EeQlotpk8P4/OKY9yafHdBasbuDDABnKvo4y4Fd+KFU7r9oLKe0yot6YtDF1Vvh29
	durSS3Bo6BV0vxuJc5aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syrr2-0000000CdIz-2XmR;
	Thu, 10 Oct 2024 12:01:16 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syqWV-0000000CPAO-3ne8
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Oct 2024 10:36:01 +0000
Received: by mail-pj1-x1029.google.com with SMTP id 98e67ed59e1d1-2e2cc469c62so520694a91.2
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Oct 2024 03:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728556558; x=1729161358; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=90kCFwX2rvFJ1EX0qVrB7V4aNyyA47t7eqFcnQ7sd14=;
        b=VQ+UYcuWcZVQkZmyQH+fHOgo/uI3XT2hkW7xwSzyJlL7LxnwMN0QxoC+xKaNEMK4s9
         vqP3X7/CqWgA8Z8IltXAz7+u0VIJw0tgoN3b1OLrhUHvKq4wPxLy8ZIjSMnDtjbPfise
         rypCoDBSEkUCHwCpC/VmESqe3GdcUZGCnSyrO2QjeJZRFKw9H6P1dm0s9sm9M4bya9pB
         sl6MG8CuromNYTEg0yi8zXQPMf2WgUU7cqauyYUJNsectAWJ0h7x2mY8wc4qlhJJ4kC9
         RzC7uWQ4jStI9vgTFSdMo6hB0+SI3hyROPFQ5ojJRarKxD7mMSxQ7KZI3DkFcCM9hdFV
         aFTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728556558; x=1729161358;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=90kCFwX2rvFJ1EX0qVrB7V4aNyyA47t7eqFcnQ7sd14=;
        b=loXScvS4QXit/lx4GUSOuvkfPdHGhhBrLImbX30lJpJnArqlb/s0ngAo2Tx+J/9eAT
         R6GeYXbnPinKuQgbcVG3aUMSPKpw3SWz6+mMCnmk6uotq6cCUCGqMGUdQCFw0cxxsgSH
         +Hx4jky3k50tX0oGO3DPQnR7/GEfU6wFYQkeO9JfdLTnS3dqAywlbl+ik88WFQirUnjk
         S8lQp1XfC7jICnmYUqmiqTqgezGexfBJtSzWfRaXccBQcOR4fSfRd7nf/dge8LdiNY9+
         4uvenuxOHDDXy2krU9kfgSxm3hIwT0oBDzLRNjEvQvz2ou1E1fWQrQCYBsHPqgdhgQED
         Km0g==
X-Forwarded-Encrypted: i=1; AJvYcCV5OFvBQ5YkK9R3v3G1ckfgkWSZskB1G6B3YdYO2PXFLH1kHNqc/LjvjUGrjtmDti+DlEyTlK4AfZKGetVtFQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw8THKgitFdRpg2tPZxvWZcbNaqdMXsOrJ2Qa4nte0ns08GAbBL
	WQvmAFX+Ndpxom7M0XZw58+mKW65I1CMQQ2+2LcGweSqWrB2lNhBM7ZedrL5hA==
X-Google-Smtp-Source: AGHT+IED2bSUu+lVDaGy2RN4aKt78OaxV4xRcBnWCUkQllV8/en+YZ3X+i9YU8U4s95jGGviZKDKwQ==
X-Received: by 2002:a17:90a:e395:b0:2e2:cf5c:8edf with SMTP id 98e67ed59e1d1-2e2cf5c8fe4mr2286223a91.9.1728556558052;
        Thu, 10 Oct 2024 03:35:58 -0700 (PDT)
Received: from thinkpad ([220.158.156.184])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e2b41f8377sm1503510a91.1.2024.10.10.03.35.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 03:35:57 -0700 (PDT)
Date: Thu, 10 Oct 2024 16:05:50 +0530
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
Message-ID: <20241010103550.elwd2k35t4k4cypu@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-11-dlemoal@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241007041218.157516-11-dlemoal@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_033559_986092_613F6D5F 
X-CRM114-Status: GOOD (  32.78  )
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

T24gTW9uLCBPY3QgMDcsIDIwMjQgYXQgMDE6MTI6MTZQTSArMDkwMCwgRGFtaWVuIExlIE1vYWwg
d3JvdGU6Cj4gVGhlIFJvY2tjaGlwIHJrMzM5IHRlY2huaWNhbCByZWZlcmVuY2UgbWFudWFsIGRl
c2NyaWJlIHRoZSBlbmRwb2ludCBtb2RlCgpSSzMzOTkKClBsZWFzZSBpbmNsdWRlIHRoZSBmdWxs
IHJlZmVyZW5jZTogVFJNIG5hbWUgZm9sbG93ZWQgYnkgdGhlIHNlY3Rpb24uCgo+IGxpbmsgdHJh
aW5pbmcgcHJvY2VzcyBjbGVhcmx5IGFuZCBzdGF0ZXMgdGhhdDoKPiAgIEluc3VyZSBsaW5rIHRy
YWluaW5nIGNvbXBsZXRpb24gYW5kIHN1Y2Nlc3MgYnkgb2JzZXJ2aW5nIGxpbmtfc3QgZmllbGQK
PiAgIGluIFBDSWUgQ2xpZW50IEJBU0lDX1NUQVRVUzEgcmVnaXN0ZXIgY2hhbmdlIHRvIDInYjEx
LiBJZiBib3RoIHNpZGUKPiAgIHN1cHBvcnQgUENJZSBHZW4yIHNwZWVkLCByZS10cmFpbiBjYW4g
YmUgSW5pdGlhdGVkIGJ5IGFzc2VydGluZyB0aGUKPiAgIFJldHJhaW4gTGluayBmaWVsZCBpbiBM
aW5rIENvbnRyb2wgYW5kIFN0YXR1cyBSZWdpc3Rlci4gVGhlIHNvZnR3YXJlCj4gICBzaG91bGQg
aW5zdXJlIHRoZSBCQVNJQ19TVEFUVVMwW25lZ290aWF0ZWRfc3BlZWRdIGNoYW5nZXMgdG8gIjEi
LCB0aGF0Cj4gICBpbmRpY2F0ZXMgcmUtdHJhaW4gdG8gR2VuMiBzdWNjZXNzZnVsbHkuCj4gVGhp
cyBwcm9jZWR1cmUgaXMgdmVyeSBzaW1pbGFyIHRvIHdoYXQgaXMgZG9uZSBmb3IgdGhlIHJvb3Qt
cG9ydCBtb2RlIGluCj4gcm9ja2NoaXBfcGNpZV9ob3N0X2luaXRfcG9ydCgpLgo+IAo+IEltcGxl
bWVudCB0aGlzIGxpbmsgdHJhaW5pbmcgcHJvY2VkdXJlIGZvciB0aGUgZW5kcG9pbnQgbW9kZSBh
cyB3ZWxsLgo+IEdpdmVuIHRoYXQgdGhlIHJrMzM5OSBTb0MgZG9lcyBub3QgaGF2ZSBhbiBpbnRl
cnJ1cHQgc2lnbmFsaW5nIGxpbmsKPiBzdGF0dXMgY2hhbmdlcywgdHJhaW5pbmcgaXMgaW1wbGVt
ZW50ZWQgYXMgYSBkZWxheWVkIHdvcmsgd2hpY2ggaXMKPiByZXNjaGVkdWxlZCB1bnRpbCB0aGUg
bGluayB0cmFpbmluZyBjb21wbGV0ZXMgb3IgdGhlIGVuZHBvaW50IGNvbnRyb2xsZXIKPiBpcyBz
dG9wcGVkLiBUaGUgbGluayB0cmFpbmluZyB3b3JrIGlzIGZpcnN0IHNjaGVkdWxlZCBpbgo+IHJv
Y2tjaGlwX3BjaWVfZXBfc3RhcnQoKSB3aGVuIHRoZSBlbmRwb2ludCBmdW5jdGlvbiBpcyBzdGFy
dGVkLiBMaW5rCj4gdHJhaW5pbmcgY29tcGxldGlvbiBpcyBzaWduYWxlZCB0byB0aGUgZnVuY3Rp
b24gdXNpbmcgcGNpX2VwY19saW5rdXAoKS4KPiBBY2NvcmRpbmdseSwgdGhlIGxpbmt1cF9ub3Rp
ZmllciBmaWVsZCBvZiB0aGUgcm9ja2NoaXAgcGNpX2VwY19mZWF0dXJlcwo+IHN0cnVjdHVyZSBp
cyBjaGFuZ2VkIHRvIHRydWUuCj4gCj4gU2lnbmVkLW9mZi1ieTogRGFtaWVuIExlIE1vYWwgPGRs
ZW1vYWxAa2VybmVsLm9yZz4KPiAtLS0KPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJv
Y2tjaGlwLWVwLmMgfCA3OSArKysrKysrKysrKysrKysrKysrKysrLQo+ICBkcml2ZXJzL3BjaS9j
b250cm9sbGVyL3BjaWUtcm9ja2NoaXAuaCAgICB8IDExICsrKysKPiAgMiBmaWxlcyBjaGFuZ2Vk
LCA4OSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jIGIvZHJpdmVycy9wY2kvY29udHJv
bGxlci9wY2llLXJvY2tjaGlwLWVwLmMKPiBpbmRleCBhODAxZTA0MGJjYWQuLmFmNTA0MzI1MjVi
NCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtZXAu
Ywo+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jCj4gQEAg
LTE2LDYgKzE2LDggQEAKPiAgI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2RldmljZS5oPgo+ICAj
aW5jbHVkZSA8bGludXgvcGNpLWVwZi5oPgo+ICAjaW5jbHVkZSA8bGludXgvc2l6ZXMuaD4KPiAr
I2luY2x1ZGUgPGxpbnV4L3dvcmtxdWV1ZS5oPgo+ICsjaW5jbHVkZSA8bGludXgvaW9wb2xsLmg+
CgpQbGVhc2Uga2VlcCB0aGUgaW5jbHVkZXMgc29ydGVkLgoKPiAgCj4gICNpbmNsdWRlICJwY2ll
LXJvY2tjaGlwLmgiCj4gIAo+IEBAIC00OCw2ICs1MCw3IEBAIHN0cnVjdCByb2NrY2hpcF9wY2ll
X2VwIHsKPiAgCXU2NAkJCWlycV9wY2lfYWRkcjsKPiAgCXU4CQkJaXJxX3BjaV9mbjsKPiAgCXU4
CQkJaXJxX3BlbmRpbmc7Cj4gKwlzdHJ1Y3QgZGVsYXllZF93b3JrCWxpbmtfdHJhaW5pbmc7Cj4g
IH07Cj4gIAo+ICBzdGF0aWMgdm9pZCByb2NrY2hpcF9wY2llX2NsZWFyX2VwX29iX2F0dShzdHJ1
Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXAsCj4gQEAgLTQ2NSw2ICs0NjgsOCBAQCBzdGF0aWMg
aW50IHJvY2tjaGlwX3BjaWVfZXBfc3RhcnQoc3RydWN0IHBjaV9lcGMgKmVwYykKPiAgCQkJICAg
IFBDSUVfQ0xJRU5UX0NPTkZfRU5BQkxFLAo+ICAJCQkgICAgUENJRV9DTElFTlRfQ09ORklHKTsK
PiAgCj4gKwlzY2hlZHVsZV9kZWxheWVkX3dvcmsoJmVwLT5saW5rX3RyYWluaW5nLCAwKTsKPiAr
Cj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAKPiBAQCAtNDczLDYgKzQ3OCw4IEBAIHN0YXRpYyB2b2lk
IHJvY2tjaGlwX3BjaWVfZXBfc3RvcChzdHJ1Y3QgcGNpX2VwYyAqZXBjKQo+ICAJc3RydWN0IHJv
Y2tjaGlwX3BjaWVfZXAgKmVwID0gZXBjX2dldF9kcnZkYXRhKGVwYyk7Cj4gIAlzdHJ1Y3Qgcm9j
a2NoaXBfcGNpZSAqcm9ja2NoaXAgPSAmZXAtPnJvY2tjaGlwOwo+ICAKPiArCWNhbmNlbF9kZWxh
eWVkX3dvcmtfc3luYygmZXAtPmxpbmtfdHJhaW5pbmcpOwo+ICsKPiAgCS8qIFN0b3AgbGluayB0
cmFpbmluZyBhbmQgZGlzYWJsZSBjb25maWd1cmF0aW9uICovCj4gIAlyb2NrY2hpcF9wY2llX3dy
aXRlKHJvY2tjaGlwLAo+ICAJCQkgICAgUENJRV9DTElFTlRfQ09ORl9ESVNBQkxFIHwKPiBAQCAt
NDgwLDggKzQ4Nyw3NyBAQCBzdGF0aWMgdm9pZCByb2NrY2hpcF9wY2llX2VwX3N0b3Aoc3RydWN0
IHBjaV9lcGMgKmVwYykKPiAgCQkJICAgIFBDSUVfQ0xJRU5UX0NPTkZJRyk7Cj4gIH0KPiAgCj4g
K3N0YXRpYyB2b2lkIHJvY2tjaGlwX3BjaWVfZXBfcmV0cmFpbl9saW5rKHN0cnVjdCByb2NrY2hp
cF9wY2llICpyb2NrY2hpcCkKPiArewo+ICsJdTMyIHN0YXR1czsKPiArCj4gKwlzdGF0dXMgPSBy
b2NrY2hpcF9wY2llX3JlYWQocm9ja2NoaXAsIFBDSUVfRVBfQ09ORklHX0xDUyk7Cj4gKwlzdGF0
dXMgfD0gUENJX0VYUF9MTktDVExfUkw7Cj4gKwlyb2NrY2hpcF9wY2llX3dyaXRlKHJvY2tjaGlw
LCBzdGF0dXMsIFBDSUVfRVBfQ09ORklHX0xDUyk7Cj4gK30KPiArCj4gK3N0YXRpYyBib29sIHJv
Y2tjaGlwX3BjaWVfZXBfbGlua191cChzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXApCj4g
K3sKPiArCXUzMiB2YWwgPSByb2NrY2hpcF9wY2llX3JlYWQocm9ja2NoaXAsIFBDSUVfQ0xJRU5U
X0JBU0lDX1NUQVRVUzEpOwo+ICsKPiArCXJldHVybiBQQ0lFX0xJTktfVVAodmFsKTsKPiArfQo+
ICsKPiArc3RhdGljIHZvaWQgcm9ja2NoaXBfcGNpZV9lcF9saW5rX3RyYWluaW5nKHN0cnVjdCB3
b3JrX3N0cnVjdCAqd29yaykKPiArewo+ICsJc3RydWN0IHJvY2tjaGlwX3BjaWVfZXAgKmVwID0K
PiArCQljb250YWluZXJfb2Yod29yaywgc3RydWN0IHJvY2tjaGlwX3BjaWVfZXAsIGxpbmtfdHJh
aW5pbmcud29yayk7Cj4gKwlzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXAgPSAmZXAtPnJv
Y2tjaGlwOwo+ICsJc3RydWN0IGRldmljZSAqZGV2ID0gcm9ja2NoaXAtPmRldjsKPiArCXUzMiB2
YWw7Cj4gKwlpbnQgcmV0Owo+ICsKPiArCS8qIEVuYWJsZSBHZW4xIHRyYWluaW5nIGFuZCB3YWl0
IGZvciBpdHMgY29tcGxldGlvbiAqLwo+ICsJcmV0ID0gcmVhZGxfcG9sbF90aW1lb3V0KHJvY2tj
aGlwLT5hcGJfYmFzZSArIFBDSUVfQ09SRV9DVFJMLAo+ICsJCQkJIHZhbCwgUENJRV9MSU5LX1RS
QUlOSU5HX0RPTkUodmFsKSwgNTAsCj4gKwkJCQkgTElOS19UUkFJTl9USU1FT1VUKTsKPiArCWlm
IChyZXQpCj4gKwkJZ290byBhZ2FpbjsKPiArCj4gKwkvKiBNYWtlIHN1cmUgdGhhdCB0aGUgbGlu
ayBpcyB1cCAqLwo+ICsJcmV0ID0gcmVhZGxfcG9sbF90aW1lb3V0KHJvY2tjaGlwLT5hcGJfYmFz
ZSArIFBDSUVfQ0xJRU5UX0JBU0lDX1NUQVRVUzEsCj4gKwkJCQkgdmFsLCBQQ0lFX0xJTktfVVAo
dmFsKSwgNTAsCj4gKwkJCQkgTElOS19UUkFJTl9USU1FT1VUKTsKPiArCWlmIChyZXQpCj4gKwkJ
Z290byBhZ2FpbjsKPiArCj4gKwkvKiBDaGVjayB0aGUgY3VycmVudCBzcGVlZCAqLwo+ICsJdmFs
ID0gcm9ja2NoaXBfcGNpZV9yZWFkKHJvY2tjaGlwLCBQQ0lFX0NPUkVfQ1RSTCk7Cj4gKwlpZiAo
IVBDSUVfTElOS19JU19HRU4yKHZhbCkgJiYgcm9ja2NoaXAtPmxpbmtfZ2VuID09IDIpIHsKClBD
SUVfTElOS19JU19HRU4yKCk/Cgo+ICsJCS8qIEVuYWJsZSByZXRyYWluIGZvciBnZW4yICovCj4g
KwkJcm9ja2NoaXBfcGNpZV9lcF9yZXRyYWluX2xpbmsocm9ja2NoaXApOwo+ICsJCXJlYWRsX3Bv
bGxfdGltZW91dChyb2NrY2hpcC0+YXBiX2Jhc2UgKyBQQ0lFX0NPUkVfQ1RSTCwKPiArCQkJCSAg
IHZhbCwgUENJRV9MSU5LX0lTX0dFTjIodmFsKSwgNTAsCj4gKwkJCQkgICBMSU5LX1RSQUlOX1RJ
TUVPVVQpOwo+ICsJfQo+ICsKPiArCS8qIENoZWNrIGFnYWluIHRoYXQgdGhlIGxpbmsgaXMgdXAg
Ki8KPiArCWlmICghcm9ja2NoaXBfcGNpZV9lcF9saW5rX3VwKHJvY2tjaGlwKSkKPiArCQlnb3Rv
IGFnYWluOwoKVFJNIGRvZXNuJ3QgbWVudGlvbiB0aGlzIGNoZWNrLiBJcyB0aGlzIHJlYWxseSBu
ZWNlc3Nhcnk/Cgo+ICsKPiArCXZhbCA9IHJvY2tjaGlwX3BjaWVfcmVhZChyb2NrY2hpcCwgUENJ
RV9DTElFTlRfQkFTSUNfU1RBVFVTMCk7Cj4gKwlkZXZfaW5mbyhkZXYsCj4gKwkJICJMaW5rIFVQ
IChOZWdvY2lhdGVkIHNwZWVkOiAlc0dUL3MsIHdpZHRoOiB4JWx1KVxuIiwKCgpOZWdvdGlhdGVk
Cgo+ICsJCSAodmFsICYgUENJRV9DTElFTlRfTkVHX0xJTktfU1BFRUQpID8gIjUiIDogIjIuNSIs
Cj4gKwkJICgodmFsICYgUENJRV9DTElFTlRfTkVHX0xJTktfV0lEVEhfTUFTSykgPj4KPiArCQkg
IFBDSUVfQ0xJRU5UX05FR19MSU5LX1dJRFRIX1NISUZUKSA8PCAxKTsKPiArCj4gKwkvKiBOb3Rp
ZnkgdGhlIGZ1bmN0aW9uICovCj4gKwlwY2lfZXBjX2xpbmt1cChlcC0+ZXBjKTsKPiArCj4gKwly
ZXR1cm47Cj4gKwo+ICthZ2FpbjoKPiArCXNjaGVkdWxlX2RlbGF5ZWRfd29yaygmZXAtPmxpbmtf
dHJhaW5pbmcsIG1zZWNzX3RvX2ppZmZpZXMoNSkpOwo+ICt9Cj4gKwo+ICBzdGF0aWMgY29uc3Qg
c3RydWN0IHBjaV9lcGNfZmVhdHVyZXMgcm9ja2NoaXBfcGNpZV9lcGNfZmVhdHVyZXMgPSB7Cj4g
LQkubGlua3VwX25vdGlmaWVyID0gZmFsc2UsCj4gKwkubGlua3VwX25vdGlmaWVyID0gdHJ1ZSwK
PiAgCS5tc2lfY2FwYWJsZSA9IHRydWUsCj4gIAkubXNpeF9jYXBhYmxlID0gZmFsc2UsCj4gIAku
YWxpZ24gPSBST0NLQ0hJUF9QQ0lFX0FUX1NJWkVfQUxJR04sCj4gQEAgLTY0Miw2ICs3MTgsNyBA
QCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfZXBfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikKPiAgCXJvY2tjaGlwID0gJmVwLT5yb2NrY2hpcDsKPiAgCXJvY2tjaGlwLT5pc19y
YyA9IGZhbHNlOwo+ICAJcm9ja2NoaXAtPmRldiA9IGRldjsKPiArCUlOSVRfREVMQVlFRF9XT1JL
KCZlcC0+bGlua190cmFpbmluZywgcm9ja2NoaXBfcGNpZV9lcF9saW5rX3RyYWluaW5nKTsKPiAg
Cj4gIAllcGMgPSBkZXZtX3BjaV9lcGNfY3JlYXRlKGRldiwgJnJvY2tjaGlwX3BjaWVfZXBjX29w
cyk7Cj4gIAlpZiAoSVNfRVJSKGVwYykpIHsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29u
dHJvbGxlci9wY2llLXJvY2tjaGlwLmggYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9j
a2NoaXAuaAo+IGluZGV4IDAyNjNmMTU4ZWU4ZC4uMzk2M2I3MDk3YTkxIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oCj4gKysrIGIvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmgKPiBAQCAtMjYsNiArMjYsNyBAQAo+ICAjZGVm
aW5lIE1BWF9MQU5FX05VTQkJCTQKPiAgI2RlZmluZSBNQVhfUkVHSU9OX0xJTUlUCQkzMgo+ICAj
ZGVmaW5lIE1JTl9FUF9BUEVSVFVSRQkJCTI4Cj4gKyNkZWZpbmUgTElOS19UUkFJTl9USU1FT1VU
CQkoNTAwMCAqIFVTRUNfUEVSX01TRUMpCgpwY2llLXJvY2tjaGlwLWhvc3QgaGFzIG9ubHkgNTAw
bXMgdGltZW91dC4KCi0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprg
rqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
