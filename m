Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFC4EC2D0CD
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 May 2025 12:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q5GbiOy1APHdlK4I9jeFxVnpt8szzIzw5UAHJ05dLsk=; b=i56+VBL9YPPDZk
	zTbXjK0CQVrzdnXtnifP5lcdqtxOQVVGPNINXBNYJHKu/SVVeqE54o81ZFS3nPyBmOKYOx2wmCHsw
	wa+bkIjGzAyZ8cUfEOK6WQcrMQgUBuXPxpwqXdJ0Bpl8i3zI4c1Xa0OTtwv4ZOxn+ls/M8ExIFHwb
	XKcprNo521G6bI+oIDXURwuQnUgiIpJh+JsRsJiNRJ5R6betrLKJazZJIMTQY19hKhQa0A1K0bZEj
	cFKfF2srzr2T+Um7NW3CT2RprgDpxo5TqdgSRLP0t1sj76hb2CbiuTlEYaIirtCsFaXtTDWi7Rmtm
	9BZCSB71MzNot264I+vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFXLJ-00000000Uj1-1MPK;
	Thu, 15 May 2025 12:05:41 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uFXJH-00000000UR0-0J4n
	for linux-rockchip@lists.infradead.org;
	Thu, 15 May 2025 12:03:36 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-441d1ed82dbso8574195e9.0
        for <linux-rockchip@lists.infradead.org>; Thu, 15 May 2025 05:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747310613; x=1747915413; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=J5Dm294PbrWONSf7K3CLqY0H7cYyRoYEw+bT1IPWQHo=;
        b=KE9fAo6K2OAOP6Dr4HR4V91DBVp8iwpXiDtZY4s9nW1fdqsL3gBcdeBNH069Wx5kn5
         jZXY/Qem0AKkKjeVxwURFj710CWL4M2k7D9kBKeh/aL6hm5YMkfru2o5jaD5UkZkmKXH
         5wMsLNbxFdiAAdY+ADi+7HHJLLpjnd7bRGufVsNqgJlA5IP38mVnZAM/0bAh6s8OP8RF
         Fc1lQr2btkUrMwGzT1A+XqsfabZ84/+Zh17n/vv8MSp7B4vELfI+nXyYDBiDkahfA/Cl
         NJXSQ9Yo2X0sRwMoO0+XkspphN12HLYLSNcGOavZz1yIMTY5kKdy9NSj4aivGpusViXv
         CYYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747310613; x=1747915413;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=J5Dm294PbrWONSf7K3CLqY0H7cYyRoYEw+bT1IPWQHo=;
        b=v32QUTgV/L6cETCYyido2Aeb22vPf0lkhGj74rytTLulvftqL3A2Z+zGDv9xG9HkBe
         cxoYc3knySE/8tUIIM7WB9JMJzcj/dpJRXWxaiOzuc78pS/9jtw47VrFri3bVDqbLLXT
         h4HubbYIMOT7XcsDVuSwcuRG6cscRN2KeyNkjbnW/wgCAhNitCG413KJmh3RjvjG6KEc
         8gi9YLTGoGNcqP6lPJ3Cm37O2sb2PqgrKODo+o9Nw3qZrJZYiFvmyJ5JD3IAWI63+sMo
         +LIRFGAT+L+Bh7m4FauL3ms3DssqtJJiJ5Xa4bJbvZ2Hvfyd8trSfKTIz16xO+NdUVuS
         qVdw==
X-Forwarded-Encrypted: i=1; AJvYcCUGkVgWIbZyGYeRHE4V5n+OCashSiV7b9Lc8oojR8IDSwGTVXOoQqZDB/k8zwJGjmLnBAZh1CKNVPMCjFxdWQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzyYRweRV2olXHOEqYptrcwHpWutPJMqQgVY3297NMrCSpTp7W/
	3wxjhIbkgCvjD7bo1nHX9eK2VTIneSSkqpsJIO1uLhatb8P0duzXiPaR+mQGQA==
