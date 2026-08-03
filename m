Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 862AFC55182
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 15:57:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bJKaC8jeKxuuLn0YJEyigCJif2J+LZHwZ226RiaXafE=; b=k8YeOSkJah3Q40
	6hIfUVTBaYVx2p5wzoszzAde4uL5J6vKGguPsgzcPClgIKG6tQKTnZl+CjG2f0q4GHU3OuypyFnZA
	fXRtylnt5zx6beCT3X3pL5WXZXMkzrALZs+YvYMWetj6Dr0elCNf4rIUN6p5E6LVHyfINoJuv+In/
	HuwIgUFACybSYRFhYDay1EMcgaEpmcVuuae+erXsg+X4YsQ+rbd0Iv/Y4yoQ25bjZw+0Xajkg2Ki0
	6yntxKG45WvNZZ1LLYPLUOa/GioHulZLjw3HB37WKSoUQf6ybgrUopqUTvYaE2DlaYxw1qHVx69Yh
	o/f5nxapkEmDDx7qx/NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqv2g-0000000Hay6-3KRm;
	Mon, 03 Aug 2026 15:57:30 +0000
Received: from mail-ua1-x931.google.com ([2607:f8b0:4864:20::931])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqv2e-0000000HaxB-3RGX
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 15:57:30 +0000
Received: by mail-ua1-x931.google.com with SMTP id a1e0cc1a2514c-9618b8bdc51so683765241.1
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Aug 2026 08:57:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785772647; cv=none;
        d=google.com; s=arc-20260327;
        b=eFIDPkCOf4AbD+FlFzOZmwvkyqx4/O2J/ve26pyOpxiN9X/L9BZ0ktIF7/padEke5T
         EX0IWPd4mku6s1+hsLxpAU699BoHqLe71J7A6JqiAWMqneqWP+QOOieP9sgpolhVFryD
         JkRzP1CHsCzvK37Ajg34QuXdzPJQ0DYM6CkViG4ngf09gfQhaEEZ5dulR1LaJWatDdgo
         xQ48cPA+GIMAy32ZiwbOwWVMzNqrDdiM9zvudZfIZBjPjWZNHNPSyfsyztTW4KDHwpQU
         6qfUiAswuyWtY7sxC0ts5IDefhDFNkKdb76I++QlFFkwWDInqMFk3blzshcpsfWHvqeC
         l17Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=N0JlmS2gNslt5buGhuv7J6Rqxg7nw4cpe34TAqatS1E=;
        fh=H23zU48rwOeC8dTryX8L/5LGrpCHVDWyRSt1tGulu2I=;
        b=LDhcP976RI/7pifwIoDSu5OLvokIft5wQh2bbQ4a0NgUF/WUIDe5BPSIULTUcFABZI
         T5zwIRPgy/YYpjvG6ijCL9xfevbvkpTvMPg5KwUanl0PrVlRwWsgorlOq49vL0bbU7U3
         NTk6XOnm9cvcBi0CCd0zgLQhHjfVbXv2NKHP1hbrVICuibJU5Gj42NBk/CxHqADXNfjI
         sCcIe1gUcwfwjvm4aOYXG7nM0DhVxe3t0aFJ41vnfnXbfme5K/gkpL2Kx6MLIcWDt+SU
         lrFW4KsXqRrqFAUgXziatMEKY836iA01R2FUFKJ1Lrhvqs9ktTiEbjuQFvyp+O6TkYzz
         3PaA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785772647; x=1786377447; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=N0JlmS2gNslt5buGhuv7J6Rqxg7nw4cpe34TAqatS1E=;
        b=SLJAtiF9jdiNvEm/Trj6xN+SA+qnr11CHe8jBq1stSQjihSXQ4ZwZwnT9jRrWiwCc4
         uyvsrPzN3xoQMYx5Hf1mhKH+lYipfkFgn4Od9bdxXA3hKaoOSNFG9kh9PC2Gr5WCe968
         JCRZGcjW1pzc7ZKh+91twPmRY8QAaHBuYHaBlt56d45Ls7xK7UO7YImx2jhXjOb0r3ua
         WQ4b20gFfZNCkVzE5+1rMb2YcMBLFeBDTW4164K+wAkszYUB0bl6jbfNw3gLr0vLTwBo
         C0FoKoCuf82k/Jfidt47OKkG3vif+NkBH2+5WOSy9vQ3SN5klqzMC8lV8Q4FlzwRK+l5
         hlsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785772647; x=1786377447;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=N0JlmS2gNslt5buGhuv7J6Rqxg7nw4cpe34TAqatS1E=;
        b=BEtQQ67Tu5Mr3j1GnNk30plEFwsN4yz1zHxx5XbcdpHKqVBv64inSTcbh4EvWu4SQs
         KDzcXo+vg8uqzgxX2Dkv7WEWdabSX83KqFeM0Rsr2Gj5O9e7dQsAgzszThamIwFRAye/
         2I4cw0oWh7lNkOZ+l5cKYidY2eM1HeuJpFdYQkl7AK/SsHPXEP7AvsJPhYR69WrD3TDw
         /pMQnjwjCyd9JAATHImLx/4crHOMgtX840E1WQN8yFJTkxCYdGdZsSE9zpqbHuqm29N3
         mX797FnNKBbv0fDiwILZd/ggt/bD9SZo9mE1SXNnrraQoaNoiAOUtu82i+ZxRR94pVDH
         9P2Q==
