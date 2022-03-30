Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A1B2C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 09:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jKz/N/tHhwguYWKNhL8Zo7aoZcYQM5BUhyOehuUfUE8=; b=egW6KL8sQCsIu2
	SY2YyrWymZSIbN4929OTv/YM/GtORMomMYDQIZ9DV7/3GQBMp/EytgReqghfmKViPHDxv7lRANXH2
	awYj8LOSUq+jSyBoxP3X5ENvFeL2FVGa9IQDF9TZrgrWGvc4B0FlOONtYR7IvyfpAt36qLk1gT0ra
	/2BKlh1E4odw9ScOuQadqKII/RAWMOCdfU2iU3YSbdvv8xvNRn5dJMoU9XO+7/Vc9774hI6AkLlj2
	1QQhokicZLe0b6vkyDFsY5u58YVrpJglq6c076xy7MUYYaKXjgaOzMQ9TXhx8gxsD7cI2XMfBIZ9i
	LZOUEUHJ9sdfuO0pWq0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZUvu-00F34X-5o; Wed, 30 Mar 2022 09:48:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZUtz-00F2Fc-47
 for linux-rockchip@lists.infradead.org; Wed, 30 Mar 2022 09:46:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nZUtt-000338-PU; Wed, 30 Mar 2022 11:46:01 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nZUto-0001va-Qn; Wed, 30 Mar 2022 11:45:56 +0200
Date: Wed, 30 Mar 2022 11:45:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: "piotro.oniszczuk@google.com" <piotr.oniszczuk@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
Message-ID: <20220330094556.GZ12181@pengutronix.de>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220330072822.GX12181@pengutronix.de>
 <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 11:09:08 up 109 days, 17:54, 73 users,  load average: 0.16, 0.15,
 0.14
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_024607_223546_D349C82A 
X-CRM114-Status: GOOD (  34.82  )
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

