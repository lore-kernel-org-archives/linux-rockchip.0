Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC1D7CAC5B8
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Sep 2025 16:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QlJcNJMfY4h38e84x6U4NiaWhnHnJLIufjsejyFjp+c=; b=rIsuCuARGB1zKI
	iVfiqyjJMzl6tKd1GKnvNZjgFr7MMU/gZiCRXEUr500DvC7KM/iFps6JOZJGGbtWdnxBnFgAu2jHR
	bfQFGRTqooAaqcpxa635QAzlGIXEL1GSHFqg93RYSHNxLwY+shkr2rK0gMFuGzcvD8QMtVzK1iTpe
	ABbSbY0Av3pI+zINkJ9IoAP4pYNBvGIRkTFu7ko49yyky8s+Vj64MZVb01FXZi9UaQNiXHd93PxT9
	3OpfuyrmzmKs4GnVM46xxvYCumBOSdWZkovk8SxSF6sS3lnVkFTRTsPiWyDc/GaP81dWnVK94GeIr
	mdqmhVRBZq57vf+qv/Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2XlT-0000000Ayvm-2Oxq;
	Sat, 27 Sep 2025 16:27:15 +0000
Received: from mail-ej1-x642.google.com ([2a00:1450:4864:20::642])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2XlR-0000000Ayt0-0Mxr
	for linux-rockchip@lists.infradead.org;
	Sat, 27 Sep 2025 16:27:14 +0000
Received: by mail-ej1-x642.google.com with SMTP id a640c23a62f3a-b38e5c2e055so266329566b.0
        for <linux-rockchip@lists.infradead.org>; Sat, 27 Sep 2025 09:27:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758990431; x=1759595231; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qfZFYlW0wdwTxAgpS/9PkxRW2aXQXo/CZ/Epth10HX8=;
        b=bfHTYieUf2+oEbDf7CoMmrW2uXw/o7hrfESHcC9GSf5Nh5MywvE/VQc9NY/3Gjy7L/
         cFG5wo2geyKLUWI6uxNgodOppuwBu+kAsc+ERMODUO+7YeMUPJGsgxYMkpnIB7kcPxk+
         u91H8fSUq6WVdgc6Gd3ZZoV9QJ0/jIEVYeEMYuGzXbsHDSH7iTjMzGnCtgLFEnNUEvjK
         /0LaNYF3DlpCXS8EslxAEIT3Oi74Y7b7UWFRk/HmZiSM+bn+XyYmBN8mK53th8DRoTvb
         9tma1NEOhnUMJOboh0phRoOdNbNl+1m1d20PeUadlx34737PZNJIjHL9hkW73kMkiwfm
         Yvag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758990431; x=1759595231;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qfZFYlW0wdwTxAgpS/9PkxRW2aXQXo/CZ/Epth10HX8=;
        b=TN4mTcm0XFYOW75fy67uAk6lM9xY/7SFYcH7oGlhAhX7GdSjVSEu39rbXUIUsbHgIg
         gOqw0dBfR4uLmTYCMs4Z04FDiOdiKMPNq/Qy4QyNeac+8qbR14BB016HfEx067IiFwW7
         Otq/lIGEKX9oleitNFl+XebYurIGzOdamOMYC8df11wAYj25iJA+ttkCsQaxmr/qdKnk
         VLmpNk4jrjowcqoR6UqF7tttBkIVOJA54CtERUgZNqQm4aMWJyqlo0VyaEjONXtVYcvQ
         IC1yXrCLL7HiuDit1xZ+J4kV7piTbY2kZL7uBVZAOq5YrAjt3W8tcf6sdwiEKek14EPg
         GprQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7bjbScPKrshUYWc7n5bKrvZW/zjxxYk1dWOES1IZtzjq9VYyQV2SfisrSIcmyvZewTeE3zT0U6u7FWrO7CA==@lists.infradead.org
X-Gm-Message-State: AOJu0YysWaU3D4HAqiDWdfJkfELS5GR67PUuPSx5MfPpxAXlf3R+5fAX
	mhuWueevCjLQ65oFW6RbxA6HKgb9etNANh4olBiw9/bnduhf6W3syPq1p53vjZVrI/y3LlPo6pV
	I4PCl02QsVax19D+c4+DMkynpxo2RVs0=
