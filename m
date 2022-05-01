Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A04AFC433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 May 2022 01:41:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Mime-Version:References:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=xieuXMjDWa2Q+Nzvx7bx7nq3YrhFuSYYTtronj0NoJU=; b=l2/d0OU2e2HXoq
	N9pdqRsVjyRvmFC1CxaoFJbLeQmvEZzW3F9wkbbsYx8vbaJ3sSs2TtKAUOCftDL3Ndk8vhHz+okfu
	LYUtQ00Y6XxbY16lVMY9r7N95CUr7tRhNMsUYWh7kXw5Fcig7I8ZE62Zb6D1Ergga341g39JM9Zue
	y0iAPV9R0SAOwIlEtN7At2lWH94suE4W+8dkqjElvyV+2eqaAK9qX0Cj5uLjwXVxj4vhOpzUCqWAD
	An4ZTAosLqdji3eHSy6bqrHJUvKX/3ppMctTzwipb3Nx7NpPD8u88tl78aJH839+G/CCRD2FhkdCc
	qLjkiFLfex0NPRzZ04RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nkya4-00FRfN-7u; Sun, 01 May 2022 01:41:00 +0000
Received: from mail-m121145.qiye.163.com ([115.236.121.145])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nkyZs-00FReR-Nn; Sun, 01 May 2022 01:40:50 +0000
Received: from DESKTOP-SG5V5EA (unknown [58.22.7.114])
 by mail-m121145.qiye.163.com (Hmail) with ESMTPA id 7953D80026D;
 Sun,  1 May 2022 09:40:37 +0800 (CST)
Date: Sun, 1 May 2022 09:40:37 +0800
From: "jay.xu@rock-chips.com" <jay.xu@rock-chips.com>
To: "Andrew Lunn" <andrew@lunn.ch>
Cc: kuba <kuba@kernel.org>, davem <davem@davemloft.net>, 
 joabreu <joabreu@synopsys.com>, 
 alexandre.torgue <alexandre.torgue@st.com>, 
 peppe.cavallaro <peppe.cavallaro@st.com>, 
 netdev <netdev@vger.kernel.org>, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
 "Linux Kernel Mailing List" <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 devicetree <devicetree@vger.kernel.org>
Subject: Re: Re: [PATCH V2] ethernet: stmmac: support driver work for DTs
 without child queue node
References: <20220428010927.526310-1-jay.xu@rock-chips.com>, 
 <20220429004605.1010751-1-jay.xu@rock-chips.com>, 
 <Yms3ynT8RGmldAkm@lunn.ch>, 
 <2022042909545741446644@rock-chips.com>, 
 <YmvWwIgE71iwZhgp@lunn.ch>
X-Priority: 3
X-Has-Attach: no
X-Mailer: Foxmail 7.2.19.158[cn]
Mime-Version: 1.0
Message-ID: <2022050109403682292448@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRofQ0pWGE8YQxhLTh
 5NQkNCVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pkk6TDo5GT05FBYLGQ9INTRK
 FUkwCklVSlVKTU5KSE1CSUhDS0tKVTMWGhIXVREaAlUDDjsJFBgQVhgTEgsIVRgUFkVZV1kSC1lB
 WU5DVUlJVUxVSkpPWVdZCAFZQU9OSEk3Bg++
X-HM-Tid: 0a807d46dcfab03akuuu7953d80026d
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220430_184048_964509_DB3C91B2 
X-CRM114-Status: GOOD (  14.95  )
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

