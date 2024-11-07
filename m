Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E733DD43370
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Nov 2024 15:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gBXTbPD6geuUhVGh7pOVR1dMARaFgs5kVyJNHUjocTk=; b=HL6c1NAzTda6e6
	UGhI5bGia78IQGaCYARCTVSaqhoQNcYXUV3hZgxLJSBGqFRDaCz7AVPbvVlfgAHXye4SOCpsAW1Zq
	my05DkhPLsBUHGn7AklYspUuVA4HEVu3xofiRU6fsyYxM+2IVCeYiI3Dm+5zFCwWu6Bem9eXxCPTM
	te+XjFs3Xzll7rfPoslJGHNKiCve8XYKKwTxTPhEydxbwDBoa+nRobM0IWPjgZCleVSt5as7fxJ2d
	p4swtUk4ZKR9vKGUrNA1mu6PdBvEJ13V1KUdwoPQQ7Kq7lvCjYJ7cVevC27iJe+qQRSREX8f3MDl8
	TeC3y2GtWBJz5oopAGkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t94nG-00000007Ugn-3nAY;
	Thu, 07 Nov 2024 15:51:34 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t94nE-00000007UgE-1740
	for linux-rockchip@lists.infradead.org;
	Thu, 07 Nov 2024 15:51:33 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-4319399a411so10041515e9.2
        for <linux-rockchip@lists.infradead.org>; Thu, 07 Nov 2024 07:51:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730994691; x=1731599491; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BR0AsIIvsAZoNbnhltKsghMop/uYVJqzbFLsrpgQQDQ=;
        b=yvJYxNbIZNsG6p7xPSnBQ2SUF3zZX1Y5Wjk96v0gfTFnzX2nbgWRypMD/7MthEBg8T
         LYKhutS5N1Bpqn3i3mLXmbSFjW6AaAljCvgBBDZQ87km6QfOTGs9LfXjmN36e18Ab3Uy
         FkxcGadQl+aWqSYqEBk2M092u70pZgSlQebMyxqR+RrKtZyutvnJ+6nbA+jv3GCNDjgd
         Q2t4dEeRFx83PQpbiB53roF2bfE/68BTueQOVLDRcoYGaAGnDIxy5O1wtfB8CCAah9T1
         0IFhQ8Sg0YFzFNYqpA7Ql3xFS+/zo4rJkhm0/FSrXtXG98W6awGvKe/NcUhJF8tbDvPp
         /h/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730994691; x=1731599491;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BR0AsIIvsAZoNbnhltKsghMop/uYVJqzbFLsrpgQQDQ=;
        b=nDEPvxfVORB2WyOLh6rkoPugWns3BNKyfxRrc16GANpPPOjLQ2AhU9Que8peJpUrRl
         WSeVsnhdt2Go0pwIvwNp5Hm/E5pj+WRfDz1+uyz8PHB4DA0QfKFWwo1oVLEUU66lR9od
         AY690niMm7fHM/+rRHqOb5oHsW1QGRHW1vddWbngPQuD9P1X/95BdSc5WI02TU+REwUa
         aJcPDh53Pu5EvTx5aOwKXYJdrwt5iDZXe/QJkZynTES1rzP7U6S+2Vd4jeiC74P8XodO
         OLrAMh4QFE0ZvR/o2cyD4oNeDUW1J6PKmtHQTXO8lEDOwCR4bIBJHpzG7HO4Uox6JNCa
         Rpzg==
X-Forwarded-Encrypted: i=1; AJvYcCX/eSPz6P+VdhmCXyPFrH+t/8SLA4hORPlaLrliBItfprsszgDmvs22HVwytlWuWCF13jNTp1+yoXKMyhu7nA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw5P5hoGDAnMx7DegrlbAVzyL8BrC3CL3MExnPML83WJh280t9M
	PIY43stPyWj7nm8uzOXeQrjR8RvgYPFsSVwLoztS6ImuqnCJRBaRDjYyiZud3Q==
X-Google-Smtp-Source: AGHT+IEVBKlv9ftF8S0QzkPYuWh8G8yEuAdxmNVdUuhvUI45faLCdmmUAl+VK6pETw5Od9JRQmScxA==
X-Received: by 2002:a05:600c:4a88:b0:431:9397:9ac9 with SMTP id 5b1f17b1804b1-431aa292eb4mr312298635e9.15.1730994690676;
        Thu, 07 Nov 2024 07:51:30 -0800 (PST)
