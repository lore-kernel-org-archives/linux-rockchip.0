Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B6AAC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jan 2022 10:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gd1Rm9lswScIf4rppUJnF5272NPCPo6jQ6h+i4sh328=; b=RVJ0gPqucUWZ3e
	i1m9b9HrCQ4tVOI5VtcocCpbzdPK07ZX7J43NgFRcMEkqP5tQBSyPawjlFomJ5xyLI0ASBd4vVtcb
	F5HowCGYm6GNWeekmB/49Ew9InKN5Ex6JmJjm1DUF4LZBUvumecz4usIcvgxU1Zhx7QX53pamenuY
	TBGJcj+NReNIHrcv34XxoeJodgqsWb+3Z8FgxiCcGeqORm7rJnsGLWkstt+DT4Nw+0qUYL48iMdC7
	GoKSBz9HiIaP26dQzUCGhd3IxF7Jr+OXyv1sQUvCrJluTyb+Ypqpv0ZQnvQYcwjpE0JGX004Ods4T
	eiGKw5JeUBw5zizWZK5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nArE8-00Efjk-Sl; Fri, 21 Jan 2022 10:33:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nArDy-00Efgj-9k
 for linux-rockchip@lists.infradead.org; Fri, 21 Jan 2022 10:32:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nArDt-0004FI-65; Fri, 21 Jan 2022 11:32:49 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nArDp-0006wy-SX; Fri, 21 Jan 2022 11:32:45 +0100
Date: Fri, 21 Jan 2022 11:32:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 linux-rockchip@lists.infradead.org,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v3 00/22] drm/rockchip: RK356x VOP2 support
Message-ID: <20220121103245.GT23490@pengutronix.de>
References: <20211220110630.3521121-1-s.hauer@pengutronix.de>
 <AA3A26CB-6282-4A6B-99DC-8042DC8926BB@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AA3A26CB-6282-4A6B-99DC-8042DC8926BB@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:28:39 up 40 days, 23:14, 76 users,  load average: 0.12, 0.12, 0.15
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220121_023254_349719_15A84326 
X-CRM114-Status: GOOD (  33.62  )
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

