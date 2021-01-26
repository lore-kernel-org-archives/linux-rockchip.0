Return-Path: <SRS0=k6cp=G5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A78F0C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Jan 2021 02:34:51 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2930D22EBD
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Jan 2021 02:34:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2930D22EBD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IqSLGvLkCHmn0m6PmHht3qi6L3B6LQebdU28rUVnlvc=; b=2UOuL+NyWQ3rG/oE0WoqFGQRz
	JuS9+lolRFCDlCUbo3IppzlNXlui1cm+YUsCa3lg+MOTxRr23wv6qAT6pi4t/J+qBJO+s4gso+NJs
	zYfY7tnDnbrMBLDWjpdmAE9bOSRM5Xuqv7Dl0pLMPCydZIlTwxLmgViHsKtDAMx6xpyja7TwtcW+X
	BSpebSEvS5aOQfPNI5ILFHGeS5T2zL1Kl4vAfX5OQ4ZZKM58iuKyI9kQpw9+C8Zq7AL4SA1j2aY7p
	BIcHiK5Ll/Hj4P+UaTcsw1kH3eiIzA9z2OhDGE2Q4DfaTQEZsuZg5ErAkNaWrXpZaXdNXG4UUOGkd
	CR8HqoxAA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l4EBo-0005KL-QL; Tue, 26 Jan 2021 02:34:44 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l4EBj-0005IQ-7a
 for linux-rockchip@lists.infradead.org; Tue, 26 Jan 2021 02:34:42 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id 8F5531D84;
 Tue, 26 Jan 2021 10:34:26 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.31.83] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P19895T139773254842112S1611628456710507_; 
 Tue, 26 Jan 2021 10:34:25 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <f4a2667adf4e7ccc101c1c7abede742c>
X-RL-SENDER: xxm@rock-chips.com
X-SENDER: xxm@rock-chips.com
X-LOGIN-NAME: xxm@rock-chips.com
X-FST-TO: jbx6244@gmail.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH v3 2/2] PCI: rockchip: add DesignWare based PCIe controller
To: Leon Romanovsky <leon@kernel.org>, Robin Murphy <robin.murphy@arm.com>
References: <20210125024824.634583-1-xxm@rock-chips.com>
 <20210125024927.634634-1-xxm@rock-chips.com> <20210125054836.GB579511@unreal>
 <0b65ca38-ff7a-f9cd-5406-1f275fbbecd1@rock-chips.com>
 <20210125090129.GF579511@unreal>
 <e7ed6586-06f3-52e3-b2db-38887a5a37e4@arm.com>
 <20210125184541.GJ579511@unreal>
