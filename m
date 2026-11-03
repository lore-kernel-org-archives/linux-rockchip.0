Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7697606D808
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 14:55:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=oAifj+gU;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=ha3sOSA9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=15gRRQOiFBz0ackjole92FmfHm4CDd89H2kMUp4yJfE=; b=oAifj+gUs6pWst4OpOzN90YHR6
	hyo9CfnXLymiH0kQClJr4FVrAHFc+pcRWd0CZXLZtGMPz/Yxpsax8BJzzkteBYQrjazqR/hXFGd56
	kRt1RGJ4M3fWa73VsfN+UJzXXUnUsMSaohu276GOefhZ0qOJ8IB7zCUWU5r/jQvtEZQeQHiGbRD2o
	xsBHdFvwNgDPT0zYKnRcLic+J7aqkZlzF/wvWduSjnNMLQIGyXS9Xfhq6KFQgC2XBYxh06R+Sp8Od
	4OLyJKdvwTU5jur7FtVYXeXPSu3uSp0xFwuYozrlMNk4X1CMkx7Vv1+Ec2e6xjsHq9c28nvEVRKjp
	yyp+mpbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOFuf-00000002oVR-1kRY;
	Tue, 03 Nov 2026 14:55:01 +0000
Received: from mail-ed2-x0a.google.com ([2a00:1450:4864:33::a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOFuc-00000002oUY-0mKO
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Nov 2026 14:54:59 +0000
Received: by mail-ed2-x0a.google.com with SMTP id 4fb4d7f45d1cf-6a14f2e937cso3104654a12.1
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Nov 2026 06:54:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1793717696; cv=none;
        d=google.com; s=arc-20260327;
        b=nBqYseeb8WmHKc8IQwC/EkvIWI5Gg+FQDX0BHKXhswOCYyI1vFeeQ8aSiL2VB1xX/c
         tJSCIyyC4bvWyCA4+RG7pX4rbSyAYZuy3Xildq9bNK84PwYYPQBRPT4xgHI8plMh5+8q
         RF5qFzK703Y10MD47pyAxfU1LNT0TzPQIBRcalOLsc4JlqscWpuq3UHIUhucxmJhLcvT
         GujJQqt/GPrP5zzIw6imp5cweGg/SMv5n77s1JFvnDwsaku/BtWQTBOu0m86suFq/EX4
         5DEh2jEN/9NxVKbi4bobLhWUd2Be3kjM4fyWk+ktS/1j4RqiNPZE11SJLfPB5OcxZnni
         FThQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=IgQ05NbEx4CjJRtb6GmYnk00OGmK1qIWhCn9DM7D2rM=;
        fh=1QQO4Owy6Fwu2LSlQ2FeF2WwMAfiOGAwhD6yXvlBa3I=;
        b=IAFPL7djSNiHmS2To5tFkptKGeBDWcvTYGka8yWbDYVZUgCmsCBLp8lllycwl/fLgK
         /GZRZFaP/1sPqWIJEEOq7VpS8cZ/TF2fWMFc2A0FeWmsolDn32FHGM5Ey16cy5bMALI8
         ZcGJVYvtN6w7Xv1kFrzu2Ct0JmgijVNJvGptkevlb9x3TsUVq2PWaVKWY9MqWffsYd9d
         9nTLdDldXRX9b0pO/vAhRCbRRBelLW/t0qSWgjiihteZy0W2I5KMugmEvyCTG/TDBLuh
         XpabYxCu3Mx/4eyTXY0AevlUmTeEV/dsCDoOfNRCwZ6tSwghxY2Sd5Dhbpq8CdJyNHMx
         TSKg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793717696; x=1794322496; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=IgQ05NbEx4CjJRtb6GmYnk00OGmK1qIWhCn9DM7D2rM=;
        b=ha3sOSA9QgN+zk94oYE2C7okasyqZES2ykfxv/zP5CfQXBiTd5TXsGIsOJH1UEQb1T
         Dgo+z18Cd2O9YyHeTSwddlaK+X2/rP1CAcVoJKsFpWa+oWM+18rEg6HZtbdnRnxrS0c8
         QIVkvCzUlJWgvzw87MS1qzHdwYMPUrwRF4hMhrBLJPYr+ZWM69nOawul+Q94i6FYM/Jr
         dAFXdsL+WYKX14KFMWsimWwmjfyqLrX3gperxXywWC2tUE8RgM3WfFCp+QYpaq2dl0jo
         xg1Ya99D8eQ3oarNU6OpIG0l+LjCwEsIuXbOU9v/nKJIejtX668Eui64ddweXh/qGRgN
         9QMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793717696; x=1794322496;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=IgQ05NbEx4CjJRtb6GmYnk00OGmK1qIWhCn9DM7D2rM=;
        b=PD/R1di2xRfeJ6ctW1JKscERNDdTlcPXyyMphoIYZNi0vZtbBKbAPmfd0/Bjx6ohRh
         YExLI/by1GeSMDxxwTKddLt4zifk+6zKqbpPNHRVATMGGbTymALvFzRUt8jHAtmRUwaz
         +P3Bn7lIhTymLaAN9sHDwNdT6pnabYkHoq+rKSzR9cD/V/rAgHLKm0AvdHiexdR85SMh
         JY6doY+Gh1igHIl/iLVs5Y3bvQc8jxIOo1jQx5Hn+eWnVk1gii7JjnnB/4vLu4xWKSrE
         Ka69WB4bcUn8rSPHdnn5mDh+cJx4vcMCZtyGxhmmWf0WFzJtIIh7pzOkuz7F13BBELQe
         nbDA==
X-Forwarded-Encrypted: i=1; AKwUvBzXhcINgWPyHh03DYtv/CfQxjrenryK3rn9xI1BtqDFByrL0d8ADJBWbowwSVbWFh3KAUUQLseKPpBc+NtNog==@lists.infradead.org
X-Gm-Message-State: APuU4Z9C4MhVnWfhRjLfAk67UzB648RC5uwQy+GPaNqdpjqTbA0J+qs0
	R9VV6BDyaLE5BjZAYo4lRbsxYwFuMa2JawlL0pV79nGFeySqjJat4QLDFk+Dj+xsdmtyG+HzsyN
	pyI/KaFrvB3W55HNhiCLED2rlNWYDk28=
X-Gm-Gg: AYBFou3l8Gch83WK53ZTqh8Is4XRr2PU5WHSyfTMXcQnmZPcp3KXUsTNVo82uvI9K3n
	3qG8UODMXoYaEnEruTs9KVQuXFMLhBl8ZZGPfa61Fr9Gy7sp6Zh9J0b0iPZ272c4p+ujzbxZ6U6
	CKw3FwmhHeTlzXpqoEVxQ07rqwLkVMh4ScoRUKn/+BXO8OBLPi15GqavZWG4doktqNyLLYZotjl
	1Hn0EJyK7X663c4Nmp6Gy5eaUHOlkivOTR7N+nhbm5SCnQySh93zqORMBPAccWVXnV2YdchhPe2
	dvu5w5FkpIkzQjrBOiAEm92JKDSe7mm3KemDwK8CSKMK2CPQD7CezShUMcIK3/IdsMDVTMylJG9
	YJdBCdGvoqbYwQBxiSik6SlEM2QuplAREilzmHq0=
X-Received: by 2002:a17:906:8346:b0:c4c:d6a3:f4bb with SMTP id
 a640c23a62f3a-c4cd6a3f756mr402146766b.10.1793717696122; Tue, 03 Nov 2026
 06:54:56 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261029094916.3127193-2-coiaprant@gmail.com> <c5fc86f9-3c43-4aee-8d88-92e8f88c6d5d@bootlin.com>
 <1B8D463D-1295-4BF0-972D-859C342E49F5@gmail.com> <48cb8a9d-622f-497c-a13e-bc679c764ce0@lunn.ch>
 <27E466B0-72FD-47BA-B952-68BF4A817A04@gmail.com> <f554dcc0-14ea-4721-9517-dc0337c47426@lunn.ch>
In-Reply-To: <f554dcc0-14ea-4721-9517-dc0337c47426@lunn.ch>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 3 Nov 2026 22:54:43 +0800
X-Gm-Features: AclHuK95KHd0dj6_gNrX9gHZCv0l52s-Y_iZ0--uZvsX8IoRCF8VNkN1cmNSy9Q
Message-ID: <CALj3r0hfBj_-ZGsAAvGC5FYeFDtxiWcYDsmZA5fEeq_chhvfeA@mail.gmail.com>
Subject: Re: [PATCH net] net: pcs: xpcs-rk: limit advertised interfaces
To: Andrew Lunn <andrew@lunn.ch>
Cc: Maxime Chevallier <maxime.chevallier@bootlin.com>, Jakub Kicinski <kuba@kernel.org>, 
	Heiner Kallweit <hkallweit1@gmail.com>, Russell King <linux@armlinux.org.uk>, 
	"David S . Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
	Paolo Abeni <pabeni@redhat.com>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_065458_568067_48AF66A3 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-0.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW5kcmV3IEx1bm4gPGFuZHJld0BsdW5uLmNoPiDkuo4yMDI25bm0MTHmnIgz5pel5ZGo5LqMIDIx
OjA55YaZ6YGT77yaCj4KPiA+ID5BcmUgdGhlcmUgYW55IHJlZ2lzdGVycyB3aGljaCBkZXNjcmli
ZSBob3cgdGhlIFBDUyB3YXMgY29uZmlndXJlZCBhdAo+ID4gPnN5bnRoZXNlcyB0aW1lPwo+ID4g
Pgo+ID4gPiAgICAgQW5kcmV3Cj4gPgo+ID4gSGkgQW5kcmV3LAo+ID4KPiA+IFllcywgbG9va2lu
ZyBhdCB0aGUgYHhwY3NfaWRlbnRpdHlgIGNvZGUsIHRoZSBjb3JlIGRvZXMgcHJvYmUgZGlmZmVy
ZW50Cj4gPiBNTURzIHRvIGdldCB0aGUgcm91Z2ggdHlwZTogUE1BL1BNRCBNTUQgZm9yIEM3MyBh
bmQgVkVORDIgTU1EIGZvciBDMzcuCj4gPgo+ID4gSG93ZXZlciwgZXZlbiBpZiB3ZSBkZXRlcm1p
bmUgaXQncyBhIEMzNyBvciBDNzMgYmxvY2ssIHRoYXQgb25seSBnaXZlcwo+ID4gdXMgdGhlIHJv
dWdoIGZhbWlseSwgbm90IHRoZSBleGFjdCBmZWF0dXJlIHNldC4KPgo+IFlvdSBtaWdodCB3YW50
IHRvIHRyeSByZWFjaGluZyBvdXQgdG8gU3lub3BzeXMuIFRoZXJlIGFyZSBzb21ldGltZXMKPiBm
ZWF0dXJlIGJpdHMgaW4gVkVORDEvMiB3aGljaCBsaXN0IHRoZSBleGFjdCBjb25maWd1cmF0aW9u
Cj4gc3ludGhlc2lzZWQuICBBbmQgc2luY2UgaXQgaXMgYSBjb3JlIHBhcnQgb2YgdGhlIGxpY2Vu
c2VkIElQLCBpdAo+IHNob3VsZCBiZSBzYWZlIHRvIHRydXN0IGl0LCBpbmRlcGVuZGVudCBvZiB0
aGUgcGxhdGZvcm0gaXQgaGFzIGJlZW4KPiBpbnRlZ3JhdGVkIGludG8uCj4KPiAgICAgICBBbmRy
ZXcKCkhpIEFuZHJldywKClRoYW5rcyBmb3IgdGhlIHN1Z2dlc3Rpb24uIEkgbG9va2VkIGludG8g
cmVhY2hpbmcgb3V0IHRvIFN5bm9wc3lzLCBidXQKaXQgc2VlbXMgdGhlIG9yaWdpbmFsIG1haW50
YWluZXIgaXMgbm8gbG9uZ2VyIGFjdGl2ZSBpbiBtYWlubGluZS4KCkkgYWxzbyB0cmllZCByZWdp
c3RlcmluZyBvbiB0aGUgU3lub3BzeXMgd2Vic2l0ZSB0byBsb29rIGZvciB0aGUKZGF0YWJvb2ss
IGJ1dCB0aGUgcmVnaXN0cmF0aW9uIHdhcyByZWplY3RlZCB3aXRoOgoKICAiV2UgY291bGRuJ3Qg
ZmluZCB5b3VyIGVtYWlsIGRvbWFpbiBpbiBvdXIgcmVjb3Jkcy4gUGxlYXNlIHZlcmlmeQogICB5
b3VyIGVtYWlsIGFkZHJlc3MgYW5kIHRyeSBhZ2Fpbi4iCgpJdCBzZWVtcyB0aGV5IG9ubHkgYWNj
ZXB0IGNvcnBvcmF0ZSBlbWFpbHMgb3IgZXhpc3RpbmcgTkRBIGhvbGRlcnMuCldpdGhvdXQgdGhl
IGRhdGFib29rLCBndWVzc2luZyB0aGUgVkVORDEvVkVORDIgZmVhdHVyZSBiaXQgbGF5b3V0IGlz
CnJpc2t5LCBhcyBpdCBjb3VsZCBsZWFkIHRvIHNpbGVudCBtaXNkZXRlY3Rpb24gb2YgY2FwYWJp
bGl0aWVzLgoKU2luY2UgV2FuZ3h1biAoSmlhd2VuIFd1KSBhbmQgTlhQIChDbGFyayBXYW5nKSBh
bHJlYWR5IGhhdmUgdGhlaXIgb3duClhQQ1MgUE1BIGNvbmZpZ3VyYXRpb25zIGFuZCBxdWlya3Mg
aW4gdGhlIHRyZWUsIHRoZXkgbXVzdCBoYXZlIGFjY2Vzcwp0byB0aGUgdmVuZG9yIGludGVncmF0
aW9uIG1hbnVhbHMgdGhhdCBkb2N1bWVudCB0aGUgVkVORDEvVkVORDIgbGF5b3V0LgoKRG8geW91
IHRoaW5rIGl0IHdvdWxkIGJlIGFwcHJvcHJpYXRlIGlmIEkgcG9zdCBhIHF1ZXJ5IHRvIHRoZSBu
ZXRkZXYKbGlzdCAoQ0NpbmcgdGhlbSkgYXNraW5nIGlmIHRoZXkgY2FuIHNoYXJlIHRoZSBmZWF0
dXJlIGJpdCBkZWZpbml0aW9ucz8KT3IgaXMgdGhlcmUgYSBiZXR0ZXIgY2hhbm5lbCBmb3IgdGhp
cyBraW5kIG9mIHZlbmRvciBjb29yZGluYXRpb24/CgpGb3IgdGhpcyB2MyBwYXRjaCwgdGhlIGds
dWUtbGV2ZWwgaW50ZXJzZWN0aW9uIHJlbWFpbnMgdGhlIHNhZmUKaW50ZXJpbSBzb2x1dGlvbi4K
CkNvaWEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
