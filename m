Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D61DE77182
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Dec 2024 14:39:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PZDYeW4sswSc7b5eBYbPf52hqnh0TNPAaihe6Fgz3s0=; b=mz03ri8eAYAATH
	AiglbL7k4u8S2mtY2GJva4RnbBv88Kz1uyRTxspptii8MEIznv6cEycCkOU5a97ZNIaEtJ5Y/fccj
	w8dRoJoMZWfcgQelF1PhgN9nrfAS21S+4uSp+PkEJ5U2BNjpnlLqMhTWF4d+C1cG1QRVYaEc2E7pB
	yCButUbl3eGVzzx2CoNgK9hw/4d+zfJU/gOF+ptubiQhOnol45DVOhNRt5UxviG4WImf5njbOySqH
	NV4ZwAe4Q/AQQ3eIo72BusIrPLqDRDSSQqXviMkps4lEPFoK87yNcbzItwFRqpHeV8h/dESG9POb8
	9iDJDPuwO70DPDYgfGMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLkLI-00000000dYo-3Rpf;
	Thu, 12 Dec 2024 14:39:04 +0000
Received: from mail-qv1-xf33.google.com ([2607:f8b0:4864:20::f33])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLkLG-00000000dYD-09Hy
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Dec 2024 14:39:03 +0000
Received: by mail-qv1-xf33.google.com with SMTP id 6a1803df08f44-6d932b5081eso5836176d6.1
        for <linux-rockchip@lists.infradead.org>; Thu, 12 Dec 2024 06:39:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1734014340; x=1734619140; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=gnNW27xV9OdBmnsbxp5/+ionKj2v7VRdl1Rz7Jx7aEU=;
        b=Xj2beuSW2C4gAaGoU+Efrhy0b3xL7MncKvjUJx1k6K3w2vlAEznki2fbkVuplge1tj
         pupBEtTU45eGonnv9jVQ4eqwCmEcN0vM2YnEz2ufYRFRehX+6GMrlfsBXQ7okZMLz4j/
         B13g1dVRYTiWDO9aRWlHYaH3Po1DvTjMPum5qaXROLTOIvobplEXBBgfK1tCIcSOiKSJ
         2sCJovjD3pATq5duJ6/MkdGadAj/s0tqUFe4Xj6v1/4Q9NeyYEVgRjAWqHllvxD4ncGp
         HSkdgt0pD/1LYs3McFJREfjRmT4J8z0gH/WPz9uYTvK2NTcbncesBWAgYWaEUHOihGAz
         95pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734014340; x=1734619140;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gnNW27xV9OdBmnsbxp5/+ionKj2v7VRdl1Rz7Jx7aEU=;
        b=q/xNws/bEy4+Ru4JBwmDCQeBRhXBcZY+whgXWE7SN9Yw3DRcdxO385FAfLJXZnTlm3
         jhegFOwXl6HZAi0kHFm6UQX7lwiwXpyg89iMtvUUOea25eIfaYfHWnamtROF4UKO5H/g
         z9AXUJG557GuyjwXmhyWwJjuCSIeim7obMEqz82c5lPULl9iqHd4735kaT4OGgF010Qk
         PEuVgqs+Cm3fws7C2HJ4KcmKX4558O/Xa86ZstB98GlHKKJPAnbhoXY5aCgjsm093fPd
         ibborKYkNN073tqINM0J2BDSrDloWZmQxMUVh0OrPfpBGFz1A/uTVALHqdYb+YJ6eEjN
         xjgw==
X-Forwarded-Encrypted: i=1; AJvYcCVwmJg1NdrAYReGWGt3ce5AxN6us2AIIo7+Xt1vaueOMcWYQDtAAdmPfMNs/L3NrM31c/ex6GZXT6P2ekyN4Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw3pt6S/tKiuQw886M560EoC0Nfag2OR6O/9LUquZhSMrvCTnEl
	QkSUisOc9mMvE7mCoZNp2Nc+V8FkCvigUNsMXvxZt8ZDGLE+QT2AcwVR4d+8p0A=
X-Gm-Gg: ASbGncvuA8MxPSEUj+gFBY8Pu28yP047bdQJa2048brq2M6Hrrw3N2AsAZplY0+jv3E
	/b9tsPmG8WHZZm5OZL/5P+B8F8DyLps+iiRfjQ9x3LYSZQPyAUmkhh9A0C1vTjyUos3qqJl4m9G
	CazPH9PHLkm+qAMUFyhL0VSh9g+KZdwELj85tZLcEbyD/CfkvHYgdw7eAINjus9e1qd7Fi/aLxQ
	4XIm3D8gNO9cGCihZjvaEB+CyRT8p9iWm903LcHAAyHUNowE9U5NkkRrQ==
