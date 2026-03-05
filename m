Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60DF6EEF313
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Mar 2026 07:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hnxq1d+lgPioPMakGL6rm7Iy6v2ZFIbga1jMDfPJOsk=; b=F3YfbygYYjdAdQ
	tEVdMK5obYj4Z5vDAGARd1JBgp8x0sWIUPFXdBn7apHZyQYL0Ydp8g5GofT43kA+XMSuD7cd2ufPl
	aVjvriYu/zzoML8M61gh/Xsd1CjbOQCHnk0Xp3gOE/cB8iizbsoUnEBhqc6ZKnJbbtDWqOONBV+J1
	44Libnv5mHRYSkFJhh0rq2B6AYzVro+PnIEAINlQcxjc3dxtASQzGrObOt+KgPzJzMrR0bbIBxVW1
	36LH3R3ZOPNB7M8PZtGf2h3t5gpCnvw1Wyy6E/XBUB788d2DatOZuJvTaGUjxW95/FYyK+qoCR0od
	VsP6JkZcLGbxjyH0heeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy33K-000000015NV-2ts7;
	Thu, 05 Mar 2026 07:23:22 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy33H-000000015MC-0SVV
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Mar 2026 07:23:20 +0000
Received: by mail-wr1-x42c.google.com with SMTP id ffacd0b85a97d-439af00d33cso4435014f8f.1
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Mar 2026 23:23:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772695397; cv=none;
        d=google.com; s=arc-20240605;
        b=Lq+TiWny8Z9kxlnGTirHw6HAz45H+bHsHfHpAZro0MRivbtz0VSi5sv7TDCUzwYDWV
         AYwfuZXdBcNI8aSDHgydXpj5jYR9Tj+8QEOcqQ4Lx3UnEsZKNP9bWMeFFKksKYxaCmek
         kcbbbpbr58mg9nzH4AqUv0I4NzBCU9mAT1ZKoDeklZs8QMe4iYBgoXVt3ywY/dVrrdet
         HEknxRN7KnK5Mf1PuRlphKq6PMS0oNqk6OnotgICQd+OTvI0iWyJ9HDYvRaHIH2gMWjx
         p/jDHGNhxZPvnyCUEIsP5kqACYRj10dmQplFfRzXZD9nqrfsJxxhcmMh3n5/SDqd/bc/
         d8Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=DfTie6sjjRqoc8VvjGkPKWkDcR9MnH5s+DJKluUMEqw=;
        fh=/wo+N+Df/tfpiJbuf7KgWT8jCVuTXiaIujGkNVCAzkQ=;
        b=O+4K0vxB4lE5sMwqy9aKwnATpzuQ/5pacJ9+n+fC8b+7mae4bPmdaWfPJrFBH0rOkB
         DtCg0Sj7j20BJbnH770GRUGQDwPAqtwW0TrXLEXALq86bnnIalGDJN46vPKPeanrCUmT
         uN/aUJ69zIdLo8gczdoAhEPoekCtkeeHeTLDGK6TSAx21gwwYvNZrRdem7fxAuUZd3WP
         3lLri4NwcI3BVhIBl/O3qDaEblR2CTS8C86EfN1SFpF2m8mXDAY5cqhG+cQj+f08z7PT
         DrHrsRjNyFGgQ7TnL4L6sGLb0uCUiPCbiGFSEOst+lJwBPNY2mK30jQ4Hk4kshbuc47e
         ds5A==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772695397; x=1773300197; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DfTie6sjjRqoc8VvjGkPKWkDcR9MnH5s+DJKluUMEqw=;
        b=Rtua5nYzH9tmiQwdQbQhv8rKX1kFdMWOVwVKwPznak+rngJOBRwS9wY1wn2tkupwQC
         bW2jO61OBcpZF9htvasheehXweDswXs4Ey8z70UqT7Ug38FPG6ZKqCnQOVCOckDTUilv
         kAplVZ1oWGpCJmZeutjK4VqoQbKEbrN26JR/PMDEtE/S6uTXcXC36xNZdRCeHUHAI+tp
         2/BsQxZptfjEKI/tIYMt05fh8qizXHsrUPXyh3g/QnYNakrm+lopKK7dj7OURMP6hGQV
         3XF+/KM1ajP1aBWd+ApADam3h/xEOlVhtNvrP0mq9yhGz9T8RsgLGUR2dn8G1Vrl99Gl
         neIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772695397; x=1773300197;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=DfTie6sjjRqoc8VvjGkPKWkDcR9MnH5s+DJKluUMEqw=;
        b=EmPM4C0DWjiaiJujhWcbtiw+ovl/njekPBXbiHSkKuM1cF4rrXx9sCPxmbj5lH6qyM
         6VkQsHzZsh6D9V+Nl+hz3bif3n3Eanp+klFjZRcpfBasy5wYBlGybXidk3AgwDd59FRi
         TfmSga5PJDt/etMdjg7vVkttCirnMC8fFh9hMEIzh41lieijdgckXxWnnuKsxEYHw0kt
         1NxXu+uCbmCmE/WRmXUygPenxbVLNenJw1y4sPxZm8t4pd5fvFKnu34bEKc9t/gpUwuY
         87HhI+bboTm/oMMXsJoU7zchcNYqndEOpNjBKM/9qt0pomUDbRwlkJ7pdSGTLs0/kl14
         NU2Q==
