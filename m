Return-Path: <SRS0=k6cp=G5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 754B6C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Jan 2021 02:44:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0B34D221E7
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Jan 2021 02:44:37 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0B34D221E7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/0hY/gRO6SP0ImhyaSBcP/tDrulFitLQ+RxomfldEpg=; b=WribPtGNpWGdeiMTYjKgT8td7
	bh7NuwiUn9koWmcBfuKh3jMio4qjzffLSnZCjbErt3JRM4cC58oil4KsVHLFe8xwn2wTi1syPXTrf
	XazAAhzFGCoP2RMjf+R7cbiiRjim9y7YneyGMQBGDjIdVn3+L1NfTdr1e+IbARVjNYAEviKhRAvPg
	RJJ70icbNGjU+G2Ktso2w/wVv0RfmUitiJDMKVqyMNAdari+IRHNsSWkSgaPKW97B/QdtO5N7cKcm
	ruNfYB29t+Lofke0osT5jDHll288qGVRGrBzYxVgZhpIRTTNhaxkAcBT3/jjVdb61Ps5s8XMQphKK
	uJDKJhM6g==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l4ELI-0006ab-T6; Tue, 26 Jan 2021 02:44:32 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l4ELF-0006aC-CT
 for linux-rockchip@lists.infradead.org; Tue, 26 Jan 2021 02:44:31 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 89F66842;
 Tue, 26 Jan 2021 10:44:24 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.31.83] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P11934T140583622674176S1611629063737209_; 
 Tue, 26 Jan 2021 10:44:24 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <3500669ea1cd2ec8e8f0b3c623afdafc>
X-RL-SENDER: xxm@rock-chips.com
X-SENDER: xxm@rock-chips.com
X-LOGIN-NAME: xxm@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_v3_1/2=5d_dt-bindings=3a_rockchip=3a_Add_D?=
 =?UTF-8?B?ZXNpZ25XYXJlIGJhc2VkIFBDSWUgY29udHJvbGxlcuOAkOivt+azqOaEj++8jA==?=
 =?UTF-8?B?6YKu5Lu255Sxcm9iaGVycmluZzJAZ21haWwuY29t5Luj5Y+R44CR?=
To: Rob Herring <robh@kernel.org>
References: <20210125024824.634583-1-xxm@rock-chips.com>
 <20210125152632.GA381616@robh.at.kernel.org>
From: xxm <xxm@rock-chips.com>
Message-ID: <e22ea1ed-9b3b-98ae-5b78-6c3c10af3589@rock-chips.com>
Date: Tue, 26 Jan 2021 10:44:23 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210125152632.GA381616@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210125_214430_402149_BDD06D61 
X-CRM114-Status: GOOD (  14.41  )
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
 linux-rockchip@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>,
 Johan Jonker <jbx6244@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgUm9iLAoKVGhhbmtzIGZvciByZXBseS4KCuWcqCAyMDIxLzEvMjUgMjM6MjYsIFJvYiBIZXJy
