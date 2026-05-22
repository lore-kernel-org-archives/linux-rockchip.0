Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7357ACD5BB0
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 May 2026 18:12:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IuwlBwrp9wQpGggdZdgIrKOdnmbEG6eL5fNPWxJ1X1E=; b=1Df2pnGnL7c9Cy
	1kZUXXuoZdJ0PNojtro8XpdRO1nwOSKyChdOluvAGgGUjiteUEDKK7Thg9yMxnzv3oVW1z5GfuefD
	Q1MzBS5q55qLaY1616KY7NNOANA0aDGfiUaeHizwa0wEOpnXhff11kWKrH/oE0kpdrzRM3Q27mIsa
	Q8/PHAP/tAbCyGVG4n0cqhj4A7g8F1DPiYouxH8Ck2xSA5QJcIT4yp2ZaIpvPeMAVkSo/DY2K4J8v
	50vSe3vx1DofzbETYjkjsOmKlE9EnLfFG86k23qWUcljseAZWL/F2e8jw31CTMA0s2Z3IvL43WZit
	SrQfKu78T7g6W7VGe9/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQUME-0000000BeL6-4ADB;
	Fri, 22 May 2026 18:12:26 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQUMC-0000000BeKc-0CnF
	for linux-rockchip@lists.infradead.org;
	Fri, 22 May 2026 18:12:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Mfj0bqiwU9UZ/DaM4TVZqwuHk8x0pXX2xh+cE5s1V+I=; b=dzRXfq8/YrF1Yi4wB568ZSCqdo
	3n8Kva9fbQUVYp5Ryiw+ZwV6/2QPa53TMybIxEQhbDqVVxwCoGp7K+F5CMP+jv9hZG4NOl0glTJVs
	5xkQ+3KamDiI6whiQ5+3jvboscKzFa3VjnX+j6Nng0EnViz6z7/YoUWtU4IR8QlYjd9mglHEc2IHi
	6EhNgJbWmoXIrGhXU74k2zQCqp5ooqO6zgvKZsfQnf20Wt8Flblb1fSPIUeoJ1zaaJInd/u2bGTb6
	vLD3eD4mq1SJlkwCzo2OiN5luTrko2Vm2NthN43bHv9gZK09g36WXFHc5cRK8QRilKbwXo6gxAxiF
	Fat2Ghsw==;
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
Cc: linux-amarula@amarulasolutions.com, michael@amarulasolutions.com,
 dario.binacchi@amarulasolutions.com,
 Patrick Barsanti <patrick.barsanti@amarulasolutions.com>
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add Axelera AI
Date: Fri, 22 May 2026 20:12:16 +0200
Message-ID: <23231974.Yz81rIOvuz@phil>
In-Reply-To: <20260522174918.61523-2-patrick.barsanti@amarulasolutions.com>
References: <20260522174918.61523-1-patrick.barsanti@amarulasolutions.com>
 <20260522174918.61523-2-patrick.barsanti@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_111224_114113_BCEA6FA5 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
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

QW0gRnJlaXRhZywgMjIuIE1haSAyMDI2LCAxOTo0OToxNiBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIFBhdHJpY2sgQmFyc2FudGk6Cj4gQXhlbGVyYSBBSSBpcyBhbiBFVS1i
YXNlZCBwcm92aWRlciBvZiBBSVBVcyBmb3IgZWRnZSBBSSBpbmZlcmVuY2UuCj4gCj4gTGluazog
aHR0cHM6Ly9heGVsZXJhLmFpLwo+IFNpZ25lZC1vZmYtYnk6IFBhdHJpY2sgQmFyc2FudGkgPHBh
dHJpY2suYmFyc2FudGlAYW1hcnVsYXNvbHV0aW9ucy5jb20+Cj4gLS0tCj4gIERvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy92ZW5kb3ItcHJlZml4ZXMueWFtbCB8IDIgKysKPiAgMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwKPiBpbmRleCAyODc4
NGQ2NmFlN2IuLjU5NWFkOTQyM2VjZSAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2Rldmlj
ZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvdmVuZG9yLXByZWZpeGVzLnlhbWwKPiBAQCAtMjE3LDYgKzIx
Nyw4IEBAIHBhdHRlcm5Qcm9wZXJ0aWVzOgo+ICAgICAgZGVzY3JpcHRpb246IEF2bmV0LCBJbmMu
Cj4gICAgIl5hd2luaWMsLioiOgo+ICAgICAgZGVzY3JpcHRpb246IFNoYW5naGFpIEF3aW5pYyBU
ZWNobm9sb2d5IENvLiwgTHRkLgo+ICsgICJeYXhlbGVyYSwuKiI6Cj4gKyAgICBkZXNjcmlwdGlv
bjogQXhlbGVyYSBBSQoKZGVzY3JpcHRpb246IEF4ZWxlcmEgQUkgQi5WLgoKV2hpY2ggaXMgdGhl
IGR1dGNoIGVxdWl2YWxlbnQgdG8gYSBMdGQuLCBzbyB0aGF0IGlzIHRoZSBmdWxsIGNvbXBhbnkg
bmFtZS4KU2VlCmh0dHBzOi8vYXhlbGVyYS5haS9odWJmcy9BeGVsZXJhJTIwVCUyNkMlMjBTYWxl
cyUyMEZlYiUyMDIwMjYucGRmP2hzTGFuZz1lbgoKPiAgICAiXmF4ZW50aWEsLioiOgo+ICAgICAg
ZGVzY3JpcHRpb246IEF4ZW50aWEgVGVjaG5vbG9naWVzIEFCCj4gICAgIl5heGlhZG8sLioiOgo+
IAoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
