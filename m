Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E466EC531FC
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jul 2026 07:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yPpuk4/mHTX0Kn2nTD1iOYEm6YaQ6o9uuQwZGpfxbTI=; b=R5yP+hZ0QsHYSw
	XerI2XvwnWAnvENqs5Sq2hroydDfkZLQvpwlKH8Ghti7L9vyLhmzSWUgvy/cxUqHOMNcu2AnNf+7b
	QmryQ6AcW6N9f6Ab29Ugj/fJPEmpgIROHHfzul0wvVplEL+8JDXf3btuB2S8zxIp5g7SsCjGox+bA
	JKZ3VmgQrWdg4xuvugK5UkRBD3IADDoU4mcVDEBc1YeLT2a45dyyDqBawQ72U0xXgCvG1IDX+hTt7
	srv5Lj/9t0n+K/XyLaFgkkXhPnE5mpNNwrXD5LKkp710VlsEp3nCQGVEiAS6uiVWjDEpfkX7S8xA5
	aBKh1USouDMWABWvfQbw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woFXm-0000000265s-41YB;
	Mon, 27 Jul 2026 07:14:34 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woFXk-0000000265A-3FJd
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Jul 2026 07:14:34 +0000
Received: by mail-qk1-x733.google.com with SMTP id af79cd13be357-9305a2121a1so205205285a.2
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Jul 2026 00:14:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785136471; cv=none;
        d=google.com; s=arc-20260327;
        b=f9tN/wZnjgTJ0n0fISkS2sFPPdBfBTRTNTptoY/IxKo7X4sWFeWkRw5ZwhRucDyhIC
         QTGpFBI730bb7yofPMWavK7k+dDsLDmEU1nv2/2kqqnEuY40rDpWz3W8vWblSgXt3IvN
         iJ91YqbMwZ6arJKnb0sRAsLXW1rJ62P81ezdXVNAIHhQLWgR3IDnD8JUgCQJwO+ckGi3
         WlkdJiSaphuBtY073Y4Hnbpmk5i6gwLkZO0SVGdjglQbWjTPMRRy5f+EV57r7ldInDiV
         2u8qCzYNkjx5z0HCAJpfR7FHYLfGKcVz3ku+66BvhCppJOOr1u22Gu8sMrN1lLT7WmhK
         QhVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=+/mmi/yKE1XX17GxFkgO2afry/vumxMd+JoqMLh+sdI=;
        fh=7sRUpcACt/4VHrX45uJUTilF69/i7Z4HBHK0moTll4c=;
        b=oE2siB9U8qM3+l36GuhVepiR1y8GLYloI+Q07wen23nZ8beznHQbCyqRgkrI8p3TqW
         eRNf8VtOfjl+qACgZYFTGW26j0Sjz5vAGN5FNykFYc9HeYzyYzypR7clTlvunD2Kny7h
         36l5QBLIc8JK1Ik/RVKOm7QPmAB6jeypUKquVjmQ0pbuPVxvHUvP2AkGjcVh8UoGLN6J
         W7FvZYZKH0Z25OBbyZypCZTNrGrHVwPNjVPWI0NfmQv2gUOp5jkqlyVm7iigYUCjaf1P
         A38KP8hO4lITILzXzhFTSPMjMhonHwNvUhQFHFA4TRmwc3Nk+YR9MV1EBwCrhgIIXqjk
         EO0Q==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785136471; x=1785741271; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=+/mmi/yKE1XX17GxFkgO2afry/vumxMd+JoqMLh+sdI=;
        b=B5Qy8sRba4VnhZ6ZRv38vPqJvqTaoxWO19LwWiB2BuAq16XH93Rpd3/DqmziEj6mDh
         AvC0uK75jG/fM0sJzIqu0hEoRl62fWXc6h0686vZbrmyJ6sjTf2dqng8HPmCQu/bxbGM
         /lp3vMGDI3lCzbTO7kXNStfPtTpGetb41m7hVNuhVAkn2Xe1tsCaL/PvL5SBs+gHsLtr
         a2i810A3FJj+N2ID/Kyi/l88G2JqalVBUIDNf2uQ2Gx6BnJM3h5OcqN5gdmxHb6z7qd6
         S6DuoOANy4uktx/2VIlMYgVyDE7P3JBvXEVhS1yfeiKzkTeAIcdHFw9sfGwPoLNhtN71
         A2dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785136471; x=1785741271;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=+/mmi/yKE1XX17GxFkgO2afry/vumxMd+JoqMLh+sdI=;
        b=onLjPU/wnT6AGlccu79DW5xCuAY7meE2O8BUXd9QXmc3UAp0dz5fy08Aa+j8w9XFAy
         uNFZoMOVOAejV5IS/fgE5p5fmHarchKcwwCQRzSFvOzzb1UR7qLPNnT8tdPB++AJZKsJ
         ZAuTCBYTXUHC69/2ZaYEVYJB0y79i/Ti8S+mD1d7Ick1Xc6MMNXDbEpnw6ls6xJ6Lgn9
         2XWan12CQIe+FfeI5sume7tVDE2eHCTz31Pclrq6yeKBFgaBYZbx/3xE+uMBsULofCmm
         BbcShjGfh+YqN94axj7eIPfXiTYlZGvmjDN+KpnH7VwsWET7j4Yt1vFYvjgES3C0HGI+
         aoHQ==