aW5nIOWGmemBkzoKPiBPbiBNb24sIEphbiAyNSwgMjAyMSBhdCAxMDo0ODoyNEFNICswODAwLCBT
aW1vbiBYdWUgd3JvdGU6Cj4+IERvY3VtZW50IERUIGJpbmRpbmdzIGZvciBQQ0llIGNvbnRyb2xs
ZXIgZm91bmQgb24gUm9ja2NoaXAgU29DLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBTaW1vbiBYdWUg
PHh4bUByb2NrLWNoaXBzLmNvbT4KPj4gLS0tCj4+ICAgLi4uL2JpbmRpbmdzL3BjaS9yb2NrY2hp
cC1kdy1wY2llLnlhbWwgICAgICAgIHwgMTMzICsrKysrKysrKysrKysrKysrKwo+PiAgIDEgZmls
ZSBjaGFuZ2VkLCAxMzMgaW5zZXJ0aW9ucygrKQo+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3JvY2tjaGlwLWR3LXBjaWUueWFtbAo+
Pgo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9y
b2NrY2hpcC1kdy1wY2llLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mv
cGNpL3JvY2tjaGlwLWR3LXBjaWUueWFtbAo+PiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+PiBpbmRl
eCAwMDAwMDAwMDAwMDAuLjI0ZWE0MjIwM2MxNAo+PiAtLS0gL2Rldi9udWxsCj4+ICsrKyBiL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcm9ja2NoaXAtZHctcGNpZS55YW1s
Cj4+IEBAIC0wLDAgKzEsMTMzIEBACj4+ICsjIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BM
LTIuMCBPUiBCU0QtMi1DbGF1c2UpCj4+ICslWUFNTCAxLjIKPj4gKy0tLQo+PiArJGlkOiBodHRw
Oi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9wY2kvcm9ja2NoaXAtZHctcGNpZS55YW1sIwo+PiAr
JHNjaGVtYTogaHR0cDovL2RldmljZXRyZWUub3JnL21ldGEtc2NoZW1hcy9jb3JlLnlhbWwjCj4+
ICsKPj4gK3RpdGxlOiBEZXNpZ25XYXJlIGJhc2VkIFBDSWUgUkMgY29udHJvbGxlciBvbiBSb2Nr
Y2hpcCBTb0NzCj4+ICsKPj4gK21haW50YWluZXJzOgo+PiArICAtIFNoYXduIExpbiA8c2hhd24u
bGluQHJvY2stY2hpcHMuY29tPgo+PiArICAtIFNpbW9uIFh1ZSA8eHhtQHJvY2stY2hpcHMuY29t
Pgo+PiArICAtIEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4+ICsKPj4gK2Rlc2Ny
aXB0aW9uOiB8Kwo+PiArICBSSzM1NjggU29DIFBDSWUgaG9zdCBjb250cm9sbGVyIGlzIGJhc2Vk
IG9uIHRoZSBTeW5vcHN5cyBEZXNpZ25XYXJlCj4+ICsgIFBDSWUgSVAgYW5kIHRodXMgaW5oZXJp
dHMgYWxsIHRoZSBjb21tb24gcHJvcGVydGllcyBkZWZpbmVkIGluCj4+ICsgIGRlc2lnbndhcmUt
cGNpZS50eHQuCj4+ICsKPj4gK2FsbE9mOgo+PiArICAtICRyZWY6IC9zY2hlbWFzL3BjaS9wY2kt
YnVzLnlhbWwjCj4+ICsKPj4gKyMgV2UgbmVlZCBhIHNlbGVjdCBoZXJlIHNvIHdlIGRvbid0IG1h
dGNoIGFsbCBub2RlcyB3aXRoICdzbnBzLGR3LXBjaWUnCj4+ICtzZWxlY3Q6Cj4+ICsgIHByb3Bl
cnRpZXM6Cj4+ICsgICAgY29tcGF0aWJsZToKPj4gKyAgICAgIGNvbnRhaW5zOgo+PiArICAgICAg
ICBjb25zdDogcm9ja2NoaXAscmszNTY4LXBjaWUKPj4gKyAgcmVxdWlyZWQ6Cj4+ICsgICAgLSBj
b21wYXRpYmxlCj4+ICsKPj4gK3Byb3BlcnRpZXM6Cj4+ICsgIGNvbXBhdGlibGU6Cj4+ICsgICAg
aXRlbXM6Cj4+ICsgICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazM1NjgtcGNpZQo+PiArICAgICAg
LSBjb25zdDogc25wcyxkdy1wY2llCj4+ICsKPj4gKyAgcmVnOgo+PiArICAgIGl0ZW1zOgo+PiAr
ICAgICAgLSBkZXNjcmlwdGlvbjogRGF0YSBCdXMgSW50ZXJmYWNlIChEQkkpIHJlZ2lzdGVycwo+
PiArICAgICAgLSBkZXNjcmlwdGlvbjogUm9ja2NoaXAgZGVzaWduZWQgY29uZmlndXJhdGlvbiBy
ZWdpc3RlcnMKPj4gKwo+PiArICBjbG9ja3M6Cj4+ICsgICAgaXRlbXM6Cj4+ICsgICAgICAtIGRl
c2NyaXB0aW9uOiBBSEIgY2xvY2sgZm9yIFBDSWUgbWFzdGVyCj4+ICsgICAgICAtIGRlc2NyaXB0
aW9uOiBBSEIgY2xvY2sgZm9yIFBDSWUgc2xhdmUKPj4gKyAgICAgIC0gZGVzY3JpcHRpb246IEFI
QiBjbG9jayBmb3IgUENJZSBkYmkKPj4gKyAgICAgIC0gZGVzY3JpcHRpb246IEFQQiBjbG9jayBm
b3IgUENJZQo+PiArICAgICAgLSBkZXNjcmlwdGlvbjogQXV4aWxpYXJ5IGNsb2NrIGZvciBQQ0ll
Cj4+ICsKPj4gKyAgY2xvY2stbmFtZXM6Cj4+ICsgICAgaXRlbXM6Cj4+ICsgICAgICAtIGNvbnN0
OiBhY2xrX21zdAo+PiArICAgICAgLSBjb25zdDogYWNsa19zbHYKPj4gKyAgICAgIC0gY29uc3Q6
IGFjbGtfZGJpCj4+ICsgICAgICAtIGNvbnN0OiBwY2xrCj4+ICsgICAgICAtIGNvbnN0OiBhdXgK
Pj4gKwo+PiArICBtc2ktbWFwOiB0cnVlCj4+ICsKPj4gKyAgbnVtLWxhbmVzOiB0cnVlCj4+ICsK
Pj4gKyAgcGh5czoKPj4gKyAgICBtYXhJdGVtczogMQo+PiArCj4+ICsgIHBoeS1uYW1lczoKPj4g
KyAgICBjb25zdDogcGNpZS1waHkKPj4gKwo+PiArICBwb3dlci1kb21haW5zOgo+PiArICAgIG1h
eEl0ZW1zOiAxCj4+ICsKPj4gKyAgcmFuZ2VzOgo+PiArICAgIG1heEl0ZW1zOiAzCj4+ICsKPj4g
KyAgcmVzZXRzOgo+PiArICAgIG1heEl0ZW1zOiAxCj4+ICsKPj4gKyAgcmVzZXQtbmFtZXM6Cj4+
ICsgICAgY29uc3Q6IHBpcGUKPj4gKwo+PiArcmVxdWlyZWQ6Cj4+ICsgIC0gY29tcGF0aWJsZQo+
PiArICAtIHJlZwo+PiArICAtIHJlZy1uYW1lcwo+PiArICAtIGNsb2Nrcwo+PiArICAtIGNsb2Nr
LW5hbWVzCj4+ICsgIC0gbXNpLW1hcAo+PiArICAtIG51bS1sYW5lcwo+PiArICAtIHBoeXMKPj4g
KyAgLSBwaHktbmFtZXMKPj4gKyAgLSBwb3dlci1kb21haW5zCj4+ICsgIC0gcmVzZXRzCj4+ICsg
IC0gcmVzZXQtbmFtZXMKPj4gKwo+PiArdW5ldmFsdWF0ZWRQcm9wZXJ0aWVzOiBmYWxzZQo+PiAr
Cj4+ICtleGFtcGxlczoKPj4gKyAgLSB8Cj4+ICsgICAgI2luY2x1ZGUgPGR0LWJpbmRpbmdzL2lu
dGVycnVwdC1jb250cm9sbGVyL2FybS1naWMuaD4KPj4gKwo+PiArICAgIGJ1cyB7Cj4+ICsgICAg
ICAgICNhZGRyZXNzLWNlbGxzID0gPDI+Owo+PiArICAgICAgICAjc2l6ZS1jZWxscyA9IDwyPjsK
Pj4gKwo+PiArICAgICAgICBwY2llM3gyOiBwY2llQGZlMjgwMDAwIHsKPj4gKyAgICAgICAgICAg
IGNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTY4LXBjaWUiLCAic25wcyxkdy1wY2llIjsKPj4g
KyAgICAgICAgICAgIHJlZyA9IDwweDMgMHhjMDgwMDAwMCAweDAgMHg0MDAwMDA+LAo+PiArICAg
ICAgICAgICAgICAgICAgPDB4MCAweGZlMjgwMDAwIDB4MCAweDEwMDAwPjsKPj4gKyAgICAgICAg
ICAgIHJlZy1uYW1lcyA9ICJwY2llLWRiaSIsICJwY2llLWFwYiI7Cj4gSSBiZWxpZXZlIEkgYWxy
ZWFkeSBzYWlkIHVzZSAnZGJpJy4gVGhlIERCSSBpcyBhbHNvIG5vdCA0TUIuIFRoZSBjb25maWcK
PiBzcGFjZSBnb2VzIGhlcmUgdG9vLCBub3QgaW4gJ3JhbmdlcycuCgpTb3JyeSBmb3IgbWlzc2lu
Z8KgIHVwZGF0ZSBpbiB5YW1sLgoKSSB0aGluayB5YW1sIGlzIHVzZWQgdG8gZGVzY3JpYmUgdGhl
IHJlc291cmNlcyBvZiBzcGVjaWZpYyBTb0MsIGl0IApyZXNlcnZlcyA0TUIgZm9yIERCSSBvbiBS
b2NrY2hpcCBTb0MuCgpTbywgSSB0aGluayBhc3NpZ24gNE1CIGhlcmUgaXMgcmVhc29uYWJsZS4K
Cj4+ICsgICAgICAgICAgICBidXMtcmFuZ2UgPSA8MHgyMCAweDJmPjsKPj4gKyAgICAgICAgICAg
IGNsb2NrcyA9IDwmY3J1IDE0Mz4sIDwmY3J1IDE0ND4sCj4+ICsgICAgICAgICAgICAgICAgICAg
ICA8JmNydSAxNDU+LCA8JmNydSAxNDY+LAo+PiArICAgICAgICAgICAgICAgICAgICAgPCZjcnUg
MTQ3PjsKPj4gKyAgICAgICAgICAgIGNsb2NrLW5hbWVzID0gImFjbGtfbXN0IiwgImFjbGtfc2x2
IiwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgImFjbGtfZGJpIiwgInBjbGsiLAo+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAiYXV4IjsKPj4gKyAgICAgICAgICAgIGRldmljZV90
eXBlID0gInBjaSI7Cj4+ICsgICAgICAgICAgICBsaW51eCxwY2ktZG9tYWluID0gPDI+Owo+PiAr
ICAgICAgICAgICAgbWF4LWxpbmstc3BlZWQgPSA8Mj47Cj4+ICsgICAgICAgICAgICBtc2ktbWFw
ID0gPDB4MjAwMCAmaXRzIDB4MjAwMCAweDEwMDA+Owo+PiArICAgICAgICAgICAgbnVtLWxhbmVz
ID0gPDI+Owo+PiArICAgICAgICAgICAgcGh5cyA9IDwmcGNpZTMwcGh5PjsKPj4gKyAgICAgICAg
ICAgIHBoeS1uYW1lcyA9ICJwY2llLXBoeSI7Cj4+ICsgICAgICAgICAgICBwb3dlci1kb21haW5z
ID0gPCZwb3dlciAxNT47Cj4+ICsgICAgICAgICAgICByYW5nZXMgPSA8MHgwMDAwMDgwMCAweDAg
MHg4MDAwMDAwMCAweDMgMHg4MDAwMDAwMCAweDAgMHg4MDAwMDA+LAo+PiArICAgICAgICAgICAg
ICAgICAgICAgPDB4ODEwMDAwMDAgMHgwIDB4ODA4MDAwMDAgMHgzIDB4ODA4MDAwMDAgMHgwIDB4
MTAwMDAwPiwKPj4gKyAgICAgICAgICAgICAgICAgICAgIDwweDgzMDAwMDAwIDB4MCAweDgwOTAw
MDAwIDB4MyAweDgwOTAwMDAwIDB4MCAweDNmNzAwMDAwPjsKPj4gKyAgICAgICAgICAgIHJlc2V0
cyA9IDwmY3J1IDE5Mz47Cj4+ICsgICAgICAgICAgICByZXNldC1uYW1lcyA9ICJwaXBlIjsKPj4g
KyAgICAgICAgICAgICNhZGRyZXNzLWNlbGxzID0gPDM+Owo+PiArICAgICAgICAgICAgI3NpemUt
Y2VsbHMgPSA8Mj47Cj4+ICsgICAgICAgIH07Cj4+ICsgICAgfTsKPj4gKy4uLgo+PiAtLSAKPj4g
Mi4yNS4xCj4+Cj4+Cj4+Cj4KPgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
