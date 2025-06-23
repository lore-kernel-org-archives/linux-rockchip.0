Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E42DC77B7C
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jun 2025 02:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DefrGQXpGhcBzRM97UiCf7vO3xGHS6S7DplDehAYNhk=; b=CY5jpVJ6T/8e+SeEt5i9Me3EuM
	y8bLOJfnOBjAv8A0nxxMfD5YvhNGwXDlGXBDaz4E4wdQ4pL8pFLB5jdlIoORJ92RI+uqwMklh9+LS
	/9AiOA1Wpw04HQuRUsh1EJZoQbS0KwLps1DAttmblH9fniFGfBY8B1S/6sA2s7CmHwEUXIjWRy6m9
	t5O2nYZs70rk80cK9zJOGEWznTu97ojsTlPvQQb2zOqQP798x8VtJzj88lGDAGR/jSFvdLP4RcGf0
	NY6dLXDJg3qiqDrg/DVpDc1iwbPPmq/3VKZ+WLYrNz9F2vou2LD+AyhHOFFU5wUeeHfU28aPBjdvU
	QJPDKluA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTX7l-00000001Ryl-2zjH;
	Mon, 23 Jun 2025 02:41:33 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTX5S-00000001RhM-00fW;
	Mon, 23 Jun 2025 02:39:11 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 6456444288;
	Mon, 23 Jun 2025 02:39:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 25D2AC4CEE3;
	Mon, 23 Jun 2025 02:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750646348;
	bh=z+teoxeTAmCgQVzu+Jz6aydCP8vcrbY6GqWslL+3y8Y=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=Yp/WX/XhrPBaXidYPuxT4pjPsfKN5DM2FB5pXmH5ptyaOSlk9l6RCDD4fXpV1vOLu
	 GkjqHgqjKgd9nA5DXGlmqvQ7itU4vwkCOxCmCHxPaWzGXgz5RSC5z3fX/EbJyD5M7t
	 7gA4nXAzScqT9zoaPVxTe4de7a9KhnlCMf3oTGgdwLraz2LWUDXu15rWLZ0AtYzFdu
	 qhlSd9x0iKJishocD+37JnAOFXFQR6FvMxd9JVjwLHo053zUc5/a4FZzuN/GXoH3F4
	 N0ZIIj7Wp8kwEz/Ns8MTKgVOtdVNAjVFRST3N85dqzO9nhv/FK1ep+1NjaWv6gdMjb
	 +hxHD83wIbArg==
Date: Sun, 22 Jun 2025 21:39:07 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
 Diederik de Haas <didi.debian@cknow.org>, Johan Jonker <jbx6244@gmail.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Farouk Bouabid <farouk.bouabid@cherry.de>, 
 Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>, 
 stable@vger.kernel.org, Lukasz Czechowski <lukasz.czechowski@thaumatec.com>, 
 Dragan Simic <dsimic@manjaro.org>, 
 Quentin Schulz <quentin.schulz@cherry.de>, 
 Heiko Stuebner <heiko.stuebner@cherry.de>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Jakob Unterwurzacher <jakobunt@gmail.com>
In-Reply-To: <20250620113549.2900285-1-jakob.unterwurzacher@cherry.de>
References: <20250620113549.2900285-1-jakob.unterwurzacher@cherry.de>
Message-Id: <175064594664.881054.5188113186564000482.robh@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: use cs-gpios for spi1 on
 ringneck
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250622_193910_085522_D3676A69 
X-CRM114-Status: GOOD (  22.93  )
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

