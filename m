Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE65ED42B88
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Nov 2024 14:37:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SAEe987+JlZQf0reS47BRYR5lwes1y3WIJcUzWU2Iyg=; b=fPQchGYUhz0loX
	FC0PuvSkvBdnO/y7pc4y/F6qkhfu7F/l+MVvYhEIlBUGiQ9V83ARTv9KIHSTXslBQFyAj3mVNRItD
	qumkQI23RZ9PHFRGZMCBeXPnXDBZUg6etIZb/tw3gsu3esOIL8gCOrX6ocNdQRVTXjuDovhnSzKas
	80Z5nDSuSrHel4RpySzjV1LLmx4+V7ZmejTn9okZWmOsVwMi9vUYY7tAzDV4Ve7+BH5f9nTj6wdSg
	9e0r67wqgm7UGxv8iRXUffZoKG7I0Prg4Uv1tPN+J6PR+g43163/kx5qpJG+LuskSwE4qf7HeAKkB
	rPL+VQiPEKFQ2CdEsTJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAs1d-00000003mPc-0JbX;
	Tue, 12 Nov 2024 14:37:49 +0000
Received: from mail-oa1-f47.google.com ([209.85.160.47])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tArzp-00000003m5C-2Gv3;
	Tue, 12 Nov 2024 14:35:58 +0000
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-2884e7fadb8so2864629fac.2;
        Tue, 12 Nov 2024 06:35:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731422156; x=1732026956;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=McjUok6KfDUiGy+BXB2JFJst16pFs7oxIw6Lr01GESI=;
        b=ZEyffz9qaSNq/LLdrjrchjIREv1Izu57aCjT3PfSz6wu5w1nCrJJlDhvRRi4hugrw1
         pqkaLi7TQMYck/s6xrUwPAwX8/OHpgbyivE96MsHX54VbVHoVz9dg/qCXWy8LuzRowBF
         sPTWZ+kXKwkcC2R0EQeUJb6pLF5d6MXik73OoNqwHtbLBRcmTFd6ZaiUr05Q97zqKT7s
         NR/nTGqmG6AUVQtxs6UZLuF0i7vcUbxQz1zjjy0mhGpX5FW53uLSYqLPxQ5gJc7JJB6Z
         MAFZI9bvp9yYxjFEq0sJtkb4gPoH0N9pC85/0AHt8wfjC1mSsASzD8AKkvP5TDg7patK
         BOLQ==
X-Forwarded-Encrypted: i=1; AJvYcCVs0NUDlUIOgQ8iItlXQeUJpwLz/Qa0ixTub3YNQx65mAh+7XeXFMwNROGCsfqtpuimWWiocohFS176KKBELG2t@lists.infradead.org, AJvYcCXA7OYix7vBRJ0LDKv5PBhK/E7ywyNmnrJpFqAIkWzTTjKurkgTmvC9ezhv8EhO1UNHq0tIxUMA02rbjU4pASw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yzroc+P36huct/q+FrslX5rU3UB+TfgOwuNsdw7+cQEy0CL/tyM
	PVsSzAGyNVc8it4a249HM9b0t7NAw6JISexiCV/9XIOddeVGSA4n/Q2c3jCC4hgKUQ==
X-Google-Smtp-Source: AGHT+IETF8IOcGSaG1bftC/L13y+TcrSKPCN1pAAdkurgcbsNEybTsDh8IWPY/rFijt/AiHrtpA7Hw==
X-Received: by 2002:a05:6870:d95:b0:25e:1cdf:c604 with SMTP id 586e51a60fabf-2956026e862mr13705562fac.31.1731422155983;
        Tue, 12 Nov 2024 06:35:55 -0800 (PST)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com. [209.85.216.45])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7f43b4dd027sm6543711a12.21.2024.11.12.06.35.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2024 06:35:55 -0800 (PST)
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-2e2ed2230d8so4572991a91.0;
        Tue, 12 Nov 2024 06:35:55 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUNFGFXnfJ7/VA6dbtufvBtZQaQTCewJmZYPCxv2y45Fz1u1iRt9jEGMTzmXKX946rMt0XfT8h8RR5wIRC3Sj4m@lists.infradead.org, AJvYcCXh1KR/f1Ld1YCoFuN/I7btoeLy0ZGiedLEzQUPSXrLNrVjL8VBJUShvvl469nuOdR0dY5Vr5IhHOGSqqQHwaI=@lists.infradead.org