X-Forwarded-Encrypted: i=1; AJvYcCXDn03Dk0DJG1T4oHHfPADa1jSN96it5eWD+EneG2c2IXZOb2Q+YeJMuJxPHibublkLjknPuL/qHUEyibAFOA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwpgzBGeGG8e0FkSXADBZBozqb67VJgSEiFc6dclfvtSXYfZCBb
	SIeQeZMsGVYRc3E26QnoIVSiltYQXmgra1Qbx4livIF/NAcnULAfoL6JOjfdyVHlMV6M5f83SQ7
	CsMuUg000vlxSSUXcsmpKS1duX4Qm7oQ=
X-Gm-Gg: ATEYQzxo+LAD3MCfkPulT/GTGoscwhWGGkB08UkEC+9jEXxAif03PcS81h96L17Mk8h
	QKcgdiD5Fneu8XyyYv0XLcTsstrRRMmoQlUyLKuI4OhmkiUhpf3haHn3dEEo7hXT20Pu3AVdrbS
	jyU9sBxjRgPNsnd1y+Na1UhSHeCVYLSrMZdIY0xbrBsoBBuzZDU+HiVbBXo+sOpYZOPr6qMpSLi
	Sv7RvS3u7BdT/Xv1QKuYDMiOsbEzudCnl8M4/XeNRimn1PvQDoWoA0VU8Jo9S4S50QSALZ8Lrz+
	SBeeJrRoBgPfV/ix0fRerSTy+XDJcTtdmzWU5KU=
X-Received: by 2002:a05:6000:430e:b0:439:b791:f91b with SMTP id
 ffacd0b85a97d-439c7fad55cmr8856048f8f.13.1772695396641; Wed, 04 Mar 2026
 23:23:16 -0800 (PST)
MIME-Version: 1.0
References: <20260228205418.2944620-1-dennis@ausil.us> <20260228205418.2944620-3-dennis@ausil.us>
 <CALWfF7LZV07x7zAgufE_aa58s7x6e_ODAM2LgZqjbEakDticpA@mail.gmail.com>
 <CAABkxwsJ2ZnytCcHEvXWzNkjwzNThoTR23FAeHJLdf4JjXJEMg@mail.gmail.com>
 <CALWfF7+gdNqSgzk4uAnVRkG8vT9FwJDV46VXpb26hd7BzdaGcw@mail.gmail.com> <CAABkxwtG2e5LpjS-sScmn46DY3eXd6tyNCc1oNHKqoaO+PVwuA@mail.gmail.com>
In-Reply-To: <CAABkxwtG2e5LpjS-sScmn46DY3eXd6tyNCc1oNHKqoaO+PVwuA@mail.gmail.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Thu, 5 Mar 2026 01:23:05 -0600
X-Gm-Features: AaiRm51FK2TekjfReO5yyq_AsAFtqk-i8QQCiDNrxrloJyJp6EjAnYYZQPYBnc0
Message-ID: <CALWfF7+_wRDW1UpV-Z05OOqQYDH=mS50aqKf46WvdHJubg7gKA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Orange Pi 5 Pro board support
To: Dennis Gilmore <dennis@ausil.us>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, 
	Hsun Lai <i@chainsx.cn>, Jonas Karlman <jonas@kwiboo.se>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, 
	John Clark <inindev@gmail.com>, Michael Opdenacker <michael.opdenacker@rootcommit.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Andrew Lunn <andrew@lunn.ch>, 
	Alexey Charkov <alchark@gmail.com>, Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_232319_178319_2412DA30 
X-CRM114-Status: GOOD (  18.92  )
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

