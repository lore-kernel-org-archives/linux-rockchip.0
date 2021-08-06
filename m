Return-Path: <SRS0=27lq=M5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0DE10C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Aug 2021 15:40:02 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C239B61165
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Aug 2021 15:40:01 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C239B61165
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9dBfSRaqwOysVSKBqG8t0tqyJuppkf06+czb3+uM7Tk=; b=MwjHvWbt8EHi34
	3+P3vExeERQW+mgWiXvS6HQWbNs29eD/tb39ofk7GBNFUJiyEzcm6i75d3+FtjkOjFrAw9B4TAe23
	WxS/nzOpG1EuyJt443wPpLdl8DHvPNHTTJw41HxHwe8h4qOaRm39WSxcxUIo2Xd2jUNNxqtxw5mBE
	hRA9WOaKOFjfDMLlcGM/EYpYQK4nAig476aztURiTmTUtjBJ5Wpq366L34kYy3jXGeeyxJgE5PbKd
	7SRWmh0txKqzXeYX40p3+utpsgqTI/rfRYl4H6me4we9vr53fXp4ZSFL9Nc4d29MzSmALNNabZN60
	tVgMO3EYvp9slzChAYCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mC1wy-00CsrP-7u; Fri, 06 Aug 2021 15:39:56 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mC1wu-00CsqS-Ov
 for linux-rockchip@lists.infradead.org; Fri, 06 Aug 2021 15:39:54 +0000
Received: by mail-ed1-x530.google.com with SMTP id z11so13573341edb.11
 for <linux-rockchip@lists.infradead.org>; Fri, 06 Aug 2021 08:39:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eTk4yr0eN3hm7lLtT7TJ+GcZ/BI3UsKqBaJTxX9s20I=;
 b=pe/zubRk3mozz1yIUrLLk1qW9TXvaqf1wg8raPZZYwlgaDMsBtQ5EDWfwopd9beKl4
 USnByrcmC0Cw74780PIXSlzgIoQkiso5bHCfa/BdkLff7QVTcYcsZe3no4MRwTd3aipr
 7Y+h8H2Ni2e6qkmhORuMQUvJCW8VZW2dfwrXQZeCrW9IwUlX4HvWMdfxBkmTHkOV54A/
 Lb0VsTz+XP6P/gNmMQsaGMlQQ4B32Rf2qlFeryKtYndgmXoej2XSU0XWlQBbiQsHi9j/
 kDoCZYS/MMIepYDppzIGPTiUFkj8816MtmjKrXnw+3bkVqM2BaOg8BXDzH9n3O9o3dx5
 Txgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eTk4yr0eN3hm7lLtT7TJ+GcZ/BI3UsKqBaJTxX9s20I=;
 b=FF59iWOX5e/UTcYeWnI9GTx+6YSIg9urHHJPUydjsQ5KGdy55R9ccRlqTKv/ELFkkg
 fC64831qBMpUZxfsyLgnPLijgHsJHEedsUd9hBpmKikM3nX0TWdxiirvhKWDhc/wH4Fe
 EcTzC5yZ5RvRHAXVxBC4xTtEJaZdMwHGNJU0efwm5erbnfStk0P+IQXfglW63aA5GRVf
 6buPW60NIXMU8p2GiKfugaK3+9u1FI+bKQbaqRVgEXJDJyUYmveK5RJ+5rR6DNc+VgsJ
 5VGH06/meAj4tJAfUDb83/4S17yMQh0GB7eFX93qyn4adTEtf5PtMxxzOFHMvjXWQA0B
 472Q==
X-Gm-Message-State: AOAM532woPUArgyDLq/ZrJca17zq7H9hr6WjPk1VCmTSBlk6RRH8Adqf
 O+VE5wjlx+dBl26pusR42KE=
