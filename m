Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4E52C43327
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Jul 2026 16:42:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XVDq8ukPz+RTIlDbOZ57OZp18FD9nmzlAbArYZLZ9YM=; b=OzXmbqsOdcmd+i
	ipMQdvNyv+mXsucntPQ0llrcsJG8zICjV/4Ge4eARkUcgV6Wdj9QZ1cMX1OZIdJS3PJvGWdDKDC8/
	4Qw+Vt2E3UQq+QCvPORi4WkGky4qv/+/KNGbn05aqJP7+p7t5zUdgDps9krakguFVQhOm+SvDJp8o
	ntKG4je/ODvEJ1fxtHI6ujrBJAA7Z5Ls2pPr0PzgwotQkZqlvXMkri160grCc1tpybhh6iV+aW3N6
	B8srbbIdAHX3oQOKLGGio35pSxsnehwlVfkUp84hxKAEDWRDcGMT5JCr84EJ7ivjgyJMXvl81FADF
	es5oOJcm7AxkKCH1NkHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfKUW-000000052bU-3QYa;
	Thu, 02 Jul 2026 16:42:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfKUT-000000052aA-3C6b;
	Thu, 02 Jul 2026 16:42:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=8BWKyXVtcU1aypz3TbPj5gFArFFOSYSIbmVQ2MSXUbc=; b=Gh4yA0CjfBzQMYw+w02KsUA+fF
	ztrApVsVi2MusGUVZp4iEF/Gk+GJukF8T4u7eAYy/511gB2XClPj4s3M5/wVq9Qk0QhuW0kXT6ITz
	LNrQhfcTLIDpfIfIU7iCGG89Qnav9aVloi3J/qh8nVGLmFWgCDmnLNmuvlzbwuR895lhl9OGm3OxR
	qwi/6W+EzNVi4+jgoXdfTarwbjr+VvyPDA0ORr7/8JuynSvQg/+dLgaD8sc5Zdk4UH1MNX51o6pqk
	gTyfm2326qpd8JQzoYc8t0fk77XGNSFJgun8WSgBnaTAlM3kLui18eNUP2ChiQelzRjz6Low3KX5M
	0JpUaBBg==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Marc Kleine-Budde <mkl@pengutronix.de>,
 linux-can <linux-can@vger.kernel.org>, 1579567540@qq.com,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vincent Mailhol <mailhol@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, kernel <kernel@pengutronix.de>,
 Conor Dooley <conor+dt@kernel.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Shengjiu Wang <shengjiu.wang@nxp.com>, Pengpeng Hou <pengpeng@iscas.ac.cn>,
 Russell King <rmk+kernel@armlinux.org.uk>,
 Eric Biggers <ebiggers@kernel.org>,
 Mario Limonciello <mario.limonciello@amd.com>,
 Karl Mehltretter <kmehltretter@gmail.com>, Yixun Lan <dlan@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, devicetree <devicetree@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 1/4] dt-bindings: can: rockchip: add rk3588 CAN-FD compatible
Date: Thu, 02 Jul 2026 18:42:06 +0200
Message-ID: <4310510.6PsWsQAL7t@diego>
In-Reply-To: <636d10c0-670d-4586-b604-7559d2a24185@kernel.org>
References: <20260702140654.2961561-1-1579567540@qq.com> <2459655.BjyWNHgNrj@diego>
 <636d10c0-670d-4586-b604-7559d2a24185@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260702_094217_799158_7A2FB004 
X-CRM114-Status: GOOD (  15.85  )
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