T24gVGh1LCBNYXIgNSwgMjAyNiBhdCAxMjo1MOKAr0FNIERlbm5pcyBHaWxtb3JlIDxkZW5uaXNA
YXVzaWwudXM+IHdyb3RlOgo+Cj4gT24gVHVlLCBNYXIgMywgMjAyNiBhdCA5OjQ14oCvUE0gSmlt
bXkgSG9uIDxob255dWVua3d1bkBnbWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+IE9uIFR1ZSwgTWFy
IDMsIDIwMjYgYXQgMTo0M+KAr1BNIERlbm5pcyBHaWxtb3JlIDxkZW5uaXNAYXVzaWwudXM+IHdy
b3RlOgo+ID4gPgo+ID4gPiBPbiBNb24sIE1hciAyLCAyMDI2IGF0IDExOjU34oCvUE0gSmltbXkg
SG9uIDxob255dWVua3d1bkBnbWFpbC5jb20+IHdyb3RlOgo+ID4gPiA+Cj4gPiA+ID4gSGkgRGVu
bmlzLAo+ID4gPiA+Cj4gPiA+ID4gU29tZSBjdXJpb3NpdGllcyBiZWxvdywKPiA+ID4gPgo+ID4g
PiA+IE9uIFNhdCwgRmViIDI4LCAyMDI2IGF0IDI6NTTigK9QTSA8ZGVubmlzQGF1c2lsLnVzPiB3
cm90ZToKPiA+ID4gPiA8c25pcD4KPiA+ID4gPiA+ICsKPiA+ID4gPiA+ICsgICAgICAgLyogUHJv
IHVzZXMgZ3Bpby1sZWRzIGluc3RlYWQ7IHB3bTAgTEVEIGlzIG5vdCB3aXJlZCB1cCAqLwo+ID4g
PiA+ID4gKyAgICAgICAvZGVsZXRlLW5vZGUvIHB3bS1sZWRzOwo+ID4gPiA+IDxzbmlwPgo+ID4g
PiA+ID4gKwo+ID4gPiA+ID4gKyAgICAgICBncGlvLWxlZHMgewo+ID4gPiA+ID4gKyAgICAgICAg
ICAgICAgIGNvbXBhdGlibGUgPSAiZ3Bpby1sZWRzIjsKPiA+ID4gPiA+ICsgICAgICAgICAgICAg
ICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIHBp
bmN0cmwtMCA9IDwmbGVkc19yZ2I+Owo+ID4gPiA+ID4gKwo+ID4gPiA+ID4gKyAgICAgICAgICAg
ICAgIGJsdWUtbGVkIHsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGNvbG9yID0g
PExFRF9DT0xPUl9JRF9CTFVFPjsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGZ1
bmN0aW9uID0gTEVEX0ZVTkNUSU9OX1NUQVRVUzsKPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgIGdwaW9zID0gPCZncGlvMSBSS19QQzYgR1BJT19BQ1RJVkVfSElHSD47Cj4gPiA+ID4g
SG93IGNvbWUgeW91IGRlY2lkZWQgZ3Bpby1sZWRzIGluc3RlYWQgb2YgcHdtLWxlZHMgZm9yIHRo
aXM/IEdQSU8xIEM2Cj4gPiA+ID4gaXMgbXV4ZWQgd2l0aCBQV00xNV9JUl9NMgo+ID4gPgo+ID4g
PiB0aGUgZG93bnN0cmVhbSBkdHMgdXNlcyBncGlvLWxlZHMgIHRoZSBHUElPIGNvbWVzIGZyb20g
dGhlIHNjaGVtYXRpYwo+ID4gSXQgc2hvdWxkIGJlIGZpbmUgdG8gdXBncmFkZSB0byBwd20tbGVk
cyB3aGVuIGFkZGluZyBpbnRvIG1haW5saW5lLgo+ID4gVGhlIE9yYW5nZSA1IFBsdXMgZGlkLgo+
ID4gSW4gdGhlIGRvd25zdHJlYW0gRFRTLCB0aGV5IHVzZWQgZ3Bpby1sZWQgZm9yIHRoZSBncmVl
biBsZWQKPiA+IGh0dHBzOi8vZ2l0aHViLmNvbS9vcmFuZ2VwaS14dW5sb25nL2xpbnV4LW9yYW5n
ZXBpL2Jsb2IvMjMyZWQ0Yjk3YjY1ZGEyYjdiNjQ3YzRlM2M0OTZmODU5NGI5ZjNmMS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01LXBsdXMuZHRzI0wzMS1MMzYK
PiA+IEJ1dCBpbiB0aGUgbWFpbmxpbmUga2VybmVsLCBpdCB3YXMgY29udmVydGVkIHRvIHVzZSBw
d20tbGVkLgo+ID4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9n
aXQvdG9ydmFsZHMvbGludXguZ2l0L2NvbW1pdC9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU4OC1vcmFuZ2VwaS01LXBsdXMuZHRzP2lkPTIzNmQyMjVlMWVlNzJhMjhhYTdjMmIxZTM5
ODk0ZTQzOTBiYmY1MWMKPiA+Cj4gPiBKaW1teQo+Cj4gSXMgdGhlcmUgYSByZWFzb24gdGhlIGJs
dWUgbGVkIHdhcyBub3QgY29udmVydGVkIGZyb20gR1BJTyB0byBQV00sIGFuZAo+IG9ubHkgdGhl
IGdyZWVuIGxlZCB3YXM/ClRoZXJlIGlzIG5vIFBXTSBtdXhlZCB3aXRoIEdQSU8zIEE2LiBTbyB0
aGUgb25seSBvcHRpb24gaXMgR1BJTy4KCkppbW15Cgo+Cj4gRGVubmlzCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
