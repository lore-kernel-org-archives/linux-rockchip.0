Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDB5AC43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 19:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IJtrk/UCY6OUJ6fcV/91ST29K2cncpUxHYcTYJLPnHE=; b=A5RBycFSApTiiLbhE5ycoJN/Ql
	PhwkBwvHWv8fOH3abEazWwrohPautErzqxgaQMZxyrQWGeZ4b14KQBCoKzscwN6yiflCkl3ilC1hh
	oyKZEgxz4QyVVYU7sVvG+TMhfYZIIgObsO7zqDr86I/Egd0RLzYwuXBJkPmNFJocYyPyCsGKXtNhU
	UlVJFqtDMbzHcO4Sqt7JulrXm1foo6wjnAerEd4o0y6kPI36aSPVq4xK+dqTdArVt0elYlBiVzARH
	er7rO5uSu7XRv4q8x0b8+rupx10QMiakJLbo5tylSq2z/jHI90GSJ+NB0tALb9q6On84TQw4mRnrO
	SIzlr3Gw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfMn4-00000005KXh-2A8z;
	Thu, 02 Jul 2026 19:09:38 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfMn2-00000005KWd-070s
	for linux-rockchip@lists.infradead.org;
	Thu, 02 Jul 2026 19:09:37 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-39b1026e171so23437551fa.1
        for <linux-rockchip@lists.infradead.org>; Thu, 02 Jul 2026 12:09:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1783019373; cv=none;
        d=google.com; s=arc-20260327;
        b=BWy6IlSERZjuhUIzJ9mhTS7yaoV9Nd/uyx9okkh/HySQMEzdnXCXD2EphhfqF5KI0/
         npw0AZMp2hZvKmyXKTLckTEUPBiVpv75t9pxTcYKd5sOy4wY3GgMapDsQ3UKWnE5+fQe
         ITPvqg/Yzw8H4vS34wmIEcrAix/F+ToKdBC2Jx1AG1ucRzVx3DHPNlMuVdjkXzrLVppC
         VFXqCmUZQK5DxoU2zT5EvkinX23qGJ9R9fDs0J9vkiyF4yHAytwFumeHiQ6Zm8y/+Bd8
         0Z+7c2P0ZrQs0ldYSWv2+ZEfGVjXGQsxnj4k1VCBkFU98PQmVydyMsv1ahS7KJ6HTnzC
         HoVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=EXZROqLJHNx8vqsyDj41zSg6OwYEat4w/wJCCIKwrog=;
        fh=0pnTGOGP5hVh9WQmzdEQUC6YbbaAQpLXFFwGFi02Glk=;
        b=KLc7/+Dkq6OeBYg6X5e5hHmwrBa5C8Jafvi+FBWnupgCDmM4lx6hXpnvjKHLDcUw1/
         63ukIneOI7BmrxzpMPyK+74C6pKFQukWKmE1oPRajM2I4fU4A3PTEHiqzu4CyWLzt1/t
         sK5cF1uOnzNutt91BfCaXilwMx6X8VMncswjGknIKZHXctrc4mpMYNsOQuUXEk+hlych
         vGqgPGxg4ofe4vlTEjwH0J1UjBkVeefI+jtDe6+EZ/FnRFDK3Hyl3ht+1Jt1zME86FEM
         zm+bAJBZORU6WmyaN/6bHaa9PS69/vqjBpL0Gvs4XFP0ucMI4nR51PsOBRaEADMXunlj
         Ar9g==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783019373; x=1783624173; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=EXZROqLJHNx8vqsyDj41zSg6OwYEat4w/wJCCIKwrog=;
        b=j/GV5dyqyx0w/GWf+KQJYYBfHvG4ur8c4/aFWB5X5DAknQHix8B2ppkoE8GEYto8OE
         ForNaKsGgGEFKH9maDUu+v4/5j8qa6CAFBH9Kvq2D1R3Yu97aezjHGBjrf9amm6Jjrgn
         Qmz6YtBbflEHuA0vjFHS7dvJoYhOanLRtpMj0+lcBYA6Po7uqYDOO1x9bKwg7+GgYJtT
         L5Ex3KKCWM3DGtQ8HIF5pqC++GaYtoVXlkqyuxCb20DuyBzWBtqQO5rJOVEkNMKbWks9
         Pd4IYoSHGYAXfQXNV/cMRAi7GWQ5QLjBCHLPAI/lJyzCJKseVidThh+sPV/mul0wAcks
         tZPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783019373; x=1783624173;
        h=content-type:cc:to:subject:message-id:date:from:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=EXZROqLJHNx8vqsyDj41zSg6OwYEat4w/wJCCIKwrog=;
        b=Ly5oUCU19xf2R9yhHy3oEc4qcpRNciW3N8uimwTWQNw5Eqrifn5tGxmUB9n0cGrO1R
         R7Eixu2pXsGVGDvWepk48ZUdRENHNyaP/oPh+lG9t9YmFqTXO3FxCUnoTumSHCuGXonK
         n31IdRWeBC4Ow0RY+acDQI40vwlhl8vpNeczC1mmsddPAal+fNLuHSkLIk3mYPOeU5F4
         OSbMnQ45xs8TpRGisW9TfVlirNp6053ZNiHmlIQhmjNlYTPl/sIcCVjU2chfOZZ/Ypfn
         Bc8Y430Ma/skWpyjPZqdmRLUKE+k6TTxZ+KUc8oZGMIgn2j9nuPvmwAtVe2QNOUAMVqe
         FUhA==
