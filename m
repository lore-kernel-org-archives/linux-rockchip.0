Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 161B2C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Dec 2021 15:26:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uu2dJrBShq5NZrBmgTIG1CS++evaReaDGmm0VrBbacI=; b=Htakc/33gZ9ZUS
	J/T6cWUQ9hpVF3jaACCItI63PVmh1krVeTAB+TaKktTulI+pIP6ED89bQVhz42GtcSqoJWUOInoqr
	/VXQhVkiiFbXNF9dz8x6/M1aMVfQ1eUdPojGJf/aJ/v2qvbQwpUlIm3WsNg0Hn8/VkTLMCkFRn382
	GosB5TLE5j+ie1mz8zYNvq6Drr61WjsGZ+smigZjtZzy2+omJmi4Y3iB1eTDtsQp54RnWMamWBYbl
	L1Cr2R0Bj5WgpxdwgBxXbRNgclXLXGYbhW1UL/w1tQ2CxT+nxgaCaMsr6akHurcct3KAKsJZL36tz
	KxqK/ZH73C+CQQLoiuDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muypP-00DE9U-S2; Wed, 08 Dec 2021 15:25:56 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muye0-00D7zB-J9; Wed, 08 Dec 2021 15:14:10 +0000
Received: by mail-ed1-x530.google.com with SMTP id r11so9292405edd.9;
 Wed, 08 Dec 2021 07:14:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=VdUdxIiaU5pFF+V8DTX3AHEAt5/Eve6LradMf5zXN3A=;
 b=d0DFQxVhQJSsNcwUBQkigMPaxadTwrFHzuGfAQb+ee+piHGEaANf5Z8P2KiO8ik+Kg
 unYXfBOPH4bNGrv9FtChzyEycOQEH9jNIoP4W1aqvEPzEmMC7riKxpp/5uswhlWVRtAa
 RNppAOavenQzJiMdh0LHaUdHLS0hQethRictq9Eeza/eNHNutocJ79BzUh3+JUQzgJdI
 O+nwF2EyE+3BP3JR4MpcQU2kPZgBCK3Bvfp2/bmOufePEV3iBlY+SAtwjOzzhop6Y3lx
 CuulofXSV7VICoQtPy0Yag/CnBJ4bDIjj4Dmn2Tgr8pYZJdlWZI/59EQj/gY7t9qGo44
 A29A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=VdUdxIiaU5pFF+V8DTX3AHEAt5/Eve6LradMf5zXN3A=;
 b=S3T0NJ7mVEjweemWmTUvch5GOmX937mq4sFhH+TXC0UXLZQKF3FuzPZFMihDPBGBo7
 2YxMQluuIIl0FMHqrtHanjt/KyOAaKeFBKXi6zO5mPMX+vQ1mGEF3UXcy5oRsSk4fZCO
 Cx5dFhPQZd0IsI9AQH1C73B7n25dakPqGPFJmaFWNKB5Kawv1hAFsTbOUrOMVQMHRdyT
 XNj3O3Ej4JQsyzPxjnzdVrlv66zO5WxjaK2JlbXj6hB1vh7vqMpqi7gVULbwxjnl5fGo
 bFBiaXHZcFnMLZxxYGmClQSp8dc/lpnQwt20b9utoFYpkTfdPBFH0/ZjR8tJIJ7OBfHI
 f4PA==
X-Gm-Message-State: AOAM533v/FpS+DJnZF/sF0N4/Q4rE/3y263JnEYWNtPtkRIWyEeGt8Oy
 sKHpy/Yi6Y/MsLJq/Do9PospIn4uPSRLJM5YA4M=
X-Google-Smtp-Source: ABdhPJzPHBFy+YHW8yC/1wHg8+o4FteQqgjl4FzR3P6qHxX2U0B74TAMmXXGyddSKBaRqSt5gXqrFBWeDu0p3AmM+Gg=
X-Received: by 2002:aa7:d288:: with SMTP id w8mr20577138edq.404.1638976435569; 
 Wed, 08 Dec 2021 07:13:55 -0800 (PST)
MIME-Version: 1.0
References: <20211207015446.1250854-1-aford173@gmail.com>
 <f85da774-ccb3-85de-edd6-5333ed8d0503@collabora.com>
 <5a8b84e91bd8e7670a0d0108e4affe9b964202cb.camel@pengutronix.de>
 <4cc3404b-7f8a-6c87-8c1c-ace399f9edd3@collabora.com>
