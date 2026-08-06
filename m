Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7639DC56207
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 14:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gb2YBD3QwgvnihpOZNoT7blxmObmsbhP3FUMm/ldTCs=; b=NEssHwjn/QL3Af
	kYejecqLLGEAPM+1cx+7WOKoks0Cs5NtapOF1IJ1D5KTwTnOEoH0OotZKT4se8rwYoFMpfrvZCIRH
	sYtGKgV5hSC99E0JGctOccRWxsaGG/v68VmZug10vCmsUfKqpnntJrOVQpJVA8i8Mw6+XlgTppZuF
	4hSk9lQNgiNvdASeWHoTMVNFaHQaACD/7KvzRF/PXp/xx+hyuR25WTee+JCOhyjoWL+W1awF6JHF5
	r1ddnkI7nrVKyLiEBYOSVaChnjW6aRlu+rY1w0Wm5T0r+ztyA15boe+JPXPqPzfYCXhIXFcuTHTHJ
	ITeGD583knwVD4mB/6mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrzDn-00000005zId-2qGX;
	Thu, 06 Aug 2026 14:37:23 +0000
Received: from mail-ed2-x08.google.com ([2a00:1450:4864:33::8])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrzDj-00000005zGz-3dCy
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Aug 2026 14:37:22 +0000
Received: by mail-ed2-x08.google.com with SMTP id 4fb4d7f45d1cf-6a18e92de2fso544026a12.0
        for <linux-rockchip@lists.infradead.org>; Thu, 06 Aug 2026 07:37:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1786027038; cv=none;
        d=google.com; s=arc-20260327;
        b=REcngIoYLjIx0arHKesqsaWzf5puZNcu65x+GbqeRcbOL9v5lJPcu76b8xi3CHvXLh
         51ah+szZPAzcuWoJ9AVUHiqR/+QkYTPRLS3b6XSZwow0jW1IZ4DzJK//lMfd78K6svnt
         LMcowTzrRJfeOpkRcDt8cfoxHlQwPFZQmu8ZYQH6PMPXG2prEGadJ/LnQRMLxRXHIdbS
         vGRfW/kAzV1Gmgby1YSE61DFwWYy0f9G8sBst81KDHW3IHHhHpbgY3QIE3fCSq34p4h/
         WR3kL0P6wyv4EuyVEBByxZUiyDC9odK0dKbdtIxg6sn/OQCGVRSqADyGFolhfKBKnWVh
         Anlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Bm5BP89+hYEVtcyVkLS5Qjs1T3/LfUuhKO2G7nsDJlg=;
        fh=IsK/0GB+mW2orgILX3SeBH44nkRvr5llU5nlH10FqbM=;
        b=mArSttvvVC1nG/ikeGlPTAdYKkp8nBVku8FjbGci5/dvFscCyrZin12ilhkB5PA2EV
         PhjTSY9j9RhcKxy9jJ7oHz7cYLCV2mBT2D2k7hkQrlUoLaBfP4IJDpmACaM5f+cRsyBB
         QQkPNaXEwEzOI8fhuXXov46q1PW4aFTI4wYSB3lMSZ+SfI523Ri/mvaDSiGEP7lxtHfR
         GLscSZQnYs9UM0Fm/gJq0AvqorAhiHcfWAKdhpYY3Dwjv/s5F0l9gBDvI1ntbq750q6j
         6y5OwVMSGQteSemzH0beGSeAlzBHir48prCV8upRBTc6XPHYvlvoz1dV0CDWIXl42a2h
         miqw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786027038; x=1786631838; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=Bm5BP89+hYEVtcyVkLS5Qjs1T3/LfUuhKO2G7nsDJlg=;
        b=eojSuUr2/09UeCOF/7dfGbDd3eoXOTclrco54OdyHo1ST1JbvR9wmoPuvzdSFz0t74
         FEsu+d1SEQAnTmBZmkfwnBINbSR3iocvovC4SbqCAFvl+0M/mIIOWy6OQBbvnqYFZn6m
         wEeHJ1H/3UzzF7bAmfKMgR9cbCXJBbAaW7YedcfxTeC8teXMC2FeJLm8+8yo23YBQ/Ok
         xpq7K7IbvQGYgZBg6ei9fD4jAB/4g+c7eKT/jjfx5ipF5vjFUR/9tQTg7XNML4JUgGlF
         I0PVhcUDGY+RWqUb4URTQZj4xs8RJiqZXOfEJuQ8VHZhmE/+HskF6+GBqO1oLv5a/z3m
         KVEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786027038; x=1786631838;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Bm5BP89+hYEVtcyVkLS5Qjs1T3/LfUuhKO2G7nsDJlg=;
        b=cvClozac9MQGQNxCBCkic6Tr/PJtQH67KObL3i0XPUKl7JVJo3Yn6no8U7rXNIh0fl
         6/GDtTdew2WhMKkoHH6GToeEm8ngxRSs3ZuEY9CJm5xrTa601qjxsQF/kEwP8wlrpi79
         C0K5dCUQjfPoHC0EEZYsBnh3JSkqQ75vEUKxHBv5Djs/kWa7Skw+576RKT9p4AB1WtLU
         6SXeRiVOJZAyjY4+tc8c5G0OD7zE7Ch0VvnZPMK1XYkFngfqj5NUPDCzW+4r+bURk3Us
         oRGZ4sy3aAnasyX1tT/pxclg7z+DVQSFITrJWT34AgBYwLq7RhOm3RZxORLN7LDV+vS+
         1oxQ==
