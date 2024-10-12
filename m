Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 544CBD0EE1A
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 06:10:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/91hBMlKwaKF4rHmvct/mMgdVl716XoR/9QdBmYTYig=; b=WlLmBZbrVWkRKI
	/plKe/yCbAkeOtd1cLVDQd6XRYgzrpJBg1gVlrrFKtAd/p3+f3ICIcNoQtC9b303ogK4yNbzYhmsD
	8+FOQpDuZpGkc3fWI658uGfgfFA5Az0GnwiJWSdvn/vlPUmtQugrUXmsM1UpPF1jjfGOIftiQcH68
	KsQhW5VwpliQNfpM4DbgzHSe5/91yl4PqStANF9ad3621J5s2NMRlEW1FAM2JD35u1TE1IfoLwV0e
	RWS9rwKJAHcT5Zrb9hAL8Ng/soirENNy9799vkTk392bPVC7+sHG0WIm1seXd8FMqVlGWbQnA4bcx
	LMP9HvV75j0cydP/WFFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szVKW-00000000cNK-2zAv;
	Sat, 12 Oct 2024 06:10:21 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szVJ9-00000000cH8-0hrf
	for linux-rockchip@lists.infradead.org;
	Sat, 12 Oct 2024 06:08:56 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-71de9e1f374so1964438b3a.1
        for <linux-rockchip@lists.infradead.org>; Fri, 11 Oct 2024 23:08:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728713334; x=1729318134; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tm+CjjmF+8X+/H05Bxg8usWBkcPnBrCtCrDgxghNmlg=;
        b=nAfD6dHco8JwmzyWj0st4QcTFKt+uxZrPaQsjIr9VGITpkdnR3D7Z0BA//aNATzYVL
         PJ8VYyHzZphsmR1GIQdn8uEGObpVAjvhLJgwMR+Yzqff2GoIJC787vF1iOJg83SCaVVm
         WHUCkI8asiNEp3CPlmA3AXtFfRRZmAuWD1e7yDPiKda2+sSqNpAGwAAC0tsfCGIttiAG
         FormbGIWvbJT1p7q+HWazyGAG/q8gyOI9x8pI7L0HhcpG/vi0pbvqwKJOrjkhAK75lSU
         4ZW6Gv73PK1FeG80LqqRCMm89+QboOeQAra170r7N+Pa8M4Ze2Seou6VGotnG+y4F0A8
         GMKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728713334; x=1729318134;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tm+CjjmF+8X+/H05Bxg8usWBkcPnBrCtCrDgxghNmlg=;
        b=TMtFxZdByjZmAUgxAamH4UWm/So9XMITVSNO7amhmhNFF9dZVr/zQDsfbnjyISNiM4
         ApRjP7IUuxpSGCqHN1/oFFqq+qk2L5JI2qRDJyygANwufrMzh/SZbKfLZ1Th1ZhMMtWu
         YhW/kKQpiWccxny7bV1mS6HclislnFJ27AHiOWbmkESh6w30Bxa+KtBndqM9NAzqMJWf
         GlxDT1ozUObQEcAHVQEJ6O8AWQpQOnGTl+K0WR24UcBp/mnwBRBF/h2asmh7V2hrkZYk
         DiDitnExJ9S1FWv/gvI74vT6RMJcketbMnbFe24YnpnkQRWwoBDzABK1s55yaeyOKDEr
         7fzw==
X-Forwarded-Encrypted: i=1; AJvYcCUVkAKVywnTWD587GVDS/TW5CpFI6xga52B3/2YbPhkrAAdDf6pMLS8Fo8VknpDC/NA5bI4fH9ywJsry8piiQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyNkExPUIa73NLjwz6rqVlvo6+ZiiUk+F0Ycfg6XEXyh2f30EOM
	GeEyF+rnoj+WE0Q3v2XVoCTYjHr+S1A+DO0tdAS2ngq/KpspfDaQHMvHm1g8GQ==
X-Google-Smtp-Source: AGHT+IEOdJrCawaHpKf+RauJKcw0b+JnkybZXuZ8BcDrpMdner6dqxfzlp6iHTXNerTNdqRm7x4xqg==
X-Received: by 2002:a05:6a00:188f:b0:714:2198:26b9 with SMTP id d2e1a72fcca58-71e37e982camr8122107b3a.13.1728713333711;
        Fri, 11 Oct 2024 23:08:53 -0700 (PDT)
