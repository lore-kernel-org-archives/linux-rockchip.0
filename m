Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6ADCC369C2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Apr 2025 20:00:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+N5jy3Dd+RLWJKfPxL75rNWu1xeCMTuoztcvCaz1dzg=; b=A/LrkkRpE7JUyM
	/HhhJTIhbEcQIfuIiRM9+tOC/KabBTAEgque44Dc//2davPrHed9IdqQZzYv+H31WHrFALhpaVx5v
	N8O2na+EQ4eAqBaOPS0U5cqQrPqwuzKhok/EwCVLsrMEIn65taAKz5GUIOE3dCryDVAONUxATT+PO
	dmfuLdc+s8veHRoXh6xdiMmm6/qAOWyFDtvc8DQzJ3VAUYYw1glifmkr6QCGs6UTObCUBodxzDUVb
	pOOu8Ys1+P/5Fha6oGsWqpmOQ7UZlDlPp7jF9Ceay37gV346ckMVZVxUeZitFSVXrwpaEg29lJ7ON
	Fe+Zq64Dxekn0OK6jjgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Jmk-00000008PRa-3vkn;
	Tue, 22 Apr 2025 20:00:02 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7Jks-00000008PFh-16Ts
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Apr 2025 19:58:07 +0000
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-477282401b3so62185251cf.1
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Apr 2025 12:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1745351885; x=1745956685; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wi0XCQ0wIgKNjQqJTUBlgswWdaLbIuH1pbfLDZVamA8=;
        b=o1Bgzm7tzgq1jFBzByTVs6oIazL+2xz1o50T/vcK87Sj2wj7kqGqVB+mb1gQTBmfne
         J3nllztS/PGiTTK6Lwugx+2OIKfXJOjuUjAiNd/fkrmV6ywMIUTPf9R2DNxgf+hbf8Y7
         ZPn8b+X2BG29wUZO0D11mCRcvvnBXiaigzFHLRtgaA9Ig3OtKLRURGzdBTUMK336h4aa
         Dh2hGJbVLCBxL0L0eDsbCPPOMYwIAInuC1nm+rt7M2LKrruu+SJGm1jBxNjCckTHFcUo
         mmGhM++qEh23BXkT2QGnxwhnArivfPtVtxFevrORdsuYl/t/RZW7qC40f+GcGcr7ZZiy
         WS+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745351885; x=1745956685;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wi0XCQ0wIgKNjQqJTUBlgswWdaLbIuH1pbfLDZVamA8=;
        b=sMX1tOx9mWVInPOAIo+iL2sbOxyaHtQKqmR4HqmGuQtTatG+zMOOCUMohG+x8+PMBZ
         6RTif/ZYRThUTGramuFgqK0v7PvV5eNIGiATTiACfXVS9LoTq3VYynLU4SR/3eUV+m+f
         GeTqZbtKvNWO6/l2E7qIG/+wZsS2XJmeyHO9BFKH56RRKTKmP0XK6P4vaMvYhaz3lC7E
         DJLnExcqaKt3b1+gQJ2gyg89fpu/v1tLk9uTRaVoA9qsB52wt3GylIlc5oqVPn2bBwxl
         sx/GQWkVpbkCmGQpk8fYo49IrEnqowZXnBecKM+webf1qQ/zuLK9elwByLtiQ5zuudhr
         9AVQ==
X-Forwarded-Encrypted: i=1; AJvYcCWYyehn1nPLSVvSqoPG/o/SpNeR0cJoRT9Kt+I0WOcWkUb2hvZHlKDe6dR/J7ftYBN39Sd8hPD4Z3p1YXIZzA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxGDhHWuqm0sBoGhw5fTTj96kdNRZ703Isi5+qXRiEG42UyAKiJ
	UBB82jyrV60cDq1stdghAVfSqqYIBUOwiu2icm7cZmvuPXiYPro9Cqx3oBRLr+Y=