X-Forwarded-Encrypted: i=1; AHgh+Rp6szJRrUUsMM8237yslPnbrPKFIrimED7JggXTLgrtHqGkVQC/KUV6WHTY1cAVZY6ZCN4hrMIiyDFfMVhmLQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyuohG+yt+ibLiobFZw9cqJlJTuRWg/imhE1+dUvrGv/tXAt3Lx
	r1k8utkzAB8JiJAoSTsnTm+fX3lP8Q2odb/EUyvEy6Z90QLg2LplXQlE9w2lLFrAW/dLngYvx71
	2vfhNYPCEW/Qw7cZgoxs7TTYRV3rje9A=
X-Gm-Gg: AR+sD12crYb0iGfe6uI/ycomy2RIvm6wDcYa/Krf8YlwIoLtU5XotiLapayv8zGodTO
	oeOXjZCRQdpAXtwWHTTSVNeLV46fUrOMvkNzbeKql5hIvF6DAeMy/u9JJQ3RiNzKs79JkhEDrR7
	O/BFikEExvWfus18tJ22s+QOMn9CjmxsRmeEPdXkDEjl+GOV9tsekNtmUHYbfHOreNDc90ZDZHl
	wq9YdsJM26wima9bHJSfRSNQFfA8mq45FAjgA1Nh8Gw/pUgJDtZyL47+OWwD7RJunMw/OK8H+h8
	aVbgWkbaun/YUsUYiaGhYGpTCmS7f/GXfJsTVcs4a6N79lGkFrsqNDONpTUZ0uEPIvX5lA==
X-Received: by 2002:a05:6938:a08d:20b0:c20:5121:89c1 with SMTP id
 a640c23a62f3a-c205121911dmr431715766b.12.1786027037242; Thu, 06 Aug 2026
 07:37:17 -0700 (PDT)
MIME-Version: 1.0
References: <20260801142244.679437-2-coiaprant@gmail.com> <20260801142244.679437-6-coiaprant@gmail.com>
 <20260805-stirring-wondrous-mule-faf37d@quoll>
In-Reply-To: <20260805-stirring-wondrous-mule-faf37d@quoll>
From: Coia Prant <coiaprant@gmail.com>
Date: Thu, 6 Aug 2026 22:37:12 +0800
X-Gm-Features: AUfX_mwaP0yLJ9HCO94OK0aTh4w5tIMmxMB_NLgFfaixnrT58_1pSbbkFIzX-Ko
Message-ID: <CALj3r0iFULLqkfqPA6RdGPc1PQ4CvOPw82_+QmRn8vBhWnBMHA@mail.gmail.com>
Subject: Re: [PATCH v2 04/10] dt-bindings: net: pcs: add rockchip,rk3568-xpcs binding
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Romain Gantois <romain.gantois@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	Shawn Lin <shawn.lin@rock-chips.com>, David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260806_073719_934080_58082015 
X-CRM114-Status: GOOD (  28.29  )
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

