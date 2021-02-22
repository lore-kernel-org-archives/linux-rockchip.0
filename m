Return-Path: <SRS0=vRnG=HY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4BB81C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Feb 2021 01:00:09 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F130A61493
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Feb 2021 01:00:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F130A61493
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mxtagwERc7Fps27q1+SMt2dwBdt/ImAm5wxzKDHA9NQ=; b=b2EmClKIXq/RZi6rWw++ckoPr
	IN5W7lt/OxY49/dcdUMZt0n+8F6vwjZOMX3T1ZZk+daA/dOi4DIYcpYuZnMCA8AgzqUWHBzqmBKjm
	6/YPnOrihPzgpV5Mlr5l/gN2IzEzdTQdpwiGivwsE4BZqiO8y4MBtUYiVnJkmTHLYEoppyoxoYUgh
	LTzsrc8vnYvEAzo+4HuDiJAWKLjLOkGK+qnWObmGYEdF6W2P6UYbrGm2Zj/zaBhBSBB6dyIw9Ewoy
	hJ+BY8s+aUjg2Gentzdb3YlcibOk1XswU0QIx7CqCYg83vlDvnrCTs5LmTCLbLOikQIxv5hDyD1cA
	bCW50r9sQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lDzZz-0004ag-Ps; Mon, 22 Feb 2021 01:00:03 +0000
Received: from regular1.263xmail.com ([211.150.70.206])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lDzZx-0004Zj-Aa
 for linux-rockchip@lists.infradead.org; Mon, 22 Feb 2021 01:00:03 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id B08611AA3;
 Mon, 22 Feb 2021 08:59:58 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.31.83] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P17138T139833454356224S1613955597374551_; 
 Mon, 22 Feb 2021 08:59:57 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6c2043eec7a63787064bcf0718a705f3>