X-Forwarded-Encrypted: i=1; AHgh+RrsPUu8BwcHNOitinae5iGDbZsotc6M2l0jFWfcqnhQI50OzJ9R49z9Yz+NP0a5da5QI+Sc0nRJvUC7oductQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzC/9VmBPAiXfdLdgTvAAECyTnVx0AR4JpCkyIUxWQBS4WaOcjS
	4nzxbp4z8X4EP1v7VA8N3b4Rc9HIPGWQr5xOGXYYl0b8E91TKtL6UCDo+mv9LCaS9p0xXvqgiS5
	I1JTIhSJok0rUmXZrdeWtykANsCSrGsU=
X-Gm-Gg: AfdE7cklt/F3ui784iHMTLfJYstzWcjbf9knmjok2SzGLp7ZHrcL8IkvIm4d4BtFrd6
	p3i6iYZXi3CFtPHEkxZBl53s+K+wn8rrpJDcTWs8oIb2sF/ySvXPmYJTC05g2JQwrzygHwtVELv
	2qbJFxhHKCHd53iz6XG5blxhryYF6c9+72hH1GVZRmQVcnGS01UBBAtMCd0zeGH37PJiKqPsIai
	0Zlh3JGTFzcj8ZRB77w8W4OCTg0Cvn89mgCghor70yN54abfNG0c7YdozggFWfcWxcEPCx/WrFA
	7TcG4HUsUIjAjk+nv1rv8R943XWGd1OQB9dY74Rkp2yuhNNIMmIDyYef+L0f
X-Received: by 2002:a2e:be88:0:b0:399:9436:15c8 with SMTP id
 38308e7fff4ca-39b36e37e85mr16121011fa.2.1783019372768; Thu, 02 Jul 2026
 12:09:32 -0700 (PDT)
MIME-Version: 1.0
From: Brian Mayer <bleemayer@gmail.com>
Date: Thu, 2 Jul 2026 16:09:20 -0300
X-Gm-Features: AVVi8CdEvAr9zBugTIhbInCo1kaOhwZoytfXTRqItuxxgCr33NwvWgbLZiYlGvc
Message-ID: <CAB3eKoDcp=rVGDpvAHEeVLG3rHFw2E1XXxCe2QaApX0aLkyXyA@mail.gmail.com>
Subject: [PATCH] arm64: dts: rockchip: add HYM8563 RTC to Radxa CM5 IO board
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="00000000000057899e0655a58c94"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_120936_100776_49D347AE 
X-CRM114-Status: GOOD (  14.97  )
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
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--00000000000057899e0655a58c94
Content-Type: text/plain; charset="UTF-8"

Hi kernel team.

I was testing building the kernel for my radxa cm5+io shield, and it turns
out there is no rtc in the DTS, so I got it from the radxa files.
This is my first email to you, please help me correct it if something is
off the standards.

The commit attached does the trick. I used AI to assist me in this in
case you're
wondering.

Best, Brian

--00000000000057899e0655a58c94
Content-Type: application/octet-stream; 
	name="0001-arm64-dts-rockchip-add-HYM8563-RTC-to-Radxa-CM5-IO-b.patch"
Content-Disposition: attachment; 
	filename="0001-arm64-dts-rockchip-add-HYM8563-RTC-to-Radxa-CM5-IO-b.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_mr3voroy0>
X-Attachment-Id: f_mr3voroy0

