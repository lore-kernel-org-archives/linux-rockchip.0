Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC474C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Dec 2021 03:14:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ddbd1l2gxXN5ZcLwGor52ghAKBeby5TDonDXzq5bLzM=; b=LP/HaZc1cVKsgG
	uClFApaupkqqVm3Qxzn2T/2/QrWVdaNOl4+zfQ33fUiugPD9IvatnJSL5Xtfc6AdHMwqtL5i6Q9+3
	jiPpxOLm4D7b0Gg4k14kP6eavryQqJIrVcDqXgsAmwbiYJSYcLt/+hJmOHKqli0qeX9tusWQBWdG1
	OZQOaTvAdYM766dgRcy5TZOUTcDF6LFOGPNs9nZOnWPH9fWkYufTwfJDNMpfEEupKYv8n4UQWdVvS
	OLqGzcIcEPXeX+BzVULyyXb29jlGlDeP7RpA88ZHNbNQpvfXYIxT39c72GJzeHfOYjn+qrIXbr6lP
	iAiuXarGGM0ipcamCTVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mz97b-000KUv-5G; Mon, 20 Dec 2021 03:13:55 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mz97X-000KTm-UR
 for linux-rockchip@lists.infradead.org; Mon, 20 Dec 2021 03:13:53 +0000
Received: by mail-lj1-x232.google.com with SMTP id i63so13644371lji.3
 for <linux-rockchip@lists.infradead.org>; Sun, 19 Dec 2021 19:13:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=mF5wYxPSqdxf3ndDaiNpjYh7EExZO+92B2rlWd4Hn/w=;
 b=H/hN9JtCLykDVNHSsTlSCCQbC1jeDpVXuzoQfGiqcOKtC70LixZK3hc4x9DnBgZyYy
 1lLhpZ4uboMNb8eVCBGXv+DAuWFNdo9AJq8iZMJAPl7xxsDE0dNGDqyySE0w4YJ1yLgU
 QaK+fHHXI5tJEgGPBjGRAbFYXb32mQxTV2jCQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=mF5wYxPSqdxf3ndDaiNpjYh7EExZO+92B2rlWd4Hn/w=;
 b=eCava4ehCIvrXwqvji70jfgHGNTNBdyELvKqgsTgElVenFwjUtTGhPHSu4pxIMggpJ
 8XRxTe65RRpFY3i7NQnSEA8MemlQJPDk5q0AXFaKUkfqO6fuE1/aE4irAsqLswhTY0zk
 bkAvTeDNyGlUcbbmrSdJskZReIBqEJPEr5Jc6W5NsSfIqJCaD9szugSF2fjLcdaVc+Zu
 Qci26y/zB0GWefipvB0mLshEX+9HRWOFpUApt3P/LH5nf07SrnuFsUcZ9QNADg/0g3hA
 ulr/kjGtMdruVRPjXazb8NZdHgYjHx4N+n7AbaQPO5zxq6QU7y1agZucjdVZH1QYGYDu
 qALA==
X-Gm-Message-State: AOAM532ni4D1Jpjd12/Ney6qO9A+4iGJcVXBbnMFtB7eVEZ3/HfsLCxe
 SsclAfXK4fYWdEJ2ca1Y5sVegIPqfqm2+DjEURBD5w==
X-Google-Smtp-Source: ABdhPJxunl6swmvnYR15PB/3dHuBiP42NrBlmSpRdVW8fHz4URsaEzdHg45SD9YGC11Q7qsqGbLcNVjoVI+7j1Re0fg=
X-Received: by 2002:a2e:a54c:: with SMTP id e12mr13210214ljn.457.1639970029235; 
 Sun, 19 Dec 2021 19:13:49 -0800 (PST)
