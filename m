Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82067C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Dec 2021 18:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LrVjnzFFcAIgPTej4NounVZ0/ugp4swfRM5qBMniewY=; b=z9km/Qu8SRachS
	UEu0r6tKpwPNQrrumZmOJMjIK8bjbVUen+TGqwqiq6Z4MXlKUnJaDP9nBkSYzksKp4hsAoEk4NWjZ
	xEBF6D59bNl8uG0KyzWtRApBY4iI5yWVoA6risAlCNucVTLWJ06XnYIJ+PErbvBNFZ8vzfWf/H6K1
	dHymIAcu5+EnPMVSnXqYQSGFkYTm73eni2h1s0v30iHdAGtNzRzxnEnI1ovSZA8PNytuc+ZeMEU5C
	eZz6oCG2ippFeMlOSPLmcim/j1WKL5CHbAlniC9KkzIKWBw9VfegWE8UGtmp3dUTUlSLlz+ylubRO
	ZpLKFeuCZ153DsSUl8iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myHr7-00Bmwz-Qt; Fri, 17 Dec 2021 18:21:21 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myH0h-00BTX2-8i
 for linux-rockchip@lists.infradead.org; Fri, 17 Dec 2021 17:27:13 +0000
Received: by mail-pl1-x635.google.com with SMTP id o14so2430280plg.5
 for <linux-rockchip@lists.infradead.org>; Fri, 17 Dec 2021 09:27:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=94lytwgo2pGPKoCz7cXjNIBQaFpmuX64JbTjaHifeEo=;
 b=R/D+giI9xp6G3jBIYNNDmBdzy8vtLbErm1zXG1RUpUrVR7TplNui48kHW1HA7L4AXr
 8xYSnKLB/KktrXYjS5rcAfBqUAG3k7JMmlN3Z4cmdNnjLxA9G6f7hSVmW97x+QlbZyju
 7CvKfsGCnO0A37sh//tlbNDCgdjk8Xg81hQQ6WPJ0QwNNKGFHiLM/MCpZz0HfgyuwjnR
 r+8tQosxe7KhEgBHoCAes46E4VMj/3CvCDjxGTyyKl3Y2yVCxn2IHJQo/ssx/0fJQPzn
 mt2f/cAHhVIXZMu9HYc9cR14FshrILqP0+1mmNqnZKov6JMTkdYmxRaLTBcmxCMsHEfe
 6WxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=94lytwgo2pGPKoCz7cXjNIBQaFpmuX64JbTjaHifeEo=;
 b=sppbSGmq4FrugEMcBmg7j99pyFZ4fzl3HzdSuSYEhA4YgbFq9L9ArfLq9FXhgKuPWX
 0yxyzUzr9gYLFBfUsRtvA7XNZPIcMiLJykK9pxuf4eFxmo0ubwWyUMn6460UjQAXmcp9
 miksdVUd/hgphyNSy7F/mDujYTTbCMp1evhXfzBNMgNdrciu/gYE2xrRStDCtg/ilX8K
 V2CstqA7u5/uSXS43IiMWAi+8DzMPPq+vIcFF3y2tsEagQiwu7NTJNQh7aju+1sHC0St
 8MGsZjowRGV87u2iL71ZnVnu/gceBGoT/3wfidf2sSyqvNY/gP+rtBkAeiLHeyfH8QN5
 qHUg==
X-Gm-Message-State: AOAM53347B20GpBt4PEQcYqXb1PVbkwCxWFTVHlQK8zCYAvJ+tCI2dMH
 b61hiuqE++LDfw+3Ji1CgfDroUUylzOmNWlaNaE6Fw==