X-Gm-Gg: ASbGncuxub4b1scTN9GnxbjnY6igE8dRaKd+nuVdxnDfxEkGZd8yaeI7KrCPwFMnsgr
	C/1OjYbC8DnYQi6es5mED/Cewx/VMBoSnQ+e/2g8elQMLeQ3NhDp2kVuryjSEUUL4bOnVN/H1Ha
	yHat7p0gzT4NPNPetOANHmGvGplY92ppkANb0zINdweH5tjrZg/SOMek4jp73sCF4p3yajgAGAj
	JqmHLwlcWj7g9b+ow==
X-Google-Smtp-Source: AGHT+IEm2jV42rGG7p5fnAgEp0mQdebl30tWmt7AxVYjslTP4Tk1rmf5shjSIlNO7exv/8/POfXlKAR/ZeXXXvU+VXo=
X-Received: by 2002:a17:906:46ce:b0:b35:3469:49ff with SMTP id
 a640c23a62f3a-b353478953emr979609066b.25.1758990430457; Sat, 27 Sep 2025
 09:27:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAOprWosSvBmORh9NKk-uxoWZpD6zdnF=dODS-uxVnTDjmofL6g@mail.gmail.com>
 <20250919-lurking-agama-of-genius-96b832-mkl@pengutronix.de>
 <CAOprWott046xznChj7JBNmVw3Z65uOC1_bqTbVB=LA+YBw7TTQ@mail.gmail.com> <20250922-eccentric-rustling-gorilla-d2606f-mkl@pengutronix.de>
In-Reply-To: <20250922-eccentric-rustling-gorilla-d2606f-mkl@pengutronix.de>
From: Andrea Daoud <andreadaoud6@gmail.com>
Date: Sun, 28 Sep 2025 00:26:59 +0800
X-Gm-Features: AS18NWDvuOQaoti1D_COhZmrCy5dQ4py-Ah3qreB3B80U5UMlAMWauKJrbU8dAs
Message-ID: <CAOprWoucfBm_BZOwU+qzo3YrpDE+f-x4YKNDS6phtOD2hvjsGg@mail.gmail.com>
Subject: Re: Possible race condition of the rockchip_canfd driver
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Heiko Stuebner <heiko@sntech.de>, Elaine Zhang <zhangqing@rock-chips.com>, kernel@pengutronix.de, 
	linux-can@vger.kernel.org, netdev@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Alexander Shiyan <eagle.alexander923@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250927_092713_136945_8C8DED47 
X-CRM114-Status: GOOD (  33.07  )
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

