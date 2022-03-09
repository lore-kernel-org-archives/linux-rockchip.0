Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35FB1C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 08:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DwGDpZTtKCzqqU0rQZhj9jI5HhkGJWhDL6ytUmYwQIs=; b=bgqxvHIAzNliOf18MsCqjIqHRq
	8H+luhyxLoDpMRom1EyTYjntHPH3mwlrR78cuHk4v5ncw6qNUKc5UojJ4mtAub2UO/TJasvpMEjnX
	+ntulW3WnKzpJa5Gz5+gxPQog8v+SSUM5hxBqC1T2B3A9RhGX1w5BSbQuNVr3iBJF8Zz/PQaAWf3b
	45OvURS3unnjbqS+7BarT3DwO5hWv3cWs7gXGirrQcNH/YMvQGWkfkaOWY+AX7rSqAAJ7HEa294/y
	s+bS3xSTS/oGLPP9DalGAXfYaYvrNo3EEMbQN9cFl2KEE/hdO58cjLuGTUsHKmJ4EgL5JCnU9OqcP
	3eG0SGIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRrox-007lrl-5K; Wed, 09 Mar 2022 08:37:23 +0000
Received: from mail-m17652.qiye.163.com ([59.111.176.52])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRrok-007lpS-IM; Wed, 09 Mar 2022 08:37:12 +0000
Received: from [172.16.12.236] (unknown [58.22.7.114])
 by mail-m17652.qiye.163.com (Hmail) with ESMTPA id E5BC23C00D5;
 Wed,  9 Mar 2022 16:37:06 +0800 (CST)
Subject: Re: [PATCH v7 10/24] drm/rockchip: dw_hdmi: Add support for hclk
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: =?UTF-8?B?6Zer5a2d5Yab?= <andy.yan@rock-chips.com>,
 Dmitry Osipenko <dmitry.osipenko@collabora.com>,
 "robin.murphy" <robin.murphy@arm.com>, =?UTF-8?B?5byg5pm0?=
 <elaine.zhang@rock-chips.com>, huangtao <huangtao@rock-chips.com>,
 devicetree <devicetree@vger.kernel.org>, =?UTF-8?B?5pON55Ge5p2w?=
 <algea.cao@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 pgwipeout <pgwipeout@gmail.com>, hjc <hjc@rock-chips.com>,
 dri-devel <dri-devel@lists.freedesktop.org>, =?UTF-8?B?5p2o5Yev?=
 <Kever.yang@rock-chips.com>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 kernel <kernel@pengutronix.de>, Dmitry Osipenko <digetx@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
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
 <20220309081810.GH405@pengutronix.de>
From: "elaine.zhang" <zhangqing@rock-chips.com>
Organization: rockchip
Message-ID: <206d079d-5591-984d-cccc-dc5baa3db249@rock-chips.com>
Date: Wed, 9 Mar 2022 16:37:06 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220309081810.GH405@pengutronix.de>
Content-Language: en-US
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRlLSB5WQ0xOTxpMGk
 1KQkJMVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktITUpVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NDo6Kyo6FD5KMzAdIRUJIisp
 GkgwCy5VSlVKTU9NQ0pOS0lMTEtJVTMWGhIXVQETGhUcChIVHDsJFBgQVhgTEgsIVRgUFkVZV1kS
 C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU5CTk03Bg++