Received: from thinkpad ([89.101.134.25])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432aa6c11f8sm64356935e9.25.2024.11.07.07.51.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Nov 2024 07:51:29 -0800 (PST)
Date: Thu, 7 Nov 2024 15:51:28 +0000
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Rob Herring <robh+dt@kernel.org>,
	"James E . J . Bottomley" <James.Bottomley@HansenPartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	"Rafael J . Wysocki" <rafael@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>,
	linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v4 1/7] scsi: ufs: core: Add
 UFSHCI_QUIRK_DME_RESET_ENABLE_AFTER_HCE
Message-ID: <20241107155128.paqyo7een2ggzejs@thinkpad>
References: <1730705521-23081-1-git-send-email-shawn.lin@rock-chips.com>
 <1730705521-23081-2-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1730705521-23081-2-git-send-email-shawn.lin@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_075132_330759_95CE2DAF 
X-CRM114-Status: GOOD (  27.49  )
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

T24gTW9uLCBOb3YgMDQsIDIwMjQgYXQgMDM6MzE6NTVQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IEhDRSBvbiBSb2NrY2hpcCBTb0MgaXMgZGlmZmVyZW50IGZyb20gYm90aCBvZiB1ZnNoY2Rf
aGJhX2V4ZWN1dGVfaGNlKCkKPiBhbmQgVUZTSENJX1FVSVJLX0JST0tFTl9IQ0UgY2FzZS4gSXQg
bmVlZCB0byBkbyBkbWVfcmVzZXQgYW5kIGRtZV9lbmFibGUKPiBhZnRlciBlbmFibGluZyBIQ0Uu
IFNvIGluIG9yZGVyIG5vdCB0byBhYnVzZSBVRlNIQ0lfUVVJUktfQlJPS0VOX0hDRSwgYWRkCj4g
YSBuZXcgcXVpcmsgVUZTSENJX1FVSVJLX0RNRV9SRVNFVF9FTkFCTEVfQUZURVJfSENFLCB0byBk
ZWFsIHdpdGggdGhhdAo+IGxpbWl0YXRpb24uCj4gCj4gU3VnZ2VzdGVkLWJ5OiBNYW5pdmFubmFu
IFNhZGhhc2l2YW0gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPgo+IFNpZ25lZC1v
ZmYtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+IC0tLQo+IAo+IENo
YW5nZXMgaW4gdjQ6Cj4gLSBmaXggdHlwbwo+IAo+IENoYW5nZXMgaW4gdjM6IE5vbmUKPiBDaGFu
Z2VzIGluIHYyOiBOb25lCj4gCj4gIGRyaXZlcnMvdWZzL2NvcmUvdWZzaGNkLmMgfCAxNyArKysr
KysrKysrKysrKysrKwo+ICBpbmNsdWRlL3Vmcy91ZnNoY2QuaCAgICAgIHwgIDYgKysrKysrCj4g
IDIgZmlsZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL3Vmcy9jb3JlL3Vmc2hjZC5jIGIvZHJpdmVycy91ZnMvY29yZS91ZnNoY2QuYwo+IGluZGV4
IDdjYWIxMDMxLi40MDg0YmY5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvdWZzL2NvcmUvdWZzaGNk
LmMKPiArKysgYi9kcml2ZXJzL3Vmcy9jb3JlL3Vmc2hjZC5jCj4gQEAgLTQ4MTksNiArNDgxOSw3
IEBAIHN0YXRpYyBpbnQgdWZzaGNkX2hiYV9leGVjdXRlX2hjZShzdHJ1Y3QgdWZzX2hiYSAqaGJh
KQo+ICB7Cj4gIAlpbnQgcmV0cnlfb3V0ZXIgPSAzOwo+ICAJaW50IHJldHJ5X2lubmVyOwo+ICsJ
aW50IHJldDsKPiAgCj4gIHN0YXJ0Ogo+ICAJaWYgKHVmc2hjZF9pc19oYmFfYWN0aXZlKGhiYSkp
Cj4gQEAgLTQ4NjUsNiArNDg2NiwyMiBAQCBzdGF0aWMgaW50IHVmc2hjZF9oYmFfZXhlY3V0ZV9o
Y2Uoc3RydWN0IHVmc19oYmEgKmhiYSkKPiAgCS8qIGVuYWJsZSBVSUMgcmVsYXRlZCBpbnRlcnJ1
cHRzICovCj4gIAl1ZnNoY2RfZW5hYmxlX2ludHIoaGJhLCBVRlNIQ0RfVUlDX01BU0spOwo+ICAK
PiArCS8qCj4gKwkgKiBEbyBkbWVfcmVzZXQgYW5kIGRtZV9lbmFibGUgaWYgYSBVRlMgaG9zdCBj
b250cm9sbGVyIG5lZWRzCj4gKwkgKiB0aGlzIHByb2NlZHVyZSB0byBhY3R1YWxseSBmaW5pc2gg
SENFLgo+ICsJICovCj4gKwlpZiAoaGJhLT5xdWlya3MgJiBVRlNIQ0lfUVVJUktfRE1FX1JFU0VU
X0VOQUJMRV9BRlRFUl9IQ0UpIHsKPiArCQlyZXQgPSB1ZnNoY2RfZG1lX3Jlc2V0KGhiYSk7Cj4g
KwkJaWYgKCFyZXQpIHsKPiArCQkJcmV0ID0gdWZzaGNkX2RtZV9lbmFibGUoaGJhKTsKPiArCQkJ
aWYgKHJldCkKPiArCQkJCWRldl9lcnIoaGJhLT5kZXYsCj4gKwkJCQkJIkZhaWxlZCB0byBkbyBk
bWVfZW5hYmxlIGFmdGVyIEhDRS5cbiIpOwoKRG9uJ3QgeW91IG5lZWQgdG8gcmV0dXJuIGZhaWx1
cmUgZm9yIHRoaXMgYW5kIGJlbG93IGVycm9yIHBhdGhzPyBQcm9iYWJseSB5b3UKbmVlZCB0byBz
a2lwIHBvc3QgY2hhbmdlIG5vdGlmaWNhdGlvbiBhcyB3ZWxsIGluIHRoZSBjYXNlIG9mIGZhaWx1
cmUuCgo+ICsJCX0gZWxzZSB7Cj4gKwkJCWRldl9lcnIoaGJhLT5kZXYsICJGYWlsZWQgdG8gZG8g
ZG1lX3Jlc2V0IGFmdGVyIEhDRS5cbiIpOwo+ICsJCX0KPiArCX0KPiArCj4gIAl1ZnNoY2Rfdm9w
c19oY2VfZW5hYmxlX25vdGlmeShoYmEsIFBPU1RfQ0hBTkdFKTsKCklzIGl0IHBvc3NpYmxlIGZv
ciB5b3UgdG8gY2Fycnkgb3V0IGRtZV9yZXNldCgpIGFuZCBkbWVfZW5hYmxlKCkgaW4gdGhlIHBv
c3QKY2hhbmdlIG5vdGlmaWVyIG9mIHRoZSByb2NrY2hpcCBnbHVlIGRyaXZlcj8gSSdtIHRyeWlu
ZyB0byBzZWUgaWYgd2UgY2FuIGF2b2lkCmhhdmluZyB0aGUgcXVpcmsgd2hpY2ggaXMgb25seSBz
cGVjaWZpYyB0byBSb2NrY2hpcC4KCi0gTWFuaQoKPiAgCj4gIAlyZXR1cm4gMDsKPiBkaWZmIC0t
Z2l0IGEvaW5jbHVkZS91ZnMvdWZzaGNkLmggYi9pbmNsdWRlL3Vmcy91ZnNoY2QuaAo+IGluZGV4
IGE5NTI4MmIuLmU5MzlhZjggMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS91ZnMvdWZzaGNkLmgKPiAr
KysgYi9pbmNsdWRlL3Vmcy91ZnNoY2QuaAo+IEBAIC02ODUsNiArNjg1LDEyIEBAIGVudW0gdWZz
aGNkX3F1aXJrcyB7Cj4gIAkgKiBzaW5nbGUgZG9vcmJlbGwgbW9kZS4KPiAgCSAqLwo+ICAJVUZT
SENEX1FVSVJLX0JST0tFTl9MU0RCU19DQVAJCQk9IDEgPDwgMjUsCj4gKwo+ICsJLyoKPiArCSAq
IFRoaXMgcXVpcmsgbmVlZHMgdG8gYmUgZW5hYmxlZCBpZiBob3N0IGNvbnRyb2xsZXIgbmVlZCB0
bwo+ICsJICogZG8gZG1lX3Jlc2V0IGFuZCBkbWVfZW5hYmxlIGFmdGVyIGhjZS4KPiArCSAqLwo+
ICsJVUZTSENJX1FVSVJLX0RNRV9SRVNFVF9FTkFCTEVfQUZURVJfSENFCQk9IDEgPDwgMjYsCj4g
IH07Cj4gIAo+ICBlbnVtIHVmc2hjZF9jYXBzIHsKPiAtLSAKPiAyLjcuNAo+IAoKLS0gCuCuruCu
o+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