MIME-Version: 1.0
References: <20211106183802.893285-1-aford173@gmail.com>
 <718f7f6d6cd564d031c1963f1590c62d549ae725.camel@ndufresne.ca>
 <CAHCN7xKM9RUE7z-+ug1on+D=nDoEm589R4m03ofys92Aq75ZVQ@mail.gmail.com>
 <8db00a4b6faa99c940d9bc86e17161eb0db5efe3.camel@ndufresne.ca>
 <CAJ+vNU28UJffFv9jQ2KryJMudqYxvCaoVOVcU5dPqRA209iN6A@mail.gmail.com>
 <d91532c2c0772f9aa708ead36b2a97203727a7ea.camel@ndufresne.ca>
 <CAJ+vNU3H-V+bPoZ3qKead45h=W7AhQK6Lhjrx5ssdF4c_qfe=A@mail.gmail.com>
 <CAHCN7x+0LwwU_rEST+TZxGquswGKL19gnTy9WLofsXtGAtWqdw@mail.gmail.com>
 <7f94eaacfddb8c5434c17f1e069ea87a17657ce9.camel@ndufresne.ca>
 <CAHCN7xKRzxMBmPbDobWTuvNNSpTXk5XENvfBnfkhRY3eZKhn6w@mail.gmail.com>
 <CAHCN7xJFLNi_g+HX8PCy1Rkgf0jnWpO5QGYVz8nH19xrJkwHrA@mail.gmail.com>
 <CAJ+vNU3zFd=6k_Emc5aafxKkGwCPp4crgOFezQ-E_MbWsn1_EA@mail.gmail.com>
 <fed6c2fd7cf4971062c417ce41ed1e3812b900e0.camel@ndufresne.ca>
 <CAHCN7xK+wROHaqDcsY-3WYFQ82qX17L-LHNL3siSWnWvwFShzQ@mail.gmail.com>
 <CAAEAJfC1xXvemaFP+vTFVJ3S-SpYtrxyZgDamSOgLC1F3ua5xw@mail.gmail.com>
 <CAHCN7x+UMMP6RXsNm0=OC=UTQzh=RKqQo6B7FD5e4eoJAEfmpg@mail.gmail.com>
 <CAJ+vNU1epi9SwPMHkuDmKcb68RLemYF=bsp7AVnzz06zKc2efw@mail.gmail.com>
 <CAAEAJfCpjk5nWWkJYjjDT-YEpJi4pTZqZbzp_if9OGC0HKspzw@mail.gmail.com>
 <CAJ+vNU2we5mGXgYsR6CfimvFXZsc0zktR3fDa-h6RRa02jTT0g@mail.gmail.com>
 <CAHCN7xJrM9uZUnmx65uTxWEo6HAkjozd3kD3UoEv-pYd5DV4QA@mail.gmail.com>
 <CAAEAJfBXU-AiKKhkhXzgUSR4p1yefysNuHFycBz3F-GzNewS6w@mail.gmail.com>
 <CAHCN7xL4y67V6AW5MV=8iudvvGVBWs2LoUhu_2CUJf6bSycgFA@mail.gmail.com>
 <8438070708d16c34c0f79aba19e67fa343adb169.camel@ndufresne.ca>
 <CAJ+vNU1ZxAAasKT8j1sfcFz1pk8fyYjwOW6wqxYq_ur8+2MX_Q@mail.gmail.com>
 <41f0e00cf5e57668b643b096e6bb69c67635c540.camel@ndufresne.ca>
In-Reply-To: <41f0e00cf5e57668b643b096e6bb69c67635c540.camel@ndufresne.ca>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 20 Dec 2021 11:13:37 +0800
Message-ID: <CAGXv+5H1qdvRPK0Qf_aNFpaipateW9ZD4R+AHYT0d4Y8RnWKBw@mail.gmail.com>
Subject: Re: [RFC 0/5] arm64: imx8mm: Enable Hantro VPUs
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Cc: Tim Harvey <tharvey@gateworks.com>, Adam Ford <aford173@gmail.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 linux-media <linux-media@vger.kernel.org>, 
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 Marek Vasut <marek.vasut@gmail.com>, 
 Jagan Teki <jagan@amarulasolutions.com>,
 Adam Ford-BE <aford@beaconembedded.com>, 
 cstevens@beaconembedded.com, Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heiko Stuebner <heiko@sntech.de>, 
 Lucas Stach <l.stach@pengutronix.de>, Joakim Zhang <qiangqing.zhang@nxp.com>, 
 Alice Guo <alice.guo@nxp.com>, Peng Fan <peng.fan@nxp.com>, 
 "open list:HANTRO VPU CODEC DRIVER" <linux-rockchip@lists.infradead.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, 
 open list <linux-kernel@vger.kernel.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211219_191352_025062_89AE9FDC 
