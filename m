Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2AB33C02181
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jan 2025 13:52:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zdN5DTEMfotphSmF6WlvHHvcu0eLrSPr2iDOFZDFwzs=; b=thHtvdBHhesrg4
	mlLgKYSjsnLNmFdxH7MOyVcF0nmZRWOuDqGLIo2IH8xi+gEMo0P6bHmjykuiTslVhPiRMrEdZ0LjO
	WXawYYvEqFziufW8qFrfmNsTCLiSQuhooYciTXU33rXooce4TsymsWfSyFA11j/xnQY2CWC7lvnI1
	EwpDBUBs8YTSb2rPZMU2FMi5DKZTkbFrM7B1rO2q3UVfY45magjEbB0F+eDmJgSO4j929Z1AS9t7o
	RP8yQ5ZVrI+n5VqGuIm809Kmsmd2GTSDjzFtl8gDCgl8B2nB5//PO00IsCixvMGssgXOT3NGi74BP
	kKjCR8EldZeKhRtnzfdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZsCf-00000005iIB-3uNY;
	Mon, 20 Jan 2025 13:52:33 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZsCd-00000005iGb-0rhm
	for linux-rockchip@lists.infradead.org;
	Mon, 20 Jan 2025 13:52:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1737381149;
	bh=5Td+YxxxuV+xbfq0ImDCCVLnUVvWM9MDAy5tsXq0CtQ=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=U2VOSQ/OaJhBNek0Qp3/V6keabtO5z13XATTH09F0U31Fy4g0V076TX6tq1gFnvMF
	 wpUzHS5XegZr3CuVo4pdcntfzIArKwzM2lMU88KteyJrxKXNwXt6PthkECBMKUqdSX
	 IXpgfN0iSlOv4cZk9XMX+p1nOxvG1zYjmiUsm5zyzKc+pAH7mwMcoFqH3ikWMqg2Ow
	 IQEW3tyQBWs+PKAm05yCqoDXyh5ZBzh0SN+/ZYcUzlitpGSNw6YT85n92lxYc3hyKd
	 Y0/FMxC4fyWllga5g5o2OywixZIjFeh/qWj3YlSbcCRF+nxXCvfHw+BhOVDizExm0D
	 D5dKMG7cIqsOg==
