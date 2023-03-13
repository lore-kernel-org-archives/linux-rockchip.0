Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18CBFC61DA4
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Mar 2023 18:13:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sihEZnB/ObLC9YdmceCdzIT3tbe/5FYUspS9c2ncmfY=; b=BL1DSG3fOH7Pwg
	gseP0iBeHKbyrzAlKl8FSNcZN039Eq3mVyWS/y0GnVRGQuDyZFyZDpcheGuuqG479NkdTUCWrDUdB
	Ht1uJW36Ce6h9KsqsnkuG1wLgs+IykDdKb/b3DnCvjt2Yj3twMD30WtN2FwjUULXQhWQObSV3TTzK
	Tq052r4srAx14rta09Jqp5JUo2bADGKfPxv15SZQPfawueh6UUfo49WzUsdYwRNdO9IBZjbbtS6DI
	twjnq/G96NTfrmarPA6chhrUPuU/DLK80p8u0l8kjvMkF59XSdDqPqjDzbSrFbIv2yabooLGl3tKM
	bvbLqGsZmZ+dwvb07Oow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbmfK-007FuG-5J; Mon, 13 Mar 2023 18:12:58 +0000
Received: from mail-oa1-x33.google.com ([2001:4860:4864:20::33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbmfH-007FsZ-Ez
	for linux-rockchip@lists.infradead.org; Mon, 13 Mar 2023 18:12:56 +0000
Received: by mail-oa1-x33.google.com with SMTP id 586e51a60fabf-177ca271cb8so2103823fac.2
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Mar 2023 11:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678731173;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WGtf6SIwprkjjvb6epaITev79WRWoV5Y4O2K1yfDb1g=;
        b=qMqZVk3pLC3xbzWkPm4wfcJhhQHPdRhZi/P062twH/OW5f2XPAj4jkyFv381Zi/SVS
         srkmVayQYr959ujuB0Qvu2D7/iE43qCy9kLlWpiZvguS9Wt7Eb2bJm2Q1jDOjmZC1DkJ
         31SaMVh56/QZmRqdJuv+ebT2K64l5MH0OMxnrY4XGWi5k9ee/js33P0G13YYGqgb51zJ
         miLeh4cMguKjBWs5goeTReFPfLnHBWqJyVjPFOLUQe3Oqeku3OAvtvYI0CY0etC724Gv
         IpGDkMnzYSM/z+Twv6lgJhHIm2BzWl9weHJNOomYKl+CBCCPbtHf3qlV2XS4pJv0bQuq
         bSyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678731173;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WGtf6SIwprkjjvb6epaITev79WRWoV5Y4O2K1yfDb1g=;
        b=E13IxQZn1RvRlF+uiHheY0SQavLyDeeoeE/xscDMtEEIxQJKEWmV1DGmBW6/HcOLMv
         iwb+tBf7Gaswyr42BzAzbkKFFrNbwROPSif6xmiNv+tIiG/sHA5pjMjQT2IBrGzAYl/j
         5HGzF8hnAETQYjKeO2wB6vN38dxsxVrls4/SiY06+RkiN/G/6e4QwwlGOqxqQ96jtQYm
         BokgRna1VWxzNi3qsxlcYZ8Kxn2d8UE4WszYs6VTfDYEzEfP8MYW5yTc3/n5XNMnbSaO
         HLdDRWpUs+1LQJCpcqLZ6SWx2UFrdhbEx44cgfHxwJgj3sT0BGT/CJqjtmTTD2lcCtLB
         avug==
X-Gm-Message-State: AO0yUKVpg8nOrddzLSqmpMiEAffGM0VR0ce8s2O56uOACh7REBUaBGiv
	R/MlLdSNPGcbmTSTpFqpOJW1I/hh/yIHq8UjKIs=
X-Google-Smtp-Source: AK7set/m+WIBlxqTBPAs2AyFRkV53zHJpk20UMpb6nDf28b6xYjPLegqpDGBwah+5gYtE/nCTO+FsRO9TFQoxsfBd6o=
X-Received: by 2002:a05:6870:d20d:b0:172:39d6:edc7 with SMTP id
 g13-20020a056870d20d00b0017239d6edc7mr5178902oac.4.1678731173552; Mon, 13 Mar
 2023 11:12:53 -0700 (PDT)
MIME-Version: 1.0
References: <20230228152205.133582-1-macroalpha82@gmail.com>
 <20230228152205.133582-3-macroalpha82@gmail.com> <CADcbR4+Onb6RM7grPrqRL8Rth0mbFXykRmPq8R1QxYRGaHQHtA@mail.gmail.com>
In-Reply-To: <CADcbR4+Onb6RM7grPrqRL8Rth0mbFXykRmPq8R1QxYRGaHQHtA@mail.gmail.com>
From: Chris Morgan <macroalpha82@gmail.com>
Date: Mon, 13 Mar 2023 13:12:42 -0500
Message-ID: <CADcbR4L6b9D1FJx9u1jFvZ6jhixNs3_Ky+Mu0rHwtXZ6ATO-Eg@mail.gmail.com>
Subject: Re: [PATCH 2/3 V4] Bluetooth: hci_h5: btrtl: Add support for RTL8821CS
To: linux-bluetooth@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	alistair@alistair23.me, anarsoul@gmail.com, luiz.dentz@gmail.com, 
	johan.hedberg@gmail.com, marcel@holtmann.org, heiko@sntech.de, 
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, 
	Chris Morgan <macromorgan@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_111255_531568_6FED6597 
X-CRM114-Status: GOOD (  22.60  )
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

SSBmb3VuZCB0aGUgZml4LCBzaW1wbHkgcHV0IGNoYW5naW5nIHRoZSBjb21wYXRpYmxlIGZyb20K
cmVhbHRlayxydGw4ODIyY3MtYnQgdG8gcmVhbHRlayxydGw4NzMyYnMtYnQgZml4ZXMgaXQgKGJl
Y2F1c2UgaXQgc2V0cwp0aGUgIkg1X0lORk9fV0FLRVVQX0RJU0FCTEUiIGZsYWcpLiBJcyBpdCB0
b28gbGF0ZSBmb3IgYSBWNSwgb3Igc2hvdWxkCkkgc3VibWl0IHRoaXMgYXMgYSBmaXggdG8gdGhl
IGRldmljZXRyZWUgYW5kIGRldmljZXRyZWUgZG9jdW1lbnRhdGlvbj8KClRoYW5rIHlvdS4KCk9u
IEZyaSwgTWFyIDEwLCAyMDIzIGF0IDEwOjI14oCvQU0gQ2hyaXMgTW9yZ2FuIDxtYWNyb2FscGhh
ODJAZ21haWwuY29tPiB3cm90ZToKPgo+IEkgc2h1ZGRlciB0byBicmluZyB0aGlzIHVwIG5vdywg
YnV0IEknbSBlbmNvdW50ZXJpbmcgYSBuZXcgYnVnIGFuZAo+IG1pZ2h0IGhhdmUgdG8gd2l0aGRy
YXcgdGhpcy4KPgo+IEknbSByZWNlaXZpbmcgZXJyb3JzIGluIGRtZXNnIG9mIHRoZSBmb2xsb3dp
bmcsIGFuZCBJIGNhbid0IHNlZW0gdG8KPiBmaWd1cmUgb3V0IHRoZSByb290IGNhdXNlOgo+IEJs
dWV0b290aDogaGNpMDogT3V0LW9mLW9yZGVyIHBhY2tldCBhcnJpdmVkCj4KPiBBbnkgdGhvdWdo
dHMgb24gd2hhdCBtaWdodCBjYXVzZSBpdD8KPiBUaGFuayB5b3UuCj4KPiBPbiBUdWUsIEZlYiAy
OCwgMjAyMyBhdCA5OjIy4oCvQU0gQ2hyaXMgTW9yZ2FuIDxtYWNyb2FscGhhODJAZ21haWwuY29t
PiB3cm90ZToKPiA+Cj4gPiBGcm9tOiBDaHJpcyBNb3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwu
Y29tPgo+ID4KPiA+IFJUTDg4MjFDUyBpcyBhIFdpRmkgKyBCbHVldG9vdGggY29tYm8gY2hpcCBm
cm9tIFJlYWx0ZWsgdGhhdCBwcm92aWRlcwo+ID4gV2lGaSBBL0IvRy9OL0FDIG92ZXIgYW4gU0RJ
TyBpbnRlcmZhY2UgYW5kIEJsdWV0b290aCA0LjIgb3ZlciBhIFVBUlQKPiA+IGludGVyZmFjZS4K
PiA+Cj4gPiBOb3RlIHRoYXQgdGhlIGZpcm13YXJlIHRoaXMgd2FzIHRlc3RlZCB3aXRoIHdhcyBm
aXJtd2FyZSB2ZXJzaW9uCj4gPiAweDc1YjhmMDk4Lgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IENo
cmlzIE1vcmdhbiA8bWFjcm9tb3JnYW5AaG90bWFpbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJz
L2JsdWV0b290aC9idHJ0bC5jIHwgOCArKysrKysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA4IGlu
c2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ibHVldG9vdGgvYnRydGwu
YyBiL2RyaXZlcnMvYmx1ZXRvb3RoL2J0cnRsLmMKPiA+IGluZGV4IDY5YzNmZTY0OWNhNy4uNzI5
NDdkMzE5ZmE2IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ibHVldG9vdGgvYnRydGwuYwo+ID4g
KysrIGIvZHJpdmVycy9ibHVldG9vdGgvYnRydGwuYwo+ID4gQEAgLTEyOCw2ICsxMjgsMTQgQEAg
c3RhdGljIGNvbnN0IHN0cnVjdCBpZF90YWJsZSBpY19pZF90YWJsZVtdID0gewo+ID4gICAgICAg
ICAgIC5md19uYW1lICA9ICJydGxfYnQvcnRsODgyMWNfZncuYmluIiwKPiA+ICAgICAgICAgICAu
Y2ZnX25hbWUgPSAicnRsX2J0L3J0bDg4MjFjX2NvbmZpZyIgfSwKPiA+Cj4gPiArICAgICAgIC8q
IDg4MjFDUyAqLwo+ID4gKyAgICAgICB7IElDX0lORk8oUlRMX1JPTV9MTVBfODgyMUEsIDB4Yywg
MHg4LCBIQ0lfVUFSVCksCj4gPiArICAgICAgICAgLmNvbmZpZ19uZWVkZWQgPSB0cnVlLAo+ID4g
KyAgICAgICAgIC5oYXNfcm9tX3ZlcnNpb24gPSB0cnVlLAo+ID4gKyAgICAgICAgIC5oYXNfbXNm
dF9leHQgPSB0cnVlLAo+ID4gKyAgICAgICAgIC5md19uYW1lICA9ICJydGxfYnQvcnRsODgyMWNz
X2Z3LmJpbiIsCj4gPiArICAgICAgICAgLmNmZ19uYW1lID0gInJ0bF9idC9ydGw4ODIxY3NfY29u
ZmlnIiB9LAo+ID4gKwo+ID4gICAgICAgICAvKiA4NzYxQSAqLwo+ID4gICAgICAgICB7IElDX0lO
Rk8oUlRMX1JPTV9MTVBfODc2MUEsIDB4YSwgMHg2LCBIQ0lfVVNCKSwKPiA+ICAgICAgICAgICAu
Y29uZmlnX25lZWRlZCA9IGZhbHNlLAo+ID4gLS0KPiA+IDIuMzQuMQo+ID4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
