Return-Path: <SRS0=A6XG=IA=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54308C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Mar 2021 00:51:50 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B8A6F60232
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Mar 2021 00:51:49 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B8A6F60232
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O6mJiDM3IRCem2tc0wc4RmgLqJSs86md2kbAZmwNx5E=; b=2ks8CRZvvGWjo/IJkf61o7FWX
	J0qzrgNXOkmQcJyXYW+aIjd+qVyldnNp+uPO83jF2w4SYJrSZP48d51e/RTW+rtbYiSPOK7G/PP0A
	zqMnr2I7i54sxaT4dYYbiuyiNfuRwfRMNLS4YrnvhOi+dy50cCp0o4TqS8Eou9O6itOWNhYQYSrE0
	E0wqQbuXjaCXTntbyJF+9IjqKKaapcAhtrZd55r/WN3kAcw2MTisokpC/kOdPRHPGLdyblSiUGcI0
	wmFmaK4JynhmXL6inb2UawnIlkIAuahtEOnTPspK9C/xQ3FSQuwL2Lb+xfxccvnimtPE6uYMTUIGJ
	Bkq7SgZfQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGtGE-0000KF-8N; Tue, 02 Mar 2021 00:51:38 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGtGA-0000Jv-8B
 for linux-rockchip@lists.infradead.org; Tue, 02 Mar 2021 00:51:36 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id A9F0B1D3C;
 Tue,  2 Mar 2021 08:51:23 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.31.83] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P4300T140473058449152S1614646282848643_; 
 Tue, 02 Mar 2021 08:51:23 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <70828379c4121a288f7204a3ec28ee66>
X-RL-SENDER: xxm@rock-chips.com
X-SENDER: xxm@rock-chips.com
X-LOGIN-NAME: xxm@rock-chips.com
X-FST-TO: heiko@sntech.de
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH v5 1/2] dt-bindings: rockchip: Add DesignWare based PCIe
 controller
To: Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20210222071721.30062-1-xxm@rock-chips.com>
From: xxm <xxm@rock-chips.com>
Message-ID: <18d65524-e18f-fac6-cd11-1cd7b6bc6dd9@rock-chips.com>
Date: Tue, 2 Mar 2021 08:51:21 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <20210222071721.30062-1-xxm@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_195134_785015_A8CE9385 
X-CRM114-Status: GOOD (  16.40  )
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

