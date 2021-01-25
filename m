Return-Path: <SRS0=VpfD=G4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0D4AC433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 06:40:31 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 225D1224DE
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 06:40:30 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 225D1224DE
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/Qb7TyXhTYPlTyRYtWt+TjEIj95fylLrhCCQC6Kdsys=; b=XlX8oKIqbScbzxoJH1p5jb6qQ
	p/5RkYhhqS6rZ3kBJ7f2IOBzEbjtBx3XGw4OX/VHPZMI1XAoIp33mL6KnmRl78dGyJY8n2Hi6Fnc1
	R/bVjn3drdadg0UUvGR5YsLdeZ8cUGMAvEM5wPkShAJA8CiXLBSb6BTeX1JS2/SQJbQf/Z9pJAUuQ
	46zxnYF+7aT9t8H26jcAKS7eeZitKKh9tY0AagCOAc6DwZaIGutGbJ802OrPNDr0D6Ow9Sj6JJL02
	7gbgI8/kYagZBABtHVQ4D6bqaG3e5wFKygsIY/EYuaAVDLa4z+ayZ9Vf14NASJKp0HeZgxHGDDcFW
	WQsswgxmA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l3vY4-0002U9-Ac; Mon, 25 Jan 2021 06:40:28 +0000
Received: from regular1.263xmail.com ([211.150.70.202])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l3vXz-0002Ss-4b
 for linux-rockchip@lists.infradead.org; Mon, 25 Jan 2021 06:40:27 +0000
Received: from localhost (unknown [192.168.167.105])
 by regular1.263xmail.com (Postfix) with ESMTP id DA5C1798;
 Mon, 25 Jan 2021 14:40:13 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.31.83] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P29054T139840366569216S1611556812649897_; 
 Mon, 25 Jan 2021 14:40:13 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <c0c2eb2e66b46a6fd208b68124c17aa9>
X-RL-SENDER: xxm@rock-chips.com
X-SENDER: xxm@rock-chips.com
X-LOGIN-NAME: xxm@rock-chips.com
X-FST-TO: shawn.lin@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH v3 2/2] PCI: rockchip: add DesignWare based PCIe controller
To: Leon Romanovsky <leon@kernel.org>
References: <20210125024824.634583-1-xxm@rock-chips.com>
 <20210125024927.634634-1-xxm@rock-chips.com> <20210125054836.GB579511@unreal>
From: xxm <xxm@rock-chips.com>
Message-ID: <0b65ca38-ff7a-f9cd-5406-1f275fbbecd1@rock-chips.com>
Date: Mon, 25 Jan 2021 14:40:10 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210125054836.GB579511@unreal>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210125_014023_666700_6CCEECEA 
X-CRM114-Status: GOOD (  20.32  )
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

