Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88D26C25B50
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jan 2023 21:20:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7IEMdE9j+EtUz6A/og83sF1MxX77GjPgGUeB9NvhBhA=; b=MXSIyTlrAGlgi3
	sZB8qSzF+//a2sVKkF47cqNf/KJqhRZpfkYAIeLD3GCAVm68pD41gpNKaiD7uKBrBVC0L1pxQk8EW
	73FjF37dQJhNQIgCr1oo06V23fRO6mv1bQyYpXJHtQEfRnSUYkmbOmcSMJvVGi404mhd/2OkMoU7R
	Cy2o4TzdVnHkgXErKRL7GrIJnrtDdkAAPYdZRVEQK+XGDqZzQpFUGk1GZ/Us475Z8yuLVOOwvmeqw
	s7JdRq0bWw+DmNHZWczte9YMOGKUzprfA11v56ZORpPsH9xUCl9JVTAUH1EEWIyI/4M6gdiRPSCsG
	UAfxs3hNE7ru228eDWHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pK4EP-001UNe-AA; Mon, 23 Jan 2023 21:19:57 +0000
Received: from mail-qt1-x829.google.com ([2607:f8b0:4864:20::829])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pK4EL-001UM8-J5
	for linux-rockchip@lists.infradead.org; Mon, 23 Jan 2023 21:19:55 +0000
Received: by mail-qt1-x829.google.com with SMTP id jr19so10221151qtb.7
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Jan 2023 13:19:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20210112.gappssmtp.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jOlbvAaShmf8Gl0ikXZ8hcDrUygNc3QeMBJOc96K2us=;
        b=erejwlCP2bmW0Ojwl2h58WxbHPnNj9a09So+KJi+0zQdpBL1zVGGSdZ3IRhnAaFr1Q
         xgn8ZkCBIfQbE8uRg3Iqrj8mAmxNW+wtKK1sARsgdFXI/77oVKGS5OWOk7ok3zCGV+PY
         skpTPQqIAWhvLq39H8AIp1OfzJlWrCVr0zG1Eejm8pKMhE1bOf2MfYNPIxWRR44PMJ77
         7kTxgVgsl2xJdvC7leeh2Pig6uBKvj9BJ1QQWg2De8esjahcX8h3lPfyKU72hG2+K7vX
         lr2yIt75ysB3yRR6Pj9D1FY7fdNrOBiNv0FOQmH4F1An2LlUoCBz+UxPOxt93UwOSZht
         TEwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jOlbvAaShmf8Gl0ikXZ8hcDrUygNc3QeMBJOc96K2us=;
        b=HHnm5V4Ai2Cn3TwDvnI1FNbwzy1gbsBt7xjeZjEDIi10CLvqRGlYvNM8gihCa3C4aZ
         o9MphSUez1MBjuDwBBZh+3CAXXUg3PO1tz+Ei5HJabMkxwUoCdbd55Y1T7t2loCT/BtW
         l7yxOdVbLjN6FxhAozYMWF0bSCIi2yjRCLuuWBKZmgWFAwIT1dD83eXVZ/YgMv/iPshv
         rCsdESnOfTRxrDLE9+1vVVsRK/MW1a5vKlkphN6dRijdL02wU4/gXFXCaKZ7xK7bFnnW
         X94qScPLPmh9H2QSrE9Eq6Ketr4NZopQ4zzuzUpTQowofL5ziJ/yTGVCW/e+zYDK/nwb
         aSnA==
X-Gm-Message-State: AFqh2krzL9i34/emwNyqRdsEwew54Snf7CUVSNW3ySxKc7QKSaFSOjTk
	29Ro04vn42uSztVUvDrPfows8g==
X-Google-Smtp-Source: AMrXdXsFa36HI7xanlHnzBtlzgwjn6luzlEWTBad7meoAEpQFxTrFcwyQDYekdABtweTxRliH/IA9Q==
X-Received: by 2002:a05:622a:1f16:b0:3b6:369f:c219 with SMTP id ca22-20020a05622a1f1600b003b6369fc219mr41496552qtb.56.1674508790662;
        Mon, 23 Jan 2023 13:19:50 -0800 (PST)
Received: from nicolas-tpx395.localdomain (192-222-136-102.qc.cable.ebox.net. [192.222.136.102])
        by smtp.gmail.com with ESMTPSA id 196-20020a3708cd000000b006fcab4da037sm218913qki.39.2023.01.23.13.19.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 13:19:50 -0800 (PST)
