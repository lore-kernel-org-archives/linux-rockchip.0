Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A56BC25B7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 May 2024 16:27:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kNg0bQd/XWxHxPzjOyIZdE8GgALbCkbJDsOekK6+bzA=; b=I7bRD3n7b/ZIdy
	KgAfd1UPXFtxegMKD8x147xwYenIMX0EUAtoUaHswDZrNNr0Y89gHaS3ttmckGy1Y7HwYegrIEmWF
	+63CeEpsR9UIdWNsxd3LWVvOpFLe5aCgr99TZx0tGl48Hb1UNDd7GMSy90DlesHNGAbSzks821BT0
	U19I4eYp0Hm/2jKtjPMGYxLImufWClhplyEbMCO0IONWKpwrLJGVR+mgZSfffHUmjZy1mlG/ArixB
	H07v7X2kFxdMb8f8Gg4Yubbtz6/WhsDnwMmHYf8xSFZ9oMpAWuwoCW+2m3MgrG3uMlbxWBFGFcgwf
	vjSGvnfSkKfO8+JR7EcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCM9D-00000004uT9-34d9;
	Wed, 29 May 2024 16:27:31 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sCM9A-00000004uRQ-0FuD;
	Wed, 29 May 2024 16:27:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 09505CE1869;
	Wed, 29 May 2024 16:27:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 634C1C2BD10;
	Wed, 29 May 2024 16:27:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717000044;
	bh=6pJy8GSeOsoQfIf1fWQ8Q5hijGi2n3wCqP9jsUD7W+Y=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=LZUiuJ77zrGPdcr7609yv9hPBsSd+NGCfWRuEkGeG3WCdH5Ncd4VpsgkA2R/EXbhn
	 cabvYkzRFq2feRjmpFBdEDc5VVhIfTFyCZDZuHVPlrRwnuKFUswVPwvbEaj2UMx0Pc
	 ZKaUYn/m/P4e7nuCBm6woINUuRNNKkt6y6nzM8nSni3OyeMQ/ne/1RejJas+xu1xoX
	 FNCFr0xl7DuaXiTQNUgTD84vW46e7qqNawNEkj3/jYr/tLNqeHDbbKZgFgEkTOd+aA
	 3+jwfxeh40AnJQva0e16sch+Qpj+va1xZLszQ7PyXImuIp69Z1+b2iZdsB0/h9P50K
	 o9U0eYcIpx+xw==
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2e95a7545bdso25198411fa.2;
        Wed, 29 May 2024 09:27:24 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXK+fgV1cu/22So/izdizlQ2mTvAZpcYCaBo+YbTUzoHVEr2IU+3RyvorJHsRxzgHb9Ak73plAWuU2gF5knoExXLzDWvrRmMrjELSLOtRL2yVeWgjI=
X-Gm-Message-State: AOJu0YzRHX2YYbs2Se0bTiiZ2nof5EMUhvDCQ1vM22IE36Shk/mPYmzM
	E7Zd1vUFwZmGtlRS336RLZJOEMoRiG1CmII2tv+4EmY4RMshCQW8Sjd145TVzx5S9U7eacGbrpE
	1zxSfVHtEMPKxwj4qIdkahgLCgPc=
X-Google-Smtp-Source: AGHT+IHrj3c2UqSisziC7+QIH9F4CAvMm95FPN4uKjeYMhxBFdWT7Y6xzMv02ZF8u55DDKqqW8M6ZQJBMCYW9FyIySs=
X-Received: by 2002:a2e:b385:0:b0:2e1:cb22:a4d with SMTP id
 38308e7fff4ca-2e95b25679dmr98428051fa.36.1717000042779; Wed, 29 May 2024
 09:27:22 -0700 (PDT)
MIME-Version: 1.0
References: <e70742ea2df432bf57b3f7de542d81ca22b0da2f.1716225483.git.dsimic@manjaro.org>
In-Reply-To: <e70742ea2df432bf57b3f7de542d81ca22b0da2f.1716225483.git.dsimic@manjaro.org>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Thu, 30 May 2024 00:27:10 +0800
X-Gmail-Original-Message-ID: <CAGb2v66DPvvRcq+98vF2mCF8URW_qys1+B_FM9kcm6ppuPvyeg@mail.gmail.com>
Message-ID: <CAGb2v66DPvvRcq+98vF2mCF8URW_qys1+B_FM9kcm6ppuPvyeg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix the DCDC_REG2 minimum voltage
 on Quartz64 Model B
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
	robh+dt@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-kernel@vger.kernel.org, stable@vger.kernel.org, 
	Diederik de Haas <didi.debian@cknow.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240529_092728_516174_E29AF6EE 
