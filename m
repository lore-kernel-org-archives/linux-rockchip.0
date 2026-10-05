Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA851CA5FF0
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 21:15:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ez3M6PVW1hRjrl4EwPZ05+UsWkpwqIYmKubUkHqvb9w=; b=MKOaz+Num4wXKN
	RnaX9nTIu/rZqpZ10GHKCM0aYpkz0azNivnacR/4oBdG/cKcL31ynBvHePpBIcDP7ehKG6EfHjG/h
	KwEWrw6+rlI6NvbHh56jRpqUGzsYnvadbr2QULAP04i4jrTJ1FKoi2zSGBgw541TrLni0j4o7P3DQ
	HRSh0yNZb08Tgq0AjJBZArLKTnDfgXr3JhGKUriXlWK3mdG0qWm0B78UopcaynpNQ2yOj5Y/Qp/Xa
	t7ACBUC1IWXYaDaKzN6Nj8UCxDesYY0Qq78WCV9p/4n4jtFUUMU2OqnEkY1yllC2/2n5xnGyFPhsz
	ib32TOQGCf0b0hFezCKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDq1r-0000000HBUW-1IZ0;
	Mon, 05 Oct 2026 21:15:23 +0000
Received: from mail-ej2-x05.google.com ([2a00:1450:4864:34::5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDq1o-0000000HBTJ-2bx2
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Oct 2026 21:15:21 +0000
Received: by mail-ej2-x05.google.com with SMTP id a640c23a62f3a-c2e2375cc34so126606966b.0
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Oct 2026 14:15:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1791234918; cv=none;
        d=google.com; s=arc-20260327;
        b=ZO9w9HmifSraD5OF52lch3z3cZEfr0fXnwu6pwRp+kwgSe8rbXEDWMG0Qpi0/K89+7
         RGDUAX7N9b+Rmezd9jyMSpY7GPb2dakxNt6CT/iCsGick6dd6sewQUvOC+aR+AGMjxM+
         CW+nPORcO8Jsqp2VPY14X9cB9z69SBgxIzrvALIRCiFxPj+F3M4fJjsLjudoCZW5mpYH
         saDdaFYS1dpAYwgygegxLKx0wrnZCCdCIHDbV7xvTeb8hu0iV3oxW6Oom/AzalpvI1Tr
         E+mqMHylKZbTn5iTHpNol7/zYz8NP08kOFpukt6aF8cCK4yB2QZSLm4uHaGwCWbGB5u2
         GhLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=v463Ztb7l8HkbYlND0+jy6OLKJauaplyxKRrplRmY1k=;
        fh=5JpR43mel3sDWdlAtRWWTf988WfOXW8MFDvO4l46rUU=;
        b=ZRXY2iihUha0r1N5XDR+5PcwFfcyPv6ePUkg/vbmKPG660nIYi5C7KqN6k+XD0d1kN
         pbkft8mkWYG0vkb2mIx/edd0m6h5rhlA5TxLkV+mN2DQU7Akc/FkHl54DiUb8O2gx0nA
         FfwJl4UGDPTADzCT6Ix8Mh11NoPnElju7FvMMwkB1f9PMN3q14TfnvhrdwBxfw7U4rEP
         z69dC0APGvxWpHsBd+o8D2/EXjdk99QHvoXoSzuIdW3QZU8C3dmPQPrnHVWraEZuFpzo
         qkzH/ho/rPkbS2VRtECgslbSya6HSS3AlaqlUEYYGy2fG2qTZhTlfpCVRRtzRgHL2uLp
         9vGQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791234918; x=1791839718; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=v463Ztb7l8HkbYlND0+jy6OLKJauaplyxKRrplRmY1k=;
        b=dSRTaO8dWwoAqpFXB3yfnsnJRwJiL3GQ4k2pMks1ShBnzp3nT9VQP9SCqwJGvUMGCH
         zhQ7VSGh+xKB9KHKqbMJIRL0oSf5mOfhsxFYK+sjxqeQmlIGpHfg/VMjzACjeK6rDd53
         EPn0Ap2Pxy8M994hY6/1yFzOsUWEj/GjTONp7B18s3FgbiUO68znsJmdBtUt4/aftCP/
         /cYKBIllW7rKTSbb7h716pbe9jOXhicRSKe5ZRyrtY1BrPp/qUY39B44RovSCprHVkvl
         ljV+Nzf6AXPJhS8SutRljRweNQrTlooN+M2le60gOXNxHDbXXo3BdwgImWLIWe20Osxw
         NV/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791234918; x=1791839718;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=v463Ztb7l8HkbYlND0+jy6OLKJauaplyxKRrplRmY1k=;
        b=Qk5CM2iqzh1TMotF64oydPPIGAZm8mHzU3KSuJCgWVLVckoQUUrrc6FUNxYOViJ0bQ
         +WjXAtnLi4XNUCKRKAGaVEvD7gbEbu9qM2XCd1ne5v+dO7xMef2n1zPM59R+D3l0IC5e
         Q7tJqNRr528V0/XzmTW413Kmg3pBbPUvq0j/ZPTrlzmx0ZLozp5qzqpSwjjQf31MBwof
         Ba0M/FJeJlU/OYc414iK8IPCsWsJNpHCOs20MytG/wc5+fIBXKLJEQCOGUYIYYJxoo2T
         vEqM2jDbb3SKFxIJGZ8aag3dQAvp5bkWERVMGB3JumQMPJS9afHy8dyLk09GDofWmnDN
         WBwA==
X-Forwarded-Encrypted: i=1; AKwUvBwUqdREvbn5TX+0VDyxA5JJzHMVNJU0eDq5luuJoYNjkEY72RTtBOXTUYhB+nJgcsWQHhGNWC+ymkfB9m7alg==@lists.infradead.org
X-Gm-Message-State: AFq9FYKox4nV4UKd49ZO2cDmm/aJ8RdKEJhvDe/24FtubBjz0LVcT/CY
	azxJ1gdGqJ1O82iHhEiaXjCdvw0oHaSEm/uRLhroh3phWAeuIjlnr5CWK0mMOQevROet78aoqR9
	rZMr0z5DZzYtYfHT95bXm5rtVwBkLLlk=
X-Gm-Gg: AYBFou2DFXPh3AZ5e6eEl3xrBcbqGW8Bq9h0QgIfdjZHGuPWBxGrEwuMfMOayGwXNeC
	6SuYriEpa0ZlNWl2/mY+tW6Uuka3yVATKadBmEj8PNrSzJ/A2ft2HmvecovMqU8sk6ELva7sbew
	2IuCffYFakTiT1VEw03xVpXD9wTCawGoysqr2oeZ4LywM4nA/e3ywYOlyZT2DgxtFqm1uixN+Ln
	PDL49zGeCmZnzif04gND7TZ0EIQF42iI8oZ+hIFE/AYsaqC9CuRDeQFqD7cGqzkRL2LaZHWPgXm
	ChZy7VtRkUa6fiauqxmB9buGOAto7a3fnGOtddUWT4W6XlIPKlPC84CyiQ==
X-Received: by 2002:a17:907:7215:b0:c2d:bd95:874a with SMTP id
 a640c23a62f3a-c2e4ad79199mr1112515766b.17.1791234918176; Mon, 05 Oct 2026
 14:15:18 -0700 (PDT)
MIME-Version: 1.0
References: <20260922200336.2201212-1-coiaprant@gmail.com> <20260922200336.2201212-4-coiaprant@gmail.com>
 <20261005135939.01ccde50@kernel.org>
In-Reply-To: <20261005135939.01ccde50@kernel.org>
From: Coia Prant <coiaprant@gmail.com>
Date: Tue, 6 Oct 2026 05:15:07 +0800
X-Gm-Features: AclHuK-hmC2IHermBe0I62cu-4Uo5MfOk7srVIbtbJ9DQ0aB5gykKJWKnA3WMzU
Message-ID: <CALj3r0h7j-4ZAiX67LmbgpmYCvK-Xmzd_qnYYgoBmniAW+eiWw@mail.gmail.com>
Subject: Re: [PATCH net-next v10 03/11] phy: rockchip: naneng-combphy: add
 SGMII MAC selection for RK3568
To: Jakub Kicinski <kuba@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S . Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@google.com>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Maxime Chevallier <maxime.chevallier@bootlin.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Romain Gantois <romain.gantois@bootlin.com>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Russell King <linux@armlinux.org.uk>, 
	Shawn Lin <shawn.lin@rock-chips.com>, David Heidelberg <david@ixit.cz>, netdev@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261005_141520_854767_81E45BE1 
X-CRM114-Status: GOOD (  24.43  )
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

SmFrdWIgS2ljaW5za2kgPGt1YmFAa2VybmVsLm9yZz4g5LqOMjAyNuW5tDEw5pyINuaXpeWRqOS6
jCAwNDo1OeWGmemBk++8mgo+Cj4gT24gV2VkLCAyMyBTZXAgMjAyNiAwNDowMzoyNyArMDgwMCBD
b2lhIFByYW50IHdyb3RlOgo+ID4gT24gUkszNTY4LCB0aGUgU0dNSUkgaW50ZXJmYWNlIGNhbiBi
ZSByb3V0ZWQgdG8gZWl0aGVyIEdNQUMwIG9yCj4gPiBHTUFDMSB2aWEgdGhlIEdSRiByZWdpc3Rl
ciBwaXBlX3NnbWlpX21hY19zZWwuCj4gPgo+ID4gQWRkIHN1cHBvcnQgZm9yIHRoaXMgc2VsZWN0
aW9uIGJ5IGludHJvZHVjaW5nCj4gPiB0aGUgInJvY2tjaGlwLHNnbWlpLW1hYy1zZWwiIERUIHBy
b3BlcnR5Lgo+ID4KPiA+IEZyb20gdGhlIFJLMzU2OCBUUk0gKFBhcnQxLCBQYWdlIDIyOSksIHRo
ZSBQSVBFX0dSRl9YUENTX0NPTjAKPiA+IGJpdCAxIChwaXBlX3NnbWlpX21hY19zZWwpIGlzIGRl
ZmluZWQgYXM6Cj4gPgo+ID4gICAgIDA6IFNHTUlJIHJvdXRlZCB0byBHTUFDMAo+ID4gICAgIDE6
IFNHTUlJIHJvdXRlZCB0byBHTUFDMQo+ID4KPiA+IFRoZSBoYXJkd2FyZSByZXNldCB2YWx1ZSBp
cyAxIChHTUFDMSkuIElmIHRoZSBwcm9wZXJ0eSBpcyBzZXQgdG8gMCwKPiA+IHRoZSBkcml2ZXIg
cm91dGVzIFNHTUlJIHRvIEdNQUMwOyBpZiBzZXQgdG8gMSAob3Igb21pdHRlZCksIGl0Cj4gPiBy
ZW1haW5zIGF0IEdNQUMxLgo+ID4KPiA+IFRoaXMgaXMgbmVjZXNzYXJ5IGZvciBib2FyZHMgc3Vj
aCBhcyB0aGUgQXJpYWJvYXJkIFBob3RvbmljYXQsIHdoaWNoCj4gPiB1c2VzIHRoZSBTR01JSSBp
bnRlcmZhY2UgY29ubmVjdGVkIHRvIEdNQUMwLgo+ID4KPiA+IE91dC1vZi1yYW5nZSB2YWx1ZXMg
YXJlIHJlamVjdGVkIGJ5IGR0c2NoZW1hLCBzbyB0aGUgZHJpdmVyIGRvZXMgbm90Cj4gPiBkdXBs
aWNhdGUgdGhlIHJhbmdlIGNoZWNrLgo+Cj4gV2hpbGUgbG9va2luZyB0aHJ1IHRoZSBwYXRjaGVz
IGFnYWluIEkgbm90aWNlZCB0aGlzIGlzIGNoYW5naW5nIGdlbmVyaWMKPiBQSFkuIE1heWJlIHlv
dSBjYW4gc2VuZCBpdCBzZXBhcmF0ZWx5IHRvIFZpbm9kPyBJIGRvbid0IHNlZSBhIGhhcmQKPiBk
ZXBlbmRlbmN5PyBUaGUgY29kZSBjYW4gImNvbnZlcmdlIiBkdXJpbmcgdGhlIG1lcmdlIHdpbmRv
dyBmb3IgdGhlCj4gd2hvbGUgdGhpbmcgdG8gd29yay4KCkhpIEpha3ViLAoKVGhhbmtzIGZvciB0
aGUgc3VnZ2VzdGlvbi4gSSBsb29rZWQgYXQgdGhpcyBhZ2FpbiwgYW5kIEkgdGhpbmsgdGhlCmRl
cGVuZGVuY3kgaXMgYSBiaXQgbW9yZSBpbnZvbHZlZCB0aGFuIGl0IG1pZ2h0IHNlZW0uCgpUaGUg
UEhZIHBhdGNoICgwMy8xMSkgYWRkcyB0aGUgZHJpdmVyIHN1cHBvcnQgZm9yCiJyb2NrY2hpcCxz
Z21paS1tYWMtc2VsIiwgd2hpY2ggaXMgZG9jdW1lbnRlZCBieSB0aGUgUEhZIGJpbmRpbmcgKDAy
LzExKS4KVGhlIERUUyBwYXRjaCAoMTAvMTEpIHRoZW4gdXNlcyB0aGlzIHByb3BlcnR5LiBJZiBJ
IHNlbmQgMDMvMTEgc2VwYXJhdGVseQp0byBWaW5vZCBhbmQga2VlcCAxMC8xMSBpbiBuZXQtbmV4
dCwgZHRic19jaGVjayB3aWxsIGZsYWcgdGhlIERUUyBwcm9wZXJ0eQphcyB1bmRvY3VtZW50ZWQg
dW50aWwgdGhlIFBIWSBiaW5kaW5nIGxhbmRzIGluIG1haW5saW5lLiBUaGF0IHdvdWxkIGJyZWFr
CkRUUyB2YWxpZGF0aW9uIGZvciB0aGUgbmV0LW5leHQgc2VyaWVzLgoKQWxzbywgc3BsaXR0aW5n
IGludG8gc2VwYXJhdGUgc2VyaWVzIG1lYW5zIGVhY2ggaGFzIHRvIHF1ZXVlIGFuZCBnZXQKcmV2
aWV3ZWQgaW5kZXBlbmRlbnRseSwgd2hpY2ggSSdtIHdvcnJpZWQgbWlnaHQgbm90IGFsbCBtYWtl
IHRoZSBtZXJnZQp3aW5kb3cgaW4gdGltZS4KClNvIHVubGVzcyB5b3Ugc3Ryb25nbHkgcHJlZmVy
IHNwbGl0dGluZywgSSdkIHJhdGhlciBrZWVwIHRoZSB3aG9sZSBzZXJpZXMKdG9nZXRoZXIgaW4g
bmV0LW5leHQuIElmIHRoYXQgd29ya3MsIHdvdWxkIGl0IGJlIHBvc3NpYmxlIHRvIGNvb3JkaW5h
dGUgYW4KQWNrIGZyb20gVmlub2QgZm9yIHRoZSBQSFkgcGFydD8gT3IgaWYgeW91IHN0aWxsIHRo
aW5rIGl0IHNob3VsZCBnbwpzZXBhcmF0ZWx5LCBJIGNhbiBkbyB0aGF0IHRvbywgYnV0IEkgd2Fu
dGVkIHRvIGZsYWcgdGhlIGRlcGVuZGVuY3kgYW5kCnRpbWluZyBmaXJzdC4KClRoYW5rcywKQ29p
YQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
