Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6B973CA6002
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Oct 2026 21:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QFMT4CO574BLcb0D+6CESAFk0qXR0B4wnOFwm7qEgi4=; b=cVp27zj6o01J8V
	YTXU0gAbZhLMguxCD8S61C42csU5JibY0HwqzDG0NonzxPCqHVofW9ZwLNEkbgmjMEGYv/V6JM3Gg
	CG1LuTbHzEDfjOdIvx+7iXgPxQRLxyERcljpiGzVBZ6C85sF13SD7EyRHVZtC2cDuuAG4By3s7Jjz
	Jjo69XMPRNAErrtjiAXteF3sM4S+m463KRuNdD+IzaDNjzBWJQdQRCAb6+fYVB53+76o/tAf31mxD
	lgCqKs7fFqoGc4rHX/N/iuVM69x03OSSG5jHF7aslakTJhNk+h4LKfBb+fgedGYc2uis8hcoQu6fM
	O7yy0hZbxcH4shslOaWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEZfL-00000003E5J-1I6P;
	Wed, 07 Oct 2026 21:59:11 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEZfI-00000003E4M-1ZUV
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Oct 2026 21:59:10 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-c2e2db5e8e4so765064566b.0
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Oct 2026 14:59:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791410346; cv=none;
        d=google.com; s=arc-20260327;
        b=ny2xwXY7qw3tGxOgn0lyO69iR3ECAfCjEBV3jSv8Pwq4haGJHuey0s1aCh12t9ySL8
         1mcU5/TvD1RbvmFi9AlIKNVM+yi/GhP85noukezGO0GoiFxapzKXBy+3ge9l/KHlTnAc
         Fwu57o79L1Eu5HFN3WBexcHTP4k9g/bTxiy31z9IIL4cUSOPcXCuoZrOMGPSP3IQqIS9
         YewfvXKfZKuPTi9jbADpTevyJeVDnsx6BdBqZfN9ym2rP++Q3TPXz6d6qI5rKHBTPU3E
         tnOfahH25AZLoNZMiRp76rqbUsC/DZ3fZv7rwNxK6IBj2FzGvX3o1KlDRxqggm/MZ2Iw
         ocDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=gTupLQqOTwq3jH2ZB+au6HoSAz3uNI5sbJCpfgUjYak=;
        fh=skNbcTQ0PYLSE+MYstfmvIjLuzXwKUf0+Kfwq+JQwco=;
        b=e8YLq4AU1H3ADXUS9q+l4dUgwaIA+lD+5PeGR2O6kRK3g+wT7/eEOdLb9fDLewjrm9
         QMvVQQZ/m8YHXchIP84F5RCw8RqFSzFLjk0S80lbaDn1bV8RMmQ4Bkzo4AzgIchA/LJX
         Rmh+THW0z9ffPnyRDG1QAPfUq42QFbmVbwSdTlkJmmMZjbTBAfcqkhs1+FUuSbdlFkh9
         EV2g+gi/H2e6uJDO/5ez0WGsQLT70KuuMdczrEC+ODTFGvRbKFrsDRUm37fKA3vMdhpl
         7mkvQypuqklf5PzKANsDolBuLU/0fKhbXUJF4kbso1LTA+yKptJh/G54WKjHD+lAxbjV
         Vl4Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1791410346; x=1792015146; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=gTupLQqOTwq3jH2ZB+au6HoSAz3uNI5sbJCpfgUjYak=;
        b=ij+NsrIUBb9Fp4ypjyXTWnpoFgrmOVseCzS2ACDqoKkCle2HHKjGAN3pE0o8Q0BUom
         U9OVbXGP7ZZK4EtzKK/lbApMCHnqLtNVDugdHxfVOJAlOFHK7HTQsVlA+FQ3KMyfN49b
         hAntyKTOiYYiPLpUV/dJXu5hNYYTMhe1KwNJz1KNwu2lXR/ovVn/SYL9SzBoHFSwnMsL
         Ft+h9dqdiXSWyNsKTjz1NiRaHKGkevgwL6EPP117kgtXkZt9+XbOaC3rRImAS9flCNjy
         a/TDHS2/Ri9iZUfwqFU4QV2z0x6AVXvh7A51iwPZaBsIvAJDSqBAcVetMtJIh5oS3/HR
         sBXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791410346; x=1792015146;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=gTupLQqOTwq3jH2ZB+au6HoSAz3uNI5sbJCpfgUjYak=;
        b=Vg1xInqAGkavxtW2bVKhbFNxR+dqkfaKpDzv6gHawiEZJHPha0FBPaMvblZIH5e2IN
         G99zBp8kJBlMFlp5Q+hVPPyYginACbiRsNBzXrOKzZCnwuA52SYxZsrHDaGTYtRnIV1G
         Rgyy8ocvqPIKszOgYmW6tp9ohFWYm/iJENax6OgPGbSVQ5Lb/H3lWAcirVQt9l6SvHO4
         +H9qGgcdyG1IGgDGKmt2Tz1Jvwu0RdSXb/GwmAHyQlSLAHgJqguJYJhuAY+5tAG7S0yK
         YmjkRDIdOGBdz3byq/iNl3qwe9I00TLbB1CMg8FEbUJG6eCefMU9Fg8ZkdyP2KtQ7wjq
         pUCg==