Message-ID: <13021588108e4e0c0c0c30723e867211fb913fe9.camel@ndufresne.ca>
Subject: Re: [PATCH] media: verisilicon: HEVC: Only propose 10 bits
 compatible pixels formats
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de, mchehab@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, 
	nicolas.dufresne@collabora.co.uk
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, kernel@collabora.com
Date: Mon, 23 Jan 2023 16:19:48 -0500
In-Reply-To: <20230113101604.261429-1-benjamin.gaignard@collabora.com>
References: <20230113101604.261429-1-benjamin.gaignard@collabora.com>
User-Agent: Evolution 3.46.2 (3.46.2-1.fc37) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_131953_841259_C20F3B49 
X-CRM114-Status: GOOD (  20.97  )
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

TGUgdmVuZHJlZGkgMTMgamFudmllciAyMDIzIMOgIDExOjE2ICswMTAwLCBCZW5qYW1pbiBHYWln
bmFyZCBhIMOpY3JpdMKgOgo+IFdoZW4gZGVjb2RpbmcgYSAxMGJpdHMgYml0c3RyZWFtcyBIRVZD
IGRyaXZlciBzaG91bGQgb25seSBleHBvc2UKPiAxMGJpdHMgcGl4ZWwgZm9ybWF0cy4KPiBUbyBm
dWxmaWxsIHRoaXMgcmVxdWlyZW1lbnQgaXQgaXMgbmVlZGVkIHRvIGNhbGwgaGFudHJvX3Jlc2V0
X3Jhd19mbXQoKQo+IHdoZW4gYml0IGRlcHRoIGNoYW5nZSBhbmQgdG8gY29ycmVjdGx5IHNldCBt
YXRjaF9kZXB0aCBpbiBwaXhlbCBmb3JtYXRzCj4gZW51bWVyYXRpb24uCj4gCj4gRml4ZXM6IGRj
Mzk0NzNkMDM0MCAoIm1lZGlhOiBoYW50cm86IGlteDhtOiBFbmFibGUgMTBiaXQgZGVjb2Rpbmci
KQo+IAo+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFy
ZEBjb2xsYWJvcmEuY29tPgoKVGVzdGVkIHdpdGggOGJpdCB0aWxlZCAvIFAwMTAgbGluZWFyLCBh
cyB0aGF0J3Mgd2hhdCB3ZSBoYXZlIGluIEdTdHJlYW1lcgp1cHN0cmVhbSBhbmQgaXQgZml4ZWQg
dGhlIGJhZGx5IHNlbGVjdGVkIGZvcm1hdCBpc3N1ZS4gTm8gZmx1c3RlciBoYWNrIHdhcyB1c2Vk
LgoKRmx1c3RlciBzY29yZSB3YXM6IDE0MSAvIDE0NwoKVGVzdGVkLWJ5OiBOaWNvbGFzIER1ZnJl
c25lIDxuaWNvbGFzLmR1ZnJlc25lQGNvbGxhYm9yYS5jb20+Cgo+IC0tLQo+ICAuLi4vbWVkaWEv
cGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jICAgfCAzNSArKysrKysrKysrKysrKysr
Ky0tCj4gIC4uLi9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5jICB8ICAy
ICstCj4gIC4uLi9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdjRsMi5oICB8ICAx
ICsKPiAgLi4uL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2lteDhtX3ZwdV9ody5jIHwgIDIg
KysKPiAgNCBmaWxlcyBjaGFuZ2VkLCAzNiBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRy
b19kcnYuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5j
Cj4gaW5kZXggOGNiNGE2OGM5MTE5Li43OGVhMDUyOTQwMDQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZHJ2LmMKPiArKysgYi9kcml2ZXJz
L21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYwo+IEBAIC0yNzQsOCArMjc0
LDYgQEAgc3RhdGljIGludCBoYW50cm9fdHJ5X2N0cmwoc3RydWN0IHY0bDJfY3RybCAqY3RybCkK
PiAgCQlpZiAoc3BzLT5iaXRfZGVwdGhfbHVtYV9taW51czggIT0gMCAmJiBzcHMtPmJpdF9kZXB0
aF9sdW1hX21pbnVzOCAhPSAyKQo+ICAJCQkvKiBPbmx5IDgtYml0IGFuZCAxMC1iaXQgYXJlIHN1
cHBvcnRlZCAqLwo+ICAJCQlyZXR1cm4gLUVJTlZBTDsKPiAtCj4gLQkJY3R4LT5iaXRfZGVwdGgg
PSBzcHMtPmJpdF9kZXB0aF9sdW1hX21pbnVzOCArIDg7Cj4gIAl9IGVsc2UgaWYgKGN0cmwtPmlk
ID09IFY0TDJfQ0lEX1NUQVRFTEVTU19WUDlfRlJBTUUpIHsKPiAgCQljb25zdCBzdHJ1Y3QgdjRs
Ml9jdHJsX3ZwOV9mcmFtZSAqZGVjX3BhcmFtcyA9IGN0cmwtPnBfbmV3LnBfdnA5X2ZyYW1lOwo+
ICAKPiBAQCAtMjg2LDYgKzI4NCwzMiBAQCBzdGF0aWMgaW50IGhhbnRyb190cnlfY3RybChzdHJ1
Y3QgdjRsMl9jdHJsICpjdHJsKQo+ICAJcmV0dXJuIDA7Cj4gIH0KPiAgCj4gK3N0YXRpYyBpbnQg
aGFudHJvX2hldmNfc19jdHJsKHN0cnVjdCB2NGwyX2N0cmwgKmN0cmwpCj4gK3sKPiArCXN0cnVj
dCBoYW50cm9fY3R4ICpjdHg7Cj4gKwo+ICsJY3R4ID0gY29udGFpbmVyX29mKGN0cmwtPmhhbmRs
ZXIsCj4gKwkJCSAgIHN0cnVjdCBoYW50cm9fY3R4LCBjdHJsX2hhbmRsZXIpOwo+ICsKPiArCXZw
dV9kZWJ1ZygxLCAic19jdHJsOiBpZCA9ICVkLCB2YWwgPSAlZFxuIiwgY3RybC0+aWQsIGN0cmwt
PnZhbCk7Cj4gKwo+ICsJc3dpdGNoIChjdHJsLT5pZCkgewo+ICsJY2FzZSBWNEwyX0NJRF9TVEFU
RUxFU1NfSEVWQ19TUFM6Cj4gKwkJY29uc3Qgc3RydWN0IHY0bDJfY3RybF9oZXZjX3NwcyAqc3Bz
ID0gY3RybC0+cF9uZXcucF9oZXZjX3NwczsKPiArCQlpbnQgYml0X2RlcHRoID0gc3BzLT5iaXRf
ZGVwdGhfbHVtYV9taW51czggKyA4Owo+ICsKPiArCQlpZiAoY3R4LT5iaXRfZGVwdGggIT0gYml0
X2RlcHRoKSB7Cj4gKwkJCWN0eC0+Yml0X2RlcHRoID0gYml0X2RlcHRoOwo+ICsJCQloYW50cm9f
cmVzZXRfcmF3X2ZtdChjdHgpOwo+ICsJCX0KPiArCQlicmVhazsKPiArCWRlZmF1bHQ6Cj4gKwkJ
cmV0dXJuIC1FSU5WQUw7Cj4gKwl9Cj4gKwo+ICsJcmV0dXJuIDA7Cj4gK30KPiArCj4gIHN0YXRp
YyBpbnQgaGFudHJvX2pwZWdfc19jdHJsKHN0cnVjdCB2NGwyX2N0cmwgKmN0cmwpCj4gIHsKPiAg
CXN0cnVjdCBoYW50cm9fY3R4ICpjdHg7Cj4gQEAgLTMyOCw2ICszNTIsMTEgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCB2NGwyX2N0cmxfb3BzIGhhbnRyb19jdHJsX29wcyA9IHsKPiAgCS50cnlfY3Ry
bCA9IGhhbnRyb190cnlfY3RybCwKPiAgfTsKPiAgCj4gK3N0YXRpYyBjb25zdCBzdHJ1Y3QgdjRs
Ml9jdHJsX29wcyBoYW50cm9faGV2Y19jdHJsX29wcyA9IHsKPiArCS5zX2N0cmwgPSBoYW50cm9f
aGV2Y19zX2N0cmwsCj4gKwkudHJ5X2N0cmwgPSBoYW50cm9fdHJ5X2N0cmwsCj4gK307Cj4gKwo+
ICBzdGF0aWMgY29uc3Qgc3RydWN0IHY0bDJfY3RybF9vcHMgaGFudHJvX2pwZWdfY3RybF9vcHMg
PSB7Cj4gIAkuc19jdHJsID0gaGFudHJvX2pwZWdfc19jdHJsLAo+ICB9Owo+IEBAIC00NzAsNyAr
NDk5LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBoYW50cm9fY3RybCBjb250cm9sc1tdID0gewo+
ICAJCS5jb2RlYyA9IEhBTlRST19IRVZDX0RFQ09ERVIsCj4gIAkJLmNmZyA9IHsKPiAgCQkJLmlk
ID0gVjRMMl9DSURfU1RBVEVMRVNTX0hFVkNfU1BTLAo+IC0JCQkub3BzID0gJmhhbnRyb19jdHJs
X29wcywKPiArCQkJLm9wcyA9ICZoYW50cm9faGV2Y19jdHJsX29wcywKPiAgCQl9LAo+ICAJfSwg
ewo+ICAJCS5jb2RlYyA9IEhBTlRST19IRVZDX0RFQ09ERVIsCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYyBiL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuYwo+IGluZGV4IDJjN2E4MDUyODll
Ny4uMDAyNWUwNDlkZDI2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVy
aXNpbGljb24vaGFudHJvX3Y0bDIuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVy
aXNpbGljb24vaGFudHJvX3Y0bDIuYwo+IEBAIC0zOTgsNyArMzk4LDcgQEAgaGFudHJvX3Jlc2V0
X2VuY29kZWRfZm10KHN0cnVjdCBoYW50cm9fY3R4ICpjdHgpCj4gIAkJaGFudHJvX3NldF9mbXRf
b3V0KGN0eCwgZm10KTsKPiAgfQo+ICAKPiAtc3RhdGljIHZvaWQKPiArdm9pZAo+ICBoYW50cm9f
cmVzZXRfcmF3X2ZtdChzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4KQo+ICB7Cj4gIAljb25zdCBzdHJ1
Y3QgaGFudHJvX2ZtdCAqcmF3X3ZwdV9mbXQ7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuaCBiL2RyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vdmVyaXNpbGljb24vaGFudHJvX3Y0bDIuaAo+IGluZGV4IDY0ZjZmNTdlOWQ3YS4uZjY0MjU2
MGFlZDkzIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24v
aGFudHJvX3Y0bDIuaAo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24v
aGFudHJvX3Y0bDIuaAo+IEBAIC0yMSw2ICsyMSw3IEBACj4gIGV4dGVybiBjb25zdCBzdHJ1Y3Qg
djRsMl9pb2N0bF9vcHMgaGFudHJvX2lvY3RsX29wczsKPiAgZXh0ZXJuIGNvbnN0IHN0cnVjdCB2
YjJfb3BzIGhhbnRyb19xdWV1ZV9vcHM7Cj4gIAo+ICt2b2lkIGhhbnRyb19yZXNldF9yYXdfZm10
KHN0cnVjdCBoYW50cm9fY3R4ICpjdHgpOwo+ICB2b2lkIGhhbnRyb19yZXNldF9mbXRzKHN0cnVj
dCBoYW50cm9fY3R4ICpjdHgpOwo+ICBpbnQgaGFudHJvX2dldF9mb3JtYXRfZGVwdGgodTMyIGZv
dXJjYyk7Cj4gIGNvbnN0IHN0cnVjdCBoYW50cm9fZm10ICoKPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9pbXg4bV92cHVfaHcuYyBiL2RyaXZlcnMvbWVk
aWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaW14OG1fdnB1X2h3LmMKPiBpbmRleCBiMzkwMjI4ZmQz
YjQuLmY4NTBkOGJkZGVmNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zl
cmlzaWxpY29uL2lteDhtX3ZwdV9ody5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92
ZXJpc2lsaWNvbi9pbXg4bV92cHVfaHcuYwo+IEBAIC0xNTIsNiArMTUyLDcgQEAgc3RhdGljIGNv
bnN0IHN0cnVjdCBoYW50cm9fZm10IGlteDhtX3ZwdV9nMl9wb3N0cHJvY19mbXRzW10gPSB7Cj4g
IAl7Cj4gIAkJLmZvdXJjYyA9IFY0TDJfUElYX0ZNVF9OVjEyLAo+ICAJCS5jb2RlY19tb2RlID0g
SEFOVFJPX01PREVfTk9ORSwKPiArCQkubWF0Y2hfZGVwdGggPSB0cnVlLAo+ICAJCS5wb3N0cHJv
Y2Vzc2VkID0gdHJ1ZSwKPiAgCQkuZnJtc2l6ZSA9IHsKPiAgCQkJLm1pbl93aWR0aCA9IEZNVF9N
SU5fV0lEVEgsCj4gQEAgLTE2NSw2ICsxNjYsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGhhbnRy
b19mbXQgaW14OG1fdnB1X2cyX3Bvc3Rwcm9jX2ZtdHNbXSA9IHsKPiAgCXsKPiAgCQkuZm91cmNj
ID0gVjRMMl9QSVhfRk1UX1AwMTAsCj4gIAkJLmNvZGVjX21vZGUgPSBIQU5UUk9fTU9ERV9OT05F
LAo+ICsJCS5tYXRjaF9kZXB0aCA9IHRydWUsCj4gIAkJLnBvc3Rwcm9jZXNzZWQgPSB0cnVlLAo+
ICAJCS5mcm1zaXplID0gewo+ICAJCQkubWluX3dpZHRoID0gRk1UX01JTl9XSURUSCwKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
