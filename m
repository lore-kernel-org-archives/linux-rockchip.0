Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CC94CCD195
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 09:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e5+k9ymHTxr5F2VG1xJrord6GqOFnm1xv/fC1PWhplQ=; b=aSop+BEf10zDmQ
	wYO/mO3VBHg1fv3vX+HNJ/XhZ3r04GV16c2T056d4ZzZYzgaXt+33gHerJI6qsdm9m2UNBQvjjH+A
	LuAMIXWS9ojOhV6xqUhOQ8gyuppBEN7cvewv9DFfsywdXo+R00Lx+GtrJldsaiZ3Eq7kd8NISRTuu
	Z2eNZV8JWEpEdKn+gpvYCiusHyPtLs9wJbLcJW3xrqksvis9TZiIMTnRD04c754q6v47FVU7tOQ1B
	VMZOJmU0I3SWwfvjvvsmlHBYuT6IrXLUwAaxuTplAC+b4OGYtFUqNTqOmWX3u6r8tP6GNC3nNAllp
	zc1vKoV5H/7LBNdfe23g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVY3-00000002KTp-2UFD;
	Wed, 22 Oct 2025 09:54:27 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVY1-00000002KTN-2t0g
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Oct 2025 09:54:27 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-b4f323cf89bso1470042066b.2
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Oct 2025 02:54:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761126864; x=1761731664; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+WAfumH2uX3Z2dq2Ora9O/PY2fjKCeePCu7c6aWb3bo=;
        b=Gi3GhSBO0JdWsGq/aUaPW4aLldirCtxqVptbdWYGCtorAp2nbHMxLJoUnUkU9SrKnd
         7p0Diw8umM/lNRfSPxTrigS3Ii70wQmaMtTof7l0DG0XY/q4WpCg2SnhZ63aHpvnO9oR
         unhYqW/vUtf0x1WYu3Ql25tKgVfeiWDFgT7FYbMUBGDgbjZBs92Skv/fAcjGaWtqNVCq
         ncCLhw1VLAswN0fLyUOkY8bIHXZk0sJUwE1AwHhn+8KdYBp7lTgyYFpGBBE13cx6iA+R
         HKxGHPZ4Qy1eEirCVSVYX6xBt9I2yOJTbImzp1l3NMpVm6Y70z7P6zmS/9sJeR4P/c6v
         hCWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761126864; x=1761731664;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+WAfumH2uX3Z2dq2Ora9O/PY2fjKCeePCu7c6aWb3bo=;
        b=AEUHBoM6Qq8oKt7vWmCdZIBiCigX9hjd0kZC/8lqIEbBpFp6+McPdB7xJSCAUA+ej5
         NCKfeSunWzRWN1V5ZNPrlRKjH5PedgyYvLUeHgxt5k1JPizHa1Q7qnn7oAhEdJGKzYDZ
         nsEMCMuDxKadjE35h/9fXxTw3vR6fUQS0G10tnVCvVbZJqa9JHQwld0Iw/iI2vvIif+I
         Mw2LmygjqiONy7WNb7YOzb1hbet1OrLqeiKRyoD4aMwt0pntaCVhRgfd6DB0nNNCHqr5
         6TYgpPvml+5ZDnfR5NkkcFsMh1DATBn3nS50Iq1TroRVydbupxSsGohapZWm4rBg+RdO
         L++Q==
X-Forwarded-Encrypted: i=1; AJvYcCVjLFMxzGDk7xlMg2SFOiTchBLuq0CGbQLrDmwkXlOt8J/e7hY2Gxox4KUP4cYKpQ6A9t4AxvYAihvWQMGPbg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzdycf1lKokY9cvyvLwJeaCNc1d3W5M5rf8/r9BQiIwNh2TGyc3
	6H4o2xaVLMU9eSrbfijeFGcY9rRWmiJGAe5hWtcUg439ZFkqDf2Lqp0z7MF8REjZ7yz/2AZtQNP
	hR70Grdu0XiRS8Zz9MXdPIRZqpVKnJ/rG09AsKjMK5Q==