X-Google-Smtp-Source: ABdhPJxh6drjRqJyeeghVLdXC+QG2CUejhvUilM6pihIKCowBomy2bFqr6Blk7qvQTT9UHKElHVBCV9i+77UTKQoPfE=
X-Received: by 2002:a17:902:c214:b0:148:a798:7aa with SMTP id
 20-20020a170902c21400b00148a79807aamr4115431pll.90.1639762029356; Fri, 17 Dec
 2021 09:27:09 -0800 (PST)
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
In-Reply-To: <8438070708d16c34c0f79aba19e67fa343adb169.camel@ndufresne.ca>
From: Tim Harvey <tharvey@gateworks.com>
Date: Fri, 17 Dec 2021 09:26:58 -0800
Message-ID: <CAJ+vNU1ZxAAasKT8j1sfcFz1pk8fyYjwOW6wqxYq_ur8+2MX_Q@mail.gmail.com>
Subject: Re: [RFC 0/5] arm64: imx8mm: Enable Hantro VPUs
To: Nicolas Dufresne <nicolas@ndufresne.ca>
Cc: Adam Ford <aford173@gmail.com>,
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
X-CRM114-CacheID: sfid-20211217_092711_424827_E640D3A3 
X-CRM114-Status: GOOD (  36.52  )
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

