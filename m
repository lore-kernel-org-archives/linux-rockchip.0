Return-Path: <SRS0=mNPc=GO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5E5C433E0
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 08:05:23 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4373622A84
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 08:05:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4373622A84
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MlwzN9RoVbPcBumyVnwcTl/RX6+EvSuPw5ZcNyfYdKI=; b=vMm5K6/GKsugTVHi2gBby0DFX
	VC98zYzXS2Xa7xLqhiHbQ5HBWP39oxuhfwqJTjUpT1MhaPP6w+PTdJoJ/iztuaZE5cd0HwVN3x5/2
	DrID04lXTbtWaC4zzwPsSSoL0w4B7Czc3BJCctgvuiWeQysDT63jHRdQpWLjm0D6MRPPh+KbAoXdn
	hIrmWr7oSMDlCF6aR1fEyUL4hN848Ea6JdEy9wUCi2VROqZ2/t0fmKNh56ewe55Bemk7l76+g5eaW
	bcKLVx9lpOBwugbQkM6LKpwScGdekS0NurtU2KpsXx9W5PYI7FmiDEaMdFqmZRYfXebvrEOO1Ekbr
	eJQLIQaDw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kysCV-0001ca-Rb; Mon, 11 Jan 2021 08:05:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kysCP-0001aF-BX; Mon, 11 Jan 2021 08:05:15 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id A61BB22A84;
 Mon, 11 Jan 2021 08:05:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610352311;
 bh=02v3tzqN9AzUV/0Va6HZhKJjrBRDGhuHYnwmkekIVnQ=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=mkTG3f/NF0dxGlMO5dJ2Jk3U01ihAxH/IDXNRhPmf+4iO4s/H+NOZ6jomrunpHE96
 LN9TKFPcYs0u+67CTArn0VsEQN68956SI/BAJ2XhNefnk1Wzq2eu+LjUJDGREARed/
 B1SFuGyPz8JucdQkgdeYDfu+o/pIKEQxHRyn4fYY1cqvR9pw2UrZ2gTpYJ5MEgfhb3
 Ju16J2nD7KI2KZWOwd3aOxjDxxbGN0Yawc3Nc430aN9O+3bI9OJBKfQBkSThTZzEl+
 4EtGHCIqSsy8ahSPqq6LlRRs1j9vSx9KdA9NSQoEreRTZfAO0yi6MR4aw4cniewj97
 L+GL3UKnvMUDw==
Received: by mail-lj1-f174.google.com with SMTP id n8so2494947ljg.3;
 Mon, 11 Jan 2021 00:05:10 -0800 (PST)
X-Gm-Message-State: AOAM531dwSVh1V7zYnF6A0zojvl4zKkjTgInAQUPNGTDS1YLQaz5TzmH
 0ilYMl+h3jHLfSRCdK2K/Xn+yvqvQzpEWX6v/g8=
X-Google-Smtp-Source: ABdhPJwj85ZDfKme11UV/Voov4qWAa0P4jY5FCrsPJxXgJJEtzRu1NCCT5US+jtHkig72ciC9xKAgmf5Ha4C3FrHnos=
X-Received: by 2002:a2e:3503:: with SMTP id z3mr7297395ljz.74.1610352308850;
 Mon, 11 Jan 2021 00:05:08 -0800 (PST)
MIME-Version: 1.0
References: <20210110035846.9155-1-wens@kernel.org> <2241380.NG923GbCHz@diego>
 <CAGb2v67h3v4DdEY68BmHy263=L1tB0DuJnf_exHrLi57SiRjUA@mail.gmail.com>
 <2633022.BEx9A2HvPv@diego>