X-CRM114-Status: GOOD (  15.31  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

T24gU2F0LCBEZWMgMTgsIDIwMjEgYXQgMTo1MiBBTSBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFz
QG5kdWZyZXNuZS5jYT4gd3JvdGU6Cj4gTGUgdmVuZHJlZGkgMTcgZMOpY2VtYnJlIDIwMjEgw6Ag
MDk6MjYgLTA4MDAsIFRpbSBIYXJ2ZXkgYSDDqWNyaXQgOgo+ID4gSSdtIG5vdCBjbGVhciBpZiBh
bnlvbmUgaXMgd29ya2luZyBvbiBJTVg4TU0gVlBVIEgxIHN1cHBvcnQuIFlvdSBoYWQKPiA+IG1l
bnRpb25lZCB0aGF0IHNvbWUgc3VwcG9ydCBbMV0gYW5kIFsyXSBjYW4gYmUgZGVyaXZlZCBmcm9t
IHRoZSBSSzMyODgKPiA+IHVzaW5nIHRoZSBHb29nbGUgQ2hyb21lT1MgbWV0aG9kIChhIHY0bDIg
cGx1Z2luIHRoYXQgc2ltdWxhdGVzIGluCj4gPiB1c2Vyc3BhY2UgYSBzdGF0ZWZ1bCBlbmNvZGVy
KS4gSSdtIG5vdCBzdXJlIGlmIHRoaXMgaXMgd29ydGggcHVyc3VpbmcKPiA+IGlmIG90aGVycyBh
cmUgd29ya2luZyBvbiBzdGF0ZWxlc3MgZW5jb2RlIHN1cHBvcnQgaW4ga2VybmVsIGFuZAo+ID4g
Z3N0cmVhbWVyLgo+Cj4gTXkgY29sbGVhZ3VlcyBzdGFydGVkIGxhc3Qgd2VlayB0aGUgcHJvamVj
dCBvZiBjcmFmdGluZyBtYWlubGluZSBzdGF0ZWxlc3MKPiBlbmNvZGVyIHVBUEkuIFRoaXMgaXMg
dG9vIGVhcmx5LiBJbiBvbGRlciBwcm9qZWN0LCB3ZSBoYXZlIGhhZCBnb29kIHN1Y2Nlc3Mgd2l0
aAo+IHRoZSBlbXVsYXRlZCBzdGF0ZWZ1bCBlbmNvZGVyLiBJdCBpcyBvZiBjb3Vyc2UgcXVpdGUg
bGltaXRlZCwgYnV0IHdvcmtzIGluCj4gZ3N0cmVhbWVyLCBmZm1wZWcgYW5kIGNocm9taXVtLiBJ
dCBpcyBhbHNvIGxpa2VseSBzYWZlciBjb21wYXJlZCB0byB0aGUgdmVuZG9yCj4gcHJvdmlkZWQg
ZHJpdmVyLgoKSWYgcGVvcGxlIHN0aWxsIHdhbnQgdG8gcGxheSB3aXRoIHRoZSBvbGQgZW11bGF0
ZWQgc3RhdGVmdWwgZW5jb2RlciwgdGhlcmUKaXMgYSBmb3J3YXJkLXBvcnRlZCB2ZXJzaW9uIGlu
IHRoZSBDaHJvbWVPUyB2NS4xMCBrZXJuZWwgbm93LiBOb3RlIHRoYXQKUkszMjg4IChIMSkgc3Vw
cG9ydCBpcyB1bnRlc3RlZC4gQWxzbywgUkszMjg4IGFuZCBSSzMzOTkgcmVxdWlyZSBkaWZmZXJl
bnQKdmVyc2lvbnMgb2YgdGhlIHVzZXJzcGFjZSBwbHVnaW4uIEFuZCB0aGUgUkszMjg4IHZlcnNp
b24gbWlnaHQgcmVxdWlyZSBzb21lCnVwZGF0ZXMgdG8gYWRkIFNFTEVDVElPTiBBUEkgc3VwcG9y
dC4KCgpDaGVuWXUKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
