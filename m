Return-Path: <SRS0=VpfD=G4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC81CC433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 09:01:44 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8A5C822E03
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 09:01:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8A5C822E03
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fenzmWOCaa9G/5cbESexfIZWkyg9CoBSvwray+iXQps=; b=AV3Z5I0CjnBvVnzU7O8+GXZ7y
	QVLgcUuOqVDV+4WFSlZojpyQdLbhOlbMqgAriVbE53kDNpfe7Pkw0dKYJ4n8vC3LzUpc1QNOHZQ3l
	FPzSLoOOu4tvq77YMSKuR/8ccHNb4Bz1zISDSv/Er6yK6ycBx01zqivNv78q4aPJQCS0YO3xCX89j
	oOFiLUDFFrOSKFWk6O7RfFW3FIC/SR1bRYSMIH3XBgDohZKfA132G8S0KDXcoXAzAZEBEsy0/wJDK
	E8uDogI8avenDH4nsZmOl52VtJYOpojfwbO6NFKVl7+9Mj5fCRczaB0kdMVgNqRVzCZcKcs/y24tu
	NChuYqGrA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l3xkf-0006Jn-0I; Mon, 25 Jan 2021 09:01:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l3xkc-0006Iq-AK
 for linux-rockchip@lists.infradead.org; Mon, 25 Jan 2021 09:01:36 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id B71B9230FC;
 Mon, 25 Jan 2021 09:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1611565293;
 bh=hkNqS0vjv+u+et9RQcFByorFL7Ofjlt+zUiCnuzTTnE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YHPyDNctpud3Ql8sfQXk0qans2trC424oyDnRoSknodSVAFp3blvxGjWBB6digqjP
 eri20ECDcwcg8KggzO0qwGy7ObbIKM7J7mMS60RyU0uah3nT1uzICuNlA9qQseE7+q
 Ix6Dui3c7WjPll/JOqGChhbKXZ4PhaK6mDU7pvNfV2Yyzq3vFFxeDpYumqRKlxt8wi
 fk0Ebye3EI01gnM/ukajnHaON4nVXZ9hAIEqJHbNEb7q56td9JchCNSaMZz24KHLIQ
 2j+KH7dp2mwsh5p7EX1nKzJaSWFv2ykEj9mEfa88m/sbFg3mncxWvu08mXCNpWoanX
 IdCRvmBBxno4A==
Date: Mon, 25 Jan 2021 11:01:29 +0200
From: Leon Romanovsky <leon@kernel.org>
To: xxm <xxm@rock-chips.com>
Subject: Re: [PATCH v3 2/2] PCI: rockchip: add DesignWare based PCIe controller
Message-ID: <20210125090129.GF579511@unreal>
References: <20210125024824.634583-1-xxm@rock-chips.com>
 <20210125024927.634634-1-xxm@rock-chips.com>
 <20210125054836.GB579511@unreal>
 <0b65ca38-ff7a-f9cd-5406-1f275fbbecd1@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0b65ca38-ff7a-f9cd-5406-1f275fbbecd1@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210125_040134_814123_4CE19A04 
