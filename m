Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EC5B606A31B
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2026 10:09:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=i7tJLkPy;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=tomeuvizoso-net.20260707.gappssmtp.com header.i=@tomeuvizoso-net.20260707.gappssmtp.com header.a=rsa-sha256 header.s=20260707 header.b=tXU4PI05
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=XNb7sIriSded7pXXIBZufIZOjbIlfHbbvzNZQnBgxx4=; b=i7tJLkPy0Duig0tDMOCUXBcU6J
	XGFenBst+jgfojSfe+tQ/nPeao+jGWEYNtrQbYxjbDsUjUWZLO7wmHT/WH400YpgQqeVm75CYZalI
	K5OElftMuithbpjIvaFv1/0aE4n5bSGI3THwj5+RAySDm6Yq7wog0ud2rAH8nexw4kWQvrKxgo9lb
	MECSdU8dWIDI5aV9o9w6yjwbTaZzrzAxIv+9rD/uTiHZ3pixKJyqVG7HxdbFGzRPXdd0aIqTvz2MF
	PZm2xTS5sWvtXzJDyNKzOBE08Mz1us1ZKt8tb6jYCaPmdogDHlJjJBNZRkFqL5M7uiD8PGrW4Mfg8
	3+YTNI4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOXw6-00000004xeO-1sTw;
	Wed, 04 Nov 2026 10:09:42 +0000
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOXw2-00000004xcw-3xkB
	for linux-rockchip@lists.infradead.org;
	Wed, 04 Nov 2026 10:09:41 +0000
Received: by mail-qk1-x734.google.com with SMTP id af79cd13be357-945ae2daa66so61122685a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 04 Nov 2026 02:09:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1793786977; cv=none;
        d=google.com; s=arc-20260327;
        b=XmYiBBSQgFsEY+AD772lgzMhtmCiD8eRPnx83+dzqqpo6UrhiulCO3GYou+VxBO/gq
         X86WzfejT571Z+iJOurIioGDjzW9FukFrqtmqa+I8puWhI/rkFnDhqLd4wTVL3QlbOQH
         dVkeGlw0bqJZeXRhv/20aTv0jDyC0ea3M6FictkpxtE1mqE/0vF6if5IIy9CPrv7Hkx0
         sOgpjD9bsOaiLw3h9PvOmpzfT4P/P1u5nIkc15KWcKehPKHePYudG1+/GO7ggdg3gP+4
         557JbgrYFLKCuyZ80G6CTDRFOun72atbH8vpuXsWQ1xOPwpzJ2q/cbhvfZyuGD61eA0p
         UIIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=GRB1e0g/RzNosgVh22Q4nbJS5JXGJ4/s7oJ6tqlGbYg=;
        fh=RQYu3myT6QmyUpgBvo2MkG8eRVdyG5dljNDPbysDIV0=;
        b=ZDkEGEhmuWgl84W3ijWtY/3rWtGXR6OAKUiTI/StpJhQC1hq9T91OcbMhTu0P2ol2j
         O3iiTHwEcgw8jfWrAzNUfhivzYdnK3nw3dIgNHXIpLeWLlMCnSbXUDTtUIIaCqezMadW
         3Mk5HmlfDlQ30KNosOXLbjo2p7gwyaQr1gaWX5odNcmxyOkRkJn25JhCF/GZYQkvgr0n
         PwuNdvvJbFpJbdm966W+iOoKOD1IPCEW81AdX8GwW7FDteS8JofN0AtsiyQwI+6lJ54w
         zrUffaeExercfZn6bLF+1tpZPsl/aGIZzjcq2jIqHuJcDi3DYfQ6O7/mJgRFLVYsJ3p2
         W8yQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20260707.gappssmtp.com; s=20260707; t=1793786977; x=1794391777; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=GRB1e0g/RzNosgVh22Q4nbJS5JXGJ4/s7oJ6tqlGbYg=;
        b=tXU4PI05OpFzKpC0LpEwGjcAMT4RjaoWtEBYlQZPaus6D/XxuthvOu82orieiTjHU1
         w5QDSoz0kYhie3zR44egja45wtLGAtWQGTAe2GlX1gTOpzvNeosb0oR1woNTUFlxnpqz
         rf0rWH8dQa4heWi6ZcFQfiX5Cw8WXqXTWvGAxuzaU5ctzI1kzGaAA6Q3Hx74Qm7ymxHP
         nIiCS0dRtdzZmuyuNvLA1YNZNAgh5W6gJb098sYk2Gv2WpeD4sDdhfnSAYjD2VFj+Ycc
         txi+gFev6SzB6ecfX9eGthedqExlsGRjYHIH4ar52WopGrBt4I9vSFUNXI/e2oY9sk25
         viFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793786977; x=1794391777;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GRB1e0g/RzNosgVh22Q4nbJS5JXGJ4/s7oJ6tqlGbYg=;
        b=LchUB3Tx5Ovyqe8oCz0XA1lVPS7Wn1YPqCDnQA+f/ySfSmxrvBYAw30pWPzsg2DHG0
         lD80z3rlPSbNReVB2k0RLlK7SQXiOC0W+HMvnbmmHZZYVxZYgUNX65Vix1kvya23qwaE
         IwTFQxlFcd0ZYefgaLxEh09rj0lkpEDNmgMy5djIN4mDPjPeaqTKCsry3JF8dItqzBie
         B/TNFaAbNNGvhhggB+t6yiJ1De9AaEdb1l95eP3Jun8GJelcWz5XtXPtoJgmZHPyEYaY
         gpiwscytqppF/CuOt1nxaWiZK7V1D9C+AuHIQkoj5CWZkytiDVgu0VKqibjCKQnusvxf
         Oe2w==