X-Forwarded-Encrypted: i=1; AHgh+RqVOYyNHs9qkHueRYnQmhFW+XttNrOOr8BsBrkiqlx0wqvYV5ztuq9o/jwDwKm8sD48GZmiQvurXGSbS8ER0Q==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw96KIoKKRNAFu+hooVRPqSn0ersWZUrkAbw4MajjqMXE6QghuD
	qHJa5+rT5vAbMr1T2tiXA6cjKxlcbiDqMVa5mT3uWvYq869Ybdh+DP9M9Mo0vk64xyUEGbDs98y
	SFzqaqLA/iCDA5Dj0wQFbhhE7gHZ2EnI=
X-Gm-Gg: AR+sD10SAFZTRsECed85CXnHEYpZbrL6iV4vXPixS9tNEzDAOjdGaTZx1lzEbXkDho3
	YeXgIAlVZaXAS9R21caktMU+33IuFHBzysZHaBM9137MyInKtv+/L1+GK4uJk2MqZ0PUpsu7ReW
	rqH9CYY147NG85b4p4fik8qFoIlymaIU+gKULM2TRy0GZ7xqdec+njPLSw+jzEpDXhI8+WQX37p
	bU5/4Ms9MDOx/s7HguV140kgCvYJlMfYEgwBvj86m1R0p31sKsVCLUHm2MGAKtVmz5HpdSCuYdp
	3/HUGeODZVMPk8fIwA==
X-Received: by 2002:a05:620a:271c:b0:92e:c118:18b0 with SMTP id
 af79cd13be357-932df725cdfmr696946585a.79.1785136470873; Mon, 27 Jul 2026
 00:14:30 -0700 (PDT)
MIME-Version: 1.0
References: <20260727021048.3375444-1-attinagaoxu@gmail.com>
In-Reply-To: <20260727021048.3375444-1-attinagaoxu@gmail.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 27 Jul 2026 11:14:18 +0400
X-Gm-Features: AUfX_mx7QqYbJPKColdFHefAnfy7L2wNcFUU2ZgtkbVju2YipXpKoC8heF-3qZs
Message-ID: <CABjd4YyohxfbVufd1pwJGsm8a8f3Cm6rJiz=WLz=jBjAQRLj4A@mail.gmail.com>
Subject: Re: [PATCH net-next 0/3] net: stmmac: dwmac-rk: add RK3576 GMAC 25M
 refout support
To: Gavin Gao <attinagaoxu@gmail.com>
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com, 
	kuba@kernel.org, pabeni@redhat.com, heiko@sntech.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, mcoquelin.stm32@gmail.com, 
	alexandre.torgue@foss.st.com, richardcochran@gmail.com, 
	nicolas.frattaroli@collabora.com, sebastian.reichel@collabora.com, 
	sashal@kernel.org, chaoyi.chen@rock-chips.com, amadeus@jmu.edu.cn, 
	rmk+kernel@armlinux.org.uk, horms@kernel.org, alok.a.tiwari@oracle.com, 
	david.wu@rock-chips.com, netdev@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_001432_823358_A162E3C9 
X-CRM114-Status: GOOD (  18.92  )
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