Ck9uIEZyaSwgMjAgSnVuIDIwMjUgMTM6MzU6NDYgKzAyMDAsIEpha29iIFVudGVyd3VyemFjaGVy
IHdyb3RlOgo+IEZyb206IEpha29iIFVudGVyd3VyemFjaGVyIDxqYWtvYi51bnRlcnd1cnphY2hl
ckBjaGVycnkuZGU+Cj4gCj4gSGFyZHdhcmUgQ1MgaGFzIGEgdmVyeSBzbG93IHJpc2UgdGltZSBv
ZiBhYm91dCA2dXMsCj4gY2F1c2luZyB0cmFuc21pc3Npb24gZXJyb3JzIHdoZW4gQ1MgZG9lcyBu
b3QgcmVhY2gKPiBoaWdoIGJldHdlZW4gdHJhbnNhY3Rpb24uCj4gCj4gSXQgbG9va3MgbGlrZSBp
dCdzIG5vdCBkcml2ZW4gYWN0aXZlbHkgd2hlbiB0cmFuc2l0aW9uaW5nCj4gZnJvbSBsb3cgdG8g
aGlnaCBidXQgc3dpdGNoZWQgdG8gaW5wdXQsIHNvIG9ubHkgdGhlIENQVQo+IHB1bGwtdXAgcHVs
bHMgaXQgaGlnaCwgc2xvd2x5LiBUcmFuc2l0aW9ucyBmcm9tIGhpZ2ggdG8gbG93Cj4gYXJlIGZh
c3QuIE9uIHRoZSBvc2NpbGxvc2NvcGUsIENTIGxvb2tzIGxpa2UgYW4gaXJyZWd1bGFyIHNhd3Rv
b3RoCj4gcGF0dGVybiBsaWtlIHRoaXM6Cj4gICAgICAgICAgICAgICAgICAgICAgICAgIF9fX19f
Cj4gICAgICAgICAgICAgICBeICAgICAgICAgLyAgICAgfAo+ICAgICAgIF4gICAgICAvfCAgICAg
ICAgLyAgICAgIHwKPiAgICAgIC98ICAgICAvIHwgICAgICAgLyAgICAgICB8Cj4gICAgIC8gfCAg
ICAvICB8ICAgICAgLyAgICAgICAgfAo+IF9fXy8gIHxfX18vICAgfF9fX19fLyAgICAgICAgIHxf
X18KPiAKPiBXaXRoIGNzLWdwaW9zIHdlIGhhdmUgYSBDUyByaXNlIHRpbWUgb2YgYWJvdXQgMjBu
cywgYXMgaXQgc2hvdWxkIGJlLAo+IGFuZCBDUyBsb29rcyByZWN0YW5ndWxhci4KPiAKPiBUaGlz
IGZpeGVzIHRoZSBkYXRhIGVycm9ycyB3aGVuIHJ1bm5pbmcgYSBmbGFzaGNwIGxvb3AgYWdhaW5z
dCBhCj4gbTI1cDQwIHNwaSBmbGFzaC4KPiAKPiBXaXRoIHRoZSBSb2NrY2hpcCA2LjEga2VybmVs
IHdlIHNlZSB0aGUgc2FtZSBzbG93IHJpc2UgdGltZSwgYnV0Cj4gZm9yIHNvbWUgcmVhc29uIENT
IGlzIGFsd2F5cyBoaWdoIGZvciBsb25nIGVub3VnaCB0byByZWFjaCBhIHNvbGlkCj4gaGlnaC4K
PiAKPiBUaGUgUkszMzk5IGFuZCBSSzM1ODggU29DcyB1c2UgdGhlIHNhbWUgU1BJIGRyaXZlciwg
c28gd2UgYWxzbwo+IGNoZWNrZWQgb3VyICJQdW1hIiAoUkszMzk5KSBhbmQgIlRpZ2VyIiAoUksz
NTg4KSBib2FyZHMuCj4gVGhleSBkbyBub3QgaGF2ZSB0aGlzIHByb2JsZW0uIEhhcmR3YXJlIENT
IHJpc2UgdGltZSBpcyBnb29kLgo+IAo+IEZpeGVzOiBjNDg0Y2Y5M2Y2MWIgKCJhcm02NDogZHRz
OiByb2NrY2hpcDogYWRkIFBYMzAtwrVRNyAoUmluZ25lY2spIFNvTSB3aXRoIEhhaWtvdSBiYXNl
Ym9hcmQiKQo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4gUmV2aWV3ZWQtYnk6IFF1ZW50
aW4gU2NodWx6IDxxdWVudGluLnNjaHVsekBjaGVycnkuZGU+Cj4gU2lnbmVkLW9mZi1ieTogSmFr
b2IgVW50ZXJ3dXJ6YWNoZXIgPGpha29iLnVudGVyd3VyemFjaGVyQGNoZXJyeS5kZT4KPiAtLS0K
PiAgLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAtcmluZ25lY2suZHRzaSAgICAgIHwgMjIgKysr
KysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgMjIgaW5zZXJ0aW9ucygrKQo+IAoK
Ck15IGJvdCBmb3VuZCBuZXcgRFRCIHdhcm5pbmdzIG9uIHRoZSAuZHRzIGZpbGVzIGFkZGVkIG9y
IGNoYW5nZWQgaW4gdGhpcwpzZXJpZXMuCgpTb21lIHdhcm5pbmdzIG1heSBiZSBmcm9tIGFuIGV4
aXN0aW5nIFNvQyAuZHRzaS4gT3IgcGVyaGFwcyB0aGUgd2FybmluZ3MKYXJlIGZpeGVkIGJ5IGFu
b3RoZXIgc2VyaWVzLiBVbHRpbWF0ZWx5LCBpdCBpcyB1cCB0byB0aGUgcGxhdGZvcm0KbWFpbnRh
aW5lciB3aGV0aGVyIHRoZXNlIHdhcm5pbmdzIGFyZSBhY2NlcHRhYmxlIG9yIG5vdC4gTm8gbmVl
ZCB0byByZXBseQp1bmxlc3MgdGhlIHBsYXRmb3JtIG1haW50YWluZXIgaGFzIGNvbW1lbnRzLgoK
SWYgeW91IGFscmVhZHkgcmFuIERUIGNoZWNrcyBhbmQgZGlkbid0IHNlZSB0aGVzZSBlcnJvcihz
KSwgdGhlbgptYWtlIHN1cmUgZHQtc2NoZW1hIGlzIHVwIHRvIGRhdGU6CgogIHBpcDMgaW5zdGFs
bCBkdHNjaGVtYSAtLXVwZ3JhZGUKCgpUaGlzIHBhdGNoIHNlcmllcyB3YXMgYXBwbGllZCAodXNp
bmcgYjQpIHRvIGJhc2U6CiBCYXNlOiBhdHRlbXB0aW5nIHRvIGd1ZXNzIGJhc2UtY29tbWl0Li4u
CiBCYXNlOiB0YWdzL25leHQtMjAyNTA2MTkgKGV4YWN0IG1hdGNoKQoKSWYgdGhpcyBpcyBub3Qg
dGhlIGNvcnJlY3QgYmFzZSwgcGxlYXNlIGFkZCAnYmFzZS1jb21taXQnIHRhZwoob3IgdXNlIGI0
IHdoaWNoIGRvZXMgdGhpcyBhdXRvbWF0aWNhbGx5KQoKTmV3IHdhcm5pbmdzIHJ1bm5pbmcgJ21h
a2UgQ0hFQ0tfRFRCUz15IGZvciBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwLycgZm9yIDIw
MjUwNjIwMTEzNTQ5LjI5MDAyODUtMS1qYWtvYi51bnRlcnd1cnphY2hlckBjaGVycnkuZGU6Cgph
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAtcmluZ25lY2staGFpa291LmR0Yjogc3Bp
MTogc3BpMS1jc24wLWdwaW86IHsncm9ja2NoaXAscGlucyc6IFtbMywgOSwgMCwgMTUwXV0sICdw
aGFuZGxlJzogODd9IGlzIG5vdCBvZiB0eXBlICdhcnJheScKCWZyb20gc2NoZW1hICRpZDogaHR0
cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvZ3Bpby9ncGlvLWNvbnN1bWVyLnlhbWwjCmFyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC1yaW5nbmVjay1oYWlrb3UuZHRiOiBzcGkxOiBz
cGkxLWNzbjEtZ3Bpbzogeydyb2NrY2hpcCxwaW5zJzogW1szLCAxMCwgMCwgMTUwXV0sICdwaGFu
ZGxlJzogODh9IGlzIG5vdCBvZiB0eXBlICdhcnJheScKCWZyb20gc2NoZW1hICRpZDogaHR0cDov
L2RldmljZXRyZWUub3JnL3NjaGVtYXMvZ3Bpby9ncGlvLWNvbnN1bWVyLnlhbWwjCgoKCgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
