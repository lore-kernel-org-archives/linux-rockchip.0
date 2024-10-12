Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E50BED1A431
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 06:19:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=74keIJRVHz5x1j9wAJ6KPmVhrfIkDQHchOUPbcu9JpQ=; b=eZqnueNZtREKjE
	dOp9Qc0h7Q9R+5rsCt1oGuEln5owlbIThYP5zyHAprYE9sbXnAK8pnO1zAkvVIlXjrHJgB4PBv8c7
	JVvVWMlp+rAMKp69lRSLcfCRnZaDL9DePZfszMII59OzsxXADxxM74WJ/1+DkUvp3+XiWBEzFLMX3
	XpTsx41IwXSpts/w5kVTEPXztAfdqR5NESAY/D3/S7xALbCXBg62F9DcZ3pftWQKM5o2bRhHLDnOF
	eKMNNdQBeyJ6QGTQLBy1aaxAgcAlJtwvckPsQtBVxmNDldbf/zS7p01UswJYBPl6rZks0PU+BnprG
	ECE2eQ1TV2evXJOtPfNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szVTQ-00000000cw4-2ED1;
	Sat, 12 Oct 2024 06:19:32 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szVSa-00000000crc-1RKB
	for linux-rockchip@lists.infradead.org;
	Sat, 12 Oct 2024 06:18:42 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-7db238d07b3so2454232a12.2
        for <linux-rockchip@lists.infradead.org>; Fri, 11 Oct 2024 23:18:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728713919; x=1729318719; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=L0zqzAhZZVC6sbBIGKcvUCuXRGhVE6bE7pX/LBTwZjg=;
        b=RdNnGq3yVWBfhWh87vHfl33ZpoCRju9/Lo9+QDcvGtQnPc51rNP74BgGOUFEZE0Kpw
         STEO7Uh4fg1Na3ZLlaqFHMjCZqe7vM0L3covdPJkfKOEnwRCeKz3Q5z0zkOt6KWt29C9
         ADHsDHIWlvdjrkeix9nwIftgW4CIwDNz0wdykEdJWhrs64IE/aHN4ZgJICMGyWHfwt2D
         tkou+uj0eV3odbQJDeUF3i2apnF5ho+CJtJyzJP8tmLpbbLGDk7mvFJoxncJlGGsiQlf
         u8Y4lBKFk7xoaK0fJIwEiQ570jQ3DSujdMRYavrS6KY8sS0QU72IPXTZxChKq88MYmKQ
         RjiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728713919; x=1729318719;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L0zqzAhZZVC6sbBIGKcvUCuXRGhVE6bE7pX/LBTwZjg=;
        b=HTShubfCUcy/7Wz6GPY6rEm0kSYfqt8ierNHa7VbB/S1ainfzm3k0PxtZe4mGmISmv
         kRUdiXNguN4yALkXJrUsIsPtSoWIvOkW9DhTHt8Z1giW+/TCCFOFnKgOdJkVtTZdf7dt
         mfa1TLNut+6Xhb+Fw2p88Lq8auWGApI5lJbqBdmPlQWLcOTHn1ZmkGpPQgDsc7zhSg+C
         pVL2S+IteUCnUXpFMT1MctCtB/QBKSj4EOAjFlSgVidbqYBlE0o2ZwCJ99EX2onl/YNN
         U84dr2qCnvc18TRTyqAxKtrAjWzi02uaSdpjoBoyEYcraJRK1DLNVYqGT2r8aNIG1Z+1
         2qgQ==
X-Forwarded-Encrypted: i=1; AJvYcCXQ9eeoAdXdbkKAjcYXfQrcnZwN+d17VhbjBFwzZ8jpHrMQjjBzU+z4k+uJwAREWflFQQmAcprL54iPKsNZyA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyAXjx2mbbwve0P2akY7bAbPIO0SpIz7iCww1m/75oPxqKDPfHH
	na1HI3WirCYIOaS5Swgx25qVv7as/ysIgq5l04otPYHrbMalKImsrISeDxrDAA==
X-Google-Smtp-Source: AGHT+IF27/xVzp5EIA//SfiQ9fpAegP+0cn68oU11c0gnNhVwSd+ux7I7X/VZZO+jOqHNNBZJ8cLLQ==
X-Received: by 2002:a05:6a21:2d89:b0:1cf:2a35:6d21 with SMTP id adf61e73a8af0-1d8bcfb3cf1mr8403778637.45.1728713919188;
        Fri, 11 Oct 2024 23:18:39 -0700 (PDT)