SGkgTGVvbiwKClRoYW5rcyBmb3IgeW91ciByZXBseS4KCuWcqCAyMDIxLzEvMjUgMTM6NDgsIExl
b24gUm9tYW5vdnNreSDlhpnpgZM6Cj4gT24gTW9uLCBKYW4gMjUsIDIwMjEgYXQgMTA6NDk6MjdB
TSArMDgwMCwgU2ltb24gWHVlIHdyb3RlOgo+PiBwY2llLWR3LXJvY2tjaGlwIGlzIGJhc2VkIG9u
IERXQyBJUC4gQnV0IHBjaWUtcm9ja2NoaXAtaG9zdAo+PiBpcyBSb2NrY2hpcCBkZXNpZ25lZCBJ
UCB3aGljaCBpcyBvbmx5IHVzZWQgZm9yIFJLMzM5OS4gU28gYWxsIHRoZSBmb2xsb3dpbmcKPj4g
bm9uLVJLMzM5OSBTb0NzIHNob3VsZCB1c2UgdGhpcyBkcml2ZXIuCj4+Cj4+IFNpZ25lZC1vZmYt
Ynk6IFNpbW9uIFh1ZSA8eHhtQHJvY2stY2hpcHMuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBTaGF3
biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVycy9wY2kv
Y29udHJvbGxlci9kd2MvS2NvbmZpZyAgICAgICAgICAgIHwgICA5ICsKPj4gICBkcml2ZXJzL3Bj
aS9jb250cm9sbGVyL2R3Yy9NYWtlZmlsZSAgICAgICAgICAgfCAgIDEgKwo+PiAgIGRyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYyB8IDI4NiArKysrKysrKysrKysr
KysrKysKPj4gICAzIGZpbGVzIGNoYW5nZWQsIDI5NiBpbnNlcnRpb25zKCspCj4+ICAgY3JlYXRl
IG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAu
Ywo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvS2NvbmZpZyBi
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL0tjb25maWcKPj4gaW5kZXggMjJjNTUyOWU5YTY1
Li5hZWU0MDhmZTkyODMgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdj
L0tjb25maWcKPj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvS2NvbmZpZwo+PiBA
QCAtMjE0LDYgKzIxNCwxNSBAQCBjb25maWcgUENJRV9BUlRQRUM2X0VQCj4+ICAgCSAgRW5hYmxl
cyBzdXBwb3J0IGZvciB0aGUgUENJZSBjb250cm9sbGVyIGluIHRoZSBBUlRQRUMtNiBTb0MgdG8g
d29yayBpbgo+PiAgIAkgIGVuZHBvaW50IG1vZGUuIFRoaXMgdXNlcyB0aGUgRGVzaWduV2FyZSBj
b3JlLgo+Pgo+PiArY29uZmlnIFBDSUVfUk9DS0NISVBfRFdfSE9TVAo+PiArCWJvb2wgIlJvY2tj
aGlwIERlc2lnbldhcmUgUENJZSBjb250cm9sbGVyIgo+PiArCXNlbGVjdCBQQ0lFX0RXCj4+ICsJ
c2VsZWN0IFBDSUVfRFdfSE9TVAo+PiArCWRlcGVuZHMgb24gQVJDSF9ST0NLQ0hJUCB8fCBDT01Q
SUxFX1RFU1QKPj4gKwlkZXBlbmRzIG9uIE9GCj4+ICsJaGVscAo+PiArCSAgRW5hYmxlcyBzdXBw
b3J0IGZvciB0aGUgRFcgUENJZSBjb250cm9sbGVyIGluIHRoZSBSb2NrY2hpcCBTb0MuCj4+ICsK
Pj4gICBjb25maWcgUENJRV9JTlRFTF9HVwo+PiAgIAlib29sICJJbnRlbCBHYXRld2F5IFBDSWUg
aG9zdCBjb250cm9sbGVyIHN1cHBvcnQiCj4+ICAgCWRlcGVuZHMgb24gT0YgJiYgKFg4NiB8fCBD
T01QSUxFX1RFU1QpCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9N
YWtlZmlsZSBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL01ha2VmaWxlCj4+IGluZGV4IGE3
NTE1NTNmYTBkYi4uMzBlZWY4ZTllZThhIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3BjaS9jb250
cm9sbGVyL2R3Yy9NYWtlZmlsZQo+PiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9N
YWtlZmlsZQo+PiBAQCAtMTMsNiArMTMsNyBAQCBvYmotJChDT05GSUdfUENJX0xBWUVSU0NBUEVf
RVApICs9IHBjaS1sYXllcnNjYXBlLWVwLm8KPj4gICBvYmotJChDT05GSUdfUENJRV9RQ09NKSAr
PSBwY2llLXFjb20ubwo+PiAgIG9iai0kKENPTkZJR19QQ0lFX0FSTUFEQV84SykgKz0gcGNpZS1h
cm1hZGE4ay5vCj4+ICAgb2JqLSQoQ09ORklHX1BDSUVfQVJUUEVDNikgKz0gcGNpZS1hcnRwZWM2
Lm8KPj4gK29iai0kKENPTkZJR19QQ0lFX1JPQ0tDSElQX0RXX0hPU1QpICs9IHBjaWUtZHctcm9j
a2NoaXAubwo+PiAgIG9iai0kKENPTkZJR19QQ0lFX0lOVEVMX0dXKSArPSBwY2llLWludGVsLWd3
Lm8KPj4gICBvYmotJChDT05GSUdfUENJRV9LSVJJTikgKz0gcGNpZS1raXJpbi5vCj4+ICAgb2Jq
LSQoQ09ORklHX1BDSUVfSElTSV9TVEIpICs9IHBjaWUtaGlzdGIubwo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIGIvZHJpdmVycy9w
Y2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4+IG5ldyBmaWxlIG1vZGUgMTAw
NjQ0Cj4+IGluZGV4IDAwMDAwMDAwMDAwMC4uMDdmNmQxY2Q1ODUzCj4+IC0tLSAvZGV2L251bGwK
Pj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4+
IEBAIC0wLDAgKzEsMjg2IEBACj4+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIu
MAo+PiArLyoKPj4gKyAqIFBDSWUgaG9zdCBjb250cm9sbGVyIGRyaXZlciBmb3IgUm9ja2NoaXAg
U29Dcwo+PiArICoKPj4gKyAqIENvcHlyaWdodCAoQykgMjAyMSBSb2NrY2hpcCBFbGVjdHJvbmlj
cyBDby4sIEx0ZC4KPj4gKyAqCQlodHRwOi8vd3d3LnJvY2stY2hpcHMuY29tCj4+ICsgKgo+PiAr
ICogQXV0aG9yOiBTaW1vbiBYdWUgPHh4bUByb2NrLWNoaXBzLmNvbT4KPj4gKyAqLwo+PiArCj4+
ICsjaW5jbHVkZSA8bGludXgvY2xrLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvZ3Bpby9jb25zdW1l
ci5oPgo+PiArI2luY2x1ZGUgPGxpbnV4L21mZC9zeXNjb24uaD4KPj4gKyNpbmNsdWRlIDxsaW51
eC9tb2R1bGUuaD4KPj4gKyNpbmNsdWRlIDxsaW51eC9vZl9kZXZpY2UuaD4KPj4gKyNpbmNsdWRl
IDxsaW51eC9waHkvcGh5Lmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+
Cj4+ICsjaW5jbHVkZSA8bGludXgvcmVnbWFwLmg+Cj4+ICsjaW5jbHVkZSA8bGludXgvcmVzZXQu
aD4KPj4gKwo+PiArI2luY2x1ZGUgInBjaWUtZGVzaWdud2FyZS5oIgo+PiArCj4+ICsvKgo+PiAr
ICogVGhlIHVwcGVyIDE2IGJpdHMgb2YgUENJRV9DTElFTlRfQ09ORklHIGFyZSBhIHdyaXRlCj4+
ICsgKiBtYXNrIGZvciB0aGUgbG93ZXIgMTYgYml0cy4gIFRoaXMgYWxsb3dzIGF0b21pYyB1cGRh
dGVzCj4+ICsgKiBvZiB0aGUgcmVnaXN0ZXIgd2l0aG91dCBsb2NraW5nLgo+PiArICovCj4gVGhp
cyBpcyBjb3JyZWN0IG9ubHkgZm9yIHRoZSB2YXJpYWJsZXMgdGhhdCBuYXR1cmFsbHkgYWxpZ25l
ZCwgSSBpbWFnaW5lCj4gdGhhdCB0aGlzIGlzIHRoZSBjYXNlIGhlcmUgYW5kIGluIHRoZSBMaW51
eCwgYnV0IGJldHRlciBkbyBub3Qgd3JpdGUgY29tbWVudHMKPiBpbiB0aGUgY29kZSB0aGF0IGFy
ZSBub3QgYWNjdXJhdGUuCgpPaywgd2lsbCByZW1vdmUuCkkgd29uZGVyIHdoYXQgaXQgd291bGQg
YmUgd2hlbiBvdXRzaWRlIHRoZSBMaW51eD8gQ291bGQgeW91IHNoYXJlIHNvbWUgaW5mb3JtYXRp
b24/Cgo+IFRoYW5rcwo+Cj4KPgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
