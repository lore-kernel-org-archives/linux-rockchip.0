Return-Path: <SRS0=3IJ3=FC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D11DAC64E7A
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Nov 2020 18:35:30 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 80CC9246F1
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Nov 2020 18:35:30 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="yNcVpTFy";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="1jrPlXwe"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 80CC9246F1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:Subject:To:From:
	Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	 bh=6zZDe0w09S5iVUJVoYRsOcIP1eTUFThEiltb6/h2poA=; b=yNcVpTFyeYD3RGF/5hbHPclaa
	AqOtf/3WZ1XSWV4W3HBuDLecJJjV6Kzh4zgenDI2T4W6unWAQArE2gHmhxA2WPwcFgEGqhTOUhYaO
	rQe33WAMf75WrJNeoRAsMAUgQM1oVXGum/q1Sxdk6A/bcfVoceWnDL/IwWH1eqV9zX5k/V9eSUhlk
	3rmz3bKGSIhMlZ7ItcvJ072fzkICixsDqWt4cphot8a8GzZBoHcplqxhODGBSmfI/cOvPh9MIKD0d
	nbIRDxbEahyRigPDoHp9D+Ct/2AKTIU1djfXOTYdWF+2RU5hQLO5EKZkngfBTAVTcuC7tlLiUdz9I
	EczQVgbVw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kj549-0002sv-12; Sat, 28 Nov 2020 18:35:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kj543-0002s1-OF; Sat, 28 Nov 2020 18:35:20 +0000
Received: from localhost (129.sub-72-107-112.myvzw.com [72.107.112.129])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6F6C7246B3;
 Sat, 28 Nov 2020 18:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1606588517;
 bh=krTdbHrGkcM5b4jd6jHl8Tj811g2BH+q5E0PPQ5iuP0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=1jrPlXwe9ILXjItuxz9/t8GxK/MQWxNWJOUaEYGpQxD/dpPAvMyX7cm238YUlf00x
 fHRZCbCx0lc5oMXtSJwlHxgRyLQ/pw3uzuTM/N5JKgpY4OaW4UK2qgOYpegf41sOes
 cUU2tZ7iHNR/qc/5tVYNCHGtRQlEtP0Dti16ubIY=