In-Reply-To: <2633022.BEx9A2HvPv@diego>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 11 Jan 2021 16:04:56 +0800
X-Gmail-Original-Message-ID: <CAGb2v678BgP_23oz+XMzw5B0U2hBy_fW9VK9mvVVhoXqchJmTg@mail.gmail.com>
Message-ID: <CAGb2v678BgP_23oz+XMzw5B0U2hBy_fW9VK9mvVVhoXqchJmTg@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: rk3328: Add Radxa ROCK Pi E
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210111_030513_562372_6B74F334 
X-CRM114-Status: GOOD (  21.67  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Rob Herring <robh@kernel.org>, devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Johan Jonker <jbx6244@gmail.com>, Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBKYW4gMTEsIDIwMjEgYXQgMzo1MCBQTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250
ZWNoLmRlPiB3cm90ZToKPgo+IEFtIE1vbnRhZywgMTEuIEphbnVhciAyMDIxLCAwNDoyNzo0NyBD
RVQgc2NocmllYiBDaGVuLVl1IFRzYWk6Cj4gPiBPbiBNb24sIEphbiAxMSwgMjAyMSBhdCA0OjA2
IEFNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+ID4gPgo+ID4gPiBI
aSwKPiA+ID4KPiA+ID4gQW0gU29ubnRhZywgMTAuIEphbnVhciAyMDIxLCAxNjozNzoxNSBDRVQg
c2NocmllYiBDaGVuLVl1IFRzYWk6Cj4gPiA+ID4gPiA+ICsgICAgIHZjY19zZDogc2RtbWMtcmVn
dWxhdG9yIHsKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICBjb21wYXRpYmxlID0gInJlZ3VsYXRv
ci1maXhlZCI7Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgZ3BpbyA9IDwmZ3BpbzAgUktfUEQ2
IEdQSU9fQUNUSVZFX0xPVz47Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgcGluY3RybC1uYW1l
cyA9ICJkZWZhdWx0IjsKPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICBwaW5jdHJsLTAgPSA8JnNk
bW1jMG0xX3Bpbj47Cj4gPiA+ID4gPgo+ID4gPiA+ID4gPiArICAgICAgICAgICAgIHJlZ3VsYXRv
ci1ib290LW9uOwo+ID4gPiA+ID4gPiArICAgICAgICAgICAgIHJlZ3VsYXRvci1uYW1lID0gInZj
Y19zZCI7Cj4gPiA+ID4gPgo+ID4gPiA+ID4gcmVndWxhdG9yLW5hbWUgYWJvdmUgb3RoZXIgcmVn
dWxhdG9yIHByb3BlcnRpZXMKPiA+ID4gPgo+ID4gPiA+IFRoYXQgaXMgYWN0dWFsbHkgd2hhdCBJ
IHdhcyB1c2VkIHRvLCBidXQgc29tZSBvdGhlciByb2NrY2hpcCBkdHMgZmlsZXMKPiA+ID4gPiBo
YXZlIGFsbCB0aGUgcHJvcGVydGllcyBzb3J0ZWQgYWxwaGFiZXRpY2FsbHkuIFNvIEkgc3R1Y2sg
d2l0aCB3aGF0IEkKPiA+ID4gPiBzYXcuCj4gPiA+Cj4gPiA+IEkgdHJ5IHRvIGtlZXAgaXQgYWxw
aGFiZXRpY2FsIGV4Y2VwdCBmb3IgdGhlIGV4Y2VwdGlvbnMgOi1EIC4KPiA+ID4KPiA+ID4gcmVn
dWxhdG9yLW5hbWUgaXMgc3VjaCBhbiBleGNlcHRpb24uIFNpbWlsYXIgdG8gY29tcGF0aWJsZXMs
IHRoZQo+ID4gPiByZWd1bGF0b3ItbmFtZSBpcyBhbiBlbnRyeSBuZWVkZWQgdG8gc2VlIGlmIHlv
dSdyZSBhdCB0aGUgcmlnaHQgbm9kZSwKPiA+ID4gc28gSSByZWFsbHkgbGlrZSBpdCBiZWluZyB0
aGUgdG9wbW9zdCByZWd1bGF0b3ItZm9vIHByb3BlcnR5IC0ganVzdCBtYWtlcwo+ID4gPiByZWFk
aW5nIGVhc2llci4KPiA+ID4KPiA+ID4gKHNhbWUgZm9yIHRoZSBjb21wYXRpYmxlIGZpcnN0LCB0
aGVuIHJlZ3MsIGludGVycnVwdHMgcGFydHMsIGFzIHdlbGwKPiA+ID4gYXMgInN0YXR1cy1sYXN0
IikKPiA+ID4KPiA+ID4gQnV0IG9mdGVudGltZXMsIEkganVzdCBmaXggdGhlIG9yZGVyaW5nIHdo
ZW4gYXBwbHlpbmcgLSBidXQgc2VlbSB0byBoYXZlCj4gPiA+IG1pc3NlZCB0aGlzIHNvbWV3aGVy
ZSBpbiB0aG9zZSAib3RoZXIgUm9ja2NoaXAgZHRzIGZpbGVzIiA7LSkgLgo+ID4KPiA+IEkgd2Fz
IHNsaWdodGx5IGNvbmZ1c2VkLiBJIGxvb2tlZCBhZ2FpbiBhbmQgeWVzIHJlZ3VsYXRvci1uYW1l
IGlzIGFsd2F5cyB0aGUKPiA+IGZpcnN0IHJlZ3VsYXRvciByZWxhdGVkIHByb3BlcnR5LiBXaGF0
J3Mgb2ZmIGlzIHRoYXQgaW4gc29tZSBjYXNlcyBtaW4vbWF4Cj4gPiB2b2x0YWdlIGNvbWVzIGJl
Zm9yZSBhbHdheXMtb24vYm9vdC1vbiwgYW5kIGluIG90aGVycyB2aWNlIHZlcnNhLgo+ID4KPiA+
IEZvciBleGFtcGxlIGluIHRoZSBSb2NrNjQgYW5kIFJPQy1SSzMzMjgtQ0MgZGV2aWNlIHRyZWVz
LCBpbiB0aGUgZml4ZWQKPiA+IHJlZ3VsYXRvcnMsIGFsd2F5cy1vbi9ib290LW9uIGNvbWUgYmVm
b3JlIG1pbi9tYXggdm9sdGFnZSwgd2hpbGUgaW4gdGhlCj4gPiBQTUlDIHRoZSBvdGhlciBvcmRl
ciBpcyB1c2VkLgo+Cj4gVGhhdCdzIGxpa2VseSB1bmRlY2lkZWRuZXMgb24gbXkgcGFydCA7LSkK
Pgo+IFRoZXJlIGNvdWxkIGJlIGFuIGFyZ3VtZW50IGZvciBhICJuYW1lLCB2b2x0YWdlcywgZmxh
Z3MiIHNvcnRpbmcsIGJ1dCBvbgo+IHRoZSBvdGhlciBoYW5kIGp1c3Qga2VlcGluZyBpdCBhbHBo
YWJldGljYWwgd2l0aCB0aGUgbmFtaW5nIG9uIHRvcAo+IGNyZWF0ZXMgbGVzcyBzcGVjaWFsIGNh
c2VzLgoKQW5kIG1pbiBiZWZvcmUgbWF4PyA6RAoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
