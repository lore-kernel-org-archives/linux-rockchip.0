Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C7FBCCA470
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Oct 2025 14:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zSAfDxmDydZyFODnbBTb8oyFBhq1wqSCobvIgxp85to=; b=Yzo8hrWrLwlFNM
	iDoEC0/svxy0oPDWWUvtSA70I6kRtmC4BS19VsCa4/M1ha728jZPWjOq0N/VeKFpDmIVghw1uG6+7
	ZvNrZKnOGglB4VBOjQVjnt6QmFsPmV8sMuyid8lFjVeP99ZGSfP7UlN60wKGHHcsWgGsebkk7mhwg
	AXaxM6ZR40oCIHZTHbWSaKxlcLsLx1UMOv3kjS811tMVUc9gAPDAHRHwfam6+oDG/1KIUEjytE+nb
	r/8WeG6AA/r47VYk4jhOogq7Y+Fua8SKBnsVYh33v22BRDHat3x0ocTHItywHFfjFq7ZBsd1jc+vj
	pYd2wtEs9oBqweAjsjQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v697F-00000002Dt8-2rRq;
	Tue, 07 Oct 2025 14:56:37 +0000
Received: from mail-qk1-x72f.google.com ([2607:f8b0:4864:20::72f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v697C-00000002Drf-24Qc
	for linux-rockchip@lists.infradead.org;
	Tue, 07 Oct 2025 14:56:35 +0000
Received: by mail-qk1-x72f.google.com with SMTP id af79cd13be357-858183680b4so782281885a.2
        for <linux-rockchip@lists.infradead.org>; Tue, 07 Oct 2025 07:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759848993; x=1760453793; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2GhP8a/ZKQuCgI57gL3YaLW/ubXrMPM4jolOkHKTB/I=;
        b=WPZTGy40UfzvVU0ptv6p4HiGon7dyc6drwO7FjBivo8GPSiyfEPq3AfBFAKjkm1X/X
         XrbXez7vafvd3dGrb3lOTkb9SkVCaH5VN9s/WYsmfKTITEjDMRF24+dd5DXs/qp6iPA7
         bZ78068jQo1ulvMfgFCo5EPJ/eOgcPeGSsj3co5SYcvjSkgBhuU27Wftzk8lXaUCJlwd
         TEKd4tOZ2JQDAaqinV4cC3tIiRE/X6i8iqWvC8lnD4PFHU7pe927nmL+g04troCVds2B
         M7g3z+ZU0+tNVx5HlBDvb5Dl8VjVlQjYdFvporKLhuWmloN0jnA4nGCuJoYIZTYc4M+2
         oc4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759848993; x=1760453793;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2GhP8a/ZKQuCgI57gL3YaLW/ubXrMPM4jolOkHKTB/I=;
        b=Cclu+8t1tuO9k0hcxxUuMuSM/RajlbfANBYz/XFvILPJehtlDiHWZvmEKNx20f/QL1
         NrojraxRdLIRVoek/J98CO6NHtYlOxOh6+jRb2hER8mJko5J6gKjyi05oC061wxpAIFH
         VdKpgYRkj8gvW72aMs9X84e8LI/riW77zQagTPCwLN6uR3dpOokkpFC2rqtlb8JBkokr
         xgbgLtLCTKr5vklJF1eKaAJ5yK+xe08CPLGgd3WUKnfuOorLK6R+Nb/z4Wwzq0mf/NWk
         eA4VXkkTnGw+bO8jEhKBfnf6IYCkQIfv/fjJKsaOEi6k/faZMhswzUAV+30QYdx1f5B+
         jD6g==
X-Forwarded-Encrypted: i=1; AJvYcCUXOy3I9KTgrDjqV6DOkaAVgjS5vY+WlZlMvyg4YsEuYLJQqxFjYIjoYsSATa/8RgF0EmngSuQ0ZFrW+5GeyA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy8DGiYGFRLwe4ULkF54z3FEdC9HLAAn5cif982ktpAHmYl0DBR
	CqFITaBUdsnaIyCVVykw1CtSr6MYzfKrsgNrueywKmHOBoiuk64FBlrSynnV6e5aUolR0/edwJ3
	dI40EHnN+0ayyZ3A7km06BIOVz964MmI=
X-Gm-Gg: ASbGncvKMP+x9EpCoj4dsKogjpRHyHEZsPisEkUf+ptFKoyPXm9G9fbcPW2LeJbm8Js
	AlS3PXuhJUnxHuUrTCFp+2/veyK9hMddZVii+3ZI5fvHZlFRRsm9JZRgMnRdosAGbg99qiZrUkg
	Guur1gm9WEL8V3/bJcIwyvsAQGqGHRIDX+G4SAAhbc7yn4B1NC/wzjHV+mNzb5kyPMk7b07TFrw
	mjotRP4N60hjNtYHpqC9TY8Xd097KL/
X-Google-Smtp-Source: AGHT+IFrXi3dEsVh64oUPSZQJlGSlVMkDxHPAisOxAhnbSx/xiMMXQ/o7YtNW7v7WGp9iWQQ9a0t5dArstXdxIY4V5U=
X-Received: by 2002:a05:6214:1cc2:b0:78d:5f57:e91a with SMTP id
 6a1803df08f44-879dc860afcmr228051616d6.55.1759848992842; Tue, 07 Oct 2025
 07:56:32 -0700 (PDT)
MIME-Version: 1.0
References: <20250929065714.27741-1-jjm2473@gmail.com> <20250929065714.27741-3-jjm2473@gmail.com>
 <5700676.tIAgqjz4sF@phil> <CAP_9mL6e8ekL14xycSfPmVSkL7pANLeyewWd=rjxbtMgMQXxxw@mail.gmail.com>
 <6a5b9e68-4f23-49b9-b744-e84fc28a96b0@lunn.ch>
In-Reply-To: <6a5b9e68-4f23-49b9-b744-e84fc28a96b0@lunn.ch>
From: jjm2473 <jjm2473@gmail.com>
Date: Tue, 7 Oct 2025 22:56:21 +0800
X-Gm-Features: AS18NWCQpv-6neUw-wCX8BxmrQo_hHgklBBZppkW0N1Nfv2AVai07jEpSNzQRn8
Message-ID: <CAP_9mL5C1vKJq=bGM6DoK47vU4p-qvPeF-k6kztdnEp3y=kUhA@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add LinkEase EasePi R1
To: Andrew Lunn <andrew@lunn.ch>
Cc: Heiko Stuebner <heiko@sntech.de>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, quentin.schulz@cherry.de, kever.yang@rock-chips.com, 
	naoki@radxa.com, honyuenkwun@gmail.com, inindev@gmail.com, 
	ivan8215145640@gmail.com, neil.armstrong@linaro.org, mani@kernel.org, 
	dsimic@manjaro.org, pbrobinson@gmail.com, alchark@gmail.com, 
	didi.debian@cknow.org, jbx6244@gmail.com, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_075634_526820_7C65C052 
X-CRM114-Status: GOOD (  13.29  )
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

QW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPiDkuo4yMDI15bm0MTDmnIg25pel5ZGo5LiAIDIz
OjQz5YaZ6YGT77yaCj4KPiBPbiBUdWUsIFNlcCAzMCwgMjAyNSBhdCAwMjoyMDo1N0FNICswODAw
LCBqam0yNDczIHdyb3RlOgo+ID4gSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4g5LqO
MjAyNeW5tDnmnIgyOeaXpeWRqOS4gCAyMDoyOOWGmemBk++8mgo+ID4gPgo+ID4gPiBBbSBNb250
YWcsIDI5LiBTZXB0ZW1iZXIgMjAyNSwgMDg6NTc6MTMgTWl0dGVsZXVyb3DDpGlzY2hlIFNvbW1l
cnplaXQgc2NocmllYiBMaWFuZ2JpbiBMaWFuOgo+ID4gPiA+IExpbmtFYXNlIEVhc2VQaSBSMSBp
cyBhIGhpZ2gtcGVyZm9ybWFuY2UgbWluaSByb3V0ZXIgYmFzZWQgb24gUkszNTY4Lgo+ID4gPiA+
Cj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogTGlhbmdiaW4gTGlhbiA8amptMjQ3M0BnbWFpbC5jb20+
Cj4gPiA+Cj4gPiA+IEluIHYxIHRoaXMgcGF0Y2ggcmVjZWl2ZWQgYW4KPiA+ID4gQWNrZWQtYnk6
IENvbm9yIERvb2xleSA8Y29ub3IuZG9vbGV5QG1pY3JvY2hpcC5jb20+Cj4gPiA+Cj4gPiA+Cj4g
PiA+Cj4gPgo+ID4gSW4gdGhlIG5leHQgdmVyc2lvbiwgSSB3aWxsIGFkZCAnQWNrZWQtYnknIHRv
IHRoZSBjb21taXQgbWVzc2FnZQo+ID4gYW5kIHRoZW4gcnVuIGBnaXQgZm9ybWF0LXBhdGNoYCB0
byBhdm9pZCBtaXNzaW5nIGl0Lgo+Cj4gUGxlYXNlIGNvbnNpZGVyIHVzaW5nIGI0LiBJdCB3aWxs
IGF1dG9tYWdpY2FsbHkgY29sbGVjdCBhbGwgdGhlc2UKPiByZXZpZXdlZC1ieSwgYWNrZWQtYnkg
dGFncyBhbmQgYWxsIHRoZW0gdG8gdGhlIHBhdGNoZXMgZm9yIHlvdS4KPgo+ICAgICAgICAgICAg
ICBBbmRyZXcKClRoYW5rcyBmb3IgdGhlIHRpcCEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1y
b2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