X-Gm-Gg: ASbGncuotthYpSTILOvGfBNL12ZD7agDNEa9z3PwWd/UWo6tBYkqBi9ta04PbWRZei8
	6OC/ZLQ7lMyI3HcxHXCUbRhdrT4g+oyKvf4McqN8Vn6KBfNH1vl1Gctm3cYhkzLBdMeO3Ivj0kQ
	mVXH1wSXCBYBXrfVrf8p95HzavEWZyFv8oDEhyWHuNOFp7TnAlfoOpzsUAM+6Y2jgAWksnavFH0
	qdOdEfV1lc5kk7oNyNYM8WdifcjH6tPmR3p1sV8gw+RkAJboluJA0KH/jq/jiHJQp0ryLgK
X-Google-Smtp-Source: AGHT+IHkJQr+syP4XIj1NXSd5IYjCrxLULtv4w/lZ3TC5j6oJlcO8HY0fyR0XJQ+hvogLv5GWo7ratm2ymqw+D8ofdw=
X-Received: by 2002:a05:6402:2813:b0:633:d65a:af0e with SMTP id
 4fb4d7f45d1cf-63c1f6cee4amr20288278a12.28.1761126863838; Wed, 22 Oct 2025
 02:54:23 -0700 (PDT)
MIME-Version: 1.0
References: <1760924981-52339-1-git-send-email-shawn.lin@rock-chips.com>
 <1066e578-f543-4233-b556-ae458c9327a1@gmail.com> <84a6b292-868d-c202-6e60-28f21390cc09@manjaro.org>
 <7a1e7da3-226a-4ee9-a3f8-fa4051f833ad@rock-chips.com>
In-Reply-To: <7a1e7da3-226a-4ee9-a3f8-fa4051f833ad@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 22 Oct 2025 11:53:45 +0200
X-Gm-Features: AS18NWBUzt_fvNnQ0T3lLFsjYpwh3NtNycjxt0IDDOQ_s1idScunzU_ca4HSyNs
Message-ID: <CAPDyKFowGts=3cksrvO=EAPo06yuBo1ChCGR4MmSWUCJTHA=pA@mail.gmail.com>
Subject: Re: [PATCH] mmc: sdhci-of-dwcmshc: Change DLL_STRBIN_TAPNUM_DEFAULT
 to 0x4
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Dragan Simic <dsimic@manjaro.org>, Adrian Hunter <adrian.hunter@intel.com>, 
	linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org, 
	Hugh Cole-Baker <sigmaris@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_025425_984355_FCD0ED17 
X-CRM114-Status: GOOD (  21.19  )
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

