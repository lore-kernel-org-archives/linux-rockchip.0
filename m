Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A585FC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Dec 2022 06:06:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1iWvwtTwDsw62vlpWhhh3PqC8HfjLwyHF41iF76AxQE=; b=zIBBQ1HiSIzPXK
	FFy5zWHXCmOsw3N94iPn4NoLWTUXDM+5fcGVYMGb5eP9KYoY69+Si2EoWVFkRi2+Nld0ktD2HHFeh
	jVmErdk4Y86IPY8PJj7TjTtHMrBZM/sZSKJQ55jrW3qBYH1Y478V9wRhMEGQLhwfe73fZFxSGRusN
	7wTIds/X/8yCAYNbpnvfjD2lknuZUlQfyZr/+AizfJpCcmTl/8IpOEH+0wCfW7s4kPhTEn1BWitPv
	pwPNCv4gZmEi4opncDf/chcDfbQ+ck0VLHF1sQn/LDSgJEzxoXkB2yVriBps5/hTVinc+omshilQ+
	rZZzUzWnA+ZMJtl/X/0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7sEn-00ANt8-P2; Wed, 21 Dec 2022 06:05:57 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p7sEU-00ANbf-Ip; Wed, 21 Dec 2022 06:05:40 +0000
Received: by mail-qt1-x82d.google.com with SMTP id x11so12936576qtv.13;
        Tue, 20 Dec 2022 22:05:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CTBES3yJ2k7kxHLxg2MFG4+FEG+X7BypxEdYc1isplY=;
        b=j6+OwjMe6anmUq+Z3C3/J4Maz6ZD1sHsVp8b2rhiC95fY5rCdeszCdBt24wyGCjoOK
         nLYcDq9p4/JAZuTH+53MR0me4StToMIBoVfY3Koc4f9bAGEMJsypaFYk3Cs2OqSAhqpw
         BGr/bozkz6hE7kotPoZMCIqQKFgMisULFQwOSQ2595VCJnclSE2XjR6WmWf57Poyqqzr
         NQPIgmufneDkl4vcHBcdl5K6JhoRs4bRkjtPnDNI4dJBJ94Ad4zxIpfxmD/o8FTHwGGZ
         xu6LV6l2ckOvuVtkoJ8WUlEVHsqaXldO0TqFjNu0MTF3SLm/60lF0B6WuTsYe1y3JueA
         eptw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CTBES3yJ2k7kxHLxg2MFG4+FEG+X7BypxEdYc1isplY=;
        b=7qCrm6KsbaempAuQsqmGzMOPCRbW4JPtNv81yOpJkqAo9tpg2gh0M6WMFkIj/yEeNF
         jUUNHLdVi/w2w8zW5cdPy04CX8BUkNc9zdXVcPXM0ZzTm05S78Uu53xkspb4rz8qPedL
         gJmjEPr6kGBaG+rOS8K6TjxhdQXwyMgOhy1IvGeSNUNL9X/yDYKTNY7mRMyWURsPcGYQ
         mTpv7B3KuRYjPhOb/haS9+lC25CgN0T9J0HgH+Qcb5QjbGKZwB5zQGv+ZiGwUAJw6/IO
         xrLqF7NU0cnKoh5pCCTNjNrETuXZ5AxIjR5W1MyZ6oSuSbuDP+R/KTzqLfKR5NNohSOa
         4h+Q==
X-Gm-Message-State: AFqh2kpWyjIuFJIbF2Q0/VldbNhSKAp0MSnIgG9UnVI7DL0CA0wAYI7v
	BMmCY+lXFOBfb4mFqEPXs/oqKsmj+2hUsAH30ZA=
X-Google-Smtp-Source: AMrXdXuvA6z58v9Nai5t2roZ9vzH69AVh8tmnOnXcsOWiWe1DlxGLth7lEHmgbtTjEtCWcsc56mREmz263dWwh3mQlE=
X-Received: by 2002:a05:622a:1a06:b0:3a5:6822:1a42 with SMTP id
 f6-20020a05622a1a0600b003a568221a42mr18740qtb.174.1671602736260; Tue, 20 Dec
 2022 22:05:36 -0800 (PST)
MIME-Version: 1.0
References: <Y6GMnq3AC7Kbnag8@VM-66-53-centos> <a113d20c-dc6c-2e44-009f-d4b17beb8820@linaro.org>
 <3325915.e9J7NaK4W3@diego>