X-Google-Smtp-Source: ABdhPJwf+uCRRQJXeuBWe+3Hl730847C6jJePnZrXtrwCgIpfunEruQsEVRxOsUqaRz/YFxnW+J1LA==
X-Received: by 2002:a05:6402:1ad9:: with SMTP id
 ba25mr13595781edb.255.1628264389312; 
 Fri, 06 Aug 2021 08:39:49 -0700 (PDT)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net.
 [89.212.178.211])
 by smtp.gmail.com with ESMTPSA id bm1sm2997309ejb.38.2021.08.06.08.39.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Aug 2021 08:39:48 -0700 (PDT)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To: p.zabel@pengutronix.de, Ezequiel Garcia <ezequiel@collabora.com>
Cc: mchehab@kernel.org, gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 emil.velikov@collabora.com, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] media: hantro: Fix check for single irq
Date: Fri, 06 Aug 2021 17:39:47 +0200
Message-ID: <1909651.VgzLf9ffF6@jernej-laptop>
In-Reply-To: <79673df0562db410753c90f9957125f202c5a1b2.camel@collabora.com>
References: <20210805190416.332563-1-jernej.skrabec@gmail.com>
 <8101406.vZ8PxZ7URt@jernej-laptop>
 <79673df0562db410753c90f9957125f202c5a1b2.camel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210806_083952_838664_2E093698 
X-CRM114-Status: GOOD (  30.97  )
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

