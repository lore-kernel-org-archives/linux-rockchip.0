Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1365ACA9ED1
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Oct 2026 14:50:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Bl9hIFfRzirX7iL+GRtujVs7P6hvL1GFc0L2P4rYGQ=; b=A+Bjvnjal0PmYP
	fO5mKUi5AtU4ISmsmhjecEBTCts+F7iv38OBFNSBHKxagIZPQ3T4meWJdZGrzOwKrsZaENvZBSA24
	9tk8uq1BNRTrQ7dkp3+sCWzb8Aakx3AXXCBUXDgudKMQQpklhIcEeMygiX1G9fEbdmzdglxRqvClw
	O6+G4+EltHelbpPEFFLpV8/YSwD3FOL66dBmY+Ve8insp/cgKd9tfkVVBgwHEM8BsQ5iT6HdTuGo6
	hQaMQOZEPd+JEO7inV1CtnTX5tUtMfnc2qMq8NaHsWfiqfZ27z2BHOs5kpGI3G2ZAXxYWQAn3QMvv
	RmveAFeAeuLZkwjnjdlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGHLr-0000000AjIB-1bgW;
	Mon, 12 Oct 2026 14:50:07 +0000
Received: from sender5-op-o12.zoho.com ([165.173.182.12])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGHLm-0000000AjHM-2GMK;
	Mon, 12 Oct 2026 14:50:03 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1791816584; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=dgXdmKngHhM318qjfVMYC74gMXGc+fVdLti7iaDwNAcMcB3a5zwQJOik7Wp4aFMi4tacvl3UURXkM4e7Oc26MTPZ+Z00w4QDK3KjHrV+wqi7dHrh/s8S/W27DQsrM+TIiWwaGxOcf66YwJl+ToXBCOGPIBvxUzzeez/ktRUtpbc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1791816584; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ARDFzRcSX9tlNYnz3QhLpND0+k4nm4lAwCr2NId5MtI=; 
	b=b9u5Bca9K9oBoLiH5naAS8C3AXYHMV1+15EqYHygDl1zAOhsDmtwBUSG59FApnANcBkioBS7/4QZGZj519i5BBInp+Eh4NcRC0bV0IcIMNzgN8xOMNihrnH2t18yvvuMUJUyAYLaWrc5cNFsFiJ7bfa8+7ANkfSPPyi1uL8qe/U=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=icenowy.me;
	spf=pass  smtp.mailfrom=uwu@icenowy.me;
	dmarc=pass header.from=<uwu@icenowy.me>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1791816584;
	s=zmail2; d=icenowy.me; i=uwu@icenowy.me;
	h=Message-ID:Subject:Subject:From:From:To:To:Cc:Cc:Date:Date:In-Reply-To:Content-Type:Content-Transfer-Encoding:MIME-Version:Message-Id:Reply-To;
	bh=ARDFzRcSX9tlNYnz3QhLpND0+k4nm4lAwCr2NId5MtI=;
	b=T7Vc/dRGYaDXRQGVuvc+Y/eeiZjc1MZXWW4dkOriDDZ02Sw7GyWfNjW35slqbLh/
	A2JtRd4QzJhJVsPNv/CtTeV+L1EOzG/LoB9KlqZedk5xmEmidSfR+MaHT1lEV3xNliY
	31rcXmI4FFYUwcYwPrGTEHMMFQQMwFOmx6rrmjcOPS3NnJ55PnfuFXRVIMbUzkFtjYi
	LSq1TNSKSgtAZpTEk4d2+eFP0QLrwJuMY+SX4C8467MmHI0tkCaZmIug/eqp2uHm4oU
	karVUVAD+hUcefpumZT43yTtV8myiwOCm7nkvTHPzlI0fp8DijqnI5F5MrFUS56oKj+
	WiFC5qA8xA==
Received: by smtp.zohomail.com with SMTPS id 1791816582175167.0189182002764;
	Mon, 12 Oct 2026 07:49:42 -0700 (PDT)
