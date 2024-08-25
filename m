Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72ABDC5321E
	for <linux-rockchip@archiver.kernel.org>; Sun, 25 Aug 2024 10:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kdzm2nq00kgPJf3kFBapxVMiFT/8VzUSxkvY48SqE7o=; b=aL1Hw8nYpwtzBk
	LTEZ0j0Dneh1Rf3sb5J8Y3VRTnekUPEziFltnVF2Mj48fISzilM2eqcBSJxeyilRTgZN/OTfPziVS
	D6d6j6+zrywzMR/1FJ+DSqL57izCT6b94+2RpAjb7muvEcIvN7toAifE5prHzl5soJcsxZe5RUdIc
	JJqDVwCnOXj6l57vAU1nS+we3444fyJSc9z/V3+PLWfRE1egmD8Zi0Gkjz30HeRNMkwQSY0Pp+YUh
	WGnSJR9FI6TE48qBy4+HPxORDDmcOZqkjv7D3B17TkY3SPuvA+Ey+bsP2aMwiNstviST11t2yQ2lC
	H6706w4DZx5fRpsgvCHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siAOS-000000047hP-2bAN;
	Sun, 25 Aug 2024 10:22:44 +0000
Received: from mail-oa1-x2a.google.com ([2001:4860:4864:20::2a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siAOP-000000047gf-1dXZ;
	Sun, 25 Aug 2024 10:22:43 +0000
Received: by mail-oa1-x2a.google.com with SMTP id 586e51a60fabf-27018df4ff3so2723416fac.1;
        Sun, 25 Aug 2024 03:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724581360; x=1725186160; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xFBoAdzAN3yBqf+GK7J1XKjWpe6qNxfX0bKoVml6nKo=;
        b=jjqRnlRHBsJRX6tYpt/JXJGCrMp0JrImRB5L+SzqCkmq56XSuhD2cZX6myjXP5JKxx
         hggjJ0yl81CRmEMYD71Qdk0a2NQ3eJaFlhhXRjRV2pwxah88AhLTjvol1Y23s8dfSRPG
         p4cGfoXQzAnokdAtsHzfO5+1MzBvQhPWr2ccmFWRh0yhdYQjmNFLCthdPR6JXwO5ZJxf
         qeDqwLFw7NXPIrZNUfm60StwSouUjEXz+MmvsOxW8oYp49xTcYPK4MwJSfdUMCERJ1RJ
         M+LrsXDVP62hBR0nujmj7NQ3Qou9XGC5JE8pjgucXkiiSizm0qQUKEoj3DkHjL+Jk9lB
         cTjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724581360; x=1725186160;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xFBoAdzAN3yBqf+GK7J1XKjWpe6qNxfX0bKoVml6nKo=;
        b=pchiihCunKaYe5ZVM04CNkSjpoIIDC55EKWTJRlhRnqn7/2aboXTYyt2vm0uOXTBMS
         nJ6xOuDl8LxR6stu6tY2xRi62qz9duT3jLhBGZa25pSFEWaA6Bw55AdDzDD+GupNLhqD
         RR6VSbmd+4RCoygaAPgINC/DxBgTKNWZhqkCIg8QnvxXjxtzM3IZB15b+/bh7jd6VMJ0
         pK50RTgsGJRyir6i5jHz9NF40praZDvIhRTNDtOxixewIKyF8wbAUq80rfQMm85WeLNT
         qgRY/7TXKmLepe0CbdW/E9YcUOaCnZxy7u5O/2sYFtY7ppxgijNJ0N+dcrcYKyHjGwf4
         NP6g==
X-Forwarded-Encrypted: i=1; AJvYcCUUuyj4fI0m05IajSIlaBs+UdIyob9E8o010EmZxdbn5JK/FIUX0m8rpjiFojw9x0ocm3B2Obnefmm0uW0KTQtw@lists.infradead.org, AJvYcCWejxlXcEreqX+39pTdhfVcPRUUuk1ANnfmnA7LREex0sh18/IsJ86Rc2SdDul4jJt/6SzH6BE22coXCnO/bpI=@lists.infradead.org
X-Gm-Message-State: AOJu0YzDCrpWoCeYudtHhD7aZvMFa2uOnqyGWY4oac70K9WNQrHgDbXT
	vw0H590v1mIcgKzWrxH2bhnn9FrqUh8XGj/sr4D952zCr5SoRaANDeX8QkwYTsmJFf/P8cgulF2
	5LceaeMDLznQzwyPLH/7kUSVc+zI=
X-Google-Smtp-Source: AGHT+IHLf90Z9f5GN0f+ZDX8mz4fks5k0C5pfdRV90Hz9zjCMGLJ14J1Wd79hdIDhVMah0PrWr11KlGv6vwDTxvWyFo=
X-Received: by 2002:a05:6870:b01e:b0:270:184b:ccf1 with SMTP id
 586e51a60fabf-273e667e99emr8218458fac.34.1724581359748; Sun, 25 Aug 2024
 03:22:39 -0700 (PDT)
MIME-Version: 1.0
References: <20240625104039.48311-1-linux.amoon@gmail.com> <20240625104039.48311-2-linux.amoon@gmail.com>
 <20240815162004.GF2562@thinkpad> <CANAwSgR-k1x1cBbLZ-OErSiEDcnkqs9uiBy77BEd2tz-CGC3OQ@mail.gmail.com>
 <20240821070533.wztutnvlpghzso6v@thinkpad>
In-Reply-To: <20240821070533.wztutnvlpghzso6v@thinkpad>
From: Anand Moon <linux.amoon@gmail.com>
Date: Sun, 25 Aug 2024 15:52:25 +0530
Message-ID: <CANAwSgQiXW3BTxpgLbL__nMQSt90cRbHR849_TqiesfpagiKVQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] PCI: rockchip: Simplify reset control handling by
 using reset_control_bulk*() function
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-pci@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240825_032241_454678_2FE274BA 
X-CRM114-Status: GOOD (  25.57  )
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

SGkgTWFuaXZhbm5hbgoKT24gV2VkLCAyMSBBdWcgMjAyNCBhdCAxMjozNSwgTWFuaXZhbm5hbiBT
YWRoYXNpdmFtCjxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBP
biBTYXQsIEF1ZyAxNywgMjAyNCBhdCAwNjo1Mjo0N1BNICswNTMwLCBBbmFuZCBNb29uIHdyb3Rl
Ogo+ID4gSGkgTWFuaXZhbm5hbiwKPiA+Cj4gPiBPbiBUaHUsIDE1IEF1ZyAyMDI0IGF0IDIxOjUw
LCBNYW5pdmFubmFuIFNhZGhhc2l2YW0KPiA+IDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJv
Lm9yZz4gd3JvdGU6Cj4gPiA+ClRyaW0gdGhlIG1lc3NhZ2UuCj4gPiA+ID4KPiA+ID4gPiBAQCAt
MjU5LDMxICsxODQsMTUgQEAgaW50IHJvY2tjaGlwX3BjaWVfaW5pdF9wb3J0KHN0cnVjdCByb2Nr
Y2hpcF9wY2llICpyb2NrY2hpcCkKPiA+ID4gPiAgICAgICAgKiBQbGVhc2UgZG9uJ3QgcmVvcmRl
ciB0aGUgZGVhc3NlcnQgc2VxdWVuY2Ugb2YgdGhlIGZvbGxvd2luZwo+ID4gPiA+ICAgICAgICAq
IGZvdXIgcmVzZXQgcGlucy4KPiA+ID4gPiAgICAgICAgKi8KPiA+ID4KPiA+ID4gVGhlIGNvbW1l
bnQgYWJvdmUgc2F5cyB0aGF0IHRoZSByZXNldHMgc2hvdWxkIG5vdCBiZSByZW9yZGVyZWQuIEJ1
dCB5b3UgaGF2ZQo+ID4gPiByZW9yZGVyZWQgdGhlIHJlc2V0cy4KPiA+ID4KPiA+IEFzIHBlciB0
aGUgVFJNIFsxXSwgQ1JVX1NPRlRSU1RfQ09OOCAgY2xvY2sgcmVzZXQgdW5pdCBoYXMgdHdvIGdy
b3Vwcwo+ID4gb25lIHdpdGggcmVzZXQgdmFsdWUgMHgxIGFuZCB0aGUgb3RoZXIgMHgwLCBzbyB0
aGlzIHBhdGNoIGdyb3VwcyB0aGVtCj4gPiBhY2NvcmRpbmdseS4KPiA+Cj4gPiBbMV0gaHR0cHM6
Ly9vcGVuc291cmNlLnJvY2stY2hpcHMuY29tL2ltYWdlcy9lL2VlL1JvY2tjaGlwX1JLMzM5OVRS
TV9WMS40X1BhcnQxLTIwMTcwNDA4LnBkZgo+ID4KPiA+IElmIEkgb25seSB1c2UgcmVzZXRfY29u
dHJvbF9idWxrX2Fzc2VydCBhbmQKPiA+IHJlc2V0X2NvbnRyb2xfYnVsa19kZWFzc2VydCBmb3Ig
YWxsIHRoZSByZXNldAo+ID4gSSBnZXQgdGhlIGJlbG93IHJlc2V0IHdhcm5pbmcuCj4gPgo+Cj4g
SSB0aGluayB5b3UgbWlzdW5kZXJzdG9vZCB3aGF0IEkgYXNrZWQgZm9yLiBUaGUgY29tbWVudCBz
YXlzIHRoYXQgdGhlIDQgcmVzZXRzCj4gKG1nbXQtc3RpY2t5LCBjb3JlLCBtZ210LCBwaXBlKSBz
aG91bGQgbm90IGJlIHJlb3JkZXJlZC4gSW4geW91ciBuZXcgZ3JvdXAKPiByb2NrY2hpcF9wY2lf
Y29yZV9yc3RzKCksIHlvdSBoYXZlIHJlb3JkZXJlZCB0aGVtLiBJIHdhcyBqdXN0IGFza2luZyB5
b3UgdG8ga2VlcAo+IHRoZSA0IHJlc2V0cyBzb3J0ZWQgYXMgcGVyIHRoZSBjb21tZW50Lgo+Ck9r
LCBJIHVuZGVyc3Rvb2QgdGhhbmtzLgoKQWN0dWFsbHkgYXMgcGVyIFRSTSBbMV0KMTcuNS4yLjIu
MiBTeXN0ZW0gUmVzZXQKVGhlIFBDSWUgaGFzIHRoZSBmb2xsb3dpbmcgZGlzdGluY3QgcmVzZXQs
IGFsbCBvZiB0aGVzZSBhcmUKY29uZmlndXJhYmxlIHRocm91Z2ggc29mdHdhcmUKZHJpdmVyLiBU
aGlzIHNlY3Rpb24gZGVzY3JpYmVzIHRoZSBmdW5jdGlvbiBvZiBlYWNoIG9mIHRoZSByZXNldApp
bnB1dHMgYW5kIHRoZSByZWNvbW1lbmRlZApzZXF1ZW5jZXMgaW4gd2hpY2ggdGhlc2Ugc2hvdWxk
IGJlIGFjdGl2YXRlZC4gQWxsIGluIGFsbCwgYWZ0ZXIgcG93ZXIKdXAsIHRoZSBzb2Z0d2FyZSBk
cml2ZXIKc2hvdWxkIGRlLWFzc2VydCB0aGUgcmVzZXQgb2YgUENJZSBQSFksIHRoZW4gd2FpdCB0
aGUgUExMIGxvY2tlZCBieQpwb2xsaW5nIHRoZSBzdGF0dXMsIGlmIFBMTApoYXMgbG9ja2VkLCB0
aGVuIGNhbiBkZS1hc3NlcnQgdGhlIHJlc3QgcmVzZXQgc2ltdWx0YW5lb3VzbHkuCgpbMV0gaHR0
cHM6Ly93d3cucm9ja2NoaXAuZnIvUm9ja2NoaXAlMjBSSzMzOTklMjBUUk0lMjBWMS4zJTIwUGFy
dDIucGRmCgpTbyBJIHdhcyB0cnlpbmcgdG8gbW92ZSBhbGwgdGhlIHJlc2V0IHRvIHRoZSBjb21t
b24gZnVuY3Rpb24gZm9yIHRoZSBhc3NldAphbmQgdGhlbiBjYWxsIHRoZSBkZS1hc3NlcnQgb25j
ZSB0aGUgcGh5IGNvbWVzIHVwCml0IGlzIG5vdCB3b3JraW5nIGF0IHRoaXMgbW9tZW50LgoKClsg
ICAgNy4wODQ2OThdIHJvY2tjaGlwLXBjaWUgZjgwMDAwMDAucGNpZTogbm8gdnBjaWUxMnYgcmVn
dWxhdG9yIGZvdW5kClsgICAgNy4yODEzOTJdIE5FVDogUmVnaXN0ZXJlZCBQRl9BTEcgcHJvdG9j
b2wgZmFtaWx5ClsgICAgNy4zNzI5NzJdIDgwMjFxOiA4MDIuMVEgVkxBTiBTdXBwb3J0IHYxLjgK
WyAgICA3LjgzMDg2MF0gcm9ja2NoaXAtcGNpZSBmODAwMDAwMC5wY2llOiBQQ0llIGxpbmsgdHJh
aW5pbmcgZ2VuMSB0aW1lb3V0IQpbICAgIDcuODMxNTI4XSByb2NrY2hpcC1wY2llIGY4MDAwMDAw
LnBjaWU6IHByb2JlIHdpdGggZHJpdmVyCnJvY2tjaGlwLXBjaWUgZmFpbGVkIHdpdGggZXJyb3Ig
LTExMAoKTWVhbndoaWxlLCBJIGZvdW5kIFBDSWUgR1JGIGZyb20gdGhlIFRSTSBQYXJ0IDEgaXMg
bWlzc2luZyBmb3IgdGhpcyBzbywgSQogd2lsbCBhZGQgdGhpcyB0byB0aGlzIHNlcmllcyBpbiB0
aGUgbmV4dCB2ZXJzaW9uLCBsZXQgc2VlIGlmIHRoZXJlIGlzCmltcHJvdmVtZW50CgojZGVmaW5l
IEdSRl9TT0NfQ09OXzVfUENJRSAgICAgMHgwZTIxNAojZGVmaW5lIEdSRl9TT0NfQ09OXzlfUENJ
RSAgICAgMHgwZTIyNAoKPiAtIE1hbmkKPgo+IC0tCj4g4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p
4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKVGhhbmtzCi1BbmFuZAoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