X-Gm-Gg: ASbGncvUPmi8qX1QObfOh973++tnrG6tjp9b+7QZrXnfi/NrlDqn4CXlj82mnmYctqO
	XgvTXEP/8Y6aWE7TqSSViU/fkySThE+oyXJCNt0xw+a3cloYuVRBab0YiUwCTrBc15QCmjPVwgl
	a3GlrLJs1i6E86G+OQqZrIXPoKfolxFDj38ADtiBgK/jLYcNqjVQSG0rv5U/71dDGjfs8IvcE6N
	yi5SIX4aLDFD4JIEhTmwQihQoa+rZo7iJ3tsBUTugteSxd0rw7+UluyrGVAzlUfyOXT2cK2LjcY
	VCDdCE+zqltImvOHfMNwixCdnuKuAVX1Rs1HK6KB7z6tW1s26+kD8oO7IZ/1d66ER1iYiDlbD2K
	bSZ1LJfjIdGbYPw==
X-Google-Smtp-Source: AGHT+IHlVMLx2LBOebfEdakAr7jMaTKb4vKCXk6oSYtrA1JygFEFmKNR3fFjnt2BvUb5BojRv/MYmQ==
X-Received: by 2002:a05:600c:a42:b0:442:cd13:f15d with SMTP id 5b1f17b1804b1-442f217a65fmr61066245e9.29.1747310612978;
        Thu, 15 May 2025 05:03:32 -0700 (PDT)
Received: from thinkpad (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a1f58f2961sm22525510f8f.45.2025.05.15.05.03.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 May 2025 05:03:32 -0700 (PDT)
Date: Thu, 15 May 2025 13:03:30 +0100
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
Cc: Hans Zhang <18255117159@163.com>, lpieralisi@kernel.org, kw@linux.com, 
	bhelgaas@google.com, heiko@sntech.de, yue.wang@amlogic.com, neil.armstrong@linaro.org, 
	robh@kernel.org, jingoohan1@gmail.com, khilman@baylibre.com, jbrunet@baylibre.com, 
	martin.blumenstingl@googlemail.com, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 3/3] PCI: aardvark: Remove redundant MPS configuration
Message-ID: <wqzay2jvimjvpsj5rzh6xwxgmrerma5qesbwa6fkjepibhdv6e@hi4dpp4kmt5u>
References: <20250506173439.292460-1-18255117159@163.com>
 <20250506173439.292460-4-18255117159@163.com>
 <20250506174110.63ayeqc4scmwjj6e@pali>
 <8a6adc24-5f40-4f22-9842-b211e1ef5008@163.com>
 <ff6abbf6-e464-4929-96e6-16e43c62db06@163.com>
 <20250507163620.53v5djmhj3ywrge2@pali>
 <oy5wlkvp7nrg65hmbn6cwjcavkeq7emu65tsh4435gxllyb437@7ai23qsmpesy>
 <20250509160025.s65aw5ix6s7533b5@pali>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250509160025.s65aw5ix6s7533b5@pali>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250515_050335_106408_1E7C9D9C 
X-CRM114-Status: GOOD (  52.71  )
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