Received: from nicolas-tpx395.localdomain (unknown [IPv6:2606:6d00:11:e976::7a9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 3510B17E0CD5;
	Mon, 20 Jan 2025 14:52:28 +0100 (CET)
Message-ID: <809cbfa09953bd3031a58c91d8c978ea2d7ff276.camel@collabora.com>
Subject: Re: [PATCH] media: verisilicon: VP9: Fix typo
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	p.zabel@pengutronix.de, mchehab@kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Date: Mon, 20 Jan 2025 08:52:26 -0500
In-Reply-To: <20250120081342.66853-1-benjamin.gaignard@collabora.com>
References: <20250120081342.66853-1-benjamin.gaignard@collabora.com>
Organization: Collabora
User-Agent: Evolution 3.54.2 (3.54.2-1.fc41) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250120_055231_397284_78CC9308 
X-CRM114-Status: GOOD (  11.11  )
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

VGhhbmtzLAoKTGUgbHVuZGkgMjAgamFudmllciAyMDI1IMOgIDA5OjEzICswMTAwLCBCZW5qYW1p
biBHYWlnbmFyZCBhIMOpY3JpdMKgOgo+IENoYW5nZSBoZWFkcmVzX3NpemUgdG8gaGVhZGVyc19z
aXplLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWln
bmFyZEBjb2xsYWJvcmEuY29tPgoKUmV2aWV3ZWQtYnk6IE5pY29sYXMgRHVmcmVzbmUgPG5pY29s
YXMuZHVmcmVzbmVAY29sbGFib3JhLmNvbT4KCj4gLS0tCj4gIGRyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vdmVyaXNpbGljb24vaGFudHJvX2cyX3ZwOV9kZWMuYyB8IDggKysrKy0tLS0KPiAgMSBmaWxl
IGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZzJfdnA5X2RlYy5j
IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZzJfdnA5X2RlYy5j
Cj4gaW5kZXggMzQyZTU0M2RlZTRjLi44MmE0NzhhYzY0NWUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZzJfdnA5X2RlYy5jCj4gKysrIGIv
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fZzJfdnA5X2RlYy5jCj4g
QEAgLTc3NiwxNSArNzc2LDE1IEBAIGNvbmZpZ19zb3VyY2Uoc3RydWN0IGhhbnRyb19jdHggKmN0
eCwgY29uc3Qgc3RydWN0IHY0bDJfY3RybF92cDlfZnJhbWUgKmRlY19wYXJhCj4gIAkgICAgICBz
dHJ1Y3QgdmIyX3Y0bDJfYnVmZmVyICp2YjJfc3JjKQo+ICB7Cj4gIAlkbWFfYWRkcl90IHN0cmVh
bV9iYXNlLCB0bXBfYWRkcjsKPiAtCXVuc2lnbmVkIGludCBoZWFkcmVzX3NpemU7Cj4gKwl1bnNp
Z25lZCBpbnQgaGVhZGVyc19zaXplOwo+ICAJdTMyIHNyY19sZW4sIHN0YXJ0X2JpdCwgc3JjX2J1
Zl9sZW47Cj4gIAo+IC0JaGVhZHJlc19zaXplID0gZGVjX3BhcmFtcy0+dW5jb21wcmVzc2VkX2hl
YWRlcl9zaXplCj4gKwloZWFkZXJzX3NpemUgPSBkZWNfcGFyYW1zLT51bmNvbXByZXNzZWRfaGVh
ZGVyX3NpemUKPiAgCQkgICAgICsgZGVjX3BhcmFtcy0+Y29tcHJlc3NlZF9oZWFkZXJfc2l6ZTsK
PiAgCj4gIAlzdHJlYW1fYmFzZSA9IHZiMl9kbWFfY29udGlnX3BsYW5lX2RtYV9hZGRyKCZ2YjJf
c3JjLT52YjJfYnVmLCAwKTsKPiAgCj4gLQl0bXBfYWRkciA9IHN0cmVhbV9iYXNlICsgaGVhZHJl
c19zaXplOwo+ICsJdG1wX2FkZHIgPSBzdHJlYW1fYmFzZSArIGhlYWRlcnNfc2l6ZTsKPiAgCWlm
IChjdHgtPmRldi0+dmFyaWFudC0+bGVnYWN5X3JlZ3MpCj4gIAkJaGFudHJvX3dyaXRlX2FkZHIo
Y3R4LT5kZXYsIEcyX1NUUkVBTV9BRERSLCAodG1wX2FkZHIgJiB+MHhmKSk7Cj4gIAllbHNlCj4g
QEAgLTc5NCw3ICs3OTQsNyBAQCBjb25maWdfc291cmNlKHN0cnVjdCBoYW50cm9fY3R4ICpjdHgs
IGNvbnN0IHN0cnVjdCB2NGwyX2N0cmxfdnA5X2ZyYW1lICpkZWNfcGFyYQo+ICAJaGFudHJvX3Jl
Z193cml0ZShjdHgtPmRldiwgJmcyX3N0YXJ0X2JpdCwgc3RhcnRfYml0KTsKPiAgCj4gIAlzcmNf
bGVuID0gdmIyX2dldF9wbGFuZV9wYXlsb2FkKCZ2YjJfc3JjLT52YjJfYnVmLCAwKTsKPiAtCXNy
Y19sZW4gKz0gc3RhcnRfYml0IC8gOCAtIGhlYWRyZXNfc2l6ZTsKPiArCXNyY19sZW4gKz0gc3Rh
cnRfYml0IC8gOCAtIGhlYWRlcnNfc2l6ZTsKPiAgCWhhbnRyb19yZWdfd3JpdGUoY3R4LT5kZXYs
ICZnMl9zdHJlYW1fbGVuLCBzcmNfbGVuKTsKPiAgCj4gIAlpZiAoIWN0eC0+ZGV2LT52YXJpYW50
LT5sZWdhY3lfcmVncykgewoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
