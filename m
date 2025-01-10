Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3AD6E77188
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jan 2025 15:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qi2Dboo+slMAmHDb+DYIIhEwXM1Zl9haAtMkOIowBAk=; b=lB7LEqP2eMf1Va
	dyT6Ie3GMoWDO3XwDGra/3CX+SMJkUDLOd60ss66J2VGUexUM/MJ15zwbdIo57UUrnQ7578n/QXiR
	WwdZxtlf0qpIOPlXJEZXjRXyRbLgaLElDiTvwaoDFgqdcNzRXq04BwlhWagGXXVL1VLqHAJgAMNp5
	4tblW86Q7vcsZD9v8+MNnM1cIEe/6whdS2o9lpEjHLSCphkSDi23jdt7/rWO0J6YJ0MQP8bq6Y3lC
	4KXBqfoKT9m6HcpKkWD8iRRExLlypEzTv+pNU+r4KZmT3nXTnpdlIMcE8hP374x3urrUPp62gBC9T
	6XCJbm7CgnO9k1ALK8bQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWHPN-0000000G7jS-2JcM;
	Fri, 10 Jan 2025 15:58:49 +0000
Received: from mail-qv1-xf2e.google.com ([2607:f8b0:4864:20::f2e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWGyF-0000000FwLm-0NST;
	Fri, 10 Jan 2025 15:30:48 +0000
Received: by mail-qv1-xf2e.google.com with SMTP id 6a1803df08f44-6d8ece4937fso16837896d6.2;
        Fri, 10 Jan 2025 07:30:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736523045; x=1737127845; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0zrOTe4P32MUWq2MQOl7BIWqEU3Y6SIXQqIMZmB2WSs=;
        b=KIEOBz/tL95dZZc+VLKUDbeDfI4W4XmksgpoezWuhXNfS9RlonQ6AArO/lIgU5yq/1
         Ro5mVz57xEUQG1ZsoKKAJ0p6IV+0BzMCzj0OJquu+agTUq/S0RuiF+/zOkGcQX828FqJ
         oPf01Ju7MzkriPPnJoTwn7tDgZh/y3g7ZjDWerdTe3BpeywT98kk7JCt7poisZFK8h60
         tN24EMj93WRYOEgjaQC7XZDassJHFYjzAfr7+9zzgZz6z/+z7UzUhp+zwFcc53QnxmyW
         XNCVD7+LoPkF9Mv8W2xSg7PAbB0g3RGemzIPgREbZ/JFtMIBwOYlsalrR1U/gzzSdtwO
         V4Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736523045; x=1737127845;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0zrOTe4P32MUWq2MQOl7BIWqEU3Y6SIXQqIMZmB2WSs=;
        b=WTysg4r/ORZLMckPaooRTdLFwf4cPT9sh+ftbgozOsZ0iTxo2gAJrHN5hSjim3K44e
         2YNGC7j07rbx4kjXTGE/4Hn77e+tWpThrG/E9BAUplImoFuKZYnl0tDWhHHGKaX2YIId
         jUXcLuG4WmE18nCaKLZD8QtV7j3D6crCvNaZVAMHBf99/UWJ9MZY4hHa6hhbxBmnthR0
         AbuvRNc4P2DICellk3tpif2Ibu8rVNxz7Szvps3U9lvlz4VUoyI9S3EhzibEQMf2mhJ9
         C7v8Y5MOEMj9e1MU4h+2b6gFyH7cwZXfxpezFMhJYKzetDogHaf6slbE5qALvumfqgZG
         7rOA==
X-Forwarded-Encrypted: i=1; AJvYcCUqrRfrrF3NvhZMQgEusI+oPLPX3yo+aU9Nc1IhZ5vcMnkpIz0tkUKqeews7kPmBXXAIT+MsJRGMC2NCbNwDEs=@lists.infradead.org, AJvYcCUtcW4608WXqqj5VB0SRGid80Brc4xX+2B3d1KsO8O+RChak0qH+eflK7CUlL1UiIIZbT2Lnu1ocaId9MWYl6+E@lists.infradead.org
X-Gm-Message-State: AOJu0YyusrtxCOOaCiQoIVEvnBO2m9Vc0SY7EAtD974jwh0vMSBxQxgN
	Lb6JSRvEjR2NLAZdujbopK0e/je9ycyvUTHQLpHmORBVmPRxOv8sLuUrXp8rY1VJJ1h/qahz54y
	C387akE5OokZYxq4LmHmhfbUdQeFpKamMXX8=
X-Gm-Gg: ASbGnctEKV2eVjEuCeq1Oblmwk7+JJGNq+HFHCw+7YJ+RwywY40Fy6jDG5fyD8QyGPj
	8mg4B2yFJP5nTOCbRYuBMPHUzDDfh6b10M5FRp4WctIGRmXsBcIG1ANLqekTw5BQZiiEzyiI=
X-Google-Smtp-Source: AGHT+IEnoFFUcCDxyWMJMccGcHdpcHtEs8d1tHvHYzHwmCtEP6B4k/qEsVE4N1SvaESd/DasJz0P1wR/TvZ73iY/h6o=
X-Received: by 2002:ad4:5dec:0:b0:6d4:1425:6d2d with SMTP id
 6a1803df08f44-6df9b2d62b2mr177775706d6.43.1736523043867; Fri, 10 Jan 2025
 07:30:43 -0800 (PST)
MIME-Version: 1.0
References: <20250108-rk3588-h96-max-v58-v2-0-522301b905d6@gmail.com>
 <1950286.IobQ9Gjlxr@diego> <CABjd4Yy4Qd1rD43u3B-s=HxVBnaQt7fSgP9NFY2YeY0eKMESvQ@mail.gmail.com>
 <2731770.KRxA6XjA2N@diego>
In-Reply-To: <2731770.KRxA6XjA2N@diego>
From: Alexey Charkov <alchark@gmail.com>
Date: Fri, 10 Jan 2025 19:30:33 +0400
X-Gm-Features: AbW1kvbKtZndFgN6a8gaF4CRnBwYqi1xlW_2MAE9e2Mp3DOEVgrwl-t4iXkVcz0
Message-ID: <CABjd4Yy48dwZA83XRps_L_sowA_e95PcXYqvAo2J+xVydSA44A@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: Add SPDIF nodes to RK3588(s)
 device trees
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250110_073047_135652_8ED8C682 
X-CRM114-Status: GOOD (  30.66  )
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

T24gVGh1LCBKYW4gOSwgMjAyNSBhdCAyOjI44oCvQU0gSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4gd3JvdGU6Cj4KPiBIaSBBbGV4ZXksCj4KPiBBbSBNaXR0d29jaCwgOC4gSmFudWFy
IDIwMjUsIDE2OjMwOjM1IENFVCBzY2hyaWViIEFsZXhleSBDaGFya292Ogo+ID4gT24gV2VkLCBK
YW4gOCwgMjAyNSBhdCAyOjAx4oCvUE0gSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4g
d3JvdGU6Cj4gPiA+Cj4gPiA+IEhpIEFsZXhleSwKPiA+ID4KPiA+ID4gQW0gTWl0dHdvY2gsIDgu
IEphbnVhciAyMDI1LCAxMDowOTowNyBDRVQgc2NocmllYiBBbGV4ZXkgQ2hhcmtvdjoKPiA+ID4g
PiBSSzM1ODhzIGhhcyBmb3VyIFNQRElGIHRyYW5zbWl0dGVycywgYW5kIHRoZSBmdWxsIFJLMzU4
OCBoYXMgc2l4Lgo+ID4gPiA+IFRoZXkgYXJlIGZ1bGx5IGNvbXBhdGlibGUgdG8gUkszNTY4IG9u
ZXMuIEFkZCByZXNwZWN0aXZlIG5vZGVzCj4gPiA+ID4gdG8gLmR0c2kgZmlsZXMuCj4gPiA+Cj4g
PiA+IFdoaWxlIGl0IG1heSBzZWVtIHRoYXQgd2F5LCB3ZSBzdGlsbCB3YW50IHNvYy1zcGVjaWZp
YyBjb21wYXRpYmxlcywKPiA+ID4gdG8gZnV0dXJlLXByb29mIHRoaXMuCj4gPiA+Cj4gPiA+IEku
ZS4gZ29pbmcgdGhlIHRoZQo+ID4gPiAgICAgICAgIGNvbXBhdGlibGUgPSAicm9ja2NoaXAscmsz
NTg4LXNwZGlmIiwgInJvY2tjaGlwLHJrMzU2OC1zcGRpZiI7Cj4gPiA+IHdheSwgc28gdGhhdCBu
b3cgdGhpbmdzIGNhbiBqdXN0IG1hdGNoIGFnYWluc3QgdGhlIHJrMzU2OCwgYnV0IGlmIHNvbWUK
PiA+ID4gZmF1bHQgZW1lcmdlcyBsYXRlciBvbiB0aGUgY29kZSBjYW4gYmUgZml4ZWQgd2l0aCB0
aGUgRFQgc3RheWluZyBqdXN0Cj4gPiA+IGNvbXBhdGlibGUuCj4gPiA+Cj4gPiA+IFRoZSBzcGRp
ZiBhbHNvIGhhcyBhbiBleGFtcGxlIGFscmVhZHkgZm9yIGFsbCB0aGUgc3BkaWYgdmFyaWFudHMg
dGhhdCBhcmUKPiA+ID4gY29tcGF0aWJsZSB0byB0aGUgcmszMDY2IFszXSwgc28gaXQnZCBuZWVk
IGFub3RoZXIgIml0ZW1zIiBibG9jayBmb3IgdGhpbmdzCj4gPiA+IGJlaW5nIGNvbXBhdGlibGUg
d2l0aCB0aGUgcmszNTY4Lgo+ID4KPiA+IEhtbSwgaWYgd2UgYXJlIHRvIGJlbGlldmUgdGhlIGRy
aXZlciAoWzRdLCBbNV0pLCB0aGV5IGFyZSBhbGwgdGhlIHNhbWUKPiA+IGFzIHRoZSBnb29kIG9s
ZCBSSzMzNjYsIHdoaWNoIGluIHR1cm4gaXMgc29mdHdhcmUgY29tcGF0aWJsZSB0byB0aGUKPiA+
IGdvb2Qgb2xkIFJLMzA2Ni4gU2FtZSBzZWVtcyB0byBhcHBseSB0byBSSzM1NzYsIGdpdmVuIHRo
YXQgaXRzIGN1cnJlbnQKPiA+IC5kdHNpIGp1c3QgcmVmZXJlbmNlcyB0aGUgInJvY2tjaGlwLHJr
MzU2OC1zcGRpZiIgY29tcGF0aWJsZS4KPgo+IEkgd2FzIGZvciBhIHNob3J0IHdoaWxlIGFmcmFp
ZCB0aGF0IHNvbWV0aGluZyBzbGlwcGVkIGludG8gbWFpbmxpbmUgOi0pCj4gQnV0IEkgZ3Vlc3Mg
dGhhdCAicm9ja2NoaXAscmszNTY4LXNwZGlmIiBjb21wYXRpYmxlIG9uIHRoZSByazM1NzYgaXMK
PiBvbmx5IHVzZWQgaW4gdGhlIHZlbmRvci1rZXJuZWwuCgpTb3JyeSwgZGlkbid0IG1lYW4gdG8g
Z2l2ZSB5b3UgYSBoZWFydCBhdHRhY2sgOi0pCgo+ID4gRG9lcyBpdCBtZWFuIHRoYXQgdGhlIGJp
bmRpbmcgbmVlZHMgdG8gYmUgcmVzdHJ1Y3R1cmVkIHNvIHRoYXQgdGhlCj4gPiByZXF1aXJlZCBm
YWxsYmFjayBjb21wYXRpYmxlICgicm9ja2NoaXAscmszMDY2LXNwZGlmIikgYXBwbGllcyB0byBh
bGwKPiA+IHZhcmlhbnRzPyBPciBzaGFsbCB0aGUgZXhpc3Rpbmcgb25lcyBiZSBsZWZ0IGFsb25l
LCBhbmQganVzdCBSSzM1ODgKPiA+IGFuZCBSSzM1NzYgYWRkZWQgaW5zaWRlIHRoYXQgIml0ZW1z
IiBibG9jaz8KPgo+IEkgbm90aWNlZCB0aGF0IHRoZSBzcGRpZiBiaW5kaW5nIGhhcyBoYWQgYW4g
aW50ZXJlc3RpbmdzIGdyb3d0aCBvdmVyCj4gdGhlIHllYXJzLCB3aXRoIHNvbWUgc29jcyBiZWlu
ZyBvdXRsaWVycy4KPgo+IEkgd291bGRuJ3QgY2hhbmdlIHRoZSB3aG9sZSBiaW5kaW5nLCBlc3Bl
Y2lhbGx5IGFzIHRoYXQgdGhlbiB0b3VjaGVzCj4gZXN0YWJsaXNoZWQgc3R1ZmYuCgpOb3RlZCwg
dGhhbmtzLgoKPiBUaGUgcXVlc3Rpb24gd291bGQgYmUgd2VhdGhlciB0byBhZGQgdGhlIHJrMzU4
OCArIHJrMzU3NiB0byB0aGUKPiBleGlzdGluZyBlbnVtIG1hcmtpbmcgdGhlbSBhcyBjb21wYXRp
YmxlIHdpdGggdGhlIHJrMzA2Niwgb3IgY3JlYXRlCj4gYSBzZXBhcmF0ZSBpdGVtcyBibG9jayBh
bmQganVzdCBzYXlpbmcgdGhlIHJrMzU4OC1zcGRpZiBpcyBjb21wYXRpYmxlIHdpdGgKPiB0aGUg
cmszNTY4IG9uZSwgbGlrZToKPgo+IFsuLi5dCj4gICAgICAgLSBjb25zdDogcm9ja2NoaXAscmsz
NTY4LXNwZGlmCj4gICAgICAgLSBpdGVtczoKPiAgICAgICAgICAgLSBlbnVtOgo+ICAgICAgICAg
ICAgICAgLSByb2NrY2hpcCxyazMxMjgtc3BkaWYKPiAgICAgICAgICAgICAgIC0gcm9ja2NoaXAs
cmszMTg4LXNwZGlmCj4gICAgICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzI4OC1zcGRpZgo+ICAg
ICAgICAgICAgICAgLSByb2NrY2hpcCxyazMzMDgtc3BkaWYKPiAgICAgICAgICAgLSBjb25zdDog
cm9ja2NoaXAscmszMDY2LXNwZGlmCj4gICAgICAgLSBpdGVtczoKPiAgICAgICAgICAgLSBlbnVt
Ogo+ICAgICAgICAgICAgICAgLSByb2NrY2hpcCxyazM1NzYtc3BkaWYKPiAgICAgICAgICAgICAg
IC0gcm9ja2NoaXAscmszNTg4LXNwZGlmCj4gICAgICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJr
MzU2OC1zcGRpZgo+IFsuLi5dCj4KPiBXaXRoIHRoZSBSSzMwNjYgYmVpbmcgcmVsZWFzZWQgaW4g
MjAxMiwgcGFydCBvZiBtZSBpcyBhbWF6ZWQgdGhhdCB0aGF0Cj4gYmxvY2sgc3Vydml2ZWQgdGhh
dCBsb25nLCBvbiB0aGUgb3RoZXIgaGFuZCBnb2luZyB3aXRoIHRoZSBhYm92ZSBzbmlwcGV0Cj4g
c29tZWhvdyBmZWVscyBzYXZlciA7LSkgLgoKTGV0IG1lIGZpcnN0IHN1Ym1pdCBhIHNob3J0IHNl
cmllcyBkZWFsaW5nIHdpdGggUkszNTg4IGFsb25lLCBhcwp0aGF0J3MgdGhlIG9ubHkgb25lIEkg
Y2FuIHRlc3QgYXQgdGhlIG1vbWVudC4KCkJlc3QsCkFsZXhleQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