SGkgYWxsLAoKQW55IG5ldyBjb21tZW50cyB0byB0aGUgcGF0Y2ggVjU/CgrU2iAyMDIxLzIvMjIg
MTU6MTcsIFNpbW9uIFh1ZSDQtLXAOgo+IERvY3VtZW50IERUIGJpbmRpbmdzIGZvciBQQ0llIGNv
bnRyb2xsZXIgZm91bmQgb24gUm9ja2NoaXAgU29DLgo+Cj4gU2lnbmVkLW9mZi1ieTogU2ltb24g
WHVlIDx4eG1Acm9jay1jaGlwcy5jb20+Cj4gLS0tCj4gICAuLi4vYmluZGluZ3MvcGNpL3JvY2tj
aGlwLWR3LXBjaWUueWFtbCAgICAgICAgfCAxNDEgKysrKysrKysrKysrKysrKysrCj4gICAxIGZp
bGUgY2hhbmdlZCwgMTQxIGluc2VydGlvbnMoKykKPiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcGNpL3JvY2tjaGlwLWR3LXBjaWUueWFtbAo+
Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcm9j
a2NoaXAtZHctcGNpZS55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bj
aS9yb2NrY2hpcC1kdy1wY2llLnlhbWwKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAw
MDAwMDAwMDAwMC4uMTQyYmJlNTc3NzYzCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL0RvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wY2kvcm9ja2NoaXAtZHctcGNpZS55YW1sCj4gQEAg
LTAsMCArMSwxNDEgQEAKPiArIyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogKEdQTC0yLjAtb25s
eSBPUiBCU0QtMi1DbGF1c2UpCj4gKyVZQU1MIDEuMgo+ICstLS0KPiArJGlkOiBodHRwOi8vZGV2
aWNldHJlZS5vcmcvc2NoZW1hcy9wY2kvcm9ja2NoaXAtZHctcGNpZS55YW1sIwo+ICskc2NoZW1h
OiBodHRwOi8vZGV2aWNldHJlZS5vcmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPiArCj4gK3Rp
dGxlOiBEZXNpZ25XYXJlIGJhc2VkIFBDSWUgY29udHJvbGxlciBvbiBSb2NrY2hpcCBTb0NzCj4g
Kwo+ICttYWludGFpbmVyczoKPiArICAtIFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMu
Y29tPgo+ICsgIC0gU2ltb24gWHVlIDx4eG1Acm9jay1jaGlwcy5jb20+Cj4gKyAgLSBIZWlrbyBT
dHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+ICsKPiArZGVzY3JpcHRpb246IHwrCj4gKyAgUksz
NTY4IFNvQyBQQ0llIGhvc3QgY29udHJvbGxlciBpcyBiYXNlZCBvbiB0aGUgU3lub3BzeXMgRGVz
aWduV2FyZQo+ICsgIFBDSWUgSVAgYW5kIHRodXMgaW5oZXJpdHMgYWxsIHRoZSBjb21tb24gcHJv
cGVydGllcyBkZWZpbmVkIGluCj4gKyAgZGVzaWdud2FyZS1wY2llLnR4dC4KPiArCj4gK2FsbE9m
Ogo+ICsgIC0gJHJlZjogL3NjaGVtYXMvcGNpL3BjaS1idXMueWFtbCMKPiArCj4gKyMgV2UgbmVl
ZCBhIHNlbGVjdCBoZXJlIHNvIHdlIGRvbid0IG1hdGNoIGFsbCBub2RlcyB3aXRoICdzbnBzLGR3
LXBjaWUnCj4gK3NlbGVjdDoKPiArICBwcm9wZXJ0aWVzOgo+ICsgICAgY29tcGF0aWJsZToKPiAr
ICAgICAgY29udGFpbnM6Cj4gKyAgICAgICAgY29uc3Q6IHJvY2tjaGlwLHJrMzU2OC1wY2llCj4g
KyAgcmVxdWlyZWQ6Cj4gKyAgICAtIGNvbXBhdGlibGUKPiArCj4gK3Byb3BlcnRpZXM6Cj4gKyAg
Y29tcGF0aWJsZToKPiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazM1
NjgtcGNpZQo+ICsgICAgICAtIGNvbnN0OiBzbnBzLGR3LXBjaWUKPiArCj4gKyAgcmVnOgo+ICsg
ICAgaXRlbXM6Cj4gKyAgICAgIC0gZGVzY3JpcHRpb246IERhdGEgQnVzIEludGVyZmFjZSAoREJJ
KSByZWdpc3RlcnMKPiArICAgICAgLSBkZXNjcmlwdGlvbjogUm9ja2NoaXAgZGVzaWduZWQgY29u
ZmlndXJhdGlvbiByZWdpc3RlcnMKPiArICAgICAgLSBkZXNjcmlwdGlvbjogQ29uZmlnIHJlZ2lz
dGVycwo+ICsKPiArICByZWctbmFtZXM6Cj4gKyAgICBpdGVtczoKPiArICAgICAgLSBjb25zdDog
ZGJpCj4gKyAgICAgIC0gY29uc3Q6IGFwYgo+ICsgICAgICAtIGNvbnN0OiBjb25maWcKPiArCj4g
KyAgY2xvY2tzOgo+ICsgICAgaXRlbXM6Cj4gKyAgICAgIC0gZGVzY3JpcHRpb246IEFIQiBjbG9j
ayBmb3IgUENJZSBtYXN0ZXIKPiArICAgICAgLSBkZXNjcmlwdGlvbjogQUhCIGNsb2NrIGZvciBQ
Q0llIHNsYXZlCj4gKyAgICAgIC0gZGVzY3JpcHRpb246IEFIQiBjbG9jayBmb3IgUENJZSBkYmkK
PiArICAgICAgLSBkZXNjcmlwdGlvbjogQVBCIGNsb2NrIGZvciBQQ0llCj4gKyAgICAgIC0gZGVz
Y3JpcHRpb246IEF1eGlsaWFyeSBjbG9jayBmb3IgUENJZQo+ICsKPiArICBjbG9jay1uYW1lczoK
PiArICAgIGl0ZW1zOgo+ICsgICAgICAtIGNvbnN0OiBhY2xrX21zdAo+ICsgICAgICAtIGNvbnN0
OiBhY2xrX3Nsdgo+ICsgICAgICAtIGNvbnN0OiBhY2xrX2RiaQo+ICsgICAgICAtIGNvbnN0OiBw
Y2xrCj4gKyAgICAgIC0gY29uc3Q6IGF1eAo+ICsKPiArICBtc2ktbWFwOiB0cnVlCj4gKwo+ICsg
IG51bS1sYW5lczogdHJ1ZQo+ICsKPiArICBwaHlzOgo+ICsgICAgbWF4SXRlbXM6IDEKPiArCj4g
KyAgcGh5LW5hbWVzOgo+ICsgICAgY29uc3Q6IHBjaWUtcGh5Cj4gKwo+ICsgIHBvd2VyLWRvbWFp
bnM6Cj4gKyAgICBtYXhJdGVtczogMQo+ICsKPiArICByYW5nZXM6Cj4gKyAgICBtYXhJdGVtczog
Mgo+ICsKPiArICByZXNldHM6Cj4gKyAgICBtYXhJdGVtczogMQo+ICsKPiArICByZXNldC1uYW1l
czoKPiArICAgIGNvbnN0OiBwaXBlCj4gKwo+ICsgIHZwY2llM3YzLXN1cHBseTogdHJ1ZQo+ICsK
PiArcmVxdWlyZWQ6Cj4gKyAgLSBjb21wYXRpYmxlCj4gKyAgLSByZWcKPiArICAtIHJlZy1uYW1l
cwo+ICsgIC0gY2xvY2tzCj4gKyAgLSBjbG9jay1uYW1lcwo+ICsgIC0gbXNpLW1hcAo+ICsgIC0g
bnVtLWxhbmVzCj4gKyAgLSBwaHlzCj4gKyAgLSBwaHktbmFtZXMKPiArICAtIHBvd2VyLWRvbWFp
bnMKPiArICAtIHJlc2V0cwo+ICsgIC0gcmVzZXQtbmFtZXMKPiArCj4gK3VuZXZhbHVhdGVkUHJv
cGVydGllczogZmFsc2UKPiArCj4gK2V4YW1wbGVzOgo+ICsgIC0gfAo+ICsKPiArICAgIGJ1cyB7
Cj4gKyAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8Mj47Cj4gKyAgICAgICAgI3NpemUtY2VsbHMg
PSA8Mj47Cj4gKwo+ICsgICAgICAgIHBjaWUzeDI6IHBjaWVAZmUyODAwMDAgewo+ICsgICAgICAg
ICAgICBjb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzU2OC1wY2llIiwgInNucHMsZHctcGNpZSI7
Cj4gKyAgICAgICAgICAgIHJlZyA9IDwweDMgMHhjMDgwMDAwMCAweDAgMHgzOTAwMDA+LAo+ICsg
ICAgICAgICAgICAgICAgICA8MHgwIDB4ZmUyODAwMDAgMHgwIDB4MTAwMDA+LAo+ICsgICAgICAg
ICAgICAgICAgICA8MHgzIDB4ODAwMDAwMDAgMHgwIDB4MTAwMDAwPjsKPiArICAgICAgICAgICAg
cmVnLW5hbWVzID0gImRiaSIsICJhcGIiLCAiY29uZmlnIjsKPiArICAgICAgICAgICAgYnVzLXJh
bmdlID0gPDB4MjAgMHgyZj47Cj4gKyAgICAgICAgICAgIGNsb2NrcyA9IDwmY3J1IDE0Mz4sIDwm
Y3J1IDE0ND4sCj4gKyAgICAgICAgICAgICAgICAgICAgIDwmY3J1IDE0NT4sIDwmY3J1IDE0Nj4s
Cj4gKyAgICAgICAgICAgICAgICAgICAgIDwmY3J1IDE0Nz47Cj4gKyAgICAgICAgICAgIGNsb2Nr
LW5hbWVzID0gImFjbGtfbXN0IiwgImFjbGtfc2x2IiwKPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAiYWNsa19kYmkiLCAicGNsayIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgImF1
eCI7Cj4gKyAgICAgICAgICAgIGRldmljZV90eXBlID0gInBjaSI7Cj4gKyAgICAgICAgICAgIGxp
bnV4LHBjaS1kb21haW4gPSA8Mj47Cj4gKyAgICAgICAgICAgIG1heC1saW5rLXNwZWVkID0gPDI+
Owo+ICsgICAgICAgICAgICBtc2ktbWFwID0gPDB4MjAwMCAmaXRzIDB4MjAwMCAweDEwMDA+Owo+
ICsgICAgICAgICAgICBudW0tbGFuZXMgPSA8Mj47Cj4gKyAgICAgICAgICAgIHBoeXMgPSA8JnBj
aWUzMHBoeT47Cj4gKyAgICAgICAgICAgIHBoeS1uYW1lcyA9ICJwY2llLXBoeSI7Cj4gKyAgICAg
ICAgICAgIHBvd2VyLWRvbWFpbnMgPSA8JnBvd2VyIDE1PjsKPiArICAgICAgICAgICAgcmFuZ2Vz
ID0gPDB4ODEwMDAwMDAgMHgwIDB4ODA4MDAwMDAgMHgzIDB4ODA4MDAwMDAgMHgwIDB4MTAwMDAw
PiwKPiArICAgICAgICAgICAgICAgICAgICAgPDB4ODMwMDAwMDAgMHgwIDB4ODA5MDAwMDAgMHgz
IDB4ODA5MDAwMDAgMHgwIDB4M2Y3MDAwMDA+Owo+ICsgICAgICAgICAgICByZXNldHMgPSA8JmNy
dSAxOTM+Owo+ICsgICAgICAgICAgICByZXNldC1uYW1lcyA9ICJwaXBlIjsKPiArICAgICAgICAg
ICAgI2FkZHJlc3MtY2VsbHMgPSA8Mz47Cj4gKyAgICAgICAgICAgICNzaXplLWNlbGxzID0gPDI+
Owo+ICsgICAgICAgIH07Cj4gKyAgICB9Owo+ICsuLi4KCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
