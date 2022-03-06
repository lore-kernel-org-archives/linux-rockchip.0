Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81095C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun,  6 Mar 2022 09:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:Date:Subject:Cc:
	To:From:Message-ID:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5iFikobxAG2+c60BghYhK18GCgcu+4DKEi/O+fRJW/w=; b=bddFasB/BbhsWJ
	Uy8upsBOCqcVCxBUEDqvcgHalr13zXtQHL/z6wo3kAIfq0vFzVvWlBtaDGztEReKJBFvoYePtrDKn
	/GG1wK9CQxSZTkrkmPC1r1lvEP65an/ppORHa27oMlXL/jNGF84ubRgVDrV3WV5yg82MMW4SZKMPx
	vJjoKUnzJ7tzzijkNpVNjjb47etYQl9JlilHHOdeYmFvoaQuNWR8GNzL7tqdwqMIEHJkSafr6FmPp
	8LbVdwihcgvtyouOvWtWrZsOV3lyjoka+Qui6F1mpR9IIv3GrFtHK4Jm8iZfg1T0f/alasYBdDCHa
	lfJhYdo93udgpzS8nZvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQnV2-00EOFq-FM; Sun, 06 Mar 2022 09:48:24 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQnUz-00EOFG-EC; Sun, 06 Mar 2022 09:48:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1646560070;
 bh=OD9fC9I+jhM8Okh3twd8v6eVvZwsGcKGQ/IgKak8Gv0=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=Ny5UjL1sTdiqrIRD3wdU7tqzCN4lUZru1dJUCIRnKTmN6xcyx5SmRkhxv8IEgbQG9
 StdwseJ272DQcBXAXCYlVGGK4ct+XstTGKsg6xLMOjBff/XferX08EL1cUoBzgtV6e
 zRtzz0bjaKKyJrk/BAV3PJK+cmUHxysOpADXtyI8=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [217.61.145.243] ([217.61.145.243]) by web-mail.gmx.net
 (3c-app-gmx-bs46.server.lan [172.19.170.98]) (via HTTP); Sun, 6 Mar 2022
 10:47:50 +0100
MIME-Version: 1.0
Message-ID: <trinity-9ef9e0d3-e70c-45d9-bdd8-e43d1c89a8c9-1646560070497@3c-app-gmx-bs46>
From: Frank Wunderlich <frank-w@public-files.de>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Frank Wunderlich <linux@fw-web.de>, devicetree@vger.kernel.org, Damien
 Le Moal <damien.lemoal@opensource.wdc.com>, Rob Herring
 <robh+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>, Gregory Clement
 <gregory.clement@bootlin.com>, Sebastian Hesselbarth
 <sebastian.hesselbarth@gmail.com>, Russell King <linux@armlinux.org.uk>,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>, Michael
 Riesch <michael.riesch@wolfvision.net>, Hans de Goede
 <hdegoede@redhat.com>, Jens Axboe <axboe@kernel.dk>,
 linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Aw: Re: [PATCH v5 1/5] dt-bindings: ata: ahci-platform: Convert DT
 bindings to yaml
Date: Sun, 6 Mar 2022 10:47:50 +0100
Importance: normal
Sensitivity: Normal
In-Reply-To: <a2839b00-d195-131f-b2a7-d2f030a5bd95@canonical.com>
References: <20220305112607.257734-1-linux@fw-web.de>
 <20220305112607.257734-2-linux@fw-web.de>
 <a2839b00-d195-131f-b2a7-d2f030a5bd95@canonical.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:Echz34LhzOW5lmBqLmmb4P7mnPgqTTUheGQ31g1l4cvCB7QgzRtTYu2fQgCY6tYwBeroz
 bkiKXu1NYcjP50rVa7bvFlK05WbKn34j5J3LeomEbN8mZHBor8Z9e28tvxyU13X+a1B0VMcEo3Is
 0c0SW2QymXtdzlA+3Qs7FfKYs175VGlLw9j2We/yhu1/F44dZQpZMdH6WaBV5zgfbEXy9abRCjeQ
 DusZRjUvBrwRp0/hkZr1HHgYogx4mFESNDB/LGNEl/HZTSYqypdTFzqW+nkovm4U4zLCjm+2iuI8
 es=
