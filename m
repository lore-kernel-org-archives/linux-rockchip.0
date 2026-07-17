Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7640CC44507
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jul 2026 08:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xiAcPtrX3iaV6jYJkG/abehodUo+VQy2CGFJa2atWgs=; b=cAWpATK+eN0erU
	+sCY7/1Q6ij6qAYBJ0bgC3rXIcA7HONJleY30Mj55LEq/fbKM7kpYiT5UaxBS8tfEVeZIst4Urvi4
	IYQ20ICac2+vpZ76hEwxlw2O36VTH2+F8tgbsP2QQgzvqz41uBWGG/bDBEbkxqkfSTiQv/OZ00daP
	JIm43yreCTBR8OUkXqTuDkWeESBiyldc12K7MLz0sSt0oSgat9w9FsjYYf9BzbSnMhENgayksiPca
	3Wig0+4dCvSavCLelmh3ZXJWvMK4+4NPj/PbQab/f8S7/1V2FE4llS0f4pIuRWVyqnbDvdIqAGO5I
	ig5u0qsLGa8w0qIkFfZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkeKD-00000001jKW-0EE9;
	Fri, 17 Jul 2026 08:53:41 +0000
Received: from flow-b8-smtp.messagingengine.com ([202.12.124.143])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkeK4-00000001jHX-3SFb;
	Fri, 17 Jul 2026 08:53:34 +0000
Received: from phl-compute-06.internal (phl-compute-06.internal [10.202.2.46])
	by mailflow.stl.internal (Postfix) with ESMTP id AD4BF13002C3;
	Fri, 17 Jul 2026 04:53:31 -0400 (EDT)
Received: from phl-frontend-03 ([10.202.2.162])
  by phl-compute-06.internal (MEProxy); Fri, 17 Jul 2026 04:53:32 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm1;
	 t=1784278411; x=1784282011; bh=0x9jBiJblCUlvn6m2+9uKBjaVBVp8SOY
	B0MqJMXPUZw=; b=jxGb+KhSHiNimmWMckEuBsaXcfGUD29/BEj6GvBTLPFzA4qQ
	BsHIe9N1BKRTp75eHy/g3i4RXq7nf5F774hp7giWVYgitnuZ77eaC0/dz+SC7rXE
	M3vFuIr2YdrDkod4lWEp/2JWAAyRcrZ9U8cAFYHr1HvfZ6R4DwwF6zG44t2T4ute
	3tCCRfE7HNPPzfPvQ1I6nKseT3+Efr+GBtzGOUADEAt6F4RRC+LlPgCPSYdOUM9z
	mdoq4DXa3hY+1111F9p+4vZHpgQH4ZKVmxikFpUfqkKdyjSctLpHrduyKmRRjlX1
	DbQkTTlJFrsX4zPMrTW3Iw3t/zhVudAmHWHJdw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1784278411; x=
	1784282011; bh=0x9jBiJblCUlvn6m2+9uKBjaVBVp8SOYB0MqJMXPUZw=; b=K
	KMD18PMb46CWoixpdw7k4Iv9BwN2XIdhMfPe/0SjAPvwm72L/LXG5F9ex9c3in8o
	spTYG1xcMfLbzr84Nk27vrA70fMzeSCazplQeW+9Wg8NGF0Sx4EHsFMfemLuf/LX
	5MkkPb6CCvt+//Dir80KJlpYNATBHGvaLdydRUbQC6UcR+cCp77TMkba3jOhEO7X
	8A5YWrjxXJFoGu6kaOuOMEfPzGxpPkPSSvxCvu941YZp3mq3L3jJ8Cjm0XYGFSyI
	+ZGVadMSoMO2UsMjbhtHgabYuwP9M74ynbOTWa2JxOF0Jte9bfeO6A2w2355WLVX
	fEiWZVIHJYoj7l5FHyqKg==