X-HM-Tid: 0a7f6dd320ccd9fckuwse5bc23c00d5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_003710_794250_201E0906 
X-CRM114-Status: GOOD (  25.82  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

aGksCgoK5ZyoIDIwMjIvMy85IOS4i+WNiDQ6MTgsIFNhc2NoYSBIYXVlciDlhpnpgZM6Cj4gSGkg
RWxhaW5lLAo+Cj4gT24gV2VkLCBNYXIgMDksIDIwMjIgYXQgMDk6NDE6MzlBTSArMDgwMCwgemhh
bmdxaW5nQHJvY2stY2hpcHMuY29tIHdyb3RlOgo+PiAgICAgaGnvvIxhbGzvvJoKPj4gICAgIExl
dCBtZSBleHBsYWluIHRoZSBjbG9jayBkZXBlbmRlbmN577yaCj4+ICAgICBGcm9tIHRoZSBjbG9j
ayB0cmVlLCBwY2xrX3ZvMCBhbmQgaGNsa192bzAgYXJlIGNvbXBsZXRlbHkgaW5kZXBlbmRlbnQK
Pj4gICAgIGNsb2NrcyB3aXRoIGRpZmZlcmVudCBwYXJlbnQgY2xvY2tzIGFuZCBkaWZmZXJlbnQg
Y2xvY2sgZnJlcXVlbmNpZXPjgIIKPj4gICAgIEJ1dCB0aGUgbml1wqBwYXRowqBpcyA6Cj4+ICAg
ICBwY2xrX3ZvIGlzIGRlcGVuZGVudCBvbiBoY2xrX3ZvLCBhbmQgdGhlIHBjbGtfdm8gbml1IGdv
ZXMgdGhyb3VnaMKgIGhjbGtfdm8KPj4gICAgIG5pdS4KPiBUaGFua3MsIHRoaXMgaXMgdGhlIGlu
Zm9ybWF0aW9uIHdlIGFyZSBsb29raW5nIGZvci4gV2hhdCBpcyAiTklVIiBidHc/Cj4gSSB0aGlu
ayB0aGlzIGlzIGV2ZW4gZG9jdW1lbnRlZCBpbiB0aGUgUmVmZXJlbmNlIE1hbnVhbC4gV2l0aCB0
aGUgcmlnaHQKPiBwb2ludGVyIEkganVzdCBmb3VuZDoKClRoZSBOSVUgKG5hdGl2ZSBpbnRlcmZh
Y2UgdW5pdCkKCllvdSBjYW4gc2VlIDIuOC42KE5JVSBDbG9jayBnYXRpbmcgcmVsaWFuY2UpIGlu
IFRSTS4KCj4KPj4gQSBwYXJ0IG9mIG5pdSBjbG9ja3MgaGF2ZSBhIGRlcGVuZGVuY2Ugb24gYW5v
dGhlciBuaXUgY2xvY2sgaW4gb3JkZXIgdG8KPj4gc2hhcmluZyB0aGUgaW50ZXJuYWwgYnVzLiBX
aGVuIHRoZXNlIGNsb2NrcyBhcmUgaW4gdXNlLCBhbm90aGVyIG5pdQo+PiBjbG9jayBtdXN0IGJl
IG9wZW5lZCwgYW5kIGNhbm5vdCBiZSBnYXRlZC4gIFRoZXNlIGNsb2NrcyBhbmQgdGhlIHNwZWNp
YWwKPj4gY2xvY2sgb24gd2hpY2ggdGhleSBhcmUgcmVsaWVkIGFyZSBhcyBmb2xsb3dpbmc6Cj4+
Cj4+IENsb2NrcyB3aGljaCBoYXZlIGRlcGVuZGVuY3kgICAgIFRoZSBjbG9jayB3aGljaCBjYW4g
bm90IGJlIGdhdGVkCj4+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4+IC4uLgo+PiBwY2xrX3ZvX25pdSwgaGNsa192b19z
X25pdSAgICAgICBoY2xrX3ZvX25pdQo+PiAuLi4KClllYWgsIHRoZSBkZXBlbmRlbmN5IGlzIHRo
aXMuCgpJdCBtYXkgYmUgbm90IHZlcnkgZGV0YWlsZWQsIEkgZG9uJ3QgaGF2ZSBwZXJtaXNzaW9u
IHRvIHB1Ymxpc2ggZGV0YWlsZWQgCk5JVSBkZXNpZ25zLgoKPgo+Cj4+ICAgICBUaGUgY2xvY2sg
dHJlZSBhbmQgTklVIGJ1cyBwYXRocyBhcmUgZGVzaWduZWQgaW5kZXBlbmRlbnRseQo+PiAgICAg
U28gdGhlcmUgYXJlIHRocmVlIHNvbHV0aW9ucyB0byB0aGlzIHByb2JsZW06Cj4+ICAgICAxLiBE
VFMgYWRkcyBhIHJlZmVyZW5jZSB0byBIY2xrIHdoaWxlIHJlZmVyZW5jaW5nIFBjbGsuCj4+ICAg
ICAyLCBUaGUgZGVwZW5kZW50IGNsb2NrIGlzIGFsd2F5cyBvbiwgc3VjaCBhcyBIQ0xLX1ZPMCzC
oGJ1dCB0aGlzIGlzIG5vdAo+PiAgICAgZnJpZW5kbHkgZm9yIHRoZSBzeXN0ZW0gcG93ZXIuCj4+
ICAgICAzLiBDcmVhdGUgYSBub24tY2xvY2stdHJlZSByZWZlcmVuY2UuwqBDbGstbGluaywgZm9y
IGV4YW1wbGUsIHdlIGhhdmUgYW4KPj4gICAgIGltcGxlbWVudGF0aW9uIGluIG91ciBpbnRlcm5h
bCBicmFuY2gsIGJ1dCBVcHN0cmVhbSBpcyBub3Qgc3VyZSBob3cgdG8KPj4gICAgIHB1c2ggaXQu
Cj4gSSB0aG91Z2h0IGFib3V0IHNvbWV0aGluZyBzaW1pbGFyLiBUaGF0IHdvdWxkIGhlbHAgdXMg
aGVyZSBhbmQgb24gaS5NWAo+IHdlIGhhdmUgYSBzaW1pbGFyIHNpdHVhdGlvbjogV2UgaGF2ZSBv
bmUgYml0IHRoYXQgc3dpdGNoZXMgbXVsdGlwbGUKPiBjbG9ja3MuIFRoYXQgYXMgd2VsbCBjYW5u
b3QgYmUgZGVzaWduZWQgcHJvcGVybHkgaW4gdGhlIGNsb2NrIGZyYW1ld29yawo+IGN1cnJlbnRs
eSwgYnV0IGNvdWxkIGJlIG1vZGVsbGVkIHdpdGggYSBjb25jZXB0IG9mIGxpbmtlZCBjbG9ja3Mu
Cj4KPiBEb2luZyB0aGlzIHNvdW5kcyBsaWtlIHF1aXRlIGEgYml0IG9mIHdvcmsgYW5kIGRpc2N1
c3Npb24gdGhvdWdoLCBJCj4gZG9uJ3QgcmVhbGx5IGxpa2UgaGF2aW5nIHRoaXMgYXMgYSBkZXBl
bmRlbmN5IHRvIG1haW5saW5lIHRoZSBWT1AyCj4gZHJpdmVyLiBJIHZvdGUgZm9yIDEuIGluIHRo
YXQgY2FzZSwgd2UgY291bGQgc3RpbGwgaWdub3JlIHRoZSBoY2xrIGluCj4gZHRzIGxhdGVyIHdo
ZW4gd2UgaGF2ZSBsaW5rZWQgY2xvY2tzLgo+Cj4gU2FzY2hhCj4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