X-Forwarded-Encrypted: i=1; AHgh+RpaHjcpu/RAkJ8zPp7MMEni0gCRF0JwMLRUriz51O2tcs6ZO7ogJB4tOBvgkGCPYWlL6WlKmHgpc0MiZVEhtw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxtJo98FU0hjk3qMVHqGHX6mhk1n4LEFUGykoN372wJezULO7pW
	ERr6BOenfBW2X4WgpWKzGjA052aBN94poAtHWVBL5SPfmt3Fbh+VQv8T66ogt3CfzwIxNPzrHWF
	QMvxY6vI6MSe73zxLjkHkq5G45PcSAk8=
X-Gm-Gg: AR+sD13QVXxeVXTF9K7RK6K+5A7LKn+8O8inmhrDYO7+fcY7Ea/r1341vNV9IrWZVA/
	3t32pIe14kYx1XEp9yC00MMTFYXLojaKGOveRAnROXU7K7gXstc7LYM+/mkMjxGu9zg7g3xMOXC
	eGeWKQDmNzE+KQp+dHkhmVpd86Z9TQni4+qlkV8JqQtRzpUSPdEUxTO51Sv8aibUTMbyTtQnZjD
	F89QpQu5lrska/44bbLLlL2NjGHnjG53Fzs/SIMQdCh9iYLzvTI9igq00aIbvKnd5AupK5QqX4W
	8fwVLnGUsKBHzEKKLshrGmIvGTgZHhoZmA2euJgUcwvPAnm8RtkkcEvvRkfTs4s3o4R2H/cOXFh
	rEGL677oeIkAVKUDQa6vxSjRFa0oDZT8YUYTlI+4LEIAkUbJyd6PTovW0C3z0ZIMbZuhnkeMER1
	zYjGuYdPjzDLUiYBkOtM2pl8HHRu+DRqXjfu1D
X-Received: by 2002:a05:6102:3ec1:b0:740:177:f357 with SMTP id
 ada2fe7eead31-75b21b5cddamr7901767137.6.1785772647108; Mon, 03 Aug 2026
 08:57:27 -0700 (PDT)