Message-ID: <6b6b99fcd1c5f032a0b20d928bf7fa2e59ac5c87.camel@icenowy.me>
Subject: Re: [PATCH 0/2] Add SPI display support for UNIHIKER M10 V1.2
From: Icenowy Zheng <uwu@icenowy.me>
To: Miotsuki Mizuno <founder@crepuse.com>, "heiko@sntech.de"
 <heiko@sntech.de>,  "neil.armstrong@linaro.org"	 <neil.armstrong@linaro.org>
Cc: "airlied@gmail.com" <airlied@gmail.com>, "conor+dt@kernel.org"	
 <conor+dt@kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>,  "dri-devel@lists.freedesktop.org"	
 <dri-devel@lists.freedesktop.org>, "jesszhan0024@gmail.com"	
 <jesszhan0024@gmail.com>, "krzk+dt@kernel.org" <krzk+dt@kernel.org>, 
 "linux-arm-kernel@lists.infradead.org"	
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"	
 <linux-kernel@vger.kernel.org>, "linux-rockchip@lists.infradead.org"	
 <linux-rockchip@lists.infradead.org>, "maarten.lankhorst@linux.intel.com"	
 <maarten.lankhorst@linux.intel.com>, "mripard@kernel.org"
 <mripard@kernel.org>,  "noralf@tronnes.org"	 <noralf@tronnes.org>,
 "robh@kernel.org" <robh@kernel.org>, "simona@ffwll.ch"	 <simona@ffwll.ch>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>
Date: Mon, 12 Oct 2026 22:49:34 +0800
In-Reply-To: <20261010232857.26950-1-founder@crepuse.com>
References: <20261010232857.26950-1-founder@crepuse.com>
Organization: Anthon Open-Source Community
User-Agent: Evolution 3.58.3 
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261012_075002_663843_6759E835 
X-CRM114-Status: GOOD (  17.78  )
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

