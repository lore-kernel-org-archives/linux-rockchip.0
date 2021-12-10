Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C191FC433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Dec 2021 08:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LuoiBTNFuLx98NFq1ezoSXOVZVClvIChDqVbQrq2kPU=; b=gVb5WmsNFW8//0
	PR2e7SfKnJ9K9abcIV+xmvzdgaxNUyBiIIKaGFh95+4b5/jJ+EdE7G7gCt7WmTVO7j/g/VmEPBTWD
	zoF2hBk8AL0P1904efTLiT1MDKBgAQ/GJP508gpKhAcZK2MisCJZTqPj25Z/wM2XFYL3AQzYF2L3i
	cbSqCWGSuFBN9AFe89CP2j+CXXM076pnRb7+Zn2omPEUA7xJxJmY7ZQ7pxkPCbDmCZXuHlnteaPW5
	OBlQt+sxyBIJt2XRlf3cmskvKExzAdGUACiAEfpH4638viqMmDtaZV1SMuFMYqx9pwj+vAW/jTOIJ
	WzjFyZXLlJQmdMTzqqSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mvbcy-001FAJ-8t; Fri, 10 Dec 2021 08:51:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mvbcm-001F3s-3B
 for linux-rockchip@lists.infradead.org; Fri, 10 Dec 2021 08:51:30 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mvbcg-00005I-4U; Fri, 10 Dec 2021 09:51:22 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mvbcb-0002DW-GS; Fri, 10 Dec 2021 09:51:17 +0100
Date: Fri, 10 Dec 2021 09:51:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 18/18] [HACK, RFC] clk: rk3568: do not divide dclk_vop0
Message-ID: <20211210085117.GB25513@pengutronix.de>
References: <20211208151230.3695378-1-s.hauer@pengutronix.de>
 <20211208151230.3695378-19-s.hauer@pengutronix.de>
 <10508489.WJHl9KOmCk@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <10508489.WJHl9KOmCk@diego>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:37:55 up 295 days, 12:01, 148 users,  load average: 0.30, 0.19,
 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211210_005128_148186_8C9EFDCC 
X-CRM114-Status: GOOD (  38.47  )
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