In-Reply-To: <4cc3404b-7f8a-6c87-8c1c-ace399f9edd3@collabora.com>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 8 Dec 2021 09:13:44 -0600
Message-ID: <CAHCN7xJJfBXdK6B1tHXjmja4Lr=Q-Uony+QWcvVqoQp36RLY=w@mail.gmail.com>
Subject: Re: [RFC V2 0/6] media: Hantro: Split iMX8MQ VPU into G1 and G2 with
 blk-ctrl support
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: Lucas Stach <l.stach@pengutronix.de>,
 linux-media <linux-media@vger.kernel.org>, 
 Chris Healy <cphealy@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 "open list:HANTRO VPU CODEC DRIVER" <linux-rockchip@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:STAGING SUBSYSTEM" <linux-staging@lists.linux.dev>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_071408_695992_CC90AED8 
X-CRM114-Status: GOOD (  34.85  )
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

T24gV2VkLCBEZWMgOCwgMjAyMSBhdCA3OjM2IEFNIEJlbmphbWluIEdhaWduYXJkCjxiZW5qYW1p
bi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPgo+Cj4gTGUgMDgvMTIvMjAyMSDDoCAx
MTozMiwgTHVjYXMgU3RhY2ggYSDDqWNyaXQgOgo+ID4gQW0gTWl0dHdvY2gsIGRlbSAwOC4xMi4y
MDIxIHVtIDEwOjMyICswMTAwIHNjaHJpZWIgQmVuamFtaW4gR2FpZ25hcmQ6Cj4gPj4gTGUgMDcv
MTIvMjAyMSDDoCAwMjo1NCwgQWRhbSBGb3JkIGEgw6ljcml0IDoKPiA+Pgo+ID4+PiBDdXJyZW50
bHksIHRoZSBWUFUgaW4gdGhlIGkuTVE4TVEgaXMgYXBwZWFyaW5nIGFzIG9uZSBjb2RlYywgYnV0
IGluCj4gPj4+IHJlYWxpdHksIGl0J3MgdHdvIElQIGJsb2NrcyBjYWxsZWQgRzEgYW5kIEcyLiAg
VGhlcmUgaXMgaW5pdGlhbGl6YXRpb24KPiA+Pj4gY29kZSBpbiBWUFUgY29kZSB0byBwdWxsIHNv
bWUgY2xvY2tzLCByZXNldHMgYW5kIG90aGVyIGZlYXR1cmVzIHdoaWNoCj4gPj4+IGhhcyBiZWVu
IGludGVncmF0ZWQgaW50byB0aGUgdnB1LWJsay1jdHJsIGZvciB0aGUgaS5NWDhNIE1pbmkgYW5k
IGEKPiA+Pj4gc2ltaWxhciBtZXRob2QgY2FuIGJlIHVzZWQgdG8gbWFrZSB0aGUgVlBVIGNvZGVj
J3Mgb3BlcmF0ZSBhcwo+ID4+PiBzdGFuZC1hbG9uZSBjb3JlcyB3aXRob3V0IGhhdmluZyB0byBr
bm93IHRoZSBkZXRhaWxzIG9mIGVhY2ggb3RoZXIKPiA+Pj4gb3IgdGhlIHF1aXJrcyB1bmlxdWUg
dG8gdGhlIGkuTVg4TVEsIHNvIHRoZSByZW1haW5pbmcgY29kZSBjYW4gYmUKPiA+Pj4gbGVmdCBt
b3JlIGdlbmVyaWMuCj4gPj4+Cj4gPj4+IFRoaXMgc2VyaWVzIHdhcyBzdGFydGVkIGJ5IEx1Y2Fz
IFN0YWNoIHdpdGggb25lIGJ5IEJlbmphbWluIEdhaWduYXJkLgo+ID4+PiBNb3N0IHBhdGNoZXMg
aGF2ZSBiZWVuIG1vZGlmaWVkIHNsaWdodGx5IGJ5IG1lLiAgSXQncyBpbiBhbiBSRkMgc3RhdGUK
PiA+Pj4gYmVjYXVzZSBJIHdhc24ndCBzdXJlIGhvdyB0byBiZXN0IGhhbmRsZSB0aGUgc2lnbmF0
dXJlcyBhbmQgd2Fzbid0IHN1cmUKPiA+Pj4gaWYgSSBjb3VsZCBiYXNlIGl0IG9mZiB0aGUgYnJh
bmNoIEkgZGlkLgo+ID4+Pgo+ID4+PiBTaW5jZSB0aGUgZy1zdHJlYW1lciBhbmQgbWVkaWEgdHJl
ZXMgYXJlIGluIGEgY29uc3RhbnQgc3RhdGUgb2YKPiA+Pj4gY2hhbmdlLCB0aGlzIHNlcmllcyBp
cyBiYXNlZCBvbgo+ID4+Pgo+ID4+PiBnaXQ6Ly9saW51eHR2Lm9yZy9odmVya3VpbC9tZWRpYV90
cmVlLmdpdCBmb3ItdjUuMTdlCj4gPj4+Cj4gPj4+IFRoZSBkb3duc3RyZWFtIGNvZGUgZnJvbSBO
WFAgc2hvd3MgdGhlIEcxIGFuZCBHMiBjbG9ja3MgcnVubmluZwo+ID4+PiBhdCA2MDBNSHosIGJ1
dCBiZXR3ZWVuIHRoZSBUUk0gYW5kIHRoZSBkYXRhc2hlZXQsIHRoZXJlIGlzIHNvbWUKPiA+Pj4g
ZGlzY3JlcGFuY3kuICBCZWNhdXNlIHRoZSBOWFAgcmVmZXJlbmNlIGNvZGUgdXNlZCA2MDBNSHos
IHRoYXQgaXMKPiA+Pj4gd2hhdCB3YXMgY2hvc2VuIGhlcmUuICBVc2VycyB3aG8gbmVlZCB0byBh
ZGp1c3QgdGhlaXIgRzEgYW5kIEcyCj4gPj4+IGNsb2NrcyBjYW4gZG8gc28gaW4gdGhlaXIgYm9h
cmQgZmlsZXMuCj4gPj4gSGkgQWRhbSwKPiA+Pgo+ID4+IFRoYW5rcyBmb3IgeW91ciBwYXRjaGVz
LCBJIGhhdmUgYmVlbiBhYmxlIHRvIHJlcHJvZHVjZSBWUDkgcmVzdWx0cyBvbiBteSBzaWRlIChG
bHVzdGVyIDE0Ny8zMDMpLgo+ID4+IEluIHBhc3QgSSBoYXZlIG5vdGljZSBzcHVyaW91cyBlcnJv
cnMgd2hlbiB1c2luZyA2MDBNSHogY2xvY2sgb24gSEVWQyBkZWNvZGUgYnV0IG5vdCB3aXRoIDMw
ME1Iei4KPgo+IFRoZSByZXN1bHRzIGZvciBGbHVzdGVyIEhFVkMgYXJlIDc3LzE0NyBzbyBubyBy
ZWdyZXNzaW9ucyA6LSkKPgo+IFJlZ2FyZHMsCj4gQmVuamFtaW4KPgo+ID4+IFRoZSBtYXggc3Vw
cG9ydGVkIEcyIGNsb2NrIGZyZXF1ZW5jeSBpcyA2NjBNSHogYnV0IG5lZWRzIGEgaGlnaGVyCj4g
Pj4gdm9sdGFnZS4gVGhlIG1heGltdW0gc3VwcG9ydGVkICBmcmVxdWVuY3kgYXQgdGhlIGRlZmF1
bHQgMC45ViBpcwo+ID4+IDU1ME1Iei4gV2Ugc2hvdWxkIG5vdCBjb25maWd1cmUgdGhlIGNsb2Nr
cyBmb3IgdGhlIGhpZ2hlciB0aGFuIHRoYXQsIGFzCj4gPj4gbG9uZyBhcyB0aGVyZSBpcyBubyBz
dXBwb3J0IGluIHRoZSBWUFUgZHJpdmVyIHRvIHNjYWxlIHRoZSB2b2x0YWdlCj4gPj4gYWxvbmcg
d2l0aCB0aGUgZnJlcXVlbmN5LiBTYW1lIGFzIHdpdGggdGhlIEdQVSB3ZSBzaG91bGQgc3RpY2sg
dG8gYmFzZQo+ID4+IGZyZXF1ZW5jeSBsZXZlbHMgZm9yIHRoZSBub21pbmFsIG9wZXJhdGluZyBt
b2RlLgoKTHVjYXMsCgpBZnRlciByZXZpZXdpbmcgdGhlIGNvbW1lbnRzIGZyb20gQmVuamFtaW4s
IEkgcmUtcmFuIHRoZSBWUDkgdGVzdHMKd2l0aCB0aGUgRzIgcnVubmluZyBhdCAzMDBNSHosYW5k
IHRoZSBudW1iZXIgb2YgcGFzc2luZyBWUDkgdGVzdHMKaW5jcmVhc2VkIHRvIDE0OCBmcm9tIDE0
NCB3aXRoIGFuIGluY3JlYXNlIG9mIHRpbWUgdG8gMjUwLjUwMiBzZWNzCmZyb20gMTYyLjY2NSBz
ZWNzLgoKV2hpbGUgdGhlIGRhdGFzaGVldCByZWFkcyB0aGF0IHRoZSBHMiBjYW4gcnVuIGZhc3Rl
ciwgdGhlIGkuTVggOE0KRHVhbC84TSBRdWFkTGl0ZS84TSBRdWFkIEFwcGxpY2F0aW9ucyBQcm9j
ZXNzb3JzIFJlZmVyZW5jZSBNYW51YWwsClJldi4gMy4xLCAwNi8yMDIxLCB0YWJsZSA1LTEgIHNo
b3dzIHRoZSBWUFVfRzJfQ0xLX1JPT1QgaGFzIGEgbWF4CmNsb2NrIG9mIDMwME1Iei4gIEkgbWln
aHQgYmUgaW5jbGluZWQgdG8gYWdyZWUgd2l0aCBCZW5qYW1pbiBvbiB0aGUKMzAwTUh6IGFuZCBs
ZXQgcGVvcGxlIHdobyB3YW50IHRvIHB1c2ggdGhlaXIgaGFyZHdhcmUgb3ZlcndyaXRlIHRoZQpk
ZWZhdWx0IGNsb2NrcyBzaW5jZSBpdCBpbmNyZWFzZXMgZnVuY3Rpb25hbGl0eS4KCkkgd29uZGVy
IGlmIHNvbWVvbmUgZnJvbSBOWFAgY2FuIGNvbW1lbnQKCmFkYW0KCj4gPj4KPiA+PiBSZWdhcmRz
LAo+ID4+IEx1Y2FzCj4gPj4KPiA+PiBSZWdhcmRzLAo+ID4+IEJlbmphbWluCj4gPj4KPiA+Pj4g
Rmx1c3RlciBSZXN1bHRzOgo+ID4+Pgo+ID4+PiAuL2ZsdXN0ZXIucHkgcnVuIC1kR1N0cmVhbWVy
LUguMjY0LVY0TDJTTC1Hc3QxLjAKPiA+Pj4gUmFuIDkwLzEzNSB0ZXN0cyBzdWNjZXNzZnVsbHkg
ICAgICAgICAgICAgICBpbiA2MS45NjYgc2Vjcwo+ID4+Pgo+ID4+PiAuL2ZsdXN0ZXIucHkgcnVu
IC1kIEdTdHJlYW1lci1WUDgtVjRMMlNMLUdzdDEuMAo+ID4+PiBSYW4gNTUvNjEgdGVzdHMgc3Vj
Y2Vzc2Z1bGx5ICAgICAgICAgICAgICAgaW4gNy42NjAgc2Vjcwo+ID4+Pgo+ID4+Pgo+ID4+PiAu
L2ZsdXN0ZXIucHkgcnVuIC1kIEdTdHJlYW1lci1WUDktVjRMMlNMLUdzdDEuMAo+ID4+PiBSYW4g
MTQ0LzMwMyB0ZXN0cyBzdWNjZXNzZnVsbHkgICAgICAgICAgICAgICBpbiAxNjIuNjY1IHNlY3MK
PiA+Pj4KPiA+Pj4gQ2hhbmdlcyBsb2c6Cj4gPj4+Cj4gPj4+IFYyOiAgTWFrZSB2cHUtYmxrLWN0
cmwgZW5hYmxlIEcyIGNsb2NrIHdoZW4gZW5hYmxpbmcgZnVzZXMuCj4gPj4+ICAgICAgICBSZW1v
dmUgc3lzY29uIGZyb20gZGV2aWNlIHRyZWUgYW5kIGJpbmRpbmcgZXhhbXBsZQo+ID4+PiAgICAg
ICAgQWRkZWQgbW9kaWZpZWQgbnhwLGlteDhtcS12cHUueWFtbCBmcm9tIEJlbmphbWluIEdhaWdu
YXJkCj4gPj4+Cj4gPj4+IEFkYW0gRm9yZCAoMik6Cj4gPj4+ICAgICBtZWRpYTogaGFudHJvOiBz
cGxpdCBpLk1YOE1RIEcxIGFuZCBHMiBjb2RlCj4gPj4+ICAgICBhcm02NDogZHRzOiBpbXg4bXE6
IFNwbGl0IGkuTVg4TVEgRzEgYW5kIEcyIHdpdGggdnB1LWJsay1jdHJsCj4gPj4+Cj4gPj4+IEJl
bmphbWluIEdhaWduYXJkICgxKToKPiA+Pj4gICAgIGR0LWJpbmRpbmdzOiBtZWRpYTogbnhwLGlt
eDhtcS12cHU6IFVwZGF0ZSB0aGUgYmluZGluZ3MgZm9yIEcyIHN1cHBvcnQKPiA+Pj4KPiA+Pj4g
THVjYXMgU3RhY2ggKDMpOgo+ID4+PiAgICAgZHQtYmluZGluZ3M6IHBvd2VyOiBpbXg4bXE6IGFk
ZCBkZWZpbmVzIGZvciBWUFUgYmxrLWN0cmwgZG9tYWlucwo+ID4+PiAgICAgZHQtYmluZGluZ3M6
IHNvYzogYWRkIGJpbmRpbmcgZm9yIGkuTVg4TVEgVlBVIGJsay1jdHJsCj4gPj4+ICAgICBzb2M6
IGlteDogaW14OG0tYmxrLWN0cmw6IGFkZCBpLk1YOE1RIFZQVSBibGstY3RybAo+ID4+Pgo+ID4+
PiAgICAuLi4vYmluZGluZ3MvbWVkaWEvbnhwLGlteDhtcS12cHUueWFtbCAgICAgICAgfCAgNTgg
KysrKystLS0tCj4gPj4+ICAgIC4uLi9zb2MvaW14L2ZzbCxpbXg4bXEtdnB1LWJsay1jdHJsLnlh
bWwgICAgICB8ICA3MSArKysrKysrKysrKwo+ID4+PiAgICBhcmNoL2FybTY0L2Jvb3QvZHRzL2Zy
ZWVzY2FsZS9pbXg4bXEuZHRzaSAgICAgfCAgNjkgKysrKysrLS0tLQo+ID4+PiAgICBkcml2ZXJz
L3NvYy9pbXgvaW14OG0tYmxrLWN0cmwuYyAgICAgICAgICAgICAgfCAgNjggKysrKysrKysrLQo+
ID4+PiAgICBkcml2ZXJzL3N0YWdpbmcvbWVkaWEvaGFudHJvL2hhbnRyb19kcnYuYyAgICAgfCAg
IDQgKy0KPiA+Pj4gICAgZHJpdmVycy9zdGFnaW5nL21lZGlhL2hhbnRyby9oYW50cm9faHcuaCAg
ICAgIHwgICAyICstCj4gPj4+ICAgIGRyaXZlcnMvc3RhZ2luZy9tZWRpYS9oYW50cm8vaW14OG1f
dnB1X2h3LmMgICB8IDExOSArKystLS0tLS0tLS0tLS0tLS0KPiA+Pj4gICAgaW5jbHVkZS9kdC1i
aW5kaW5ncy9wb3dlci9pbXg4bXEtcG93ZXIuaCAgICAgIHwgICAzICsKPiA+Pj4gICAgOCBmaWxl
cyBjaGFuZ2VkLCAyMzcgaW5zZXJ0aW9ucygrKSwgMTU3IGRlbGV0aW9ucygtKQo+ID4+PiAgICBj
cmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvYy9p
bXgvZnNsLGlteDhtcS12cHUtYmxrLWN0cmwueWFtbAo+ID4+Pgo+ID4+Pgo+ID4+PiBiYXNlLWNv
bW1pdDogZDE4ODhiMGJmZDJkZGVmMmU4YTgxNTA1ZmZhMjAwYjkyY2MzMmUwYwo+ID4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