T24gRnJpLCBEZWMgMTcsIDIwMjEgYXQgOToxMyBBTSBOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFz
QG5kdWZyZXNuZS5jYT4gd3JvdGU6Cj4KPiBMZSB2ZW5kcmVkaSAxNyBkw6ljZW1icmUgMjAyMSDD
oCAwNzoxNSAtMDYwMCwgQWRhbSBGb3JkIGEgw6ljcml0IDoKPiA+IE9uIFRodSwgRGVjIDE2LCAy
MDIxIGF0IDEwOjQ5IFBNIEV6ZXF1aWVsIEdhcmNpYQo+ID4gPGV6ZXF1aWVsQHZhbmd1YXJkaWFz
dXIuY29tLmFyPiB3cm90ZToKPiA+ID4KPiA+ID4gSGkgQWRhbSwKPiA+ID4KPiA+ID4gPgo+ID4g
PiA+IEkgd2lsbCBwb3N0IGEgVjIgbGFzdCB0b2RheSB3aXRoIHRoZSBNaW5pJ3MgcG9zdC1wcm9j
ZXNzaW5nIHJlbW92ZWQuCj4gPiA+ID4gU29tZW9uZSwgSSBhcG9sb2dpemUgdGhhdCBJIGZvcmdl
dCB3aG8sIG1lbnRpb25lZCBpdCB3YXMgZnVzZWQgb3V0IG9mCj4gPiA+ID4gdGhlIE1pbmksIHNv
IHRoZSB0ZXN0aW5nIEkndmUgYmVlbiBkb2luZyB3YXMgd2l0aCB0aGF0IHJlbW92ZWQgYW5kIEkK
PiA+ID4gPiByZW1vdmVkIHRoZSBIMSBlbmNvZGVyIHNpbmNlIHRoZSBNaW5pIGRvZXNuJ3Qgc3Vw
cG9ydCBKUEVHIGVuY29kaW5nLgo+ID4gPiA+Cj4gPiA+IFsuLi5dCj4gPiA+Cj4gPiA+IFJlc3Vy
cmVjdGluZyB0aGlzIHRocmVhZCBoZXJlLiBJTVg4TU1STSBSZXYuIDAsIDAyLzIwMTkgbWVudGlv
bnMKPiA+ID4gcG9zdC1wcm9jZXNzb3IgZmVhdHVyZXMgZm9yIEcxIGFuZCBHMi4KPiA+ID4KPiA+
ID4gSGF2ZSB5b3UgY2hlY2tlZCB0aGUgZnVzZSBhbmQgc3ludGggcmVnaXN0ZXJzIHRvIHNlZSBp
ZiB0aGV5IHRocm93Cj4gPiA+IGFueSB1c2VmdWwgaW5mb3JtYXRpb24gYWJvdXQgdGhlIGhhcmR3
YXJlPyBGb3IgaW5zdGFuY2UsCj4gPiA+IGNvbXBhcmluZyBQUCBmdXNlIHJlZ2lzdGVyIChTV1JF
Rzk5KSBhbmQKPiA+ID4gU3ludGhlc2lzIGNvbmZpZ3VyYXRpb24gcmVnaXN0ZXIgcG9zdC1wcm9j
ZXNzb3IgKFNXUkVHMTAwKQo+ID4gPiBpbiBib3RoIDhNUSBhbmQgOE1NIGNvdWxkIGJlIHVzZWZ1
bC4KPiA+ID4KPiA+ID4gQXMgSSBtZW50aW9uZWQgb24gbXkgcHJldmlvdXMgbWFpbCwgZXZlbiBp
ZiBHMSBQUCBpcyBkaXNhYmxlZAo+ID4gPiBvbiB0aGUgTWluaSwgSSB3b3VsZCBpbWFnaW5lIHRo
ZSBHMiBjYW4gZG8gbGluZWFyIE5WMTIgKGFrYSByYXN0ZXItc2NhbikKPiA+ID4gd2hpY2ggaW4g
b3VyIGhhbnRybyBkcml2ZXIgamFyZ29uIGlzIGEgICJwb3N0LXByb2Nlc3NlZCIgZm9ybWF0IDot
KQo+ID4KPiA+IFlvdSdyZSBsaWtlbHkgcmlnaHQuICBJIHdhcyBnb2luZyBvbiBtZW1vcnkgZnJv
bSBhbiBlLW1haWwgZnJvbQo+ID4gTmljbG9hcyBEZWZyZXNuZSB3aG8gd3JvdGU6Cj4gPgo+ID4g
Ikkgd2lsbCBjaGVjayB0aGUgcGF0Y2hzZXQsIGJ1dCB5b3UgbmVlZCBpbiB0aGUgbWluaS12YXJp
YW50IHRvIGRpc2FibGUgdGhlIEcxCj4gPiBwb3N0IHByb2Nlc3NvciwgYmVjYXVzZSB0aGlzIGJs
b2NrIHdhcyBmdXNlZCBvdXQuIFdlIGRpZG4ndCBtYWtlIGl0IG9wdGlvbmFsCj4gPiBmcm9tIHRo
ZSBzdGFydCBhcyBhY2NvcmRpbmcgdG8gdGhlIFYxIG9mIHRoZSBUUk0gaXQgd2FzIHRoZXJlLCBi
dXQgdGhhdCBlcnJvcgo+ID4gd2FzIGNvcnJlY3RlZCBpbiBWMy4iCj4gPgo+ID4gSW4gbXkgaGVh
ZCBJIGFzc3VtZWQgdGhlIEcyIHdhcyBhZmZlY3RlZCBhcyB3ZWxsLCBidXQgd2hlbiBJIGRvdWJs
ZQo+ID4gY2hlY2tlZCBoaXMgZW1haWwsIGFuZCBiYXNlZCBvbiB0aGUgYWJvdmUgc3RhdGVtZW50
LCB0aGUgRzIKPiA+IHBvc3QtcHJvY2Vzc2luZyBpcyBwcm9iYWJseSB0aGVyZSwgc28gSSdsbCBy
dW4gc29tZSB0ZXN0cyB3aXRoIHRoZSBHMgo+ID4gcG9zdC1wcm9jZXNzaW5nIGVuYWJsZWQuICBJ
J2xsIGFsc28gZG91YmxlIGNoZWNrIHRob3NlIHJlZ2lzdGVycyBvbgo+ID4gYm90aCB0byBjb25m
aXJtIHdoYXQgdGhleSByZWFkLiBJIGFtIG5vdCBzdXJlIHdoZW4gSSdsbCBoYXZlIHRpbWUKPiA+
IGJlY2F1c2UgSSBsZWF2ZSBmb3IgTG9uZG9uIG5leHQgd2VlaywgYW5kIEkgd29uJ3QgcmV0dXJu
IHVudGlsIGVhcmx5Cj4gPiBKYW51YXJ5LCBidXQgSSdsbCBkbyB3aGF0IEkgY2FuLgo+Cj4gU29y
cnkgaWYgdGhpcyB3YXMgYSBiaXQgYW1iaWd1b3VzLCBpbmRlZWQgSSBtZWFudCB0aGUgRzEgb25s
eS4gSSd2ZSBsZWFybmVkCj4gbGF0ZXIgdGhhdCB0aGUgZGVzaWduIG9mIHRoZSBNaW5pIGlzIHRo
YXQgdGhlcmUgaXMgYSBnb29kIHByZS1wcm9jZXNzb3IgaW4gdGhlCj4gSDEgYmxvY2sgKGVuY29k
ZXIpLCBzbyBmb3IgdGhlIHRhcmdldGVkIHVzZS1jYXNlcyB0aGlzIHNoYWxsIGJlIHN1ZmZpY2ll
bnQgZm9yCj4gbW9zdCB1c2VycyAodGhlIG91dHB1dCBvZiB0aGUgRzEgaXMgc3VpdGFibGUgZm9y
IEdQVSBhbmQgRGlzcGxheSBhbHJlYWR5LCBzbyB0aGUKPiBwb3N0IHByb2Nlc3NvciBpcyBub3Qg
c3RyaWN0bHkgbmVlZGVkKS4KPgoKTmljb2xhcywKCkRvZXMgdGhpcyBtZWFuIHRoYXQgaWYgdGhl
IElNWDhNTSBHMiBtYXkgYmUgYWJsZSB0byBvdXRwdXQgYSB3aWRlcgphcnJheSBvZiBwaXhlbCBm
b3JtYXRzIGFuZCB0aGF0IHRoZSBIMSBlbmNvZGVyIG1heSBiZSBhYmxlIHRvIGFjY2VwdCBhCndp
ZGVyIGFycmF5IG9mIHBpeGVsIGZvcm1hdHM/IElzIHRoaXMgY29kZSBhbHJlYWR5IGluIHBsYWNl
IGluIHRoZQpoYW50cm8gZHJpdmVyIGFuZCBpdCBqdXN0IG5lZWRzIHRvIGJlIGVuYWJsZWQgaWYg
dGhlIElNWDhNTSBjYW4gaGFuZGxlCml0IG9yIGlzIHRoZXJlIGNvZGUgdG8gYmUgd3JpdHRlbj8K
CkknbSBub3QgY2xlYXIgaWYgYW55b25lIGlzIHdvcmtpbmcgb24gSU1YOE1NIFZQVSBIMSBzdXBw
b3J0LiBZb3UgaGFkCm1lbnRpb25lZCB0aGF0IHNvbWUgc3VwcG9ydCBbMV0gYW5kIFsyXSBjYW4g
YmUgZGVyaXZlZCBmcm9tIHRoZSBSSzMyODgKdXNpbmcgdGhlIEdvb2dsZSBDaHJvbWVPUyBtZXRo
b2QgKGEgdjRsMiBwbHVnaW4gdGhhdCBzaW11bGF0ZXMgaW4KdXNlcnNwYWNlIGEgc3RhdGVmdWwg
ZW5jb2RlcikuIEknbSBub3Qgc3VyZSBpZiB0aGlzIGlzIHdvcnRoIHB1cnN1aW5nCmlmIG90aGVy
cyBhcmUgd29ya2luZyBvbiBzdGF0ZWxlc3MgZW5jb2RlIHN1cHBvcnQgaW4ga2VybmVsIGFuZApn
c3RyZWFtZXIuCgpCZXN0IFJlZ2FyZHMsCgpUaW0KWzFdIGxpYnY0bCBwbHVnaW5zIC8KaHR0cHM6
Ly9jaHJvbWl1bS5nb29nbGVzb3VyY2UuY29tL2Nocm9taXVtb3MvdGhpcmRfcGFydHkvbGlidjRs
cGx1Z2lucy8rL3JlZnMvaGVhZHMvbWFzdGVyClsyXSBLZXJuZWwgRHJpdmVyIC8KaHR0cHM6Ly9j
aHJvbWl1bS5nb29nbGVzb3VyY2UuY29tL2Nocm9taXVtb3MvdGhpcmRfcGFydHkva2VybmVsLysv
Y2hyb21lb3MtNC40L2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAtdnB1LwoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