X-CRM114-Status: GOOD (  26.42  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBNYXkgMjEsIDIwMjQgYXQgMToyMOKAr0FNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1h
bmphcm8ub3JnPiB3cm90ZToKPgo+IENvcnJlY3QgdGhlIHNwZWNpZmllZCByZWd1bGF0b3ItbWlu
LW1pY3Jvdm9sdCB2YWx1ZSBmb3IgdGhlIGJ1Y2sgRENEQ19SRUcyCj4gcmVndWxhdG9yLCB3aGlj
aCBpcyBwYXJ0IG9mIHRoZSBSb2NrY2hpcCBSSzgwOSBQTUlDLCBpbiB0aGUgUGluZTY0IFF1YXJ0
ejY0Cj4gTW9kZWwgQiBib2FyZCBkdHMuICBBY2NvcmRpbmcgdG8gdGhlIFJLODA5IGRhdGFzaGVl
dCwgdmVyc2lvbiAxLjAxLCB0aGlzCj4gcmVndWxhdG9yIGlzIGNhcGFibGUgb2YgcHJvZHVjaW5n
IHZvbHRhZ2VzIGFzIGxvdyBhcyAwLjUgViBvbiBpdHMgb3V0cHV0LAo+IGluc3RlYWQgb2YgZ29p
bmcgZG93biB0byAwLjkgViBvbmx5LCB3aGljaCBpcyBhZGRpdGlvbmFsbHkgY29uZmlybWVkIGJ5
IHRoZQo+IHJlZ3VsYXRvci1taW4tbWljcm92b2x0IHZhbHVlcyBmb3VuZCBpbiB0aGUgYm9hcmQg
ZHRzIGZpbGVzIGZvciB0aGUgb3RoZXIKPiBzdXBwb3J0ZWQgYm9hcmRzIHRoYXQgdXNlIHRoZSBz
YW1lIFJLODA5IFBNSUMuCj4KPiBUaGlzIGFsbG93cyB0aGUgRFZGUyB0byBjbG9jayB0aGUgR1BV
IG9uIHRoZSBRdWFydHo2NCBNb2RlbCBCIGJlbG93IDcwMCBNSHosCj4gYWxsIHRoZSB3YXkgZG93
biB0byAyMDAgTUh6LCB3aGljaCBzYXZlcyBzb21lIHBvd2VyIGFuZCByZWR1Y2VzIHRoZSBhbW91
bnQgb2YKPiBnZW5lcmF0ZWQgaGVhdCBhIGJpdCwgaW1wcm92aW5nIHRoZSB0aGVybWFsIGhlYWRy
b29tIGFuZCBwb3NzaWJseSBpbXByb3ZpbmcKPiB0aGUgYnVyc3R5IENQVSBhbmQgR1BVIHBlcmZv
cm1hbmNlIG9uIHRoaXMgYm9hcmQuCj4KPiBUaGlzIGFsc28gZWxpbWluYXRlcyB0aGUgZm9sbG93
aW5nIHdhcm5pbmdzIGluIHRoZSBrZXJuZWwgbG9nOgo+Cj4gICBjb3JlOiBfb3BwX3N1cHBvcnRl
ZF9ieV9yZWd1bGF0b3JzOiBPUFAgbWludVY6IDgyNTAwMCBtYXh1VjogODI1MDAwLCBub3Qgc3Vw
cG9ydGVkIGJ5IHJlZ3VsYXRvcgo+ICAgcGFuZnJvc3QgZmRlNjAwMDAuZ3B1OiBfb3BwX2FkZDog
T1BQIG5vdCBzdXBwb3J0ZWQgYnkgcmVndWxhdG9ycyAoMjAwMDAwMDAwKQo+ICAgY29yZTogX29w
cF9zdXBwb3J0ZWRfYnlfcmVndWxhdG9yczogT1BQIG1pbnVWOiA4MjUwMDAgbWF4dVY6IDgyNTAw
MCwgbm90IHN1cHBvcnRlZCBieSByZWd1bGF0b3IKPiAgIHBhbmZyb3N0IGZkZTYwMDAwLmdwdTog
X29wcF9hZGQ6IE9QUCBub3Qgc3VwcG9ydGVkIGJ5IHJlZ3VsYXRvcnMgKDMwMDAwMDAwMCkKPiAg
IGNvcmU6IF9vcHBfc3VwcG9ydGVkX2J5X3JlZ3VsYXRvcnM6IE9QUCBtaW51VjogODI1MDAwIG1h
eHVWOiA4MjUwMDAsIG5vdCBzdXBwb3J0ZWQgYnkgcmVndWxhdG9yCj4gICBwYW5mcm9zdCBmZGU2
MDAwMC5ncHU6IF9vcHBfYWRkOiBPUFAgbm90IHN1cHBvcnRlZCBieSByZWd1bGF0b3JzICg0MDAw
MDAwMDApCj4gICBjb3JlOiBfb3BwX3N1cHBvcnRlZF9ieV9yZWd1bGF0b3JzOiBPUFAgbWludVY6
IDgyNTAwMCBtYXh1VjogODI1MDAwLCBub3Qgc3VwcG9ydGVkIGJ5IHJlZ3VsYXRvcgo+ICAgcGFu
ZnJvc3QgZmRlNjAwMDAuZ3B1OiBfb3BwX2FkZDogT1BQIG5vdCBzdXBwb3J0ZWQgYnkgcmVndWxh
dG9ycyAoNjAwMDAwMDAwKQo+Cj4gRml4ZXM6IGRjYzhjNjZiZWY3OSAoImFybTY0OiBkdHM6IHJv
Y2tjaGlwOiBhZGQgUGluZTY0IFF1YXJ0ejY0LUIgZGV2aWNlIHRyZWUiKQo+IENjOiBzdGFibGVA
dmdlci5rZXJuZWwub3JnCj4gUmVwb3J0ZWQtQnk6IERpZWRlcmlrIGRlIEhhYXMgPGRpZGkuZGVi
aWFuQGNrbm93Lm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5q
YXJvLm9yZz4KPiAtLS0KPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjYtcXVh
cnR6NjQtYi5kdHMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTY2LXF1YXJ0ejY0LWIuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
NjYtcXVhcnR6NjQtYi5kdHMKPiBpbmRleCAyNjMyMmEzNThkOTEuLmI5MDhjZTAwNmMyNiAxMDA2
NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Ni1xdWFydHo2NC1i
LmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY2LXF1YXJ0ejY0
LWIuZHRzCj4gQEAgLTI4OSw3ICsyODksNyBAQCB2ZGRfZ3B1OiBEQ0RDX1JFRzIgewo+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLW5hbWUgPSAidmRkX2dwdSI7Cj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3ItYWx3YXlzLW9uOwo+ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLWJvb3Qtb247Cj4gLSAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1bGF0b3ItbWluLW1pY3Jvdm9sdCA9IDw5MDAw
MDA+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVndWxhdG9yLW1pbi1taWNy
b3ZvbHQgPSA8NTAwMDAwPjsKClRoZSBjb25zdHJhaW50cyBoZXJlIGFyZSBzdXBwb3NlZCB0byBi
ZSB0aGUgY29uc3RyYWludHMgb2YgdGhlIGNvbnN1bWVyLApub3QgdGhlIHByb3ZpZGVyLiBUaGUg
bGF0dGVyIGlzIGFscmVhZHkga25vd24gYnkgdGhlIGltcGxlbWVudGF0aW9uLgoKU28gaWYgdGhl
IEdQVSBjYW4gZ28gZG93biB0byAwLjgyNVYgb3IgMC44MVYgZXZlbiAoYmFzZWQgb24gdGhlIGRh
dGFzaGVldCksCnRoaXMgc2hvdWxkIHNheSB0aGUgY29ycmVzcG9uZGluZyB2YWx1ZS4gU3VyZWx5
IHRoZSBHUFUgY2FuJ3QgZ28gZG93biB0bwowLjVWPwoKQ2FuIHlvdSBzZW5kIGFub3RoZXIgZml4
IGZvciBpdD8KCgpDaGVuWXUKCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWd1
bGF0b3ItbWF4LW1pY3Jvdm9sdCA9IDwxMzUwMDAwPjsKPiAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIHJlZ3VsYXRvci1yYW1wLWRlbGF5ID0gPDYwMDE+Owo+Cj4KPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVs
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
