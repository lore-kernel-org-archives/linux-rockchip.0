Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABD77E7717D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 05:34:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=exfEEFFpzqn/MeoyrOFSOCBTM6JOCF8PZCcPFhG1v/o=; b=uzajnnUtPsRpgl
	y0VjdYDXo0l94585NuQapIBCXbXP23Vd6MyYBaMw9ONfyORkn4C98bn/CyffxQZPB0PDoNMIHq6uN
	qywGeIduV1HXq4Wk2QrKsSR8Glo3Px3FYEPCtl3N4gtlx3mkTsI5yEyKrAgth7yMVupWV+T5feEh2
	wMLnnP692S8xUmo7gDsLlUVLYeORIWg6Rvhw43B6QpfvOiA6v5AOU3jLHzA5x2Be9rQEGH+eEVtIO
	c0+q0lvTtq4aZP6f4wBScQ3CgrXmrOsUx3OKoVsNJ+YNcxAwNrIPAarUFaDuV7FXBQWRcJo+n1GKh
	Z7pYg6r+8tupQmmWDzgw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLFMP-0000000Dqkk-2tWq;
	Wed, 11 Dec 2024 05:34:09 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLFJh-0000000DqHz-3LgA
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Dec 2024 05:31:23 +0000
Received: by mail-pf1-x435.google.com with SMTP id d2e1a72fcca58-728e81257bfso978121b3a.2
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Dec 2024 21:31:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733895081; x=1734499881; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ShdzjtGZM9vxO89zHijgFIz+FSCJs3Ns3QmxUQPrD+U=;
        b=hf6zyhER9e4mS8shkak1I6an1Cx/LrAzV/MhjoVzazG5ywrjQ0diU3WrKDYtWJ892j
         VYByS4avYPxpttWffTKLeMTofdALwICW3BnscQmLQ4VX+9EU6yObDvqDxNTcCW9T4a6o
         4UDVFMbg0/rUiHSihjHhfXaYtUwD5IHZmxmnEgAsI9nlxBBTLXh3FLvtnG/7PHLevOqG
         iRTmjMFzWnlqCirEjTd7ehCw8ewyy9GP1PnIPJhkfF/s5hHaQhjXqRi+WfT/34REqQEb
         W/WMEer3R4gZc+lzjVZYEIGOzF6cRb0c2u/zng9Hvn+N3+PZJV41JZd4uqT5ydxbtHma
         ya7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733895081; x=1734499881;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ShdzjtGZM9vxO89zHijgFIz+FSCJs3Ns3QmxUQPrD+U=;
        b=t78rcnIDidSSk2RS3gwe3pH8L1gAVHiEe0pMOm4swAdG0/58LDF1ZMeH2p/LvHzeYy
         rVfBXVUWfuNHGfPL5tZJhFOHAs5+Y6RZ/mOcGFstObujW840gZu51Khvwl+/EV7QG79a
         JZ588YYDug+dyPtWv1OgQgfVJ4q1XHcmJ5sNJDiLbW9IWP4wxdb43YY1OrOxdrKmCNGz
         Qs9BmwMQyFgSKMUuTPTg7pY92gmV0rQ4kJj8OpnHjfFzYotLdHlgXzxHP1LvCGnOVqdF
         bV7LtrojEs8FfaIahFp9XX0jQcCTWZDLWNuDiAskpcxTwOI7aWoqB/tdtYjIExNIn0Yv
         AJ8A==
X-Forwarded-Encrypted: i=1; AJvYcCWvtBRHYy3UGMDJHO5YLxXfGLPL3VOp6cGSMPnp6CnzUdJcKdK12p1DzVl7AXZNXjQamdjBzJMhZj1ial3TPQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YxS6UW7V4J0MlFmrdOB/LQfvI4ACxQoJYpKQBsWJBaa7rUbpk+E
	zGZl+lhPpxshOCI27pGacCTcNd/jBaPvYtNhj/tBDQWNBhGRhbp27aInJ5nU9g==
