Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DEFFC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Jul 2022 23:15:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m+8nj48i6SGM6wMOBRYevC+icyaDwuqN/OR321uLmcw=; b=zN7cErNvpB0B4n
	U6lA9AjIh559LbLR68ZYiKH58ozzvI4sFsAVni2WmfU4qTn/BJDJrqhf3PSBRGmT0yjvy4ztoZ1HA
	Hf90HHXDloQYiDNMybjTK88kv8bF1OgO0IVUuz8LI1CnjdUe4yYWPlYT/5l3NnVG+CW10zHIpZEiP
	3+KtDzpktgchRD8gIO4cqGE4H86aR+loIUK/cd/lJyELu1ENoW1mqTeYyaWMlENDBYlhCfF2+biyH
	OaawjOoC6Tg8LFzdVdd14YYPx5/TDBtCmzhhSR95F1g0u7T3s43ZyG3F+CB1SFcjq2NkaaoEbQrC/
	r3pXRQXLLOgRrBW2LcHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCUWi-00B2xT-HH; Fri, 15 Jul 2022 23:15:16 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oCTsL-00Anlc-PV
	for linux-rockchip@lists.infradead.org; Fri, 15 Jul 2022 22:33:41 +0000
Received: by mail-ed1-x52d.google.com with SMTP id y4so8017083edc.4
        for <linux-rockchip@lists.infradead.org>; Fri, 15 Jul 2022 15:33:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kohlschutter-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=76JC0t9LbhiWqJ9c7y773RaCGcRxX9GUE05Rg0MDK+4=;
        b=cxaJhA8kubAdEIOHAjA59STazGw/8l7Dig24ByRHAaBT0QSAU20+qVeIba5HSZc6aI
         bHoQ+oiIzqn4om474i0bxnj9Q6wDJqidq5C4NEKQbR2NGEHm8s+DoN8Yl4QbJQw1eoYb
         dcvkxRiG3vdQLrAuaB6pMvFS+CXSaV7Vf21i6/B1ihvL1LkqyuJmaf6d9zx39JypZkAU
         VLj0ax2rZ+DIvbKbwf5u8lQOylKE5dC+e/CVu0htHs0ZR18BEwP3maEnHqw0AMA9k8+Z
         ktbjbRdQq1X8f04jhkQiEaJTN7wMvgWTo2YMOcXwMHwQgE3G4/oCZBQBKFm8i1qQwR3t
         t36Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=76JC0t9LbhiWqJ9c7y773RaCGcRxX9GUE05Rg0MDK+4=;
        b=m3EBakSlenQoLWiCMRTOuHommwe7N2QosdSqsy2x5ObfUXy0Nepd91gp+n2a/vnXGR
         E2FjmQ8MOae48z5KoAeOwME91/vpj15qtf7mICKE+xioo9sSuhVL6eXkAHkDttWZ7RLG
         7kFSOgga0YJB6aPTHCS6hUvRf6xzD4URlr2ZjL+Ce7HstQ86mSf3TWxrJw3OGMpK6SZ+
         6OQmTimMkNjGeeJKvQF7wiR0YZ41YtRsZE8IwSbqXNVoPeurlepQZjrPPa7WU1VMrt71
         TlJLltGOC+5njJUu+GQUCANl4PxCEzspvTGO4ITWggPiHz4W8lVT3oSP0Cqw7j6m3l/y
         gERw==
X-Gm-Message-State: AJIora+tgwcmBa3t8iUCfZM9X/SFPndQv1OiWiZU7sx5HHlRFWor6FmQ
	/UJupqA5Able6h4Sx4kL09EalA==
X-Google-Smtp-Source: AGRyM1t/u2jjmV7/R6F6DGJ3m++32lPifqZ4JkCBXP1dlNz4t2qr0k+nLIeoKlklRBaGwWGalcw2Yg==
X-Received: by 2002:aa7:c657:0:b0:43a:4a68:bcc5 with SMTP id z23-20020aa7c657000000b0043a4a68bcc5mr22746058edr.337.1657924410165;
        Fri, 15 Jul 2022 15:33:30 -0700 (PDT)