X-ME-Sender: <xms:i-1ZamkK7FuVugH-UvXUz2U2zwt6O6LdNRDXFhwwBAaJ0mPXvceAaw>
    <xme:i-1ZapsTqrfU4Msy8RqQHrLgc6naS_e224pg1EQoHYingPiXaySejqstZm6GjtD9D
    P6MQP8EzFZEI1l8hzen19ojuJB9eyuAJuh_V1fyM_PZXEYVZLDQb1g>
X-ME-Received: <xmr:i-1ZagKC_4aj3ji2mVytlB4NbsO9qelU992YNtBv9PRUIdTqawtfO4Bjh-WGj6-_sZQ0i6MHofecLr72mCQ>
X-ME-Proxy-Cause: dmFkZTFlqYOQDR3j98mEg55zUTBRGJoyYi0LNYqpxPFUij1eeuOTNhPKEq7aaRJQxFcRRK
    Qe+rnmyYP/2AYKqjSPt6DmVKl9pFcjlTfz975oGBl5Ayy790RMcDXxZVGd5MobgrZ5sJ5N
    ZppcnGayfzsQ4x7JcCuA8tWmlRxVvKCLDl4TR6oihVYV3SoUulACa/g1A4zhFAszisSGMj
    u4Ui6WKABbGiuHbVQbDt8uT4F124PFqAYsOpAjuFkew0bhukYMl5KvFireeUYxIc7I6Kwy
    6tBTZ10j5fYXecnDucl6C4ODV8HSIytp1MMpvREV+JeOyBx8/LnU+PdEGxWXC1sad6S4tp
    kz2+qaSG0vo/Y/IO4dbxJAJz0ivuedzjhuArWXS+hqjSlTD2f5RMATmXwWgla1J5heT7Uy
    ZKMiflWP1lEI8j4il1GCU3JYFAcfZvUKNZtaY6AIkebergvW6KdM34T3DGUPJZE2cPZpBq
    jxJ3TeXKWyxzsBRP9vPshTExHefxU9zn9UugseBV5lYrh2zlO9RBeXzEpmNyOY7rmwP/kY
    NUAyrToihkVAor87yw96DkTUf0wADe7s9tgC2gp0m8l4kr1Bb9Dy/z2eHDJUQz8rsk+loO
    RAzNIgmOUMXDRa4PJ3VJMmqCfPFDWVATf8nn82FdP9aR84ZO6QIsWjf+kYdQ
X-ME-Proxy: <xmx:i-1ZaugQ4_LerCerI7emyqtsm123aSG4LN7ojBCCJlQ431GlkZ9SKw>
    <xmx:i-1ZastbKq2wQo1o7Ll3Eq-N71bmYI_A0j8aapMvgp14IpKsUzLhzQ>
    <xmx:i-1ZaggOATM0mWxCRQDxqt2PskB6thZAZMdxwgf3QKDUNZviQlghZw>
    <xmx:i-1ZavdKOJPHrqL2svVpuFxczg6A2OsPyz8gs9c7QDNPOhF8xWzNCw>
    <xmx:i-1ZaqUL35lXA6EsHvcgIikB7EJ-LD3ZWFXLGi5msT6yqrj97xYxoy8z>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 17 Jul 2026 04:53:25 -0400 (EDT)
From: Jiaxing Hu <gahing@gahingwoo.com>
To: tomeu@tomeuvizoso.net,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joro@8bytes.org,
	will@kernel.org,
	robin.murphy@arm.com,
	ulfh@kernel.org,
	p.zabel@pengutronix.de,
	ogabbay@kernel.org
Cc: dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jiaxing Hu <gahing@gahingwoo.com>
Subject: [RFC PATCH 3/9] pmdomain/rockchip: cycle optional power-domain resets on power-on
Date: Fri, 17 Jul 2026 20:50:41 +1200
Message-ID: <20260717085220.3212274-4-gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260717085220.3212274-1-gahing@gahingwoo.com>
References: <20260717085220.3212274-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260717_015332_906894_9FEE1478 
X-CRM114-Status: GOOD (  12.12  )
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

