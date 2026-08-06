Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3B02C55174
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Aug 2026 01:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eGIeNj+y0Dih2qu1Zr+vE3dxowp0yAh8+Fg0OBAmCfM=; b=aATyGu7zHy2SbK
	4AiitEK9fHEltRpikh6xi3Bxj4q2WLw8B/2mJAl2erBD6I0k10rn1K9tB0okmP4FSMIwDFEZ/aSBf
	MxXTXdEIpcYPZCffiJapxg1ddi7r3ImwnRP9fBTXbM9H0BuyXprHY8GcNuOWq7q2Yl4JYjsPlSnca
	DZR6G3bQIx95NjCWIkSxYlplOpEHp90nE2IEal+OUnBSZ2eAUq0dxRnFYkDO8JpCt8zDgMhqLEwvz
	lEGKol20rMtIrN9xqol9txK2WeYk6vI6+l6cw5kuTqDdyEgjurv1VcpvibNrmUB0O3D67LozonlSU
	WT98Vhl1ZSThUA/VKqQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrmua-00000004lZ5-37iK;
	Thu, 06 Aug 2026 01:28:44 +0000
Received: from mail-ua1-x92b.google.com ([2607:f8b0:4864:20::92b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrmuW-00000004lYC-2GuO
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Aug 2026 01:28:42 +0000
Received: by mail-ua1-x92b.google.com with SMTP id a1e0cc1a2514c-97723f98735so1053271241.3
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Aug 2026 18:28:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785979719; cv=none;
        d=google.com; s=arc-20260327;
        b=NUjmLlEcAXVcjUDXTHdhWIiRsLok6MSyeYn7Tnj7op6TyXTLgANNcMBzUPRjmqDhAc
         kLFvT3REqeTiqaQln7tf5EIQDXVI537cy4eyzKstYocOSHJHO7c3m45+ppq96Crz5oLp
         dkLsrNkXOZU9RawT6anr13L4T8XI7T+6XxplpjOChcLzq2nt3llLsMeqKKNCV77bu/xA
         qu1XJae8Zjx1AaaIYxFV2FSK+98E0chB0I0zqvw/z5z3P+UwRDEcwrLqhyCcXUQpIvmN
         RwtRcWJ9ERa+oOvwAwCHTS8CGYn6cNpDPjl3pMKhPeu9/Pu6pn+9jsjsswaV5LQpBjyA
         YyLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=edLN34k9foZMVhZcUUtF6FHiGZ8AVNOJWI7MIXQI8QA=;
        fh=sJUMQYbjNzqJGPrFaxLGSUSjvMI2+OEt6krJBPSjaWA=;
        b=KifZYcle9ClT5ms8RfRPgax6W44b5T0/Da1b8R/M5eLqyQy6+RmyFItTOgie7v1wm9
         VshjLIrbl6J/23AeB+TYwPmWghfDQ6Uq/YV2lQ6vG3C9tz2+LWjqftaKqsDWWxpmvG1s
         ggbc/9/Is9rC571ivCaLdzHS8KiFM08Cyal0/x8KVf/1+A0pshxjc49DwhirgMf5qok3
         fZUVQSGPhelIWnc2K/w/OswRXedNJeQC1zujpi9FQq5zWEZKR/z1DjYfBdf35yGywPKP
         cBQPFP3mFdoMde5439JIUfVGOpfm6nyZmRp0SMZy1jHuaSBxXIcIh6z3NB9ixA0mLGTY
         cPaw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785979719; x=1786584519; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=edLN34k9foZMVhZcUUtF6FHiGZ8AVNOJWI7MIXQI8QA=;
        b=ZJNrCzlIh72lBO6eOniqFCAQFgB6MuSURkMRwUGOW33CLiqPPw7NpeXd3MrqRHB/My
         tocU/veVqa2J6qRcR0CX9d7wJ5EZ6NIkFCZRKTIFrkcJeUdNRHvS8hxp9yzBs3E23XoS
         Ob47w6uHkqUacZTgI/rRVkJva2G5v/hDhSL46/9eynIqBbgvvgxnT7KWe2w+mI9Al1ra
         fp9J3T7xPuZ2rLjZjfyHqu5u+OtJNFx2kbR1SXnRJPjOizQBnZ/gc+ZbBUPG9hRY+Hg1
         OjsXBQExmbHFSzGbsW/veLfz70bDDqFHPDcPEzk0GdQm4dbaUxFm3l7WWLYzP9dJSSPG
         Zo7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785979719; x=1786584519;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=edLN34k9foZMVhZcUUtF6FHiGZ8AVNOJWI7MIXQI8QA=;
        b=OL41NJ7ahmNJGpQ3s1QkZcOQu+it1xE2s5/+zAhNaHIhkBDA8RCkAZojm1LtXrjul0
         XvLVNtzFhg0ezAKVF33+LNwmgdALJ7CfueCywF98GV+wWbf2O6/b2Y7UZ/dDBgb08pgg
         dAclaiQfWxlE2Q5/HqANivCGzJQunKFEG3Z/VwI58j+Q+83UKcxo/aCj4Nlmz0tHw0sz
         Ip9xapvd+Gjinisw1cUvAOW5I13Hs3bTnoW9L3JmW3ZM2H56qUNpKJ7wXRG1p23lMl1t
         NX4/aSwpsaf8iHlAyyaHD41QuO3DrPFjxWHSfXlx6IDapxLtYmj8qsLapv/fxbhylzUN
         lzrg==
X-Forwarded-Encrypted: i=1; AHgh+RpDddK0nH8g9ruJAL2eAsiGXwpeA81UQFZivKVPr961IZVPavslnhlGxxuHZW+5dITezDzrSl3wfWHzP2P75g==@lists.infradead.org
X-Gm-Message-State: AOJu0YwmwGTD9T4175i9FIAeDELQWVe8cQZ8vY2g8PqZlbr1XzhlGosM
	kXYSndAaqOvZzF5pqppDKs/TP9phM5p2CITCmA9QDn+6SDwTgkK3U1BbThQWCnGcLTZuLC5nVBJ
	EId26IeOfW1JIKOYrLXE9gyRjHCudxUU=
X-Gm-Gg: AR+sD11RovPNdPE91WUbrPsWMb3WlBV9wwm/auXGPEvv12ESZq01a7OrHo0XOUZnNUn
	pjLEFDqsEbCm65gymYdrasCW1ogVssXwVlGKCaZDeTb9dNG6r1kWalyEG2OiVdz2RfIyxJNgs95
	YazbdpNhMNlNroy04DHml3i9xC7cy3cBL9fyTaImbQA8V+kFMLnh/hKAcvaUsxofRNDez3pC3U4
	Ck2+Ngnr/udWd6aTMim+l8gCctzVtgxvgRDIIrOEJSx9Pe+hstDytfZd/ZZg7Ty4LNLE/v6EpkB
	aeiJSZ+rJ8AywOMH3GatgyB6cPNU1MJ/Wy0yQMkX1+/crp4eXW01O2eva1c64zxr68hQBBWa0F8
	JgjwGUt4AUp3LoHL+XabB65ZMxgwqWv9F5cNmCpGQyCEBLw4qMpRXmnDRAFnhFrKGS6HW5nJCD4
	Bt6Uz7KY0pIBf/5M3gvniS43VetKsD6iNrGdDPyjL5IHxiESc=
X-Received: by 2002:a05:6102:5689:b0:739:4fa1:50aa with SMTP id
 ada2fe7eead31-760e8f3596emr3241387137.14.1785979718818; Wed, 05 Aug 2026
 18:28:38 -0700 (PDT)
MIME-Version: 1.0
References: <20260804-submit-acx00-of-dynamic-v1-v2-0-3eef49ff1d8c@gmail.com>
 <20260804-submit-acx00-of-dynamic-v1-v2-8-3eef49ff1d8c@gmail.com> <30bab755-3356-4d4a-a939-8488aa487874@lunn.ch>
In-Reply-To: <30bab755-3356-4d4a-a939-8488aa487874@lunn.ch>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Wed, 5 Aug 2026 19:28:27 -0600
X-Gm-Features: AUfX_mwRHCzyF7gAfwi_ObKJnDFQfjNsCJSXem_hxMypqW9gycQbdES8PR3dd9k
Message-ID: <CADvTj4r5y7ME1jb1OxnvjXoQRhpnQq1L=QgdUE7ESNgS2jzTBA@mail.gmail.com>
Subject: Re: [PATCH net-next v2 8/8] net: phy: add X-Powers AC200/AC300 EPHY driver
To: Andrew Lunn <andrew@lunn.ch>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lee Jones <lee@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, Heiko Stuebner <heiko@sntech.de>, netdev@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, mfd@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260805_182840_585911_47F16869 
X-CRM114-Status: GOOD (  15.89  )
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

T24gV2VkLCBBdWcgNSwgMjAyNiBhdCA2OjM44oCvQU0gQW5kcmV3IEx1bm4gPGFuZHJld0BsdW5u
LmNoPiB3cm90ZToKPgo+ID4gK3N0YXRpYyBpbnQgYWN4MDBfZXBoeV9kaXNhYmxlX2VlZShzdHJ1
Y3QgcGh5X2RldmljZSAqcGh5ZGV2KQo+ID4gK3sKPiA+ICsgICAgIGludCByZXQ7Cj4gPiArCj4g
PiArICAgICByZXQgPSBwaHlfbW9kaWZ5X3BhZ2VkKHBoeWRldiwgQUNYMDBfUEFHRV8xLAo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICBBQ1gwMF9QQUdFMV9JTlRFTExJR0VOVF9FRUVf
Q09OVFJPTF9SRUcsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIEFDWDAwX1BBR0Ux
X0lOVEVMTElHRU5UX0VFRV9FTkFCTEUsIDApOwo+ID4gKyAgICAgaWYgKHJldCkKPiA+ICsgICAg
ICAgICAgICAgcmV0dXJuIHJldDsKPiA+ICsKPiA+ICsgICAgIHJldHVybiBwaHlfY2xlYXJfYml0
c19tbWQocGh5ZGV2LCBNRElPX01NRF9BTiwgTURJT19BTl9FRUVfQURWLAo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICBNRElPX0VFRV8xMDBUWCk7Cj4gPiArfQo+Cj4KPiA+ICsK
PiA+ICsgICAgIC8qIFNldCB0aGUgaGFyZHdhcmUgZGVmYXVsdCBiZWZvcmUgcGh5bGliIHJlYWRz
IGl0cyBFRUUgYWR2ZXJ0aXNlbWVudC4gKi8KPiA+ICsgICAgIHJldCA9IGFjeDAwX2VwaHlfZGlz
YWJsZV9lZWUocGh5ZGV2KTsKPiA+ICsgICAgIGlmIChyZXQpCj4gPiArICAgICAgICAgICAgIHJl
dHVybiBkZXZfZXJyX3Byb2JlKGRldiwgcmV0LAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAiZmFpbGVkIHRvIGRpc2FibGUgRUVFXG4iKTsKPgo+IElmIHRoZSBQSFkgaXMg
Y2FwYWJsZSBvZiBkb2luZyBNQUMgYmFzZWQgRUVFLCB0aGF0IHNob3VsZCBiZSB0aGUKPiBkZWZh
dWx0LgoKQUZBSVUgaXQncyBvbmx5IGNhcGFibGUgb2YgUEhZIGJhc2VkIEVFRQoKPiBXaHkgY2xl
YXIgTURJT19BTl9FRUVfQURWPyBUaGlzIGRvZXMgbm90IHN0b3AgdGhlIHVzZXIgZnJvbQo+IHJl
LWVuYWJsaW5nIEVFRSBmb3IgdGhpcyBsaW5rIG1vZGUuIHBoeV9kaXNhYmxlX2VlZV9tb2RlKCku
CgpJIHRoaW5rIEkgd2FzIGRvaW5nIHRoaXMgc2luY2UgSSB3YXMgdHJ5aW5nIHRvIGFsaWduIHRo
ZSBkcml2ZXIgZGVmYXVsdHMKd2l0aCB0aGUgdmVuZG9yIGRyaXZlciBkZWZhdWx0cyB3aGljaCBk
aXNhYmxlIEVFRSBlbnRpcmVseS4KCj4KPiAgICAgICAgIEFuZHJldwoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