X-Google-Smtp-Source: AGHT+IGmO7vrV4lBSu51A4Jo3F1+xpPX/fE/NF4f3ogB/sqBTaZfQW/1UmMn9l0bRhcm39SXwiw4VA==
X-Received: by 2002:a05:6214:5086:b0:6d8:9610:a9ff with SMTP id 6a1803df08f44-6db0f709a84mr6522866d6.1.1734014340001;
        Thu, 12 Dec 2024 06:39:00 -0800 (PST)
Received: from nicolas-tpx395.localdomain ([2606:6d00:15:862e::7a9])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6d8da9fdecesm81997096d6.77.2024.12.12.06.38.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Dec 2024 06:38:59 -0800 (PST)
Message-ID: <03c38f0076a018672c303e159f65742550b6c4b1.camel@ndufresne.ca>
Subject: Re: [PATCH 1/2] media: verisilicon: Store reference frames pixels
 format
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
Date: Thu, 12 Dec 2024 09:38:58 -0500
In-Reply-To: <01020192f83fdd04-16f415e6-64f6-44f2-8f79-7676d301d4ab-000000@eu-west-1.amazonses.com>
References: <20241104173623.1058335-1-benjamin.gaignard@collabora.com>
	 <01020192f83fdd04-16f415e6-64f6-44f2-8f79-7676d301d4ab-000000@eu-west-1.amazonses.com>
User-Agent: Evolution 3.54.2 (3.54.2-1.fc41) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_063902_284582_01BDA098 
X-CRM114-Status: GOOD (  20.29  )
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

