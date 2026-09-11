Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7AFDC88E4C
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Sep 2026 10:50:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z+X2mK5nJ1StTb7BVb7vQZz89GVP4qRPLktUerp9Kd0=; b=g62QD1NAKPIPYT
	HFhFt3F26MUPIKwvKN1XceM95IgCGzkWN0Xuk1s36NklvxnP7GFULUj85TesyBzI7mNJG6Ly97xiW
	yfV0nMOYrUpA7LSsd/Um4OzKactqvnPEhFp9BtG6T5aRwa1KK6y3cpgmLuODFCPukjcqSpoy7t3J1
	/qxZYEdMZ4VPc+xcFMoKBTcG+OcFPlRpualPiKOiX3VogWacnul0OF1dooN85Y2iIbD9XllMivmCn
	Qj+1N0SDXuaLcrd1L5cuesGPAYgHWb5gIBlCGUeWY+PKFPna16vDoxkjW/Xit93G5syIzsyfulmPi
	qir7hS+nYJUzhkAevpeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4ypk-0000000GQcv-2WQ4;
	Fri, 11 Sep 2026 10:50:16 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4yph-0000000GQb6-2jgZ
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Sep 2026 10:50:14 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49cd6185db7so4539805e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 11 Sep 2026 03:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789123811; x=1789728611; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=W07kJ3p6qzFM1kDya7o2HF3cIvPn0BxyCJFGBFTKDFg=;
        b=Iu/yNqt3YnVzwwIx0cr2LUEUYgSIJ8NYBbwHLIflveC6FX1cDRHE4sT9fSqGMKFdCQ
         NX0v7gtLHJIU1ixtRDhsZ9Zm93+0znxlyIPXE0fwQkJ53fGRUO+723alkmfZlEwutZLv
         CjtYVER5RkOytbYCnMTmye3sVMpdqyjrEg4jiHJhJignjiBcoytkYZVSMys3sZQznYVd
         4hjamI7zy3NZ1mp2Pra7hWT/pEhwMuSzvGR47/Vnt+REi2OEFAH/t3vHxhdE4ZkTtC5m
         urjRzDvDRKsSaBQLgUxKmi4TzE4tL9uhbC0LX4VAgR/uk8c6Aoi4DamsOTQLIPJGBt+K
         Smhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789123811; x=1789728611;
        h=content-transfer-encoding:content-type:mime-version:message-id:date
         :subject:cc:to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=W07kJ3p6qzFM1kDya7o2HF3cIvPn0BxyCJFGBFTKDFg=;
        b=ofQjGw7g3ymgckUnHtWg23cdOAG36VtoFpow7imDwZ3JkmGPi0p0zv6+66l896j63G
         JHLNkDTcy4wkHGrqK1WaIuG2Z0JqqHZkRjX2blFoRxnmIAtrhKC3MpAYwSmycvBwnnve
         D90AdAu8GcCbRSdAEIkIUmC/2jybDTOEyXsTTApSkqxjCRX+hPfhFVnC6BxDevD10qiW
         BL3pZ7+gpHBDtY2eAjcAh5rCfeAnQVV9W7cxuphs2IQCCmCkcbb8yWUJPMw2QKi8lKh2
         4liOoNJFQUBEbGgi8it6OH3KpRCcVCdIwuubrqjZuTl8dMkwKI+F18e8OIpZX6ts4n8e
         tB0w==
X-Forwarded-Encrypted: i=1; AKwUvByLA9ysmCntXlp0qBrN0UxMFgmQqeIbIECJrTe4jRPro9ps1xo3uYlTtv1kCsyZJHHq1wNeBs0xx8hgU4Fg4Q==@lists.infradead.org
X-Gm-Message-State: AFuF++kRmNHgbT5ttPncZcKGRjqeD8Hnt4sjCDe31AIMw12iicRbi+YB
	Ar4/0dlzRUC3lgFFhsZiu5HE4jg9ITPev34CwON46kxh4SHIDifBH3yr
