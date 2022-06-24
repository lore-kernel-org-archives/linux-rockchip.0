Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 524BBC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Jun 2022 18:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pc80GZ4ToLOLcrzvwhbSDM3Xi9K4jpSCQv6cHLKSc30=; b=hbGXw9oHxAkEj9
	F6qH/Sm8FXdIizly3P6OO5gebble+mESKLL4UGRB9s0t7YDnOmdme88wleegYXex/162cZk5q+tMP
	cK9aA5LtczRBdbZZ5PgMKTno//+karsK6H4FuJHQ3/vLKwuy8yOpmIsHHNbDHQoM9p5kypmhyP+xg
	IUPqFLdojMpC9pKHWJY1lgtH9OuSruk2g8pAqRS8r2SsZ5VMqKDvy4p6nE8yQ0KR+OAB5vo+fci66
	JxW7ntEK5atrrFXXHmjwQdR+Iq6bw1+U+dlEYn2fuVskzGxs5y8N92KrI6c/gaH8PMTz1GRmMKxsN
	ebRHKrHVI7o4D15WsO8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4oUl-003You-2P; Fri, 24 Jun 2022 18:57:31 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4oUY-003Yh2-DA; Fri, 24 Jun 2022 18:57:20 +0000
Received: by mail-lj1-x236.google.com with SMTP id j22so3824634ljg.0;
        Fri, 24 Jun 2022 11:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=yujU6wgiuzxnVq2RSk00G5bzO79HhVKR1x0d7hhLj3s=;
        b=E70PUdqkKUbvtmMfqmzr1UJkdwXO6yDU9y9de5P4e/7BLHTdXLtxEC+8ygsHMaNzMT
         UzWJeClQrQfYS6Z+AbsF4xGiiPNPo0QHYBCqqIMAbb3HDg00zAi77zw7cZmc7lrt205G
         smqUGNexRQUwzCcrTzxb5005tyXYHTprELkLFLZAouGUFt9n98CryJbx7w1DRCW6RDG/
         Q8UADSlQa/8lFrcGUUJz7tmVvXnmo8PxQQIA9KpaIlKvaw/j5J/9wwgyQOLOWVEbPuMp
         qjG+tzZwrss7i580yHhMUEe93RgILOlLMMfDgSPSjrLUMxflby1DIM2LcgECWLtSyVFJ
         KYLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=yujU6wgiuzxnVq2RSk00G5bzO79HhVKR1x0d7hhLj3s=;
        b=8GTPZj4DDpdU9gs7mvjdoP6RFmoC4/RpdFz616Rbp3+wMXwe3UI1GrEKr4+sPpuVOA
         bJla2sOqxXmW8WWUZpKtEElnbkO5JpkWK5jv00D0TxVOTJVIL222IuK2oPFWsNIUxlyR
         KEb+NFJEmS73aNLm3Jsjhc616oWr8b9bhLctclNPWY0W4ftQDwMe/LuZ00CFK4sF5Mto
         QFi1jsiWbeQz93E0wV2JMUHWHz2E+h49cimsZH5+32g4jFxePQ2IQpj7t8g/gApYdGYl
         ew3Ols16QkvZlC1RGzM7lI+WMNCyzv9mteRB+lkdZRUc8bqEEcbWejHT24bs0lwin2Uk
         WbLg==
X-Gm-Message-State: AJIora/7carS9tA7NMW6raMpEMMLvmnd0ljsesoBIjb2AFMDNqqVJkoI
	UIvFNT2Tfd8X+/nyh0LABG98d5VlErlRRA==
X-Google-Smtp-Source: AGRyM1sCLxtQnJNMFL1cybqxSpXEbF3Hidxrs6JMbwv+6YqzEkIzQ3oc6pzuig7vB6rv6E7r4Wue+w==
X-Received: by 2002:a05:651c:1790:b0:259:1115:1af8 with SMTP id bn16-20020a05651c179000b0025911151af8mr200164ljb.520.1656097035646;
        Fri, 24 Jun 2022 11:57:15 -0700 (PDT)
