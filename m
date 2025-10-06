Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48C66CAC5B8
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Oct 2025 15:44:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5lPHB7j71wWcTHl7T4t6RnXibRyZhOBajj9L/hw942A=; b=tqieVuMRx7xcTV
	MlhIvPM/lajp9dh+kCI3NIPTgy621P7t6T9v1bUO9SmZhrdJrnajn6UhXnHPhNxxqjIEVolF6IafF
	yDQ2+v+8B/TnBmGDbnaJ2DtSPB8QazLY5jo3Po286b2hSQyQGyLgu1jbz3SlaR9sodPqMgovvJFqV
	b3Wv2qZW62sB1V6ISiTu9l71WahUbpbkug2SowS3vylRv/ga44a+hg3QwVPgfP8N0kwqrSvXOY2Dz
	nOn7FTYSvrgwnRI/+jD6kL5cTyiO1Gha+6suxuzrVM3Qq6R1yI3RkIuFiioBOhK6orpP2jD+Jqkx9
	M45Pw6tYsbF3DOtTZHVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5nNV-00000000JG3-1kaz;
	Mon, 06 Oct 2025 15:43:57 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v5nNS-00000000JE8-2gwa;
	Mon, 06 Oct 2025 15:43:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=5lizV0k8IvCTAEiYWCtHMTokoOjYS99KwY/En0ypzY4=; b=DU
	J9mxgdICTXHVmXLXd/h2dC36s8rbQWQZwud+V5Py7qhz4LGMYIo0W+pZ81un18cjeEkCf4a2cKClj
	ydermpj2SPzI1QPUzMs9WVL1LtDY1FPyTYui2JelvlPMRGQXOPPqwuGF3e537Pv9zkhzVqKVQCFmH
	P9jxMvkJaUh0bbk=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1v5nN8-00AIxf-9q; Mon, 06 Oct 2025 17:43:34 +0200
Date: Mon, 6 Oct 2025 17:43:34 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: jjm2473 <jjm2473@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, quentin.schulz@cherry.de,
	kever.yang@rock-chips.com, naoki@radxa.com, honyuenkwun@gmail.com,
	inindev@gmail.com, ivan8215145640@gmail.com,
	neil.armstrong@linaro.org, mani@kernel.org, dsimic@manjaro.org,
	pbrobinson@gmail.com, alchark@gmail.com, didi.debian@cknow.org,
	jbx6244@gmail.com, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add LinkEase EasePi R1
Message-ID: <6a5b9e68-4f23-49b9-b744-e84fc28a96b0@lunn.ch>
References: <20250929065714.27741-1-jjm2473@gmail.com>
 <20250929065714.27741-3-jjm2473@gmail.com>
 <5700676.tIAgqjz4sF@phil>
 <CAP_9mL6e8ekL14xycSfPmVSkL7pANLeyewWd=rjxbtMgMQXxxw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAP_9mL6e8ekL14xycSfPmVSkL7pANLeyewWd=rjxbtMgMQXxxw@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251006_084354_683351_04A8BE31 
X-CRM114-Status: GOOD (  11.10  )
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

T24gVHVlLCBTZXAgMzAsIDIwMjUgYXQgMDI6MjA6NTdBTSArMDgwMCwgamptMjQ3MyB3cm90ZToK
PiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPiDkuo4yMDI15bm0OeaciDI55pel5ZGo
5LiAIDIwOjI45YaZ6YGT77yaCj4gPgo+ID4gQW0gTW9udGFnLCAyOS4gU2VwdGVtYmVyIDIwMjUs
IDA4OjU3OjEzIE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgTGlhbmdiaW4g
TGlhbjoKPiA+ID4gTGlua0Vhc2UgRWFzZVBpIFIxIGlzIGEgaGlnaC1wZXJmb3JtYW5jZSBtaW5p
IHJvdXRlciBiYXNlZCBvbiBSSzM1NjguCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IExpYW5n
YmluIExpYW4gPGpqbTI0NzNAZ21haWwuY29tPgo+ID4KPiA+IEluIHYxIHRoaXMgcGF0Y2ggcmVj
ZWl2ZWQgYW4KPiA+IEFja2VkLWJ5OiBDb25vciBEb29sZXkgPGNvbm9yLmRvb2xleUBtaWNyb2No
aXAuY29tPgo+ID4KPiA+Cj4gPgo+IAo+IEluIHRoZSBuZXh0IHZlcnNpb24sIEkgd2lsbCBhZGQg
J0Fja2VkLWJ5JyB0byB0aGUgY29tbWl0IG1lc3NhZ2UKPiBhbmQgdGhlbiBydW4gYGdpdCBmb3Jt
YXQtcGF0Y2hgIHRvIGF2b2lkIG1pc3NpbmcgaXQuCgpQbGVhc2UgY29uc2lkZXIgdXNpbmcgYjQu
IEl0IHdpbGwgYXV0b21hZ2ljYWxseSBjb2xsZWN0IGFsbCB0aGVzZQpyZXZpZXdlZC1ieSwgYWNr
ZWQtYnkgdGFncyBhbmQgYWxsIHRoZW0gdG8gdGhlIHBhdGNoZXMgZm9yIHlvdS4KCgkgICAgIEFu
ZHJldwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
