Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97CA1C3601E
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Apr 2025 02:27:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=COmmb24IaIyDwaQH9qaXo6WBfvIus4KRhebSwTtN05w=; b=XNHtpR+k6pUjwT
	i4eN7jsLiN5IcCZo1wB1CW2GxiJVhBCjunvUGh/C7rtZBWE8CZzoH0mb1jMIjdPxisghjT5QD7iOI
	L+NDTi+5VV7gg3pHcJUlfmWdp899MtjhUJl1aw+22u/MnD80XjbelqzuIMRQEUXEabWlAxjW+QN5M
	Ff9Or+gM3cjNywenyTKUxzhR13PBpxrKgL+gubQ3MtwdH6fL5aA4ny3+TQT7US8EVn1yY66WFzQI9
	3PfDbWpy6mcnOJYGHtjiwq/qNayzufQaRZZFvMBntalXiM2UiFK9jU8WhpWgcsAR2DhC+5JEu3qVy
	Xm0dWPYZjBhKcL08rTyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3474-0000000CJLt-0HOy;
	Fri, 11 Apr 2025 02:27:26 +0000
Received: from mail-m15595.qiye.163.com ([101.71.155.95])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3470-0000000CJLP-25Vv
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Apr 2025 02:27:24 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 11774021d;
	Fri, 11 Apr 2025 10:27:17 +0800 (GMT+08:00)
Message-ID: <b7c48a0e-650c-aa9b-3748-f8bd168984b3@rock-chips.com>
Date: Fri, 11 Apr 2025 10:26:56 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Cc: shawn.lin@rock-chips.com, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>
Subject: Re: [PATCH] PCI: dw-rockchip: Add system PM support
To: Damien Le Moal <dlemoal@kernel.org>
References: <1744267805-119602-1-git-send-email-shawn.lin@rock-chips.com>
 <ac2760c1-e876-493f-8a44-4af16093423f@kernel.org>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <ac2760c1-e876-493f-8a44-4af16093423f@kernel.org>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGh0aGVZIQkhMGRgZGRpNQkpWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9622ac465d09cckunm11774021d
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PRw6CCo5GjJLCjU8OhcKUSEJ
	EDQaCj1VSlVKTE9PSEhDT0hDTU9CVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlJSEs3Bg++
DKIM-Signature: a=rsa-sha256;
	b=ZV2DIa4A7n0KhgwS+/J0KRNOA/dvaFtpeWR3ZROYZgrRLIeG4Yjc8hAM/xPXIenM3Ocnp7Gw9kzF90ruGA0OqW8Ajkrep/wlxMscJ4JdKYZJve7PpCFkH45kqgnDEll2nYahdEyKfJcE8/37zH0G0Yz0xnW0vEotGUNU5vC+tQc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=C9JKHI/yKt7GnPOl00gdyeRH9b05ywfPa3LGarSh5oo=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_192723_033493_76944053 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
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

5ZyoIDIwMjUvMDQvMTEg5pif5pyf5LqUIDEwOjAyLCBEYW1pZW4gTGUgTW9hbCDlhpnpgZM6Cj4g
T24gNC8xMC8yNSAxNTo1MCwgU2hhd24gTGluIHdyb3RlOgo+PiArc3RhdGljIGludCByb2NrY2hp
cF9wY2llX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQo+PiArewo+PiArCXN0cnVjdCByb2Nr
Y2hpcF9wY2llICpyb2NrY2hpcCA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOwo+PiArCXN0cnVjdCBk
d19wY2llICpwY2kgPSAmcm9ja2NoaXAtPnBjaTsKPj4gKwlpbnQgcmV0Owo+PiArCj4+ICsJcm9j
a2NoaXAtPmludHggPSByb2NrY2hpcF9wY2llX3JlYWRsX2FwYihyb2NrY2hpcCwgUENJRV9DTElF
TlRfSU5UUl9NQVNLX0xFR0FDWSk7Cj4+ICsKPj4gKwlyZXQgPSBkd19wY2llX3N1c3BlbmRfbm9p
cnEocGNpKTsKPj4gKwlpZiAocmV0KSB7Cj4+ICsJCWRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIHN1
c3BlbmRcbiIpOwo+PiArCQlyZXR1cm4gcmV0Owo+PiArCX0KPj4gKwo+PiArCXJvY2tjaGlwX3Bj
aWVfcGh5X2RlaW5pdChyb2NrY2hpcCk7Cj4+ICsJY2xrX2J1bGtfZGlzYWJsZV91bnByZXBhcmUo
cm9ja2NoaXAtPmNsa19jbnQsIHJvY2tjaGlwLT5jbGtzKTsKPj4gKwlyZXNldF9jb250cm9sX2Fz
c2VydChyb2NrY2hpcC0+cnN0KTsKPj4gKwlpZiAocm9ja2NoaXAtPnZwY2llM3YzKQo+PiArCQly
ZWd1bGF0b3JfZGlzYWJsZShyb2NrY2hpcC0+dnBjaWUzdjMpOwo+PiArCWdwaW9kX3NldF92YWx1
ZV9jYW5zbGVlcChyb2NrY2hpcC0+cnN0X2dwaW8sIDApOwo+PiArCj4+ICsJcmV0dXJuIDA7Cj4+
ICt9Cj4gCj4gVGhpcyBmdW5jdGlvbiBuZWVkcyBhIF9fbWF5YmVfdW51c2VkIGluIGl0cyBkZWNs
YXJhdGlvbiwgb3RoZXJ3aXNlLCB5b3UgZ2V0IGEKPiBjb21waWxhdGlvbiB3YXJuaW5nIHdoZW4g
UE0gaXMgbm90IGVuYWJsZWQuCj4gCj4gc3RhdGljIGludCBfX21heWJlX3VudXNlZCByb2NrY2hp
cF9wY2llX3N1c3BlbmQoc3RydWN0IGRldmljZSAqZGV2KQo+IAo+IAoKRW1tLi4gSSBkb24ndCBz
ZWUgYW55IGhvc3QgZHJpdmVycyB3aXRoIHN5c3RlbSBQTSBzdXBwb3J0IHVuZGVyCmRyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvIGFkZHMgdGhlc2UgOikKCiNncmVwIHN1c3BlbmQgZHJpdmVycy9wY2kv
Y29udHJvbGxlci8gLXJuIHwgZ3JlcCBfX21heWJlX3VudXNlZCAgfCB3YyAtbAowCgpBbnl3YXks
IHdpbGwgZml4IGl0LgoKPj4gK3N0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9yZXN1bWUoc3RydWN0
IGRldmljZSAqZGV2KQo+IAo+IFNhbWUgaGVyZSB0b28uCj4gCj4gCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