U29tZSBwb3dlciBkb21haW5zIGNvbnRhaW4gaGFyZHdhcmUgYnVzIGludGVyZmFjZXMgdGhhdCBy
ZXF1aXJlIGFuCmV4cGxpY2l0IGFzc2VydC9kZWFzc2VydCBlZGdlIG9uIHRoZWlyIHJlc2V0IGxp
bmUgYWZ0ZXIgdGhlIGRvbWFpbgppcyBwb3dlcmVkIG9uLiAgVGhlIENSVSBwcmVzZXJ2ZXMgcmVz
ZXQgc3RhdGUgYWNyb3NzIHBvd2VyIGN5Y2xlcwooc3RheXMgZGVhc3NlcnRlZCksIHNvIHRoZSBo
YXJkd2FyZSBuZXZlciBzZWVzIHRoZSBlZGdlIGl0IG5lZWRzIHRvCmluaXRpYWxpemUgdW5sZXNz
IHRoZSBkcml2ZXIgcHVsc2VzIGl0IGV4cGxpY2l0bHkuCgpBZGQgYW4gb3B0aW9uYWwgcmVzZXRz
IHByb3BlcnR5IHRvIHJvY2tjaGlwX3BtX2RvbWFpbi4gIFdoZW4gcHJlc2VudCwKdGhlIHJlc2V0
cyBhcmUgYXNzZXJ0ZWQgYW5kIGRlYXNzZXJ0ZWQgKHdpdGggYSAxMCDCtXMgaG9sZCkgaW5zaWRl
CnJvY2tjaGlwX3BkX3Bvd2VyKCkgYWZ0ZXIgdGhlIGlkbGUgYml0cyBhcmUgY2xlYXJlZCBhbmQg
dGhlCmRlbGF5X3VzIHNldHRsaW5nIHRpbWUgaGFzIGVsYXBzZWQsIGJ1dCBiZWZvcmUgYW55IGRl
dmljZSBpbiB0aGUKZG9tYWluIHJlc3VtZXMuICBUaGlzIG9yZGVyaW5nIGd1YXJhbnRlZXMgdGhl
IGJ1cyBpcyBmdWxseQppbml0aWFsaXplZCBiZWZvcmUgYW55IGRldmljZSBkcml2ZXIgYWNjZXNz
ZXMgcmVnaXN0ZXJzLgoKU2lnbmVkLW9mZi1ieTogSmlheGluZyBIdSA8Z2FoaW5nQGdhaGluZ3dv
by5jb20+Ci0tLQogZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMgfCAxNyAr
KysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykKCmRpZmYg
LS1naXQgYS9kcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYyBiL2RyaXZlcnMv
cG1kb21haW4vcm9ja2NoaXAvcG0tZG9tYWlucy5jCmluZGV4IDE3ODdmNjJiYS4uN2E4OGE5MTQ5
IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYworKysg
Yi9kcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFpbnMuYwpAQCAtMTgsNiArMTgsNyBA
QAogI2luY2x1ZGUgPGxpbnV4L29mX2FkZHJlc3MuaD4KICNpbmNsdWRlIDxsaW51eC9vZl9jbGsu
aD4KICNpbmNsdWRlIDxsaW51eC9jbGsuaD4KKyNpbmNsdWRlIDxsaW51eC9yZXNldC5oPgogI2lu
Y2x1ZGUgPGxpbnV4L3JlZ21hcC5oPgogI2luY2x1ZGUgPGxpbnV4L3JlZ3VsYXRvci9jb25zdW1l
ci5oPgogI2luY2x1ZGUgPGxpbnV4L21mZC9zeXNjb24uaD4KQEAgLTEwMiw2ICsxMDMsNyBAQCBz
dHJ1Y3Qgcm9ja2NoaXBfcG1fZG9tYWluIHsKIAlzdHJ1Y3QgY2xrX2J1bGtfZGF0YSAqY2xrczsK
IAlzdHJ1Y3QgZGV2aWNlX25vZGUgKm5vZGU7CiAJc3RydWN0IHJlZ3VsYXRvciAqc3VwcGx5Owor
CXN0cnVjdCByZXNldF9jb250cm9sICpyZXNldHM7CiB9OwogCiBzdHJ1Y3Qgcm9ja2NoaXBfcG11
IHsKQEAgLTY3MSw2ICs2NzMsMTIgQEAgc3RhdGljIGludCByb2NrY2hpcF9wZF9wb3dlcihzdHJ1
Y3Qgcm9ja2NoaXBfcG1fZG9tYWluICpwZCwgYm9vbCBwb3dlcl9vbikKIAkJaWYgKHBkLT5pbmZv
LT5kZWxheV91cykKIAkJCXVkZWxheShwZC0+aW5mby0+ZGVsYXlfdXMpOwogCisJCWlmIChwZC0+
cmVzZXRzKSB7CisJCQlyZXNldF9jb250cm9sX2Fzc2VydChwZC0+cmVzZXRzKTsKKwkJCXVkZWxh
eSgxMCk7CisJCQlyZXNldF9jb250cm9sX2RlYXNzZXJ0KHBkLT5yZXNldHMpOworCQl9CisKIAkJ
cm9ja2NoaXBfcG11X3Jlc3RvcmVfcW9zKHBkKTsKIAl9CiAKQEAgLTg0MCw2ICs4NDgsMTQgQEAg
c3RhdGljIGludCByb2NrY2hpcF9wbV9hZGRfb25lX2RvbWFpbihzdHJ1Y3Qgcm9ja2NoaXBfcG11
ICpwbXUsCiAJaWYgKGVycm9yKQogCQlnb3RvIGVycl9wdXRfY2xvY2tzOwogCisJcGQtPnJlc2V0
cyA9IG9mX3Jlc2V0X2NvbnRyb2xfYXJyYXlfZ2V0X29wdGlvbmFsX2V4Y2x1c2l2ZShub2RlKTsK
KwlpZiAoSVNfRVJSKHBkLT5yZXNldHMpKSB7CisJCWVycm9yID0gUFRSX0VSUihwZC0+cmVzZXRz
KTsKKwkJZGV2X2VycihwbXUtPmRldiwgIiVwT0ZuOiBmYWlsZWQgdG8gZ2V0IHJlc2V0czogJWRc
biIsIG5vZGUsIGVycm9yKTsKKwkJcGQtPnJlc2V0cyA9IE5VTEw7CisJCWdvdG8gZXJyX3VucHJl
cGFyZV9jbG9ja3M7CisJfQorCiAJcGQtPm51bV9xb3MgPSBvZl9jb3VudF9waGFuZGxlX3dpdGhf
YXJncyhub2RlLCAicG1fcW9zIiwKIAkJCQkJCSBOVUxMKTsKIApAQCAtOTEwLDYgKzkyNiw3IEBA
IHN0YXRpYyBpbnQgcm9ja2NoaXBfcG1fYWRkX29uZV9kb21haW4oc3RydWN0IHJvY2tjaGlwX3Bt
dSAqcG11LAogCWNsa19idWxrX3VucHJlcGFyZShwZC0+bnVtX2Nsa3MsIHBkLT5jbGtzKTsKIGVy
cl9wdXRfY2xvY2tzOgogCWNsa19idWxrX3B1dChwZC0+bnVtX2Nsa3MsIHBkLT5jbGtzKTsKKwly
ZXNldF9jb250cm9sX3B1dChwZC0+cmVzZXRzKTsKIAlyZXR1cm4gZXJyb3I7CiB9CiAKLS0gCjIu
NDMuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
