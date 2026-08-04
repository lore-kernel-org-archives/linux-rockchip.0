Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7BE9C55184
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Aug 2026 15:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D5kQ6H4aWnEMdsDiaU2CjRveYgiRGJ7+GcOODggQRU0=; b=LdFfQ/WHEL9Ooq
	mzx/Iw0d7SYI+IJEOWTHihx1UtPgQaKNPjDMdsyAZi+9AwovsrlVOhWowGj3iFmaMcbJGhuDOiNAn
	aXYNQWZKyx78xwFm4PSrqj/MIkTmJQI3hJkwtKoz1xmDPtqVuHw/RrIbXQFnyUORMFTH4OBuRg76h
	ughy0WUGJZLyLJ+ZOSv1TuBMEIU1/0CQ+UEUKegGHaVVXQbTe0jyBMW62o7iFcZxlglpOdeU6Ab9z
	XQJPnZk9HFrj5RZJ8NIa7waB/zK2Vy986VSDPQyyGFUIYCfEbrZYaCu2owtDa83XJHUWZw4QhJddV
	pQbxi6h3FloeLKSZmEXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrH2Z-00000002DCZ-0tv2;
	Tue, 04 Aug 2026 15:26:51 +0000
Received: from mail-ua1-x92b.google.com ([2607:f8b0:4864:20::92b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrH2X-00000002DBQ-052k
	for linux-rockchip@lists.infradead.org;
	Tue, 04 Aug 2026 15:26:50 +0000
Received: by mail-ua1-x92b.google.com with SMTP id a1e0cc1a2514c-97723f98735so2767951241.3
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Aug 2026 08:26:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785857207; cv=none;
        d=google.com; s=arc-20260327;
        b=quGybvQcCgVpJ5RMoL7HLYaiecoihcm9tMPF50XJ1JMg10i4ZWkFAeGLg9sjNk+MmM
         G7lUjPOlyl2c4zgpOXkCuPwh0t5IngORv++9McmIz8LStkVxWKCxOjL9x444DPdnh9/2
         vvcoVJtvmvJ+TrfneJMG83fFx1NX1frGc6CgS/i03SETYGouhb5tuUcHRXA24WNKykfV
         jESOXcbPioeNCWmh1ncYH/gi0niddxeNl3dR1Prmczk8LFuZSRv7keDCHothiR62ztS9
         x7zQEeJMW+T8KRP/nHbXHdr+hCCHkZP4TdjkDEgwkH2b1r9iqP3tS1jf1w9mC6t+eg+M
         ta0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=DIzf+HYojrQvIG1FuzM4Jdr3lr/d2D1NXMxs/JfDycE=;
        fh=U0Wawddxu70wZjnPeYFV3czfOPoX3csP4OAyw424HVQ=;
        b=eayjvyE4kjZvJHA82iCnR1dNXv/SxQPEc4OYP79kgDuTX149+rx40T73sFzaqruSUO
         gbzkqUksVKpkxLWaQCzuhsvETEGEbStNTNGnY4XWvzAbeL6rJtch1NcyyHz8VVLrqJoU
         K1zRPDxe06syUKP6/3wPYc6FvdQGueDhwAECALMCJNQ5IGK/XKrsLVqhssQXKWSE+Iy+
         0jrBzwCIhceURDYSHsZ6Ft0HH9dOMRNOTQ12H9upZ+TTZCnf1YOr9qxtbD9b0lfJdtTg
         66dpB+MDE4epb/a7mkgF1TGsT9XE200aQvaWuXMsaFdiz+anfRTOfEkspNAWfjNIj0zZ
         uTHA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785857207; x=1786462007; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=DIzf+HYojrQvIG1FuzM4Jdr3lr/d2D1NXMxs/JfDycE=;
        b=hfbQvme/XCfNPBiWNrmXV6LP3nozNeSzANmgwL0IXY2yFD2vVpVJ6d6Nm6JJAgeI9/
         Tygacji4RHkOoRCnw6nZ8fyBe8sUHB1aGxybhn4suvUWsuUeQguEhCI7def60TEX3bfy
         pImx4bboTdOZsVEHP+wDg0suyWGwDU0jxIx+RtK5mA31E+eqNTxiDmRGG1bYwMawpDWH
         jI54bL3NL89TIq67x5vhk7BH0R+EeQ2JAIn9dQl/Da06PuscGvidMRExeuN7e4pZwI9I
         d6e/aoVlVkkSwqq/QN71ZclMAMbtv7DLTclYf+RdV0nbCuOLpSb+3PuJO/H2nbVwQzUO
         e9Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785857207; x=1786462007;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=DIzf+HYojrQvIG1FuzM4Jdr3lr/d2D1NXMxs/JfDycE=;
        b=BQFrpNXZ/bDkJZOUNZWx/wGkulk62Yv29GGFdhys6mWV6sO2hWbOVILDHX1GWYTceD
         KWFGADKE/5nepoQLdI0IAzH32hSdZBrfGitgXjruAXfy8p0AsjdTZ6Db0v6NxhlmXjFX
         TO74tGeMNFh8bLHHgy7wOtvTVwK252l7c59IGZl5dG8qV2L2eDvutAIPGSf/zjqYIJpa
         M3g2GB1GW6vSpAcwvgnnPf0k0TZmTq50IMV0ctIE9HDIig/n0oteVhJJYv7352puHjvD
         mgq3fqYZsCI5jXI2eeIR4gKo1d6bFKMPO/sxrU7wTb/m+4Wj0MGYmH4ZXQUUrfGDAHei
         PUIA==
X-Forwarded-Encrypted: i=1; AHgh+Ro/HgUVdw2Rt0n6qVe9/L0F7j9azI9Rvb8X4FyyhmofwHKDkABgpA/kCGE56ySBMofat7Ro9awzq/qleUE9jw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy2T19BbPvQXcEJbglv4f6soiNAfdJbOJJIBiO0tolnZ64c92mE
	htj/Yq8dzWumV+eVe6AUJ51VHzwtYJJZnYiRewCJt2r/sfzmYeoCF57Eqz4txdG7LHVX1mUp4Do
	zBqhhWJF7RrByR9qEo2MvxfvKUFAHw6s=
X-Gm-Gg: AR+sD1061DZRc8P06iQUt/L8ADUfhLcJDenO5rqJxiVBIcQLhqfa+SG57VjLMABxcNn
	JTCmrQxrprn0W1ZKGBnMA46Bs6Nf82LA78HhLekjcbQz3J4igoFcy9WC/gSE2+fIdAvo6fv+Rl6
	FFDWxXS6I9NTH/64o7BAMERUpVcuhUUcuTAu1WowxqNLz7PiVZvIRikOPiitkLbWKF/VMOQnmaO
	oodqcXM9F6wegix6e0VTjcR2DVa/8kRWHVPoyT95Agfcaj8G3EohP+a8g9e3V95srONWmxKKTSp
	xCyzqSwFGmhTigCCY+udlza0/RbcaLP59qSOFyVH/MG9Ko4ar+oKasmlWs/agq+TqMktbXcDjGs
	02wYi1LHnbz3OeE5pzGmwIl0dpj4Dl4zjCAR6F9ejMEVhegqztPsB4QVJvLyy/wc4FBIECT24M2
	vU/puejTh8MSp38zKIeQDmxCH8JZvqYT+TP7Y2
X-Received: by 2002:a05:6102:5093:b0:740:2717:a1b2 with SMTP id
 ada2fe7eead31-75b21a600f9mr11149553137.1.1785857207439; Tue, 04 Aug 2026
 08:26:47 -0700 (PDT)
MIME-Version: 1.0
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com>
 <20260802-submit-acx00-of-dynamic-v1-v1-10-0a53cd9e21cc@gmail.com>
 <05b1e6a2-725e-4b8e-8629-249637bbcb81@lunn.ch> <CADvTj4o0JdjoO+FC4pO=qnjEQ8MRyzQdKp2Hxy9NsPU-gym5OQ@mail.gmail.com>
 <9b8be475-1fde-409c-a82e-be4b2e402650@lunn.ch> <CADvTj4pBovti19MXgQjFpxm=7aRm0sYQz9jxfo8bu3txH94THQ@mail.gmail.com>
 <a9ce53dd-0873-41c0-ad6a-fb42e6cc7aaa@lunn.ch> <CADvTj4qpHU3F0DrEmc0vFi+JiwTNERniiMHKo1LmBd8sg58wJA@mail.gmail.com>
 <205e9051-8e43-44bb-a4b5-4ec69a192fa3@lunn.ch>
In-Reply-To: <205e9051-8e43-44bb-a4b5-4ec69a192fa3@lunn.ch>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Tue, 4 Aug 2026 09:26:35 -0600
X-Gm-Features: AUfX_mxUgphmHVN2nVqeDHtOoQ4DhYlfN2EUsZlGA6OuEq-kXlUnQLFlQtbWoRc
Message-ID: <CADvTj4qmXWbDsc-vigcSrF1N=zpxmZWGp3YaZ9PFcWK551h3mg@mail.gmail.com>
Subject: Re: [PATCH 10/21] net: phy: add X-Powers AC200 EPHY control driver
To: Andrew Lunn <andrew@lunn.ch>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Andre Przywara <andre.przywara@arm.com>, 
	Richard Genoud <richard.genoud@bootlin.com>, Maxime Ripard <mripard@kernel.org>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Giuseppe Cavallaro <peppe.cavallaro@st.com>, 
	Jose Abreu <joabreu@synopsys.com>, Maxime Chevallier <maxime.chevallier@bootlin.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, Saravana Kannan <saravanak@kernel.org>, Lee Jones <lee@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	mfd@lists.linux.dev, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_082649_070964_6A276AF7 
X-CRM114-Status: GOOD (  23.48  )
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

T24gVHVlLCBBdWcgNCwgMjAyNiBhdCA4OjU04oCvQU0gQW5kcmV3IEx1bm4gPGFuZHJld0BsdW5u
LmNoPiB3cm90ZToKPgo+ID4gSSBhZ3JlZSB0aGF0IHRoZSBsaW5rIFBIWSBjYW5ub3QgYmUgaWRl
bnRpZmllZCBieSByZWFkaW5nIGl0cwo+ID4gcmVnaXN0ZXJzIGJlZm9yZSB0aGUgcGFja2FnZSBj
b250cm9sIHNlcXVlbmNlIGhhcyBydW4uIEkgZG8gbm90IGFncmVlCj4gPiB0aGF0IHRoaXMgbWVh
bnMgYW4gYXJiaXRyYXJ5IElEIHNob3VsZCBiZSBwbGFjZWQgaW4gRFQsIHRob3VnaC4KPgo+IFRo
ZSBhYmlsaXR5IHRvIHB1dCB0aGUgSUQgaW4gRFQgaXMgdGhlcmUgZm9yIHR3byByZWFzb25zOgo+
Cj4gMSkgWW91IGNhbm5vdCBlbnVtZXJhdGUgdGhlIFBIWSBiZWNhdXNlIG9mIG1pc3NpbmcgY2xv
Y2tzIGV0Yy4KPiAyKSBUaGUgdmVuZG9yIG1lc3NlZCB1cCwgYW5kIGRpZCBub3QgcHV0IGEgdmFs
aWQgSUQgaW4gcmVnaXN0ZXJzIDIgYW5kIDMuCj4KPiAyIGRvZXMgbm90IGhhcHBlbiB2ZXJ5IG9m
dGVuLCBidXQgdGhpcyBpcyBvbmUgZXhhbXBsZS4gVGhleSBhcmUKPiBkaWZmZXJlbnQgUEhZcywg
dGhleSBuZWVkIGRpZmZlcmVudCBkcml2ZXIgY29kZSwgd2hlbiB5b3UgY29uc2lkZXIgdGhlCj4g
UEhZIGFzIGEgd2hvbGUuCj4KPiBJIGFsc28gd291bmQgbm90IHB1dCBpbiBhbiBhcmJpdHJhcnkg
SUQsIHBpY2sgYW4gdW51c2VkIElEIGluIHRoZQo+IHZlbmRvcnMgcmFuZ2UuCgpUaGUgdmFsdWUg
Y3VycmVudGx5IHVzZWQgaW4gRFQgaXMgbm90IGFyYml0cmFyeTogMHgwMDQ0MTQwMCBpcyBleGFj
dGx5CndoYXQgYm90aCBsaW5rLXNpZGUgQ2xhdXNlIDIyIGVuZHBvaW50cyByZXBvcnQgZnJvbSBy
ZWdpc3RlcnMgMiBhbmQgMwphZnRlciB0aGUgY29ycmVzcG9uZGluZyBwYWNrYWdlIGNvbnRyb2wg
c2VxdWVuY2UgaGFzIHJ1bi4gVGhpcyBpcyBjYXNlCigxKSwgcmF0aGVyIHRoYW4gY2FzZSAoMik6
IHRoZSBJRCBjYW5ub3QgaW5pdGlhbGx5IGJlIHJlYWQgYmVjYXVzZSB0aGUKRVBIWSBoYXMgbm90
IHlldCBiZWVuIGNsb2NrZWQsIGNvbmZpZ3VyZWQgYW5kIHJlbGVhc2VkIGZyb20gcmVzZXQuCgpU
aGUgcmVwb3J0ZWQgSUQgZG9lcyBub3QgZGlzdGluZ3Vpc2ggdGhlIHR3byBwYWNrYWdlcywgYnV0
IHJlcGxhY2luZyBpdAp3aXRoIGEgc3ludGhldGljIHVudXNlZCBJRCB3b3VsZCBtYWtlIGFuIGV0
aGVybmV0LXBoeS1pZEFBQUEuQkJCQgpjb21wYXRpYmxlIGRpc2FncmVlIHdpdGggdGhlIHZhbHVl
IGFjdHVhbGx5IHJlcG9ydGVkIGJ5IHJlZ2lzdGVycyAyIGFuZAozLiBJZiBzZXBhcmF0ZSBBQzIw
MCBhbmQgQUMzMDAgUEhZIGRyaXZlciBlbnRyaWVzIGFyZSBuZWVkZWQgdG8gaWRlbnRpZnkKdGhl
IGNvbXBsZXRlIHBhY2thZ2UgdmFyaWFudHMsIHRoZXkgY2FuIHVzZSBwYWNrYWdlLXNwZWNpZmlj
IG1hdGNoIGRhdGEKd2hpbGUgc2hhcmluZyB0aGUgY29tbW9uIGxpbmstUEhZIGltcGxlbWVudGF0
aW9uLgoKPgo+ID4gQm90aCBBQzIwMCBhbmQgQUMzMDAgZXhwb3NlIHRoZSBzYW1lIGxpbmstc2lk
ZSBQSFkgSUQgYW5kIHJlZ2lzdGVyCj4gPiBsYXlvdXQuCj4KPiBObyB0aGV5IGRvbid0LiBUaGVy
ZSBhcmUgZXh0cmEgcmVnaXN0ZXJzIGluIGRpZmZlcmVudCBhZGRyZXNzIGRvbWFpbnMuCgpUaGUg
YmxvY2sgZGlhZ3JhbXMgbWFrZSB0aGUgZGlzdGluY3Rpb24gY2xlYXJlci4gQm90aCBkaWFncmFt
cyBkZXBpY3QKYW4gRVBIWSBibG9jayB3aXRoIHRoZSBzYW1lIGludGVybmFsIG9yZ2FuaXphdGlv
bjogTUlJL1JNSUksIGF1dG8KbmVnb3RpYXRpb24sIGF1dG8tTURJWCwgMTAvMTAwIFRYIGFuZCBS
WCBQQ1MvUE1BIGJsb2NrcywgTEVEIGxvZ2ljLApjbG9jay9yZXNldCwgUExMIGFuZCBFUEhZIEFG
RS4KCldoYXQgZGlmZmVycyBpcyB0aGUgc3Vycm91bmRpbmcgdG9wLWxldmVsIGNvbnRyb2wgcGF0
aC4gSW4gQUMyMDAsCkVfTURDL0VfTURJTyBjb25uZWN0IGRpcmVjdGx5IHRvIHRoZSBFUEhZLCB3
aGlsZSB0aGUgcGFja2FnZSBjb250cm9sCmxvZ2ljIGFuZCByZWdpc3RlcnMgYXJlIHJlYWNoZWQg
c2VwYXJhdGVseSB0aHJvdWdoIFJTQi9UV0kuIEluIEFDMzAwLAp0aGUgZXh0ZXJuYWwgTURDL01E
SU8gcGlucyBmaXJzdCBlbnRlciBhIHRvcC1sZXZlbCBNRElPIHNsYXZlIGFuZApyZWdpc3RlciBi
bG9jaywgd2hpY2ggdGhlbiBwcm92aWRlcyBpbnRlcm5hbCBNREMvTURJTyBjb25uZWN0aW9ucyB0
bwp0aGUgRVBIWS4gVGhhdCB0b3AtbGV2ZWwgYmxvY2sgYWxzbyBjb250YWlucyB0aGUgQUMzMDAt
c3BlY2lmaWMgcmVzZXQsCmNsb2NrLCBJL08gYW5kIGVGdXNlIGNvbnRyb2xzLgoKVGhlcmVmb3Jl
LCBJIGFncmVlIHRoYXQgc2F5aW5nIHRoZSBjb21wbGV0ZSByZWdpc3RlciBsYXlvdXRzIGFyZSB0
aGUKc2FtZSB3YXMgdG9vIGJyb2FkLiBUaGUgcGFja2FnZXMgaGF2ZSBkaWZmZXJlbnQgdG9wLWxl
dmVsIGNvbnRyb2wKcmVnaXN0ZXJzIGluIGRpZmZlcmVudCBhZGRyZXNzIGRvbWFpbnMsIGJ1dCB0
aGUgZGlhZ3JhbXMgaW5kaWNhdGUgdGhhdAp0aGV5IGNvbnRhaW4gdGhlIHNhbWUgbGluay1mYWNp
bmcgRVBIWSBpbXBsZW1lbnRhdGlvbi4gVGhhdCBtYXBzCm5hdHVyYWxseSB0byBzaGFyZWQgbGlu
ay1QSFkgY29kZSB3aXRoIHNlcGFyYXRlIEFDMjAwIGFuZCBBQzMwMCBjb250cm9sCmJhY2tlbmRz
LCByYXRoZXIgdGhhbiB0d28gY29waWVzIG9mIHRoZSBjb21tb24gRVBIWSBpbXBsZW1lbnRhdGlv
bi4KCj4KPiAgICAgICAgIEFuZHJldwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