Received: from smtpclient.apple (31-178-127-80.dynamic.chello.pl. [31.178.127.80])
        by smtp.gmail.com with ESMTPSA id n1-20020a056512388100b0047861cba7bdsm482737lft.53.2022.06.24.11.57.14
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Jun 2022 11:57:15 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v11 20/24] arm64: dts: rockchip: enable vop2 and hdmi tx
 on rock-3a
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <CAMdYzYqGGfWDr11iyyfzigxsL7_N2szuag9P6TUZGuzGF4oB+A@mail.gmail.com>
Date: Fri, 24 Jun 2022 20:57:13 +0200
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Sandy Huang <hjc@rock-chips.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 kernel test robot <lkp@intel.com>
Message-Id: <AF6176F5-995E-473B-B494-844ECC26BC03@gmail.com>
References: <20220422072841.2206452-1-s.hauer@pengutronix.de>
 <20220422072841.2206452-21-s.hauer@pengutronix.de>
 <A86359EC-5291-41BD-966E-EB7890644731@gmail.com>
 <CAMdYzYoFG3wCQaWXQNJd7mE20OMCj=ZeuewwZfaCJyoCBT-kQQ@mail.gmail.com>
 <0E6FE020-C95E-47CF-A9D6-AC3F2B2D334F@gmail.com>
 <CAMdYzYobfJ7WGN+UQ7t5e1Zy9knjfHLse8KzrGrHPfeMkkG0gw@mail.gmail.com>
 <9F2D8CFF-1EAE-4586-9EE9-82A9D67840BB@gmail.com>
 <CAMdYzYrz7DRj7F9hGaAPaTSiZkQ4eMNujAp8uPuE9geL6kAz4g@mail.gmail.com>
 <9567EECF-A154-4FE1-A03C-5ED080409030@gmail.com>
 <190C3FD3-0185-4A99-B10E-A5790047D993@gmail.com>
 <CAMdYzYqGGfWDr11iyyfzigxsL7_N2szuag9P6TUZGuzGF4oB+A@mail.gmail.com>