SGkgS3J6eXN6dG9mLAoKS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPiDkuo4y
MDI25bm0OOaciDbml6Xlkajlm5sgMTQ6NDnlhpnpgZPvvJoKPiBJIGRvbid0IHVuZGVyc3RhbmQg
YW55IG9mIHRoZXNlLiBUaGVyZSBhcmUgbm9uZSBvZiBteSBxdW90ZXMuIEkgZG9uJ3QKPiBnZXQg
d2hhdCB5b3UgYXJlIHJlZmVycmluZyB0by4KClNvcnJ5IGZvciB0aGUgY29uZnVzaW5nIHByZXZp
b3VzIHJlcGx5LCBJIGRpZG4ndCBxdW90ZSB5b3VyIG9yaWdpbmFsCmNvbW1lbnRzIHByb3Blcmx5
LiBIZXJlJ3MgYSBjbGVhbiByZXNwb25zZSB3aXRoIHlvdXIgcG9pbnRzIHF1b3RlZC4KCktyenlz
enRvZiBLb3psb3dza2kgPGtyemtAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDjmnIg15pel5ZGo5LiJ
IDE1OjI55YaZ6YGT77yaCj4KPiBPbiBTYXQsIEF1ZyAwMSwgMjAyNiBhdCAxMDoyMjoyOFBNICsw
ODAwLCBDb2lhIFByYW50IHdyb3RlOgo+ID4gQWRkIGRldmljZSB0cmVlIGJpbmRpbmcgZG9jdW1l
bnRhdGlvbiBmb3IgdGhlIFN5bm9wc3lzIERlc2lnbldhcmUKPiA+IFhQQ1MgaW50ZWdyYXRlZCBv
biB0aGUgUm9ja2NoaXAgUkszNTY4IFNvQy4KPiA+Cj4gPiBUaGUgWFBDUyBpcyBhY2Nlc3NlZCBv
dmVyIHRoZSBBUEIzIGJ1cyBhbmQgaW50ZXJuYWxseSBjb25uZWN0ZWQgdG8KPiA+IGEgTmFuZW5n
IENvbWJvIFNlckRlcyBQSFkuICBJdCBzdXBwb3J0cyAxMDAwQkFTRS1YLCBTR01JSSwgYW5kCj4g
PiBRU0dNSUkgbW9kZXMsIHdpdGggZm91ciBNSUkgcG9ydHMuCj4gPgo+ID4gVGhlIGJpbmRpbmcg
ZGVzY3JpYmVzOgo+ID4gLSBSZXF1aXJlZCBwcm9wZXJ0aWVzOiBjb21wYXRpYmxlLCByZWcsIGNs
b2NrcywgY2xvY2stbmFtZXMKPiA+IC0gT3B0aW9uYWwgcHJvcGVydGllczogcGh5cywgcGh5LW5h
bWVzLCBwb3dlci1kb21haW5zCj4gPiAtIHBjcy1taWkgc3ViLW5vZGVzIGZvciBlYWNoIE1JSSBw
b3J0IChyZWcgMC4uMykKPgo+IElycmVsZXZhbnQgcGFyYWdyYXBoLiBXZSBjYW4gcmVhZCB0aGUg
ZGlmZi4gRHJvcC4KPiBBIG5pdCwgc3ViamVjdDogZHJvcCBzZWNvbmQvbGFzdCwgcmVkdW5kYW50
ICJiaW5kaW5nIi4gVGhlCj4gImR0LWJpbmRpbmdzIiBwcmVmaXggaXMgYWxyZWFkeSBzdGF0aW5n
IHRoYXQgdGhlc2UgYXJlIGJpbmRpbmdzLgo+IFNlZSBhbHNvOgo+IGh0dHBzOi8vZWxpeGlyLmJv
b3RsaW4uY29tL2xpbnV4L3Y3LjEtcmM3L3NvdXJjZS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3Mvc3VibWl0dGluZy1wYXRjaGVzLnJzdCNMMjMKCk9rYXkuIEkgd2lsbCBkcm9wIHRo
ZXNlIGluIHYzLgoKPiA+ICtwcm9wZXJ0aWVzOgo+ID4gKyAgY29tcGF0aWJsZToKPiA+ICsgICAg
Y29uc3Q6IHJvY2tjaGlwLHJrMzU2OC14cGNzCj4gPiArCj4gPiArICAnI2FkZHJlc3MtY2VsbHMn
Ogo+ID4gKyAgICBjb25zdDogMQo+ID4gKwo+ID4gKyAgJyNzaXplLWNlbGxzJzoKPiA+ICsgICAg
Y29uc3Q6IDAKPgo+IHJlZyBpcyBhbHdheXMgdGhlIHNlY29uZCBwcm9wZXJ0eS4KPgo+IEFsc28s
IHVzZSBjb25zaXN0ZW50IHN0eWxlIG9mIHF1b3Rlcy4KCk9rYXkuCgo+ID4gKwo+ID4gKyAgcmVn
Ogo+ID4gKyAgICBkZXNjcmlwdGlvbjogfAo+ID4gKyAgICAgIEJhc2UgYWRkcmVzcyBhbmQgc2l6
ZSBvZiB0aGUgWFBDUyByZWdpc3RlciBzcGFjZSBtYXBwZWQgb3ZlciB0aGUKPiA+ICsgICAgICBB
UEIzIGJ1cy4KPgo+IERyb3AgZGVzY3JpcHRpb24sIHJlZHVuZGFudC4KCkknbGwgZHJvcCB0aGUg
cmVkdW5kYW50IGRlc2NyaXB0aW9uIHBhcmFncmFwaCBmcm9tIHRoZSBjb21taXQgbWVzc2FnZQph
bmQga2VlcCBvbmx5IHRoZSBlc3NlbnRpYWwgaW5mb3JtYXRpb24uCgo+ID4gKyAgICBtYXhJdGVt
czogMQo+ID4gKwo+ID4gKyAgY2xvY2tzOgo+ID4gKyAgICBkZXNjcmlwdGlvbjogfAo+ID4gKyAg
ICAgIENsb2NrIHNvdXJjZXMgZm9yIHRoZSBYUENTOgo+ID4gKyAgICAgIC0gY3NyOiBBUEIzIGJ1
cyBpbnRlcmZhY2UgY2xvY2sgKGNsa19jc3JfaSksIHJlcXVpcmVkIGZvciByZWdpc3Rlcgo+ID4g
KyAgICAgICAgYWNjZXNzLgo+ID4gKyAgICAgIC0gZWVlOiBFRUUgY2xvY2sgKGNsa19lZWVfaSks
IHJlcXVpcmVkIGZvciBFbmVyZ3kgRWZmaWNpZW50Cj4gPiArICAgICAgICBFdGhlcm5ldCAoRUVF
KSBvcGVyYXRpb24uCj4gPiArICAgIG1pbkl0ZW1zOiAyCj4gPiArICAgIG1heEl0ZW1zOiAyCj4K
PiBObywgaW5zdGVhZCBsaXN0IGl0ZW1zIHdpdGggZGVzY3JpcHRpb24uCgpJJ2xsIGNoYW5nZSB0
byBpdGVtcyB3aXRoIGRlc2NyaXB0aW9ucy4KCj4gPiArCj4gPiArICBjbG9jay1uYW1lczoKPiA+
ICsgICAgaXRlbXM6Cj4gPiArICAgICAgLSBjb25zdDogY3NyCj4gPiArICAgICAgLSBjb25zdDog
ZWVlCj4gPiArCj4gPiArICBwaHlzOgo+ID4gKyAgICBkZXNjcmlwdGlvbjogfAo+Cj4gRG8gbm90
IG5lZWQgJ3wnIHVubGVzcyB5b3UgbmVlZCB0byBwcmVzZXJ2ZSBmb3JtYXR0aW5nLgoKSSdsbCBy
ZW1vdmUgdW5uZWNlc3NhcnkgJ3wnIHdoZXJlIG5vdCBuZWVkZWQuCgo+ID4gKyAgICAgIFRoZSBw
aGFuZGxlIG9mIFNlckRlcyBQSFkgKE5hbmVuZyBDb21ibyBQSFkpIHRoYXQgcHJvdmlkZXMKPiA+
ICsgICAgICB0aGUgc2VyaWFsIGxhbmVzIGZvciAxMDAwQkFTRS1YIC8gU0dNSUkgLyBRU0dNSUku
Cj4gPiArICAgICAgVGhlIFNlckRlcyBtdXN0IGJlIHBvd2VyZWQgb24gYW5kIGluaXRpYWxpc2Vk
IGJlZm9yZSBhbnkgWFBDUwo+ID4gKyAgICAgIHJlZ2lzdGVyIGFjY2Vzcy4KPiA+ICsgICAgbWF4
SXRlbXM6IDEKPiA+ICsKPiA+ICsgIHBoeS1uYW1lczoKPiA+ICsgICAgY29uc3Q6IHNlcmRlcwo+
ID4gKwo+ID4gKyAgcG93ZXItZG9tYWluczoKPiA+ICsgICAgZGVzY3JpcHRpb246IHwKPiA+ICsg
ICAgICBQb3dlciBkb21haW4gZm9yIHRoZSBYUENTLgo+Cj4gRHJvcCBzZW50ZW5jZSBhbmQgfAoK
SSdsbCBkcm9wIHRoZSByZWR1bmRhbnQgcGFydC4KCj4gPiArICAgICAgT24gUkszNTY4IHRoaXMg
aXMgdHlwaWNhbGx5IHRoZSBQRF9QSVBFIHBvd2VyIGRvbWFpbiwgd2hpY2ggYWxzbwo+ID4gKyAg
ICAgIHN1cHBsaWVzIHRoZSBTZXJEZXMgUEhZLgo+ID4gKyAgICBtYXhJdGVtczogMQo+ID4gKwo+
ID4gK3BhdHRlcm5Qcm9wZXJ0aWVzOgo+ID4gKyAgIl5wY3MtbWlpQFswLTNdJCI6Cj4KPiBXaHkg
YGdpdCBncmVwIHBjcy1taWlAYCBnaXZlcyBtZSBubyByZXN1bHRzPyBBcmUgeW91IGRvaW5nIHRo
aXMKPiBzaW1pbGFybHkgdG8gZXhpc3RpbmcgZGV2aWNlcyBvciBpcyB0aGlzIHF1aXRlIGRpZmZl
cmVudCBkZXZpY2UgdGhhbgo+IGV2ZXJ5IG90aGVyIGhhcmR3YXJlPwoKSSB1c2VkICJwY3MtbWlp
IiBiZWNhdXNlIHRoZSBSb2NrY2hpcCBUUk0gcmVmZXJzIHRvIHRoZXNlIGFzICJNSUkgcG9ydHMi
CmFuZCB0aGV5IGFyZSBmdW5jdGlvbmFsbHkgUENTIGluc3RhbmNlcy4gSSBzZWUgYSBzaW1pbGFy
IHBhdHRlcm4gaW4gdGhlClJlbmVzYXMgUlpOMSBNSUlDIGJpbmRpbmcgKHJlbmVzYXMscnpuMS1t
aWljLnlhbWwpLCB3aGljaCB1c2VzCiJtaWktY29udkBbMC01XSQiIGZvciBpdHMgcG9ydHMuCgpJ
ZiB5b3UgcHJlZmVyIGEgZGlmZmVyZW50IG5hbWUgKGUuZy4sICJwb3J0QDAiLSJwb3J0QDMiKSwg
SSdtIGhhcHB5IHRvCmNoYW5nZSBpdC4gUGxlYXNlIGxldCBtZSBrbm93LgoKPiA+ICsgICAgdHlw
ZTogb2JqZWN0Cj4gPiArICAgIGRlc2NyaXB0aW9uOiB8Cj4KPiBTYW1lIGhlcmUKPgo+ID4gKyAg
ICAgIE9uZSBvZiB0aGUgZm91ciBNSUkgcG9ydHMgb2YgdGhlIFhQQ1MuCj4gPiArICAgICAgVGhl
IHBvcnQgbnVtYmVyIGlzIHNwZWNpZmllZCBieSB0aGUgcmVnIHByb3BlcnR5ICgwLi4zKS4KPgo+
IERyb3Agc2VudGVuY2UsIHJlZHVuZGFudC4gU2NoZW1hIHRlbGxzIHRoYXQuCgpJJ2xsIGZpeCB0
aGlzIHRvIHVzZSBpdGVtcyB3aXRoIG1pbi9tYXguCgo+ID4gKyAgICAgIFRoZSBwb3J0IGlzIGxp
bmtlZCB0byBhbiBFdGhlcm5ldCBNQUMgY29udHJvbGxlciB2aWEgdGhlCj4gPiArICAgICAgcGNz
LWhhbmRsZSBwcm9wZXJ0eSBpbiB0aGUgTUFDJ3MgZGV2aWNlIHRyZWUgbm9kZS4KPiA+ICsKPiA+
ICsgICAgcHJvcGVydGllczoKPiA+ICsgICAgICByZWc6Cj4gPiArICAgICAgICBtaW5pbXVtOiAw
Cj4gPiArICAgICAgICBtYXhpbXVtOiAzCj4gPiArICAgICAgICBkZXNjcmlwdGlvbjogfAo+Cj4g
QXMgd2VsbAo+Cj4gPiArICAgICAgICAgIE1JSSBwb3J0IG51bWJlciBvZiBQQ1MuCj4gPiArCj4g
PiArICAgICAgc3RhdHVzOiB0cnVlCj4KPiBOb3BlLCBkbyB5b3Ugc2VlIGFueXdoZXJlIGNvZGUg
bGlrZSB0aGlzPwoKSSdsbCByZW1vdmUgdGhpcyBnZW5lcmljIHByb3BlcnR5LgoKVGhhbmtzLApD
b2lhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