X-RL-SENDER: xxm@rock-chips.com
X-SENDER: xxm@rock-chips.com
X-LOGIN-NAME: xxm@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH v4 1/2] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
To: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20210127022406.820975-1-xxm@rock-chips.com>
From: xxm <xxm@rock-chips.com>
Message-ID: <23d5f4a5-259d-5ef7-9881-95e83f4a90b1@rock-chips.com>
Date: Mon, 22 Feb 2021 08:59:57 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210127022406.820975-1-xxm@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210221_200001_921749_5CB0BDFE 
X-CRM114-Status: GOOD (  16.52  )
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
Cc: devicetree@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, Johan Jonker <jbx6244@gmail.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgYWxsLAoKSXQgaGFzIGJlZW4gbmVhcmx5IGEgbW9udGggc2luY2UgbGFzdCBWNCBwYXRjaCwg
YW55IG5ldyBjb21tZW50cz8KCtTaIDIwMjEvMS8yNyAxMDoyNCwgU2ltb24gWHVlINC0tcA6Cj4g
RG9jdW1lbnQgRFQgYmluZGluZ3MgZm9yIFBDSWUgY29udHJvbGxlciBmb3VuZCBvbiBSb2NrY2hp
cCBTb0MuCj4KPiBTaWduZWQtb2ZmLWJ5OiBTaW1vbiBYdWUgPHh4bUByb2NrLWNoaXBzLmNvbT4K
PiAtLS0KPiAgIC4uLi9iaW5kaW5ncy9wY2kvcm9ja2NoaXAtZHctcGNpZS55YW1sICAgICAgICB8
IDE0MSArKysrKysrKysrKysrKysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAxNDEgaW5zZXJ0aW9u
cygrKQo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5k
aW5ncy9wY2kvcm9ja2NoaXAtZHctcGNpZS55YW1sCj4KPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BjaS9yb2NrY2hpcC1kdy1wY2llLnlhbWwgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3JvY2tjaGlwLWR3LXBjaWUueWFtbAo+
IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi45MTZlZmYwOTMzMmMK
PiAtLS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L3BjaS9yb2NrY2hpcC1kdy1wY2llLnlhbWwKPiBAQCAtMCwwICsxLDE0MSBAQAo+ICsjIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCBPUiBCU0QtMi1DbGF1c2UpCj4gKyVZQU1MIDEu
Mgo+ICstLS0KPiArJGlkOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvc2NoZW1hcy9wY2kvcm9ja2No
aXAtZHctcGNpZS55YW1sIwo+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1z
Y2hlbWFzL2NvcmUueWFtbCMKPiArCj4gK3RpdGxlOiBEZXNpZ25XYXJlIGJhc2VkIFBDSWUgUkMg
Y29udHJvbGxlciBvbiBSb2NrY2hpcCBTb0NzCj4gKwo+ICttYWludGFpbmVyczoKPiArICAtIFNo
YXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+ICsgIC0gU2ltb24gWHVlIDx4eG1A
cm9jay1jaGlwcy5jb20+Cj4gKyAgLSBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+
ICsKPiArZGVzY3JpcHRpb246IHwrCj4gKyAgUkszNTY4IFNvQyBQQ0llIGhvc3QgY29udHJvbGxl
ciBpcyBiYXNlZCBvbiB0aGUgU3lub3BzeXMgRGVzaWduV2FyZQo+ICsgIFBDSWUgSVAgYW5kIHRo
dXMgaW5oZXJpdHMgYWxsIHRoZSBjb21tb24gcHJvcGVydGllcyBkZWZpbmVkIGluCj4gKyAgZGVz
aWdud2FyZS1wY2llLnR4dC4KPiArCj4gK2FsbE9mOgo+ICsgIC0gJHJlZjogL3NjaGVtYXMvcGNp
L3BjaS1idXMueWFtbCMKPiArCj4gKyMgV2UgbmVlZCBhIHNlbGVjdCBoZXJlIHNvIHdlIGRvbid0
IG1hdGNoIGFsbCBub2RlcyB3aXRoICdzbnBzLGR3LXBjaWUnCj4gK3NlbGVjdDoKPiArICBwcm9w
ZXJ0aWVzOgo+ICsgICAgY29tcGF0aWJsZToKPiArICAgICAgY29udGFpbnM6Cj4gKyAgICAgICAg
Y29uc3Q6IHJvY2tjaGlwLHJrMzU2OC1wY2llCj4gKyAgcmVxdWlyZWQ6Cj4gKyAgICAtIGNvbXBh
dGlibGUKPiArCj4gK3Byb3BlcnRpZXM6Cj4gKyAgY29tcGF0aWJsZToKPiArICAgIGl0ZW1zOgo+
ICsgICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazM1NjgtcGNpZQo+ICsgICAgICAtIGNvbnN0OiBz
bnBzLGR3LXBjaWUKPiArCj4gKyAgcmVnOgo+ICsgICAgaXRlbXM6Cj4gKyAgICAgIC0gZGVzY3Jp
cHRpb246IERhdGEgQnVzIEludGVyZmFjZSAoREJJKSByZWdpc3RlcnMKPiArICAgICAgLSBkZXNj
cmlwdGlvbjogUm9ja2NoaXAgZGVzaWduZWQgY29uZmlndXJhdGlvbiByZWdpc3RlcnMKPiArICAg
ICAgLSBkZXNjcmlwdGlvbjogQ29uZmlnIHJlZ2lzdGVycwo+ICsKPiArICByZWctbmFtZXM6Cj4g
KyAgICBpdGVtczoKPiArICAgICAgLSBjb25zdDogZGJpCj4gKyAgICAgIC0gY29uc3Q6IGFwYgo+
ICsgICAgICAtIGNvbnN0OiBjb25maWcKPiArCj4gKyAgY2xvY2tzOgo+ICsgICAgaXRlbXM6Cj4g
KyAgICAgIC0gZGVzY3JpcHRpb246IEFIQiBjbG9jayBmb3IgUENJZSBtYXN0ZXIKPiArICAgICAg
LSBkZXNjcmlwdGlvbjogQUhCIGNsb2NrIGZvciBQQ0llIHNsYXZlCj4gKyAgICAgIC0gZGVzY3Jp
cHRpb246IEFIQiBjbG9jayBmb3IgUENJZSBkYmkKPiArICAgICAgLSBkZXNjcmlwdGlvbjogQVBC
IGNsb2NrIGZvciBQQ0llCj4gKyAgICAgIC0gZGVzY3JpcHRpb246IEF1eGlsaWFyeSBjbG9jayBm
b3IgUENJZQo+ICsKPiArICBjbG9jay1uYW1lczoKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNv
bnN0OiBhY2xrX21zdAo+ICsgICAgICAtIGNvbnN0OiBhY2xrX3Nsdgo+ICsgICAgICAtIGNvbnN0
OiBhY2xrX2RiaQo+ICsgICAgICAtIGNvbnN0OiBwY2xrCj4gKyAgICAgIC0gY29uc3Q6IGF1eAo+
ICsKPiArICBtc2ktbWFwOiB0cnVlCj4gKwo+ICsgIG51bS1sYW5lczogdHJ1ZQo+ICsKPiArICBw
aHlzOgo+ICsgICAgbWF4SXRlbXM6IDEKPiArCj4gKyAgcGh5LW5hbWVzOgo+ICsgICAgY29uc3Q6
IHBjaWUtcGh5Cj4gKwo+ICsgIHBvd2VyLWRvbWFpbnM6Cj4gKyAgICBtYXhJdGVtczogMQo+ICsK
PiArICByYW5nZXM6Cj4gKyAgICBtYXhJdGVtczogMgo+ICsKPiArICByZXNldHM6Cj4gKyAgICBt
YXhJdGVtczogMQo+ICsKPiArICByZXNldC1uYW1lczoKPiArICAgIGNvbnN0OiBwaXBlCj4gKwo+
ICsgIHZwY2llM3YzLXN1cHBseTogdHJ1ZQo+ICsKPiArcmVxdWlyZWQ6Cj4gKyAgLSBjb21wYXRp
YmxlCj4gKyAgLSByZWcKPiArICAtIHJlZy1uYW1lcwo+ICsgIC0gY2xvY2tzCj4gKyAgLSBjbG9j
ay1uYW1lcwo+ICsgIC0gbXNpLW1hcAo+ICsgIC0gbnVtLWxhbmVzCj4gKyAgLSBwaHlzCj4gKyAg
LSBwaHktbmFtZXMKPiArICAtIHBvd2VyLWRvbWFpbnMKPiArICAtIHJlc2V0cwo+ICsgIC0gcmVz
ZXQtbmFtZXMKPiArCj4gK3VuZXZhbHVhdGVkUHJvcGVydGllczogZmFsc2UKPiArCj4gK2V4YW1w
bGVzOgo+ICsgIC0gfAo+ICsKPiArICAgIGJ1cyB7Cj4gKyAgICAgICAgI2FkZHJlc3MtY2VsbHMg
PSA8Mj47Cj4gKyAgICAgICAgI3NpemUtY2VsbHMgPSA8Mj47Cj4gKwo+ICsgICAgICAgIHBjaWUz
eDI6IHBjaWVAZmUyODAwMDAgewo+ICsgICAgICAgICAgICBjb21wYXRpYmxlID0gInJvY2tjaGlw
LHJrMzU2OC1wY2llIiwgInNucHMsZHctcGNpZSI7Cj4gKyAgICAgICAgICAgIHJlZyA9IDwweDMg
MHhjMDgwMDAwMCAweDAgMHgzOTAwMDA+LAo+ICsgICAgICAgICAgICAgICAgICA8MHgwIDB4ZmUy
ODAwMDAgMHgwIDB4MTAwMDA+LAo+ICsgICAgICAgICAgICAgICAgICA8MHgzIDB4ODAwMDAwMDAg
MHgwIDB4MTAwMDAwPjsKPiArICAgICAgICAgICAgcmVnLW5hbWVzID0gImRiaSIsICJhcGIiLCAi
Y29uZmlnIjsKPiArICAgICAgICAgICAgYnVzLXJhbmdlID0gPDB4MjAgMHgyZj47Cj4gKyAgICAg
ICAgICAgIGNsb2NrcyA9IDwmY3J1IDE0Mz4sIDwmY3J1IDE0ND4sCj4gKyAgICAgICAgICAgICAg
ICAgICAgIDwmY3J1IDE0NT4sIDwmY3J1IDE0Nj4sCj4gKyAgICAgICAgICAgICAgICAgICAgIDwm
Y3J1IDE0Nz47Cj4gKyAgICAgICAgICAgIGNsb2NrLW5hbWVzID0gImFjbGtfbXN0IiwgImFjbGtf
c2x2IiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAiYWNsa19kYmkiLCAicGNsayIsCj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgImF1eCI7Cj4gKyAgICAgICAgICAgIGRldmljZV90
eXBlID0gInBjaSI7Cj4gKyAgICAgICAgICAgIGxpbnV4LHBjaS1kb21haW4gPSA8Mj47Cj4gKyAg
ICAgICAgICAgIG1heC1saW5rLXNwZWVkID0gPDI+Owo+ICsgICAgICAgICAgICBtc2ktbWFwID0g
PDB4MjAwMCAmaXRzIDB4MjAwMCAweDEwMDA+Owo+ICsgICAgICAgICAgICBudW0tbGFuZXMgPSA8
Mj47Cj4gKyAgICAgICAgICAgIHBoeXMgPSA8JnBjaWUzMHBoeT47Cj4gKyAgICAgICAgICAgIHBo
eS1uYW1lcyA9ICJwY2llLXBoeSI7Cj4gKyAgICAgICAgICAgIHBvd2VyLWRvbWFpbnMgPSA8JnBv
d2VyIDE1PjsKPiArICAgICAgICAgICAgcmFuZ2VzID0gPDB4ODEwMDAwMDAgMHgwIDB4ODA4MDAw
MDAgMHgzIDB4ODA4MDAwMDAgMHgwIDB4MTAwMDAwPiwKPiArICAgICAgICAgICAgICAgICAgICAg
PDB4ODMwMDAwMDAgMHgwIDB4ODA5MDAwMDAgMHgzIDB4ODA5MDAwMDAgMHgwIDB4M2Y3MDAwMDA+
Owo+ICsgICAgICAgICAgICByZXNldHMgPSA8JmNydSAxOTM+Owo+ICsgICAgICAgICAgICByZXNl
dC1uYW1lcyA9ICJwaXBlIjsKPiArICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8Mz47Cj4g
KyAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDI+Owo+ICsgICAgICAgIH07Cj4gKyAgICB9Owo+
ICsuLi4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