To: Peter Geis <pgwipeout@gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220624_115718_528279_4E1EE248 
X-CRM114-Status: GOOD (  26.97  )
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFp
bC5jb20+IHcgZG5pdSAyNC4wNi4yMDIyLCBvIGdvZHouIDE0OjQwOgo+IAo+PiAKPj4gU2FzY2hh
LCBQZXRlcgo+PiAKPj4gSSByZXR1cm5lZCB0byB0cnlpbmcgdG8gZmluZCB3aHkgaGRtaS1jZWMg
aXMgbm90IHdvcmtpbmcgb24gcm9jazMtYSB2MS4zMSBody4KPj4gCj4+IEknbSBvbiB2b3AyIHYx
MSBvbiA1LjE4IG1haW5saW5lLgo+PiAKPj4gQ3VycmVudCBmaW5kaW5nczoKPj4gCj4+ICgxKSB0
aGUgc2FtZSBzdy4gc3RhY2svYmluYXJpZXMgd29ya3Mgb24gcm9jay0zYiAod2hlcmUgY2VjIHVz
ZXMgaGRtaXR4X20wIGluc3RlYWQgb2YgaGRtaXR4X20xIEkvTyBsaW5lKTsKPj4gCj4+ICgyKSBn
cGlvLWNlYyBob3dldmVyIHdvcmtzIG5vIHByb2JsZW0gb24gcm9jazMtYTsKPj4gCj4+ICgzKSBt
b25pdG9yaW5nIGNlYyBtZXNzYWdlcyB3aXRoIHY0LXV0aWxzICdjZWMtZm9sbG93ZXIgLXMnIHNo
b3dzIGV4YWN0IHRoZSBzYW1lIGV2ZW50cyBpbiBub24td29ya2luZyByb2NrMy1hIGFuZCB3b3Jr
aW5nIHJvY2szLWIKPj4gKHRlc3RlZCBieSBpc3N1ZSBjb25maWd1cmUgY2VjIGJ5ICdjZWMtY3Rs
IC1kIC9kZXYvY2VjMCAtLXBoeXMtYWRkcj0xLjAuMC4wIC0tcGxheWJhY2snIGNvbW1hbmQpCj4g
Cj4gLS1waHlzLWFkZHIgaXNuJ3QgYSB2YWxpZCBjb21tYW5kIGZvciB0aGlzIGNvbnRyb2xsZXIu
IFRoZSBkZXZpY2UKPiBkZXNpZ25hdGlvbiBpcyBvbmx5IHJlcXVpcmVkIGlmIHlvdSBoYXZlIG1v
cmUgdGhhbiBvbmUgY2VjIGRldmljZS4KPiAKPj4gCj4+IC0tPiBpJ20gaW50ZXJwcmV0aW5nIHRo
aXMgYXMgY29uZmlybWF0aW9uIHRoYXQgbG93IGxldmVsIHBoeSBsYXllciByZWNlaXZlcyBvayBj
ZWMgZGF0YSBmcm9tIGNvbm5lY3RlZCBkZXZpY2Ugb24gbm9uLXdvcmtpbmcgcm9jazMtYTsKPj4g
Cj4+ICg0KSBkZWJ1ZyBzeXNmcyBmb3IgY2VjIHNob3dzICJoYXMgQ0VDIGZvbGxvd2VyIChpbiBw
YXNzdGhyb3VnaCBtb2RlKSIgZm9yIHdvcmtpbmcgcm9jay0zYiBhbmQgdGhlcmUgaXMgTk8gImhh
cyBDRUMgZm9sbG93ZXIiIGRlYnVnIG1lc3NhZ2UgaW4gZmFpbGluZyByb2NrMy1hLgo+IAo+IFRo
aXMgbWFrZXMgbWUgc3VzcGVjdCB5b3UgYXJlIGluIGZhY3Qgbm90IHVzaW5nIHRoZSBzYW1lIHNv
ZnR3YXJlCj4gc3RhY2ssIG9yIGFyZSBub3QgcnVubmluZyB0aGUgc2FtZSBjb21tYW5kcy4KCkl0
IHdhcyB0aGUgc2FtZSBTRCBjYXJkIC0gd2l0aCBvbmx5IERUIGRlY2xhcmF0aW9uIGNoYW5nZWQg
aW4gYm9vdC5zY3IKU3VjaCBTRCBjYXJkIGhhcyBjZWMgcGVyZmVjdGx5IHdvcmtpbmcgaW4gcm9j
azNiCgo+IFJ1bm5pbmcgYGNlYy1mb2xsb3dlciAtdiAtbSAtVGAgb24gYSByazM1NjYgZGV2aWNl
IHdpdGggd29ya2luZyBjZWMKPiB1c2luZyA1LjE5LXJjMSwgSSBzZWUgbm8gbWVudGlvbiBvZiBj
ZWMtZm9sbG93ZXIgaW4gdGhlIGRlYnVnZnMgY2VjMAo+IHN0YXR1cyBlbnRyeS4KPiAKPj4gCj4+
IEZvciBtZSBJdCBsb29rcyBsaWtlIGxvdy1sZXZlbCBoZG1pLWNlYyB3b3JrcyBvayBvbiBmYWls
aW5nIHJvY2szLWEgLSBidXQgdXBwZXIgbGF5ZXJzIChpbiBoZG1pIHZvcDI/KSBhcmUgbm90IHJl
Z2lzdGVyaW5nIChvciBmYWlsaW5nIHRvIHJlZ2lzdGVyKSBjZWMtZm9sbG93ZXIgZmlsZWhhbmRs
ZS4gVGhpcyBoYXBwZW5zIGp1c3Qgd2hlbiBoZG1pdHggSS9PIGluIERUIGlzIGNoYW5nZWQgZnJv
bSBoZG1pdHhfbTAgdG8gaGRtdXR4X20xLiBBIGJpdCBzdHJhbmdlIC0gYnV0IGFsbCBteSB0ZXN0
cyBjb25zaXN0ZW50bHkgY29uZmlybWluZyB0aGlzIG9ic2VydmF0aW9uLi4uLgo+IAo+IFRoZXJl
IGlzIG5vdGhpbmcgd3Jvbmcgd2l0aCB2b3AyIGFzIGl0IGlzIG5vdCBpbnZvbHZlZCBhdCBhbGwg
aW4gdGhpcy4KPiBUaGUgcm9ja2NoaXAgaGRtaSBkcml2ZXIgKHdoaWNoIGlzIG5vdCBzcGVjaWZp
YyB0byB2b3AyKSBkb2VzIG5vdGhpbmcKPiBtb3JlIHRoYW4gY2FsbCB0aGUgY2VjIHJlZ2lzdHJh
dGlvbiBtZXRob2QgaW4gdGhlIGR3IGhkbWkgYnJpZGdlCj4gZHJpdmVyLCB3aGljaCB0aGVuIGNh
bGxzIHRoZSBrZXJuZWwgY2VjIHJlZ2lzdHJhdGlvbiBmdW5jdGlvbnMuCj4gQ2hhbmdpbmcgcGlu
bXV4IGNoYW5nZXMgbm90aGluZyBpbiBob3cgdGhpcyBmdW5jdGlvbnMuCj4gCj4+IAo+PiBJJ20g
dG9vIHdlYWsgaW4ga2VybmVsIGNlYyBpbnRlcm5hbHMgLSBzbyBtYXliZSB5b3UgaGF2ZSBhbnkg
cG9pbnRlcnMgaG93IHRvIGZ1cnRoZXIgZGVidWcvaW52ZXN0aWdhdGUgdGhpcyBpc3N1ZT8KPiAK
PiBBcyB3ZSBkaXNjdXNzZWQgaW4gdGhlIHBpbmU2NCByb29tLCB0aGlzIGlzIHN0aWxsIHZlcnkg
bGlrZWx5IGEKPiBoYXJkd2FyZSBpc3N1ZSB3aXRoIHRoaXMgYm9hcmQuIEEgY29uZmlndXJhdGlv
biBpc3N1ZSB3aXRoIHlvdXIgdS1ib290Cj4gb3IgdGYtYSBpcyBhbHNvIGEgcG9zc2liaWxpdHks
IGJ1dCBpcyBsZXNzIGxpa2VseS4KPiAKPiBZb3Ugc2hvd2VkIHdpdGggeW91ciBsb2dpYyBhbmFs
eXplciB3aXRoIG5vdGhpbmcgcGx1Z2dlZCBpbiBhbmQgY2VjCj4gbm90IG11eGVkIHRvIG0xLCBk
YXRhIHdhcyBwcmVzZW50IG9uIG0xLgoKSXNzdWUgb2YgcHJlc2VuY2Ugb2YgZGF0YSBvbiBtMSB3
aXRoIG5vdGhpbmcgcGx1Z2dlZCB3YXMgbWlzdGFrZSBmcm9tIG15IHNpZGU6IHdyb25nIGJvYXJk
IHBpbiB1c2VkIHRvIGNvbm5lY3QgbG9naWMgYW5hbHlzZXIgR05ELgpBZnRlciBjb3JyZWN0bHkg
Y29ubmVjdGluZyBHTkQgLSBhbGwgaXMgb2sgKG5vIGFueSB1bmV4cGVjdGVkIGRhdGE7IHB1bHNl
cyBhcHBlYXJzIG9ubHkgYWZ0ZXIgY2VjIGNvbW1hbmRzOyBwdWxzZXMgdGltaW5ncyBhcmUgb2sg
c28gY2VjIHByb3RvY29sIGFuYWx5c2VyIHNob3dzIHJlYXNvbmFibGUgZGF0YTsgbm8gY2VjIHRp
bWluZyBlcnJvcnMgcmVwb3J0ZWQgYnkgcHJvdG9jb2wgYW5hbHlzZXIpLiAKCgo+IEkgcmVxdWVz
dGVkIHlvdSBpbnZlc3RpZ2F0ZQo+IHRoZSBmb2xsb3dpbmcsIHRvIHdoaWNoIHlvdSBoYXZlbid0
IHJlcGxpZWQ6Cj4gSGF2ZSB5b3UgdHJpZWQgZm9yY2luZyBtMCB0byBiZSBhc3NpZ25lZCB0byBh
IGRldmljZSBvdGhlciB0aGFuIGhkbWktY2VjPwoKSSdtIGEgYml0IGxvc3QgaGVyZTogdjEuMzEg
aHcgdXNlcyBtMSBhbmQgbTAgaXMgdW51c2VkLgpJcyB5b3UgaWRlYSB0byB2ZXJpZnkgdGhhdCBt
MCBpcyBub3QgdXNlZCBieSBoZG1pLWNlYyAtIGV2ZW4gd2hlbiBtMSBpcyBkZWNsYXJlZCBmb3Ig
aGRtaS1jZWMgaW4gRFQ/Ck1heSB5b3UgcGxzIGhpbnQgbWUgd2l0aCBhbnkgZXhhbXBsZSBvZiBE
VCBzbmlwcGV0IGZvciBZb3VyIG0wIGFzc2lnbm1lbnQgaWRlYT8gIAogCj4gSGF2ZSB5b3UgY2hl
Y2tlZCBpZiBtMSBpcyBzaG9ydGVkIHRvIGFub3RoZXIgcGluPwoKWWVzLiBMb29rcyBvayBmb3Ig
bWUuCihhcyByYWR4YSBkZWJpYW4gaGFzIHdvcmtpbmcgb2sgaGRtaS1jZWMgaSB0aGluayBodyBp
cyBvaykgCgo+IAo+IEluIHJlZ2FyZHMgdG8geW91ciBkYXRhIGZyYW1lcyBmb3IgNC4xOSB2cyA1
LjE4LCBpbWFnZS12aWV3LW9uIGlzIG5vdAo+IGEgdmFsaWQgY29tbWFuZCBpZiB0aGUgdG9wb2xv
Z3kgZG9lc24ndCBkZXRlY3QgYSBkZXZpY2Ugb24gdGhlIGJ1cy4KPiBJIHJlY29tbWVuZCBydW5u
aW5nIHRoZSBzYW1lIHRlc3QsIGV4Y2VwdCBydW4gYGNlYy1jdGwgLVMgLS1wbGF5YmFja2AKPiBh
bmQgcG9zdCB0aGUgcmVzdWx0cyBmb3IgYm90aC4KClBscyBmaW5kIHJlc3VsdHMgZm9yIGNvbW1h
bmQgYGNlYy1jdGwgLVMgLS1wbGF5YmFja2A6IAoKMS4gIHJhZHhhIHVidW50dSA0LjE5IGJzcDoK
bG9naWMgYW5hbHlzZXIgY2VjIHByb3RvIGRlY29kZWQgKyB0aW1pbmdzOiBodHRwczovL3Bhc3Rl
YmluLmNvbS9oSFBtS3Y0aQpGWUkgbG9naWMgYW5hbHlzZXIgb3V0cHV0IChmaXJzdCAzNTBtc2Vj
KTogaHR0cHM6Ly9wYXN0ZS5waWNzLzYzY2I0ZGM3ZjliNTFkODgyNWQzNzdiNDViZjcxYWU0Cgoy
LiBtYWlubGluZSA1LjE4LjY6CmxvZ2ljIGFuYWx5c2VyIGNlYyBwcm90byBkZWNvZGVkICsgdGlt
aW5nczogaHR0cHM6Ly9wYXN0ZWJpbi5jb20vWVlEVVk0eDEgCkZZSSBsb2dpYyBhbmFseXNlciBv
dXRwdXQgKGZpcnN0IDM1MG1zZWMpOiBodHRwczovL3Bhc3RlLnBpY3MvMGQ4OTRiOGNlYmExNjRk
YzZkNzQzZjgwNDRjN2UwMWUKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