5ZyoIDIwMjYtMTAtMTDlha3nmoQgMjM6MjggKzAwMDDvvIxNaW90c3VraSBNaXp1bm/lhpnpgZPv
vJoKPiBEZXNjcmliZSB0aGUgb25ib2FyZCAyNDB4MzIwIFJHQjU2NSBkaXNwbGF5IHdpdGggcGFu
ZWwtbWlwaS1kYmkuCj4gVGhlIHNlcmllcyBhZGRzIHRoZSBwYW5lbCBjb21wYXRpYmxlIGFuZCBl
bmFibGVzIFNQSTIsIEdQSU8gcmVzZXQvRC1DCj4gYW5kIHRoZSBQV00xIGJhY2tsaWdodC4gSXQg
dXNlcyB0aGUgZXhpc3RpbmcgRFJNIGFuZCBTUEkgZHJpdmVycy4KPiAKPiBUaGlzIHNlcmllcyBp
cyBiYXNlZCBvbiB0aGUgc2VwYXJhdGUgYm9hcmQgSTJDMiBwcmVwYXJhdGlvbiBjb21taXQuCj4g
VGhlIHByZXJlcXVpc2l0ZSBib2FyZCBwYXRjaCB3YXMgc3VibWl0dGVkIHNlcGFyYXRlbHk6Cj4g
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI2MTAxMDIzMjgzMS4yNjkwOC0xLWZvdW5kZXJA
Y3JlcHVzZS5jb20KPiBJdCBkb2VzIG5vdCBkZXBlbmQgb24gdGhlIHBlbmRpbmcgTlMyMDA5IGRy
aXZlciBvciBiaW5kaW5nLgoKSSBqdXN0IGNhbWUgYWNyb3NzIGhlcmUgdmlhIG1haWxpbmcgbGlz
dC4KCkl0IHNlZW1zIHRoYXQgTlMyMDA5IGlzIGRlc2lnbmVkIHRvIGJlIG1vc3RseSBjb21wYXRp
YmxlIHdpdGggVEkKVFNDMjAwNywgYW5kIHRoZSBUU0MyMDA3IGRyaXZlciBzaG91bGQgYmUgYWJs
ZSB0byBtYWRlIHdvcmsgd2l0aAptaW5pbWFsIGVmZm9ydC4KClRoYW5rcywKSWNlbm93eQoKPiAK
PiBUaGUgMTMyLWJ5dGUgaW5pdGlhbGl6YXRpb24gZmlybXdhcmUgaXMgYXZhaWxhYmxlIGZyb206
Cj4gaHR0cHM6Ly9naXRodWIuY29tL21pby10c3VraS9wYW5lbC1taXBpLWRiaS1maXJtd2FyZS9y
ZWxlYXNlcy90YWcvdjEuMC4wCj4gUmVxdWlyZWQgZmlsZW5hbWU6IGRmcm9ib3QsdW5paGlrZXIt
bTEwLWRpc3BsYXkuYmluCj4gU0hBMjU2Ogo+IDUwNDEyYWU2ZDI5YzViYmZiN2ZhYzU4NTUyOGE3
NjFmYjI0OWQ3OTQ0MDExYTFiMTljNWUwZjgwYTA0MThlNWYKPiBUaGUgdGVzdCBrZXJuZWwgZW1i
ZWRzIGl0IHdpdGggQ09ORklHX0VYVFJBX0ZJUk1XQVJFLiBQdWJsaWMgcmVsZWFzZQo+IGRvZXMg
bm90IGltcGx5IGxpbnV4LWZpcm13YXJlIGFjY2VwdGFuY2UuCj4gCj4gVGhlIG5vbWluYWwgYWN0
aXZlIGFyZWEgaXMgNDMuMiB4IDU3LjYgbW0sIHJlcHJlc2VudGVkIGFzIDQzIHggNTggbW0uCj4g
VGhlIHB1Ymxpc2hlZCBWMS4zIHNjaGVtYXRpYyBpcyBub3QgdXNlZCBhcyBldmlkZW5jZSBmb3Ig
VjEuMiBzdXBwbHkKPiBjb25uZWN0aW9uczsgb3B0aW9uYWwgcG93ZXIvaW8gc3VwcGx5IHByb3Bl
cnRpZXMgYXJlIG9taXR0ZWQuCj4gCj4gU1BJMiBpbnB1dCBpcyBhc3NpZ25lZCAxMDAgTUh6LiBB
Y3RpdmUgdHJhbnNmZXIgcmVnaXN0ZXIgcmVhZGJhY2sKPiBzaG93ZWQgQkFVRFI9MiwgY29ycmVz
cG9uZGluZyB0byA1MCBNSHouIE5vIG9zY2lsbG9zY29wZSBtZWFzdXJlbWVudAo+IGlzIGNsYWlt
ZWQuIEdQSU9fQUNUSVZFX0hJR0ggcmVzZXQgbWF0Y2hlcyB0aGUgZXhpc3RpbmcgRFJNIGhlbHBl
cgo+IGFuZCBsZWF2ZXMgdGhlIHBoeXNpY2FsIHJlc2V0IHBpbiBISUdIIGFmdGVyIGluaXRpYWxp
emF0aW9uLgo+IAo+IEJ1aWx0IGFnYWluc3QgUm9ja2NoaXAgdjcuNC1hcm1zb2MvZHRzNjQsIGNv
bW1pdAo+IGFlOTY1Yjk4NTZmMDMzMTQ1ZTI5MmIwYzI5MDgyYTI2YmNjNDVlZmQuIFRhcmdldCBE
VFMvc2NoZW1hLCBiaW5kaW5nCj4gZXhhbXBsZXMgYW5kIHN0cmljdCBjaGVja3BhdGNoIGNoZWNr
cyBwYXNzZWQuIAo+IFRoZSBleGFjdCBkaXNwbGF5IERUUyBib290ZWQgdGhyb3VnaCBub3JtYWwg
VS1Cb290IHRocmVlIHRpbWVzIGluCj4gdGhpcwo+IHJldGVzdCB3aXRoIHRoZSBvcmlnaW5hbCB0
ZXN0IGtlcm5lbCwgd2l0aG91dCBwc3RvcmUgaW5zdHJ1bWVudGF0aW9uLAo+IGNsa19pZ25vcmVf
dW51c2VkIG9yIHJlZ3VsYXRvcl9pZ25vcmVfdW51c2VkLiBQaHlzaWNhbCBjb3JuZXIKPiBwYXR0
ZXJucwo+IHdlcmUgY29uZmlybWVkOyBmdWxsIGFuZCBwYXJ0aWFsIHVwZGF0ZXMgYW5kIGZpdmUg
RFJNIGRpc2FibGUvZW5hYmxlCj4gY3ljbGVzIGNvbXBsZXRlZC4gVGhlIGV4YWN0IGRpc3BsYXkv
dG91Y2ggY29tYmluYXRpb24gYWxzbyBib290ZWQgYW5kCj4gaXRzIHBoeXNpY2FsIG91dHB1dCB3
YXMgY29uZmlybWVkLgo+IAo+IEVhcmxpZXIgYm9vdHMgcmVzZXQgZHVyaW5nIGVhcmx5IHVzZXJz
cGFjZTsgb25lIHBhcnRpYWwgVVNCIGxvZwo+IHJlY29yZGVkCj4gYW4gaW5zdHJ1Y3Rpb24gYWJv
cnQuIFRoaXMgd2FzIG5vdCByZXByb2R1Y2VkIGluIHRoZSBsYXRlc3QgcmV0ZXN0Lgo+IFRoZSBy
ZXNldHMgbWF5IGhhdmUgcmVzdWx0ZWQgZnJvbSBhY2NpZGVudGFsIGNvbnRhY3Qgd2l0aCBhIGxv
b3NlCj4ganVtcGVyIHdpcmUgZHVyaW5nIHJlYm9vdC4gVGhlIGNhdXNlIGhhcyBub3QgYmVlbiBl
c3RhYmxpc2hlZCwgYW5kIG5vCj4gc29mdHdhcmUgZml4IGlzIGNsYWltZWQuCj4gRXhhY3QtRFRT
IGNvbGQgYm9vdCBhbmQgZGVlcCBzdXNwZW5kL3Jlc3VtZSBoYXZlIG5vdCBiZWVuIHRlc3RlZC4K
PiAKPiBNaXp1bm8gTWlvdHN1a2kgKDIpOgo+IMKgIGR0LWJpbmRpbmdzOiBkaXNwbGF5OiBwYW5l
bC1taXBpLWRiaS1zcGk6IEFkZCBVTklISUtFUiBNMTAgZGlzcGxheQo+IMKgIGFybTY0OiBkdHM6
IHJvY2tjaGlwOiBFbmFibGUgZGlzcGxheSBvbiBVTklISUtFUiBNMTAgVjEuMgo+IAo+IMKgLi4u
L2Rpc3BsYXkvcGFuZWwvcGFuZWwtbWlwaS1kYmktc3BpLnlhbWzCoMKgwqDCoCB8wqAgMSArCj4g
wqAuLi4vZHRzL3JvY2tjaGlwL3JrMzMwOC11bmloaWtlci1tMTAtdjEuMi5kdHMgfCA1Mwo+ICsr
KysrKysrKysrKysrKysrKysKPiDCoDIgZmlsZXMgY2hhbmdlZCwgNTQgaW5zZXJ0aW9ucygrKQo+
IAo+IAo+IGJhc2UtY29tbWl0OiBmNGY3ZWNkMmUwZThkZWJjYmFiNDc4OTcxN2NjNzlkNTcwZDY2
NWUzCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