MIME-Version: 1.0
References: <20260802-submit-acx00-of-dynamic-v1-v1-0-0a53cd9e21cc@gmail.com> <aaec8809-8218-4412-a60d-931406dbf287@arm.com>
In-Reply-To: <aaec8809-8218-4412-a60d-931406dbf287@arm.com>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Mon, 3 Aug 2026 09:57:15 -0600
X-Gm-Features: AUfX_myOaFTmy1w_XsU_xICVSFiXSt1enMYBuh0WDNCP9gRZxCQ8cKkbteQKJ94
Message-ID: <CADvTj4qCYjQHOQn1jRTHNNL=xeX6z3Dgc-PLwOBUvX34AU6cuA@mail.gmail.com>
Subject: Re: [PATCH 00/21] net: phy: add X-Powers AC200/AC300 EPHY support
To: Andre Przywara <andre.przywara@arm.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wens@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Richard Genoud <richard.genoud@bootlin.com>, 
	Maxime Ripard <mripard@kernel.org>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jose Abreu <joabreu@synopsys.com>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, Saravana Kannan <saravanak@kernel.org>, Lee Jones <lee@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	mfd@lists.linux.dev, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_085728_876476_A04371BF 
X-CRM114-Status: GOOD (  32.88  )
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

T24gTW9uLCBBdWcgMywgMjAyNiBhdCA3OjI24oCvQU0gQW5kcmUgUHJ6eXdhcmEgPGFuZHJlLnBy
enl3YXJhQGFybS5jb20+IHdyb3RlOgo+Cj4gSGkgSmFtZXMsCj4KPiB0aGFua3MgZm9yIHNlbmRp
bmcgdGhpcyB0byB0aGUgbGlzdCwgYnV0IGFzIEFuZHJldyBhbHJlYWR5IG1lbnRpb25lZDoKPiB0
aGlzIGlzIHF1aXRlIGEgYmVhc3QsIGFuZCB3b3VsZCBuZWVkIHRvIGJlIGJyb2tlbiBkb3duLgo+
IEplcm5laiBhbmQgSSBjcmVhdGVkIHNvbWUgcGF0Y2hlcyBqdXN0IGZvciB0aGUgQUMyMDAgUEhZ
IG9uIHRoZSBINiwKPiB3aGljaCBKZXJuZWogcmVjZW50bHkgcmV2aXZlZCwgYW5kIElJVUMsIHdh
bnRlZCB0byBzZW5kIHRvIHRoZSBsaXN0Lgo+IFRoaXMgd291bGQgcHJvYmFibHkgYmUgYSBtb3Jl
IHdvcmthYmxlIHJvdXRlOiBzdGFydCBlYXN5LCB0aGVuIGFkZAo+IHN1cHBvcnQgZm9yIG1vcmUg
U29DcyAoSDYxNiBkZXBlbmRzIG9uIHRoZSBXSVAgUFdNIGRyaXZlcikgYW5kIG1vcmUKPiB2YXJp
YW50cyAoQUMzMDApIGxhdGVyLgoKV2VsbCwgSSB3YW50ZWQgdG8gdmFsaWRhdGUgdGhhdCB0aGUg
b3ZlcmFsbCBkcml2ZXIgZGVzaWduIGlzIHN1aXRhYmxlIGZvcgp0aGUgSDYxNiB3aGljaCBoYXMg
dG8gc3VwcG9ydCBib3RoIFBIWSB2YXJpYW50cyBhdCBydW50aW1lIGVmZmVjdGl2ZWx5CnNpbmNl
IHRoYXQgaXMgdGhlIG1vc3QgY29tcGxleCB1c2UgY2FzZSwgSSBhbHNvIGRvbid0IGhhdmUgYSBI
NiBib2FyZAp0byB0ZXN0IHdpdGggbXlzZWxmIGF0IHRoZSBtb21lbnQuIEkgdGhpbmsgYmVpbmcg
YWJsZSB0byBzZWUgYSBtb3JlCmNvbXBsZXRlIGltcGxlbWVudGF0aW9uIGxpa2UgdGhpcyBpcyBo
ZWxwZnVsIGFzIGl0IGNhbiBiZXR0ZXIgaW5mb3JtIGhvdwp3ZSBjYW4gdGllIHRoZSBkaWZmZXJl
bnQgY29udHJvbCBpbnRlcmZhY2VzIHRvIHRoZSBsaW5rIFBIWSBpbiBhIHdheSB0aGF0Cndvcmtz
IGZvciB0aGUgbW9yZSBjb21wbGV4IEg2MTYgY2FzZS4KCj4gV2hpY2ggYWxzbyBicmluZ3MgbWUg
dG8gc29tZSBhdHRyaWJ1dGlvbiBxdWVzdGlvbnM6IElmIEkgdW5kZXJzdGFuZAo+IGNvcnJlY3Rs
eSwgdGhpcyBoYXMgYmVlbiB3cml0dGVuIG1vc3RseSBieSBzb21lIExMTT8gSSB0aGluayB5b3Ug
d291bGQKPiBuZWVkIGF0IGxlYXN0IHRvIGRpc2Nsb3NlIHRoYXQsIGlmIG5vdCBldmVuIGFkZCBh
biBvZmZpY2lhbCB0YWc/CgpTb21lIHBhdGNoZXMgd2VyZSwgc3VyZSwgbXkgdW5kZXJzdGFuZGlu
ZyBpcyB0aGF0IGl0J3Mgbm90IHJlcXVpcmVkIHRvCmV4cGxpY2l0bHkgY2FsbCB0aGF0IG91dCBi
dXQgSSBjYW4gYWRkIG1vcmUgaW5mbyBpZiB0aGF0IGhlbHBzLCB0aGlzIHdhcwp0ZXN0ZWQvdmFs
aWRhdGVkIHVzaW5nIGEgaGVhdmlseSBhdXRvbWF0ZWQgaGFyZHdhcmUgaW4gdGhlIGxvb3AKdGVz
dGJlbmNoIHNldHVwIG9uIGFuIEFDMjAwIGFuZCBBQzMwMCB2YXJpYW50IEg2MTYgYm9hcmQuCgo+
IEFsc28gSSB3b25kZXIgaG93IHRoaXMgcmVsYXRlcyB0byB0aGUgcGF0Y2hlcyBmbG9hdGluZyBh
cm91bmQgZm9yIGEKPiB3aGlsZSBhbHJlYWR5OiBodHRwczovL2dpdGh1Yi5jb20vamVybmVqc2sv
bGludXgtMS9jb21taXRzL2FjMjAwLXY0Lgo+IFRoaXMgYnJhbmNoIGlzIHJlbGF0aXZlbHkgbmV3
LCBidXQgdGhlIGFjMjAwLXYzIGJyYW5jaCBmb3IgaW5zdGFuY2UgaXMKPiBtdWNoIG9sZGVyLgoK
WWVhaCwgcGFydHMgb2YgdGhpcyBhcmUgbG9vc2VseSBiYXNlZCBvZmYgb2Ygc29tZSBleGlzdGlu
ZyBwYXRjaGVzIHRoYXQKd2VyZSBmbG9hdGluZyBhcm91bmQgbGlrZSB0aG9zZSwgYWx0aG91Z2gg
aXQgaGFzIGRpdmVyZ2VkIHF1aXRlIGEgYml0IGFzCndlbGwgc2luY2UgdGhpcyBzZXJpZXMgaXMg
ZGVzaWduZWQgdG8gaGFuZGxlIGJvdGggcGh5IHZhcmlhbnRzLgoKSSBndWVzcyBJIHNob3VsZCBs
aW5rIHRvIHNvbWUgb2YgdGhlIGVhcmxpZXIgd29yayBpbiB0aGUgY292ZXIgbGV0dGVyPwoKPiBP
biA4LzMvMjYgMDc6MTQsIEphbWVzIEhpbGxpYXJkIHdyb3RlOgo+ID4gVGhlIEFsbHdpbm5lciBI
NjE2L0g2MTggc2Vjb25kYXJ5IEVNQUMgaXMgY29tbW9ubHkgY29ubmVjdGVkIHRvIGEgRmFzdAo+
ID4gRXRoZXJuZXQgUEhZIGluIGFuIFgtUG93ZXJzIEFDMjAwIG9yIEFDMzAwIGNvbXBhbmlvbiBw
YWNrYWdlLiAgVGhlIHR3bwo+ID4gcGFja2FnZXMgZXhwb3NlIHRoZSBzYW1lIGxpbmsgUEhZIElE
IGFuZCBsYXJnZWx5IGNvbXBhdGlibGUgbGluay1zaWRlCj4gPiByZWdpc3RlcnMsIGJ1dCByZXF1
aXJlIGRpZmZlcmVudCBjb250cm9sIHBhdGhzIGJlZm9yZSB0aG9zZSByZWdpc3RlcnMgY2FuCj4g
PiBiZSBhY2Nlc3NlZDogQUMyMDAgaXMgaW5pdGlhbGl6ZWQgdGhyb3VnaCBpdHMgSTJDIE1GRCwg
d2hpbGUgQUMzMDAgdXNlcyBhCj4gPiBub24tUEhZIENsYXVzZSAyMiBjb250cm9sIGVuZHBvaW50
Lgo+ID4KPiA+IFNvbWUgSDYxNi1mYW1pbHkgcHJvZHVjdHMgd2VyZSBzaGlwcGVkIHdpdGggZWl0
aGVyIHBhY2thZ2UgdW5kZXIgdGhlIHNhbWUKPiA+IGJvYXJkIGlkZW50aXR5LiAgRm9yIHRob3Nl
IHN5c3RlbXMsIHRoaXMgc2VyaWVzIHVzZXMgYSBTSUQgTlZNRU0gZmllbGQgdG8KPiA+IHNlbGVj
dCB0aGUgY29udHJvbCBwcm92aWRlciBhdCBydW4gdGltZS4gIFdpdGggQ09ORklHX09GX0RZTkFN
SUMsIHRoZSBsaW5rCj4gPiBQSFkgZW5hYmxlcyBvbmx5IHRoZSBzZWxlY3RlZCBmYWlsLW5lZWRz
LXByb2JlIHByb3ZpZGVyLCBzbyBhbiBBQzMwMCBib2FyZAo+Cj4gSnVzdCB0byBicmluZyB0aGF0
IHNoYWxsb3cgZGlzY3Vzc2lvbiB3ZSBoYWQgb24gSVJDIHRvIHRoZSBsaXN0OiBJCj4gd29uZGVy
IGlmIHRoaXMgaXMgdGhlIHJpZ2h0IHNvbHV0aW9uPyBBbHRlcm5hdGl2ZWx5IEkgd2FzIHdvbmRl
cmluZyBpZgo+IGp1c3QgcGF0Y2hpbmcgdGhlIERUIGluIFUtQm9vdCB3b3VsZCBzaW1wbGlmeSB0
aGluZ3MsIGFuZCBhbHNvIGhlbHAKPiBvdGhlciBEVCB1c2VycyBsaWtlICpCU0Qgb3IgVS1Cb290
IChwcm9wZXIpIGl0c2VsZiwgdG8gbm90IGJvaWwgdGhlCj4gb2NlYW4sIGJ1dCBqdXN0IGFsbG93
aW5nIHRoZW0gdG8gZm9sbG93IGEgc3RhbmRhcmQgRFQgZGVzY3JpcHRpb24uCgpUaGlzIGNhbiBi
ZSB1c2VkIGVpdGhlciB3YXksIENPTkZJR19PRl9EWU5BTUlDIGlzbid0IGEgaGFyZApkZXBlbmRl
bmN5IHdpdGggdGhpcyBkZXNpZ24sIGFzaWRlIGZyb20gYWRkaW5nIENPTkZJR19PRl9EWU5BTUlD
CnN1cHBvcnQgZm9yIG1kaW8gdGhlIGR5bmFtaWMgZW5hYmxlbWVudCBvZiB0aGUgY29ycmVjdCBw
aHkgY29udHJvbApkcml2ZXJzIGlzIHJlbGF0aXZlbHkgc2ltcGxlIHdpdGggdGhpcyBhcmNoaXRl
Y3R1cmUuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