X-Gm-Gg: ASbGncvgeuc/dednerWrmDZGgMg7+zqma93q6vs7xN4DfnyK4UZWS/nAkPmbv35FCaj
	46RPUQp/3wdZKMlpIAPRZFiE2Y9tRFM8bbzE0BIGBUK0Z8CtbU49skMd6Fe/fJuev/UgxIX84d1
	fdZzs35usd6qUuoo60n364xVJs2VGXuc9Ps0CiktgKz8bxFCiSA4Tps4G4V7DqyvisTTQ4AdvzK
	W2Amjj9E30+xiXoBOq3uHE7FSUhcp/psZFhuUrVszyo1FrJCiBWaqyHYCvwzgQ=
X-Google-Smtp-Source: AGHT+IHlZIECQ8fR8OzlEjAgvv5+ugAv4twpl5gKRHvFmE0YNk28z5fm5WtdfPPNmIaOYwFm0uxSKg==
X-Received: by 2002:a05:6a21:9990:b0:1e1:a829:bfb6 with SMTP id adf61e73a8af0-1e1c129474emr3076160637.3.1733895080678;
        Tue, 10 Dec 2024 21:31:20 -0800 (PST)
Received: from thinkpad ([120.60.55.53])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-725ec2c2b7esm4993746b3a.182.2024.12.10.21.31.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Dec 2024 21:31:20 -0800 (PST)
Date: Wed, 11 Dec 2024 11:01:04 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Damien Le Moal <dlemoal@kernel.org>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Enumerate endpoints based on
 dll_link_up irq in the combined sys irq
Message-ID: <20241211053104.7sgo5bmmjnolwvhh@thinkpad>
References: <20241127145041.3531400-2-cassel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241127145041.3531400-2-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_213121_893173_AECA0CE2 
X-CRM114-Status: GOOD (  29.10  )
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