X-CRM114-Status: GOOD (  28.04  )
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Johan Jonker <jbx6244@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBKYW4gMjUsIDIwMjEgYXQgMDI6NDA6MTBQTSArMDgwMCwgeHhtIHdyb3RlOgo+IEhp
IExlb24sCj4KPiBUaGFua3MgZm9yIHlvdXIgcmVwbHkuCj4KPiDlnKggMjAyMS8xLzI1IDEzOjQ4
LCBMZW9uIFJvbWFub3Zza3kg5YaZ6YGTOgo+ID4gT24gTW9uLCBKYW4gMjUsIDIwMjEgYXQgMTA6
NDk6MjdBTSArMDgwMCwgU2ltb24gWHVlIHdyb3RlOgo+ID4gPiBwY2llLWR3LXJvY2tjaGlwIGlz
IGJhc2VkIG9uIERXQyBJUC4gQnV0IHBjaWUtcm9ja2NoaXAtaG9zdAo+ID4gPiBpcyBSb2NrY2hp
cCBkZXNpZ25lZCBJUCB3aGljaCBpcyBvbmx5IHVzZWQgZm9yIFJLMzM5OS4gU28gYWxsIHRoZSBm
b2xsb3dpbmcKPiA+ID4gbm9uLVJLMzM5OSBTb0NzIHNob3VsZCB1c2UgdGhpcyBkcml2ZXIuCj4g
PiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IFNpbW9uIFh1ZSA8eHhtQHJvY2stY2hpcHMuY29tPgo+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4K
PiA+ID4gLS0tCj4gPiA+ICAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvS2NvbmZpZyAgICAg
ICAgICAgIHwgICA5ICsKPiA+ID4gICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9NYWtlZmls
ZSAgICAgICAgICAgfCAgIDEgKwo+ID4gPiAgIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3Bj
aWUtZHctcm9ja2NoaXAuYyB8IDI4NiArKysrKysrKysrKysrKysrKysKPiA+ID4gICAzIGZpbGVz
IGNoYW5nZWQsIDI5NiBpbnNlcnRpb25zKCspCj4gPiA+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRy
aXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+ID4gPgo+ID4gPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvS2NvbmZpZyBiL2RyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvZHdjL0tjb25maWcKPiA+ID4gaW5kZXggMjJjNTUyOWU5YTY1Li5hZWU0
MDhmZTkyODMgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL0tj
b25maWcKPiA+ID4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvS2NvbmZpZwo+ID4g
PiBAQCAtMjE0LDYgKzIxNCwxNSBAQCBjb25maWcgUENJRV9BUlRQRUM2X0VQCj4gPiA+ICAgCSAg
RW5hYmxlcyBzdXBwb3J0IGZvciB0aGUgUENJZSBjb250cm9sbGVyIGluIHRoZSBBUlRQRUMtNiBT
b0MgdG8gd29yayBpbgo+ID4gPiAgIAkgIGVuZHBvaW50IG1vZGUuIFRoaXMgdXNlcyB0aGUgRGVz
aWduV2FyZSBjb3JlLgo+ID4gPgo+ID4gPiArY29uZmlnIFBDSUVfUk9DS0NISVBfRFdfSE9TVAo+
ID4gPiArCWJvb2wgIlJvY2tjaGlwIERlc2lnbldhcmUgUENJZSBjb250cm9sbGVyIgo+ID4gPiAr
CXNlbGVjdCBQQ0lFX0RXCj4gPiA+ICsJc2VsZWN0IFBDSUVfRFdfSE9TVAo+ID4gPiArCWRlcGVu
ZHMgb24gQVJDSF9ST0NLQ0hJUCB8fCBDT01QSUxFX1RFU1QKPiA+ID4gKwlkZXBlbmRzIG9uIE9G
Cj4gPiA+ICsJaGVscAo+ID4gPiArCSAgRW5hYmxlcyBzdXBwb3J0IGZvciB0aGUgRFcgUENJZSBj
b250cm9sbGVyIGluIHRoZSBSb2NrY2hpcCBTb0MuCj4gPiA+ICsKPiA+ID4gICBjb25maWcgUENJ
RV9JTlRFTF9HVwo+ID4gPiAgIAlib29sICJJbnRlbCBHYXRld2F5IFBDSWUgaG9zdCBjb250cm9s
bGVyIHN1cHBvcnQiCj4gPiA+ICAgCWRlcGVuZHMgb24gT0YgJiYgKFg4NiB8fCBDT01QSUxFX1RF
U1QpCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9NYWtlZmls
ZSBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL01ha2VmaWxlCj4gPiA+IGluZGV4IGE3NTE1
NTNmYTBkYi4uMzBlZWY4ZTllZThhIDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL2R3Yy9NYWtlZmlsZQo+ID4gPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3
Yy9NYWtlZmlsZQo+ID4gPiBAQCAtMTMsNiArMTMsNyBAQCBvYmotJChDT05GSUdfUENJX0xBWUVS
U0NBUEVfRVApICs9IHBjaS1sYXllcnNjYXBlLWVwLm8KPiA+ID4gICBvYmotJChDT05GSUdfUENJ
RV9RQ09NKSArPSBwY2llLXFjb20ubwo+ID4gPiAgIG9iai0kKENPTkZJR19QQ0lFX0FSTUFEQV84
SykgKz0gcGNpZS1hcm1hZGE4ay5vCj4gPiA+ICAgb2JqLSQoQ09ORklHX1BDSUVfQVJUUEVDNikg
Kz0gcGNpZS1hcnRwZWM2Lm8KPiA+ID4gK29iai0kKENPTkZJR19QQ0lFX1JPQ0tDSElQX0RXX0hP
U1QpICs9IHBjaWUtZHctcm9ja2NoaXAubwo+ID4gPiAgIG9iai0kKENPTkZJR19QQ0lFX0lOVEVM
X0dXKSArPSBwY2llLWludGVsLWd3Lm8KPiA+ID4gICBvYmotJChDT05GSUdfUENJRV9LSVJJTikg
Kz0gcGNpZS1raXJpbi5vCj4gPiA+ICAgb2JqLSQoQ09ORklHX1BDSUVfSElTSV9TVEIpICs9IHBj
aWUtaGlzdGIubwo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2Mv
cGNpZS1kdy1yb2NrY2hpcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1y
b2NrY2hpcC5jCj4gPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiA+IGluZGV4IDAwMDAwMDAw
MDAwMC4uMDdmNmQxY2Q1ODUzCj4gPiA+IC0tLSAvZGV2L251bGwKPiA+ID4gKysrIGIvZHJpdmVy
cy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gPiA+IEBAIC0wLDAgKzEs
Mjg2IEBACj4gPiA+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+ID4gPiAr
LyoKPiA+ID4gKyAqIFBDSWUgaG9zdCBjb250cm9sbGVyIGRyaXZlciBmb3IgUm9ja2NoaXAgU29D
cwo+ID4gPiArICoKPiA+ID4gKyAqIENvcHlyaWdodCAoQykgMjAyMSBSb2NrY2hpcCBFbGVjdHJv
bmljcyBDby4sIEx0ZC4KPiA+ID4gKyAqCQlodHRwOi8vd3d3LnJvY2stY2hpcHMuY29tCj4gPiA+
ICsgKgo+ID4gPiArICogQXV0aG9yOiBTaW1vbiBYdWUgPHh4bUByb2NrLWNoaXBzLmNvbT4KPiA+
ID4gKyAqLwo+ID4gPiArCj4gPiA+ICsjaW5jbHVkZSA8bGludXgvY2xrLmg+Cj4gPiA+ICsjaW5j
bHVkZSA8bGludXgvZ3Bpby9jb25zdW1lci5oPgo+ID4gPiArI2luY2x1ZGUgPGxpbnV4L21mZC9z
eXNjb24uaD4KPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9tb2R1bGUuaD4KPiA+ID4gKyNpbmNsdWRl
IDxsaW51eC9vZl9kZXZpY2UuaD4KPiA+ID4gKyNpbmNsdWRlIDxsaW51eC9waHkvcGh5Lmg+Cj4g
PiA+ICsjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gPiA+ICsjaW5jbHVkZSA8
bGludXgvcmVnbWFwLmg+Cj4gPiA+ICsjaW5jbHVkZSA8bGludXgvcmVzZXQuaD4KPiA+ID4gKwo+
ID4gPiArI2luY2x1ZGUgInBjaWUtZGVzaWdud2FyZS5oIgo+ID4gPiArCj4gPiA+ICsvKgo+ID4g
PiArICogVGhlIHVwcGVyIDE2IGJpdHMgb2YgUENJRV9DTElFTlRfQ09ORklHIGFyZSBhIHdyaXRl
Cj4gPiA+ICsgKiBtYXNrIGZvciB0aGUgbG93ZXIgMTYgYml0cy4gIFRoaXMgYWxsb3dzIGF0b21p
YyB1cGRhdGVzCj4gPiA+ICsgKiBvZiB0aGUgcmVnaXN0ZXIgd2l0aG91dCBsb2NraW5nLgo+ID4g
PiArICovCj4gPiBUaGlzIGlzIGNvcnJlY3Qgb25seSBmb3IgdGhlIHZhcmlhYmxlcyB0aGF0IG5h
dHVyYWxseSBhbGlnbmVkLCBJIGltYWdpbmUKPiA+IHRoYXQgdGhpcyBpcyB0aGUgY2FzZSBoZXJl
IGFuZCBpbiB0aGUgTGludXgsIGJ1dCBiZXR0ZXIgZG8gbm90IHdyaXRlIGNvbW1lbnRzCj4gPiBp
biB0aGUgY29kZSB0aGF0IGFyZSBub3QgYWNjdXJhdGUuCj4KPiBPaywgd2lsbCByZW1vdmUuCj4g
SSB3b25kZXIgd2hhdCBpdCB3b3VsZCBiZSB3aGVuIG91dHNpZGUgdGhlIExpbnV4PyBDb3VsZCB5
b3Ugc2hhcmUgc29tZSBpbmZvcm1hdGlvbj8KClRoZSBDIHN0YW5kYXJkIHNheXMgbm90aGluZyBh
Ym91dCBhdG9taWNpdHksIGludGVnZXIgYXNzaWdubWVudCBtYXliZSBhdG9taWMsCm1heWJlIGl0
IGlzbuKAmXQuIFRoZXJlIGlzIG5vIGd1YXJhbnRlZSwgcGxhaW4gaW50ZWdlciBhc3NpZ25tZW50
IGluIEMgaXMgbm9uLWF0b21pYwpieSBkZWZpbml0aW9uLgoKVGhlIGF0b21pY2l0eSBvZiB1MzIg
aXMgdmVyeSBkZXBlbmRlbnQgb24gaGFyZHdhcmUgdmVuZG9yLCBtZW1vcnkgbW9kZWwgYW5kIGNv
bXBpbGVyLApmb3IgZXhhbXBsZSB4ODYgYW5kIEFSTXMgZ3VhcmFudGVlIGF0b21pY2l0eSBmb3Ig
dTMyLiBUaGlzIGlzIHdoeSBJIHNhaWQgdGhhdCBwcm9iYWJseQpoZXJlIChMaW51eCkgaXQgaXMg
b2sgYW5kIHlvdSBhcmUgbm90IGFsb25lIGluIGV4cGVjdGluZyBsb2NrbGVzcyB3cml0ZS4KClRo
YW5rcwoKPgo+ID4gVGhhbmtzCj4gPgo+ID4KPiA+Cj4KPgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