QW0gRG9ubmVyc3RhZywgMi4gSnVsaSAyMDI2LCAxODozOTo1MyBNaXR0ZWxldXJvcMOkaXNjaGUg
U29tbWVyemVpdCBzY2hyaWViIEtyenlzenRvZiBLb3psb3dza2k6Cj4gT24gMDIvMDcvMjAyNiAx
ODowMSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gPiBBbSBEb25uZXJzdGFnLCAyLiBKdWxpIDIw
MjYsIDE2OjA2OjUxIE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgMTU3OTU2
NzU0MEBxcS5jb206Cj4gPj4gRnJvbTogQ3VuaGFvIEx1IDwxNTc5NTY3NTQwQHFxLmNvbT4KPiA+
Pgo+ID4+IFJLMzU4OCBpbnRlZ3JhdGVzIGEgUm9ja2NoaXAgQ0FOLUZEIGNvbnRyb2xsZXIgdmFy
aWFudCB0aGF0IGlzIG5vdAo+ID4+IGZ1bGx5IGNvbXBhdGlibGUgd2l0aCBSSzM1Njh2Mi4gVGhl
IFJYIEZJRk8gY291bnQgcmVnaXN0ZXIgZmllbGQgaXMKPiA+PiBlbmNvZGVkIGluIGJpdHMgNzo1
IG9uIFJLMzU4OCwgd2hpbGUgUkszNTY4djIgdXNlcyBiaXRzIDY6NC4KPiA+Pgo+ID4+IEFkZCBh
IGRlZGljYXRlZCByb2NrY2hpcCxyazM1ODgtY2FuZmQgY29tcGF0aWJsZSB0byBkZXNjcmliZSB0
aGlzCj4gPj4gdmFyaWFudC4gRG8gbm90IHVzZSByb2NrY2hpcCxyazM1Njh2Mi1jYW5mZCBhcyBh
IGZhbGxiYWNrLCBiZWNhdXNlIHRoYXQKPiA+PiB3b3VsZCBkZXNjcmliZSBhIHJlZ2lzdGVyIGxh
eW91dCB0aGF0IGRvZXMgbm90IG1hdGNoIHRoZSBoYXJkd2FyZS4KPiA+Pgo+ID4+IENoYW5nZXMg
aW4gdjI6Cj4gPj4gLSBVc2UgZW51bSBmb3IgdGhlIHNpbmdsZS1jb21wYXRpYmxlIGVudHJpZXMs
IGFzIHN1Z2dlc3RlZCBieSBLcnp5c3p0b2YuCj4gPj4gLSBSZXdvcmQgdGhlIGNvbW1pdCBtZXNz
YWdlIHRvIGV4cGxhaW4gdGhlIGhhcmR3YXJlIGRpZmZlcmVuY2UgaW5zdGVhZAo+ID4+ICAgb2Yg
cmVmZXJyaW5nIHRvIExpbnV4IGRyaXZlciBtYXRjaCBkYXRhLgo+ID4+Cj4gPj4gU2lnbmVkLW9m
Zi1ieTogQ3VuaGFvIEx1IDwxNTc5NTY3NTQwQHFxLmNvbT4KPiA+IAo+ID4gYWZ0ZXIgZml4aW5n
ICBLcnp5c3p0b2YncyBjb21tZW50Ogo+ID4gUmV2aWV3ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxo
ZWlrb0BzbnRlY2guZGU+Cj4gPiAKPiA+IGFuZCBkb2luZyBkdGJzY2hlY2sgb2YgdGhlIGJpbmRp
bmcgYWdhaW5zdCB0aGUgZHQtcGF0Y2hlczoKPiA+IFRlc3RlZC1ieTogSGVpa28gU3R1ZWJuZXIg
PGhlaWtvQHNudGVjaC5kZT4KPiAKPiBNYWtlZmlsZS9idWlsZCBsZXZlbCBzdGVwcyBhcmUgbm90
IHRlc3RpbmcuIFBsZWFzZSBkb24ndCBwcm92aWRlIHN1Y2gKPiB0YWdzIGZvciBiaW5kaW5ncy4g
T3RoZXJ3aXNlIGFsbCBiaW5kaW5ncyB3b3VsZCBjYXJyeSBSb2IncyB0YWcsIGJlY2F1c2UKPiBo
ZSB3cm90ZSB0aGUgYm90IHdoaWNoIGRvZXMgc3VjaCB0ZXN0aW5nLgoKb2sgLi4uIHdpbGwga2Vl
cCB0aGF0IGluIG1pbmQgZm9yIHRoZSBmdXR1cmUKCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
