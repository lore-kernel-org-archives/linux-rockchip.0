Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6C8BCC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 08:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UUeW5J/4oH1cldxGWGFbDU+NcZjIkKu4il33B2q4NqA=; b=tdGOH3+T/cyA85
	i2lZhMMwLp2NwAJXDi1Y/EGSK3EBwIRHnuGO93LJC7259Ffd/nWTqtYkgSrC1Q+CNsypPeqOe66Oi
	DWS9ERTD9CnfdgywL6LEA6ioQiWwTxSfWPEawdkCBNLjfIz7ZyObbg4G6zXKnTIWRyyxmTL2yEPID
	jlDhI1SszBGsi9nXCTeeSxTDCzaonh/EB7se3NEyi7P4ftfCC1hjUClmCvvLFCm2JZCGTUDL84xzu
	xUrKYrbcLY4zNSLBX2heistTZRbCHg0Ymzvf2OCHcAmZdiNd31LDkzcwhp3YlhFZ7/5R32ZCnn9/o
	DZf3TcaeLyBS1OgS4wSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRrX2-007jKJ-7y; Wed, 09 Mar 2022 08:18:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRrWn-007jGU-Jv
 for linux-rockchip@lists.infradead.org; Wed, 09 Mar 2022 08:18:39 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nRrWQ-0000mv-AP; Wed, 09 Mar 2022 09:18:14 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nRrWM-0007ek-O8; Wed, 09 Mar 2022 09:18:10 +0100
Date: Wed, 9 Mar 2022 09:18:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "zhangqing@rock-chips.com" <zhangqing@rock-chips.com>
Cc: =?utf-8?B?6Zer5a2d5Yab?= <andy.yan@rock-chips.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 "robin.murphy" <robin.murphy@arm.com>,
 =?utf-8?B?5byg5pm0?= <elaine.zhang@rock-chips.com>,
 huangtao <huangtao@rock-chips.com>,
 devicetree <devicetree@vger.kernel.org>,
 =?utf-8?B?5pON55Ge5p2w?= <algea.cao@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 pgwipeout <pgwipeout@gmail.com>, hjc <hjc@rock-chips.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 =?utf-8?B?5p2o5Yev?= <Kever.yang@rock-chips.com>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 kernel <kernel@pengutronix.de>, Dmitry Osipenko <digetx@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Subject: Re: Re: [PATCH v7 10/24] drm/rockchip: dw_hdmi: Add support for hclk
Message-ID: <20220309081810.GH405@pengutronix.de>
References: <78207d97-b5a1-9792-8ec9-11fcf2e00370@gmail.com>
 <90c61299-f02c-607b-4734-7134852ef0a6@arm.com>
 <20220225131154.GE19585@pengutronix.de>
 <20220228141921.GN19585@pengutronix.de>
 <5184ecf2-8734-3121-cbbc-5dcfcf0d02f8@arm.com>
 <20220302112528.GV19585@pengutronix.de>
 <20220304142235.GL22780@pengutronix.de>
 <9ea0134e-aac7-60e1-5c58-ae31b4e1c422@collabora.com>
 <035f2dfd-bf35-abca-32bf-2be85cc88f8a@rock-chips.com>
 <20220309094139198367142@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220309094139198367142@rock-chips.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:57:51 up 88 days, 16:43, 82 users,  load average: 0.00, 0.03, 0.08
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_001837_665499_B9AC9E54 
X-CRM114-Status: GOOD (  30.35  )
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

