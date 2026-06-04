Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFCE1CD6E4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jun 2026 14:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fv8EUCXfQVmg0bJRXIOv6bhfhKRmE0ecaqrnqVrGRHw=; b=A7RsV5dTxSasyp
	F/zRqbvoPI/ZmFl/GrjRBoRbRYn1GPcDEulbENw5E101pdazyKOgtIrsguSzVf7xFvqPE+q9B3drN
	+fyXcYbjy1bpMpsiahRSBUFBnSxD7Kq6sVT9Q2PQa84MAgpKpoJqI33O6buv1tHTrnZ/LVYGmrtn7
	+WLmrgARyuesTIFF8sD0lwYdwrJNc3oIXs0Ez7gEN0QF5R5dHNobnsxuocB8lU012KKBCIkBMo3zF
	5r3AM6iqRD4z2aGLjg+1Nlw6tv81koKpNQShwDJPJB7TGaFlbXyKazTAAfq4sLWr1XrvkdhvQcZcO
	jPaQ+d7OQPzM/aVgHvrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV8vr-0000000GstM-1J9w;
	Thu, 04 Jun 2026 14:20:27 +0000
Received: from mail-qk1-x72e.google.com ([2607:f8b0:4864:20::72e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV8vo-0000000GssQ-2gdA
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jun 2026 14:20:26 +0000
Received: by mail-qk1-x72e.google.com with SMTP id af79cd13be357-9159da9bba5so52971585a.1
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2026 07:20:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1780582823; cv=none;
        d=google.com; s=arc-20240605;
        b=HPJx6gQSiKKXn2ddwbuAeqSIVGn2Yaefui33cDOhjYPP8NfS4Y9VgP4ClvAnc6D2CP
         wt512Ek6dnl+YTx5TAfiPOtjRGtIf3qbP3OCzk5YkJ90FLBS8k/trlBlT0Lc1NWo/ai0
         mF0fOQuQyvyuCzrKWz7Rhy8PGkfJr+iTQbephZXmip/YR68E+dCP377SxnbFI3RB78wY
         Doyszyas7Pz4AIpMC2m6/O+cKM8TRUaT/1NyoapCAtGEc/5nLrgDR9zByQnCU3r982ce
         HxYKwSyBQTssmzY80gpwHddcthcytlQhkdr3rN+CQBuCpHbLTMDDp8ad98rxkEipYlNT
         pJjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=QPi10HvU9BftniKMgGr3MAu9cx9vcqkTMC3QUEUHzeg=;
        fh=9Xj5oum9k0xdMhnLEy6hEx39vNYl2OxWVMEX1RpdaXY=;
        b=PAY8Opv87d/T4EvPHPReLhMlcZGzsgan7ABDq4j3UwmJ6VTUlflhMztOiwVS/jqzh0
         ZEBD1SVSWIu4uN+lftEiBy5ahoQNNmQKTLcZ+clGivIb4TWO2b23sIy47Kdo+WDtYMbq
         Y7uUXU3HdtnZDXiSY8TU5BFb/1j+TAYQ0bkYL65UT6KOgPdBOXA+to4m1qv1I9MEv9DE
         9HWWMD7pxWMRl9jmYvXHT5urdBgeJlN03Zt/mfTizCHSyE69LZraT3/VoB7MH6XpthTZ
         KkTmv+8d2VYAYP4QBuINfXQJKZ8tsUUPm19nnPfKS9brCgl8zEyIwz25IpalMfHMfjiP
         V91g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20251104.gappssmtp.com; s=20251104; t=1780582823; x=1781187623; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QPi10HvU9BftniKMgGr3MAu9cx9vcqkTMC3QUEUHzeg=;
        b=TpD72eX+hrZ/NcYBlnD6nALiPPILo2Xa7W/TvqY7JPKgnYudS0mMSJFVh4kvfKP1Uq
         pHx2U//POMHnjFUH88WNC2dUSv8GulfXqOndWKu5H5pQ1+U7fcov81niBqxYHNBZxJvi
         QMVMuxRusvh/mLl+jllTRLrwuUP+/hnz1J4zAew7Kl6YoMpcgzdRV3gHK2kHQowZe/iL
         5ZeRx4FGkdg/Zp2/la7tUV6y2gZ5/2YUNM0CHcb6eVlULmWEWia9DqdWm3YCfPuwL+7o
         ToSY6CcsAkv0rrZBJEEBlc66HmXlDInVH2cAygCc0WK06QoJGDKZj1D/wYCBZqIysCsH
         E2LA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780582823; x=1781187623;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QPi10HvU9BftniKMgGr3MAu9cx9vcqkTMC3QUEUHzeg=;
        b=YuXem2B5PPvU9Et7+aXDlFPRNzd+xBBFkpSmri1UvfwJhaHVgHg9f1pZS9WHpFq8fb
         kTo+itpswbDyTW7k1aYK7ghWoOJIxHhmYsFo6epjK/LGTtdQT8GCVn8Vxk3dB7PHX4Ru
         GypYOTvTwwEHDWbCmThniBx4fDUSp8SGYSYnxkUmXrvdeMg7ZGWGpOy09JOJqW84EIbl
         uQYvzqeSaubwYL6DSaIdebi2yQ45QlmorO3igE03ZKHYxyVrRTnVyLLT3dLKCub253aF
         EFtlDDNS4rjbVJ4yhbTBJdogs8QWWHZMvHNpSZiPPJHvm9ffAQkyljLRrSocuumgi80y
         oFVw==
X-Forwarded-Encrypted: i=1; AFNElJ8es96Ski5HwE88FycfaYNGZC4Ul+lO/Z8JxB3HyPLH1+bFSRbfwiI7spK+CFb5N0VrRSjgjq7+nmeqV7TYYQ==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxq37oDkJXebeuKDaGWaNyoYGnU01Rpa/xd3Pg8pcJbUIVpK2bL
	pC77lCtiY5l+STZlpkQ6pJqgF0iLVGTIjPg0hlY4LiQSnW1ckJSv2yy9XCwqTfVYYPfHyRo2xbZ
	0fnOWgglVrRFVQhf5IxmNADyr3+NAo+fe+0v4D6RaEQ==
X-Gm-Gg: Acq92OGzKpdKAAt31sUnTrFi+FBUaMJfabc41Q8bln9fh3hkAgpyU5S7Y3sa/WUuXpZ
	+6IAPLsCLpVcnGKdDQ7IkFHi4zTXOTMJ/1cqPDEmyhbLKvP6FzsD6j8lGQa8F/oeKCTznmufhX9
	qv3RTwBia0wEcglp0XQIV5nTdcFQq6oA8DBgM3yz0aWo179XASZMicKmafZa2ibMpRUsEEbTLpb
	jZ+f4GiXGHGxComth90GUjuw6jWthgahhE8lZyFGXtKohNyMn1KYpTnqQOO90wY7pSCrk+GG2my
	exkiwFDlIgCOxRUD
X-Received: by 2002:a05:620a:268d:b0:912:c0b3:7d9b with SMTP id
 af79cd13be357-9158a76739emr1272633085a.24.1780582822784; Thu, 04 Jun 2026
 07:20:22 -0700 (PDT)
MIME-Version: 1.0
References: <20260604135255.62682-1-midgy971@gmail.com> <20260604135255.62682-7-midgy971@gmail.com>
In-Reply-To: <20260604135255.62682-7-midgy971@gmail.com>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Thu, 4 Jun 2026 16:20:10 +0200
X-Gm-Features: AVHnY4JQeDtrhyq7YBnn9raVEBX1uxBzeM4kDcgUj1eAV9LhKWI5-NL4FjfQpnY
Message-ID: <CAPsqS2RYjf4dMj=Maz1c2vViW83ZsrEW9eOez526eh=TsKvQww@mail.gmail.com>
Subject: Re: [RFC PATCH v3 6/9] iommu/rockchip: Clear AUTO_GATING bit 1 on the
 RK356x v1 IOMMU
To: Midgy BALON <midgy971@gmail.com>
Cc: ogabbay@kernel.org, heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, 
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	iommu@lists.linux.dev, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_072024_942141_17C232D8 
X-CRM114-Status: GOOD (  18.02  )
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

T24gVGh1LCBKdW4gNCwgMjAyNiBhdCAzOjUz4oCvUE0gTWlkZ3kgQkFMT04gPG1pZGd5OTcxQGdt
YWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiB0aGUgUkszNTZ4IHYxIElPTU1VLCBSS19NTVVfQVVUT19H
QVRJTkcgcmVzZXRzIHRvIDB4My4gQml0IDEgZW5hYmxlcwo+IGF1dG8gY2xvY2stZ2F0aW5nIG9m
IHRoZSBwYWdlLXRhYmxlIHdhbGtlciwgc28gdGhlIHdhbGtlcidzIEFYSSBtYXN0ZXIKPiBsb3Nl
cyBpdHMgY2xvY2sgYmV0d2VlbiB0cmFuc2FjdGlvbnM7IGEgVExCLW1pc3MgcGFnZSB3YWxrIHRo
ZW4gbmV2ZXIKPiBjb21wbGV0ZXMgYW5kIHRoZSBJT01NVSBpcyBsZWZ0IHN0dWNrIChQQUdJTkdf
RU5BQkxFRCwgbmV2ZXIgSURMRSkuCj4KPiBDbGVhciBiaXQgMSAoa2VlcGluZyBiaXQgMCwgdGhl
IHNsYXZlLXBvcnQgZ2F0ZSkgb25jZSBwYWdpbmcgaXMgZW5hYmxlZAo+IHNvIHRoZSB3YWxrZXIg
a2VlcHMgaXRzIGNsb2NrLiBUaGlzIGlzIHJlcXVpcmVkIGZvciB0aGUgUkszNTY4IE5QVSBNTVUu
CgpIaSwKCkknbSBub3QgYWJsZSB0byByZXZpZXcgdGhpcyBwYXRjaCBteXNlbGYsIGJ1dCBtYXli
ZSBpdCBjYW4gYmUKc3VibWl0dGVkIHNlcGFyYXRlbHkgd2hpbGUgd2Ugd29yayBvbiB0aGUgTlBV
IGJpdHM/CgpSZWdhcmRzLAoKVG9tZXUKCj4gU2lnbmVkLW9mZi1ieTogTWlkZ3kgQkFMT04gPG1p
ZGd5OTcxQGdtYWlsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9pb21tdS9yb2NrY2hpcC1pb21tdS5j
IHwgMTIgKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspCj4K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pb21tdS9yb2NrY2hpcC1pb21tdS5jIGIvZHJpdmVycy9p
b21tdS9yb2NrY2hpcC1pb21tdS5jCj4gaW5kZXggNGRhODAxMzY5MzNjNC4uZTNkOGI2ZTljYTEy
YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMKPiArKysgYi9k
cml2ZXJzL2lvbW11L3JvY2tjaGlwLWlvbW11LmMKPiBAQCAtOTUzLDYgKzk1MywxOCBAQCBzdGF0
aWMgaW50IHJrX2lvbW11X2VuYWJsZShzdHJ1Y3QgcmtfaW9tbXUgKmlvbW11KQo+Cj4gICAgICAg
ICByZXQgPSBya19pb21tdV9lbmFibGVfcGFnaW5nKGlvbW11KTsKPgo+ICsgICAgICAgaWYgKCFy
ZXQpIHsKPiArICAgICAgICAgICAgICAgLyoKPiArICAgICAgICAgICAgICAgICogUkszNTZ4IHYx
IElPTU1VOiBSS19NTVVfQVVUT19HQVRJTkcgYml0IDEgZW5hYmxlcyBwYWdlLXdhbGtlcgo+ICsg
ICAgICAgICAgICAgICAgKiBhdXRvIGNsb2NrLWdhdGluZzsgdGhlIHdhbGtlcidzIEFYSSBtYXN0
ZXIgdGhlbiBsb3NlcyBpdHMgY2xvY2sKPiArICAgICAgICAgICAgICAgICogYmV0d2VlbiB0cmFu
c2FjdGlvbnMgYW5kIGEgVExCLW1pc3MgcGFnZSB3YWxrIG5ldmVyIGNvbXBsZXRlcywKPiArICAg
ICAgICAgICAgICAgICogbGVhdmluZyB0aGUgSU9NTVUgc3R1Y2sgKFBBR0lOR19FTkFCTEVELCBu
ZXZlciBJRExFKS4gIENsZWFyCj4gKyAgICAgICAgICAgICAgICAqIGJpdCAxIChrZWVwIGJpdCAw
LCB0aGUgc2xhdmUtcG9ydCBnYXRlKSBvbmNlIHBhZ2luZyBpcyBlbmFibGVkLgo+ICsgICAgICAg
ICAgICAgICAgKi8KPiArICAgICAgICAgICAgICAgZm9yIChpID0gMDsgaSA8IGlvbW11LT5udW1f
bW11OyBpKyspCj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmtfaW9tbXVfd3JpdGUoaW9tbXUt
PmJhc2VzW2ldLCBSS19NTVVfQVVUT19HQVRJTkcsIDB4Mik7Cj4gKyAgICAgICB9Cj4gKwo+ICBv
dXRfZGlzYWJsZV9zdGFsbDoKPiAgICAgICAgIHJrX2lvbW11X2Rpc2FibGVfc3RhbGwoaW9tbXUp
Owo+ICBvdXRfZGlzYWJsZV9jbG9ja3M6Cj4gLS0KPiAyLjM5LjUKPgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