X-Gm-Gg: ASbGncv+TG0bZERRUSZOb8ozEU+15FY+Zhip3SZ2k9Prt0rWRwkzR6LZGx8NtCfjkgx
	mw6KZb36oG0O0+sTw/vD3ble9NBhaZXCYcDwbz6w2IYr0o4ZQ34QRPYlT1sZmR5nDczlEnruPt+
	P/dZKUTYOE81ggEQ3ZvqistQ/Xcia9xFY9HCj/4yOnJ8hoX+vPsGYsxXvl8sh9eCn+zPa+MNZca
	2+81A0lg4CEtlx33QfQR6n3zmRIeZeRkOLekVUnvCgzqyp7D02Thyxd+1o/RMDhvhqfDIQBxs1s
	IAiF+XEB/x1Ec8QxNl+JuTBRa3ZmGwxSwuX526Cv19EK+Q==
X-Google-Smtp-Source: AGHT+IF7avo9uEX7A3mW4T8l6RGnGWjnOiUes3AEZlicK2QwGeYThk0IGDXmi5oRWeE+79xJPQKX3w==
X-Received: by 2002:a05:6214:19c8:b0:6e8:fad9:c688 with SMTP id 6a1803df08f44-6f2c4552a03mr278764626d6.16.1745351884909;
        Tue, 22 Apr 2025 12:58:04 -0700 (PDT)
Received: from ?IPv6:2606:6d00:15:9913::5ac? ([2606:6d00:15:9913::5ac])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6f2c2af1433sm61506056d6.19.2025.04.22.12.58.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 12:58:04 -0700 (PDT)
Message-ID: <529a9804d5b14322b2be78ea6f98677db9c23c33.camel@ndufresne.ca>
Subject: Re: [PATCH v3 3/3] media: verisilicon: postproc: 4K support
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Hugues Fruchet <hugues.fruchet@foss.st.com>, Mauro Carvalho Chehab	
 <mchehab@kernel.org>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Sebastian Fricke	
 <sebastian.fricke@collabora.com>, Ricardo Ribalda <ribalda@chromium.org>, 
 Erling Ljunggren <hljunggr@cisco.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Laurent Pinchart	 <laurent.pinchart@ideasonboard.com>, Sakari Ailus
 <sakari.ailus@linux.intel.com>,  Jacopo Mondi
 <jacopo.mondi@ideasonboard.com>, Jean-Michel Hautbois
 <jeanmichel.hautbois@ideasonboard.com>,  Benjamin Gaignard
 <benjamin.gaignard@collabora.com>, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, 	linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org
Date: Tue, 22 Apr 2025 15:58:02 -0400
In-Reply-To: <20241121131904.261230-4-hugues.fruchet@foss.st.com>
References: <20241121131904.261230-1-hugues.fruchet@foss.st.com>
	 <20241121131904.261230-4-hugues.fruchet@foss.st.com>
User-Agent: Evolution 3.56.0 (3.56.0-1.fc42) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_125806_293874_C549CCDC 
X-CRM114-Status: GOOD (  13.72  )
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