X-Forwarded-Encrypted: i=1; AKwUvBxYGKn9qe9//GX/61b1TRH9Ym8K6mTfjMbg2RZ0tRSVt1UeA5XNPBY4tMygaP1evazy1dImDnSyLv+oWI3xNA==@lists.infradead.org
X-Gm-Message-State: APuU4Z9nof6sGn0BCZ5Sx02MxoIyEt73hBgHISmfdx6JAji18HSJbg7p
	gzH4A9z8CSx1qpFeabKmOKc1ApCrQ0BMVrTGvGzo9i4k7fvl2eesGJsVNmCNvH3BZM44BZVN/TE
	5NZRcmxACq6boNv3Bgrx2LJtgmvPEjbNLt97nU4gNyQ==
X-Gm-Gg: AYBFou2S6k+kZauYG26pcniHCZ5ccJ06/OJJwTppTSf8KhkKAUBDd4XMRVzFiKRkOxL
	s4M9mBRMQEZsh2SvXk8SjSm+SbsG/+izvSTErc5d+puuzs+Pox+2jSMPlzov2f20Jgo1oI7bUbN
	zjkDDMihCGRb1rPToVHeFJ9XTo9jUIEoFcFiPTC1hzo8qP8m0xSsHY4+vxf+b6oTCgVtgueH1D/
	sGH/GeiodgqhxYNjeNrRn3wLuhDS44dZymhXxXjqaa4avV5Zj+XZ1nTDMlkX7ZTnVFmiujHY4pr
	0l5Lh59tMFdpVlS8HNsm8tyW9GtRwHCZysv4pfHY5RYpSvKjOt9n/SUnt40ZhnZWpkW/VrV4snA
	O8QG0TD1+T/16Y1HCLw4TsLbUcywfADAQPiDeVZ3fMzcZxrkxlbOD+Z+O2zPf25YCdM9SIeOm2B
	RWrj+4p9t+F/BiY1bmwJk=
X-Received: by 2002:a05:620a:460b:b0:937:6de8:b40 with SMTP id
 af79cd13be357-944217194b4mr2663985585a.15.1793786977174; Wed, 04 Nov 2026
 02:09:37 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261101082307.151957-1-gahing@gahingwoo.com>