Received: from smtpclient.apple (ip5b434222.dynamic.kabel-deutschland.de. [91.67.66.34])
        by smtp.gmail.com with ESMTPSA id p25-20020a056402155900b0043aa17dc199sm3564771edx.90.2022.07.15.15.33.28
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Jul 2022 15:33:29 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.100.31\))
Subject: Re: [PATCH v4] arm64: dts: rockchip: Fix SD card init on
 rk3399-nanopi4
From: =?utf-8?Q?Christian_Kohlsch=C3=BCtter?= <christian@kohlschutter.com>
In-Reply-To: <daf3b61c-d886-98eb-0443-de233d742041@arm.com>
Date: Sat, 16 Jul 2022 00:33:28 +0200
Cc: wens@kernel.org,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Markus Reichl <m.reichl@fivetechno.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Linux MMC List <linux-mmc@vger.kernel.org>
Message-Id: <CDF716FC-F6CF-44A9-84D9-B48C46E6AC2C@kohlschutter.com>
References: <C639AD88-77A1-4485-BAEA-2FF8FC15A844@kohlschutter.com>
 <12878108.O9o76ZdvQC@diego> <103b714c-b07c-f016-1062-84bd94786b22@arm.com>
 <9AF1E75F-5947-49B0-887D-82C426527B99@kohlschutter.com>
 <590f7a08-a6ca-be54-4254-363343642a52@arm.com>
 <A6B896E5-CD25-4441-B6A5-0BE1FA284B2C@kohlschutter.com>
 <A9634366-A012-43D2-B253-8BB9BF6005C7@kohlschutter.com>
 <CAGb2v65Ehbu1wrib2CzF1fDZuD3fHZQDhKfVusyUF9KnxTvi+Q@mail.gmail.com>
 <5ca9bd94-54d9-04f8-0098-a56ffb6f5fe1@arm.com>
 <502b3fbe-3077-407e-6010-a8cb3ffce7d6@arm.com>
 <449292CA-CE60-4B90-90F7-295FBFEAB3F8@kohlschutter.com>
 <73F9AED0-D2A8-4294-B6E1-1B92D2A36529@kohlschutter.com>
 <115AD6A4-021B-4879-BFB5-BC7689A0203E@kohlschutter.com>
 <17a4c6f6-d79c-a7b2-860f-e5944b778f9f@arm.com>
 <9405b97a-6758-ad4e-ccff-eed072096539@arm.com>
 <BF7CC548-88C9-4889-8A41-8E99C31EF81C@kohlschutter.com>
 <daf3b61c-d886-98eb-0443-de233d742041@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
X-Mailer: Apple Mail (2.3696.100.31)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220715_153334_089506_BB146BD8 
X-CRM114-Status: GOOD (  22.43  )
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

