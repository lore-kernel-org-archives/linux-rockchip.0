Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65C13CA0FF2
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Aug 2025 13:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uGeF7YvNbxPHDAQ4jo4bmDiD5UVHlnN2MqTD1bviHT0=; b=mACUil6q4K4ufr
	bZtbe54Hg+2D6fWOzBtZYnAKW/KVkhVMkuQvMlYgU5vnSDF0WDhjK2NPCho+YQTBUrUPc44/b6788
	3WaMhvxysiTTZjFhROAaVPv/yqM9RB/7hudQPTEDPgrKrKEUdEgjAKEjRspfNz0DyDLLzvQy6BI6+
	9ApUoYp5aC+pD6SGyAlFybd90/unYk63dgw40rA98N67GxuHImbLCKOrQsmKfKWWzw0793NT76kHp
	zXTYA9sxYi0eVpxt2zQSquP3FLybL1mWj5t3udfwprgC+CAaEiQU7O4VsOT3KYGL08fgB409pvZAq
	tEOtcjhRRETYPnlS/vaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usiZm-0000000AFfX-3eyq;
	Sun, 31 Aug 2025 13:58:34 +0000
Received: from chumsalmon.baetis.net ([2001:19f0:5:5b58:5400:5ff:fe17:97e8])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1usiX2-0000000AFYE-0jxL;
	Sun, 31 Aug 2025 13:55:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tahomasoft.com;
	s=default; t=1756648542;
	bh=0JG/R7bAPQm+MlZqDUVOJ+JY4WzqiuAbKuf2QpGCbFA=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=D37S7zqU2/F08JIqFoIrL8DJEcIUVIgB/zPrNVJpOp5BSM2nUvb4LXkuIPWOrB2z7
	 GESW0lUajM8e6O0kd6lP+B2T4nG9MsvkXfmzGSKDcGjvtxCPjt5A0qPe2t6IlFOsjW
	 Tyq3lcDuJgySMWmzr4MY5ZmPlmp/WEDZCRlOmqrPQuO6flF/9L1IWbdKn7gpOL4WVr
	 6fikEV0C85y/GSryytNG06kKqqv0/mXN4I1CFFpcuyQhfSBxaMbg7cK1TExGSbaA/9
	 6bblqQ2A/iyL26sH4pl1XJCtE5HxCZ7q14uza8Dag5AG0hHMAfxVV6PMiwH1psrUzW
	 1d2XiN8gzeS+Q==
Received: from WahpenayoPeak.tahoma.link (unknown [IPv6:2600:4040:50be:5a04:7b87:89ea:8410:bae3])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by chumsalmon.baetis.net (Postfix) with ESMTPSA id 78C2D27E468;
	Sun, 31 Aug 2025 13:55:42 +0000 (UTC)
Date: Sun, 31 Aug 2025 09:55:41 -0400
From: Erik Beck <xunil@tahomasoft.com>
To: Andrew Lunn <andrew@lunn.ch>
Cc: Heiko Stuebner <heiko@sntech.de>, Chukun Pan <amadeus@jmu.edu.cn>, Rob
 Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH 0/4] arm64: dts: rockchip: Add HINLINK H66K/H68K
Message-ID: <20250831095541.49568044.xunil@tahomasoft.com>
In-Reply-To: <AAEEDECA-1419-487E-B018-E0590ED532D1@tahomasoft.com>
References: <2803b3d8-332e-4ada-a28f-eeba8285b7ec@lunn.ch>
	<AAEEDECA-1419-487E-B018-E0590ED532D1@tahomasoft.com>
Organization: Tahoma Soft
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.49; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250831_065544_341878_6FFAF73E 
X-CRM114-Status: GOOD (  20.48  )
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