RG5lIHBldGVrLCAwNi4gYXZndXN0IDIwMjEgb2IgMTY6MTM6NDYgQ0VTVCBqZSBFemVxdWllbCBH
YXJjaWEgbmFwaXNhbChhKToKPiBPbiBGcmksIDIwMjEtMDgtMDYgYXQgMDY6NDQgKzAyMDAsIEpl
cm5laiDFoGtyYWJlYyB3cm90ZToKPiA+IERuZSBwZXRlaywgMDYuIGF2Z3VzdCAyMDIxIG9iIDAw
OjAzOjM2IENFU1QgamUgRXplcXVpZWwgR2FyY2lhIG5hcGlzYWwoYSk6Cj4gPiA+IEhpIEplcm5l
aiwKPiA+ID4gCj4gPiA+IE9uIFRodSwgMjAyMS0wOC0wNSBhdCAyMTowNCArMDIwMCwgSmVybmVq
IFNrcmFiZWMgd3JvdGU6Cj4gPiA+ID4gU29tZSBjb3JlcyB1c2Ugb25seSBvbmUgaW50ZXJydXB0
IGFuZCBpbiBzdWNoIGNhc2UgaW50ZXJydXB0IG5hbWUgaW4KPiA+ID4gPiBEVAo+ID4gPiA+IGlz
IG5vdCBuZWVkZWQuIERyaXZlciBzdXBwb3NlZGx5IGFjY291bnRlZCB0aGF0LCBidXQgZHVlIHRv
IHRoZSB3cm9uZwo+ID4gPiA+IGZpZWxkIGNoZWNrIGl0IG5ldmVyIHdvcmtlZC4gRml4IHRoYXQu
Cj4gPiA+ID4gCj4gPiA+ID4gRml4ZXM6IDE4ZDZjOGI3YjRjOSAoIm1lZGlhOiBoYW50cm86IGFk
ZCBmYWxsYmFjayBoYW5kbGluZyBmb3Igc2luZ2xlCj4gPiA+ID4gaXJxL2NsayIpIFNpZ25lZC1v
ZmYtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BnbWFpbC5jb20+Cj4gPiA+ID4g
LS0tCj4gPiA+ID4gIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaGFudHJvX2Rydi5jIHwg
MiArLQo+ID4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24o
LSkKPiA+ID4gPiAKPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hh
bnRyby9oYW50cm9fZHJ2LmMKPiA+ID4gPiBiL2RyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8v
aGFudHJvX2Rydi5jIGluZGV4Cj4gPiA+ID4gOGEyZWRkNjdmMmM2Li4yMGU1MDgxNTg4NzEgMTAw
NjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9fZHJ2
LmMKPiA+ID4gPiArKysgYi9kcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYu
Ywo+ID4gPiA+IEBAIC05MTksNyArOTE5LDcgQEAgc3RhdGljIGludCBoYW50cm9fcHJvYmUoc3Ry
dWN0IHBsYXRmb3JtX2RldmljZQo+ID4gPiA+ICpwZGV2KQo+ID4gPiA+ICAgICAgICAgICAgICAg
ICBpZiAoIXZwdS0+dmFyaWFudC0+aXJxc1tpXS5oYW5kbGVyKQo+ID4gPiA+ICAgICAgICAgICAg
ICAgICAgICAgICAgIGNvbnRpbnVlOwo+ID4gPiA+ICAKPiA+ID4gPiAtICAgICAgICAgICAgICAg
aWYgKHZwdS0+dmFyaWFudC0+bnVtX2Nsb2NrcyA+IDEpIHsKPiA+ID4gPiArICAgICAgICAgICAg
ICAgaWYgKHZwdS0+dmFyaWFudC0+bnVtX2lycXMgPiAxKSB7Cj4gPiA+IAo+ID4gPiBPb3BzLCB0
aGFua3MgZm9yIHNwb3R0aW5nIHRoaXMuCj4gPiA+IAo+ID4gPiBIb3cgYWJvdXQgdGhpcyBpbnN0
ZWFkPwo+ID4gCj4gPiBObywgb3JpZ2luYWwgc29sdXRpb24gaXMgbW9yZSByb2J1c3QuIFdpdGgg
c29sdXRpb24gYmVsb3csIHlvdSdyZSBhc3N1bWluZwo+ID4gdGhhdCBpcnEgb3JkZXIgaW4gZHJp
dmVyIGFycmF5IGlzIHNhbWUgYXMgaW4gRFQuIFRoYXQgZG9lc24ndCBtYXR0ZXIgaWYKPiA+IHRo
ZXJlIGlzIG9ubHkgb25lIG5hbWUgb3IgaWYgbmFtZXMgbWF0Y2guIEhvd2V2ZXIsIGlmIHRoZXJl
IGlzIGEgdHlwbywKPiA+IGVpdGhlciBpbiBEVCBub2RlIG9yIGluIGRyaXZlciwgZHJpdmVyIHdp
bGwgc3RpbGwgaGFwcGlseSBhc3NpZ24gY2xvY2sKPiA+IGJhc2VkIG9uIGluZGV4IGFuZCB0aGF0
IG1pZ2h0IG5vdCBiZSBjb3JyZWN0IG9uZS4gRXZlbiBpZiBpdCB3b3JrcyBvdXQsCj4gPiB5b3Ug
Y2FuIGVhc2lseSBtaXNzIHRoYXQgeW91IGhhdmUgYSB0eXBvLiBEcml2ZXIgZG9lc24ndCB0ZWxs
IHlvdSB3aGljaAo+ID4gaXJxIGlzIHVzZWQsIGlmIGl0IGlzIHN1Y2Nlc3NmdWxseSBhY3F1aXJl
ZC4KPiAKPiBJIGZpbmQgaXQgb2RkIHRvIGl0ZXJhdGUgdXAgdG8gbnVtX2lycXMgYnV0IHRoZW4K
PiBoYXZlIGEgY2FzZSBmb3IgbnVtX2lycXMgPT0gMSwgYW5kIGNhbGwKPiBwbGF0Zm9ybV9nZXRf
aXJxKHZwdS0+cGRldiwgMCkuCgpUcnVlLCBpdCB3YXMgYWxzbyBzdHJhbmdlIGZvciBtZSBhdCBm
aXJzdCwgYnV0IHRoZW4gaXQncyByb2J1c3QgYW5kIHNpbXBsZS4gCkJlY2F1c2Ugb2YgdGhhdCwg
SSBqdXN0IGZpeGVkIG9idmlvdXMgaXNzdWUuCgo+IAo+IEJ1dCBPVE9ILCB5b3VyIGZpeCBpcyBj
b3JyZWN0IGFuZCBpdCdzIGEgb25lbGluZXIuCj4gCj4gUmV2aWV3ZWQtYnk6IEV6ZXF1aWVsIEdh
cmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4KPiAKClRoYW5rcyEKCkJlc3QgcmVnYXJkcywK
SmVybmVqCgo+IFRoYW5rcywKPiBFemVxdWllbAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
