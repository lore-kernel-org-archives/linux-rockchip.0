Return-Path: <SRS0=P1+Z=B2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFF25C433DF
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Aug 2020 17:18:25 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 80E1020658
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Aug 2020 17:18:25 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="C+JBFw+t";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=tutanota.com header.i=@tutanota.com header.b="lKxB7YFk"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 80E1020658
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=tutanota.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:References:In-Reply-To:
	Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oyhvDWQINFh/xifCUb/4HgFvo6OTf6X96xFhdDW/R88=; b=C+JBFw+tzvDz1C9is0ETtdYPY
	Bajj1mCrrHefVf5tFmhmBZZB46mHjHERununA5DFoHY/fEqDSB1YcY3Co06eRlI7teNYSePEm1q/K
	4TGeSJZOWkAiYUaYS4J9fP6IxdYdWDijuuotykPFnYcbkEBk0Yb0sxysK+ujOmi6Ukg2k8WKJ7Ert
	uw569RCcrhj/sjkwRJEPswOYnaXFDMdCsgZ5U2zQUkbMlyayy8sHgxcOaoqYQxtf9g94NbbCLK1IY
	moF79NJ4MaLInLAdpWOFJg2jeT5FSU+AOmoaq1rSks7d7sNrILvSKPnP6KYS2jMBHOBMTbkS5jM2A
	/e87nOFGA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7MIV-0001CP-4z; Sun, 16 Aug 2020 17:18:19 +0000
Received: from w1.tutanota.de ([81.3.6.162])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7MIQ-0001BR-WE; Sun, 16 Aug 2020 17:18:15 +0000
Received: from w3.tutanota.de (unknown [192.168.1.164])
 by w1.tutanota.de (Postfix) with ESMTP id F3C85FA03D5;
 Sun, 16 Aug 2020 17:18:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1597598293; 
 s=s1; d=tutanota.com;
 h=From:From:To:To:Subject:Subject:Content-Description:Content-ID:Content-Type:Content-Type:Content-Transfer-Encoding:Content-Transfer-Encoding:Cc:Cc:Date:Date:In-Reply-To:In-Reply-To:MIME-Version:MIME-Version:Message-ID:Message-ID:Reply-To:References:References:Sender;
 bh=Ts7Ttd5K3DBpu12TNijg7qgS/999Myo7TYEvq9J4U2E=;
 b=lKxB7YFk88HcohnIG8pB+IC2u5Jbf1goGY0Q1k72Ux5fNXDB5pC10A3VDiN6ZsUS
 ajTFIlGBpo4Tm0O8EZHj6Js4e7mtkuzoVPgNW0k35olHyCBAD9hXqVKRAHQqe5BasdV
 vIg72LeKQfWAwhy+BlQY/S4Wzn9iEek2UWDPyKMmPyWVmmCS8ZxzGesmY523eyCcPaD
 c+i41ZHKiHeg6imBu9dPl87Y+/wgjvQoREvuaSs2yXmkrjALvyE77HnKZ2soMTIh6Hv
 5Y05A8Z06G1sYb0y7zM5dZtjsAwbk5WXdmUmsXDFP/fMdypcKJLPkXHtEddm2gjyV8A
 GQBHrjrl9Q==
Date: Sun, 16 Aug 2020 19:18:13 +0200 (CEST)
From: Cameron Nemo <cnemo@tutanota.com>
To: Devicetree <devicetree@vger.kernel.org>,
 Linux Arm Kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Rockchip <linux-rockchip@lists.infradead.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 Linux Usb <linux-usb@vger.kernel.org>
Message-ID: <MEsGppx--3-2@tutanota.com>
In-Reply-To: <MEsGWB_--3-2@tutanota.com>
References: <MEsGWB_--3-2@tutanota.com>
Subject: [PATCH 2/3] arm64: dts: rockchip: rk3328 usb3 controller node
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200816_131815_171034_5745A8CB 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Balbi <balbi@kernel.org>, Robh+dt <robh+dt@kernel.org>,
 Heiko <heiko@sntech.de>, Gregkh <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