SGkgR2F2aW4sCgpPbiBNb24sIEp1bCAyNywgMjAyNiBhdCA2OjEw4oCvQU0gR2F2aW4gR2FvIDxh
dHRpbmFnYW94dUBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gSGksCj4KPiBTb21lIFJvY2tjaGlwIEdN
QUMgaW5zdGFuY2VzIGNhbiBwcm92aWRlIGEgMjUgTUh6IHJlZmVyZW5jZSBjbG9jayBvdXRwdXQK
PiBmb3IgYW4gZXh0ZXJuYWwgUkdNSUkgUEhZLiBCb2FyZHMgYWxyZWFkeSBkZXNjcmliZSB0aGUg
TUFDIGNsb2NrIGRpcmVjdGlvbgo+IHdpdGggY2xvY2tfaW5fb3V0ID0gIm91dHB1dCIsIGJ1dCB0
aGUgZHdtYWMtcmsgZHJpdmVyIGRvZXMgbm90IGN1cnJlbnRseQo+IHJlcXVlc3Qgb3IgZW5hYmxl
IHRoZSBjb3JyZXNwb25kaW5nIDI1IE1IeiByZWZlcmVuY2Ugb3V0cHV0IGNsb2NrLgo+Cj4gT24g
UkszNTc2LCB0aGlzIG1lYW5zIHRoZSBSRUZDTEtPMjVNX0dNQUN4X09VVCBjbG9jayBtYXkgYmUg
ZGlzYWJsZWQgYnkKPiB0aGUgY29tbW9uIGNsb2NrIGZyYW1ld29yayBhcyB1bnVzZWQsIGV2ZW4g
dGhvdWdoIHRoZSBib2FyZCBleHBlY3RzIHRoZQo+IEdNQUMgYmxvY2sgdG8gcHJvdmlkZSB0aGUg
UEhZIHJlZmVyZW5jZSBjbG9jay4KPgo+IFRoaXMgc2VyaWVzIGFkZHMgYW4gb3B0aW9uYWwgImNs
a19tYWNfMjVtX3JlZm91dCIgY2xvY2sgbmFtZSB0byB0aGUKPiBSb2NrY2hpcCBEV01BQyBiaW5k
aW5nLCB3aXJlcyBpdCB1cCBmb3IgUkszNTc2IEdNQUMwL0dNQUMxLCBhbmQgZW5hYmxlcwo+IGl0
IGZyb20gdGhlIGR3bWFjLXJrIGRyaXZlciB3aGVuIHRoZSBNQUMgaXMgY29uZmlndXJlZCBmb3Ig
UkdNSUkgb3V0cHV0Cj4gY2xvY2sgbW9kZS4KPgo+IFRoZSBjbG9jayByZW1haW5zIG9wdGlvbmFs
LCBzbyBleGlzdGluZyBkZXZpY2UgdHJlZXMgYW5kIFNvQ3MgYXJlIG5vdAo+IGFmZmVjdGVkLgo+
Cj4gVGVzdGVkIG9uIGEgUGljb0NPTSBSSzM1NzYgQUNQIGJvYXJkIHdpdGggYSBNb3RvcmNvbW0g
WVQ4NTIxIFBIWS4KPiBUaGUgR01BQyAyNSBNSHogcmVmZXJlbmNlIGNsb2NrIG91dHB1dCByZW1h
aW5zIGFjdGl2ZSBhbmQgRXRoZXJuZXQgd29ya3MuCj4KPiBHYXZpbiBHYW8gKDMpOgo+ICAgZHQt
YmluZGluZ3M6IG5ldDogcm9ja2NoaXAtZHdtYWM6IEFkZCAyNU0gcmVmb3V0IGNsb2NrCj4gICBh
cm02NDogZHRzOiByb2NrY2hpcDogQWRkIFJLMzU3NiBHTUFDIDI1TSByZWZvdXQgY2xvY2tzCj4g
ICBuZXQ6IHN0bW1hYzogZHdtYWMtcms6IEVuYWJsZSBSR01JSSAyNU0gcmVmb3V0IGNsb2NrCj4K
PiAgLi4uL2JpbmRpbmdzL25ldC9yb2NrY2hpcC1kd21hYy55YW1sICAgICAgICAgIHwgIDEgKwo+
ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU3Ni5kdHNpICAgICAgfCAgOCArKy0t
LQo+ICAuLi4vbmV0L2V0aGVybmV0L3N0bWljcm8vc3RtbWFjL2R3bWFjLXJrLmMgICAgfCAzMyAr
KysrKysrKysrKysrKysrKystCj4gIDMgZmlsZXMgY2hhbmdlZCwgMzcgaW5zZXJ0aW9ucygrKSwg
NSBkZWxldGlvbnMoLSkKCkNhbiB5b3UgcGxlYXNlIHRyeSBzb21ldGhpbmcgbGlrZSB0aGlzIFsx
XSBpbnN0ZWFkPwoKWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIw
MjYwNzE5MDM0NTU1LjM2MjMwMDMtMS1nYWhpbmdAZ2FoaW5nd29vLmNvbS8KClRoZSBHTUFDIG9u
IFJLMzU3NiBuZWl0aGVyIHByb2R1Y2VzIG5vciBjb25zdW1lcyB0aGUgY2xvY2suIENSVSBpcyB0
aGUKcHJvZHVjZXIsIGFuZCBQSFkgaXMgdGhlIGNvbnN1bWVyLiBTbyB0aGUgR01BQyBkcml2ZXIg
c2hvdWxkbid0IGJlIHRoZQpvbmUgdG8gZW5hYmxlIGl0LCBub3Igc2hvdWxkIHRoZSBkd21hYyBi
aW5kaW5nIGhhdmUgYW55dGhpbmcgdG8gZG8Kd2l0aCBpdC4KCkhhdmUgYSBsb29rIGF0IGhvdyBv
dGhlciBib2FyZHMgYWxyZWFkeSB1cHN0cmVhbSBoYW5kbGUgdGhpcy4gRm9yCmV4YW1wbGUsIHRo
ZSBSSzM1NzYgRVZCMSB1c2VzIGEgc2ltaWxhciBhcnJhbmdlbWVudCBidXQgd2l0aCBhCmRpZmZl
cmVudCBQSFkuCgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
