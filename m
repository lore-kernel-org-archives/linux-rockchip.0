Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 419E1D6AB1B
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Apr 2026 00:53:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hKcPHk9tRr0sHX75RFOQlAdUz+ERJUG8+7qZmnoBMS8=; b=ftgNokeUPq+Q/g
	2GTgwfoNELlIgAnTo00V3yaqxuf0zzN28XL5zaLPl7sQmdWv6qy4i+KV+veIxdfIboEAoUaLZVYD1
	+3AvS70iMw6+qo34daJr7+doxytWZMqI62BX0Qsk5IGs4FP9eIEwjL4UZFF6pEXqIx0U1SmLhK8wT
	P/XDMdAceQyvavwxTyXZnQis5FZqq3XP8bFt2g9+I0FA3FHkIJ9+MSQOuV7Kiv3e4mii1lMRY9tDG
	rwb48S4RKeuvOAhmZBDzxOUrk1XanKRY4eVBcs3MlhSVtcgAuf+wQsh+0Do+7FGFBMNPTSkZ9IPmQ
	+Vmr2Ub8MK1AUfqB4rLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Smy-0000000105i-0RpO;
	Fri, 03 Apr 2026 00:53:32 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w8Smv-00000001048-1E02;
	Fri, 03 Apr 2026 00:53:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=R/gbGmXT8G+ZNC4WOZV98syZMUVqLqbIohTb80/HY9c=; b=K2
	xaUK9NCidBxIhq4MBQyfiD9duhm5SufM2BFIUZeFRB8PBymzG9r0LIczZglK9WodAR/UyU9NhjAE7
	ECUtKxIYSvVH0BJamhsL+NI1lDOLZxft0hNk9bXUmKlXF4jThuCxs79Qcg/qelLkptQ0+iPIOgKqk
	X0It/l4/no9Dnk4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1w8SmT-00Eaxu-P1; Fri, 03 Apr 2026 02:53:01 +0200
Date: Fri, 3 Apr 2026 02:53:01 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Dennis Gilmore <dennis@ausil.us>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>,
	Hsun Lai <i@chainsx.cn>, Jonas Karlman <jonas@kwiboo.se>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	John Clark <inindev@gmail.com>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Chukun Pan <amadeus@jmu.edu.cn>, Alexey Charkov <alchark@gmail.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Michael Riesch <michael.riesch@collabora.com>,
	Mykola Kvach <xakep.amatop@gmail.com>,
	Jimmy Hon <honyuenkwun@gmail.com>, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/3] arm64: dts: rockchip: refactor items from Orange
 Pi 5/b to prep for Pro
Message-ID: <b1ba2e70-4886-4d37-9c53-9045c3ad78df@lunn.ch>
References: <20260401010707.2584962-1-dennis@ausil.us>
 <20260401010707.2584962-3-dennis@ausil.us>
 <b733883d-e515-4946-a81f-d1a595985e01@lunn.ch>
 <CAABkxwvnv7i=xg53qu4JDapBs6ATaMGh9iXZfi+od=CCxRxQUA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAABkxwvnv7i=xg53qu4JDapBs6ATaMGh9iXZfi+od=CCxRxQUA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260402_175329_346615_19178FEE 
X-CRM114-Status: GOOD (  15.48  )
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

T24gV2VkLCBBcHIgMDEsIDIwMjYgYXQgMDg6Mjc6MzBBTSAtMDUwMCwgRGVubmlzIEdpbG1vcmUg
d3JvdGU6Cj4gSGkgQW5kcmV3LAo+IAo+IE9uIFdlZCwgQXByIDEsIDIwMjYgYXQgNjo1MuKAr0FN
IEFuZHJldyBMdW5uIDxhbmRyZXdAbHVubi5jaD4gd3JvdGU6Cj4gPgo+ID4gPiArJmdtYWMxIHsK
PiA+ID4gKyAgICAgY2xvY2tfaW5fb3V0ID0gIm91dHB1dCI7Cj4gPiA+ICsgICAgIHBoeS1oYW5k
bGUgPSA8JnJnbWlpX3BoeTE+Owo+ID4gPiArICAgICBwaHktbW9kZSA9ICJyZ21paS1yeGlkIjsK
PiA+ID4gKyAgICAgcGluY3RybC0wID0gPCZnbWFjMV9taWltCj4gPiA+ICsgICAgICAgICAgICAg
ICAgICAmZ21hYzFfdHhfYnVzMgo+ID4gPiArICAgICAgICAgICAgICAgICAgJmdtYWMxX3J4X2J1
czIKPiA+ID4gKyAgICAgICAgICAgICAgICAgICZnbWFjMV9yZ21paV9jbGsKPiA+ID4gKyAgICAg
ICAgICAgICAgICAgICZnbWFjMV9yZ21paV9idXM+Owo+ID4gPiArICAgICBwaW5jdHJsLW5hbWVz
ID0gImRlZmF1bHQiOwo+ID4gPiArICAgICB0eF9kZWxheSA9IDwweDQyPjsKPiA+Cj4gPiBwaHkt
bW9kZSA9ICJyZ21paS1yeGlkIiBtZWFucyB0aGUgUENCIHByb3ZpZGVzIHRoZSAybnMgZGVsYXkg
Zm9yCj4gPiBUWC4gVGhpcyBpcyB1bmxpa2VseSB0byBiZSBjb3JyZWN0LiBQbGVhc2UgdHJ5ICJy
Z21paS1pZCIgYW5kIGRlbGV0ZQo+ID4gdGhlIHR4X2RlbGF5Lgo+IAo+IEFzIEkgbWVudGlvbmVk
IHRvIHlvdSBpbiB2MiBJIGRvIG5vdCBoYXZlIHRoZSBhZmZlY3RlZCBoYXJkd2FyZSB0bwo+IHRl
c3QgYW55IGNoYW5nZXMuIFRoaXMgcGF0Y2ggaXMganVzdCBtb3ZpbmcgdGhlIGV4aXN0aW5nIGRl
ZmluaXRpb24KPiBmcm9tIHRoZSBjb21tb24gZHRzaSB0byB0aGUgdHdvIGRldmljZXMgdGhhdCAg
aGF2ZSBnbWFjMSB3aXJlZCB1cC4gSQo+IGFtIG5vdCBjb21mb3J0YWJsZSBtYWtpbmcgY2hhbmdl
cyBoZXJlIHRoYXQgSSBjYW4gbm90IHZlcmlmeSBpZiB0aGV5Cj4gd29yayBvciBub3QuCgpZZXMs
IHNvcnJ5LgoKUGxlYXNlIGFkZCB0aGlzIHRvIHRoZSBjb21taXQgbWVzc2FnZSwgc28gaSBkb24n
dCBtYWtlIHRoZSBzYW1lIHBvaW50CmFnYWluLgoKCUFuZHJldwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
