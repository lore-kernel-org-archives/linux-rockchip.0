Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28F2BC982F0
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 00:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LkeMKZokZkYSTfQbbz1KeeniP/667QLQwKt3Ab4BMK4=; b=iGo27fPAR21OIs
	R63jJEfNFDF2wbfJ2jPmiC1hgIR1LWaxvm8p6y+R9ZTwtJ2i/QnxUrms+hifBySItWb57SFKGndEV
	seJTccjDhgy+xgCensd9Oo1twLK7uAKuxMclUVJmEJ0z8YyMZ5IKadvfS4TMFiqWftP0KVm+RDqA+
	h6hjMYvB1FcY3ixesWAYlvOlpJzDug6tdBmWsvQ23sCw1S4S0XuceamtTg0nxi2YRwfwUPT+aHJnm
	VvtezMSlDOcYjIjXn+e0VPYbxCMJrUkeph9FcXmDJeEdM7dL9aV+VUJVWDx7QWmpxhj0f+khyPbnO
	ragYg5bRwRdm8KMAlBMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8oh4-00000003oud-2OZB;
	Tue, 22 Sep 2026 00:49:10 +0000
Received: from mail-m205210164254.xmail.ntesmail.com ([205.210.164.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8ogz-00000003otD-2eFp
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Sep 2026 00:49:07 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4ea32f09c;
	Tue, 22 Sep 2026 08:49:01 +0800 (GMT+08:00)
Message-ID: <97679f9a-a9bc-4823-bf46-aa7153c534be@rock-chips.com>
Date: Tue, 22 Sep 2026 08:48:57 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Manivannan Sadhasivam <mani@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-rockchip@lists.infradead.org,
 linux-pci@vger.kernel.org, Wilfred Mallawa <wilfred.mallawa@wdc.com>
Subject: Re: [PATCH v2 1/2] PCI: dw-rockchip: Move the INTx irq setup to probe
 and make it devm-managed
To: Niklas Cassel <cassel@kernel.org>
References: <1788484709-139123-1-git-send-email-shawn.lin@rock-chips.com>
 <1788484709-139123-2-git-send-email-shawn.lin@rock-chips.com>
 <aprCfVgc1dl_h24T@ryzen>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <aprCfVgc1dl_h24T@ryzen>
X-HM-Tid: 0aa0c696690b03a4kunmf1c19fa9386300
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDHUIfVklLTk9CHh1OQk8ZGVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUJCSU
	5LVUpLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=d4PUoeDfWp00hA4Po1QNl3m0bzvBFzreiaq+HldrhORIAN8C4HTaxSmlO6KF7s0ZgFfT1S5aDFuamMlHi/xZjDekAF3KG8FsxbP/B3nmnyuXXyglt+awxh7Jpks7wa6LiynFjlLn2k+QnqEfqj1xvjt5FmLo+qpU+EIrH7aYpiw=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=Gg7QC0imucH4qnSkWez8ljimIOZf4aefN4ADrJlrACU=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_174905_975120_01016E15 
X-CRM114-Status: GOOD (  23.68  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

5ZyoIDIwMjYvMDkvMDQg5pif5pyf5LqUIDIxOjA3LCBOaWtsYXMgQ2Fzc2VsIOWGmemBkzoKPiBP
biBGcmksIFNlcCAwNCwgMjAyNiBhdCAwOToxODoyOEFNICswODAwLCBTaGF3biBMaW4gd3JvdGU6
Cj4+IFNpbmNlIGNvbW1pdCBiMzc2YjNmZjljYjAgKCJQQ0k6IGR3LXJvY2tjaGlwOiBJbXBsZW1l
bnQgLnJlc2V0X3Jvb3RfcG9ydCgpCj4+IGFuZCB1c2UgZm9yIGxpbmsgZG93biIpLCAucmVzZXRf
cm9vdF9wb3J0KCkgcmUtcnVucyB0aGUgaG9zdCBvcHMKPj4gLmluaXQoKSBjYWxsYmFjayB0byBy
ZXByb2dyYW0gdGhlIFJvb3QgQ29tcGxleCBhZnRlciBhIGNvbnRyb2xsZXIKPj4gcmVzZXQuIFRo
YXQgd29ya3MgZm9yIHRoZSByZWdpc3RlciBwcm9ncmFtbWluZywgYnV0IC5pbml0KCkgaXMgbm90
Cj4+IHJlLWVudHJhbnQ6IGl0IGFsc28gY3JlYXRlcyB0aGUgSU5UeCBpcnEgZG9tYWluIGFuZCBp
bnN0YWxscyB0aGUKPj4gY2hhaW5lZCBJTlR4IGhhbmRsZXIuIEV2ZXJ5IHJvb3QgcG9ydCByZXNl
dCB0aGVyZWZvcmUgZW5kcyB1cCB3aXRoIGEKPj4gc2Vjb25kIGlycSBkb21haW4gcmVnaXN0ZXJl
ZCBmb3IgdGhlIHNhbWUgZndub2RlOiB0aGUgcHJldmlvdXMgb25lIGlzCj4+IGxlYWtlZCwgYXMg
aXQgaXMgbmV2ZXIgcmVtb3ZlZCwgYW5kIHdvcnNlLCB0aGUgSU5UeCB2aXJxcyBvZiB0aGUKPj4g
ZG93bnN0cmVhbSBQQ0kgZGV2aWNlcyB3ZXJlIGFsbG9jYXRlZCBpbiB0aGUgcHJldmlvdXMgaXJx
IGRvbWFpbiBhbmQKPj4gYXJlIG5ldmVyIHJlLW1hcHBlZCwgd2hpbGUgdGhlIGNoYWluZWQgaGFu
ZGxlciBub3cgbG9va3MgdXAgdmlycXMgaW4KPj4gdGhlIG5ldywgZW1wdHkgZG9tYWluLiBBZnRl
ciBhIGxpbmsgZG93biByZWNvdmVyeSwgSU5UeCBpbnRlcnJ1cHRzCj4+IGFyZSBzaWxlbnRseSBs
b3N0Lgo+Pgo+PiBGaXggaXQgYnkgbW92aW5nIHRoZSBvZl9pcnFfZ2V0X2J5bmFtZSgpIGxvb2t1
cCwgdGhlIElOVHggaXJxIGRvbWFpbgo+PiBjcmVhdGlvbiBhbmQgdGhlIGNoYWluZWQgaGFuZGxl
ciBpbnN0YWxsYXRpb24gb3V0IG9mIC5pbml0KCkgYW5kIGludG8KPj4gcm9ja2NoaXBfcGNpZV9j
b25maWd1cmVfcmMoKSwgcmlnaHQgYWZ0ZXIgZHdfcGNpZV9ob3N0X2luaXQoKS4gVGhpcwo+PiBt
aXJyb3JzIGhvdyB0aGUgcWNvbSBkcml2ZXIgcmVxdWVzdHMgaXRzIGdsb2JhbCBJUlEsIGFuZCBs
ZWF2ZXMKPj4gLmluaXQoKSB3aXRoIG5vdGhpbmcgYnV0IGlkZW1wb3RlbnQgcmVnaXN0ZXIgcHJv
Z3JhbW1pbmcsIHNvIGJvdGgKPj4gLnJlc2V0X3Jvb3RfcG9ydCgpIGFuZCBkd19wY2llX3Jlc3Vt
ZV9ub2lycSgpIGNhbiBzYWZlbHkgcmUtcnVuIGl0Lgo+PiBSZS1ydW5uaW5nIG9mX2lycV9nZXRf
YnluYW1lKCkgb24gZXZlcnkgcmVzdW1lIGlzIGFsc28gZ29uZS4KPj4KPj4gV2l0aCB0aGUgaXJx
IHNldHVwIG5vdyBsaXZpbmcgaW4gcHJvYmUsIHRpZSBpdHMgbGlmZXRpbWUgdG8gdGhlIGRldmlj
ZQo+PiB3aXRoIGRldnJlczogY3JlYXRlIHRoZSBpcnEgZG9tYWluIHdpdGggZGV2bV9pcnFfZG9t
YWluX2luc3RhbnRpYXRlKCkKPj4gYW5kIHVuaW5zdGFsbCB0aGUgY2hhaW5lZCBoYW5kbGVyIHRo
cm91Z2ggdGhlCj4+IHJvY2tjaGlwX3BjaWVfaW50eF9jaGFpbmVkX3JlbGVhc2UoKSBkZXZyZXMg
YWN0aW9uLiBUaGUgZHJpdmVyIGlzCj4+IGJ1aWx0aW4gYW5kIGNhbm5vdCBiZSB1bmJvdW5kIChz
dXBwcmVzc19iaW5kX2F0dHJzKSwgc28gcHJvYmUgZmFpbHVyZQo+PiBpcyB0aGUgb25seSBwYXRo
IHRoYXQgZXZlciBuZWVkcyB0aGlzIGNsZWFudXAsIGFuZCBkZXZyZXMgdGFrZXMgY2FyZQo+PiBv
ZiBpdCB3aXRob3V0IHNwcmlua2xpbmcgaXQgb3ZlciBldmVyeSBlcnJvciBwYXRoLiBTaW5jZSB0
aGUgaXJxIHNldHVwCj4+IGlzIHRoZSBsYXN0IHN0ZXAgb2Ygcm9ja2NoaXBfcGNpZV9jb25maWd1
cmVfcmMoKSwgdGhlIG9ubHkgZmFpbHVyZQo+PiBwb2ludCBsZWZ0IGFmdGVyIHRoZSBjaGFpbmVk
IGhhbmRsZXIgaXMgaW5zdGFsbGVkIGlzCj4+IGRldm1fYWRkX2FjdGlvbl9vcl9yZXNldCgpIGl0
c2VsZiwgd2hvc2UgZmFpbHVyZSBtb2RlIHJ1bnMgdGhlIGFjdGlvbiwKPj4gc28gdGhlIGhhbmRs
ZXIgY2FuIG5ldmVyIHJ1biBhZ2FpbnN0IHRoZSBkZXZtLWZyZWVkIHJvY2tjaGlwCj4+IHN0cnVj
dHVyZS4gZGV2cmVzIGFsc28gdW53aW5kcyBpbiByZXZlcnNlIHJlZ2lzdHJhdGlvbiBvcmRlciwg
c28gdGhlCj4+IGhhbmRsZXIgaXMgYWx3YXlzIHVuaW5zdGFsbGVkIGJlZm9yZSB0aGUgZG9tYWlu
IGlzIHJlbW92ZWQuIFRoZXJlIGlzCj4+IG5vIGRldm0gQVBJIGZvciBjaGFpbmVkIGhhbmRsZXJz
LCBoZW5jZSB0aGUgc21hbGwgZGV2cmVzIGFjdGlvbgo+PiB3cmFwcGVyLgo+Pgo+PiBGaXhlczog
YjM3NmIzZmY5Y2IwICgiUENJOiBkdy1yb2NrY2hpcDogSW1wbGVtZW50IC5yZXNldF9yb290X3Bv
cnQoKSBhbmQgdXNlIGZvciBsaW5rIGRvd24iKQo+PiBTdWdnZXN0ZWQtYnk6IE5pa2xhcyBDYXNz
ZWwgPGNhc3NlbEBrZXJuZWwub3JnPgo+PiBDYzogV2lsZnJlZCBNYWxsYXdhIDx3aWxmcmVkLm1h
bGxhd2FAd2RjLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9j
ay1jaGlwcy5jb20+Cj4gCj4gSSB3b3VsZCBoYXZlIHdyaXR0ZW4gaXQgaW4gdHdvIGNvbW1pdHM6
Cj4gMS8zIHRoYXQgbW92ZXMgdGhlIG9mX2lycV9nZXRfYnluYW1lKCkgbG9va3VwLCB0aGUgSU5U
eCBpcnEgZG9tYWluIGNyZWF0aW9uLAo+ICAgICAgYW5kIGNoYWluZWQgaGFuZGxlciBpbnN0YWxs
YXRpb24uCj4gMi8zIHRoYXQgbWFrZXMgdGhlIGlycSBkb21hbiBkZXZpY2UgbWFuYWdlZCwgdG8g
bm90IGxlYWsgdGhlIHJlc291cmNlcywgYXMKPiAgICAgIGZsYWdnZWQgYnkgU2FzaGlrbwo+ICgz
LzMgdGhhdCBtYXNrcyB0aGUgSU5UeCBJUlEgZHVyaW5nIC5yZXNldF9yb290X3BvcnQoKSkKPiAK
PiAKPiBTaW5jZSBmaXhpbmcgdGhlIHJlc291cmNlIGxlYWsgc2VlbXMgbGlrZSBhIHNlcGFyYXRl
IGlzc3VlLgo+IAo+IFRoZSBjb21taXQgbWVzc2FnZSBmb3IgdGhpcyBwYXRjaCBkb2VzIHNlZW0g
cXVpdGUgbG9uZywgbW9zdGx5IGJlY2F1c2UKPiBpdCBpcyBmaXhpbmcgdHdvIHNlcGFyYXRlIGlz
c3Vlcy4KPiAKPiAKPiBTb3JyeSB0aGF0IHdlIGRpZCBub3QgZGV0ZWN0IHRoaXMgSU5UeCBpc3N1
ZSB3aGVuIHNlbmRpbmcgdGhlCj4gLnJlc2V0X3Jvb3RfcG9ydCgpIHBhdGNoLiBTaW5jZSBSSzM1
ODggZG9lcyBub3Qgc3VwcG9ydCBJTlR4IGluIEVQIG1vZGUsCj4gaXQgaXMgdW5mb3J0dW5hdGVs
eSBub3QgdGVzdGVkIHdoZW4gcnVubmluZyB0aGUgcGNpX2VuZHBvaW50X3Rlc3Qgc2VsZnRlc3Qu
Cj4gCgpEb24ndCB3b3JyeSwgYW5kIHRoYW5rcyBmb3IgdGhlc2Ugc3VnZ2VzdGlvbi4gSSdsbCBz
cGluIGEgdjMgbGF0ZXIuCgo+IAo+IEtpbmQgcmVnYXJkcywKPiBOaWtsYXMKPiAKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