Received: from thinkpad ([220.158.156.122])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e474889a8sm1454250b3a.29.2024.10.11.23.08.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 23:08:53 -0700 (PDT)
Date: Sat, 12 Oct 2024 11:38:47 +0530
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
Subject: Re: [PATCH v7 1/3] PCI: rockchip: Simplify clock handling by using
 clk_bulk*() function
Message-ID: <20241012060847.6teuutvy2u2es2qw@thinkpad>
References: <20241012050611.1908-1-linux.amoon@gmail.com>
 <20241012050611.1908-2-linux.amoon@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241012050611.1908-2-linux.amoon@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_230855_219284_7C2EB856 
X-CRM114-Status: GOOD (  25.06  )
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

T24gU2F0LCBPY3QgMTIsIDIwMjQgYXQgMTA6MzY6MDNBTSArMDUzMCwgQW5hbmQgTW9vbiB3cm90
ZToKPiBSZWZhY3RvciB0aGUgY2xvY2sgaGFuZGxpbmcgaW4gdGhlIFJvY2tjaGlwIFBDSWUgZHJp
dmVyLAo+IGludHJvZHVjaW5nIGEgbW9yZSByb2J1c3QgYW5kIGVmZmljaWVudCBtZXRob2QgZm9y
IGVuYWJsaW5nIGFuZAo+IGRpc2FibGluZyBjbG9ja3MgdXNpbmcgY2xrX2J1bGsqKCkgQVBJLiBV
c2luZyB0aGUgY2xrX2J1bGsgQVBJcywKCkkgdGhpbmsgSSBtZW50aW9uZWQgZWFybGllciB0byB1
c2UgaW1wcmVhdGl2ZSB0b25lIGluIGNvbW1pdCBtZXNzYWdlcy4KCj4gdGhlIGNsb2NrIGhhbmRs
aW5nIGZvciB0aGUgY29yZSBjbG9ja3MgYmVjb21lcyBtdWNoIHNpbXBsZXIuCj4gCgpDb3VsZCB5
b3UgcGxlYXNlIGVsYWJvcmF0ZSBob3c/IGkuZS4sIGRldm1fY2xrX2J1bGtfZ2V0X2FsbCgpIGFs
bG93cyB0aGUgZHJpdmVyCnRvIGdldCBhbGwgY2xvY2tzIGRlZmluZWQgaW4gdGhlIERUIHRoZXJl
YnkgcmVtb3ZpbmcgdGhlIGhhcmRjb2RlZCBjbG9jayBuYW1lcwppbiB0aGUgZHJpdmVyLgoKPiAt
IFJlcGxhY2UgZGV2bV9jbGtfZ2V0KCkgd2l0aCBkZXZtX2Nsa19idWxrX2dldF9hbGwoKS4KPiAt
IFJlcGxhY2UgY2xrX3ByZXBhcmVfZW5hYmxlKCkgd2l0aCBjbGtfYnVsa19wcmVwYXJlX2VuYWJs
ZSgpLgo+IC0gUmVwbGFjZSBjbGtfZGlzYWJsZV91bnByZXBhcmUoKSB3aXRoIGNsa19idWxrX2Rp
c2FibGVfdW5wcmVwYXJlKCkuCj4gCj4gU2lnbmVkLW9mZi1ieTogQW5hbmQgTW9vbiA8bGludXgu
YW1vb25AZ21haWwuY29tPgoKV2l0aCBhYm92ZSBjaGFuZ2VzLAoKUmV2aWV3ZWQtYnk6IE1hbml2
YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+CgotIE1h
bmkKCj4gLS0tCj4gdjc6IFVwZGF0ZSB0aGUgZnVuY3Rpb25hbCBjaGFuZ2UgaW4gY29tbW1pdCBt
ZXNzYWdlLgo+IHY2OiBOb25lLgo+IHY1OiBzd2l0Y2ggdG8gdXNlIHVzZSBkZXZtX2Nsa19idWxr
X2dldF9hbGwoKT8gZ2V0cyByaWQgb2YgaGFyZGNvZGluZyB0aGUKPiAgICAgICAgY2xvY2sgbmFt
ZXMgaW4gZHJpdmVyLgo+IHY0OiB1c2UgZGV2X2Vycl9wcm9iZSBmb3IgZXJyb3IgcGF0Y2guCj4g
djM6IEZpeCB0eXBvIGluIGNvbW1pdCBtZXNzYWdlLCBkcm9wcGVkIHJlcG9ydGVkIGJ5Lgo+IHYy
OiBGaXggY29tcGlsYXRpb24gZXJyb3IgcmVwb3J0ZWQgYnkgSW50ZWwgdGVzdCByb2JvdC4KPiAt
LS0KPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmMgfCA2NSArKystLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLQo+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2No
aXAuaCB8ICA3ICsrLQo+ICAyIGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDYyIGRl
bGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUt
cm9ja2NoaXAuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5jCj4gaW5k
ZXggYzA3ZDcxMjlmMWM3Li4yNzc3ZWYwY2I1OTkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wY2kv
Y29udHJvbGxlci9wY2llLXJvY2tjaGlwLmMKPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L3BjaWUtcm9ja2NoaXAuYwo+IEBAIC0xMjcsMjkgKzEyNyw5IEBAIGludCByb2NrY2hpcF9wY2ll
X3BhcnNlX2R0KHN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCkKPiAgCQkJCQkgICAgICJm
YWlsZWQgdG8gZ2V0IGVwIEdQSU9cbiIpOwo+ICAJfQo+ICAKPiAtCXJvY2tjaGlwLT5hY2xrX3Bj
aWUgPSBkZXZtX2Nsa19nZXQoZGV2LCAiYWNsayIpOwo+IC0JaWYgKElTX0VSUihyb2NrY2hpcC0+
YWNsa19wY2llKSkgewo+IC0JCWRldl9lcnIoZGV2LCAiYWNsayBjbG9jayBub3QgZm91bmRcbiIp
Owo+IC0JCXJldHVybiBQVFJfRVJSKHJvY2tjaGlwLT5hY2xrX3BjaWUpOwo+IC0JfQo+IC0KPiAt
CXJvY2tjaGlwLT5hY2xrX3BlcmZfcGNpZSA9IGRldm1fY2xrX2dldChkZXYsICJhY2xrLXBlcmYi
KTsKPiAtCWlmIChJU19FUlIocm9ja2NoaXAtPmFjbGtfcGVyZl9wY2llKSkgewo+IC0JCWRldl9l
cnIoZGV2LCAiYWNsa19wZXJmIGNsb2NrIG5vdCBmb3VuZFxuIik7Cj4gLQkJcmV0dXJuIFBUUl9F
UlIocm9ja2NoaXAtPmFjbGtfcGVyZl9wY2llKTsKPiAtCX0KPiAtCj4gLQlyb2NrY2hpcC0+aGNs
a19wY2llID0gZGV2bV9jbGtfZ2V0KGRldiwgImhjbGsiKTsKPiAtCWlmIChJU19FUlIocm9ja2No
aXAtPmhjbGtfcGNpZSkpIHsKPiAtCQlkZXZfZXJyKGRldiwgImhjbGsgY2xvY2sgbm90IGZvdW5k
XG4iKTsKPiAtCQlyZXR1cm4gUFRSX0VSUihyb2NrY2hpcC0+aGNsa19wY2llKTsKPiAtCX0KPiAt
Cj4gLQlyb2NrY2hpcC0+Y2xrX3BjaWVfcG0gPSBkZXZtX2Nsa19nZXQoZGV2LCAicG0iKTsKPiAt
CWlmIChJU19FUlIocm9ja2NoaXAtPmNsa19wY2llX3BtKSkgewo+IC0JCWRldl9lcnIoZGV2LCAi
cG0gY2xvY2sgbm90IGZvdW5kXG4iKTsKPiAtCQlyZXR1cm4gUFRSX0VSUihyb2NrY2hpcC0+Y2xr
X3BjaWVfcG0pOwo+IC0JfQo+ICsJcm9ja2NoaXAtPm51bV9jbGtzID0gZGV2bV9jbGtfYnVsa19n
ZXRfYWxsKGRldiwgJnJvY2tjaGlwLT5jbGtzKTsKPiArCWlmIChyb2NrY2hpcC0+bnVtX2Nsa3Mg
PCAwKQo+ICsJCXJldHVybiBkZXZfZXJyX3Byb2JlKGRldiwgZXJyLCAiZmFpbGVkIHRvIGdldCBj
bG9ja3NcbiIpOwo+ICAKPiAgCXJldHVybiAwOwo+ICB9Cj4gQEAgLTM3MiwzOSArMzUyLDExIEBA
IGludCByb2NrY2hpcF9wY2llX2VuYWJsZV9jbG9ja3Moc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJv
Y2tjaGlwKQo+ICAJc3RydWN0IGRldmljZSAqZGV2ID0gcm9ja2NoaXAtPmRldjsKPiAgCWludCBl
cnI7Cj4gIAo+IC0JZXJyID0gY2xrX3ByZXBhcmVfZW5hYmxlKHJvY2tjaGlwLT5hY2xrX3BjaWUp
Owo+IC0JaWYgKGVycikgewo+IC0JCWRldl9lcnIoZGV2LCAidW5hYmxlIHRvIGVuYWJsZSBhY2xr
X3BjaWUgY2xvY2tcbiIpOwo+IC0JCXJldHVybiBlcnI7Cj4gLQl9Cj4gLQo+IC0JZXJyID0gY2xr
X3ByZXBhcmVfZW5hYmxlKHJvY2tjaGlwLT5hY2xrX3BlcmZfcGNpZSk7Cj4gLQlpZiAoZXJyKSB7
Cj4gLQkJZGV2X2VycihkZXYsICJ1bmFibGUgdG8gZW5hYmxlIGFjbGtfcGVyZl9wY2llIGNsb2Nr
XG4iKTsKPiAtCQlnb3RvIGVycl9hY2xrX3BlcmZfcGNpZTsKPiAtCX0KPiAtCj4gLQllcnIgPSBj
bGtfcHJlcGFyZV9lbmFibGUocm9ja2NoaXAtPmhjbGtfcGNpZSk7Cj4gLQlpZiAoZXJyKSB7Cj4g
LQkJZGV2X2VycihkZXYsICJ1bmFibGUgdG8gZW5hYmxlIGhjbGtfcGNpZSBjbG9ja1xuIik7Cj4g
LQkJZ290byBlcnJfaGNsa19wY2llOwo+IC0JfQo+IC0KPiAtCWVyciA9IGNsa19wcmVwYXJlX2Vu
YWJsZShyb2NrY2hpcC0+Y2xrX3BjaWVfcG0pOwo+IC0JaWYgKGVycikgewo+IC0JCWRldl9lcnIo
ZGV2LCAidW5hYmxlIHRvIGVuYWJsZSBjbGtfcGNpZV9wbSBjbG9ja1xuIik7Cj4gLQkJZ290byBl
cnJfY2xrX3BjaWVfcG07Cj4gLQl9Cj4gKwllcnIgPSBjbGtfYnVsa19wcmVwYXJlX2VuYWJsZShy
b2NrY2hpcC0+bnVtX2Nsa3MsIHJvY2tjaGlwLT5jbGtzKTsKPiArCWlmIChlcnIpCj4gKwkJcmV0
dXJuIGRldl9lcnJfcHJvYmUoZGV2LCBlcnIsICJmYWlsZWQgdG8gZW5hYmxlIGNsb2Nrc1xuIik7
Cj4gIAo+ICAJcmV0dXJuIDA7Cj4gLQo+IC1lcnJfY2xrX3BjaWVfcG06Cj4gLQljbGtfZGlzYWJs
ZV91bnByZXBhcmUocm9ja2NoaXAtPmhjbGtfcGNpZSk7Cj4gLWVycl9oY2xrX3BjaWU6Cj4gLQlj
bGtfZGlzYWJsZV91bnByZXBhcmUocm9ja2NoaXAtPmFjbGtfcGVyZl9wY2llKTsKPiAtZXJyX2Fj
bGtfcGVyZl9wY2llOgo+IC0JY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHJvY2tjaGlwLT5hY2xrX3Bj
aWUpOwo+IC0JcmV0dXJuIGVycjsKPiAgfQo+ICBFWFBPUlRfU1lNQk9MX0dQTChyb2NrY2hpcF9w
Y2llX2VuYWJsZV9jbG9ja3MpOwo+ICAKPiBAQCAtNDEyLDEwICszNjQsNyBAQCB2b2lkIHJvY2tj
aGlwX3BjaWVfZGlzYWJsZV9jbG9ja3Modm9pZCAqZGF0YSkKPiAgewo+ICAJc3RydWN0IHJvY2tj
aGlwX3BjaWUgKnJvY2tjaGlwID0gZGF0YTsKPiAgCj4gLQljbGtfZGlzYWJsZV91bnByZXBhcmUo
cm9ja2NoaXAtPmNsa19wY2llX3BtKTsKPiAtCWNsa19kaXNhYmxlX3VucHJlcGFyZShyb2NrY2hp
cC0+aGNsa19wY2llKTsKPiAtCWNsa19kaXNhYmxlX3VucHJlcGFyZShyb2NrY2hpcC0+YWNsa19w
ZXJmX3BjaWUpOwo+IC0JY2xrX2Rpc2FibGVfdW5wcmVwYXJlKHJvY2tjaGlwLT5hY2xrX3BjaWUp
Owo+ICsJY2xrX2J1bGtfZGlzYWJsZV91bnByZXBhcmUocm9ja2NoaXAtPm51bV9jbGtzLCByb2Nr
Y2hpcC0+Y2xrcyk7Cj4gIH0KPiAgRVhQT1JUX1NZTUJPTF9HUEwocm9ja2NoaXBfcGNpZV9kaXNh
YmxlX2Nsb2Nrcyk7Cj4gIAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3Bj
aWUtcm9ja2NoaXAuaCBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oCj4g
aW5kZXggNjExMWRlMzVmODRjLi5iZWJhYjgwYzk1NTMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmgKPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9s
bGVyL3BjaWUtcm9ja2NoaXAuaAo+IEBAIC0xMSw2ICsxMSw3IEBACj4gICNpZm5kZWYgX1BDSUVf
Uk9DS0NISVBfSAo+ICAjZGVmaW5lIF9QQ0lFX1JPQ0tDSElQX0gKPiAgCj4gKyNpbmNsdWRlIDxs
aW51eC9jbGsuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPgo+ICAjaW5jbHVkZSA8bGlu
dXgvcGNpLmg+Cj4gICNpbmNsdWRlIDxsaW51eC9wY2ktZWNhbS5oPgo+IEBAIC0yOTksMTAgKzMw
MCw4IEBAIHN0cnVjdCByb2NrY2hpcF9wY2llIHsKPiAgCXN0cnVjdAlyZXNldF9jb250cm9sICpw
bV9yc3Q7Cj4gIAlzdHJ1Y3QJcmVzZXRfY29udHJvbCAqYWNsa19yc3Q7Cj4gIAlzdHJ1Y3QJcmVz
ZXRfY29udHJvbCAqcGNsa19yc3Q7Cj4gLQlzdHJ1Y3QJY2xrICphY2xrX3BjaWU7Cj4gLQlzdHJ1
Y3QJY2xrICphY2xrX3BlcmZfcGNpZTsKPiAtCXN0cnVjdAljbGsgKmhjbGtfcGNpZTsKPiAtCXN0
cnVjdAljbGsgKmNsa19wY2llX3BtOwo+ICsJc3RydWN0ICBjbGtfYnVsa19kYXRhICpjbGtzOwo+
ICsJaW50CW51bV9jbGtzOwo+ICAJc3RydWN0CXJlZ3VsYXRvciAqdnBjaWUxMnY7IC8qIDEyViBw
b3dlciBzdXBwbHkgKi8KPiAgCXN0cnVjdAlyZWd1bGF0b3IgKnZwY2llM3YzOyAvKiAzLjNWIHBv
d2VyIHN1cHBseSAqLwo+ICAJc3RydWN0CXJlZ3VsYXRvciAqdnBjaWUxdjg7IC8qIDEuOFYgcG93
ZXIgc3VwcGx5ICovCj4gLS0gCj4gMi40NC4wCj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j
4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