X-Gm-Gg: AYBFou3hTmhXFSDeYmDdv8521a7gZQ/WuQbfGf4SXwaBF22XVEXjUd5a1LQYouKoJTy
	eJi8xZJ2YCTEhsn+aWf9Mf+71OFGe77Ev9k1ebbKeEppufIo3mmepncZ3uW8cW48S+Jqfm/YtbN
	ra8eH8zi46Z/KTwR2roxHGrCsNCJmgFKlQRQdZRnlgaRVSdxGVtm56qrfYU5DNtPnto8Yb4AKv9
	/0/a/AnEWPW314lDjY09SvU0PdBUiD7y3A3CcAFWV8yNvP9NyDHdXx4+REx8HPSnER0apx1VQCI
	NcydqMF/IYx1zV56n+1k7SXzhQ7gTqwfRX8OrziILdtswFcazOfu/8/VQPSZ8qiLvqf5TRr1Zzp
	1ZTMH821D1sjDTgJT3Aci1QiFpmFktNuo4+pLF/IFNn8bAZeK6SZiN3uQ1OMWiK8s/MakQUeWqQ
	yKPqycl2vF6FAs51lW2XQ1CCoQRj/IiYYkRXAzAR0ohTMyHKt6Z0bGbS+IZh/1qteIMjqhZ2gBB
	XICCfQzwwo1M59MPNstu+aj9wEdLWGvKpxd8d+S/NP0OeguNck3tVfxMEG8fVTs
X-Received: by 2002:a05:600c:4ece:b0:49c:f13e:e4c with SMTP id 5b1f17b1804b1-49e610829b5mr43022575e9.9.1789123811015;
        Fri, 11 Sep 2026 03:50:11 -0700 (PDT)
Received: from tachyon.internal ([194.220.152.228])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49e668aca6csm13863965e9.7.2026.09.11.03.50.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 03:50:10 -0700 (PDT)
From: =?UTF-8?q?Enrique=20Hern=C3=A1ndez=20Bello?= <ehbello@gmail.com>
To: shawn.lin@rock-chips.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	bhelgaas@google.com
Cc: robh@kernel.org,
	heiko@sntech.de,
	dlemoal@kernel.org,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org,
	=?UTF-8?q?Enrique=20Hern=C3=A1ndez=20Bello?= <ehbello@gmail.com>
Subject: [PATCH] PCI: rockchip: Skip the Tpvperl wait when power is already valid
Date: Fri, 11 Sep 2026 11:49:52 +0100
Message-ID: <20260911104952.4190994-1-ehbello@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_035013_710975_79922353 
X-CRM114-Status: GOOD (  18.94  )
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