RnJvbSA4ODQxOTgxMDIxYjVmOTg1MjJhZDQ0ZmU0MGUxMWQwYzBlNzU2NTM0IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBCcmlhbiBNYXllciA8YmxlZW1heWVyQGdtYWlsLmNvbT4KRGF0
ZTogVGh1LCAyIEp1bCAyMDI2IDE0OjUxOjUxIC0wMzAwClN1YmplY3Q6IFtQQVRDSF0gYXJtNjQ6
IGR0czogcm9ja2NoaXA6IGFkZCBIWU04NTYzIFJUQyB0byBSYWR4YSBDTTUgSU8gYm9hcmQKClRo
ZSBSYWR4YSBDTTUgSU8gY2FycmllciBoYXMgYSBIYW95dSBIWU04NTYzIHJlYWwtdGltZSBjbG9j
ayBvbiBJMkM2IGF0CmFkZHJlc3MgMHg1MSwgd2l0aCBpdHMgaW50ZXJydXB0IGxpbmUgb24gR1BJ
TzBfQjAgYW5kIGEgQ1IxMjIwIGJhY2t1cApiYXR0ZXJ5IGhvbGRlci4gV2l0aG91dCBhIGRldmlj
ZSB0cmVlIG5vZGUsIG5vIC9kZXYvcnRjKiBhcHBlYXJzIGV2ZW4Kd2hlbiBDT05GSUdfUlRDX0RS
Vl9IWU04NTYzIGlzIGVuYWJsZWQuCgpEZXNjcmliZSB0aGUgUlRDLCB3aXJlIHRoZSBpbnRlcnJ1
cHQgcGluIHdpdGggYSBwdWxsLXVwLCBtYXJrIGl0IGFzIGEKd2FrZXVwIHNvdXJjZSwgYW5kIHBv
aW50IHRoZSBydGMwIGFsaWFzIGF0IGl0IHNvIFJUQ19IQ1RPU1lTL1NZU1RPSEMgdXNlCnRoZSBl
eHRlcm5hbCBjbG9jay4gV2lyaW5nIG1hdGNoZXMgUmFkeGEncyBkb3duc3RyZWFtIGJvYXJkIHN1
cHBvcnQuCgpTaWduZWQtb2ZmLWJ5OiBCcmlhbiBNYXllciA8YmxlZW1heWVyQGdtYWlsLmNvbT4K
VGVzdGVkLWJ5OiBCcmlhbiBNYXllciA8YmxlZW1heWVyQGdtYWlsLmNvbT4KLS0tCiAuLi4vZHRz
L3JvY2tjaGlwL3JrMzU4OHMtcmFkeGEtY201LWlvLmR0cyAgICAgfCAxOSArKysrKysrKysrKysr
KysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1yYWR4YS1jbTUtaW8uZHRzIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJhZHhhLWNtNS1pby5kdHMKaW5kZXgg
YWY0YTliYzAxLi4xYTJjNzI4MzEgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4cy1yYWR4YS1jbTUtaW8uZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4cy1yYWR4YS1jbTUtaW8uZHRzCkBAIC0xOSw2ICsxOSw3IEBAIC8gewog
CWFsaWFzZXMgewogCQlldGhlcm5ldDAgPSAmZ21hYzE7CiAJCW1tYzEgPSAmc2RtbWM7CisJCXJ0
YzAgPSAmaHltODU2MzsKIAl9OwogCiAJY2hvc2VuIHsKQEAgLTE5OCw2ICsxOTksMTggQEAgdXNi
YzBfZHBfYWx0bW9kZV9tdXg6IGVuZHBvaW50IHsKIAkJCX07CiAJCX07CiAJfTsKKworCWh5bTg1
NjM6IHJ0Y0A1MSB7CisJCWNvbXBhdGlibGUgPSAiaGFveXUsaHltODU2MyI7CisJCXJlZyA9IDww
eDUxPjsKKwkJI2Nsb2NrLWNlbGxzID0gPDA+OworCQljbG9jay1vdXRwdXQtbmFtZXMgPSAiaHlt
ODU2MyI7CisJCWludGVycnVwdC1wYXJlbnQgPSA8JmdwaW8wPjsKKwkJaW50ZXJydXB0cyA9IDxS
S19QQjAgSVJRX1RZUEVfTEVWRUxfTE9XPjsKKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsK
KwkJcGluY3RybC0wID0gPCZydGNfaW50PjsKKwkJd2FrZXVwLXNvdXJjZTsKKwl9OwogfTsKIAog
JmkyczVfOGNoIHsKQEAgLTIyMSw2ICsyMzQsMTIgQEAgdXNiYzBfaW50OiB1c2JjMC1pbnQgewog
CQl9OwogCX07CiAKKwloeW04NTYzIHsKKwkJcnRjX2ludDogcnRjLWludCB7CisJCQlyb2NrY2hp
cCxwaW5zID0gPDAgUktfUEIwIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX3VwPjsKKwkJfTsKKwl9
OworCiAJaGRtaSB7CiAJCWhkbWkwX3R4X29uX2g6IGhkbWkwLXR4LW9uLWggewogCQkJcm9ja2No
aXAscGlucyA9IDw0IFJLX1BCNiBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF9ub25lPjsKCmJhc2Ut
Y29tbWl0OiA4NzMyMGJlOWYwZDI0ZmNlNjc2MzFiN2VlZjkxOWYwYjc5YzNlNDVjCi0tIAoyLjU0
LjAKCg==
--00000000000057899e0655a58c94
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--00000000000057899e0655a58c94--