X-Received: by 2002:a17:90b:3146:b0:2e2:cf63:224c with SMTP id
 98e67ed59e1d1-2e9b17838ddmr19179314a91.35.1731422155186; Tue, 12 Nov 2024
 06:35:55 -0800 (PST)
MIME-Version: 1.0
References: <20241111181807.13211-1-tszucs@linux.com> <20241111181807.13211-3-tszucs@linux.com>
 <9fbdf05c-42e6-4ac5-9542-805200bc8c87@kwiboo.se> <260af427ae64d6f3b02a1579ee83eb3b@manjaro.org>
In-Reply-To: <260af427ae64d6f3b02a1579ee83eb3b@manjaro.org>
From: =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@linux.com>
Date: Tue, 12 Nov 2024 15:35:44 +0100
X-Gmail-Original-Message-ID: <CA+Gksr+WvS-S+jeYYG=Bo9cemvnJmjsmU4aj9YnD3t8-HY7wbw@mail.gmail.com>
Message-ID: <CA+Gksr+WvS-S+jeYYG=Bo9cemvnJmjsmU4aj9YnD3t8-HY7wbw@mail.gmail.com>
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Enable sdmmc2 on rock-3b and
 set it up for SDIO devices
To: Dragan Simic <dsimic@manjaro.org>
Cc: Jonas Karlman <jonas@kwiboo.se>, =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@linux.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, Chukun Pan <amadeus@jmu.edu.cn>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_063557_607730_E8A34697 
X-CRM114-Status: GOOD (  27.99  )
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