T24gV2VkLCBEZWMgMDgsIDIwMjEgYXQgMDU6NTE6NDNQTSArMDEwMCwgSGVpa28gU3TDvGJuZXIg
d3JvdGU6Cj4gSGkgU2FzY2hhLAo+IAo+IEFtIE1pdHR3b2NoLCA4LiBEZXplbWJlciAyMDIxLCAx
NjoxMjozMCBDRVQgc2NocmllYiBTYXNjaGEgSGF1ZXI6Cj4gPiBPbiB0aGUgcmszNTY4IHdlIGhh
dmUgdGhpcyAoc2ltcGxpZmllZCkgc2l0dWF0aW9uOgo+ID4gCj4gPiAgLi0tLS0tLS0tLiAgICAg
Li0tLS0tLiAgICAuLS0tLS0tLS0tLgo+ID4gLXwgaHBsbCAgIHwtLS4tLXwgL24gIHwtLS0tfGRj
bGtfdm9wMHwtCj4gPiAgYC0tLS0tLS0twrQgIHwgIGAtLS0tLcK0ICAgIGAtLS0tLS0tLS3CtAo+
ID4gICAgICAgICAgICAgIHwgIC4tLS0tLS4gICAgLi0tLS0tLS0tLS4KPiA+ICAgICAgICAgICAg
ICBgLS18IC9tICB8LS0tLXxkY2xrX3ZvcDF8LQo+ID4gICAgICAgICAgICAgIHwgIGAtLS0tLcK0
ICAgIGAtLS0tLS0tLS3CtAo+ID4gICAgICAgICAgICAgIHwgICAgICAgICAgICAgLi0tLS0tLS0t
LS4KPiA+ICAgICAgICAgICAgICBgLS0tLS0tLS0tLS0tLXxoZG1pX3JlZiB8LQo+ID4gICAgICAg
ICAgICAgICAgICAgICAgICAgICAgYC0tLS0tLS0tLcK0Cj4gPiAKPiA+IGhwbGwgaXMgdGhlIFBM
TCB0aGF0IGRyaXZlcyB0aGUgSERNSSByZWZlcmVuY2UgY2xvY2sgYW5kIHRoZSBwaXhlbAo+ID4g
Y2xvY2tzIGZvciB0aGUgZGlmZmVyZW50IENSVENzIChkY2xrX3ZvcDAvMSkuIEJldHdlZW4gdGhl
IHBpeGVsIGNsb2Nrcwo+ID4gYW5kIHRoZSBocGxsIHRoZXJlIGFyZSBwcm9ncmFtbWFibGUgZGl2
aWRlcnMgd2hlcmVhcyB0aGUgSERNSSByZWZlcmVuY2UKPiA+IGNsb2NrIGlzIGRpcmVjdGx5IGNv
bm5lY3RlZCB0byB0aGUgaHBsbC4KPiA+IAo+ID4gRm9yIHRoZSBIRE1JIG91dHB1dCB0byB3b3Jr
IHRoZSBwaXhlbCBjbG9jayBtdXN0IGJlIHRoZSBzYW1lIGFzIHRoZSBIRE1JCj4gPiByZWZlcmVu
Y2UgY2xvY2ssIGhlbmNlIHRoZSBkaXZpZGVycyBtdXN0IGJlIHByb2dyYW1tZWQgdG8gMS4gTm9y
bWFsbHkgYQo+ID4gcmF0ZSBjaGFuZ2Ugb24gZGNsa192b3AwLzEgcHJvcGFnYXRlcyB0aHJvdWdo
IHRvIHRoZSBocGxsIGFuZCB0aGUgY2xvY2sKPiA+IGZyYW1ld29yayBwaWNrcyBhIHN1aXRhYmxl
IGNvbWJpbmF0aW9uIG9mIGhwbGwgYW5kIGRpdmlkZXIgc2V0dGluZ3MuIGJ5Cj4gPiBhY2NpZGVu
dCBpdCBwaWNrcyBhIGRpdmlkZXIgc2V0dGluZyBvZiAxIGZvciB0aGUgc3RhbmRhcmQgMTA4MHAg
Y2FzZSwKPiA+IGJ1dCBvdGhlciBkaXZpZGVyIHNldHRpbmdzIGZvciBtb3N0IG90aGVyIHJlc29s
dXRpb25zIGxlYXZpbmcgdGhlIEhETUkKPiA+IHBvcnQgbm9uIHdvcmtpbmcuCj4gPiAKPiA+IFRo
aXMgcGF0Y2ggaXMgbm90IGEgc29sdXRpb24sIGl0IG1lcmVseSBwdXRzIHRoZSBmaW5nZXIgaW4g
dGhlIHdvdW5kLiBXZQo+ID4gbGVhdmUgb3V0IHRoZSBkaXZpZGVyIGZvciB0aGUgY29tcG9zaXRl
IGNsb2NrIGZvciBkY2xrX3ZvcDAgd2hpY2ggdGhlbgo+ID4gbGVhdmVzIHRoZSBkaXZpZGVyIGF0
IHRoZSBib290bG9hZGVyIGRlZmF1bHQgc2V0dGluZyBvZiAxLiBJIGFzc3VtZQo+ID4gdGhlIGRp
dmlkZXIgaXMgZGlzdHVyYmluZyBvbmx5IGZvciB0aGUgSERNSSBjYXNlLCBidXQgbmVlZGVkIGZv
ciBvdGhlcgo+ID4gb3V0cHV0cy4gQW55IHRob3VnaHRzIGhvdyB0aGlzIGNhbiBiZSBoYW5kbGVk
Pwo+IAo+IEknbSBub3QgZXZlbiBzdXJlIGlmL2hvdyB0aGUgY29tbW9uIGNsb2NrIGZyYW1ld29y
ayBrZWVwcyB0cmFjayBvZgo+IGRpdmVyZ2luZyB3aXNoZXMgdG8gcGFyZW50LXJhdGVzIDotKSAu
CgpJIGRvbid0IHRoaW5rIHRoZSBjb21tb24gY2xvY2sgZnJhbWV3b3JrIHRyaWVzIHRvIGtlZXAg
dHJhY2sgb2YgdGhhdC4KCj4gCj4gQnV0IEkgZG8gc2VlIHR3byBkaXJlY3QgaXNzdWVzIGluIHRo
ZSBfZXhpc3RpbmdfIGNvZGUuCj4gCj4gZGNsa192b3AwLzEgdXNlcyBDTEtfU0VUX1JBVEVfUEFS
RU5UIHNvIGlzIGFsbG93ZWQgdG8gY2hhbmdlCj4gdGhlIHJhdGVzIG9mIGl0cyBwYXJlbnQgY2xv
Y2socykuCj4gCj4gSXRzIHBhcmVudCBjbG9ja3MgYXJlIG5vdCBvbmx5IGhwbGwgYnV0IGNhbiBh
bHNvIGJlIHZwbGwsIGdwbGwgYW5kIGNwbGwuCj4gU28gdGhpcyBjYW4gY2F1c2UgZXZlbiBtb3Jl
IG1heWhlbSwgaWYgdGhlIGNjZiBmb3IgZXhhbXBsZSBkZWNpZGVzCj4gdG8gc2VsZWN0IHRoZSBn
cGxsIGFuZCB0aGVuIGNoYW5nZSBpdHMgcmF0ZSx3aGljaCBtYXkgcmVzdWx0IGluIGEgbG90Cj4g
b2YgcGVyaXBoZXJhbHMgZ2V0dGluZyB0aGVpciByYXRlcyBjaGFuZ2VkIHVuZGVyIHRoZW0gOy0p
IC4KClJpZ2h0LCB3ZSBjYW4gb25seSBhbGxvdyB0aGUgQ0xLX1NFVF9SQVRFX1BBUkVOVCBwYXJl
bnQgZmxhZyBvbiB0aGUgZGNsawpjbG9ja3Mgd2hlbiB0aGUgcGFyZW50IGlzIEhQTEwuIFNpbmNl
IHdlIGNhbid0IGJlIHN1cmUgdGhhdCBIUExMIGlzIHRoZQpwYXJlbnQgd2UgaGF2ZSB0byByZW1v
dmUgdGhlIGZsYWcuCgo+IAo+IE9uIHRoZSBvdGhlciBoYW5kIEkgc2VlIGluIHRoZSBjbG9jayBk
cml2ZXIgdGhhdCBoZG1pLXJlZiBpcyBub3QgYWxsb3dlZAo+IHRvIGNoYW5nZSBpdHMgcGFyZW50
IHJhdGUsIHNvIGNhbiBvbmx5IHNlbGVjdCBiZXR3ZWVuIGhwbGwgYW5kIGhwbGxfcGgwCj4gKDEv
MiB0aGUgcmF0ZT8pLgo+IAo+IFNvIEkgZ3Vlc3MsIG9uZSB3YXkgY291bGQgYmU6Cj4gLSBhZGQg
Q0xLX1NFVF9SQVRFX1BBUkVOVCB0byB0aGUgaGRtaS1yZWYgY2xvY2sKPiAtIGRyb3AgQ0xLX1NF
VF9SQVRFX1BBUkVOVCBmcm9tIHRoZSBkY2xrcwo+IC0gbWFrZSBzdXJlIGhkbWktY2xvY2sgaXMg
c2V0IGJlZm9yZSB0aGUgZGNsawoKVGhhdCBzb2x2ZXMgaXQgZm9yIHRoZSBIRE1JIGNhc2UuIEkg
Y2FuIGltYWdpbmUgdGhhdCBmb3IgYSBMVkRTIHVzZXIgdGhlCkNMS19TRVRfUkFURV9QQVJFTlQg
ZmxhZyBvbiB0aGUgZGNsa3MgaXMgcXVpdGUgaGFuZHkgdG8gZ2V0IGEgUExMCmZyZXF1ZW5jeSBz
dWl0YWJsZSBmb3IgdGhlIGRpc3BsYXkuIE90aGVyd2lzZSBoZSB3b3VsZCBoYXZlIHRvIHNldCBh
CnN1aXRhYmxlIFBMTCBmcmVxdWVuY3kgdXNpbmcgYXNzaWduZWQtY2xvY2stcmF0ZXMgaW4gdGhl
IGRldmljZSB0cmVlLgpUaGF0J3Mgc3RpbGwgcG9zc2libGUgc28gdGhpcyBtaWdodCBiZSBhIGdv
b2QgY29tcHJvbWlzZS4KClNhc2NoYQoKLS0gClBlbmd1dHJvbml4IGUuSy4gICAgICAgICAgICAg
ICAgICAgICAgICAgICB8ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ClN0ZXVlcndhbGRl
ciBTdHIuIDIxICAgICAgICAgICAgICAgICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXgu
ZGUvICB8CjMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkgICAgICAgICAgICAgICAgICB8IFBob25l
OiArNDktNTEyMS0yMDY5MTctMCAgICB8CkFtdHNnZXJpY2h0IEhpbGRlc2hlaW0sIEhSQSAyNjg2
ICAgICAgICAgICB8IEZheDogICArNDktNTEyMS0yMDY5MTctNTU1NSB8CgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
