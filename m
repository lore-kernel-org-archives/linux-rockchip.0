Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20759D3CCAB
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jan 2026 09:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pmiMQBAlV/SkFH5/p5RVop1lVQXXW33bz2fiDKed7l8=; b=QTcbpoJp/iXrIT
	8HRK4wK3gztxJNAisfgsNbn+v5YdyR+t1/Gwj3CsCoSyP7ER3P0YjkCg2yMD+/25/5lIDCrsPNYmN
	6xpbK4oh7v2DtLFfH8FexItl6hC3OFNhnfB6V+21QZGc4EBoU4EsT60dlAHXOjUxpwyQKAVhiqLc0
	uUUTIk81o4WI2gpJ6kOa445rKqs3i2YsBsuzdWNrlmXX9igRCVR7yzQObWaahel8y1Qxab1jP8fxk
	ZYTejWp5fZdrDXpQqPDhDFqzuevRGXrVdLc7D+ZkCoiyvaV0OpSgvh5X6Gam8XMfdA3zf2UZt+LXK
	3CpWCD1YpQngLwQ/UO2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vggSR-0000000Dsya-1VlQ;
	Fri, 16 Jan 2026 09:49:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vggSP-0000000Dsxy-1AcH
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Jan 2026 09:49:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=cqCixF2Pc5MhdaJsgpzo2YJbIZacc7IssS0kDdn60Ns=; b=JflKDW3ySyVhq3WARCThhQnbfT
	F6rL0N6RJ6Oi/s3IWHZLTs9mS1bGK5B6YDeUQNjBteA1rNHqKsVB2W4VZU3BUwyxiQ5N3QKi0IRNk
	EOrorwfYyIP7SgRuVq8fsDzL8mOF7C6Jg12ow5sJqGQF8DY1sIoSJxTtNpeLSIg2lBSqBhob1Fml8
	bB+xpxrMRskBooncfxzEDj7Ro0NIJO2hgun+OyncWZuVhg8k1Nb0q+yVjjiihf4MT0diSQNzMCeDA
	WckDLy2jUecf2mwT+ZvN/7aidht/PPBxuWdlEol9AgfM2Cbs26izPUtFKlhBmM8NB0JNP/xA8jP/z
	tMDFXoTQ==;
Received: from i53875a97.versanet.de ([83.135.90.151] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vggSL-002bWj-Jy; Fri, 16 Jan 2026 10:49:26 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>,
 dmitry.torokhov@gmail.com
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 simona@ffwll.ch, airlied@gmail.com, tzimmermann@suse.de, mripard@kernel.org,
 maarten.lankhorst@linux.intel.com, jesszhan0024@gmail.com,
 neil.armstrong@linaro.org, jagan@edgeble.ai, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, aweinzerl13@yahoo.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 5/6] dt-bindings: input: touchscreen: goodix: Add "panel" property
Date: Fri, 16 Jan 2026 10:49:25 +0100
Message-ID: <7863194.oDFzTOozpa@diego>
In-Reply-To: <20260113195721.151205-6-macroalpha82@gmail.com>
References: <20260113195721.151205-1-macroalpha82@gmail.com>
 <20260113195721.151205-6-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_014929_314631_9C17E9E9 
X-CRM114-Status: GOOD (  11.19  )
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

SGkgQ2hyaXMsCgpBbSBEaWVuc3RhZywgMTMuIEphbnVhciAyMDI2LCAyMDo1NzoyMCBNaXR0ZWxl
dXJvcMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIENocmlzIE1vcmdhbjoKPiBGcm9tOiBDaHJp
cyBNb3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgo+IAo+IEFkZCBhICJwYW5lbCIgcHJv
cGVydHkgdG8gZGVmaW5lIGEgcmVsYXRpb25zaGlwIGJldHdlZW4gYSB0b3VjaHNjcmVlbgo+IGFu
ZCBhbiBhc3NvY2lhdGVkIHBhbmVsIHdoZW4gbW9yZSB0aGFuIG9uZSBvZiBlYWNoIGV4aXN0IGlu
IGEgZGV2aWNlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlzIE1vcmdhbiA8bWFjcm9tb3JnYW5A
aG90bWFpbC5jb20+Cj4gLS0tCj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9p
bnB1dC90b3VjaHNjcmVlbi9nb29kaXgueWFtbCB8IDIgKysKClRoaXMgcGF0Y2ggaXMgcGFydCBv
ZiBhIGRpdmVyc2Ugc2VyaWVzIHJpZ2h0IG5vdyAoZHJtLXBhbmVsLCBpbnB1dCwgZHRzKQphbmQg
dGhlcmVmb3JlIHBvc3NpYmx5IGNvdWxkIGJlIG92ZXJsb29rZWQgYnkgRG1pdHJ5LCBhcyB0aGUg
cGF0Y2ggc2hvdWxkCmxpa2VseSBnbyB0aHJvdWdoIHRoZSBpbnB1dCBzdWJzeXN0ZW0gKG9yIHdv
dWxkIGF0IGxlYXN0IG5lZWQgYW4gQWNrIGZyb20KRG1pdHJ5LCBmb3IgbWUgdG8gdGFrZSBpdCBh
bG9uZykgLgoKQmVzdCB3YXkgd291bGQgcHJvYmFibHkgYmUgdG8gcGljayBSb2IncyBBY2sgYW5k
IHJlc2VuZCBpdCBzZXBhcmF0ZWx5Cihwb2ludGluZyB0byB0aGlzIHNlcmllcyBhcyB1c2VyKS4K
CgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