TGUgbHVuZGkgMDQgbm92ZW1icmUgMjAyNCDDoCAxNzozNiArMDAwMCwgQmVuamFtaW4gR2FpZ25h
cmQgYSDDqWNyaXTCoDoKPiBIYW50cm8gZGVjb2RlciBhbHdheXMgcHJvZHVjZSB0aWxlZCBwaXhl
bHMgZm9ybWF0cyBidXQKPiB3aGVuIHRoZSBwb3N0LXByb2Nlc3NvciBpcyB1c2VkIHRoZSBkZXN0
aW5hdGlvbiBwaXhlbHMKPiBmb3JtYXQgaXMgYSBub24gdGlsZWQgcGl4ZWxzIGZvcm1hdC4gVGhp
cyBsZWQgdG8gY29tcHV0ZQo+IHdyb25nIHJlZmVyZW5jZSBmcmFtZSBzaXplIGFuZCBvZmZzZXRz
Lgo+IEdldHRpbmcgYW5kIHNhdmluZyB0aGUgY29ycmVjdCB0aWxlZCBwaXhlbHMgZm9ybWF0IGZv
ciA4Cj4gYW5kIDEwIGJpdCBzdHJlYW0gc29sdmUgdGhlIGNvbXB1dGF0aW9uIGlzc3Vlcy4KPiAK
PiBGbHVzdGVyIFZQOSBzY29yZSBpbmNyZWFzZSB0byAxNjYvMzA1ICh2cyAxNDUvMzA1KS4KPiBI
RVZDIHNjb3JlIGlzIHN0aWxsIDE0MS8xNDcuCj4gCj4gCj4gU2lnbmVkLW9mZi1ieTogQmVuamFt
aW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+CgpSZXZpZXdlZC1i
eTogTmljb2xhcyBEdWZyZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPgoKPiAt
LS0KPiAgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm8uaCAgIHwgIDIg
KysKPiAgLi4uL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMi5jICAgIHwgIDIg
Ky0KPiAgLi4uL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19wb3N0cHJvYy5jICAgIHwgMjgg
KysrKysrLS0tLS0tLS0tLS0tLQo+ICAuLi4vbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFu
dHJvX3Y0bDIuYyAgfCAyMSArKysrKysrKysrKysrKwo+ICA0IGZpbGVzIGNoYW5nZWQsIDMzIGlu
c2VydGlvbnMoKyksIDIwIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21l
ZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyby5oIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS92ZXJpc2lsaWNvbi9oYW50cm8uaAo+IGluZGV4IDgxMTI2MGRjM2M3Ny4uMTRmYzZhM2UyODc4
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJv
LmgKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyby5oCj4g
QEAgLTIyNyw2ICsyMjcsNyBAQCBzdHJ1Y3QgaGFudHJvX2RldiB7Cj4gICAqIEBzcmNfZm10OgkJ
VjRMMiBwaXhlbCBmb3JtYXQgb2YgYWN0aXZlIHNvdXJjZSBmb3JtYXQuCj4gICAqIEB2cHVfZHN0
X2ZtdDoJRGVzY3JpcHRvciBvZiBhY3RpdmUgZGVzdGluYXRpb24gZm9ybWF0Lgo+ICAgKiBAZHN0
X2ZtdDoJCVY0TDIgcGl4ZWwgZm9ybWF0IG9mIGFjdGl2ZSBkZXN0aW5hdGlvbiBmb3JtYXQuCj4g
KyAqIEByZWZfZm10OgkJVjRMMiBwaXhlbCBmb3JtYXQgb2YgdGhlIHJlZmVyZW5jZSBmcmFtZXMg
Zm9ybWF0Lgo+ICAgKgo+ICAgKiBAY3RybF9oYW5kbGVyOglDb250cm9sIGhhbmRsZXIgdXNlZCB0
byByZWdpc3RlciBjb250cm9scy4KPiAgICogQGpwZWdfcXVhbGl0eToJVXNlci1zcGVjaWZpZWQg
SlBFRyBjb21wcmVzc2lvbiBxdWFsaXR5Lgo+IEBAIC0yNTUsNiArMjU2LDcgQEAgc3RydWN0IGhh
bnRyb19jdHggewo+ICAJc3RydWN0IHY0bDJfcGl4X2Zvcm1hdF9tcGxhbmUgc3JjX2ZtdDsKPiAg
CWNvbnN0IHN0cnVjdCBoYW50cm9fZm10ICp2cHVfZHN0X2ZtdDsKPiAgCXN0cnVjdCB2NGwyX3Bp
eF9mb3JtYXRfbXBsYW5lIGRzdF9mbXQ7Cj4gKwlzdHJ1Y3QgdjRsMl9waXhfZm9ybWF0X21wbGFu
ZSByZWZfZm10Owo+ICAKPiAgCXN0cnVjdCB2NGwyX2N0cmxfaGFuZGxlciBjdHJsX2hhbmRsZXI7
Cj4gIAlpbnQganBlZ19xdWFsaXR5Owo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMi5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJp
c2lsaWNvbi9oYW50cm9fZzIuYwo+IGluZGV4IGI4ODBhNjg0OWQ1OC4uNWQzM2Q3NDVkMzQ2IDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2cy
LmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMi5j
Cj4gQEAgLTQ3LDcgKzQ3LDcgQEAgaXJxcmV0dXJuX3QgaGFudHJvX2cyX2lycShpbnQgaXJxLCB2
b2lkICpkZXZfaWQpCj4gIAo+ICBzaXplX3QgaGFudHJvX2cyX2Nocm9tYV9vZmZzZXQoc3RydWN0
IGhhbnRyb19jdHggKmN0eCkKPiAgewo+IC0JcmV0dXJuIGN0eC0+ZHN0X2ZtdC53aWR0aCAqIGN0
eC0+ZHN0X2ZtdC5oZWlnaHQgKiBjdHgtPmJpdF9kZXB0aCAvIDg7Cj4gKwlyZXR1cm4gY3R4LT5y
ZWZfZm10LnBsYW5lX2ZtdFswXS5ieXRlc3BlcmxpbmUgKgljdHgtPnJlZl9mbXQuaGVpZ2h0Owo+
ICB9Cj4gIAo+ICBzaXplX3QgaGFudHJvX2cyX21vdGlvbl92ZWN0b3JzX29mZnNldChzdHJ1Y3Qg
aGFudHJvX2N0eCAqY3R4KQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zl
cmlzaWxpY29uL2hhbnRyb19wb3N0cHJvYy5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJp
c2lsaWNvbi9oYW50cm9fcG9zdHByb2MuYwo+IGluZGV4IDQxZTkzMTc2MzAwYi4uNGJhMjk2ODJk
YmQ2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFu
dHJvX3Bvc3Rwcm9jLmMKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29u
L2hhbnRyb19wb3N0cHJvYy5jCj4gQEAgLTE5NCwzMSArMTk0LDIxIEBAIHZvaWQgaGFudHJvX3Bv
c3Rwcm9jX2ZyZWUoc3RydWN0IGhhbnRyb19jdHggKmN0eCkKPiAgCj4gIHN0YXRpYyB1bnNpZ25l
ZCBpbnQgaGFudHJvX3Bvc3Rwcm9jX2J1ZmZlcl9zaXplKHN0cnVjdCBoYW50cm9fY3R4ICpjdHgp
Cj4gIHsKPiAtCXN0cnVjdCB2NGwyX3BpeF9mb3JtYXRfbXBsYW5lIHBpeF9tcDsKPiAtCWNvbnN0
IHN0cnVjdCBoYW50cm9fZm10ICpmbXQ7Cj4gIAl1bnNpZ25lZCBpbnQgYnVmX3NpemU7Cj4gIAo+
IC0JLyogdGhpcyBzaG91bGQgYWx3YXlzIHBpY2sgbmF0aXZlIGZvcm1hdCAqLwo+IC0JZm10ID0g
aGFudHJvX2dldF9kZWZhdWx0X2ZtdChjdHgsIGZhbHNlLCBjdHgtPmJpdF9kZXB0aCwgSEFOVFJP
X0FVVE9fUE9TVFBST0MpOwo+IC0JaWYgKCFmbXQpCj4gLQkJcmV0dXJuIDA7Cj4gLQo+IC0JdjRs
Ml9maWxsX3BpeGZtdF9tcCgmcGl4X21wLCBmbXQtPmZvdXJjYywgY3R4LT5zcmNfZm10LndpZHRo
LAo+IC0JCQkgICAgY3R4LT5zcmNfZm10LmhlaWdodCk7Cj4gLQo+IC0JYnVmX3NpemUgPSBwaXhf
bXAucGxhbmVfZm10WzBdLnNpemVpbWFnZTsKPiArCWJ1Zl9zaXplID0gY3R4LT5yZWZfZm10LnBs
YW5lX2ZtdFswXS5zaXplaW1hZ2U7Cj4gIAlpZiAoY3R4LT52cHVfc3JjX2ZtdC0+Zm91cmNjID09
IFY0TDJfUElYX0ZNVF9IMjY0X1NMSUNFKQo+IC0JCWJ1Zl9zaXplICs9IGhhbnRyb19oMjY0X212
X3NpemUocGl4X21wLndpZHRoLAo+IC0JCQkJCQlwaXhfbXAuaGVpZ2h0KTsKPiArCQlidWZfc2l6
ZSArPSBoYW50cm9faDI2NF9tdl9zaXplKGN0eC0+cmVmX2ZtdC53aWR0aCwKPiArCQkJCQkJY3R4
LT5yZWZfZm10LmhlaWdodCk7Cj4gIAllbHNlIGlmIChjdHgtPnZwdV9zcmNfZm10LT5mb3VyY2Mg
PT0gVjRMMl9QSVhfRk1UX1ZQOV9GUkFNRSkKPiAtCQlidWZfc2l6ZSArPSBoYW50cm9fdnA5X212
X3NpemUocGl4X21wLndpZHRoLAo+IC0JCQkJCSAgICAgICBwaXhfbXAuaGVpZ2h0KTsKPiArCQli
dWZfc2l6ZSArPSBoYW50cm9fdnA5X212X3NpemUoY3R4LT5yZWZfZm10LndpZHRoLAo+ICsJCQkJ
CSAgICAgICBjdHgtPnJlZl9mbXQuaGVpZ2h0KTsKPiAgCWVsc2UgaWYgKGN0eC0+dnB1X3NyY19m
bXQtPmZvdXJjYyA9PSBWNEwyX1BJWF9GTVRfSEVWQ19TTElDRSkKPiAtCQlidWZfc2l6ZSArPSBo
YW50cm9faGV2Y19tdl9zaXplKHBpeF9tcC53aWR0aCwKPiAtCQkJCQkJcGl4X21wLmhlaWdodCk7
Cj4gKwkJYnVmX3NpemUgKz0gaGFudHJvX2hldmNfbXZfc2l6ZShjdHgtPnJlZl9mbXQud2lkdGgs
Cj4gKwkJCQkJCWN0eC0+cmVmX2ZtdC5oZWlnaHQpOwo+ICAJZWxzZSBpZiAoY3R4LT52cHVfc3Jj
X2ZtdC0+Zm91cmNjID09IFY0TDJfUElYX0ZNVF9BVjFfRlJBTUUpCj4gLQkJYnVmX3NpemUgKz0g
aGFudHJvX2F2MV9tdl9zaXplKHBpeF9tcC53aWR0aCwKPiAtCQkJCQkgICAgICAgcGl4X21wLmhl
aWdodCk7Cj4gKwkJYnVmX3NpemUgKz0gaGFudHJvX2F2MV9tdl9zaXplKGN0eC0+cmVmX2ZtdC53
aWR0aCwKPiArCQkJCQkgICAgICAgY3R4LT5yZWZfZm10LmhlaWdodCk7Cj4gIAo+ICAJcmV0dXJu
IGJ1Zl9zaXplOwo+ICB9Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVy
aXNpbGljb24vaGFudHJvX3Y0bDIuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGlj
b24vaGFudHJvX3Y0bDIuYwo+IGluZGV4IGRmNmYyNTM2MjYzYi4uYTlhNTRmMTc3NDA1IDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIu
Ywo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIu
Ywo+IEBAIC0xMjYsNiArMTI2LDI0IEBAIGhhbnRyb19maW5kX2Zvcm1hdChjb25zdCBzdHJ1Y3Qg
aGFudHJvX2N0eCAqY3R4LCB1MzIgZm91cmNjKQo+ICAJcmV0dXJuIE5VTEw7Cj4gIH0KPiAgCj4g
K3N0YXRpYyBpbnQKPiAraGFudHJvX3NldF9yZWZlcmVuY2VfZnJhbWVzX2Zvcm1hdChzdHJ1Y3Qg
aGFudHJvX2N0eCAqY3R4KQo+ICt7Cj4gKwljb25zdCBzdHJ1Y3QgaGFudHJvX2ZtdCAqZm10Owo+
ICsJaW50IGRzdF9iaXRfZGVwdGggPSBoYW50cm9fZ2V0X2Zvcm1hdF9kZXB0aChjdHgtPnZwdV9k
c3RfZm10LT5mb3VyY2MpOwo+ICsKPiArCWZtdCA9IGhhbnRyb19nZXRfZGVmYXVsdF9mbXQoY3R4
LCBmYWxzZSwgZHN0X2JpdF9kZXB0aCwgSEFOVFJPX0FVVE9fUE9TVFBST0MpOwo+ICsJaWYgKCFm
bXQpCj4gKwkJcmV0dXJuIC1FSU5WQUw7Cj4gKwo+ICsJY3R4LT5yZWZfZm10LndpZHRoID0gY3R4
LT5zcmNfZm10LndpZHRoOwo+ICsJY3R4LT5yZWZfZm10LmhlaWdodCA9IGN0eC0+c3JjX2ZtdC5o
ZWlnaHQ7Cj4gKwo+ICsJdjRsMl9hcHBseV9mcm1zaXplX2NvbnN0cmFpbnRzKCZjdHgtPnJlZl9m
bXQud2lkdGgsICZjdHgtPnJlZl9mbXQuaGVpZ2h0LCAmZm10LT5mcm1zaXplKTsKPiArCXJldHVy
biB2NGwyX2ZpbGxfcGl4Zm10X21wKCZjdHgtPnJlZl9mbXQsIGZtdC0+Zm91cmNjLAo+ICsJCQkJ
ICAgY3R4LT5yZWZfZm10LndpZHRoLCBjdHgtPnJlZl9mbXQuaGVpZ2h0KTsKPiArfQo+ICsKPiAg
Y29uc3Qgc3RydWN0IGhhbnRyb19mbXQgKgo+ICBoYW50cm9fZ2V0X2RlZmF1bHRfZm10KGNvbnN0
IHN0cnVjdCBoYW50cm9fY3R4ICpjdHgsIGJvb2wgYml0c3RyZWFtLAo+ICAJCSAgICAgICBpbnQg
Yml0X2RlcHRoLCBib29sIG5lZWRfcG9zdHByb2MpCj4gQEAgLTU5MSw2ICs2MDksOSBAQCBzdGF0
aWMgaW50IGhhbnRyb19zZXRfZm10X2NhcChzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4LAo+ICAKPiAg
CWN0eC0+dnB1X2RzdF9mbXQgPSBoYW50cm9fZmluZF9mb3JtYXQoY3R4LCBwaXhfbXAtPnBpeGVs
Zm9ybWF0KTsKPiAgCWN0eC0+ZHN0X2ZtdCA9ICpwaXhfbXA7Cj4gKwlyZXQgPSBoYW50cm9fc2V0
X3JlZmVyZW5jZV9mcmFtZXNfZm9ybWF0KGN0eCk7Cj4gKwlpZiAocmV0KQo+ICsJCXJldHVybiBy
ZXQ7Cj4gIAo+ICAJLyoKPiAgCSAqIEN1cnJlbnQgcmF3IGZvcm1hdCBtaWdodCBoYXZlIGJlY29t
ZSBpbnZhbGlkIHdpdGggbmV3bHkKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