Date: Sat, 28 Nov 2020 12:35:16 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>
Subject: Re: [PATCH v5] PCI: Unify ECAM constants in native PCI Express drivers
Message-ID: <20201128183516.GA897329@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201127104626.3979165-1-kw@linux.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201128_133519_995346_610AE7C8 
X-CRM114-Status: GOOD (  25.99  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Shawn Lin <shawn.lin@rock-chips.com>, Paul Mackerras <paulus@samba.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Jonathan Chocron <jonnyc@amazon.com>, Toan Le <toan@os.amperecomputing.com>,
 Will Deacon <will@kernel.org>, Rob Herring <robh@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michael Ellerman <mpe@ellerman.id.au>, Michal Simek <michal.simek@xilinx.com>,
 linux-rockchip@lists.infradead.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, Florian Fainelli <f.fainelli@gmail.com>,
 linux-rpi-kernel@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Jonathan Derrick <jonathan.derrick@intel.com>,
 Scott Branden <sbranden@broadcom.com>, Zhou Wang <wangzhou1@hisilicon.com>,
 Robert Richter <rrichter@marvell.com>, linuxppc-dev@lists.ozlabs.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBOb3YgMjcsIDIwMjAgYXQgMTA6NDY6MjZBTSArMDAwMCwgS3J6eXN6dG9mIFdpbGN6
ecWEc2tpIHdyb3RlOgo+IFVuaWZ5IEVDQU0tcmVsYXRlZCBjb25zdGFudHMgaW50byBhIHNpbmds
ZSBzZXQgb2Ygc3RhbmRhcmQgY29uc3RhbnRzCj4gZGVmaW5pbmcgbWVtb3J5IGFkZHJlc3Mgc2hp
ZnQgdmFsdWVzIGZvciB0aGUgYnl0ZS1sZXZlbCBhZGRyZXNzIHRoYXQgY2FuCj4gYmUgdXNlZCB3
aGVuIGFjY2Vzc2luZyB0aGUgUENJIEV4cHJlc3MgQ29uZmlndXJhdGlvbiBTcGFjZSwgYW5kIHRo
ZW4KPiBtb3ZlIG5hdGl2ZSBQQ0kgRXhwcmVzcyBjb250cm9sbGVyIGRyaXZlcnMgdG8gdXNlIG5l
d2x5IGludHJvZHVjZWQKPiBkZWZpbml0aW9ucyByZXRpcmluZyBhbnkgZHJpdmVyLXNwZWNpZmlj
IG9uZXMuCj4gCj4gVGhlIEVDQU0gKCJFbmhhbmNlZCBDb25maWd1cmF0aW9uIEFjY2VzcyBNZWNo
YW5pc20iKSBpcyBkZWZpbmVkIGJ5IHRoZQo+IFBDSSBFeHByZXNzIHNwZWNpZmljYXRpb24gKHNl
ZSBQQ0kgRXhwcmVzcyBCYXNlIFNwZWNpZmljYXRpb24sIFJldmlzaW9uCj4gNS4wLCBWZXJzaW9u
IDEuMCwgU2VjdGlvbiA3LjIuMiwgcC4gNjc2KSwgdGh1cyBtb3N0IGhhcmR3YXJlIHNob3VsZAo+
IGltcGxlbWVudCBpdCB0aGUgc2FtZSB3YXkuICBNb3N0IG9mIHRoZSBuYXRpdmUgUENJIEV4cHJl
c3MgY29udHJvbGxlcgo+IGRyaXZlcnMgZGVmaW5lIHRoZWlyIEVDQU0tcmVsYXRlZCBjb25zdGFu
dHMsIG1hbnkgb2YgdGhlc2UgY291bGQgYmUKPiBzaGFyZWQsIG9yIHVzZSBvcGVuLWNvZGVkIHZh
bHVlcyB3aGVuIHNldHRpbmcgdGhlIC5idXNfc2hpZnQgZmllbGQgb2YKPiB0aGUgc3RydWN0IHBj
aV9lY2FtX29wcy4KPiAKPiBBbGwgb2YgdGhlIG5ld2x5IGFkZGVkIGNvbnN0YW50cyBzaG91bGQg
cmVtb3ZlIGFtYmlndWl0eSBhbmQgcmVkdWNlIHRoZQo+IG51bWJlciBvZiBvcGVuLWNvZGVkIHZh
bHVlcywgYW5kIGFsc28gY29ycmVsYXRlIG1vcmUgc3Ryb25nbHkgd2l0aCB0aGUKPiBkZXNjcmlw
dGlvbnMgaW4gdGhlIGFmb3JlbWVudGlvbmVkIHNwZWNpZmljYXRpb24gKHNlZSBUYWJsZSA3LTEK
PiAiRW5oYW5jZWQgQ29uZmlndXJhdGlvbiBBZGRyZXNzIE1hcHBpbmciLCBwLiA2NzcpLgo+IAo+
IFRoZXJlIGlzIG5vIGNoYW5nZSB0byBmdW5jdGlvbmFsaXR5Lgo+IAo+IFN1Z2dlc3RlZC1ieTog
Qmpvcm4gSGVsZ2FhcyA8YmhlbGdhYXNAZ29vZ2xlLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBLcnp5
c3p0b2YgV2lsY3p5xYRza2kgPGt3QGxpbnV4LmNvbT4KCkJlYXV0aWZ1bC4gIFRoaXMgc2hvdWxk
IHByb2JhYmx5IGdvIHZpYSBMb3JlbnpvJ3MgdHJlZSwgc28gaGUgbWF5IGhhdmUKY29tbWVudHMs
IHRvby4gIENvdWxkIGFwcGx5IHRoaXMgYXMtaXM7IEkgaGFkIGEgZmV3IHRyaXZpYWwgbm90ZXMK
YmVsb3cuCgpJdCdzIGlyb25pYyB0aGF0IHdlIGRvbid0IHVzZSBQQ0lFX0VDQU1fT0ZGU0VUIGlu
IGRyaXZlcnMvcGNpL2VjYW0uYy4KV2UgY291bGQgZG8gc29tZXRoaW5nIGxpa2UgdGhpcywgd2hp
Y2ggd291bGQgYWxzbyBsZXQgdXMgZHJvcAouYnVzX3NoaWZ0IGNvbXBsZXRlbHkgaW4gYWxsIHRo
ZSBjb25mb3JtaW5nIGltcGxlbWVudGF0aW9ucy4gIEl0IGFsc28KY2xvc2VzIHRoZSBob2xlIHRo
YXQgd2UgZGlkbid0IGxpbWl0ICJ3aGVyZSIgdG8gNEsgZm9yCnBjaV9lY2FtX21hcF9idXMoKSB1
c2Vycy4KCiAgaWYgKHBlcl9idXNfbWFwcGluZykgewogICAgYmFzZSA9IGNmZy0+d2lucFtidXNu
XTsKICAgIGJ1c24gPSAwOwogIH0gZWxzZSB7CiAgICBiYXNlID0gY2ZnLT53aW47CiAgfQoKICBp
ZiAoY2ZnLT5vcHMtPmJ1c19zaGlmdCkgewogICAgdTMyIGJ1c19vZmZzZXQgPSAoYnVzbiAmIDB4
ZmYpIDw8IGNmZy0+b3BzLT5idXNfc2hpZnQ7CiAgICB1MzIgZGV2Zm5fb2Zmc2V0ID0gKGRldmZu
ICYgMHhmZikgPDwgKGNmZy0+b3BzLT5idXNfc2hpZnQgLSA4KTsKCiAgICB3aGVyZSAmPSAweGZm
ZjsKCiAgICByZXR1cm4gYmFzZSArIChidXNfb2Zmc2V0IHwgZGV2Zm5fb2Zmc2V0IHwgd2hlcmUp
OwogIH0KCiAgcmV0dXJuIGJhc2UgKyBQQ0lFX0VDQU1fT0ZGU0VUKGJ1c24sIGRldmZuLCB3aGVy
ZSk7CgpSZXZpZXdlZC1ieTogQmpvcm4gSGVsZ2FhcyA8YmhlbGdhYXNAZ29vZ2xlLmNvbT4KCj4g
IHN0YXRpYyB2b2lkIF9faW9tZW0gKnBwYzR4eF9wY2lleF9nZXRfY29uZmlnX2Jhc2Uoc3RydWN0
IHBwYzR4eF9wY2lleF9wb3J0ICpwb3J0LAo+ICAJCQkJCQkgIHN0cnVjdCBwY2lfYnVzICpidXMs
Cj4gLQkJCQkJCSAgdW5zaWduZWQgaW50IGRldmZuKQo+ICsJCQkJCQkgIHVuc2lnbmVkIGludCBk
ZXZmbiwKPiArCQkJCQkJICBpbnQgb2Zmc2V0KQoKVGhlIGludGVyZmFjZSBjaGFuZ2UgKHRvIGFk
ZCAib2Zmc2V0IikgY291bGQgYmUgYSBwcmVwYXJhdG9yeSBwYXRjaCBieQppdHNlbGYuCgpCdXQg
SSdtIGFjdHVhbGx5IG5vdCBzdXJlIGl0J3Mgd29ydGggZXZlbiB0b3VjaGluZyB0aGlzIGZpbGUu
ICBUaGlzIGlzCnRoZSBvbmx5IHBsYWNlIG91dHNpZGUgZHJpdmVycy9wY2kgdGhhdCBpbmNsdWRl
cyBsaW51eC9wY2ktZWNhbS5oLiAgSQp0aGluayBJIG1pZ2h0IHJhdGhlciBwdXQgUENJRV9FQ0FN
X09GRlNFVCgpIGFuZCByZWxhdGVkIHRoaW5ncyBpbgpkcml2ZXJzL3BjaS9wY2kuaCBhbmQga2Vl
cCBpdCBhbGwgaW5zaWRlIGRyaXZlcnMvcGNpLgoKPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBwY2lf
ZWNhbV9vcHMgcGNpX3RodW5kZXJfcGVtX29wcyA9IHsKPiAtCS5idXNfc2hpZnQJPSAyNCwKPiAr
CS5idXNfc2hpZnQJPSBUSFVOREVSX1BDSUVfRUNBTV9CVVNfU0hJRlQsCj4gIAkuaW5pdAkJPSB0
aHVuZGVyX3BlbV9wbGF0Zm9ybV9pbml0LAo+ICAJLnBjaV9vcHMJPSB7Cj4gIAkJLm1hcF9idXMJ
PSBwY2lfZWNhbV9tYXBfYnVzLAoKVGhpcyBjb3VsZCBiZSBzcGxpdCB0byBpdHMgb3duIHBhdGNo
LCBubyBiaWcgZGVhbCBlaXRoZXIgd2F5LgoKPiAgY29uc3Qgc3RydWN0IHBjaV9lY2FtX29wcyB4
Z2VuZV92Ml9wY2llX2VjYW1fb3BzID0gewo+IC0JLmJ1c19zaGlmdAk9IDE2LAo+ICAJLmluaXQJ
CT0geGdlbmVfdjJfcGNpZV9lY2FtX2luaXQsCj4gIAkucGNpX29wcwk9IHsKPiAgCQkubWFwX2J1
cwk9IHhnZW5lX3BjaWVfbWFwX2J1cywKClRoYW5rcyBmb3IgbWVudGlvbmluZyB0aGlzIGNoYW5n
ZSBpbiB0aGUgY292ZXIgbGV0dGVyLiAgSXQgY291bGQgYWxzbwpiZSBzcGxpdCBvZmYgdG8gYSBw
cmVwYXJhdG9yeSBwYXRjaCwgc2luY2UgaXQncyBub3QgcmVsYXRlZCB0bwpQQ0lFX0VDQU1fT0ZG
U0VUKCksIHdoaWNoIGlzIHRoZSBtYWluIHBvaW50IG9mIHRoaXMgcGF0Y2guCgo+ICBzdGF0aWMg
dm9pZCBfX2lvbWVtICppcHJvY19wY2llX21hcF9lcF9jZmdfcmVnKHN0cnVjdCBpcHJvY19wY2ll
ICpwY2llLAo+ICAJCQkJCSAgICAgICB1bnNpZ25lZCBpbnQgYnVzbm8sCj4gLQkJCQkJICAgICAg
IHVuc2lnbmVkIGludCBzbG90LAo+IC0JCQkJCSAgICAgICB1bnNpZ25lZCBpbnQgZm4sCj4gKwkJ
CQkJICAgICAgIHVuc2lnbmVkIGludCBkZXZmbiwKClRoaXMgaW50ZXJmYWNlIGNoYW5nZSAqY291
bGQqIGJlIGEgc2VwYXJhdGUgcHJlcGFyYXRvcnkgcGF0Y2gsIHRvbywKYnV0IEknbSBzdGFydGlu
ZyB0byBmZWVsIGV2ZW4gbW9yZSBPQ0QgdGhhbiB1c3VhbCA6KQoKPiBAQCAtOTQsNyArOTUsNyBA
QCBzdHJ1Y3Qgdm1kX2RldiB7Cj4gIAlzdHJ1Y3QgcGNpX2RldgkJKmRldjsKPiAgCj4gIAlzcGlu
bG9ja190CQljZmdfbG9jazsKPiAtCWNoYXIgX19pb21lbQkJKmNmZ2JhcjsKPiArCXZvaWQgX19p
b21lbQkJKmNmZ2JhcjsKClRoaXMgdHlwZSBjaGFuZ2UgbWlnaHQgYmUgd29ydGggcHVzaGluZyB0
byBhIHNlcGFyYXRlIHBhdGNoIHNpbmNlIHRoZQpjYXN0aW5nIGlzc3VlcyBhcmUgbm90IGNvbXBs
ZXRlbHkgdHJpdmlhbC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