Received: from thinkpad ([220.158.156.122])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e2ab0b661sm3596531b3a.191.2024.10.11.23.18.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 23:18:38 -0700 (PDT)
Date: Sat, 12 Oct 2024 11:48:34 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-pci@vger.kernel.org>,
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-rockchip@lists.infradead.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v7 2/3] PCI: rockchip: Simplify reset control handling by
 using reset_control_bulk*() function
Message-ID: <20241012061834.ksbtcaw3c7iacnye@thinkpad>
References: <20241012050611.1908-1-linux.amoon@gmail.com>
 <20241012050611.1908-3-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241012050611.1908-3-linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_231840_415068_66283C76 
X-CRM114-Status: GOOD (  22.69  )
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

T24gU2F0LCBPY3QgMTIsIDIwMjQgYXQgMTA6MzY6MDRBTSArMDUzMCwgQW5hbmQgTW9vbiB3cm90
ZToKPiBSZWZhY3RvciB0aGUgcmVzZXQgY29udHJvbCBoYW5kbGluZyBpbiB0aGUgUm9ja2NoaXAg
UENJZSBkcml2ZXIsCj4gaW50cm9kdWNpbmcgYSBtb3JlIHJvYnVzdCBhbmQgZWZmaWNpZW50IG1l
dGhvZCBmb3IgYXNzZXJ0IGFuZAo+IGRlYXNzZXJ0IHJlc2V0IGNvbnRyb2xsZXIgdXNpbmcgcmVz
ZXRfY29udHJvbF9idWxrKigpIEFQSS4gVXNpbmcgdGhlCj4gcmVzZXRfY29udHJvbF9idWxrIEFQ
SXMsIHRoZSByZXNldCBoYW5kbGluZyBmb3IgdGhlIGNvcmUgY2xvY2tzIHJlc2V0Cj4gdW5pdCBi
ZWNvbWVzIG11Y2ggc2ltcGxlci4KPiAKClNhbWUgY29tbWVudHMgYXMgcHJldmlvdXMgcGF0Y2gu
Cgo+IFNwaWx0IHRoZSByZXNldCBjb250cm9sbGVyIGluIHR3byBncm91cHMgYXMgcHJlIHRoZSBS
SzMzOTkgVFJNLgoKKnBlcgoKQWxzbyBwbGVhc2Ugc3RhdGUgdGhlIFRSTSBuYW1lIGFuZCBzZWN0
aW9uIGZvciByZWZlcmVuY2UuCgo+IEFmdGVyIHBvd2VyIHVwLCB0aGUgc29mdHdhcmUgZHJpdmVy
IHNob3VsZCBkZS1hc3NlcnQgdGhlIHJlc2V0IG9mIFBDSWUgUEhZLAo+IHRoZW4gd2FpdCB0aGUg
UExMIGxvY2tlZCBieSBwb2xsaW5nIHRoZSBzdGF0dXMsIGlmIFBMTAo+IGhhcyBsb2NrZWQsIHRo
ZW4gY2FuIGRlLWFzc2VydCB0aGUgcmVzZXQgc2ltdWx0YW5lb3VzbHkKPiBkcml2ZXIgbmVlZCB0
byBEZS1hc3NlcnQgdGhlIHJlc2V0IHBpbnMgc2ltdWx0aW9uYWx5Lgo+IAo+ICAgUElQRV9SRVNF
VF9OL01HTVRfU1RJQ0tZX1JFU0VUX04vTUdNVF9SRVNFVF9OL1JFU0VUX04uCj4gCj4gLSByZXBs
YWNlIGRldm1fcmVzZXRfY29udHJvbF9nZXRfZXhjbHVzaXZlKCkgd2l0aAo+IAlkZXZtX3Jlc2V0
X2NvbnRyb2xfYnVsa19nZXRfZXhjbHVzaXZlKCkuCj4gLSByZXBsYWNlIHJlc2V0X2NvbnRyb2xf
YXNzZXJ0IHdpdGgKPiAJcmVzZXRfY29udHJvbF9idWxrX2Fzc2VydCgpLgo+IC0gcmVwbGFjZSBy
ZXNldF9jb250cm9sX2RlYXNzZXJ0IHdpdGgKPiAJcmVzZXRfY29udHJvbF9idWxrX2RlYXNzZXJ0
KCkuCj4gCj4gU2lnbmVkLW9mZi1ieTogQW5hbmQgTW9vbiA8bGludXguYW1vb25AZ21haWwuY29t
Pgo+IC0tLQo+IHY3OiByZXBsYWNlIGRldm1fcmVzZXRfY29udHJvbF9idWxrX2dldF9vcHRpb25h
bF9leGNsdXNpdmUoKQo+ICAgICAgICAgd2l0aCBkZXZtX3Jlc2V0X2NvbnRyb2xfYnVsa19nZXRf
ZXhjbHVzaXZlKCkKPiAgICAgdXBkYXRlIHRoZSBmdW5jdGlvbmFsIGNoYW5nZXMuCj4gVjY6IEFk
ZCByZWFzb24gZm9yIHRoZSBzcGxpdCBvZiB0aGUgUkVTRVQgcGlucy4KPiB2NTogRml4IHRoZSBE
ZS1hc3NlcnQgcmVzZXQgY29yZSBhcyBwZXIgdGhlIFRSTQo+ICAgICBEZS1hc3NlcnQgdGhlIFBJ
UEVfUkVTRVRfTi9NR01UX1NUSUNLWV9SRVNFVF9OL01HTVRfUkVTRVRfTi9SRVNFVF9OCj4gICAg
IHNpbXVsdGFuZW91c2x5Lgo+IHY0OiB1c2UgZGV2X2Vycl9wcm9iZSBpbiBlcnJvciBwYXRoLgo+
IHYzOiBGaXggdHlwbyBpbiBjb21taXQgbWVzc2FnZSwgZHJvcHBlZCByZXBvcnRlZCBieS4KPiB2
MjogRml4IGNvbXBpbGF0aW9uIGVycm9yIHJlcG9ydGVkIGJ5IEludGVsIHRlc3Qgcm9ib3QKPiAg
ICAgZml4ZWQgY2hlY2twYXRjaCB3YXJuaW5nLgo+IC0tLQo+ICBkcml2ZXJzL3BjaS9jb250cm9s
bGVyL3BjaWUtcm9ja2NoaXAuYyB8IDE1MSArKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIGRy
aXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oIHwgIDI2ICsrKy0tCj4gIDIgZmls
ZXMgY2hhbmdlZCwgNDkgaW5zZXJ0aW9ucygrKSwgMTI4IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuYyBiL2RyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5jCj4gaW5kZXggMjc3N2VmMGNiNTk5Li45YTEx
OGUyYjhjYmQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tj
aGlwLmMKPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuYwo+IEBA
IC0zMCw3ICszMCw3IEBAIGludCByb2NrY2hpcF9wY2llX3BhcnNlX2R0KHN0cnVjdCByb2NrY2hp
cF9wY2llICpyb2NrY2hpcCkKClsuLi5dCgo+ICsJZXJyID0gcmVzZXRfY29udHJvbF9idWxrX2Fz
c2VydChST0NLQ0hJUF9OVU1fUE1fUlNUUywKPiArCQkJCQlyb2NrY2hpcC0+cG1fcnN0cyk7Cj4g
KwlpZiAoZXJyKQo+ICsJCXJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgZXJyLCAicmVzZXQgYnVs
ayBhc3NlcnQgcG0gcmVzZXRcbiIpOwoKJ0NvdWxkbid0IGFzc2VydCBQTSByZXNldHMnCgo+ICAK
PiAgCWZvciAoaSA9IDA7IGkgPCBNQVhfTEFORV9OVU07IGkrKykgewo+ICAJCWVyciA9IHBoeV9p
bml0KHJvY2tjaGlwLT5waHlzW2ldKTsKPiBAQCAtMTczLDQ3ICsxMjgsMTcgQEAgaW50IHJvY2tj
aGlwX3BjaWVfaW5pdF9wb3J0KHN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCkKPiAgCQl9
Cj4gIAl9Cj4gIAo+IC0JZXJyID0gcmVzZXRfY29udHJvbF9hc3NlcnQocm9ja2NoaXAtPmNvcmVf
cnN0KTsKPiAtCWlmIChlcnIpIHsKPiAtCQlkZXZfZXJyKGRldiwgImFzc2VydCBjb3JlX3JzdCBl
cnIgJWRcbiIsIGVycik7Cj4gLQkJZ290byBlcnJfZXhpdF9waHk7Cj4gLQl9Cj4gLQo+IC0JZXJy
ID0gcmVzZXRfY29udHJvbF9hc3NlcnQocm9ja2NoaXAtPm1nbXRfcnN0KTsKPiAtCWlmIChlcnIp
IHsKPiAtCQlkZXZfZXJyKGRldiwgImFzc2VydCBtZ210X3JzdCBlcnIgJWRcbiIsIGVycik7Cj4g
LQkJZ290byBlcnJfZXhpdF9waHk7Cj4gLQl9Cj4gLQo+IC0JZXJyID0gcmVzZXRfY29udHJvbF9h
c3NlcnQocm9ja2NoaXAtPm1nbXRfc3RpY2t5X3JzdCk7Cj4gLQlpZiAoZXJyKSB7Cj4gLQkJZGV2
X2VycihkZXYsICJhc3NlcnQgbWdtdF9zdGlja3lfcnN0IGVyciAlZFxuIiwgZXJyKTsKPiAtCQln
b3RvIGVycl9leGl0X3BoeTsKPiAtCX0KPiAtCj4gLQllcnIgPSByZXNldF9jb250cm9sX2Fzc2Vy
dChyb2NrY2hpcC0+cGlwZV9yc3QpOwo+IC0JaWYgKGVycikgewo+IC0JCWRldl9lcnIoZGV2LCAi
YXNzZXJ0IHBpcGVfcnN0IGVyciAlZFxuIiwgZXJyKTsKPiAtCQlnb3RvIGVycl9leGl0X3BoeTsK
PiAtCX0KPiArCWVyciA9IHJlc2V0X2NvbnRyb2xfYnVsa19hc3NlcnQoUk9DS0NISVBfTlVNX0NP
UkVfUlNUUywKPiArCQkJCQlyb2NrY2hpcC0+Y29yZV9yc3RzKTsKPiArCWlmIChlcnIpCj4gKwkJ
cmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCBlcnIsICJyZXNldCBidWxrIGFzc2VydCBjb3JlIHJl
c2V0XG4iKTsKCidDb3VsZG4ndCBhc3NlcnQgQ29yZSByZXNldHMnCgo+ICAKPiAgCXVkZWxheSgx
MCk7Cj4gIAo+IC0JZXJyID0gcmVzZXRfY29udHJvbF9kZWFzc2VydChyb2NrY2hpcC0+cG1fcnN0
KTsKPiAtCWlmIChlcnIpIHsKPiAtCQlkZXZfZXJyKGRldiwgImRlYXNzZXJ0IHBtX3JzdCBlcnIg
JWRcbiIsIGVycik7Cj4gLQkJZ290byBlcnJfZXhpdF9waHk7Cj4gLQl9Cj4gLQo+IC0JZXJyID0g
cmVzZXRfY29udHJvbF9kZWFzc2VydChyb2NrY2hpcC0+YWNsa19yc3QpOwo+ICsJZXJyID0gcmVz
ZXRfY29udHJvbF9idWxrX2RlYXNzZXJ0KFJPQ0tDSElQX05VTV9QTV9SU1RTLAo+ICsJCQkJCSAg
cm9ja2NoaXAtPnBtX3JzdHMpOwo+ICAJaWYgKGVycikgewo+IC0JCWRldl9lcnIoZGV2LCAiZGVh
c3NlcnQgYWNsa19yc3QgZXJyICVkXG4iLCBlcnIpOwo+IC0JCWdvdG8gZXJyX2V4aXRfcGh5Owo+
IC0JfQo+IC0KPiAtCWVyciA9IHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQocm9ja2NoaXAtPnBjbGtf
cnN0KTsKPiAtCWlmIChlcnIpIHsKPiAtCQlkZXZfZXJyKGRldiwgImRlYXNzZXJ0IHBjbGtfcnN0
IGVyciAlZFxuIiwgZXJyKTsKPiArCQlkZXZfZXJyKGRldiwgInJlc2V0IGJ1bGsgZGVhc3NlcnQg
cG0gZXJyICVkXG4iLCBlcnIpOwoKJ0NvdWxkbid0IGRlYXNzZXJ0IFBNIHJlc2V0cycKCj4gIAkJ
Z290byBlcnJfZXhpdF9waHk7Cj4gIAl9Cj4gIAo+IEBAIC0yNTYsMzEgKzE4MSwxNSBAQCBpbnQg
cm9ja2NoaXBfcGNpZV9pbml0X3BvcnQoc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwKQo+
ICAJICogUGxlYXNlIGRvbid0IHJlb3JkZXIgdGhlIGRlYXNzZXJ0IHNlcXVlbmNlIG9mIHRoZSBm
b2xsb3dpbmcKPiAgCSAqIGZvdXIgcmVzZXQgcGlucy4KCkkgZG9uJ3QgdGhpbmsgbXkgZWFybGll
ciBjb21tZW50IG9uIHRoaXMgYWRkcmVzc2VkLiBXaHkgYXJlIHlvdSBjaGFuZ2luZyB0aGUKcmVz
ZXQgb3JkZXI/IFdoeSBjYW4ndCB5b3UgaGF2ZSB0aGUgcmVzZXRzIGluIGJlbG93IChvbGRlcikg
b3JkZXI/CgpzdGF0aWMgY29uc3QgY2hhciAqIGNvbnN0IHJvY2tjaGlwX3BjaV9jb3JlX3JzdHNb
XSA9IHsKCW1nbXQtc3RpY2t5IiwKCSJjb3JlIiwKCSJtZ210IiwKCSJwaXBlIiwKfTsKCkFsc28s
IHRoaXMgY29tbWVudCBzaG91bGQgYmUgcmVtb3ZlZCBub3cuCgo+ICAJICovCj4gLQllcnIgPSBy
ZXNldF9jb250cm9sX2RlYXNzZXJ0KHJvY2tjaGlwLT5tZ210X3N0aWNreV9yc3QpOwo+IC0JaWYg
KGVycikgewo+IC0JCWRldl9lcnIoZGV2LCAiZGVhc3NlcnQgbWdtdF9zdGlja3lfcnN0IGVyciAl
ZFxuIiwgZXJyKTsKPiAtCQlnb3RvIGVycl9wb3dlcl9vZmZfcGh5Owo+IC0JfQo+IC0KPiAtCWVy
ciA9IHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQocm9ja2NoaXAtPmNvcmVfcnN0KTsKPiArCWVyciA9
IHJlc2V0X2NvbnRyb2xfYnVsa19kZWFzc2VydChST0NLQ0hJUF9OVU1fQ09SRV9SU1RTLAo+ICsJ
CQkJCSAgcm9ja2NoaXAtPmNvcmVfcnN0cyk7Cj4gIAlpZiAoZXJyKSB7Cj4gLQkJZGV2X2Vycihk
ZXYsICJkZWFzc2VydCBjb3JlX3JzdCBlcnIgJWRcbiIsIGVycik7Cj4gLQkJZ290byBlcnJfcG93
ZXJfb2ZmX3BoeTsKPiAtCX0KPiAtCj4gLQllcnIgPSByZXNldF9jb250cm9sX2RlYXNzZXJ0KHJv
Y2tjaGlwLT5tZ210X3JzdCk7Cj4gLQlpZiAoZXJyKSB7Cj4gLQkJZGV2X2VycihkZXYsICJkZWFz
c2VydCBtZ210X3JzdCBlcnIgJWRcbiIsIGVycik7Cj4gLQkJZ290byBlcnJfcG93ZXJfb2ZmX3Bo
eTsKPiAtCX0KPiAtCj4gLQllcnIgPSByZXNldF9jb250cm9sX2RlYXNzZXJ0KHJvY2tjaGlwLT5w
aXBlX3JzdCk7Cj4gLQlpZiAoZXJyKSB7Cj4gLQkJZGV2X2VycihkZXYsICJkZWFzc2VydCBwaXBl
X3JzdCBlcnIgJWRcbiIsIGVycik7Cj4gKwkJZGV2X2VycihkZXYsICJyZXNldCBidWxrIGRlYXNz
ZXJ0IGNvcmUgZXJyICVkXG4iLCBlcnIpOwoKJ0NvdWxkbid0IGRlYXNzZXJ0IENvcmUgcmVzZXRz
JwoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCu
v+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