In-Reply-To: <3325915.e9J7NaK4W3@diego>
From: ty <zonyitoo@gmail.com>
Date: Wed, 21 Dec 2022 14:05:25 +0800
Message-ID: <CAMmci2UNqbv-ViaGM5Avi5fhSEuDa=MFkq1bDXyDsrNFM=t0jA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add RK3566 LubanCat 1
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Peter Geis <pgwipeout@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, DHDAXCW <lasstp5011@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221220_220538_697990_DA7CB211 
X-CRM114-Status: GOOD (  15.59  )
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

b2suIE1vZGlmaWNhdGlvbnMgYXJlIG1hZGUgaW4gUEFUQ0ggdjQuCgpOT1RFOiBQQVRDSCB2MyB3
YXMgc2VudCB3aXRoIGFuIG9sZCBwYXRjaCBmaWxlIGFzIGF0dGFjaG1lbnQsIHNvIHBsZWFzZSBp
Z25vcmUuCk5PVEU6IExhc3QgUmVwbHkgRS1tYWlsIHdlcmUgc2VudCBpbiBIVE1MIG1vZGUuCgoK
SGVpa28gU3TDvGJuZXIgPGhlaWtvQHNudGVjaC5kZT4g5LqOMjAyMuW5tDEy5pyIMjHml6Xlkajk
uIkgMDE6MzLlhpnpgZPvvJoKPgo+IEFtIERpZW5zdGFnLCAyMC4gRGV6ZW1iZXIgMjAyMiwgMTc6
MTQ6NTEgQ0VUIHNjaHJpZWIgS3J6eXN6dG9mIEtvemxvd3NraToKPiA+IE9uIDIwLzEyLzIwMjIg
MTE6MjEsIFl1dGVuZyBaaG9uZyB3cm90ZToKPiA+ID4gTHViYW5DYXQgMSBpcyBhIFJvY2tjaGlw
IFJLMzU2NiBTQkMgYmFzZWQKPiA+ID4gaXMgZGV2ZWxvcGVkIGJ5IEVtYmVkRmlyZSBFbGVjdHJv
bmljcyBDby4sIEx0ZC4KPiA+ID4gTWluaSBMaW51eCBDYXJkIFR5cGUgQ2hlYXAgQ29tcHV0ZXIg
RGV2ZWxvcG1lbnQgQm9hcmQKPiA+Cj4gPiBQbGVhc2Ugd3JhcCBjb21taXQgbWVzc2FnZSBhY2Nv
cmRpbmcgdG8gTGludXggY29kaW5nIHN0eWxlIC8gc3VibWlzc2lvbgo+ID4gcHJvY2VzczoKPiA+
IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y1LjE4LXJjNC9zb3VyY2UvRG9jdW1l
bnRhdGlvbi9wcm9jZXNzL3N1Ym1pdHRpbmctcGF0Y2hlcy5yc3QjTDU4Ngo+ID4KPiA+ID4gKyAg
IHJrODA5OiBwbWljQDIwIHsKPiA+ID4gKyAgICAgICAgICAgY29tcGF0aWJsZSA9ICJyb2NrY2hp
cCxyazgwOSI7Cj4gPiA+ICsgICAgICAgICAgIHJlZyA9IDwweDIwPjsKPiA+ID4gKyAgICAgICAg
ICAgaW50ZXJydXB0LXBhcmVudCA9IDwmZ3BpbzA+Owo+ID4gPiArICAgICAgICAgICBpbnRlcnJ1
cHRzID0gPFJLX1BBMyBJUlFfVFlQRV9MRVZFTF9MT1c+Owo+ID4gPiArICAgICAgICAgICBhc3Np
Z25lZC1jbG9ja3MgPSA8JmNydSBJMlMxX01DTEtPVVRfVFg+Owo+ID4gPiArICAgICAgICAgICBh
c3NpZ25lZC1jbG9jay1wYXJlbnRzID0gPCZjcnUgQ0xLX0kyUzFfOENIX1RYPjsKPiA+ID4gKyAg
ICAgICAgICAgI2Nsb2NrLWNlbGxzID0gPDE+Owo+ID4gPiArICAgICAgICAgICBjbG9jay1uYW1l
cyA9ICJtY2xrIjsKPiA+ID4gKyAgICAgICAgICAgY2xvY2tzID0gPCZjcnUgSTJTMV9NQ0xLT1VU
X1RYPjsKPiA+ID4gKyAgICAgICAgICAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+ID4g
KyAgICAgICAgICAgcGluY3RybC0wID0gPCZwbWljX2ludD47Cj4gPiA+ICsgICAgICAgICAgIHJv
Y2tjaGlwLHN5c3RlbS1wb3dlci1jb250cm9sbGVyOwo+ID4gPiArICAgICAgICAgICAjc291bmQt
ZGFpLWNlbGxzID0gPDA+Owo+ID4gPiArICAgICAgICAgICB2Y2MxLXN1cHBseSA9IDwmdmNjM3Yz
X3N5cz47Cj4gPiA+ICsgICAgICAgICAgIHZjYzItc3VwcGx5ID0gPCZ2Y2MzdjNfc3lzPjsKPiA+
ID4gKyAgICAgICAgICAgdmNjMy1zdXBwbHkgPSA8JnZjYzN2M19zeXM+Owo+ID4gPiArICAgICAg
ICAgICB2Y2M0LXN1cHBseSA9IDwmdmNjM3YzX3N5cz47Cj4gPiA+ICsgICAgICAgICAgIHZjYzUt
c3VwcGx5ID0gPCZ2Y2MzdjNfc3lzPjsKPiA+ID4gKyAgICAgICAgICAgdmNjNi1zdXBwbHkgPSA8
JnZjYzN2M19zeXM+Owo+ID4gPiArICAgICAgICAgICB2Y2M3LXN1cHBseSA9IDwmdmNjM3YzX3N5
cz47Cj4gPiA+ICsgICAgICAgICAgIHZjYzgtc3VwcGx5ID0gPCZ2Y2MzdjNfc3lzPjsKPiA+ID4g
KyAgICAgICAgICAgdmNjOS1zdXBwbHkgPSA8JnZjYzN2M19zeXM+Owo+ID4gPiArICAgICAgICAg
ICB3YWtldXAtc291cmNlOwo+ID4gPiArCj4gPiA+ICsgICAgICAgICAgIHJlZ3VsYXRvcnMgewo+
ID4gPiArICAgICAgICAgICAgICAgICAgIHZkZF9sb2dpYzogRENEQ19SRUcxIHsKPiA+Cj4gPiBO
byB1bmRlcnNjb3JlcyBpbiBub2RlIG5hbWVzLiBBbnl0aGluZyByZXF1aXJlcyBpdD8KPgo+IGxv
b2tzIGxpa2UgdGhlIGFuc3dlciBpcyAiaXQgZGVwZW5kcyIgOi0pCj4KPiBXaGVuIHRoZSByZWd1
bGF0b3ItZnJhbWV3b3JrIHNlYXJjaGVzIGZvciB0aGUgbm9kZSB0byBnZXQgdGhlIGluaXQtZGF0
YSBmcm9tCj4gaXQgdXNlcyB0aGUgYWN0dWFsIG5vZGUtbmFtZSBvciB0aGUgcmVndWxhdG9yLWNv
bXBhdGlibGUgcHJvcGVydHkgWzBdCj4gdG8gbWF0Y2ggYWdhaW5zdC4KPgo+IEFuZCBnb2luZyB2
aWEgcmVndWxhdG9yLWNvbXBhdGlibGUgd2FzIHRoZSAib2xkIiB3YXksIGFscmVhZHkgZGVwcmVj
YXRlZAo+IGJlZm9yZSB0aGUgeWFtbC1jb252ZXJzaW9uIFsxXSBhbmQgbm90IGV2ZW4gaW5jbHVk
ZWQKPgo+IFNvIG1hdGNoaW5nIGFnYWluc3QgdGhlIG5vZGUtbmFtZSBpcyB0aGUgY29ycmVjdCB3
YXkgdG8gZ28gYW5kIGl0J3MgYWN0dWFsbHkKPiBwYXJ0IG9mIHRoZSByazh4eC1iaW5kaW5nIGFz
IHdlbGwgWzJdCj4KPgo+IEhvcGUgdGhhdCBoZWxwcywKPiBIZWlrbwo+Cj4KPiBbMF0gaHR0cHM6
Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9ydmFsZHMvbGludXgu
Z2l0L3RyZWUvZHJpdmVycy9yZWd1bGF0b3Ivb2ZfcmVndWxhdG9yLmMjbjQ3Nwo+IFsxXSBodHRw
czovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxkcy9saW51
eC5naXQvY29tbWl0L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9yZWd1bGF0b3Iv
cmVndWxhdG9yLnR4dD9pZD0xOTE0YTk5NjQzNmIwOTE4NjQ4OWRhNzNiODA3ZTFkZjcxMjU5ZjY3
Cj4gWzJdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3Rv
cnZhbGRzL2xpbnV4LmdpdC90cmVlL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9t
ZmQvcm9ja2NoaXAscms4MDkueWFtbCNuODQKPgo+CgoKLS0gClkuIFQuIFpob25nClN0dWRlbnQg
b2YgVGhlIFVuaXZlcnNpdHkgb2YgSG9uZyBLb25nLCBtYWpvciBpbiBDb21wdXRlciBTY2llbmNl
LgpFLW1haWw6IHpvbnlpdG9vQGdtYWlsLmNvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