In-Reply-To: <20261101082307.151957-1-gahing@gahingwoo.com>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 4 Nov 2026 11:09:25 +0100
X-Gm-Features: AclHuK8sSyrPUh77ae7umfCvxuLdQ-s4Z2b2nFvZD8O11RHz5Wmhve3hcOyzmnA
Message-ID: <CAPsqS2SOj-+VQxsFvMQ1Hqcep55J0yT++76QZ8or4a9kmF7Bdw@mail.gmail.com>
Subject: Re: [PATCH v15 00/15] accel/rocket: RK3576 NPU (RKNN) enablement
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	joro@8bytes.org, will@kernel.org, robin.murphy@arm.com, ulfh@kernel.org, 
	p.zabel@pengutronix.de, ogabbay@kernel.org, zhangqing@rock-chips.com, 
	royalnet026@gmail.com, abel.vesa@oss.qualcomm.com, 
	sebastian.reichel@collabora.com, sidong.yang@furiosa.ai, 
	u.kleine-koenig@baylibre.com, chaoyi.chen@rock-chips.com, 
	diederik@cknow-tech.com, alchark@flipper.net, leonard@lausen.nl, 
	jeff.hugo@oss.qualcomm.com, rfoss@kernel.org, dri-devel@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, iommu@lists.linux.dev, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_020939_255016_8AB0D9B9 