U2luY2UgY29tbWl0IGM0N2Y5MGJlNGM4OSAoIlBDSTogcm9ja2NoaXAtaG9zdDogRml4CnJvY2tj
aGlwX3BjaWVfaG9zdF9pbml0X3BvcnQoKSBQRVJTVCMgaGFuZGxpbmciKSwgYSBKTWljcm9uIEpN
QjU4NQpiZWhpbmQgYW4gcmszMzk5IHJvb3QgcG9ydCBhbG1vc3QgbmV2ZXIgYmVjb21lcyB1c2Fi
bGU6IHRoZSBsaW5rIHRyYWlucwpub3JtYWxseSwgYnV0IHRoZSBlbmRwb2ludCdzIGNvbmZpZ3Vy
YXRpb24gc3BhY2UgbmV2ZXIgYW5zd2Vycywgc28gdGhlCmRldmljZSBpcyBub3QgZW51bWVyYXRl
ZC4gT24gdGhpcyBjb250cm9sbGVyIGEgY29uZmlndXJhdGlvbiByZWFkIHRoYXQKZ2V0cyBubyB1
c2FibGUgY29tcGxldGlvbiBpcyByZXBvcnRlZCBhcyBhbiBleHRlcm5hbCBhYm9ydCByYXRoZXIg
dGhhbgphcyBhbiBhbGwtb25lcyByZXNwb25zZSwgd2hpY2ggb24gYXJtNjQgYnJpbmdzIHRoZSBt
YWNoaW5lIGRvd24uCgpUaGUgY2hhbmdlIGFkZGVkIGFuIHVuY29uZGl0aW9uYWwgMTAwIG1zIHNs
ZWVwIHNvIHRoYXQgUEVSU1QjIHN0YXlzCmFzc2VydGVkIGZvciBhdCBsZWFzdCBUcHZwZXJsIGFm
dGVyIHBvd2VyIGJlY29tZXMgdmFsaWQuIFRoZSB3YWl0IGlzCnBlcmZvcm1lZCB3aGlsZSBQRVJT
VCMgaXMgYXNzZXJ0ZWQsIHNvIGl0IGFsc28gZXh0ZW5kcyB0aGUgcmVzZXQgYnkKMTAwIG1zLCBh
bmQgdGhpcyBlbmRwb2ludCBkb2VzIG5vdCB0b2xlcmF0ZSB0aGUgbG9uZ2VyIGFzc2VydGlvbi4K
ClRwdnBlcmwgaXMgY291bnRlZCBmcm9tIHRoZSBzdXBwbGllcyBiZWNvbWluZyB2YWxpZCAoUENJ
ZSBDRU0gcjUuMSwKc2VjIDIuOS4yKS4gT24gYm9hcmRzIHdob3NlIFBDSWUgc3VwcGxpZXMgYXJl
IGFsd2F5cy1vbiAtLSB2Y2MzdjNfcGNpZQpvbiBST0NLIFBpIDQgaXMgcmVndWxhdG9yLWFsd2F5
cy1vbiBhbmQgcmVndWxhdG9yLWJvb3Qtb24gLS0gcG93ZXIgaGFzCmJlZW4gdmFsaWQgc2luY2Ug
Ym9vdCwgc2Vjb25kcyBiZWZvcmUgdGhlIGRyaXZlciBwcm9iZXMsIHNvIHRoZQpyZXF1aXJlbWVu
dCBpcyBhbHJlYWR5IG1ldCBhbmQgdGhlIHNsZWVwIG9ubHkgbGVuZ3RoZW5zIHRoZSByZXNldC4K
ClJlY29yZCB3aGV0aGVyIHRoZSBzdXBwbGllcyB3ZXJlIGFscmVhZHkgZW5hYmxlZCBiZWZvcmUg
dGhlIGRyaXZlcgplbmFibGVkIHRoZW0sIGFuZCBza2lwIHRoZSB3YWl0IGluIHRoYXQgY2FzZS4g
QSBzdXBwbHkgdGhhdCBpcyBhbHJlYWR5Cm9uIGF0IHByb2JlIHdhcyBicm91Z2h0IHVwIGVpdGhl
ciBieSB0aGUgYm9vdGxvYWRlciBvciBieSB0aGUgcmVndWxhdG9yCmNvcmUgYXQgYm9vdCwgYm90
aCBvZiB3aGljaCBwcmVjZWRlIGEgUENJZSBwcm9iZSBieSBmYXIgbW9yZSB0aGFuClRwdnBlcmwu
IFdoZW4gdGhlIGRyaXZlciByZWFsbHkgZG9lcyBicmluZyB0aGUgcmFpbHMgdXAsIG9yIG9uIHJl
c3VtZQp3aGVyZSB2cGNpZTB2OSBoYXMganVzdCBiZWVuIHJlLWVuYWJsZWQsIHRoZSBmdWxsIHdh
aXQgc3RpbGwgaGFwcGVucywKYXMgaXQgZG9lcyBpZiByZWd1bGF0b3JfaXNfZW5hYmxlZCgpIGNh
bm5vdCB0ZWxsLgoKTWVhc3VyZWQgb24gYSBST0NLIFBpIDRDIHdpdGggYSBSYWR4YSBQZW50YSBT
QVRBIEhBVCAoSk1CNTg1KSBieQpib290aW5nIHJlcGVhdGVkbHkgYW5kIGNvdW50aW5nIGhvdyBv
ZnRlbiB0aGUgZW5kcG9pbnQgZW51bWVyYXRlZDoKCiAgdW5tb2RpZmllZCAuLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4gIDAgb3V0IG9mIDg0IGJvb3RzCiAgd2l0aCB0aGlzIHBh
dGNoIC4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4gIDMgb3V0IG9mIDMgYm9vdHMKICBv
dGhlciB3YXlzIG9mIGRyb3BwaW5nIHRoZSBzYW1lIHdhaXQgLi4uLi4uLi4uLiAgMTYgb3V0IG9m
IDE2IGJvb3RzCgpGaXNoZXIncyBleGFjdCB0ZXN0LCBwb29saW5nIHRoZSBsYXN0IHR3byByb3dz
IGFnYWluc3QgdGhlIGZpcnN0LCBnaXZlcwpwID0gNC4xZS0yMS4gV2l0aCB0aGUgcGF0Y2ggdGhl
IGVuZHBvaW50IGVudW1lcmF0ZWQgb24gZXZlcnkgYm9vdCBhbmQgYWxsCmZvdXIgZGlza3MgYmVo
aW5kIGl0IGNhbWUgdXAuCgpFYWNoIG9mIHRoZSB0aHJlZSBQRVJTVCMtcmVsYXRlZCBjaGFuZ2Vz
IHRoYXQgbGFuZGVkIHRvZ2V0aGVyIGluCnY2LjExLXJjMSB3YXMgYWxzbyByZXZlcnRlZCBpbmRp
dmlkdWFsbHk7IG9ubHkgcmVtb3ZpbmcgdGhpcyB3YWl0IG1hZGUKYW55IGRpZmZlcmVuY2UuIE1v
dmluZyB0aGUgd2FpdCB0byBiZWZvcmUgbGluayB0cmFpbmluZyBpcyBlbmFibGVkLApyYXRoZXIg
dGhhbiByZW1vdmluZyBpdCwgZGlkIG5vdCBoZWxwICgwIG91dCBvZiAxNSBib290cyksIHdoaWNo
IGlzCndoYXQgaWRlbnRpZmllZCB0aGUgbGVuZ3RoIG9mIHRoZSBQRVJTVCMgYXNzZXJ0aW9uIHJh
dGhlciB0aGFuIGFueQppbnRlcmFjdGlvbiB3aXRoIGxpbmsgdHJhaW5pbmcgYXMgdGhlIGNhdXNl
LgoKVGhlIG1lYXN1cmVtZW50cyB3ZXJlIHRha2VuIG9uIDYuMTgsIGJ1dCB0aGUgY29kZSBpbiBx
dWVzdGlvbiBpcwp1bmNoYW5nZWQgYmV0d2VlbiB2Ni4xMSBhbmQgdjcuMi4KCkZpeGVzOiBjNDdm
OTBiZTRjODkgKCJQQ0k6IHJvY2tjaGlwLWhvc3Q6IEZpeCByb2NrY2hpcF9wY2llX2hvc3RfaW5p
dF9wb3J0KCkgUEVSU1QjIGhhbmRsaW5nIikKQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcKU2ln
bmVkLW9mZi1ieTogRW5yaXF1ZSBIZXJuw6FuZGV6IEJlbGxvIDxlaGJlbGxvQGdtYWlsLmNvbT4K
LS0tCi0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oCisrKyBiL2Ry
aXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oCkBAIC0zMTgsNiArMzE4LDcgQEAK
IAlzdHJ1Y3QJcmVndWxhdG9yICp2cGNpZTF2ODsgLyogMS44ViBwb3dlciBzdXBwbHkgKi8KIAlz
dHJ1Y3QJcmVndWxhdG9yICp2cGNpZTB2OTsgLyogMC45ViBwb3dlciBzdXBwbHkgKi8KIAlzdHJ1
Y3QJZ3Bpb19kZXNjICpwZXJzdF9ncGlvOworCWJvb2wJc3VwcGxpZXNfcHJlX2VuYWJsZWQ7CiAJ
dTMyCWxhbmVzOwogCXU4ICAgICAgbGFuZXNfbWFwOwogCWludAlsaW5rX2dlbjsKLS0tIGEvZHJp
dmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLWhvc3QuYworKysgYi9kcml2ZXJzL3Bj
aS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jCkBAIC0zMTQsNyArMzE0LDkgQEAKIAly
b2NrY2hpcF9wY2llX3dyaXRlKHJvY2tjaGlwLCBQQ0lFX0NMSUVOVF9MSU5LX1RSQUlOX0VOQUJM
RSwKIAkJCSAgICBQQ0lFX0NMSUVOVF9DT05GSUcpOwogCi0JbXNsZWVwKFBDSUVfVF9QVlBFUkxf
TVMpOworCWlmICghcm9ja2NoaXAtPnN1cHBsaWVzX3ByZV9lbmFibGVkKQorCQltc2xlZXAoUENJ
RV9UX1BWUEVSTF9NUyk7CisKIAlncGlvZF9zZXRfdmFsdWVfY2Fuc2xlZXAocm9ja2NoaXAtPnBl
cnN0X2dwaW8sIDEpOwogCiAJbXNsZWVwKFBDSUVfUkVTRVRfQ09ORklHX1dBSVRfTVMpOwpAQCAt
NjE0LDYgKzYxNiwyMyBAQAogCXN0cnVjdCBkZXZpY2UgKmRldiA9IHJvY2tjaGlwLT5kZXY7CiAJ
aW50IGVycjsKIAorCS8qCisJICogVHB2cGVybCBpcyBjb3VudGVkIGZyb20gdGhlIHN1cHBsaWVz
IGJlY29taW5nIHZhbGlkLCBhbmQgdGhlIHdhaXQKKwkgKiBmb3IgaXQgaGFwcGVucyB3aXRoIFBF
UlNUIyBhc3NlcnRlZCwgc28gaXQgYWxzbyBsZW5ndGhlbnMgdGhlIHJlc2V0LgorCSAqIEEgc3Vw
cGx5IHRoYXQgaXMgYWxyZWFkeSBlbmFibGVkIGJlZm9yZSB0aGlzIGRyaXZlciBlbmFibGVzIGl0
IHdhcworCSAqIGJyb3VnaHQgdXAgZWl0aGVyIGJ5IHRoZSBib290bG9hZGVyIG9yIGJ5IHRoZSBy
ZWd1bGF0b3IgY29yZSBhdCBib290LAorCSAqIGJvdGggb2Ygd2hpY2ggcHJlY2VkZSB0aGlzIHBy
b2JlIGJ5IGZhciBtb3JlIHRoYW4gVHB2cGVybCwgc28gdGhlCisJICogcmVxdWlyZW1lbnQgaXMg
YWxyZWFkeSBtZXQgYW5kIHRoZSB3YWl0IGNhbiBiZSBza2lwcGVkLiBUcmVhdCBhbgorCSAqIGVy
cm9yIGZyb20gcmVndWxhdG9yX2lzX2VuYWJsZWQoKSBhcyAibm90IGtub3duIHRvIGJlIG9uIiBh
bmQgd2FpdC4KKwkgKi8KKwlyb2NrY2hpcC0+c3VwcGxpZXNfcHJlX2VuYWJsZWQgPQorCQkoSVNf
RVJSKHJvY2tjaGlwLT52cGNpZTEydikgfHwKKwkJIHJlZ3VsYXRvcl9pc19lbmFibGVkKHJvY2tj
aGlwLT52cGNpZTEydikgPiAwKSAmJgorCQkoSVNfRVJSKHJvY2tjaGlwLT52cGNpZTN2MykgfHwK
KwkJIHJlZ3VsYXRvcl9pc19lbmFibGVkKHJvY2tjaGlwLT52cGNpZTN2MykgPiAwKSAmJgorCQly
ZWd1bGF0b3JfaXNfZW5hYmxlZChyb2NrY2hpcC0+dnBjaWUxdjgpID4gMCAmJgorCQlyZWd1bGF0
b3JfaXNfZW5hYmxlZChyb2NrY2hpcC0+dnBjaWUwdjkpID4gMDsKKwogCWlmICghSVNfRVJSKHJv
Y2tjaGlwLT52cGNpZTEydikpIHsKIAkJZXJyID0gcmVndWxhdG9yX2VuYWJsZShyb2NrY2hpcC0+
dnBjaWUxMnYpOwogCQlpZiAoZXJyKSB7CkBAIC04OTAsNiArOTA5LDkgQEAKIAlzdHJ1Y3Qgcm9j
a2NoaXBfcGNpZSAqcm9ja2NoaXAgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKIAlpbnQgZXJyOwog
CisJLyogVGhlIDAuOVYgc3VwcGx5IHdhcyB0dXJuZWQgb2ZmIG9uIHN1c3BlbmQsIHNvIFRwdnBl
cmwgYXBwbGllcy4gKi8KKwlyb2NrY2hpcC0+c3VwcGxpZXNfcHJlX2VuYWJsZWQgPSBmYWxzZTsK
KwogCWVyciA9IHJlZ3VsYXRvcl9lbmFibGUocm9ja2NoaXAtPnZwY2llMHY5KTsKIAlpZiAoZXJy
KSB7CiAJCWRldl9lcnIoZGV2LCAiZmFpbCB0byBlbmFibGUgdnBjaWUwdjkgcmVndWxhdG9yXG4i
KTsKLS0gCjIuNDMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