SGkgUGlvdHIsCgpPbiBXZWQsIEphbiAxOSwgMjAyMiBhdCAxMjoyOTo0OVBNICswMTAwLCBQaW90
ciBPbmlzemN6dWsgd3JvdGU6Cj4gCj4gCj4gPiBXaWFkb21vxZvEhyBuYXBpc2FuYSBwcnpleiBT
YXNjaGEgSGF1ZXIgPHMuaGF1ZXJAcGVuZ3V0cm9uaXguZGU+IHcgZG5pdSAyMC4xMi4yMDIxLCBv
IGdvZHouIDEyOjA2Ogo+ID4gCj4gPiAKPiA+IFRoaXJkIHJvdW5kIG9mIHBhdGNoZXMgYW5kIGxh
c3Qgb25lIGZvciB0aGlzIHllYXIuIEkgaG9wZWZ1bGx5IGludGVncmF0ZWQKPiA+IGFsbCByZXZp
ZXcgZmVlZGJhY2suIEFkZGl0aW9uYWxseSB0aGUgZHJpdmVyIGlzIG5vdyBmdWxseSBjb252ZXJ0
ZWQgdG8KPiA+IHJlZ21hcCwgc28gbm8gc3RydWN0IHZvcF9yZWcgbmVjZXNzYXJ5IGFueW1vcmUu
Cj4gPiAKPiA+IFNhc2NoYQo+ID4gCj4gPiBDaGFuZ2VzIHNpbmNlIHYyOgo+ID4gLSBBZGQgcGlu
IG5hbWVzIHRvIEhETUkgc3VwcGx5IHBpbiBkZXNjcmlwdGlvbgo+ID4gLSBBZGQgaGNsayBzdXBw
b3J0IHRvIEhETUkgZHJpdmVyCj4gPiAtIER1YWwgbGljZW5zZSByb2NrY2hpcC12b3AyIGJpbmRp
bmcsIHVwZGF0ZSBiaW5kaW5nCj4gPiAtIEFkZCBIRE1JIGNvbm5lY3RvciB0byBib2FyZCBkdHMg
ZmlsZXMKPiA+IC0gZHJvcCB1bm5lY2Vzc2FyeSBnYW1tYV9sdXQgcmVnaXN0ZXJzIGZyb20gdm9w
Mgo+ID4gLSBVcGRhdGUgZGNsa192b3BbMDEyXSBjbG9jayBoYW5kbGluZywgbm8gbG9uZ2VyIGhh
Y2tzIG5lZWRlZAo+ID4gLSBDb21wbGV0ZSByZWdtYXAgY29udmVyc2lvbgo+ID4gCj4gCj4gU2Fz
Y2hhCj4gCj4gSSdtIHVzaW5nIHlvdSBWT1AyIGNvZGUgb24gcmszNTY2IHR2Ym94ICh4OTYteDYp
IHdpdGggdmVyeSBnb29kIHJlc3VsdHMuCj4gCj4gSSBoYXZlIGp1c3QgZmV3IHF1ZXN0aW9uczoK
PiAKPiAxLiBob3cgc3VwcG9ydCBmb3IgQ0VDIGxvb2tzL3Byb3NwZWN0cyAocGxhbnMgZm9yIGZ1
dHVyZSwgbm90IGluIHRoaXMgY29kZSwgZXhwZWN0aW5nIG90aGVycyBzaG91bGQgaW1wbGVtZW50
LCBldGMpPwoKSSBoYWQgdG8gZ29vZ2xlIHdoYXQgQ0VDIGFjdHVhbGx5IGlzLiBXZSBkb24ndCBo
YXZlIHBsYW5zIHN1cHBvcnRpbmcgaXQuCkl0IGxvb2tzIGxpa2UgdGhpcyBpcyBhIG1hdHRlciBv
ZiB0aGUgSERNSSBkcml2ZXIgc3VwcG9ydGluZyB0aGlzIGFuZApub3QgYm91bmQgdG8gdGhlIHJv
Y2tjaGlwIGRyaXZlci4KCj4gCj4gMi4gVk9QMiBjb2RlIHdvcmtzIG5pY2UgZm9yIG1lIGZvciB4
MTEvZ2xhbW91ciBhbmQgZm9yIEVHTEZTIHdpdGggRUdMIERNQWJ1ZiByZW5kZXJpbmcgYnkgTWVz
YSBFR0xfTElOVVhfRE1BX0JVRl9FWFQuCj4gSSBoYXZlIGlzc3VlIGhvd2V2ZXIgd2l0aCBhcHAu
IHJlbmRlcmluZyB0byBEUk0gcGxhbmVzIChHVUkgaXMgRFJNIHBsYW5lMSwgdmlkZW8gaXMgRFJN
IHBhbmUyKS4gCj4gTXkgcHBwIHN0YXJ0cy93b3JrcyB3aXRob3V0IGFueSBlcnJvcnMgaW4gbG9n
IC0gYnV0IHNjcmVlbiBzdGF5cyB3aXRoIGtlcm5lbCBtZXNzYWdlcyBjb250ZW50Lgo+IChpdCBs
b29rcyB0byBtZSBsaWtlIGkuZS4gYXBwIHJlbmRlcnMgdG8gRFJNIHBsYW5lIGJ1dCBEUk0gZGlz
cGxheSBkcml2ZXIgbm90IHBhc3MgaXQgdG8gQ1JUQy4ganVzdCB3aWxkIGd1ZXNzIGhlcmUuLi4p
LgoKWW91IGVuYWJsZWQgdGhlIHBhbmZyb3N0IGRyaXZlciB3aXRoIG90aGVyIHBhdGNoZXMsIHJp
Z2h0PwoKPiAKPiAzLiBpbiBrZXJuZWwgZG1lc2cgSSBoYXZlIG1hbnk6Cj4gCj4gInJvY2tjaGlw
LWRybSBkaXNwbGF5LXN1YnN5c3RlbTogW2RybV0gKkVSUk9SKiBVbnN1cHBvcnRlZCBmb3JtYXQg
bW9kaWZpZXIgMHg4MTAwMDAwMDAwMDAwMDEiLgoKVGhpcyBtZXNzYWdlIGlzIGNvcnJlY3QuIFRo
aXMgY29ycmVzcG9uZHMgdG8KRFJNX0ZPUk1BVF9NT0RfQVJNXzE2WDE2X0JMT0NLX1VfSU5URVJM
RUFWRUQgYW5kIHRoZSBWT1AyIGRyaXZlciBkb2Vzbid0CnN1cHBvcnQgdGhpcy4gSSBoYXZlIGEg
c2ltaWxhciBwcm9ibGVtIGhlcmUgd2l0aAp3ZXN0b24tc2ltcGxlLWRtYWJ1Zi1lZ2wuICBCeSBk
ZWZhdWx0IHRoaXMgdXNlcyBEUk1fRk9STUFUX1hSR0I4ODg4CndoaWNoIGVuZHMgdXAgYmVpbmcg
UElQRV9GT1JNQVRfQjhHOFI4X1VOT1JNIGluIE1FU0EuIEluCnBhbmZyb3N0X2FmYmNfZm9ybWF0
KCkgd2UgaGF2ZToKCiAgICAgICAgLyogRG9uJ3QgYWxsb3cgc3dpenpsZWQgZm9ybWF0cyBvbiB2
NyAqLwogICAgICAgIHN3aXRjaCAoZm9ybWF0KSB7CiAgICAgICAgY2FzZSBQSVBFX0ZPUk1BVF9C
OEc4UjhBOF9VTk9STToKICAgICAgICBjYXNlIFBJUEVfRk9STUFUX0I4RzhSOFg4X1VOT1JNOgog
ICAgICAgIGNhc2UgUElQRV9GT1JNQVRfQThSOEc4QjhfVU5PUk06CiAgICAgICAgY2FzZSBQSVBF
X0ZPUk1BVF9YOFI4RzhCOF9VTk9STToKICAgICAgICBjYXNlIFBJUEVfRk9STUFUX1g4QjhHOFI4
X1VOT1JNOgogICAgICAgIGNhc2UgUElQRV9GT1JNQVRfQThCOEc4UjhfVU5PUk06CiAgICAgICAg
Y2FzZSBQSVBFX0ZPUk1BVF9COEc4UjhfVU5PUk06CiAgICAgICAgY2FzZSBQSVBFX0ZPUk1BVF9C
NUc2UjVfVU5PUk06CiAgICAgICAgICAgICAgICBpZiAoZGV2LT5hcmNoID49IDcpCiAgICAgICAg
ICAgICAgICAgICAgICAgIHJldHVybiBQSVBFX0ZPUk1BVF9OT05FOwoKICAgICAgICAgICAgICAg
IGJyZWFrOwogICAgICAgIGRlZmF1bHQ6CiAgICAgICAgICAgICAgICBicmVhazsKICAgICAgICB9
CgpUaGlzIG1lYW5zIHRoZSBkcml2ZXIgd29uJ3QgZG8gQUZCQyB3aXRoIHRoYXQgZm9ybWF0IGFu
ZCBwaWNrcwpEUk1fRk9STUFUX01PRF9BUk1fMTZYMTZfQkxPQ0tfVV9JTlRFUkxFQVZFRCBpbnN0
ZWFkLiBOb3cgd2VzdG9uIGlzCmNsZXZlciBlbm91Z2ggdG8gbm90IHBhc3MgdGhhdCBpbnRvIHRo
ZSBWT1AyIGRyaXZlciwgYXBwYXJlbnRseSB5b3VyCmFwcGxpY2F0aW9uIGlzIG5vdCBhbmQgYXMg
YSByZXN1bHQgeW91IHNlZSB0aGF0IG1lc3NhZ2UuCgpJbiB3ZXN0b24tc2ltcGxlLWRtYWJ1Zi1l
Z2wgSSBjYW4gcGFzcyBhIHN1aXRhYmxlIGZvcm1hdCBvbiB0aGUgY29tbWFuZApsaW5lLCBpbiBt
eSBjYXNlIEkgdXNlIERSTV9GT1JNQVRfQUJHUjg4ODggKHdoaWNoIGJlY29tZXMKUElQRV9GT1JN
QVRfUjhHOEI4QThfVU5PUk0pLiBXaXRoIHRoaXMgdGhlIHBhbmZyb3N0IGRyaXZlciBkb2VzIEFG
QkMKd2hpY2ggdGhlbiBjYW4gYmUgcmVuZGVyZWQgaW4gdGhlIFZPUDIgY2x1c3RlciB3aW5kb3cg
b3ZlcmxheS4KCj4gCj4gSXQgY29tZXMgZnJvbSBNRVNBIGkgdGhpbmsgLSBidXQgaSBzdXNwZWN0
IGJlY2F1c2UgVk9QMiBwcm92aWRlcwo+IHVua25vd24vd3JvbmcgRFJNIG1vZGlmaWVyIHRvIG1l
c2E/CgpOb3BlLCB0aGUgbW9kaWZpZXJzIHRoZSBWT1AyIGRyaXZlciBwcm9wYWdhdGVzIGFyZSBj
b3JyZWN0LiBJdCBkb2Vzbid0CmNsYWltIHRvIHN1cHBvcnQgRFJNX0ZPUk1BVF9NT0RfQVJNXzE2
WDE2X0JMT0NLX1VfSU5URVJMRUFWRUQuCgpTYXNjaGEKCi0tIApQZW5ndXRyb25peCBlLksuICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfApT
dGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAgICAgICAgfCBodHRwOi8vd3d3LnBl
bmd1dHJvbml4LmRlLyAgfAozMTEzNyBIaWxkZXNoZWltLCBHZXJtYW55ICAgICAgICAgICAgICAg
ICAgfCBQaG9uZTogKzQ5LTUxMjEtMjA2OTE3LTAgICAgfApBbXRzZ2VyaWNodCBIaWxkZXNoZWlt
LCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAgKzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