X-CRM114-Status: GOOD (  21.90  )
X-Spam-Score: -1.9 (-)
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gU3VuLCBOb3YgMSwgMjAyNiBhdCA5OjMx4oCvQU0gSmlheGluZyBIdSA8Z2FoaW5nQGdhaGlu
Z3dvby5jb20+IHdyb3RlOgo+Cj4gVGhpcyBhZGRzIHRoZSBSSzM1NzYgTlBVIHRvIGFjY2VsL3Jv
Y2tldC4KPgo+IHYxNSBpcyB2MTQgcmViYXNlZCBvbnRvIG5leHQtMjAyNjEwMzAuIHYxNCdzIDEy
LzE1IG5vIGxvbmdlciBhcHBsaWVkCj4gdGhlcmUsIGJlY2F1c2UgU2lkb25nIFlhbmcncyByZWdj
bWQgdmFsaWRhdGlvbiBhZGRlZCB0d28gZGVmaW5lcyBpbiB0aGUKPiBzcG90IHdoZXJlIDEyLzE1
IGFkZHMgaXRzIG93bi4gTm90aGluZyBlbHNlIGNoYW5nZWQsIGFuZCB0aGUgdGFncyBjYXJyeQo+
IG92ZXIuCj4KPiBMZW9uYXJkIExhdXNlbiBoYXMgdGhlIHNlcmllcyBydW5uaW5nIG9uIGEgTmFu
b1BpIE01IGFuZCBwb3N0ZWQgYSBib2FyZAo+IHBhdGNoIG9uIHRvcCBvZiBpdDoKPiBodHRwczov
L2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjEwMTkwOTAzNDguMzc4MTgzLTItbGVvbmFyZEBsYXVz
ZW4ubmwvCj4KPiBPbiBTYXNoaWtvJ3MgdHdvIHBvaW50cyBhYm91dCB2MTQgOS8xNSwgSSBtZWFz
dXJlZCBhIENNNS1JTy4gVS1Cb290Cj4gaGFuZHMgb3ZlciB3aXRoIHRoZSBOUFUgZG9tYWlucyBv
biwgYW5kIHRoZSBwb3dlciBkb21haW4gZHJpdmVyIHN0aWxsCj4gcHJvYmVzLiBUaGUgTlBVIFFv
UyBpcyBzYXZlZCBiZWZvcmUgaXRzIGZpcnN0IHBvd2VyLW9uLCBzbyBpdCBpcyBub3QKPiB6ZXJv
ZWQuIFRoZSBkb21haW4gd2hvc2UgUW9TIGRvZXMgZ2V0IHplcm9lZCBpcyB0aGUgR1BVLCBvbiBt
YWlubGluZQo+IHdpdGhvdXQgdGhpcyBzZXJpZXMsIGFuZCB0aGF0IGZpeCB3ZW50IG91dCBvbiBp
dHMgb3duOgo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2MTEwMTA1NTYzMy4xMDEz
MDktMS1nYWhpbmdAZ2FoaW5nd29vLmNvbS8KPgo+IDEvMTUgaXMgdGhlIHBhdGNoIHRoYXQgY2Fy
cmllcyBJZ29yIFBhdW5vdmljJ3MgbmFtZS4gSXQgaXMgYWxzbyBwYXJ0Cj4gb2YgaGlzIERWRlMg
c2VyaWVzLCBzbyB3aGljaGV2ZXIgbGFuZHMgZmlyc3QsIHRoZSBvdGhlciBkcm9wcyBpdC4KPgo+
IFVsZiBvZmZlcmVkIHRvIHRha2UgNywgOSBhbmQgMTAuIDEgdG8gNSwgMTEgYW5kIDEyIGdvIHRo
cm91Z2ggYWNjZWwsCj4gYW5kIDEzIHRvIDE1IHRocm91Z2ggcm9ja2NoaXAuIDE1LzE1IG5lZWRz
IDksIDEwIGFuZCAxMiB0byAxNCBmaXJzdC4KPiBXaXRob3V0IDksIDEwIGFuZCAxMywgdGhlIFJP
Q0sgNEQgdGFrZXMgYW4gU0Vycm9yIGF0IGJvb3Qgd2hlbiB0aGUgTlBVCj4gZG9tYWluIHBvd2Vy
cyBvbi4KPgo+IExpbmsgdG8gdjE0OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjA5
MjQxMDIxMzUuOTIyMTctMS1nYWhpbmdAZ2FoaW5nd29vLmNvbS8KCkhpLAoKQ291bGQgeW91IHBs
ZWFzZSBhZGQgYSBHRVRfUEFSQU0gSU9DVEwgdG8gdGhpcyBzZXJpZXMgZm9yIHVzZXJzcGFjZSB0
bwpxdWVyeSB0aGUgaGFyZHdhcmUgdmVyc2lvbj8gSSB0aGluayBJIHdvdWxkIHJldHVybiBhbiBl
bnVtIHRoYXQKbWF0Y2hlcyB0aGUgTlBVIERUIGNvbXBhdGlibGVzIG9uZSB0byBvbmUuIFRoZW4g
dXNlcnNwYWNlIGNhbiBoYXZlIGEKaGFyZHdhcmUgZGF0YWJhc2UgaW5kZXhlZCBieSB0aGF0IHZh
bHVlIHdpdGggc3JhbSwgcmVnaXN0ZXIgbWFwLCBldGMuCgpSZWdhcmRzLAoKVG9tZXUKCj4gSWdv
ciBQYXVub3ZpYyAoMSk6Cj4gICBhY2NlbC9yb2NrZXQ6IHJlcXVlc3QgdGhlIGNvcmUgY2xvY2tz
IGJ5IG5hbWUKPgo+IEppYXhpbmcgSHUgKDE0KToKPiAgIGFjY2VsL3JvY2tldDogdGFrZSB0aGUg
Y29tcGxldGlvbiByZWdpc3RlciB3cml0ZXMgdW5kZXIgam9iX2xvY2sKPiAgIGFjY2VsL3JvY2tl
dDogd2FpdCBmb3IgYSBydW5uaW5nIElSUSBoYW5kbGVyIGJlZm9yZSByZXNldHRpbmcgYSBjb3Jl
Cj4gICBhY2NlbC9yb2NrZXQ6IGxldCB0aGUgY29yZSBzdXNwZW5kIGFmdGVyIGEgcmVzZXQKPiAg
IGFjY2VsL3JvY2tldDogZmFjdG9yIHRoZSBjb21wbGV0aW9uIHRhaWwgb3V0IG9mIHRoZSBJUlEg
aGFuZGxlcgo+ICAgZHQtYmluZGluZ3M6IG5wdTogcm9ja2NoaXA6IGFkZCByb2NrY2hpcCxyazM1
NzYtcmtubi1jb3JlCj4gICBkdC1iaW5kaW5nczogcG93ZXI6IHJvY2tjaGlwOiBhbGxvdyByZXNl
dHMgaW4gYSBwb3dlciBkb21haW4gbm9kZQo+ICAgZHQtYmluZGluZ3M6IGlvbW11OiByb2NrY2hp
cDogZGVzY3JpYmUgdGhlIFJLMzU3NiBOUFUgTU1VCj4gICBwbWRvbWFpbjogcm9ja2NoaXA6IGFk
ZCBvcHRpb25hbCBwZXItZG9tYWluIHBvd2VyLW9uIHNldHRsZSBkZWxheQo+ICAgcG1kb21haW46
IHJvY2tjaGlwOiBjeWNsZSBhbiBvcHRpb25hbCBwb3dlci1kb21haW4gcmVzZXQgb24gcG93ZXIt
b24KPiAgIGFjY2VsL3JvY2tldDogc2VsZWN0IHRoZSBwZXItY29yZSBjbG9jayBhbmQgcmVzZXQg
Y291bnRzIGZyb20gbWF0Y2gKPiAgICAgZGF0YQo+ICAgYWNjZWwvcm9ja2V0OiBhZGQgUkszNTc2
IE5QVSAoUktOTikgc3VwcG9ydAo+ICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IGFkZCBOUFUgY29y
ZSBkb21haW4gY2xvY2tzIGFuZCByZXNldHMgdG8gcmszNTc2Cj4gICBhcm02NDogZHRzOiByb2Nr
Y2hpcDogYWRkIE5QVSAoUktOTikgbm9kZXMgdG8gcmszNTc2Cj4gICBhcm02NDogZHRzOiByb2Nr
Y2hpcDogZW5hYmxlIHRoZSBOUFUgb24gcmszNTc2LXJvY2stNGQKPgo+ICAuLi4vYmluZGluZ3Mv
aW9tbXUvcm9ja2NoaXAsaW9tbXUueWFtbCAgICAgICAgfCAgMjggKysrKwo+ICAuLi4vbnB1L3Jv
Y2tjaGlwLHJrMzU4OC1ya25uLWNvcmUueWFtbCAgICAgICAgfCAgNDcgKysrKystCj4gIC4uLi9w
b3dlci9yb2NrY2hpcCxwb3dlci1jb250cm9sbGVyLnlhbWwgICAgICB8ICAgOCArCj4gIC4uLi9i
b290L2R0cy9yb2NrY2hpcC9yazM1NzYtcm9jay00ZC5kdHMgICAgICB8ICAyMiArKysKPiAgYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NzYuZHRzaSAgICAgIHwgIDg2ICsrKysrKysr
Ky0KPiAgZHJpdmVycy9hY2NlbC9yb2NrZXQvcm9ja2V0X2NvcmUuYyAgICAgICAgICAgIHwgIDMy
ICsrKy0KPiAgZHJpdmVycy9hY2NlbC9yb2NrZXQvcm9ja2V0X2NvcmUuaCAgICAgICAgICAgIHwg
IDExICstCj4gIGRyaXZlcnMvYWNjZWwvcm9ja2V0L3JvY2tldF9kZXZpY2UuYyAgICAgICAgICB8
ICAgNyArLQo+ICBkcml2ZXJzL2FjY2VsL3JvY2tldC9yb2NrZXRfZHJ2LmMgICAgICAgICAgICAg
fCAgNDIgKysrKy0KPiAgZHJpdmVycy9hY2NlbC9yb2NrZXQvcm9ja2V0X2Rydi5oICAgICAgICAg
ICAgIHwgICAyICsKPiAgZHJpdmVycy9hY2NlbC9yb2NrZXQvcm9ja2V0X2pvYi5jICAgICAgICAg
ICAgIHwgMTU3ICsrKysrKysrKysrKysrKy0tLQo+ICBkcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlw
L3BtLWRvbWFpbnMuYyAgICAgICAgfCAgODkgKysrKysrKy0tLQo+ICAxMiBmaWxlcyBjaGFuZ2Vk
LCA0NjcgaW5zZXJ0aW9ucygrKSwgNjQgZGVsZXRpb25zKC0pCj4KPgo+IGJhc2UtY29tbWl0OiA3
NjQ5YmE3M2Y5ZTdlMWUwNGQwYjQ2MjEzZTM5Yzc5YWUwOWRkNTVjCj4gLS0KPiAyLjQzLjAKPgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