T24gV2VkLCBNYXIgMzAsIDIwMjIgYXQgMTA6NDE6NTZBTSArMDIwMCwgcGlvdHJvLm9uaXN6Y3p1
a0Bnb29nbGUuY29tIHdyb3RlOgo+IAo+IAo+ID4gV2lhZG9tb8WbxIcgbmFwaXNhbmEgcHJ6ZXog
U2FzY2hhIEhhdWVyIDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPiB3IGRuaXUgMzAuMDMuMjAyMiwg
byBnb2R6LiAwOToyODoKPiA+IAo+ID4+IAo+ID4+IFlvdSBjYW4gZWFzaWx5IHJlcHJvZHVjZSB3
aXRoIG1vZGV0ZXN0IHV0aWxpdHk6Cj4gPj4gCj4gPj4gbW9kZXRlc3QgLVAgNDNANjc6MTkyMHgx
MDgwQE5WMTIKPiA+IAo+ID4gVGhpcyBvbmx5IHNldHMgdGhlIG92ZXJsYXksIGJ1dCBob3cgZGlk
IHlvdSBnZXQgc29tZXRoaW5nIG9uIHRoZSBzY3JlZW4KPiA+IGluaXRpYWxseT8KCkxldCBtZSBy
ZXBocmFzZSB0aGlzOiBUaGUgYWJvdmUgc2V0cyBhIHBsYW5lLCBidXQgaXQgZG9lc24ndCBzZXQg
YSBtb2RlCm9uIHRoZSBjcnRjLiBXaGVuIG15IHN5c3RlbSBib290cyB1cCB0aGVuIHRoZSBvdXRw
dXQgb2YgbW9kZXRlc3QgbG9va3MKbGlrZSB0aGlzOgoKRW5jb2RlcnM6CmlkICAgICAgY3J0YyAg
ICB0eXBlICAgIHBvc3NpYmxlIGNydGNzICBwb3NzaWJsZSBjbG9uZXMKNjggICAgICAwICAgICAg
IFRNRFMgICAgMHgwMDAwMDAwMSAgICAgIDB4MDAwMDAwMDEKQ29ubmVjdG9yczoKaWQgICAgICBl
bmNvZGVyIHN0YXR1cyAgICAgICAgICBuYW1lICAgICAgICAgICAgc2l6ZSAobW0pICAgICAgIG1v
ZGVzICBlbmNvZGVycwo2OSAgICAgIDAgICAgICAgY29ubmVjdGVkICAgICAgIEhETUktQS0xICAg
ICAgICA1MzB4MzAwICAgICAgICAgOSAgICAgIDY4CkNSVENzOgppZCAgICAgIGZiICAgICAgcG9z
ICAgICBzaXplCjY3ICAgICAgMCAgICAgICAoMCwwKSAgICgweDApCiAgIzAgIG5hbiAwIDAgMCAw
IDAgMCAwIDAgMCBmbGFnczogOyB0eXBlOiAKCk5vIG1vZGUgaXMgc2V0IG9uIHRoZSBDUlRDIGFu
ZCB0aGUgZW5jb2Rlci9jb25uZWN0b3IvY3J0YyBhcmUgbm90IGJvdW5kCnRvIGVhY2ggb3RoZXIs
IGNvbnNlcXVlbnRseSB0aGUgc2NyZWVuIGlzIGluIHN0YW5kYnkuICJtb2RldGVzdCAtUAo0M0A2
NzoxOTIweDEwODBATlYxMiIgZG9lc24ndCBjaGFuZ2UgdGhpcywgc3RpbGwgbm8gbW9kZSBzZXQu
IEhlbmNlIG15CnF1ZXN0aW9uOiBIb3cgZGlkIHlvdSBzZXQgYSBtb2RlIGluaXRpYWxseT8KCj4g
PiAKPiAKPiBJJ20gbm90IHN1cmUgdGhhdCBhYm92ZSBjb21tYW5kIG9ubHkgc2V0cyBwbGFuZS4K
PiBPbiBvdGhlciBTb0NzIGnigJltIHRlc3RpbmcgaXQgZ2l2ZXMgZXhwZWN0ZWQgcmVzdWx0czog
ZGlhZ29uYWwgY29sb3JlZCBzdHJpcGVzLgo+IFRoZXJlIGlzIHNpbmdsZSBleGNlcHRpb246IHJr
MzU2eCB3aXRoIHZvcDIgLSB3aGVyZSBzY3JlZW4gaXMgZ3JlZW4gdW5sZXNzIGkg4oCeZml4L2Vu
YWJsZeKAnSBieSBwbGF5aW5nIHdpdGggcGxhbmUgIzY5ICAgCj4gCj4gPiBJIGRpZCB3aXRoICJt
b2RldGVzdCAtcyA2OUA2NzoxOTIweDEwODAgLWQiIGFuZCB3aXRoIHRoaXMgaXQgd29ya3MgYXMK
PiA+IGV4cGVjdGVkLCBJIGNhbid0IHJlcHJvZHVjZSBhbnkgZ3JlZW4gc2NyZWVuIGlzc3VlIGhl
cmUuCj4gCj4gSSBzZWUgeW91IGFyZSB1c2luZyBwbGFuZSAjNjkuCj4gV2h5IG5vdCAjNDM/CgpJ
IHVzZWQgIm1vZGV0ZXN0IC1zIDY5QDY3OjE5MjB4MTA4MCAtZCIgdG8gc2V0IGEgbW9kZS4gVGhl
ICc2OScgaXMgdGhlCmNvbm5lY3RvciBpZCwgbm90IGEgcGxhbmUuCgo+IElzIHBsYW5lICM0MyB3
b3JraW5nIG9rIGZvciB5b3U/CgpZZXMuCgo+IAo+IEnigJltIHVzaW5nIHBsYW5lICM0MyBiZWNh
dXNlOiBhcHBsaWNhdGlvbiAocGxheWVyKSAtIGF0IHN0YXJ0IC0gIHF1ZXJpZXMgYWxsIHBsYW5l
cyBhbmQgc2VsZWN0cyBmaXJzdCBwbGFuZSBvZmZlcmluZyBmb3JtYXQgYmVpbmcgd2l0aGluIG9m
ZmVyZWQgZm9ybWF0cyBieSBwcm92aWRlciAodmlkZW8gZGVjb2RlcjsgTlYxMiBmcm9tIHJrMzU2
eCBoYW50cm8gdmlkZW8gZGVjb2RlcikuCj4gCj4gcGxzIGxvb2sgb24gYXBwIGxvZyByZWdhcmRp
bmcgcGxhbmVzIGRpc2NvdmVyeSBhbmQgZWxlY3Rpb246IGh0dHBzOi8vcGFzdGViaW4uY29tL2Vk
QWhiY3ZVCj4gCj4gTm93IC0gbG9va2luZyB3aGF0IFZPUDIgcmVwb3J0czogaHR0cHM6Ly9wYXN0
ZWJpbi5jb20vOHVqa2FWOW4KPiBpcyBzZWUgZmlyc3QgcGxhbmUgYWNjZXB0aW5nIE5WMTIgaXMg
IzQzIC0gc28gbXkgYXBwIGlzIGVsZWN0aW5nIHRoaXMgcGxhbmUgdG8gdXNlIGZvciBkaXNwbGF5
aW5nIHZpZGVvLgo+IAo+IFRoaXMgc3RyYXRlZ3kgd29ya3Mgd2VsbCBmb3IgYWxsIDEzIHBsYXRm
b3JtcyBp4oCZbSBzdXBwb3J0aW5nIChvbmx5IDEzIGkgaGF2ZSBpbiBteSB0ZXN0YmVkKS4KPiAK
PiBJZiB0aGlzIGFwcHJvYWNoIGlzIC0gYnkgWW91cnMgVk9QMiBwYXRjaGVzIGdvYWwgLSBpcyBu
b3Qgc3VwcG9ydGVkIC0gdGhlbiBPSy4KPiBJIHVuZGVyc3RhbmQgdGhpcyA6LSkKPiAKPiBCdXQg
LSBpZiBZb3Ugd2FudCB0byBzdXBwb3J0IERSTSBmZWF0dXJlcyBpbiB0aGUgc2FtZSB3YXkgbGlr
ZSBvdGhlciBTT0MgYXJlIGRvaW5nIChhbmQgd29ya2luZyB3ZWxsIHdpdGggS09ESS9NeXRoVFYv
bXB2L2V0YykgLSB0aGVuIGkgdGhpbms6Cj4gCj4gMVwgRFJNIHBsYW5lICM0MyBub3Qgc3VwcG9y
dHMgTlYxMiAtIGJ1dCBjb2RlIHdyb25nbHkgcmVwb3J0cyBOVjEyIGZvcm1hdCBpcyBzdXBwb3J0
ZWQsIG9yCj4gMlwgRFJNIHBsYW5lICM0MyBpcyBzdXBwb3J0ZWQgLSBidXQgY29kZSBoYXMgYnVn
IHJlc3VsdGluZyB3aXRoIGdyZWVuIHNjcmVlbi4KCnBsYW5lICM0MyBzaG91bGQgc3VwcG9ydCBO
VjEyIGFuZCBpdCBzZWVtcyB0byB3b3JrIGZpbmUgaGVyZS4KCkkgYmVsaWV2ZSB5b3UgdGhhdCB0
aGVyZSdzIGEgcHJvYmxlbSwgYnV0IEkgY2FuJ3QgcmVwcm9kdWNlIGl0IGhlcmUgYW5kCkkgbWln
aHQgbmVlZCBmdXJ0aGVyIGFzc2lzdGVuY2UgdG8gcmVwcm9kdWNlIGl0LgoKU2FzY2hhCgotLSAK
UGVuZ3V0cm9uaXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHwKU3RldWVyd2FsZGVyIFN0ci4gMjEgICAgICAgICAgICAgICAgICAg
ICAgIHwgaHR0cDovL3d3dy5wZW5ndXRyb25peC5kZS8gIHwKMzExMzcgSGlsZGVzaGVpbSwgR2Vy
bWFueSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAgIHwKQW10
c2dlcmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIx
LTIwNjkxNy01NTU1IHwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