UkszMzI4IFNvQ3MgaGF2ZSBvbmUgVVNCIDMuMCBPVEcgY29udHJvbGxlciB3aGljaCB1c2VzIERX
Q19VU0IzCmNvcmUncyBnZW5lcmFsIGFyY2hpdGVjdHVyZS4gSXQgY2FuIGFjdCBhcyBzdGF0aWMg
eEhDSSBob3N0CmNvbnRyb2xsZXIsIHN0YXRpYyBkZXZpY2UgY29udHJvbGxlciwgVVNCIDMuMC8y
LjAgT1RHIGJhc2luZwpvbiBJRCBvZiBVU0IzLjAgUEhZLgoKU2lnbmVkLW9mZi1ieTogV2lsbGlh
bSBXdSA8d2lsbGlhbS53dUByb2NrLWNoaXBzLmNvbT4KU2lnbmVkLW9mZi1ieTogSGVpa28gU3R1
ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KU2lnbmVkLW9mZi1ieTogQ2FtZXJvbiBOZW1vIDxjbmVt
b0B0dXRhbm90YS5jb20+Ci0tLQphcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMyOC5k
dHNpIHwgMjcgKysrKysrKysrKysrKysrKysrKysrKysrCjEgZmlsZSBjaGFuZ2VkLCAyNyBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
MjguZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LmR0c2kKaW5kZXgg
YmJkYjE5YTNlODVkLi4yN2U4NmJmMDZkM2UgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszMzI4LmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzMjguZHRzaQpAQCAtOTgzLDYgKzk4MywzMyBAQCB1c2JfaG9zdDBfb2hjaTogdXNiQGZm
NWQwMDAwIHsKc3RhdHVzID0gImRpc2FibGVkIjsKfTsKCisJdXNiZHJkMzogdXNiQGZmNjAwMDAw
IHsKKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzMjgtZHdjMyI7CisJCWNsb2NrcyA9IDwm
Y3J1IFNDTEtfVVNCM09UR19SRUY+LCA8JmNydSBTQ0xLX1VTQjNPVEdfU1VTUEVORD4sCisJCQkg
PCZjcnUgQUNMS19VU0IzT1RHPjsKKwkJY2xvY2stbmFtZXMgPSAicmVmX2NsayIsICJzdXNwZW5k
X2NsayIsCisJCQnCoMKgwqDCoMKgICJidXNfY2xrIjsKKwkJI2FkZHJlc3MtY2VsbHMgPSA8Mj47
CisJCSNzaXplLWNlbGxzID0gPDI+OworCQlyYW5nZXM7CisJCXN0YXR1cyA9ICJkaXNhYmxlZCI7
CisKKwkJdXNiZHJkX2R3YzM6IGR3YzNAZmY2MDAwMDAgeworCQkJY29tcGF0aWJsZSA9ICJzbnBz
LGR3YzMiOworCQkJcmVnID0gPDB4MCAweGZmNjAwMDAwIDB4MCAweDEwMDAwMD47CisJCQlpbnRl
cnJ1cHRzID0gPEdJQ19TUEkgNjcgSVJRX1RZUEVfTEVWRUxfSElHSD47CisJCQlkcl9tb2RlID0g
Im90ZyI7CisJCQlwaHlfdHlwZSA9ICJ1dG1pX3dpZGUiOworCQkJc25wcyxkaXNfZW5ibHNscG1f
cXVpcms7CisJCQlzbnBzLGRpcy11Mi1mcmVlY2xrLWV4aXN0cy1xdWlyazsKKwkJCXNucHMsZGlz
X3UyX3N1c3BoeV9xdWlyazsKKwkJCXNucHMsZGlzX3UzX3N1c3BoeV9xdWlyazsKKwkJCXNucHMs
ZGlzLWRlbC1waHktcG93ZXItY2hnLXF1aXJrOworCQkJc25wcyxkaXMtdHgtaXBnYXAtbGluZWNo
ZWNrLXF1aXJrOworCQkJc3RhdHVzID0gImRpc2FibGVkIjsKKwkJfTsKKwl9OworCmdpYzogaW50
ZXJydXB0LWNvbnRyb2xsZXJAZmY4MTEwMDAgewpjb21wYXRpYmxlID0gImFybSxnaWMtNDAwIjsK
I2ludGVycnVwdC1jZWxscyA9IDwzPjsKLS0KMi4yOC4wCgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