T24gV2VkLCBOb3YgMjcsIDIwMjQgYXQgMDM6NTA6NDJQTSArMDEwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBNb3N0IGJvYXJkcyB1c2luZyB0aGUgcGNpZS1kdy1yb2NrY2hpcCBQQ0llIGNvbnRy
b2xsZXIgbGFjayBzdGFuZGFyZAo+IGhvdHBsdWcgc3VwcG9ydC4KPiAKPiBUaHVzLCB3aGVuIGFu
IGVuZHBvaW50IGlzIGF0dGFjaGVkIHRvIHRoZSBTb0MsIHVzZXJzIGhhdmUgdG8gcmVzY2FuIHRo
ZSBidXMKPiBtYW51YWxseSB0byBlbnVtZXJhdGUgdGhlIGRldmljZS4gVGhpcyBjYW4gYmUgYXZv
aWRlZCBieSB1c2luZyB0aGUKPiAnZGxsX2xpbmtfdXAnIGludGVycnVwdCBpbiB0aGUgY29tYmlu
ZWQgc3lzdGVtIGludGVycnVwdCAnc3lzJy4KPiAKPiBPbmNlIHRoZSAnZGxsX2xpbmtfdXAnIGly
cSBpcyByZWNlaXZlZCwgdGhlIGJ1cyB1bmRlcm5lYXRoIHRoZSBob3N0IGJyaWRnZQo+IGlzIHNj
YW5uZWQgdG8gZW51bWVyYXRlIFBDSWUgZW5kcG9pbnQgZGV2aWNlcy4KPiAKPiBUaGlzIGNvbW1p
dCBpbXBsZW1lbnRzIHRoZSBzYW1lIGZ1bmN0aW9uYWxpdHkgdGhhdCB3YXMgaW1wbGVtZW50ZWQg
aW4gdGhlCj4gRFdDIGJhc2VkIHBjaWUtcWNvbSBkcml2ZXIgaW4gY29tbWl0IDQ1ODE0MDNmNjc5
MiAoIlBDSTogcWNvbTogRW51bWVyYXRlCj4gZW5kcG9pbnRzIGJhc2VkIG9uIExpbmsgdXAgZXZl
bnQgaW4gJ2dsb2JhbF9pcnEnIGludGVycnVwdCIpLgo+IAo+IFRoZSBSb290IENvbXBsZXggc3Bl
Y2lmaWMgZGV2aWNlIHRyZWUgYmluZGluZyBmb3IgcGNpZS1kdy1yb2NrY2hpcCBhbHJlYWR5Cj4g
aGFzIHRoZSAnc3lzJyBpbnRlcnJ1cHQgbWFya2VkIGFzIHJlcXVpcmVkLCBzbyB0aGVyZSBpcyBu
byBuZWVkIHRvIHVwZGF0ZQo+IHRoZSBkZXZpY2UgdHJlZSBiaW5kaW5nLiBUaGlzIGFsc28gbWVh
bnMgdGhhdCB3ZSBjYW4gcmVxdWVzdCB0aGUgJ3N5cycgSVJRCj4gdW5jb25kaXRpb25hbGx5Lgo+
IAo+IFNpZ25lZC1vZmYtYnk6IE5pa2xhcyBDYXNzZWwgPGNhc3NlbEBrZXJuZWwub3JnPgoKUmV2
aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxp
bmFyby5vcmc+CgotIE1hbmkKCj4gLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3Bj
aWUtZHctcm9ja2NoaXAuYyB8IDYyICsrKysrKysrKysrKysrKysrLS0KPiAgMSBmaWxlIGNoYW5n
ZWQsIDU4IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYyBiL2RyaXZlcnMvcGNp
L2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+IGluZGV4IDExNzBlMTEwNzUwOC4u
Y2U0YjUxMWJmZjliIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3Bj
aWUtZHctcm9ja2NoaXAuYwo+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUt
ZHctcm9ja2NoaXAuYwo+IEBAIC0zODksNiArMzg5LDM0IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
ZHdfcGNpZV9vcHMgZHdfcGNpZV9vcHMgPSB7Cj4gIAkuc3RvcF9saW5rID0gcm9ja2NoaXBfcGNp
ZV9zdG9wX2xpbmssCj4gIH07Cj4gIAo+ICtzdGF0aWMgaXJxcmV0dXJuX3Qgcm9ja2NoaXBfcGNp
ZV9yY19zeXNfaXJxX3RocmVhZChpbnQgaXJxLCB2b2lkICphcmcpCj4gK3sKPiArCXN0cnVjdCBy
b2NrY2hpcF9wY2llICpyb2NrY2hpcCA9IGFyZzsKPiArCXN0cnVjdCBkd19wY2llICpwY2kgPSAm
cm9ja2NoaXAtPnBjaTsKPiArCXN0cnVjdCBkd19wY2llX3JwICpwcCA9ICZwY2ktPnBwOwo+ICsJ
c3RydWN0IGRldmljZSAqZGV2ID0gcGNpLT5kZXY7Cj4gKwl1MzIgcmVnLCB2YWw7Cj4gKwo+ICsJ
cmVnID0gcm9ja2NoaXBfcGNpZV9yZWFkbF9hcGIocm9ja2NoaXAsIFBDSUVfQ0xJRU5UX0lOVFJf
U1RBVFVTX01JU0MpOwo+ICsJcm9ja2NoaXBfcGNpZV93cml0ZWxfYXBiKHJvY2tjaGlwLCByZWcs
IFBDSUVfQ0xJRU5UX0lOVFJfU1RBVFVTX01JU0MpOwo+ICsKPiArCWRldl9kYmcoZGV2LCAiUENJ
RV9DTElFTlRfSU5UUl9TVEFUVVNfTUlTQzogJSN4XG4iLCByZWcpOwo+ICsJZGV2X2RiZyhkZXYs
ICJMVFNTTV9TVEFUVVM6ICUjeFxuIiwgcm9ja2NoaXBfcGNpZV9nZXRfbHRzc20ocm9ja2NoaXAp
KTsKPiArCj4gKwlpZiAocmVnICYgUENJRV9SRExIX0xJTktfVVBfQ0hHRUQpIHsKPiArCQl2YWwg
PSByb2NrY2hpcF9wY2llX2dldF9sdHNzbShyb2NrY2hpcCk7Cj4gKwkJaWYgKCh2YWwgJiBQQ0lF
X0xJTktVUCkgPT0gUENJRV9MSU5LVVApIHsKPiArCQkJZGV2X2RiZyhkZXYsICJSZWNlaXZlZCBM
aW5rIHVwIGV2ZW50LiBTdGFydGluZyBlbnVtZXJhdGlvbiFcbiIpOwo+ICsJCQkvKiBSZXNjYW4g
dGhlIGJ1cyB0byBlbnVtZXJhdGUgZW5kcG9pbnQgZGV2aWNlcyAqLwo+ICsJCQlwY2lfbG9ja19y
ZXNjYW5fcmVtb3ZlKCk7Cj4gKwkJCXBjaV9yZXNjYW5fYnVzKHBwLT5icmlkZ2UtPmJ1cyk7Cj4g
KwkJCXBjaV91bmxvY2tfcmVzY2FuX3JlbW92ZSgpOwo+ICsJCX0KPiArCX0KPiArCj4gKwlyZXR1
cm4gSVJRX0hBTkRMRUQ7Cj4gK30KPiArCj4gIHN0YXRpYyBpcnFyZXR1cm5fdCByb2NrY2hpcF9w
Y2llX2VwX3N5c19pcnFfdGhyZWFkKGludCBpcnEsIHZvaWQgKmFyZykKPiAgewo+ICAJc3RydWN0
IHJvY2tjaGlwX3BjaWUgKnJvY2tjaGlwID0gYXJnOwo+IEBAIC00MTgsMTQgKzQ0NiwzMSBAQCBz
dGF0aWMgaXJxcmV0dXJuX3Qgcm9ja2NoaXBfcGNpZV9lcF9zeXNfaXJxX3RocmVhZChpbnQgaXJx
LCB2b2lkICphcmcpCj4gIAlyZXR1cm4gSVJRX0hBTkRMRUQ7Cj4gIH0KPiAgCj4gLXN0YXRpYyBp
bnQgcm9ja2NoaXBfcGNpZV9jb25maWd1cmVfcmMoc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJvY2tj
aGlwKQo+ICtzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfY29uZmlndXJlX3JjKHN0cnVjdCBwbGF0
Zm9ybV9kZXZpY2UgKnBkZXYsCj4gKwkJCQkgICAgICBzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9j
a2NoaXApCj4gIHsKPiArCXN0cnVjdCBkZXZpY2UgKmRldiA9ICZwZGV2LT5kZXY7Cj4gIAlzdHJ1
Y3QgZHdfcGNpZV9ycCAqcHA7Cj4gKwlpbnQgaXJxLCByZXQ7Cj4gIAl1MzIgdmFsOwo+ICAKPiAg
CWlmICghSVNfRU5BQkxFRChDT05GSUdfUENJRV9ST0NLQ0hJUF9EV19IT1NUKSkKPiAgCQlyZXR1
cm4gLUVOT0RFVjsKPiAgCj4gKwlpcnEgPSBwbGF0Zm9ybV9nZXRfaXJxX2J5bmFtZShwZGV2LCAi
c3lzIik7Cj4gKwlpZiAoaXJxIDwgMCkgewo+ICsJCWRldl9lcnIoZGV2LCAibWlzc2luZyBzeXMg
SVJRIHJlc291cmNlXG4iKTsKPiArCQlyZXR1cm4gaXJxOwo+ICsJfQo+ICsKPiArCXJldCA9IGRl
dm1fcmVxdWVzdF90aHJlYWRlZF9pcnEoZGV2LCBpcnEsIE5VTEwsCj4gKwkJCQkJcm9ja2NoaXBf
cGNpZV9yY19zeXNfaXJxX3RocmVhZCwKPiArCQkJCQlJUlFGX09ORVNIT1QsICJwY2llLXN5cy1y
YyIsIHJvY2tjaGlwKTsKPiArCWlmIChyZXQpIHsKPiArCQlkZXZfZXJyKGRldiwgImZhaWxlZCB0
byByZXF1ZXN0IFBDSWUgc3lzIElSUVxuIik7Cj4gKwkJcmV0dXJuIHJldDsKPiArCX0KPiArCj4g
IAkvKiBMVFNTTSBlbmFibGUgY29udHJvbCBtb2RlICovCj4gIAl2YWwgPSBISVdPUkRfVVBEQVRF
X0JJVChQQ0lFX0xUU1NNX0VOQUJMRV9FTkhBTkNFKTsKPiAgCXJvY2tjaGlwX3BjaWVfd3JpdGVs
X2FwYihyb2NrY2hpcCwgdmFsLCBQQ0lFX0NMSUVOVF9IT1RfUkVTRVRfQ1RSTCk7Cj4gQEAgLTQz
Niw3ICs0ODEsMTYgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX2NvbmZpZ3VyZV9yYyhzdHJ1
Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXApCj4gIAlwcCA9ICZyb2NrY2hpcC0+cGNpLnBwOwo+
ICAJcHAtPm9wcyA9ICZyb2NrY2hpcF9wY2llX2hvc3Rfb3BzOwo+ICAKPiAtCXJldHVybiBkd19w
Y2llX2hvc3RfaW5pdChwcCk7Cj4gKwlyZXQgPSBkd19wY2llX2hvc3RfaW5pdChwcCk7Cj4gKwlp
ZiAocmV0KSB7Cj4gKwkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8gaW5pdGlhbGl6ZSBob3N0XG4i
KTsKPiArCQlyZXR1cm4gcmV0Owo+ICsJfQo+ICsKPiArCS8qIHVubWFzayBETEwgdXAvZG93biBp
bmRpY2F0b3IgKi8KPiArCXJvY2tjaGlwX3BjaWVfd3JpdGVsX2FwYihyb2NrY2hpcCwgMHgyMDAw
MCwgUENJRV9DTElFTlRfSU5UUl9NQVNLX01JU0MpOwo+ICsKPiArCXJldHVybiByZXQ7Cj4gIH0K
PiAgCj4gIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9jb25maWd1cmVfZXAoc3RydWN0IHBsYXRm
b3JtX2RldmljZSAqcGRldiwKPiBAQCAtNDU3LDcgKzUxMSw3IEBAIHN0YXRpYyBpbnQgcm9ja2No
aXBfcGNpZV9jb25maWd1cmVfZXAoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiwKPiAgCj4g
IAlyZXQgPSBkZXZtX3JlcXVlc3RfdGhyZWFkZWRfaXJxKGRldiwgaXJxLCBOVUxMLAo+ICAJCQkJ
CXJvY2tjaGlwX3BjaWVfZXBfc3lzX2lycV90aHJlYWQsCj4gLQkJCQkJSVJRRl9PTkVTSE9ULCAi
cGNpZS1zeXMiLCByb2NrY2hpcCk7Cj4gKwkJCQkJSVJRRl9PTkVTSE9ULCAicGNpZS1zeXMtZXAi
LCByb2NrY2hpcCk7Cj4gIAlpZiAocmV0KSB7Cj4gIAkJZGV2X2VycihkZXYsICJmYWlsZWQgdG8g
cmVxdWVzdCBQQ0llIHN5cyBJUlFcbiIpOwo+ICAJCXJldHVybiByZXQ7Cj4gQEAgLTU1Myw3ICs2
MDcsNyBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rl
dmljZSAqcGRldikKPiAgCj4gIAlzd2l0Y2ggKGRhdGEtPm1vZGUpIHsKPiAgCWNhc2UgRFdfUENJ
RV9SQ19UWVBFOgo+IC0JCXJldCA9IHJvY2tjaGlwX3BjaWVfY29uZmlndXJlX3JjKHJvY2tjaGlw
KTsKPiArCQlyZXQgPSByb2NrY2hpcF9wY2llX2NvbmZpZ3VyZV9yYyhwZGV2LCByb2NrY2hpcCk7
Cj4gIAkJaWYgKHJldCkKPiAgCQkJZ290byBkZWluaXRfY2xrOwo+ICAJCWJyZWFrOwo+IC0tIAo+
IDIuNDcuMAo+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprg
rr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