SGkgQW5kcmV3CgotLS0tLS0tLS0tLS0tLQpqYXkueHVAcm9jay1jaGlwcy5jb20KPkFkZGluZyBk
ZXZpY2UgdHJlZSBsaXN0Lgo+Cj5UaGlzIGlzIG1vc3RseSBhIGRldmljZSB0cmVlIGlzc3VlLCBz
byB0aGUgZGV2aWNlIHRyZWUgTWFpbnRhaW5lcnMKPnNob3VsZCBiZSBwYXJ0IG9mIHRoZSBkaXNj
dXNzaW9uLgo+Cj4+ID5PbiBGcmksIEFwciAyOSwgMjAyMiBhdCAwODo0NjowNUFNICswODAwLCBK
aWFucXVuIFh1IHdyb3RlOgo+PiA+PiBUaGUgZHJpdmVyIHVzZSB0aGUgdmFsdWUgb2YgcHJvcGVy
dHkgJ3NucHMscngtcXVldWVzLXRvLXVzZScgdG8gbG9vcAo+PiA+PiBzYW1lIG51bWJlcnMgY2hp
bGQgbm9kZXMgYXMgcXVldWVzLCBzdWNoIGFzOgo+PiA+Pgo+PiA+PsKgwqDCoMKgIGdtYWMgewo+
PiA+PsKgwqDCoMKgwqDCoMKgwqAgcngtcXVldWVzLWNvbmZpZyB7Cj4+ID4+wqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgIHNucHMscngtcXVldWVzLXRvLXVzZSA9IDwxPjsKPj4gPj7CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgcXVldWUwIHsKPj4gPj7CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAvLyBub3RoaW5nIG5lZWQgaGVyZS4KPj4gPj4gwqDCoMKgIH07Cj4+ID4+IH07Cj4+ID4+
wqDCoMKgwqAgfTsKPj4gPj4KPj4gPj4gU2luY2UgYSBwYXRjaCBmb3IgZHRjIGZyb20gcm9ja2No
aXAgd2lsbCBkZWxldGUgYWxsIG5vZGUgd2l0aG91dCBhbnkKPj4gPj4gcHJvcGVydGllcyBvciBj
aGlsZCBub2RlLCB0aGUgcXVldWUwIG5vZGUgd2lsbCBiZSBkZWxldGVkLCB0aGF0IGNhdXNlZAo+
PiA+PiB0aGUgZHJpdmVyIGZhaWwgdG8gcHJvYmU6Cj4+ID4KPj4gPklzIHRoaXMgdGhlIGluIHRy
ZWUgZHRjPyBEbyB5b3UgaGF2ZSBhIGNvbW1pdCBoYXNoIGZvciBpdD8gVGhhdCBzaG91bGQKPj4g
PnByb2JhYmx5IGJlIHVzZWQgYXMgYSBGaXhlczogdGFnLiBPciB0aGF0IGNoYW5nZSB0byBkdGMg
bmVlZHMKPj4gPnJldmVydGluZyBiZWNhdXNlIGl0IGJyZWFrcyBzdHVmZi4KPj4gPgo+PiBUaGUg
cGF0Y2ggaXMgYSBoYWNrIHBhdGNoIGZvciBzb21lIHByb2R1Y3RzIGFuZCBoYXZlIG5vdCBpbiB0
cmVlIGR0YywgSSBzYWlkIHRoYXQgdG8KPj4gZXhwbGFpbiBhIHBvc3NpYmxlIGNhc2UgaG93IHRo
aW5ncyBoYXBwZWQsIGl0J3Mgb25seSBhIGNhc2Ugb2Ygbm8gY2hpbGQgcXVldWUgbm9kZS4KPgo+
U28gdGhpcyBoYXMgbm90aGluZyB0byBkbyB3aXRoIHRoZSBrZXJuZWwgZHRjLCBvciB0aGUgdXBz
dHJlYW0KPmR0Yy4gVGhpcyBpcyBvbmx5IGEgJ3ZlbmRvciBjcmFwJyBkdGMgd2hpY2ggaGFzIGJl
ZW4gaGFja2VkPwo+Cj5XaHkgc2hvdWxkIG1haW5saW5lIGNhcmU/IElzIHRoZXJlIGFueXRoaW5n
IGluIHRoZSBEVCBzdGFuZGFyZCB3aGljaAo+c2F5cyB0aGUgY29tcGlsZXIgY2FuIG9wdGltaXNl
IG91dCBlbXB0eSBwcm9wZXJ0aWVzPyAKClllcywgaXQndCBub3RoaW5nIGFib3V0IHdoYXQga2lu
ZCBvZiBkdGMsIGRvZXMgYWJvdXQgd2hhdCBydWxlIGZvciBwcm9wZXJ0aWVzLCBub3cgdGhlIG9u
ZSBwcm9wZXJ0eQpyZXF1ZXN0IGFub3RoZXIgY2hpbGQgbm9kZSBtdXN0IGV4aXN0IGFuZCBudW1i
ZXIgb2YgY2hpbGQgbm9kZSBtdXN0IGVxdWFsIHRvIHRoZSB2YWx1ZSBvZiB0aGUgcHJvcGVydHks
CnRoZcKgCiNhZGRyZXNzLWNlbGxzID0gPDE+Owojc2l6ZS1jZWxscyA9IDwxPjsKZG9lcyB0aGlz
IGJ1dCB0aGV5IGFyZSBpbiBzcGVjaWFsIGtleSB3b3JkcywgdGhlIGdtYWMgaGFzIG5vIGxpa2Vs
eSBrZXkgd29yZC4KCj4KPsKgwqDCoMKgIEFuZHJldwpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