From: xxm <xxm@rock-chips.com>
Message-ID: <79885f84-5c89-b21a-b0e1-dcb870736b05@rock-chips.com>
Date: Tue, 26 Jan 2021 10:34:16 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210125184541.GJ579511@unreal>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210125_213440_734878_35BB27A8 
X-CRM114-Status: GOOD (  24.47  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgTGVvbiwKClRoYW5rcyBmb3IgeW91ciByZXBseS4KCuWcqCAyMDIxLzEvMjYgMjo0NSwgTGVv
biBSb21hbm92c2t5IOWGmemBkzoKPiBPbiBNb24sIEphbiAyNSwgMjAyMSBhdCAwMzo1MzozOFBN
ICswMDAwLCBSb2JpbiBNdXJwaHkgd3JvdGU6Cj4+IE9uIDIwMjEtMDEtMjUgMDk6MDEsIExlb24g
Um9tYW5vdnNreSB3cm90ZToKPj4+IE9uIE1vbiwgSmFuIDI1LCAyMDIxIGF0IDAyOjQwOjEwUE0g
KzA4MDAsIHh4bSB3cm90ZToKPj4+PiBIaSBMZW9uLAo+Pj4+Cj4+Pj4gVGhhbmtzIGZvciB5b3Vy
IHJlcGx5Lgo+Pj4+Cj4+Pj4g5ZyoIDIwMjEvMS8yNSAxMzo0OCwgTGVvbiBSb21hbm92c2t5IOWG
memBkzoKPj4+Pj4gT24gTW9uLCBKYW4gMjUsIDIwMjEgYXQgMTA6NDk6MjdBTSArMDgwMCwgU2lt
b24gWHVlIHdyb3RlOgo+Pj4+Pj4gcGNpZS1kdy1yb2NrY2hpcCBpcyBiYXNlZCBvbiBEV0MgSVAu
IEJ1dCBwY2llLXJvY2tjaGlwLWhvc3QKPj4+Pj4+IGlzIFJvY2tjaGlwIGRlc2lnbmVkIElQIHdo
aWNoIGlzIG9ubHkgdXNlZCBmb3IgUkszMzk5LiBTbyBhbGwgdGhlIGZvbGxvd2luZwo+Pj4+Pj4g
bm9uLVJLMzM5OSBTb0NzIHNob3VsZCB1c2UgdGhpcyBkcml2ZXIuCj4+Pj4+Pgo+Pj4+Pj4gU2ln
bmVkLW9mZi1ieTogU2ltb24gWHVlIDx4eG1Acm9jay1jaGlwcy5jb20+Cj4+Pj4+PiBTaWduZWQt
b2ZmLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPj4+Pj4+IC0tLQo+
Pj4+Pj4gICAgIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL0tjb25maWcgICAgICAgICAgICB8
ICAgOSArCj4+Pj4+PiAgICAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvTWFrZWZpbGUgICAg
ICAgICAgIHwgICAxICsKPj4+Pj4+ICAgICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2ll
LWR3LXJvY2tjaGlwLmMgfCAyODYgKysrKysrKysrKysrKysrKysrCj4+Pj4+PiAgICAgMyBmaWxl
cyBjaGFuZ2VkLCAyOTYgaW5zZXJ0aW9ucygrKQo+Pj4+Pj4gICAgIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPj4+Pj4+Cj4+
Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvS2NvbmZpZyBiL2Ry
aXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL0tjb25maWcKPj4+Pj4+IGluZGV4IDIyYzU1MjllOWE2
NS4uYWVlNDA4ZmU5MjgzIDEwMDY0NAo+Pj4+Pj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxl
ci9kd2MvS2NvbmZpZwo+Pj4+Pj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvS2Nv
bmZpZwo+Pj4+Pj4gQEAgLTIxNCw2ICsyMTQsMTUgQEAgY29uZmlnIFBDSUVfQVJUUEVDNl9FUAo+
Pj4+Pj4gICAgIAkgIEVuYWJsZXMgc3VwcG9ydCBmb3IgdGhlIFBDSWUgY29udHJvbGxlciBpbiB0
aGUgQVJUUEVDLTYgU29DIHRvIHdvcmsgaW4KPj4+Pj4+ICAgICAJICBlbmRwb2ludCBtb2RlLiBU
aGlzIHVzZXMgdGhlIERlc2lnbldhcmUgY29yZS4KPj4+Pj4+Cj4+Pj4+PiArY29uZmlnIFBDSUVf
Uk9DS0NISVBfRFdfSE9TVAo+Pj4+Pj4gKwlib29sICJSb2NrY2hpcCBEZXNpZ25XYXJlIFBDSWUg
Y29udHJvbGxlciIKPj4+Pj4+ICsJc2VsZWN0IFBDSUVfRFcKPj4+Pj4+ICsJc2VsZWN0IFBDSUVf
RFdfSE9TVAo+Pj4+Pj4gKwlkZXBlbmRzIG9uIEFSQ0hfUk9DS0NISVAgfHwgQ09NUElMRV9URVNU
Cj4+Pj4+PiArCWRlcGVuZHMgb24gT0YKPj4+Pj4+ICsJaGVscAo+Pj4+Pj4gKwkgIEVuYWJsZXMg
c3VwcG9ydCBmb3IgdGhlIERXIFBDSWUgY29udHJvbGxlciBpbiB0aGUgUm9ja2NoaXAgU29DLgo+
Pj4+Pj4gKwo+Pj4+Pj4gICAgIGNvbmZpZyBQQ0lFX0lOVEVMX0dXCj4+Pj4+PiAgICAgCWJvb2wg
IkludGVsIEdhdGV3YXkgUENJZSBob3N0IGNvbnRyb2xsZXIgc3VwcG9ydCIKPj4+Pj4+ICAgICAJ
ZGVwZW5kcyBvbiBPRiAmJiAoWDg2IHx8IENPTVBJTEVfVEVTVCkKPj4+Pj4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9NYWtlZmlsZSBiL2RyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvZHdjL01ha2VmaWxlCj4+Pj4+PiBpbmRleCBhNzUxNTUzZmEwZGIuLjMwZWVmOGU5ZWU4
YSAxMDA2NDQKPj4+Pj4+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL01ha2VmaWxl
Cj4+Pj4+PiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9NYWtlZmlsZQo+Pj4+Pj4g
QEAgLTEzLDYgKzEzLDcgQEAgb2JqLSQoQ09ORklHX1BDSV9MQVlFUlNDQVBFX0VQKSArPSBwY2kt
bGF5ZXJzY2FwZS1lcC5vCj4+Pj4+PiAgICAgb2JqLSQoQ09ORklHX1BDSUVfUUNPTSkgKz0gcGNp
ZS1xY29tLm8KPj4+Pj4+ICAgICBvYmotJChDT05GSUdfUENJRV9BUk1BREFfOEspICs9IHBjaWUt
YXJtYWRhOGsubwo+Pj4+Pj4gICAgIG9iai0kKENPTkZJR19QQ0lFX0FSVFBFQzYpICs9IHBjaWUt
YXJ0cGVjNi5vCj4+Pj4+PiArb2JqLSQoQ09ORklHX1BDSUVfUk9DS0NISVBfRFdfSE9TVCkgKz0g
cGNpZS1kdy1yb2NrY2hpcC5vCj4+Pj4+PiAgICAgb2JqLSQoQ09ORklHX1BDSUVfSU5URUxfR1cp
ICs9IHBjaWUtaW50ZWwtZ3cubwo+Pj4+Pj4gICAgIG9iai0kKENPTkZJR19QQ0lFX0tJUklOKSAr
PSBwY2llLWtpcmluLm8KPj4+Pj4+ICAgICBvYmotJChDT05GSUdfUENJRV9ISVNJX1NUQikgKz0g
cGNpZS1oaXN0Yi5vCj4+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9k
d2MvcGNpZS1kdy1yb2NrY2hpcC5jIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1k
dy1yb2NrY2hpcC5jCj4+Pj4+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+Pj4+Pj4gaW5kZXggMDAw
MDAwMDAwMDAwLi4wN2Y2ZDFjZDU4NTMKPj4+Pj4+IC0tLSAvZGV2L251bGwKPj4+Pj4+ICsrKyBi
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+Pj4+Pj4gQEAg
LTAsMCArMSwyODYgQEAKPj4+Pj4+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIu
MAo+Pj4+Pj4gKy8qCj4+Pj4+PiArICogUENJZSBob3N0IGNvbnRyb2xsZXIgZHJpdmVyIGZvciBS
b2NrY2hpcCBTb0NzCj4+Pj4+PiArICoKPj4+Pj4+ICsgKiBDb3B5cmlnaHQgKEMpIDIwMjEgUm9j
a2NoaXAgRWxlY3Ryb25pY3MgQ28uLCBMdGQuCj4+Pj4+PiArICoJCWh0dHA6Ly93d3cucm9jay1j
aGlwcy5jb20KPj4+Pj4+ICsgKgo+Pj4+Pj4gKyAqIEF1dGhvcjogU2ltb24gWHVlIDx4eG1Acm9j
ay1jaGlwcy5jb20+Cj4+Pj4+PiArICovCj4+Pj4+PiArCj4+Pj4+PiArI2luY2x1ZGUgPGxpbnV4
L2Nsay5oPgo+Pj4+Pj4gKyNpbmNsdWRlIDxsaW51eC9ncGlvL2NvbnN1bWVyLmg+Cj4+Pj4+PiAr
I2luY2x1ZGUgPGxpbnV4L21mZC9zeXNjb24uaD4KPj4+Pj4+ICsjaW5jbHVkZSA8bGludXgvbW9k
dWxlLmg+Cj4+Pj4+PiArI2luY2x1ZGUgPGxpbnV4L29mX2RldmljZS5oPgo+Pj4+Pj4gKyNpbmNs
dWRlIDxsaW51eC9waHkvcGh5Lmg+Cj4+Pj4+PiArI2luY2x1ZGUgPGxpbnV4L3BsYXRmb3JtX2Rl
dmljZS5oPgo+Pj4+Pj4gKyNpbmNsdWRlIDxsaW51eC9yZWdtYXAuaD4KPj4+Pj4+ICsjaW5jbHVk
ZSA8bGludXgvcmVzZXQuaD4KPj4+Pj4+ICsKPj4+Pj4+ICsjaW5jbHVkZSAicGNpZS1kZXNpZ253
YXJlLmgiCj4+Pj4+PiArCj4+Pj4+PiArLyoKPj4+Pj4+ICsgKiBUaGUgdXBwZXIgMTYgYml0cyBv
ZiBQQ0lFX0NMSUVOVF9DT05GSUcgYXJlIGEgd3JpdGUKPj4+Pj4+ICsgKiBtYXNrIGZvciB0aGUg
bG93ZXIgMTYgYml0cy4gIFRoaXMgYWxsb3dzIGF0b21pYyB1cGRhdGVzCj4+Pj4+PiArICogb2Yg
dGhlIHJlZ2lzdGVyIHdpdGhvdXQgbG9ja2luZy4KPj4+Pj4+ICsgKi8KPj4+Pj4gVGhpcyBpcyBj
b3JyZWN0IG9ubHkgZm9yIHRoZSB2YXJpYWJsZXMgdGhhdCBuYXR1cmFsbHkgYWxpZ25lZCwgSSBp
bWFnaW5lCj4+Pj4+IHRoYXQgdGhpcyBpcyB0aGUgY2FzZSBoZXJlIGFuZCBpbiB0aGUgTGludXgs
IGJ1dCBiZXR0ZXIgZG8gbm90IHdyaXRlIGNvbW1lbnRzCj4+Pj4+IGluIHRoZSBjb2RlIHRoYXQg
YXJlIG5vdCBhY2N1cmF0ZS4KPj4+PiBPaywgd2lsbCByZW1vdmUuCj4+Pj4gSSB3b25kZXIgd2hh
dCBpdCB3b3VsZCBiZSB3aGVuIG91dHNpZGUgdGhlIExpbnV4PyBDb3VsZCB5b3Ugc2hhcmUgc29t
ZSBpbmZvcm1hdGlvbj8KPj4+IFRoZSBDIHN0YW5kYXJkIHNheXMgbm90aGluZyBhYm91dCBhdG9t
aWNpdHksIGludGVnZXIgYXNzaWdubWVudCBtYXliZSBhdG9taWMsCj4+PiBtYXliZSBpdCBpc27i
gJl0LiBUaGVyZSBpcyBubyBndWFyYW50ZWUsIHBsYWluIGludGVnZXIgYXNzaWdubWVudCBpbiBD
IGlzIG5vbi1hdG9taWMKPj4+IGJ5IGRlZmluaXRpb24uCj4+Pgo+Pj4gVGhlIGF0b21pY2l0eSBv
ZiB1MzIgaXMgdmVyeSBkZXBlbmRlbnQgb24gaGFyZHdhcmUgdmVuZG9yLCBtZW1vcnkgbW9kZWwg
YW5kIGNvbXBpbGVyLAo+Pj4gZm9yIGV4YW1wbGUgeDg2IGFuZCBBUk1zIGd1YXJhbnRlZSBhdG9t
aWNpdHkgZm9yIHUzMi4gVGhpcyBpcyB3aHkgSSBzYWlkIHRoYXQgcHJvYmFibHkKPj4+IGhlcmUg
KExpbnV4KSBpdCBpcyBvayBhbmQgeW91IGFyZSBub3QgYWxvbmUgaW4gZXhwZWN0aW5nIGxvY2ts
ZXNzIHdyaXRlLgo+PiBIdWg/IFdoYXQgZG8gdmFyaWFibGVzIGFuZCB0aGUgYWJzdHJhY3QgbWFj
aGluZSBvZiB0aGUgQyBsYW5ndWFnZQo+PiBlbnZpcm9ubWVudCBoYXZlIHRvIGRvIHdpdGggdGhl
IGRlZmluaXRpb24gb2YgKmhhcmR3YXJlIE1NSU8gcmVnaXN0ZXJzKj8gV2UKPj4gZG9uJ3Qgd3Jp
dGUgdG8gcmVnaXN0ZXJzIHdpdGggcGxhaW4gaW50ZWdlciBhc3NpZ25tZW50IG9mIHUzMiwgd2Ug
dXNlCj4+IHdyaXRlbCgpIChwcmVjaXNlbHkgaW4gb3JkZXIgdG8gYnlwYXNzIHRoYXQgYWJzdHJh
Y3QgQyBlbnZpcm9ubWVudCkuCj4+Cj4+IEkgYXBwcmVjaWF0ZSB0aGF0IHRoZSBjb21tZW50IGlz
IG5vdCB1bml2ZXJzYWxseSB0cnVlIGlmIHRha2VuIGNvbXBsZXRlbHkKPj4gb3V0IG9mIGNvbnRl
eHQsIGJ1dCBJIHRoYXQncyB0cnVlIG9mIHByZXR0eSBtdWNoIGFsbCBjb21tZW50cyBldmVyLiBJ
Zgo+PiBzb21lb25lIHJlYWxseSB3ZXJlIHRyeWluZyB0byBsZWFybiBiYXNpYyBwcm9ncmFtbWlu
ZyBwcmluY2lwbGVzIGZyb20gcmFuZG9tCj4+IGNvbW1lbnRzIGluIExpbnV4IGRyaXZlcnMsIHRo
ZW4gaXQncyBhbHJlYWR5IGEgYml0IGxhdGUgZm9yIHVzIHRvIHRyeSBhbmQKPj4gc2F2ZSB0aGVt
IGZyb20gdGhlbXNlbHZlcy4KPiBTbyB3aGF0PyBEb2VzIGl0IG1lYW4gdGhhdCBuZXcgY29kZSBz
aG91bGQgaGF2ZSBjb21tZW50cyB0aGF0IGFyZSBub3QKPiBjb3JyZWN0PyBBcyB5b3UgY2FuIHNl
ZSBmcm9tIHRoaXMgY29udmVyc2F0aW9uLCBldmVuIHRoZSBhdXRob3IgZGlkbid0Cj4ga25vdyB3
aGF0IHUzMiBpc27igJl0IGd1YXJhbnRlZWQgdG8gYmUgYXRvbWljLCBzbyB5ZXMsIHRoZSBjb21t
ZW50cyBzaG91bGQKPiBiZSBjb3JyZWN0LgoKV2hhdCBJIGRvIGtub3cgaXMgd3JpdGVsKCkgd2ls
bCBkbyB0aGUgcmlnaHQgdGhpbmdzKGxpa2UgbWVtIGJhcnJpZXIsIAphdG9taWMuLi4pIHRvIHVw
ZGF0ZSB0aGUgcmVnaXN0ZXJzIGNvcnJlY3RseQoKaW4gIkFSTSArIExpbnV4IiBwbGF0Zm9ybS4g
QnV0IEkgaGF2ZSBubyBpZGVhciBpZiBvdXQgb2bCoCB0aGlzIHNwZWNpZmljIApwbGF0Zm9ybSwg
c28gSSBhc2tlZCBmb3IgbW9yZSBpbmZvcm1hdGlvbiB0byBsZWFybi4KCkFueXdheSwgSSB3aWxs
IGtlZXAgdGhlIGZpcnN0IHBhcnQgb2YgY29tbWVudCB0byBpbGx1c3RyYXRlIGhvdyB0byB1c2Ug
ClBDSUVfQ0xJRU5UX1JFR0lTVEVSLCBhbmQgcmVtb3ZlIHRoZSAiYXRvbWljIiBwYXJ0LgoKPiBU
aGFua3MKPgo+CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