PiBBbSAxNS4wNy4yMDIyIHVtIDIxOjM4IHNjaHJpZWIgUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJw
aHlAYXJtLmNvbT46Cj4gCj4gT24gMjAyMi0wNy0xNSAyMDowNCwgQ2hyaXN0aWFuIEtvaGxzY2jD
vHR0ZXIgd3JvdGU6Cj4+IEFtIDE1LjA3LjIwMjIgdW0gMjA6NTcgc2NocmllYiBSb2JpbiBNdXJw
aHkgPHJvYmluLm11cnBoeUBhcm0uY29tPjoKPj4+IAo+Pj4gT24gMjAyMi0wNy0xNSAxOToxMSwg
Um9iaW4gTXVycGh5IHdyb3RlOgo+Pj4+IE9uIDIwMjItMDctMTUgMTg6MTYsIENocmlzdGlhbiBL
b2hsc2Now7x0dGVyIHdyb3RlOgo+Pj4+PiBPSywgdGhpcyB0b29rIG1lIGEgd2hpbGUgdG8gZmln
dXJlIG91dC4KPj4+Pj4gCj4+Pj4+IFdoZW4gbm8gdW5kZXJ2b2x0YWdlIGxpbWl0IGlzIGNvbmZp
Z3VyZWQsIEkgY2FuIHJlbGlhYmx5IHRyaWdnZXIgdGhlIGluaXRpYWxpemF0aW9uIGJ1ZyB1cG9u
IGJvb3QuCj4+Pj4+IFdoZW4gdGhlIGxpbWl0IGlzIHNldCB0byAzLjBWLCBpdCByYXJlbHkgb2Nj
dXJzLCBidXQganVzdCBhZnRlciBJIHNlbmQgdGhlIHYzIHBhdGNoLCBJIHdhcyBhYmxlIHRvIHJl
cHJvZHVjZS4uLgo+Pj4+IFdlbGwgdGhpcyBoYXMgdG8gYmUgaW4gdGhlIHJ1bm5pbmcgZm9yICJ3
ZWlyZGVzdCBwbGFjZWJvIGV2ZXIiLi4uIDovCj4+Pj4gQWxsIGl0IGFjdHVhbGx5IHNlZW1zIHRv
IGFjaGlldmUgaXMgcHJpbnRpbmcgYW4gZXJyb3JbMV0gKHRoaXMgaXMgYWZ0ZXIgYWxsIGEgdGlu
eSA1LXBpbiBmaXhlZC12b2x0YWdlIExETyByZWd1bGF0b3IsIG5vdCBhbiBpbnRlbGxpZ2VudCBQ
TUlDKSwgYW5kIGlmIHRoYXQgbWFrZXMgYW4gYXBwcmVjaWFibGUgZGlmZmVyZW5jZSB0aGVuIHRo
ZXJlIGhhcyB0byBiZSBzb21lIGtpbmQgb2Ygd2VpcmQgdGltaW5nIGNvbmRpdGlvbiBhdCBwbGF5
LiBNYXliZSByZWd1bGF0b3JfcmVnaXN0ZXIoKSBlbmRzIHVwIHR1cm5pbmcgaXQgb2ZmIGFuZCBv
biBhZ2FpbiByYXBpZGx5IGVub3VnaCB0aGF0IHRoZSBjYXJkIHNlZXMgYSB2b2x0YWdlIGJyb3du
b3V0IGFuZCBnbGl0Y2hlcywgYW5kIGFkZGluZyBtb3JlIGRlbGF5IGJ5IHByaW50aW5nIHRvIHRo
ZSBjb25zb2xlIHNvbWV3aGVyZSBpbiB0aGUgbWlkZGxlIGdpdmVzIGl0IGVub3VnaCB0aW1lIHRv
IGFjdCBhcyBhIHByb3BlciBwb3dlciBjeWNsZSB3aXRoIG5vIGlsbCBlZmZlY3Q/Cj4+PiAKPj4+
IC4uLmFuZCBhcHBhcmVudGx5IHRoZSBhbnN3ZXIgaXMgeWVzLCBpdCBzZWVtcyB0byBiZSBkb2lu
ZyBleGFjdGx5IHRoYXQgKHNlZSBhdHRhY2hlZCkuIEJ1dCBzZWVtaW5nbHkgbXkgU0QgY2FyZHMg
ZG9uJ3QgbWluZCwgb3IgbWF5YmUgbXkgVDQgYm9hcmQgaGFwcGVucyB0byBoYXZlIG1vcmUgY2Fw
YWNpdGFuY2UgdGhhbiBDaHJpc3RpYW4ncyBSNFMgc28gbXkgdm9sdGFnZSBkaXAgaXNuJ3QgYXMg
YmFkLCBvciBib3RoLgo+Pj4gCj4+PiBTbyBpdCBzZWVtcyBsaWtlIHRoZSBzb2x1dGlvbiBoZXJl
IG1pZ2h0IGluZGVlZCBzaW1wbHkgYmUgdG8gcmVtb3ZlIHRoZSByZWd1bGF0b3ItYWx3YXlzLW9u
IHdoaWNoIGRvZXNuJ3Qgc2VlbSB0byBoYXZlIGFueSByZWFzb24gdG8gYmUgaGVyZSBhbnl3YXku
IFdpdGhvdXQgdGhhdCwgdGhlIGVuYWJsZSBzdGF5cyBsb3cgdW50aWwgdGhlIE1NQyBkcml2ZXIg
cHJvYmVzIGFuZCBjbGFpbXMgaXQsIHdoaWNoIGlzIHRoZW4gbWFzc2l2ZWx5IGxvbmdlciB0aGFu
IHRoZSB0aW1lIGl0IHRha2VzIGZvciBWQ0MzVjBfU0QgdG8gcmFtcCBkb3duIGNvbXBsZXRlbHku
Cj4+PiAKPj4+IFJvYmluLgo+PiBSZW1vdmluZyAicmVndWxhdG9yLWFsd2F5cy1vbiIgaGFzIHRo
ZSBlZmZlY3QgdGhhdCB0aGUgc3lzdGVtIGZyZWV6ZXMgdXBvbiByZWJvb3QuCj4gCj4gQWgsIHJp
Z2h0IChjYW4gd2UgZmFzdC1mb3J3YXJkIHRvIGEgd29ybGQgd2hlcmUgZXZlcnlvbmUgaGFzIGEg
cmVsaWFibGUgYm9vdGxvYWRlciBpbiBTUEkgZmxhc2ggb3Igc2ltaWxhcj8pLiBJcyB0aGF0IG1v
cmUgZ2xpdGNoaW5nLCBvciBhIGZpcm13YXJlIGJ1ZyBub3QgcmVzZXR0aW5nIHRoZSBHUElPcyB0
byB0aGVpciBkZWZhdWx0IHN0YXRlIG9uIHdhcm0gcmVzZXQsIEkgd29uZGVyLgo+IAo+PiBUaGVy
ZSBtYXkgd2VsbCBiZSBhbm90aGVyIGJ1ZyBzbHVtYmVyaW5nIGluIHRoZSBjb2RlYmFzZSB0aGF0
IGlzIGNpcmN1bXZlbnRlZCBieSAxLiBhZGRpbmcgYSBkZWxheSBpbiB0aGUgY29kZSBhbmQgMi4g
bm90IHR1cm5pbmcgdGhlIHJlZ3VsYXRvciBvZmYgdXBvbiBzaHV0ZG93bi4KPiAKPiBZZXMsIGl0
IHNlZW1zIHN1Ym9wdGltYWwgdGhhdCB0aGUgcmVndWxhdG9yIGNvcmUgYWxsb3dzIHRoaXMgZ2xp
dGNoIHdoZXJlIGFuIGFsd2F5cy1vbiByZWd1bGF0b3Igd2hpY2ggaXMgYWxyZWFkeSBvbiBnZXRz
IHR1cm5lZCBvZmYgYXQgYWxsLCBidXQgSSBndWVzcyB0aGF0J3MgaXRzIG93biBwcm9ibGVtLiBJ
biB0aGUgbWVhbnRpbWUsIG9mZi1vbi1kZWxheS11cyBzb3VuZHMgbGlrZSB0aGUgbW9zdCBsaWtl
bHkgcHJvcGVydHkgdG8gYmFuZGFnZSB0aGlzIGxvY2FsbHkuIEknbSBzZWVpbmcgYSBmYWxsIHRp
bWUgaW4gdGhlIG9yZGVyIG9mIG1pbGxpc2Vjb25kcyAoYXR0YWNoZWQpLCBzbyB3ZSdkIHByb2Jh
Ymx5IHdhbnQgYSBmYWlyIGNodW5rIG9mIHRoYXQgdG8gYmUgc2FmZS4KPiAKPiBSb2Jpbi48U0RT
MDAwMDMucG5nPgoKSSB0aGluayB3ZSBoYXZlIGEgd2F5IHdoZXJlIHRoZXJlJ3Mgbm8gbmVlZCB0
byBwaWNrIGEgZGVsYXkgdmFsdWUgdGhhdCBtYXkgdWx0aW1hdGVseSBub3Qgd29yayBpbiBhbGwg
Y2FzZXMuCkZvbGxvd2luZyB1cCB3aXRoICJbUEFUQ0hdIHJlZ3VsYXRvcjogY29yZTogUmVzb2x2
ZSBzdXBwbHkgbmFtZSBlYXJsaWVyIHRvIHByZXZlbnQgZG91YmxlLWluaXQiIFsxXQoKVGhhbmsg
eW91IHNvIG11Y2ggZm9yIGhlbHBpbmcgbWUgZ2V0dGluZyB0aGF0IGZhciEgSXQgd291bGQgYmUg
Z3JlYXQgaWYgeW91J2Qga2VlcCBmb2xsb3dpbmcgdGhlIHRocmVhZC4KCkJlc3QsCkNocmlzdGlh
bgoKWzFdIGh0dHBzOi8vd3d3LnNwaW5pY3MubmV0L2xpc3RzL2tlcm5lbC9tc2c0NDQwMzY1Lmh0
bWwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