T24gU2F0LCAzMCBBdWcgMjAyNSAxODoyMDo1MCAtMDQwMApFcmlrIEJlY2sgPHh1bmlsQHRhaG9t
YXNvZnQuY29tPiB3cm90ZToKCj4gPiBPbiBBdWcgMzAsIDIwMjUsIGF0IDE3OjMwLCBBbmRyZXcg
THVubiA8YW5kcmV3QGx1bm4uY2g+IHdyb3RlOgo+ID4gCj4gPiDvu78gIAo+ID4+IAo+ID4+IEFz
IEkgd29ya2VkIG9uIG15IGR0cywgSSBkaXNjb3ZlcmVkIHRoYXQgdGhlIDFHYiBldGhlcm5ldCBw
b3J0cywgdXNpbmcgYW4KPiA+PiBSVEw4MjExLCBkb24ndCBzdXBwb3J0IHJnbWlpLWlkIG1vZGU7
IG9ubHkgcmdtaWkuCj4gPj4gKGh0dHBzOi8vd3d3LnJlYWx0ZWsuY29tL1Byb2R1Y3QvSW5kZXg/
aWQ9Mzk3NiZjYXRlX2lkPTc4NikuICAKPiA+IAo+ID4gV2hpY2ggZXhhY3QgUlRMODIxMSBkb2Vz
IHRoZSBib2FyZCB1c2U/IFlvdSBsaW5rIHRvIGluZm9ybWF0aW9uIGZvcgo+ID4gdGhlIFJUTDgy
MTFGRChJKS1DRywgd2hpY2ggaSBhc3N1bWUgaXMgc3VwcG9ydGVkIGluIExpbnV4IGFzIFJUTDgy
MTFGLiAgCj4gCj4gVGhhbmtzIEFuZHJldzsgSXQgaXNuJ3QgY2xlYXIgdG8gbWUgd2hpY2ggc3Bl
Y2lmaWMgdmFyaWF0aW9uIGl0IGhhcy4gSSdsbAo+IHRha2UgYW5vdGhlciBsb29rIGF0IHRoZSBi
b290IGxvZ3MgYW5kIHNlZS4gVGhlIHNpbGtzY3JlZW4gb24gdGhlIGNoaXBzIGFyZQo+IGZhaW50
LCBidXQgd2lsbCBsb29rIHRoZXJlIHRvby4KCmRtZXNnIHJlcG9ydHMgaXQgaXMgYW4gUlRMODIx
MUYuCgo+ID4gCj4gPiBodHRwczovL2VsaXhpci5ib290bGluLmNvbS9saW51eC92Ni4xNi4zL3Nv
dXJjZS9kcml2ZXJzL25ldC9waHkvcmVhbHRlay9yZWFsdGVrX21haW4uYyNMNTE5Cj4gPiAKPiA+
IFRoaXMgaW5kaWNhdGVzIGl0IHN1cHBvcnRzIGFsbCBmb3VyIFJHTUlJIG1vZGVzLiBBbmQgaW4g
Z2VuZXJhbCwgYWxsCj4gPiBQSFkgZHJpdmVycyBpbiBMaW51eCBmb3IgUkdNSUkgUEhZcyBzdXBw
b3J0IGFsbCBmb3VyIFJHTUlJIG1vZGVzLgo+ID4gICAKPiA+PiBDaGFuZ2luZyB0aGlzIG1ha2Vz
IGEgaHVnZSBkaWZmZXJlbmNlIGluIHRoZSBldGhlcm5ldCB0aHJvdWdocHV0IHNwZWVkLgo+ID4+
IFdpdGggcmdtaWktaWQgbW9kZSBzcGVjaWZpZWQsIHRocm91Z2hwdXQgaXMgYWJvdXQgNi41IE1i
cy4gQ2hhbmdpbmcgdGhpcwo+ID4+IHRvIHJnbWlpIG1vZGUgaW5jcmVhc2VzIHRocm91Z2hwdXQg
dG8gYWJvdXQgOTYwIE1icy4gIAo+ID4gCj4gPiBIZXJlIGlzIHNvbWUgbW9yZSBpbmZvcm1hdGlv
biBhYm91dCB0aGF0IHRoZSBmb3VyIFJHTUlJIG1vZGVzIG1lYW4sCj4gPiBhbmQgaG93IHlvdSBz
aG91bGQgdXNlIHRoZW0gaW4gTGludXg6Cj4gPiAKPiA+IGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4u
Y29tL2xpbnV4L3Y2LjE2LjMvc291cmNlL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5n
cy9uZXQvZXRoZXJuZXQtY29udHJvbGxlci55YW1sI0wyNjQKPiA+IAo+ID4gICAgQW5kcmV3ICAK
PiAKPiBUaGFuayB5b3UhCj4gPiAKPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj4gPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiA+IExpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAgIAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