X-Forwarded-Encrypted: i=1; AKwUvBxkasohLYu3PuXLRA3W6l9/L3d1yS10J8aqAd3gioR0ba5KzDcgPtbS1ZpOfdsDBr8U5AUvc3GPglSe7HSTiQ==@lists.infradead.org
X-Gm-Message-State: AFuF++nUjM5zsiNm98WG/5iM3Vn8ibBcymv450re0oOqQMSvLc3Go3lt
	gsmJNPOaqnSgdSvE4i0RpWptIkh0Msm+SowBWTXyhH5cbIpF4CtTEX3DBUWd6CgtVBDvzUH/Y0E
	4vrEzSHKgSE6bS/AkI8m4IMZM8wtJsxU8Bdy225tTMQ==
X-Gm-Gg: AYBFou16Bbt8yh6UalDOE6VFxvbxi2rB0SYooGbxsJFyEycp8JmWC02c8OoPbuXeG74
	lNas8E0y5YQCDh4dAyFKka2EhRBs1bBZr1b+gPI91sEPq8vnLwsR25YHMwO/BD04IwUVKvGsHGx
	k93Jz3rxP47MYWBU7OTpxk881EolYeBZ0lEzVG+/Cl2GSORiz44TxdnIEfCf235Gy+dDPL0Nqn7
	AHarKuLwt/lLWvOdR/b9kZaAn95YFdZjjpptPmPVp/7wDhIc82qMlIMRNvGT1MYeJsLAzMtESax
	w8VKTnsUbjbl2nRptFhGAlfajX7yzln20lgM+pLAMvQZl2CTtXWCC8Fghr2hmXhpAuM=
X-Received: by 2002:a17:907:3d52:b0:c2e:7daa:23e2 with SMTP id
 a640c23a62f3a-c317c18cedbmr350164566b.48.1791410345894; Wed, 07 Oct 2026
 14:59:05 -0700 (PDT)
MIME-Version: 1.0
References: <20261006-b4-rk3576-reboot-mode-v3-0-6edba064693b@flipper.net>
 <20261006-b4-rk3576-reboot-mode-v3-2-6edba064693b@flipper.net> <20261007212432.GA381404-robh@kernel.org>
In-Reply-To: <20261007212432.GA381404-robh@kernel.org>
From: Alexey Charkov <alchark@flipper.net>
Date: Thu, 8 Oct 2026 01:58:55 +0400
X-Gm-Features: AclHuK9YQekpwAgg-J06h9HjpyEEerPcos0qnPQI7GTm7jMZgcXE5m4c13MgYQo
Message-ID: <CAKTNdwFo03jFGMeJQpxXp1yOX+cG+6BZOYf1eGGZTdZWAFdz5A@mail.gmail.com>
Subject: Re: [PATCH v3 2/5] dt-bindings: power: reset: syscon-reboot-mode:
 allow supplies
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Sebastian Reichel <sre@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_145908_601024_85EBCDD1 
X-CRM114-Status: GOOD (  25.22  )
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

