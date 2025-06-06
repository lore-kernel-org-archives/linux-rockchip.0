Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85563C677C4
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Jun 2025 16:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4pQo6uSHcd60J4cP/sVDwNCl68RhMzqQIV5aSf2AkAc=; b=FA0KljgyEwfmzd
	H8V/j/w7aZd+7f4P10wT7OcS0hfRUQ3MgwYAJzo1g1wNKdrMhxdychIRbl5Em6pVzF2DNeO0JoF9J
	wfkBuBmzA8b268HXctQMnaWldIbSEjoT5N+aRXuQOcVgzjmKXEGPSUIqlQmgoNxYh7OKJaxD19Qg9
	IrFP/Cd6WqhmsdwkgSyhhQh5UZGkEpOvhiyS+3xcFKs3QzSIoZCCNKXcetpWmWHYg+1q8WtRL5/hX
	5A6/8HnX3P4SO88JDRJKjqTjRf9oKvqPb1rFvtLJm9Q8H99lHF/oqXjnOSou4PuTST2STou/Cs2WS
	FdZa8Dmoc7pR4PgB2Q2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNa9T-00000000ejM-1Fp6;
	Fri, 06 Jun 2025 16:42:43 +0000
Received: from mail-il1-x136.google.com ([2607:f8b0:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNa9F-00000000egw-16eE
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Jun 2025 16:42:30 +0000
Received: by mail-il1-x136.google.com with SMTP id e9e14a558f8ab-3d6d6d82633so7130655ab.0
        for <linux-rockchip@lists.infradead.org>; Fri, 06 Jun 2025 09:42:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749228148; x=1749832948; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uMeYsxUgjqxog+Ak4U2urOTlJ0rw3A1XKz5qXAyaQdo=;
        b=UtZstHLpAdCpScRDfw9TCRsZPjGB6iZJgnNNTGFJ7p9sAVcaKPMv0YWGRBpzHbnEZ4
         5QwsSsNFz2qhxEa2HLJEtaO/3B5FIbFq8WwhZALy8Q9de5pkhqxxBUBoXxdykMuXGtlf
         7f1PeITUhMVOXrAChbJyneuTmhxcpU77Tvu7z4Nf2gm4voucef/i3hrIbt6TMt6ilfsd
         MH/rw+neXRpqORGwA6lJd7VRp5kh3/T6WEfColBp5I5NDUC8A5S8m4wVsKHysgDsl3Al
         RKOcD2e1aX71hEdaVr6rsEB4zQJfmXc5PxOq3FPuMV+KllMm8mRVAt7bbgJ3JzJolwDE
         15/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749228148; x=1749832948;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uMeYsxUgjqxog+Ak4U2urOTlJ0rw3A1XKz5qXAyaQdo=;
        b=WG84cqhXpIGL502hkSRoA+aSUeUMhmmed4CiEona0M9KcJxrDa7Bs/uAOH5VpG5PWk
         jwGznkSMBGG4587XQV+7ofLMV7wOO+AkkaYdGsY4PB+inoIpA3ywIWfR9YozWvSnCI3c
         tUXLjyk/EhigeoNpzSiUcpYxHS176jB4EYtYvaqHRIXT48kH7g95Lo1Sg7P3gOkKct3T
         fwMzosr2wnvKr+7mWE0EtoAxvnxGdJDUCTojXTiBjSEk/qFdEsfT4l54Ieclg8v98yTk
         frkRBnIX9QtPyU0eVPBwivyUyTFFp8Yi6rbVAkcVgNEZFpRppQFHxB5zOXOBsxXguNA3
         onqA==
X-Forwarded-Encrypted: i=1; AJvYcCWS+5/AzEtaYlgSHc9tVFGSXyG58eRkdR61gdzH0U3zxuSfc7e64PGNGdIVQUSC2mJysfYY4d+zv+CUQESSMA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzOxIgwJ8rTWJSsXX6PS0w91sv2syRiSY7GyBUAQ1P3bb1boGi0
	lnNl6AgqMJYMPo1ghK8Y/kbC5iGrrOmoYwDlG46TzVIl+Uy9cJ2EuukncLh6oB3d/eKEyw4CS6Z
	WW9I2k6rHHzTUHrQ/9er+t6l1wqgHzz8=
X-Gm-Gg: ASbGnctxL7grmua813C2mgGXChrCYw1cNmgvdRp0JPs/kdefwEIqxgBbj/f59VS4Eb2
	08VwwTpaoZy1AT+vb1AFEzLS8sUUYry8TBLhi30ET0soQj9b/TYxWKbkXKCfHHCm/Gfz31hyV3i
	lmXj5uUFffRT0drWeSm65aJs/M7Y784KKKs4o1ChC1+JMgTn6XiF59
X-Google-Smtp-Source: AGHT+IFlV+kTTqKAlFNc6/Q8eaL8fHicj7OQNSk3pESNYyA27MAqC5cCScNwhcB8fj/OsGWlxBp0LvXax4FYxj83epQ=
X-Received: by 2002:a05:6e02:4518:20b0:3dd:d189:8a6c with SMTP id
 e9e14a558f8ab-3ddd1898dd9mr19809775ab.4.1749228148149; Fri, 06 Jun 2025
 09:42:28 -0700 (PDT)
MIME-Version: 1.0
References: <20250605-rk3588s-cm5-io-dts-upstream-v4-0-8445db5ca6b0@gmail.com>
 <20250605-rk3588s-cm5-io-dts-upstream-v4-2-8445db5ca6b0@gmail.com> <CALWfF7J-Lygg+N3oH+p7XkPvH_6ZbvTRY6CaZzFqDixzSgDHBA@mail.gmail.com>
In-Reply-To: <CALWfF7J-Lygg+N3oH+p7XkPvH_6ZbvTRY6CaZzFqDixzSgDHBA@mail.gmail.com>
From: Joseph Kogut <joseph.kogut@gmail.com>
Date: Fri, 6 Jun 2025 09:41:52 -0700
X-Gm-Features: AX0GCFsGQAfqG6AckaE2dzN-sFHMIgG2nS5Dtrqvn7bKG-PkR87MSRPoQm07c1U
Message-ID: <CAMWSM7gD0Tiu-JOUqyoASHQHrz79rnW3+kfQ4wnRSOx051GB4Q@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] arm64: dts: rockchip: Add rk3588 based Radxa CM5
To: Jimmy Hon <honyuenkwun@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Steve deRosier <derosier@cal-sierra.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250606_094229_307226_5A44187D 
X-CRM114-Status: GOOD (  21.64  )
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

T24gVGh1LCBKdW4gNSwgMjAyNSBhdCA1OjUx4oCvUE0gSmltbXkgSG9uIDxob255dWVua3d1bkBn
bWFpbC5jb20+IHdyb3RlOgo+Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1ODhzLXJhZHhhLWNtNS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1ODhzLXJhZHhhLWNtNS5kdHNpCj4gPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+ID4g
aW5kZXggMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMC4uZDc5NDZmZTJi
YjRlNzIxNjg5ZTNlYjRkNjBkOGU5NzgzNDAyZjA1ZQo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysr
IGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJhZHhhLWNtNS5kdHNpCj4g
PiBAQCAtMCwwICsxLDE1NiBAQAo+ID4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BM
LTIuMCsgT1IgTUlUKQo+ID4gKy8qCj4gPiArICogQ29weXJpZ2h0IChjKSAyMDI1IEpvc2VwaCBL
b2d1dCA8am9zZXBoLmtvZ3V0QGdtYWlsLmNvbT4KPiA+ICsgKi8KPiA+ICsKPiA+ICsvKgo+ID4g
KyAqIENNNSBkYXRhIHNoZWV0Cj4gPiArICogaHR0cHM6Ly9kbC5yYWR4YS5jb20vY201L3YyMjEw
L3JhZHhhX2NtNV92MjIxMF9zY2hlbWF0aWMucGRmCj4gPiArICovCj4gPiArCj4gPiArI2luY2x1
ZGUgPGR0LWJpbmRpbmdzL2dwaW8vZ3Bpby5oPgo+ID4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9s
ZWRzL2NvbW1vbi5oPgo+ID4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy9zb2Mvcm9ja2NoaXAsdm9w
Mi5oPgo+ID4gKyNpbmNsdWRlIDxkdC1iaW5kaW5ncy91c2IvcGQuaD4KPiA+ICsKPiA+ICsvIHsK
PiA+ICsgICAgICAgY29tcGF0aWJsZSA9ICJyYWR4YSxjbTUiLCAicm9ja2NoaXAscmszNTg4cyI7
Cj4gPiArCj4gPiArICAgICAgIGFsaWFzZXMgewo+ID4gKyAgICAgICAgICAgICAgIG1tYzAgPSAm
c2RtbWM7Cj4gU2luY2UgdGhlIG1pY3JvU0QgY2FyZCBpcyBvbiB0aGUgY2FycmllciBib2FyZCwg
dGhpcyBhbGlhcyBzaG91bGQgYmUKPiBtb3ZlZCB0byB0aGUgYm9hcmQgRFRTLgo+CgpHb29kIHBv
aW50LCBJJ2xsIG1vdmUgdGhpcyB0byB0aGUgYm9hcmQgRFRTLiBUaGlzIGlzIGEgcmVtbmFudCBm
cm9tCmNvcHlpbmcgYXNwZWN0cyBvZiB0aGUgZG93bnN0cmVhbSBEVFMsIGFuZCBhZGFwdGluZyBp
dCBmb3IgbWFpbmxpbmUKY29udmVudGlvbnMuCgo+ID4gKyAgICAgICAgICAgICAgIG1tYzEgPSAm
c2RoY2k7Cj4gTW9zdCBvZiB0aGUgb3RoZXIgUmFkeGEgcmszNTg4IGJvYXJkcyBoYXZlIHRoZSBl
TU1DIGFsaWFzIHRvIG1tYzAuIFdoeQo+IGRvZXMgdGhpcyB1c2UgYW5vdGhlciBjb252ZW50aW9u
Pwo+Cj4gPiArICAgICAgICAgICAgICAgbW1jMiA9ICZzZGlvOwo+IFRoZSBzZGlvIGlzIG5vdCBl
bmFibGVkLiBUaGlzIGFsaWFzIHdvbid0IGJlIHVzZWQuCj4KClRoZXNlIHdlcmUgY29waWVkIGZy
b20gdGhlIGRvd25zdHJlYW0gRFRTLiBJJ2xsIGdvIGFoZWFkIGFuZCB1c2UgdGhlCm1haW5saW5l
IGNvbnZlbnRpb24gaGVyZSBhcyB3ZWxsLgoKPiA+ICsgICAgICAgfTsKPiA+ICsKPiA+ICsgICAg
ICAgbGVkcyB7Cj4gPiArICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJncGlvLWxlZHMiOwo+
ID4gKwo+ID4gKyAgICAgICAgICAgICAgIGxlZF9zeXM6IGxlZC0wIHsKPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgIGNvbG9yID0gPExFRF9DT0xPUl9JRF9CTFVFPjsKPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgIGRlZmF1bHQtc3RhdGUgPSAib24iOwo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgZnVuY3Rpb24gPSBMRURfRlVOQ1RJT05fSEVBUlRCRUFUOwo+ID4gKyAgICAgICAgICAg
ICAgICAgICAgICAgZ3Bpb3MgPSA8JmdwaW80IFJLX1BCNCBHUElPX0FDVElWRV9ISUdIPjsKPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgIGxpbnV4LGRlZmF1bHQtdHJpZ2dlciA9ICJoZWFydGJl
YXQiOwo+ID4gKyAgICAgICAgICAgICAgIH07Cj4gPiArICAgICAgIH07Cj4gPiArfTsKPiA+ICsK
PiA+ICsmY3B1X2IwIHsKPiA+ICsgICAgICAgY3B1LXN1cHBseSA9IDwmdmRkX2NwdV9iaWcwX3Mw
PjsKPiA+ICt9Owo+ID4gKwo+ID4gKyZjcHVfYjEgewo+ID4gKyAgICAgICBjcHUtc3VwcGx5ID0g
PCZ2ZGRfY3B1X2JpZzBfczA+Owo+ID4gK307Cj4gPiArCj4gPiArJmNwdV9iMiB7Cj4gPiArICAg
ICAgIGNwdS1zdXBwbHkgPSA8JnZkZF9jcHVfYmlnMV9zMD47Cj4gPiArfTsKPiA+ICsKPiA+ICsm
Y3B1X2IzIHsKPiA+ICsgICAgICAgY3B1LXN1cHBseSA9IDwmdmRkX2NwdV9iaWcxX3MwPjsKPiA+
ICt9Owo+ID4gKwo+ID4gKyZjcHVfbDAgewo+ID4gKyAgICAgICBjcHUtc3VwcGx5ID0gPCZ2ZGRf
Y3B1X2xpdF9zMD47Cj4gPiArfTsKPiA+ICsKPiA+ICsmY3B1X2wxIHsKPiA+ICsgICAgICAgY3B1
LXN1cHBseSA9IDwmdmRkX2NwdV9saXRfczA+Owo+ID4gK307Cj4gPiArCj4gPiArJmNwdV9sMiB7
Cj4gPiArICAgICAgIGNwdS1zdXBwbHkgPSA8JnZkZF9jcHVfbGl0X3MwPjsKPiA+ICt9Owo+ID4g
Kwo+ID4gKyZjcHVfbDMgewo+ID4gKyAgICAgICBjcHUtc3VwcGx5ID0gPCZ2ZGRfY3B1X2xpdF9z
MD47Cj4gPiArfTsKPiA+ICsKPiA+ICsmZ21hYzEgewo+ID4gKyAgICAgICBjbG9ja19pbl9vdXQg
PSAib3V0cHV0IjsKPiA+ICsgICAgICAgcGh5LWhhbmRsZSA9IDwmcmdtaWlfcGh5MT47Cj4gPiAr
ICAgICAgIHBoeS1tb2RlID0gInJnbWlpLWlkIjsKPiA+ICsgICAgICAgcGh5LXN1cHBseSA9IDwm
dmNjXzN2M19zMD47Cj4gPiArICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiAr
ICAgICAgIHBpbmN0cmwtMCA9IDwmZ21hYzFfbWlpbQo+ID4gKyAgICAgICAgICAgICAgICAgICAg
JmdtYWMxX3R4X2J1czIKPiA+ICsgICAgICAgICAgICAgICAgICAgICZnbWFjMV9yeF9idXMyCj4g
PiArICAgICAgICAgICAgICAgICAgICAmZ21hYzFfcmdtaWlfY2xrCj4gPiArICAgICAgICAgICAg
ICAgICAgICAmZ21hYzFfcmdtaWlfYnVzCj4gPiArICAgICAgICAgICAgICAgICAgICAmZ21hYzFf
Y2xraW5vdXQ+Owo+ID4gKyAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gPiArfTsKPiBTaG91bGQg
dGhpcyBiZSBsZWZ0IGRpc2FibGVkIG9uIHRoZSBTb00gZHRzaT8gQW5kIG9ubHkgZW5hYmxlZCBv
biB0aGUKPiBjYXJyaWVyIGJvYXJkLCBpZiB0aGUgY2FycmllciBib2FyZCBoYXMgdGhlIFJKNDUg
amFjaz8KPiBpLmUuIGEgaGFuZGhlbGQgdXNpbmcgdGhlIENNNSBtYXkgbm90IGhhdmUgZXRoZXJu
ZXQKPiBodHRwczovL2dpdGh1Yi5jb20vU3RvbmVkRWRnZS9SZXRyby1MaXRlLUNNNQo+CgpJIHRo
aW5rIHRoYXQgbWFrZXMgc2Vuc2UsIG5vdCBldmVyeSBjYXJyaWVyIGlzIGd1YXJhbnRlZWQgdG8g
aGF2ZSBldGhlcm5ldC4KCj4gPiArCj4gPiArJmdwdSB7Cj4gPiArICAgICAgIG1hbGktc3VwcGx5
ID0gPCZ2ZGRfZ3B1X3MwPjsKPiA+ICsgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gK307Cj4g
PiArCj4gPiArJmhkbWkwIHsKPiA+ICsgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ID4gK307Cj4g
VGhpcyBzaG91bGQgYmUgbW92ZWQgdG8gdGhlIGNhcnJpZXIgYm9hcmQgRFRTIHdoZXJlIGFsbCB0
aGUgb3RoZXIKPiBIRE1JMCBub2RlcyBhcmUuCj4KClRoYXQgbWFrZXMgc2Vuc2UsIEknbGwgbWFr
ZSB0aGlzIGNoYW5nZS4gVGhhbmtzIGZvciB0aGUgZmVlZGJhY2ssIEppbW15LgoKCkpvc2VwaAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