SGkgRWxhaW5lLAoKT24gV2VkLCBNYXIgMDksIDIwMjIgYXQgMDk6NDE6MzlBTSArMDgwMCwgemhh
bmdxaW5nQHJvY2stY2hpcHMuY29tIHdyb3RlOgo+ICAgIGhp77yMYWxs77yaCj4gICAgTGV0IG1l
IGV4cGxhaW4gdGhlIGNsb2NrIGRlcGVuZGVuY3nvvJoKPiAgICBGcm9tIHRoZSBjbG9jayB0cmVl
LCBwY2xrX3ZvMCBhbmQgaGNsa192bzAgYXJlIGNvbXBsZXRlbHkgaW5kZXBlbmRlbnQKPiAgICBj
bG9ja3Mgd2l0aCBkaWZmZXJlbnQgcGFyZW50IGNsb2NrcyBhbmQgZGlmZmVyZW50IGNsb2NrIGZy
ZXF1ZW5jaWVz44CCCj4gICAgQnV0IHRoZSBuaXXCoHBhdGjCoGlzIDoKPiAgICBwY2xrX3ZvIGlz
IGRlcGVuZGVudCBvbiBoY2xrX3ZvLCBhbmQgdGhlIHBjbGtfdm8gbml1IGdvZXMgdGhyb3VnaMKg
IGhjbGtfdm8KPiAgICBuaXUuCgpUaGFua3MsIHRoaXMgaXMgdGhlIGluZm9ybWF0aW9uIHdlIGFy
ZSBsb29raW5nIGZvci4gV2hhdCBpcyAiTklVIiBidHc/CkkgdGhpbmsgdGhpcyBpcyBldmVuIGRv
Y3VtZW50ZWQgaW4gdGhlIFJlZmVyZW5jZSBNYW51YWwuIFdpdGggdGhlIHJpZ2h0CnBvaW50ZXIg
SSBqdXN0IGZvdW5kOgoKPiBBIHBhcnQgb2Ygbml1IGNsb2NrcyBoYXZlIGEgZGVwZW5kZW5jZSBv
biBhbm90aGVyIG5pdSBjbG9jayBpbiBvcmRlciB0bwo+IHNoYXJpbmcgdGhlIGludGVybmFsIGJ1
cy4gV2hlbiB0aGVzZSBjbG9ja3MgYXJlIGluIHVzZSwgYW5vdGhlciBuaXUKPiBjbG9jayBtdXN0
IGJlIG9wZW5lZCwgYW5kIGNhbm5vdCBiZSBnYXRlZC4gIFRoZXNlIGNsb2NrcyBhbmQgdGhlIHNw
ZWNpYWwKPiBjbG9jayBvbiB3aGljaCB0aGV5IGFyZSByZWxpZWQgYXJlIGFzIGZvbGxvd2luZzoK
Pgo+IENsb2NrcyB3aGljaCBoYXZlIGRlcGVuZGVuY3kgICAgIFRoZSBjbG9jayB3aGljaCBjYW4g
bm90IGJlIGdhdGVkCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiAuLi4KPiBwY2xrX3ZvX25pdSwgaGNsa192b19zX25p
dSAgICAgICBoY2xrX3ZvX25pdQo+IC4uLgoKCgo+ICAgIFRoZSBjbG9jayB0cmVlIGFuZCBOSVUg
YnVzIHBhdGhzIGFyZSBkZXNpZ25lZCBpbmRlcGVuZGVudGx5Cj4gICAgU28gdGhlcmUgYXJlIHRo
cmVlIHNvbHV0aW9ucyB0byB0aGlzIHByb2JsZW06Cj4gICAgMS4gRFRTIGFkZHMgYSByZWZlcmVu
Y2UgdG8gSGNsayB3aGlsZSByZWZlcmVuY2luZyBQY2xrLgo+ICAgIDIsIFRoZSBkZXBlbmRlbnQg
Y2xvY2sgaXMgYWx3YXlzIG9uLCBzdWNoIGFzIEhDTEtfVk8wLMKgYnV0IHRoaXMgaXMgbm90Cj4g
ICAgZnJpZW5kbHkgZm9yIHRoZSBzeXN0ZW0gcG93ZXIuCj4gICAgMy4gQ3JlYXRlIGEgbm9uLWNs
b2NrLXRyZWUgcmVmZXJlbmNlLsKgQ2xrLWxpbmssIGZvciBleGFtcGxlLCB3ZSBoYXZlIGFuCj4g
ICAgaW1wbGVtZW50YXRpb24gaW4gb3VyIGludGVybmFsIGJyYW5jaCwgYnV0IFVwc3RyZWFtIGlz
IG5vdCBzdXJlIGhvdyB0bwo+ICAgIHB1c2ggaXQuCgpJIHRob3VnaHQgYWJvdXQgc29tZXRoaW5n
IHNpbWlsYXIuIFRoYXQgd291bGQgaGVscCB1cyBoZXJlIGFuZCBvbiBpLk1YCndlIGhhdmUgYSBz
aW1pbGFyIHNpdHVhdGlvbjogV2UgaGF2ZSBvbmUgYml0IHRoYXQgc3dpdGNoZXMgbXVsdGlwbGUK
Y2xvY2tzLiBUaGF0IGFzIHdlbGwgY2Fubm90IGJlIGRlc2lnbmVkIHByb3Blcmx5IGluIHRoZSBj
bG9jayBmcmFtZXdvcmsKY3VycmVudGx5LCBidXQgY291bGQgYmUgbW9kZWxsZWQgd2l0aCBhIGNv
bmNlcHQgb2YgbGlua2VkIGNsb2Nrcy4KCkRvaW5nIHRoaXMgc291bmRzIGxpa2UgcXVpdGUgYSBi
aXQgb2Ygd29yayBhbmQgZGlzY3Vzc2lvbiB0aG91Z2gsIEkKZG9uJ3QgcmVhbGx5IGxpa2UgaGF2
aW5nIHRoaXMgYXMgYSBkZXBlbmRlbmN5IHRvIG1haW5saW5lIHRoZSBWT1AyCmRyaXZlci4gSSB2
b3RlIGZvciAxLiBpbiB0aGF0IGNhc2UsIHdlIGNvdWxkIHN0aWxsIGlnbm9yZSB0aGUgaGNsayBp
bgpkdHMgbGF0ZXIgd2hlbiB3ZSBoYXZlIGxpbmtlZCBjbG9ja3MuCgpTYXNjaGEKCi0tIApQZW5n
dXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfApTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAgICAgICAg
fCBodHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAozMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55
ICAgICAgICAgICAgICAgICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2Vy
aWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2
OTE3LTU1NTUgfAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