SGkgTWFyYywKCk9uIE1vbiwgU2VwIDIyLCAyMDI1IGF0IDQ6NTDigK9QTSBNYXJjIEtsZWluZS1C
dWRkZSA8bWtsQHBlbmd1dHJvbml4LmRlPiB3cm90ZToKPgo+IE9uIDIwLjA5LjIwMjUgMTg6MDg6
MDMsIEFuZHJlYSBEYW91ZCB3cm90ZToKPiA+ID4gT24gMTguMDkuMjAyNSAyMDo1ODozMywgQW5k
cmVhIERhb3VkIHdyb3RlOgo+ID4gPiA+IEknbSB1c2luZyB0aGUgcm9ja2NoaXBfY2FuZmQgZHJp
dmVyIG9uIGFuIFJLMzU2OC4gV2hlbiB1bmRlciBoaWdoIGJ1cwo+ID4gPiA+IGxvYWQsIEkgZ2V0
Cj4gPiA+ID4gdGhlIGZvbGxvd2luZyBsb2dzIFsxXSBpbiBya2NhbmZkX3R4X3RhaWxfaXNfZWZm
LCBhbmQgdGhlIENBTiBidXMgaXMgdW5hYmxlIHRvCj4gPiA+ID4gY29tbXVuaWNhdGUgcHJvcGVy
bHkgdW5kZXIgdGhpcyBjb25kaXRpb24uIFRoZSBleGFjdCBjYXVzZSBpcyBjdXJyZW50bHkgbm90
Cj4gPiA+ID4gZW50aXJlbHkgY2xlYXIsIGFuZCBpdCdzIG5vdCByZWxpYWJseSByZXByb2R1Y2li
bGUuCj4gPiA+Cj4gPiA+IE91ciBjdXN0b21lciBpcyB1c2luZyBhIHYzIHNpbGljb24gcmV2aXNp
b24gb2YgdGhlIGNoaXAsIHdoaWNoIGRvZXNuJ3QKPiA+ID4gdGhpcyB3b3JrYXJvdW5kLgo+ID4K
PiA+IENvdWxkIHlvdSBwbGVhc2UgbGV0IG1lIGtub3cgaG93IHRvIGNoZWNrIHdoZXRoZXIgbXkg
UkszNTY4IGlzIHYyIG9yIHYzPwo+Cj4gQWxleGFuZGVyIFNoaXlhbiAoQ2MnZWQpIHJlYWRzIHRo
ZSBpbmZvcm1hdGlvbiBmcm9tIGFuIG52bWVtIGNlbGw6Cj4KPiB8IGh0dHBzOi8vZ2l0aHViLmNv
bS9NYWNyb0dyb3VwL2JhcmVib3gvYmxvYi9tYWNyby9hcmNoL2FybS9ib2FyZHMvZGlhc29tLXJr
MzU2OC9ib2FyZC5jI0wyMzktTDI1Nwo+Cj4gVGhlIGlkZWEgaXMgdG8gZml4dXAgdGhlIGRldmlj
ZSB0cmVlIGluIHRoZSBib290bG9hZGVyIGRlcGVuZGluZyBvbiB0aGUKPiBTb0MgcmV2aXNpb24s
IHNvIHRoYXQgdGhlIENBTiBkcml2ZXIgdXNlcyBvbmx5IHRoZSBuZWVkZWQgd29ya2Fyb3VuZHMu
Cj4KClRoYW5rcywgaXQgaXMgbm90IGVhc3kgdG8gY29ycmVsYXRlIHRoaXMgYmVjYXVzZSBJIGFt
IGN1cnJlbnRseSBub3QgdXNpbmcKYmFyZWJveC4gSSdsbCB0cnkgdGhpcyBsYXRlci4KCj4gPiA+
ID4gSW4gdGhlIGxvZ3Mgd2UgY2FuIHNwb3Qgc29tZSBzdHJhbmdlIHBvaW50czoKPiA+ID4gPgo+
ID4gPiA+IDEuIExpbmUgMjQsIHR4X2hlYWQgPT0gdHhfdGFpbC4gVGhpcyBzaG91bGQgaGF2ZSBi
ZWVuIHJlamVjdGVkIGJ5IHRoZSBpZgo+ID4gPiA+ICghcmtjYW5mZF9nZXRfdHhfcGVuZGluZykg
Y2xhdXNlLgo+ID4gPiA+Cj4gPiA+ID4gMi4gTGluZSAyNiwgdGhlIGxhc3QgYml0IG9mIHByaXYt
PnR4X3RhaWwgKDB4MDE4NWRiYjMpIGlzIDEuIFRoaXMgbWVhbnMgdGhhdCB0aGUKPiA+ID4gPiB0
eF90YWlsIHNob3VsZCBiZSAxLCBiZWNhdXNlIHJrY2FuZmRfZ2V0X3R4X3RhaWwgaXMgZXNzZW50
aWFsbHkgbW9kIHRoZQo+ID4gPiA+IHByaXYtPnR4X3RhaWwgYnkgdHdvLiBCdXQgdGhlIHByaW50
ZWQgdHhfdGFpbCBpcyAwLgo+ID4gPiA+Cj4gPiA+ID4gSSBiZWxpZXZlIHRoZXNlIHByb2JsZW1z
IGNvdWxkIG1lYW4gdGhhdCB0aGUgY29kZSBpcyBzdWZmZXJpbmcgZnJvbSBzb21lIHJhY2UKPiA+
ID4gPiBjb25kaXRpb24uIEl0IHNlZW1zIHRoYXQsIGluIHRoZSB3aG9sZSBJUlEgcHJvY2Vzc2lu
ZyBjaGFpbiBvZiB0aGUgZHJpdmVyLAo+ID4gPiA+IHRoZXJlJ3Mgbm8gbG9jayBwcm90ZWN0aW9u
LiBNYXliZSBzb21lIElSUSBoYXBwZW5zIHdpdGhpbiB0aGUgZXhlY3V0aW9uIG9mCj4gPiA+ID4g
cmtjYW5mZF90eF90YWlsX2lzX2VmZiwgYW5kIHRvdWNoZXMgdGhlIHN0YXRlIG9mIHRoZSB0eF9o
ZWFkIGFuZCB0eF90YWlsPwo+ID4gPiA+Cj4gPiA+ID4gQ291bGQgeW91IHBsZWFzZSBoYXZlIGEg
bG9vayBhdCB0aGUgY29kZSwgYW5kIGNoZWNrIGlmIHNvbWUgbG9ja2luZyBpcyBuZWVkZWQ/Cj4g
PiA+Cj4gPiA+IE15IHRpbWUgZm9yIGNvbW11bml0eSBzdXBwb3J0IGlzIGN1cnJlbnRseSBhIGJp
dCBsaW1pdGVkLiBJIHRoaW5rIHRoaXMKPiA+ID4gaGFzIHRvIHdhaXQgYSBiaXQsIGFwb2xvZ2ll
cyA6Lwo+ID4KPiA+IE5vIHdvcnJpZXMsIEkgd2lsbCBkZWJ1ZyBteXNlbGYsIGFuZCBob3BlZnVs
bHkgc2VuZCBhIFBSIGlmIEkgZm91bmQKPiA+IHNvbWV0aGluZyBvdXQuCj4KPiBHcmVhdCwgSSBo
YXZlIGEgYm90aCBhIHYyIGFuZCBhIHYzIFNvQyBoZXJlIHRvIHRlc3QuCgpJdCB0dXJucyBvdXQg
dGhlcmUgYXJlIHR3byBpc3N1ZXM6CgoxLiBUaGUgcmFjZSBjb25kaXRpb24gKGJldHdlZW4gVFgg
aW50ZXJydXB0IGFuZCBUWCBxdWV1ZSBuZXRpZiB4bWl0KSBpcyBpbmRlZWQKYW4gaXNzdWUuIEZp
eGVkIGJ5IGFkZGluZyBhIHNwaW5sb2NrIGFyb3VuZCBUWCBsb2dpYywgYW5kIG5vIHdhcm5pbmcK
b2NjdXJzIGFmdGVyCmFkZGluZyB0aGUgbG9jay4KCjIuIFRoZSBDTEtfQ0FOMCB3YXMgY2xvY2tl
ZCBieSBHUExMLCB3aGljaCBtYWtlcyBpdCAxNDguNU1Iei4gVGhpcyBmcmVxdWVuY3kKd2lsbCBs
ZWFkIHRvIHZhcmlvdXMgZXJyb3JzIHF1aWNrbHkgd2hlbiBkZWFsaW5nIHdpdGggRUZGIElEcy4g
Rml4ZWQKYnkgY29uc3RyYWluaW5nIGl0CnRvIHVzZSBDUExMIGFuZCAyNTBNSHogZnJlcS4KClJl
Z2FyZGluZyBwcm9ibGVtIDEsIEkgd2lsbCBzZW5kIGEgcGF0Y2guCgpSZWdhcmRpbmcgcHJvYmxl
bSAyLCBJIHN1Z2dlc3QgYWRkaW5nIHNvbWUgZXh0cmEgc2FuaXR5IGNoZWNrcyB0bwpndWFyZCBh
Z2FpbnN0IHRoaXMuCgo+Cj4gcmVnYXJkcywKPiBNYXJjCj4KPiAtLQo+IFBlbmd1dHJvbml4IGUu
Sy4gICAgICAgICAgICAgICAgIHwgTWFyYyBLbGVpbmUtQnVkZGUgICAgICAgICAgfAo+IEVtYmVk
ZGVkIExpbnV4ICAgICAgICAgICAgICAgICAgIHwgaHR0cHM6Ly93d3cucGVuZ3V0cm9uaXguZGUg
fAo+IFZlcnRyZXR1bmcgTsO8cm5iZXJnICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0y
MDY5MTctMTI5IHwKPiBBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiB8IEZheDogICAr
NDktNTEyMS0yMDY5MTctOSAgIHwKCgpSZWdhcmRzLApBbmRyZWEKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