X-UI-Out-Filterresults: notjunk:1;V03:K0:EowYyED6Quw=:Z01UPjyHuVxost3uxThyxc
 ozZn7Bq/AJadPhkzyUmulvBAuWzvsO5W3OMUpNO0YksneTyUgNH9j6cdGxoLDJJMpQhgEa5r0
 iZ1lMnk5aXliO2O4GQgH2NuaEAFVYV/4C3fIHC7p2wsRLGhsynzhz4IqITYN/uN2sIQ6XvrfP
 wu92vavFMgcD+otN+pZxhhdAVUWuwsHZiVwtY8bKhbvDEVbnUh0f3svL1u2dWi0cCcEXVHHSU
 UZrM7kXHfO474b4HE1QgZUdfQgY97n7fTuNzzP6v9mq2TOIjjUvyFr5TkxNeGI3vZrH/tt6v6
 PyUgdKaj8qGR0IDHvGogajmD7i+t1WqfPh6QrWrkFhcpuy7Z+w5zKNIdE3du+yymkHFFDNHk2
 3YQS0yVgRg8ezuyQ10swPa/GdqYoGnKfMXC0i7jjH1wajvnRhshKRtxTCy2CtRL0dEO2FRwey
 WFoVaJFlYriuZ4Hu7e1kmCYpbxFTf4frCUC7RvY4dMUiYTMTXNaDigbA7+J+LTVrG764N5EJ7
 u2KkQ7ekRZrjH1FbhdwgROx+Q0LQSrzgWc0gjNOlPsk95dxjpnqy5Vt7YryeT4PebHNgt/3CM
 7wrwruTI0TxxG81/zyYzIT96eB2rbFe0Ipu8ZUkHLpvy2qczvvlAQx9aX5xAemMDXRln4XvtF
 qeU4NcZcPfO5nmqFSa+2SqwLHW7QvdZR1Yn+YsEg2gDIjLpFAktTlvRoIT0SnlsTEcqBCOmks
 NTdRv10cnMvpSQmGXXEwB1CKjmVrB9cE42vPy7dXJScAKy7sakNygTCNVmspFw2QqJF8W2XbE
 p8XvUie
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220306_014821_838515_AF66FE95 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
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

SGkgS3J6eXN6dG9mLAoKaGF2ZSBzZWVuIHNvbWUgd2FybmluZ3MgaW4gUm9icyBib3QgZm9yIGFy
bS4KCmltaG8gaGF2ZSBmaXhlZCB0aGVtIChhbmQgdGhlIGluZGVudGlvbiB5b3UndmUgbWVudGlv
bmVkIGFscmVhZHkgc3F1YXNoZWQpIGluIG15IHRyZWUgWzFdLgoKICAgIGFkZCBjb21wYXRpYmxl
cyB1c2VkIHRvZ2V0aGVyIHdpdGggZ2VuZXJpYy1haGNpCiAgICAgIC0gbWFydmVsbCxiZXJsaW4y
LWFoY2kKICAgICAgLSBxY29tLGFwcTgwNjQtYWhjaQogICAgICAtIHFjb20saXBxODA2eC1haGNp
CiAgICBpbmNyZWFzZSByZWctY291bnQgdG8gMiAodXNlZCBpbiBvbWFwNS1sNC5kdHNpKQogICAg
aW5jcmVhc2UgY2xvY2stY291bnQgdG8gNSAodXNlZCBpbiBxY29tLWFwcTgwNjQuZHRzaSkKCmNh
biBpIHN0aWxsIGFkZCB5b3UgcmV2aWV3ZWQtYnkgdG8gdjY/CgpbMV0gaHR0cHM6Ly9naXRodWIu
Y29tL2ZyYW5rLXcvQlBJLVIyLTQuMTQvY29tbWl0cy81LjE3LW5leHQtMjAyMjAyMjUKCnJlZ2Fy
ZHMgRnJhbmsKCgo+IEdlc2VuZGV0OiBTYW1zdGFnLCAwNS4gTcOkcnogMjAyMiB1bSAxODo0MyBV
aHIKPiBWb246ICJLcnp5c3p0b2YgS296bG93c2tpIiA8a3J6eXN6dG9mLmtvemxvd3NraUBjYW5v
bmljYWwuY29tPgo+IAo+IFRoYW5rcyBmb3IgdGhlIGNoYW5nZXMsIGFsbCBsb29rIGdvb2QgZXhj
ZXB0IG5vdyBJIG5vdGljZWQgdGhhdAo+IGluZGVudGF0aW9uIG9mIGV4YW1wbGUgaXMgdW51c3Vh
bC4gSXQncyBub3QgY29uc2lzdGVudC4gU3RhcnRzIHdpdGggZm91cgo+IHNwYWNlIChjb3JyZWN0
KSBidXQgdGhlbiBnb2VzIHRvIDcgc3BhY2VzLiBQbGVhc2UgYWRqdXN0IGVudGlyZSBleGFtcGxl
Cj4gdG8gdXNlIDQgc3BhY2VzIGluZGVudGF0aW9uLgo+IAo+IFdpdGggdGhhdDoKPiAKPiBSZXZp
ZXdlZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBjYW5vbmlj
YWwuY29tPgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