T24gVGh1LCBPY3QgOCwgMjAyNiBhdCAxOjI04oCvQU0gUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVs
Lm9yZz4gd3JvdGU6Cj4KPiBPbiBUdWUsIE9jdCAwNiwgMjAyNiBhdCAwODowMjo0MFBNICswNDAw
LCBBbGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+IFdoYXRldmVyIHByb2dyYW0gdGhhdCBhY3RzIG9u
IGEgcmVib290IG1vZGUgcnVucyBiZWZvcmUgYSBmdWxsIE9TLCBzbyBpdAo+ID4gbWF5IGxhY2sg
dGhlIGNhcGFiaWxpdHkgdG8gZW5hYmxlIHRoZSByZWd1bGF0b3JzIGl0IGRlcGVuZHMgb24sIGFu
ZCBhCj4gPiByZXNldCB0aGF0IHByZXNlcnZlcyB0aGUgbW9kZSByZWdpc3RlciBnZW5lcmFsbHkg
bGVhdmVzIHRoZSByZWd1bGF0b3JzIGFzCj4gPiB0aGUgcHJldmlvdXNseSBydW5uaW5nIHN5c3Rl
bSBsZWZ0IHRoZW0uCj4gPgo+ID4gQWxsb3cgYSByZWJvb3QgbW9kZSBub2RlIHRvIG5hbWUgc3Vj
aCBzdXBwbGllcywgc28gdGhhdCB0aGV5IGNhbiBiZQo+ID4gdHVybmVkIG9uIHdoaWxlIHRoZSBt
b2RlIGlzIGJlaW5nIHJlcXVlc3RlZC4KPiA+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBBbGV4ZXkgQ2hh
cmtvdiA8YWxjaGFya0BmbGlwcGVyLm5ldD4KPiA+IC0tLQo+ID4gIC4uLi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL3Bvd2VyL3Jlc2V0L3N5c2Nvbi1yZWJvb3QtbW9kZS55YW1sICAgICAgIHwgOCArKysr
KysrKwo+ID4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPiA+Cj4gPiBkaWZmIC0t
Z2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bvd2VyL3Jlc2V0L3N5c2Nv
bi1yZWJvb3QtbW9kZS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bv
d2VyL3Jlc2V0L3N5c2Nvbi1yZWJvb3QtbW9kZS55YW1sCj4gPiBpbmRleCA3OWZmYzc4YjIzZWEu
LjVlZDcwYzg3MjY5ZSAxMDA2NDQKPiA+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9wb3dlci9yZXNldC9zeXNjb24tcmVib290LW1vZGUueWFtbAo+ID4gKysrIGIvRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bvd2VyL3Jlc2V0L3N5c2Nvbi1yZWJvb3Qt
bW9kZS55YW1sCj4gPiBAQCAtMzYsNiArMzYsMTQgQEAgcGF0dGVyblByb3BlcnRpZXM6Cj4gPiAg
ICAiXm1vZGUtLiokIjoKPiA+ICAgICAgbWF4SXRlbXM6IDEKPiA+Cj4gPiArICAiXlthLXowLTld
KygtW2EtejAtOV0rKSotc3VwcGx5JCI6Cj4gPiArICAgIGRlc2NyaXB0aW9uOgo+ID4gKyAgICAg
IFN1cHBseSB0aGF0IGhhcyB0byBiZSBwb3dlcmVkIGZvciB3aGF0ZXZlciBwcm9ncmFtIGFjdHMg
b24gdGhlIG1vZGUuCj4gPiArICAgICAgVGhhdCBjb3VsZCBiZSBhIGJvb3QgUk9NIHdpdGggbm8g
YWNjZXNzIHRvIHJlZ3VsYXRvcnMsIGFuZCBhIHdhcm0gcmVzZXQKPiA+ICsgICAgICBsZWF2ZXMg
dGhlbSBhcyB0aGUgcHJldmlvdXNseSBydW5uaW5nIHN5c3RlbSBsZWZ0IHRoZW0gYW5kIG5vdCBu
ZWNlc3NhcmlseQo+ID4gKyAgICAgIHdoYXQgdGhlaXIgZXhwZWN0ZWQgb3V0LW9mLXJlYm9vdCBz
dGF0ZSBpcy4gQW55IHN1cHBseSBkZXNjcmliZWQgaGVyZSBpcwo+ID4gKyAgICAgIGVuYWJsZWQg
d2hlbiBhIG1vZGUgaXMgcmVxdWVzdGVkLCBhbmQgc3RheXMgZW5hYmxlZC4KPgo+IFNvcnJ5LCBi
dXQgbm8uIElmIHdlIGFsbG93IHRoaXMsIHRoZW4gd2hhdCBuZXh0PyBjbG9ja3M/IHBvd2VyLWRv
bWFpbnM/Cj4gR1BJTyBsaW5lcz8gVGhlIGxpc3QgaXMgZW5kbGVzcy4gTWF5YmUgaWYgYSBub3Qg
Z2VuZXJpYyBiaW5kaW5nIGlzIHVzZWQsCj4gYnV0IHN0aWxsIHByZXR0eSBtdWNoIHB1cmUgY29u
ZmlndXJhdGlvbi4KClRoZXNlIGFyZSB0aGUgcmVzb3VyY2VzIHdoaWNoIGFyZSByZXF1aXJlZCB0
byBoYW5kbGUgdGhlIHJlYm9vdCBtb2RlCnJlcXVlc3QsIHRoZXkgYXJlIG5vdCBleGFjdGx5IGNv
bmZpZ3VyYXRpb24uIFRoZXJlIGlzIGEgbGltaXRlZCBhbmQKaGFyZHdhcmUgZGVmaW5lZCBudW1i
ZXIgb2YgSVAgYmxvY2tzIHdoaWNoIG5lZWQgdG8gYmUgcG93ZXJlZCBmb3IgdGhlCnJlYm9vdCBt
b2RlIHJlcXVlc3QgdG8gY29tcGxldGUgc3VjY2Vzc2Z1bGx5LiBJbiBteSBjYXNlIChSb2NrY2hp
cApSSzM1NzYpLCB0aGVzZSBhcmUgdGhlIElQcyB0aGF0IG5lZWQgdG8gYmUgbWFkZSBhd2FyZSBv
ZiB0aGUgdHJhaW5lZApERFIgbWVtb3J5IHBhcmFtZXRlcnM6IGlmIHRoZXkgYXJlIHVucG93ZXJl
ZCBfYXQgd2FybSByZWJvb3RfIHRoZW4gdGhlCmJvb3QgcHJvY2VzcyBzdGFsbHMgaW1tZWRpYXRl
bHkgd2l0aCBhbiBleGNlcHRpb24gKGNvbGQgcmVib290IGlzCmhhbmRsZWQgYnkgdGhlIHBvd2Vy
LW9uIGRlZmF1bHQgc3RhdGUgb2YgdGhlIFBNSUMpLgoKSSBzZWUgdGhhdCB0aGlzIG1heSBiZSBh
YnVzZWQgdG8gaGFjayBhcm91bmQgd2hhdCBzaG91bGQgYmUgYQpib290bG9hZGVyJ3Mgam9iLCBz
byBpdCB3b3VsZCBiZSBncmVhdCB0byBmaW5kIGEgd2F5IHRvIGV4cGxpY2l0bHkKbGltaXQgdGhl
IHNjb3BlIG9mIHRoZXNlIC0gdGhvdWdoIEkgY291bGRuJ3QgdGhpbmsgb2Ygb25lIHlldC4gQW55
CnN1Z2dlc3Rpb25zIHdvdWxkIGJlIG11Y2ggYXBwcmVjaWF0ZWQuCgpCZXN0IHJlZ2FyZHMsCkFs
ZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