T24gRnJpLCBNYXkgMDksIDIwMjUgYXQgMDY6MDA6MjVQTSArMDIwMCwgUGFsaSBSb2jDoXIgd3Jv
dGU6Cj4gT24gRnJpZGF5IDA5IE1heSAyMDI1IDEyOjM4OjQ4IE1hbml2YW5uYW4gU2FkaGFzaXZh
bSB3cm90ZToKPiA+IE9uIFdlZCwgTWF5IDA3LCAyMDI1IGF0IDA2OjM2OjIwUE0gKzAyMDAsIFBh
bGkgUm9ow6FyIHdyb3RlOgo+ID4gPiBPbiBXZWRuZXNkYXkgMDcgTWF5IDIwMjUgMjM6MDY6NTEg
SGFucyBaaGFuZyB3cm90ZToKPiA+ID4gPiBPbiAyMDI1LzUvNyAyMzowMywgSGFucyBaaGFuZyB3
cm90ZToKPiA+ID4gPiA+IE9uIDIwMjUvNS83IDAxOjQxLCBQYWxpIFJvaMOhciB3cm90ZToKPiA+
ID4gPiA+ID4gT24gV2VkbmVzZGF5IDA3IE1heSAyMDI1IDAxOjM0OjM5IEhhbnMgWmhhbmcgd3Jv
dGU6Cj4gPiA+ID4gPiA+ID4gVGhlIEFhcmR2YXJrIFBDSWUgY29udHJvbGxlciBlbmZvcmNlcyBh
IGZpeGVkIDUxMkIgcGF5bG9hZCBzaXplIHZpYQo+ID4gPiA+ID4gPiA+IFBDSV9FWFBfREVWQ1RM
X1BBWUxPQURfNTEyQiwgb3ZlcnJpZGluZyBoYXJkd2FyZSBjYXBhYmlsaXRpZXMgYW5kIFBDSWUK
PiA+ID4gPiA+ID4gPiBjb3JlIG5lZ290aWF0aW9ucy4KPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+
ID4gPiBSZW1vdmUgZXhwbGljaXQgTVBTIG92ZXJyaWRlcyAoUENJX0VYUF9ERVZDVExfUEFZTE9B
RCBhbmQKPiA+ID4gPiA+ID4gPiBQQ0lfRVhQX0RFVkNUTF9QQVlMT0FEXzUxMkIpLiBNUFMgaXMg
bm93IGRldGVybWluZWQgYnkgdGhlIFBDSSBjb3JlCj4gPiA+ID4gPiA+ID4gZHVyaW5nIGRldmlj
ZSBpbml0aWFsaXphdGlvbiwgbGV2ZXJhZ2luZyByb290IHBvcnQgY29uZmlndXJhdGlvbnMgYW5k
Cj4gPiA+ID4gPiA+ID4gZGV2aWNlLXNwZWNpZmljIGNhcGFiaWxpdGllcy4KPiA+ID4gPiA+ID4g
PiAKPiA+ID4gPiA+ID4gPiBBbGlnbmluZyBBYXJkdmFyayB3aXRoIHRoZSB1bmlmaWVkIE1QUyBm
cmFtZXdvcmsgZW5zdXJlcyBjb25zaXN0ZW5jeSwKPiA+ID4gPiA+ID4gPiBhdm9pZHMgYXJ0aWZp
Y2lhbCBjb25zdHJhaW50cywgYW5kIGFsbG93cyB0aGUgaGFyZHdhcmUgdG8gb3BlcmF0ZSBhdAo+
ID4gPiA+ID4gPiA+IGl0cyBtYXhpbXVtIHN1cHBvcnRlZCBwYXlsb2FkIHNpemUgd2hpbGUgYWRo
ZXJpbmcgdG8gUENJZQo+ID4gPiA+ID4gPiA+IHNwZWNpZmljYXRpb25zLgo+ID4gPiA+ID4gPiA+
IAo+ID4gPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEhhbnMgWmhhbmcgPDE4MjU1MTE3MTU5QDE2
My5jb20+Cj4gPiA+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiA+ID4gwqAgZHJpdmVycy9wY2kvY29u
dHJvbGxlci9wY2ktYWFyZHZhcmsuYyB8IDIgLS0KPiA+ID4gPiA+ID4gPiDCoCAxIGZpbGUgY2hh
bmdlZCwgMiBkZWxldGlvbnMoLSkKPiA+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ktYWFyZHZhcmsuYwo+ID4gPiA+ID4gPiA+
IGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2ktYWFyZHZhcmsuYwo+ID4gPiA+ID4gPiA+IGlu
ZGV4IGEyOTc5NmNjZTQyMC4uZDg4NTI4OTI5OTRhIDEwMDY0NAo+ID4gPiA+ID4gPiA+IC0tLSBh
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpLWFhcmR2YXJrLmMKPiA+ID4gPiA+ID4gPiArKysg
Yi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaS1hYXJkdmFyay5jCj4gPiA+ID4gPiA+ID4gQEAg
LTU0OSw5ICs1NDksNyBAQCBzdGF0aWMgdm9pZCBhZHZrX3BjaWVfc2V0dXBfaHcoc3RydWN0Cj4g
PiA+ID4gPiA+ID4gYWR2a19wY2llICpwY2llKQo+ID4gPiA+ID4gPiA+IMKgwqDCoMKgwqAgcmVn
ID0gYWR2a19yZWFkbChwY2llLCBQQ0lFX0NPUkVfUENJRVhQX0NBUCArIFBDSV9FWFBfREVWQ1RM
KTsKPiA+ID4gPiA+ID4gPiDCoMKgwqDCoMKgIHJlZyAmPSB+UENJX0VYUF9ERVZDVExfUkVMQVhf
RU47Cj4gPiA+ID4gPiA+ID4gwqDCoMKgwqDCoCByZWcgJj0gflBDSV9FWFBfREVWQ1RMX05PU05P
T1BfRU47Cj4gPiA+ID4gPiA+ID4gLcKgwqDCoCByZWcgJj0gflBDSV9FWFBfREVWQ1RMX1BBWUxP
QUQ7Cj4gPiA+ID4gPiA+ID4gwqDCoMKgwqDCoCByZWcgJj0gflBDSV9FWFBfREVWQ1RMX1JFQURS
UTsKPiA+ID4gPiA+ID4gPiAtwqDCoMKgIHJlZyB8PSBQQ0lfRVhQX0RFVkNUTF9QQVlMT0FEXzUx
MkI7Cj4gPiA+ID4gPiA+ID4gwqDCoMKgwqDCoCByZWcgfD0gUENJX0VYUF9ERVZDVExfUkVBRFJR
XzUxMkI7Cj4gPiA+ID4gPiA+ID4gwqDCoMKgwqDCoCBhZHZrX3dyaXRlbChwY2llLCByZWcsIFBD
SUVfQ09SRV9QQ0lFWFBfQ0FQICsgUENJX0VYUF9ERVZDVEwpOwo+ID4gPiA+ID4gPiA+IC0tIAo+
ID4gPiA+ID4gPiA+IDIuMjUuMQo+ID4gPiA+ID4gPiA+IAo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+
ID4gUGxlYXNlIGRvIG5vdCByZW1vdmUgdGhpcyBjb2RlLiBJdCBpcyByZXF1aXJlZCBwYXJ0IG9m
IHRoZQo+ID4gPiA+ID4gPiBpbml0aWFsaXphdGlvbiBvZiB0aGUgYWFyZHZhcmsgUENJIGNvbnRy
b2xsZXIgYXQgdGhlIHNwZWNpZmljIHBoYXNlLAo+ID4gPiA+ID4gPiBhcyBkZWZpbmVkIGluIHRo
ZSBBcm1hZGEgMzcwMCBGdW5jdGlvbmFsIFNwZWNpZmljYXRpb24uCj4gPiA+ID4gPiA+IAo+ID4g
PiA+ID4gPiBUaGVyZSB3ZXJlIHJlcG9ydGVkIG1vcmUgaXNzdWVzIHdpdGggdGhvc2UgQXJtYWRh
IFBDSWUgY29udHJvbGxlcnMgZm9yCj4gPiA+ID4gPiA+IHdoaWNoIHdlcmUgYWxyZWFkeSBzZW50
IHBhdGNoZXMgdG8gbWFpbGluZyBsaXN0IGluIGxhc3QgNSB5ZWFycy4gQnV0Cj4gPiA+ID4gPiA+
IHVuZm9ydHVuYXRlbHkgbm90IGFsbCBmaXhlcyB3ZXJlIHRha2VuIC8gYXBwbGllZCB5ZXQuCj4g
PiA+ID4gPiAKPiA+ID4gPiA+IEhpIFBhbGksCj4gPiA+ID4gPiAKPiA+ID4gPiA+IEkgcmVwbGll
ZCB0byB5b3UgaW4gdmVyc2lvbiB2Mi4KPiA+ID4gPiA+IAo+ID4gPiA+ID4gSXMgdGhlIG1heGlt
dW0gTVBTIHN1cHBvcnRlZCBieSBBcm1hZGEgMzcwMCA1MTIgYnl0ZXM/Cj4gPiA+IAo+ID4gPiBJ
SVJDIHllcywgNTEyLWJ5dGUgbW9kZSBpcyBzdXBwb3J0ZWQuIEFuZCBJIHRoaW5rIGluIHBhc3Qg
SSB3YXMgdGVzdGluZwo+ID4gPiBzb21lIFBDSWUgZW5kcG9pbnQgY2FyZCB3aGljaCByZXF1aXJl
ZCA1MTItYnl0ZSBsb25nIHBheWxvYWQgYW5kIGRpZCBub3QKPiA+ID4gd29ya2VkIGluIDI1Ni1i
eXRlIGxvbmcgbW9kZSAobm90IHN1cmUgaWYgdGhlIGNhcmQgd2FzIG5vdCBhYmxlIHRvIHNwbGl0
Cj4gPiA+IHRyYW5zYWN0aW9uIG9yIHNvbWV0aGluZyBvdGhlciB3YXMgYnJva2VuLCBpdCBpcyBx
dWl0ZSBsb25nZXIgdGltZSkuCj4gPiA+IAo+ID4gPiA+ID4gV2hhdCBhcmUgdGhlIGRlZmF1bHQg
dmFsdWVzIG9mIERldkNhcC5NUFMgYW5kIERldkN0bC5NUFM/Cj4gPiA+IAo+ID4gPiBEbyB5b3Ug
bWVhbiB2YWx1ZXMgaW4gdGhlIFBDSS10by1QQ0kgYnJpZGdlIGRldmljZSBvZiBQQ0llIFJvb3Qg
UG9ydAo+ID4gPiB0eXBlPwo+ID4gPiAKPiA+ID4gQWFyZHZhcmsgY29udHJvbGxlciBkb2VzIG5v
dCBoYXZlIHRoZSByZWFsIEhXIFBDSS10by1QQ0kgYnJpZGdlIGRldmljZS4KPiA+ID4gVGhlcmUg
aXMgb25seSBpbi1rZXJuZWwgZW11bGF0aW9uIGRyaXZlcnMvcGNpL3BjaS1icmlkZ2UtZW11bC5j
IHdoaWNoCj4gPiA+IGNyZWF0ZSBmYWtlIGtlcm5lbCBQQ0kgZGV2aWNlIGluIHRoZSBoaWVyYXJj
aHkgdG8gbWFrZSBrZXJuZWwgYW5kCj4gPiA+IHVzZXJzcGFjZSBoYXBweS4gWWVzLCB0aGlzIGlz
IGRldmlhdGlvbiBmcm9tIHRoZSBQQ0llIHN0YW5kYXJkIGJ1dCB3ZWxsLAo+ID4gPiBidWdneSBI
VyBpcyBhbHNvIEhXLgo+ID4gPiAKPiA+ID4gQW5kIHNhbWUgYXBwbGllcyBmb3IgdGhlIHBjaS1t
dmVidS5jIGRyaXZlciBmb3Igb2xkZXIgTWFydmVsbCBQQ0llIEhXLgo+ID4gPiAKPiA+IAo+ID4g
T2guIFRoZW4gdGhpcyBwYXRjaCBpcyBub3QgZ29pbmcgdG8gY2hhbmdlIHRoZSBNUFMgc2V0dGlu
ZyBvZiB0aGUgcm9vdCBidXMuIEJ1dAo+ID4gdGhhdCBhbHNvIG1lYW5zIHRoYXQgdGhlcmUgaXMg
YSBkZXZpYXRpb24gaW4gd2hhdCB0aGUgUENJIGNvcmUgZXhwZWN0cyBmb3IgYQo+ID4gcm9vdCBw
b3J0IGFuZCB3aGF0IGlzIGFjdHVhbGx5IHByb2dyYW1tZWQgaW4gdGhlIGh3Lgo+IAo+IFllcywg
ZXhhY3RseSB0aGlzIGFhcmR2YXJrIFBDSWUgY29udHJvbGxlciBkZXZpYXRlcyBmcm9tIHRoZSBQ
Q0llIHNwZWMKPiBpbiBsb3Qgb2YgdGhpbmdzLiBUaGF0IGlzIHdoeSBpdCBpcyBuZWVkZWQgdG8g
YmUgcmVhbGx5IGNhcmVmdWwgYWJvdXQKPiBzdWNoIGNoYW5nZXMuCj4gCj4gU2FtZSBhcHBsaWVz
IGZvciBwY2ktbXZlYnUuYy4gQm90aCBhcmUgUENJZSBjb250cm9sbGVycyBvbiBNYXJ2ZWxsCj4g
aGFyZHdhcmUsIGJ1dCBpdCBxdWVzdGlvbmFibGUgZnJvbSB3aG8gYm90aCB0aGVzZSBJUHMgYW5k
IGhlbmNlIHNvdXJjZQo+IG9mIHRoZSBpc3N1ZXMuCj4gCj4gQWxzbyB0aGVzZSBQQ0llIGNvbnRy
b2xsZXJzIGhhdmUgbG90IG9mIEhXIGJ1Z3MgYW5kIGRvY3VtZW50ZWQgYW5kCj4gdW5kb2N1bWVu
dGVkIGVycmF0YXMgKGZvciB0aGluZ3Mgd2hpY2ggc2hvdWxkIHdvcmssIGJ1dCBkb2VzIG5vdCku
Cj4gCj4gU28gaXQgaXMgbm90IGp1c3QgYXMgImVuYWJsZSBvciBkaXNhYmxlIHRoaXMgYml0IGFu
ZCBpdCB3b3VsZCB3b3JrIi4gSXQKPiBpcyBuZWVkZWQgdG8gcHJvcGVybHkgY2hlY2sgaWYgc3Vj
aCBmdW5jdGlvbmFsaXR5IGlzIHByb3ZpZGVkIGJ5IEhXIGFuZAo+IHdoZXRoZXIgdGhlcmUgaXMg
bm90IHNvbWUgZG9jdW1lbnRlZC91bmRvY3VtZW50ZWQgZXJyYXRhIGZvciB0aGlzCj4gZmVhdHVy
ZSB3aGljaCBjb3VsZCBzYXkgIml0cyBicm9rZW4sIGRvIG5vdCB0cnkgdG8gc2V0IHRoaXMgYml0
Ii4KPiAKPiA+IEV2ZW4gaW4gdGhpcyBNUFMgY2FzZSwgaWYgdGhlIFBDSSBjb3JlIGRlY2lkZXMg
dG8gc2NhbGUgZG93biB0aGUgTVBTIHZhbHVlIG9mCj4gPiB0aGUgcm9vdCBwb3J0LCB0aGVuIGl0
IHdvbid0IGJlIGNoYW5nZWQgaW4gdGhlIGh3IGFuZCB0aGUgaHcgd2lsbCBjb250aW51ZSB0bwo+
ID4gd29yayB3aXRoIDUxMkI/IFNob3VsZG4ndCB0aGUgY29udHJvbGxlciBkcml2ZXIgY2hhbmdl
IHRoZSBodyB2YWx1ZXMgYmFzZWQgb24KPiA+IHRoZSB2YWx1ZXMgcHJvZ3JhbW1lZCBieSBQQ0kg
Y29yZSBvZiB0aGUgZW11bCBicmlkZ2U/Cj4gCj4gTWFydmVsbCBQQ0llIGNvbnRyb2xsZXJzIGhh
cyB0aGVpciBvd24gd2F5cyBob3cgdG8gY29uZmlndXJlIGRpZmZlcmVudAo+IHRoaW5ncyBvZiBQ
Q0llIEhXIHZpYSBjdXN0b20gcGxhdGZvcm0gcmVnaXN0ZXJzLiBUaGlzIGlzIHNvbWV0aGluZyB3
aGljaAo+IG5lZWRzIHRvIGJlIHByb3Blcmx5IHVuZGVyc3Rvb2QgYW5kIGltcGxlbWVudGVkIGFz
IDE6MSBtYXBwaW5nIHRvIGtlcm5lbAo+IHJvb3QgcG9ydCBlbXVsYXRvci4gRHJpdmVycyBzaG91
bGQgZG8gaXQgYnV0IGl0IGlzIHVuZmluaXNoZWQuIEFuZCBhcyBJCj4gYWxyZWFkeSBzYWlkIEkg
c3RvcHBlZCBhbnkgZGV2ZWxvcG1lbnQgaW4gdGhpcyBhcmVhIHllYXJzIGFnbyB3aGVuIFBDSWUK
PiBtYWludGFpbmVycyBzdG9wcGVkIHRha2luZyBteSBmaXhlcyBmb3IgdGhlc2UgZHJpdmVycy4g
QXMgSSBzYWlkIEknbSBub3QKPiBnb2luZyB0byBzcGVuZCBteSBmcmVlIHRpbWUgdG8gaW52ZXN0
aWdhdGUgYWdhaW4gaXNzdWVzIHRoZXJlLCBwcmVwYXJlCj4gZml4ZXMgZm9yIHRoZW0gYW5kIGp1
c3QgbGV0IHRoZW0gZHJvcHBlZCBpbnRvIHRyYXNoIGFzIG5vYm9keSBpcwo+IGludGVyZXN0ZWQg
aW4gdGhlbS4gSSBoYXZlIG90aGVyIG1vcmUgdXNlZnVsIHRoaW5ncyB0byBkbyBpbiBteSBmcmVl
Cj4gdGltZS4KPiAKCklmIHRoZSBwYXRjaGVzIGFyZSBub3QgcmVsYXRlZCB0byB1bmxvYWRpbmcg
dGhlIGRyaXZlciB3aGljaCBhY3RzIGFzIGEgbXNpCmNvbnRyb2xsZXIsIEkgZG9uJ3Qgc2VlIGlz
c3VlcyB3aXRoIHRoZW0gOykgQnV0IEkgaGF2ZSBubyB2aXNpYmlsaXR5IG9uIHRoZSBwYXN0CmNv
bnZlcnNhdGlvbnMuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a
4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