SGkgSm9uYXMsIERyYWdhbiwKCkkgdGhpbmsgaXQgd2FzIHRvdGFsbHkgZmluZSB0byBkaXNhYmxl
IHNkbW1jMiBhdCBmaXJzdCwgZXNwZWNpYWxseSBpZgppdCBjb3VsZG7igJl0IGJlIHRlc3RlZCBv
ciB3YXNu4oCZdCBuZWVkZWQgcmlnaHQgYXdheS4gRnJvbSB3aGF0IEnigJl2ZQpzZWVuLCB0aGlz
IGJvYXJkIHdvcmtzIGdyZWF0IGV2ZW4gYXQgaGlnaGVyIGNsb2NrIHNwZWVkcyB0aGFuIHdoYXQK
cmszNTZ4LWJhc2UuZHRzaSBzdWdnZXN0cy4gSSBkb27igJl0IGhhdmUgYWNjZXNzIHRvIHRoZSBS
SzM1NjggZXJyYXRhLAphbmQgdGhlcmUgZG9u4oCZdCBzZWVtIHRvIGJlIGFueSBsaW1pdHMgbWVu
dGlvbmVkIGluIHRoZSBUUk0gZWl0aGVyLgpPdmVyYWxsLCB0aGlzIGJvYXJkIGlzIGRvaW5nIGp1
c3QgZmluZSBhcyBpdCBpcy4KClJlZ2FyZGluZyBkZXZpY2UgdHJlZSBvdmVybGF5cywgdGhleSB3
b3VsZCBiZSBpZGVhbCBmb3IgaW1wbGVtZW50aW5nCnNlY29uZGFyeSBmdW5jdGlvbnMsIHN1Y2gg
YXMgUENJZSBlbmRwb2ludCBtb2RlIGZvciB1c2VycyB3aXRoCnNwZWNpZmljIHJlcXVpcmVtZW50
cy4gSG93ZXZlciwgdGhlIHByaW1hcnkgZnVuY3Rpb25zIGZvciBQQ0llIG9uIHRoZQpNMkUgd2ls
bCBiZSByb290IGNvbXBsZXggbW9kZSwgYWxvbmcgd2l0aCBTRElPIGhvc3QsIGV0Yy4gSW4gbXkg
dmlldywKdGhlIGhhcmR3YXJlIGlzIHdlbGwtZGVzaWduZWQgYW5kIGludGVyY29ubmVjdGVkLiBV
c2VycyBoYXZlIGEKcmVhc29uYWJsZSBleHBlY3RhdGlvbiB0aGF0IHRoZXNlIHByaW1hcnkgZnVu
Y3Rpb25zIHNob3VsZCB3b3JrCnNlYW1sZXNzbHkgd2l0aG91dCBhZGRpdGlvbmFsIGNvbmZpZ3Vy
YXRpb24sIHJpZ2h0IG91dCBvZiB0aGUgYm94LgoKRHJhZ2FuLCB3aGF0IGRpZCB5b3UgbWVhbiBi
eSBTRElPIHJlbGF0ZWQgcG93ZXIgdGltaW5nIHJlcXVpcmVtZW50cz8KCktpbmQgcmVnYXJkcywK
VGFtYXMKCgoKVGFtw6FzIFN6xbFjcwp0c3p1Y3NAbGludXguY29tCgpPbiBUdWUsIE5vdiAxMiwg
MjAyNCBhdCA1OjQx4oCvQU0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+IHdyb3Rl
Ogo+Cj4gSGVsbG8gSm9uYXMgYW5kIFRhbWFzLAo+Cj4gT24gMjAyNC0xMS0xMSAyMDowNiwgSm9u
YXMgS2FybG1hbiB3cm90ZToKPiA+IE9uIDIwMjQtMTEtMTEgMTk6MTcsIFRhbcOhcyBTesWxY3Mg
d3JvdGU6Cj4gPj4gRW5hYmxlIFNESU8gb24gUmFkeGEgUk9DSyAzIE1vZGVsIEIgTS4yIEtleSBF
LiBBZGQgYWxsIHN1cHBvcnRlZCBVSFMtSQo+ID4+IHJhdGVzIGFuZAo+ID4+IGVuYWJsZSAyMDAg
TUh6IG1heGltdW0gY2xvY2suIEFsc28sIGFsbG93IGhvc3Qgd2FrZXVwIHZpYSBTRElPIElSUS4K
PiA+Pgo+ID4+IFNpZ25lZC1vZmYtYnk6IFRhbcOhcyBTesWxY3MgPHRzenVjc0BsaW51eC5jb20+
Cj4gPj4gLS0tCj4gPj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXJvY2st
M2IuZHRzIHwgOCArKysrKysrLQo+ID4+ICAxIGZpbGUgY2hhbmdlZCwgNyBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCj4gPj4KPiA+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYi5kdHMKPiA+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTY4LXJvY2stM2IuZHRzCj4gPj4gaW5kZXggMjQyYWY1MzM3Y2RmLi5iNzUy
N2JhNDE4ZjcgMTAwNjQ0Cj4gPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1Njgtcm9jay0zYi5kdHMKPiA+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU2OC1yb2NrLTNiLmR0cwo+ID4+IEBAIC02ODgsMTQgKzY4OCwyMCBAQCAmc2RtbWMyIHsK
PiA+PiAgICAgIGNhcC1zZC1oaWdoc3BlZWQ7Cj4gPj4gICAgICBjYXAtc2Rpby1pcnE7Cj4gPj4g
ICAgICBrZWVwLXBvd2VyLWluLXN1c3BlbmQ7Cj4gPj4gKyAgICBtYXgtZnJlcXVlbmN5ID0gPDIw
MDAwMDAwMD47Cj4gPj4gICAgICBtbWMtcHdyc2VxID0gPCZzZGlvX3B3cnNlcT47Cj4gPj4gICAg
ICBub24tcmVtb3ZhYmxlOwo+ID4+ICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+
PiAgICAgIHBpbmN0cmwtMCA9IDwmc2RtbWMybTBfYnVzNCAmc2RtbWMybTBfY2xrICZzZG1tYzJt
MF9jbWQ+Owo+ID4+ICsgICAgc2QtdWhzLXNkcjEyOwo+ID4+ICsgICAgc2QtdWhzLXNkcjI1Owo+
ID4+ICsgICAgc2QtdWhzLXNkcjUwOwo+ID4KPiA+IEkgdGhvdWdodCB0aGF0IGxvd2VyIHNwZWVk
cyB3YXMgaW1wbGllZCBieSB1aHMtc2RyMTA0Pwo+Cj4gTGFzdCB0aW1lIEkgd2VudCB0aHJvdWdo
IHRoZSBNTUMgZHJpdmVycywgdGhleSB3ZXJlIGltcGxpZWQuICBJSVJDLAo+IHN1Y2ggYmFja3dh
cmQgbW9kZSBjb21wYXRpYmlsaXR5IGlzIGFjdHVhbGx5IGEgcmVxdWlyZW1lbnQgbWFkZSBieQo+
IHRoZSBNTUMgc3BlY2lmaWNhdGlvbi4KPgo+ID4+ICAgICAgc2QtdWhzLXNkcjEwNDsKPiA+PiAr
ICAgIHNkLXVocy1kZHI1MDsKPiA+PiAgICAgIHZtbWMtc3VwcGx5ID0gPCZ2Y2MzdjNfc3lzMj47
Cj4gPj4gICAgICB2cW1tYy1zdXBwbHkgPSA8JnZjY18xdjg+Owo+ID4+IC0gICAgc3RhdHVzID0g
ImRpc2FibGVkIjsKPiA+PiArICAgIHdha2V1cC1zb3VyY2U7Cj4gPj4gKyAgICBzdGF0dXMgPSAi
b2theSI7Cj4gPgo+ID4gVGhpcyBzaG91bGQgcHJvYmFibHkgYmUgZW5hYmxlZCB1c2luZyBhbiBk
dC1vdmVybGF5LCB0aGVyZSBpcyBubwo+ID4gU0RJTyBkZXZpY2UgZW1iZWRkZWQgb24gdGhlIGJv
YXJkIGFuZCB0aGUgcmVhc29uIEkgbGVmdCBpdCBkaXNhYmxlZAo+ID4gaW4gb3JpZ2luYWwgYm9h
cmQgRFQgc3VibWlzc2lvbi4KPgo+IEp1c3Qgd2VudCB0aHJvdWdoIHRoZSBST0NLIDNCIHNjaGVt
YXRpYywgdmVyc2lvbiAxLjUxLCBhbmQgSSB0aGluawo+IHRoZXJlIHNob3VsZCBiZSBubyBuZWVk
IGZvciBhIHNlcGFyYXRlIG92ZXJsYXksIGJlY2F1c2Ugc2RtbWMyIGdvZXMKPiB0byB0aGUgTS4y
IHNsb3Qgb24gdGhlIGJvYXJkLCB3aGljaCBhbnkgdXNlciBjYW4gcGx1ZyBhbiBNLjIgbW9kdWxl
Cj4gaW50bywgYW5kIHRoZSBTRElPIGludGVyZmFjZSBpcyBraW5kLW9mIHNlbGYtZGlzY292ZXJh
YmxlLgo+Cj4gT2YgY291cnNlLCBhbGwgdGhhdCB1bmxlc3MgdGhlcmUgYXJlIHNvbWUgaG9ycmli
bHkgbG9va2luZyA6KSBlcnJvcgo+IG1lc3NhZ2VzIGVtaXR0ZWQgdG8gdGhlIGtlcm5lbCBsb2cg
d2hlbiBub3RoaW5nIGlzIGFjdHVhbGx5IGZvdW5kLAo+IGluIHdoaWNoIGNhc2UgdGhlIFNESU8v
TU1DIGRyaWVycyBzaG91bGQgYmUgZml4ZWQgZmlyc3QuICBBbHNvLCBJJ20KPiBub3Qgc3VyZSB3
aGF0IGRvIHdlIGRvIHdpdGggdGhlIHBvc3NpYmxlIFNESU8tcmVsYXRlZCBwb3dlciB0aW1pbmcK
PiByZXF1aXJlbWVudHM/CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