T24gV2VkLCAyMiBPY3QgMjAyNSBhdCAwMjozOSwgU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1j
aGlwcy5jb20+IHdyb3RlOgo+Cj4KPiDlnKggMjAyNS8xMC8yMiDmmJ/mnJ/kuIkgNDoyNCwgRHJh
Z2FuIFNpbWljIOWGmemBkzoKPiA+IEhlbGxvIEh1Z2ggYW5kIFNoYXduLgo+ID4KPiA+IE9uIFR1
ZXNkYXksIE9jdG9iZXIgMjEsIDIwMjUgMjI6MDQgQ0VTVCwgSHVnaCBDb2xlLUJha2VyIDxzaWdt
YXJpc0BnbWFpbC5jb20+IHdyb3RlOgo+ID4+IE9uIDIwLzEwLzIwMjUgMDI6NDksIFNoYXduIExp
biB3cm90ZToKPiA+Pj4gc3RyYmluIHNpZ25hbCBkZWxheSB1bmRlciAweDggY29uZmlndXJhdGlv
biBpcyBub3Qgc3RhYmxlIGFmdGVyIG1hc3NpdmUKPiA+Pj4gdGVzdC4gVGhlIHJlY29tbWFuZGF0
aW9uIG9mIGl0IHNob3VsZCBiZSAweDQuCj4gPj4+Cj4gPj4+IFNpZ25lZC1vZmYtYnk6IFNoYXdu
IExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+ID4+PiAtLS0KPiA+Pj4KPiA+Pj4gICBk
cml2ZXJzL21tYy9ob3N0L3NkaGNpLW9mLWR3Y21zaGMuYyB8IDIgKy0KPiA+Pj4gICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+Pj4KPiA+Pj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvbW1jL2hvc3Qvc2RoY2ktb2YtZHdjbXNoYy5jIGIvZHJpdmVycy9tbWMv
aG9zdC9zZGhjaS1vZi1kd2Ntc2hjLmMKPiA+Pj4gaW5kZXggZWViZDQ1My4uNWI2MTQwMSAxMDA2
NDQKPiA+Pj4gLS0tIGEvZHJpdmVycy9tbWMvaG9zdC9zZGhjaS1vZi1kd2Ntc2hjLmMKPiA+Pj4g
KysrIGIvZHJpdmVycy9tbWMvaG9zdC9zZGhjaS1vZi1kd2Ntc2hjLmMKPiA+Pj4gQEAgLTk0LDcg
Kzk0LDcgQEAKPiA+Pj4gICAjZGVmaW5lIERMTF9UWENMS19UQVBOVU1fREVGQVVMVCAgMHgxMAo+
ID4+PiAgICNkZWZpbmUgRExMX1RYQ0xLX1RBUE5VTV85MF9ERUdSRUVTICAgICAgIDB4QQo+ID4+
PiAgICNkZWZpbmUgRExMX1RYQ0xLX1RBUE5VTV9GUk9NX1NXICBCSVQoMjQpCj4gPj4+IC0jZGVm
aW5lIERMTF9TVFJCSU5fVEFQTlVNX0RFRkFVTFQgIDB4OAo+ID4+PiArI2RlZmluZSBETExfU1RS
QklOX1RBUE5VTV9ERUZBVUxUICAweDQKPiA+Pj4gICAjZGVmaW5lIERMTF9TVFJCSU5fVEFQTlVN
X0ZST01fU1cgQklUKDI0KQo+ID4+PiAgICNkZWZpbmUgRExMX1NUUkJJTl9ERUxBWV9OVU1fU0VM
ICBCSVQoMjYpCj4gPj4+ICAgI2RlZmluZSBETExfU1RSQklOX0RFTEFZX05VTV9PRkZTRVQgICAg
ICAgMTYKPiA+Pgo+ID4+IFRoaXMgcGF0Y2ggZ2V0cyB0aGUgRm9yZXNlZSBBM0E0NDQgZU1NQyBv
biBteSBOYW5vUEMtVDYgYm9hcmQgdG8gd29yayByZWxpYWJseQo+ID4+IGluIEhTNDAwIEVuaGFu
Y2VkIFN0cm9iZSBtb2RlOyBiZWZvcmUgdGhpcyBwYXRjaCBpdCB3b3VsZCBzdWZmZXIgZnJvbSBJ
L08KPiA+PiBlcnJvcnMgaW4gSFM0MDAgbW9kZSBhcyBkaXNjdXNzZWQgaW4gdGhlIG90aGVyIHRo
cmVhZCBbMV0uCj4gPj4KPiA+PiBUZXN0ZWQtYnk6IEh1Z2ggQ29sZS1CYWtlciA8c2lnbWFyaXNA
Z21haWwuY29tPgo+Cj4gVGhhbmtzIGZvciB0ZXN0aW5nIGFuZCBjb21maXJtaW5nIGl0IHdvcmtz
IGFzIGV4cGVjdGVkLgo+IEkgdGhpbmsgdGhpcyBwYXRjaCBhbHNvIG5lZWQgdG8gYmUgYmFja3Bv
cnRlZC4gU28gVWxmLAo+IGNvdWxkIHlvdSBwbGVhc2UgaGVscCBhZGQgZml4ZXMgdGFnIGlmIHRo
ZSBwYXRjaCBsb29rcyBnb29kCj4gdG8geW91LCB0byBhdm9pZCBhIHYyIGp1c3QgZm9yIGFkZGlu
ZyB0aGlzLiA6KQoKWWVzLCBubyBwcm9ibGVtIQoKPgo+IEZpeGVzOiAwOGYzZGZmNzk5ZDQgKCJt
bWM6IHNkaGNpLW9mLWR3Y21zaGM6IGFkZCByb2NrY2hpcCBwbGF0Zm9ybQo+IHN1cHBvcnQiKQoK
VGhlIHBhdGNoIGlzIGFwcGxpZWQgZm9yIGZpeGVzIHdpdGggdGhlIGFib3ZlIEZpeGVzLXRhZyBh
bmQgYQpzdGFibGUtdGFnIHRvbywgdGhhbmtzIQoKWy4uLl0KCktpbmQgcmVnYXJkcwpVZmZlCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