SGksCgpMZSBqZXVkaSAyMSBub3ZlbWJyZSAyMDI0IMOgIDE0OjE5ICswMTAwLCBIdWd1ZXMgRnJ1
Y2hldCBhIMOpY3JpdMKgOgo+IFN1cHBvcnQgaW5wdXQgbGFyZ2VyIHRoYW4gNDA5NngyMDQ4IHVz
aW5nIGV4dGVuZGVkIGlucHV0IHdpZHRoL2hlaWdodAo+IGZpZWxkcyBvZiBzd3JlZzkyLgo+IFRo
aXMgaXMgbmVlZGVkIHRvIGRlY29kZSBsYXJnZSBXZWJQIG9yIEpQRUcgcGljdHVyZXMuCj4gCj4g
U2lnbmVkLW9mZi1ieTogSHVndWVzIEZydWNoZXQgPGh1Z3Vlcy5mcnVjaGV0QGZvc3Muc3QuY29t
PgoKUmV2aWV3ZWQtYnk6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAY29sbGFi
b3JhLmNvbT4KCj4gLS0tCj4gwqBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hh
bnRyby5owqDCoMKgwqDCoMKgwqDCoMKgIHwgMiArKwo+IMKgZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS92ZXJpc2lsaWNvbi9oYW50cm9fZzFfcmVncy5owqAgfCAyICstCj4gwqBkcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19wb3N0cHJvYy5jIHwgNiArKysrKy0KPiDCoDMg
ZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyby5oIGIvZHJp
dmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm8uaAo+IGluZGV4IDgxMTI2MGRj
M2M3Ny4uZDEzMzdmNzc0MmU0IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
dmVyaXNpbGljb24vaGFudHJvLmgKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zlcmlz
aWxpY29uL2hhbnRyby5oCj4gQEAgLTMyMSw2ICszMjEsOCBAQCBzdHJ1Y3QgaGFudHJvX3Bvc3Rw
cm9jX3JlZ3Mgewo+IMKgCXN0cnVjdCBoYW50cm9fcmVnIG91dHB1dF9mbXQ7Cj4gwqAJc3RydWN0
IGhhbnRyb19yZWcgb3JpZ193aWR0aDsKPiDCoAlzdHJ1Y3QgaGFudHJvX3JlZyBkaXNwbGF5X3dp
ZHRoOwo+ICsJc3RydWN0IGhhbnRyb19yZWcgaW5wdXRfd2lkdGhfZXh0Owo+ICsJc3RydWN0IGhh
bnRyb19yZWcgaW5wdXRfaGVpZ2h0X2V4dDsKPiDCoH07Cj4gwqAKPiDCoHN0cnVjdCBoYW50cm9f
dnA5X2RlY29kZWRfYnVmZmVyX2luZm8gewo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMV9yZWdzLmggYi9kcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3ZlcmlzaWxpY29uL2hhbnRyb19nMV9yZWdzLmgKPiBpbmRleCBlN2Q0ZGI3ODhlNTcuLmY2
ZTViYmViMTkxNCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxp
Y29uL2hhbnRyb19nMV9yZWdzLmgKPiArKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Zlcmlz
aWxpY29uL2hhbnRyb19nMV9yZWdzLmgKPiBAQCAtMzUxLDcgKzM1MSw3IEBACj4gwqAjZGVmaW5l
wqDCoMKgwqAgRzFfUkVHX1BQX0NPTlRST0xfT1VUX1dJRFRIKHYpICgoKHYpIDw8IDQpICYgR0VO
TUFTSygxNCwgNCkpCj4gwqAjZGVmaW5lIEcxX1JFR19QUF9NQVNLMV9PUklHX1dJRFRICUcxX1NX
UkVHKDg4KQo+IMKgI2RlZmluZcKgwqDCoMKgIEcxX1JFR19QUF9PUklHX1dJRFRIKHYpCSgoKHYp
IDw8IDIzKSAmIEdFTk1BU0soMzEsIDIzKSkKPiAtI2RlZmluZSBHMV9SRUdfUFBfRElTUExBWV9X
SURUSAkJRzFfU1dSRUcoOTIpCj4gKyNkZWZpbmUgRzFfUkVHX1BQX0RJU1BMQVlfV0lEVEhfSU5f
RVhUCUcxX1NXUkVHKDkyKQo+IMKgI2RlZmluZSBHMV9SRUdfUFBfRlVTRQkJCUcxX1NXUkVHKDk5
KQo+IMKgCj4gwqAjZW5kaWYgLyogSEFOVFJPX0cxX1JFR1NfSF8gKi8KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fcG9zdHByb2MuYyBiL2Ry
aXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3Bvc3Rwcm9jLmMKPiBpbmRl
eCAyMzJjOTNlZWE3ZWUuLjg0YzhlMjg3NDcwZCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19wb3N0cHJvYy5jCj4gKysrIGIvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fcG9zdHByb2MuYwo+IEBAIC00OSw3ICs0
OSw5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaGFudHJvX3Bvc3Rwcm9jX3JlZ3MgaGFudHJvX2cx
X3Bvc3Rwcm9jX3JlZ3MgPSB7Cj4gwqAJLmlucHV0X2ZtdCA9IHtHMV9SRUdfUFBfQ09OVFJPTCwg
MjksIDB4N30sCj4gwqAJLm91dHB1dF9mbXQgPSB7RzFfUkVHX1BQX0NPTlRST0wsIDI2LCAweDd9
LAo+IMKgCS5vcmlnX3dpZHRoID0ge0cxX1JFR19QUF9NQVNLMV9PUklHX1dJRFRILCAyMywgMHgx
ZmZ9LAo+IC0JLmRpc3BsYXlfd2lkdGggPSB7RzFfUkVHX1BQX0RJU1BMQVlfV0lEVEgsIDAsIDB4
ZmZmfSwKPiArCS5kaXNwbGF5X3dpZHRoID0ge0cxX1JFR19QUF9ESVNQTEFZX1dJRFRIX0lOX0VY
VCwgMCwgMHhmZmZ9LAo+ICsJLmlucHV0X3dpZHRoX2V4dCA9IHtHMV9SRUdfUFBfRElTUExBWV9X
SURUSF9JTl9FWFQsIDI2LCAweDd9LAo+ICsJLmlucHV0X2hlaWdodF9leHQgPSB7RzFfUkVHX1BQ
X0RJU1BMQVlfV0lEVEhfSU5fRVhULCAyOSwgMHg3fSwKPiDCoH07Cj4gwqAKPiDCoGJvb2wgaGFu
dHJvX25lZWRzX3Bvc3Rwcm9jKGNvbnN0IHN0cnVjdCBoYW50cm9fY3R4ICpjdHgsCj4gQEAgLTEw
Myw2ICsxMDUsOCBAQCBzdGF0aWMgdm9pZCBoYW50cm9fcG9zdHByb2NfZzFfZW5hYmxlKHN0cnVj
dCBoYW50cm9fY3R4ICpjdHgpCj4gwqAJSEFOVFJPX1BQX1JFR19XUklURSh2cHUsIG91dHB1dF9o
ZWlnaHQsIGN0eC0+ZHN0X2ZtdC5oZWlnaGF0KTsKPiDCoAlIQU5UUk9fUFBfUkVHX1dSSVRFKHZw
dSwgb3JpZ193aWR0aCwgTUJfV0lEVEgoY3R4LT5kc3RfZm10LndpZHRoKSk7Cj4gwqAJSEFOVFJP
X1BQX1JFR19XUklURSh2cHUsIGRpc3BsYXlfd2lkdGgsIGN0eC0+ZHN0X2ZtdC53aWR0aCk7Cj4g
KwlIQU5UUk9fUFBfUkVHX1dSSVRFKHZwdSwgaW5wdXRfd2lkdGhfZXh0LCBNQl9XSURUSChjdHgt
PmRzdF9mbXQud2lkdGgpID4+IDkpOwo+ICsJSEFOVFJPX1BQX1JFR19XUklURSh2cHUsIGlucHV0
X2hlaWdodF9leHQsIE1CX0hFSUdIVChjdHgtPmRzdF9mbXQuaGVpZ2h0ID4+IDgpKTsKPiDCoH0K
PiDCoAo+IMKgc3RhdGljIGludCBkb3duX3NjYWxlX2ZhY3RvcihzdHJ1Y3QgaGFudHJvX2N0eCAq
Y3R4KQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
