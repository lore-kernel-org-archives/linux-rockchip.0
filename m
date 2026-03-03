Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87A71EB365D
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Mar 2026 03:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SDQOwlafGOeAJkoXPszIwAwciaUAWFJf4q5sCd1JoxU=; b=JsdtrpH8xncyE8tRfP2eFzWMSZ
	D2LFu9+YDiwrHyuSrcr0rneuHRx0nfG/E6bqe1wBhITv13as3ngQbY0PT8z0PuzjuXvfCRfKNf7GU
	X82a0A6+s0Cr3vEbQAl4m+X4MakgRMDEovwFL7s0rgtZNla5QRhpLUjDXfO3ALT2+CWPnbKRvC1s/
	b4rSXw2x5mJjXMKQD7NcrqMOKOIhjV2tgT00TZeOPleWofXRy6u/eckFL7fxVJbBudiX/1j8Zxru0
	69ihA4NjR0Rzg/4UuyxZE5rMZ/aAhst4EafTMg3takvbF8plBVCDJGrqU6pYxfXmODU7DEQ2QkhlU
	DCFzrGuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxGNo-0000000ESOE-1de4;
	Tue, 03 Mar 2026 03:25:16 +0000
Received: from mail-m9359.xmail.ntesmail.com ([103.126.93.59])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxGNk-0000000ESNd-29bx
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Mar 2026 03:25:14 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 35873ab86;
	Tue, 3 Mar 2026 11:25:04 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, Manivannan Sadhasivam <mani@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-rockchip@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-trace-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v4 3/3] PCI: dw-rockchip: Add pcie_ltssm_state_transition
 trace support
To: Steven Rostedt <rostedt@goodmis.org>
References: <1769047340-113287-1-git-send-email-shawn.lin@rock-chips.com>
 <1769047340-113287-4-git-send-email-shawn.lin@rock-chips.com>
 <20260224091115.6e32c38e@fedora> <20260224091601.48a7b3c0@fedora>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <9c58271e-394c-a49e-ab2f-797f31ac9a79@rock-chips.com>
Date: Tue, 3 Mar 2026 11:25:03 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20260224091601.48a7b3c0@fedora>
X-HM-Tid: 0a9cb1ba533c09cckunm664397451064e69
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkNCHVYZQx1JSUkZQkNCHkhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=fcOCZunhr7Y/DHLUF7L3Wb8FLFNDfUkfU7AkKjjWaKuAbLrt3jIhPnhzA3AfgYiNDKuBBUgCaVP6YnlBWUypnln5kdTxA1wA8MCwJG7nI/KUvkm9UqLMCPMd3+zrOwRI+sCwIUCV6TH0CvJ8RlVDvwmPBaPnXAX33ISLhEt1JS8=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=o7qDpfAmCY+KKmwW4NiVQPzaWeAB3Pm4lOV/bydwgz8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260302_192513_081893_984854D2 
X-CRM114-Status: GOOD (  15.02  )
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
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgU3RldmVuLAoK1NogMjAyNi8wMi8yNCDQx8batv4gMjI6MTYsIFN0ZXZlbiBSb3N0ZWR0INC0
tcA6Cj4gT24gVHVlLCAyNCBGZWIgMjAyNiAwOToxMToxNSAtMDUwMAo+IFN0ZXZlbiBSb3N0ZWR0
IDxyb3N0ZWR0QGdvb2RtaXMub3JnPiB3cm90ZToKPiAKCi4uLgoKPj4+ICsJfQo+Pj4gKwo+Pj4g
K3NraXBfdHJhY2U6Cj4+PiArCXNjaGVkdWxlX2RlbGF5ZWRfd29yaygmcm9ja2NoaXAtPnRyYWNl
X3dvcmssIG1zZWNzX3RvX2ppZmZpZXMoNTAwMCkpOwo+Pj4gK30KPj4+ICsKPiAKPiBIbW0sIHNv
IGJhc2ljYWxseSB5b3Ugb25seSB3YW50IHRvIGNhbGwgdGhlIHdvcmsgd2hlbiB0cmFjaW5nIGlz
Cj4gZW5hYmxlZD8gVGhhdCdzIHdoYXQgSSB3YXMgdGhpbmtpbmcgc2hvdWxkIGJlIGVuYWJsZWQg
YnkgdGhlIHJlZyBhbmQKPiB1bnJlZyBmdW5jdGlvbnMuIFRoYXQgaXMsIHRoZSByZWcgc2hvdWxk
IGVuYWJsZWQgdGhlIGRlbGF5ZWQgd29yaywgYW5kCj4gdGhlIHVucmVnIHNob3VsZCBkaXNhYmxl
IGl0IGZyb20gYmVpbmcgY2FsbGVkLgo+IAo+IFRoaXMgbG9va3MgbGlrZSBpdCBjYWxscyB0aGUg
d29yayByZWdhcmRsZXNzIG9mIGlmIHRyYWNpbmcgaXMgZW5hYmxlZAo+IG9yIG5vdC4gV2h5IHdh
c3RlIHRoZSBjeWNsZXMgd2hlbiB0cmFjaW5nIGlzIGRpc2FibGVkPwo+IAoKCkkgbG9va2VkIGlu
dG8gaW1wbGVtZW50aW5nIHJlZyBhbmQgdW5yZWcgY2FsbGJhY2tzIHRvIGRpcmVjdGx5IHNjaGVk
dWxlCmFuZCBjYW5jZWwgdGhlIGRlbGF5ZWQgd29yay4gVGhlIGNoYWxsZW5nZSBpcyB0aGF0IHRo
aXMgdHJhY2Vwb2ludApiZWxvbmdzIHRvIHRoZSBzaGFyZWQgUENJIHN1YnN5c3RlbSB0cmFjZSBo
aWVyYXJjaHksIHdoaWxlIHRoZSBwb2xsaW5nCndvcmsgaXRzZWxmIGlzIHBlci1jb250cm9sbGVy
LiBJIGhhdmVuJ3QgZm91bmQgYSBjbGVhbiB3YXkgdG8gcmVnaXN0ZXIKcGVyLWRyaXZlciBjYWxs
YmFja3MgaW4gdGhpcyBjb21tb24gY29udGV4dC4KCkNyZWF0aW5nIGEgc2VwYXJhdGUgUm9ja2No
aXAtc3BlY2lmaWMgdHJhY2Vwb2ludCB2aWEKdHJhY2Vwb2ludF9wcm9iZV9yZWdpc3RlcigpIHdv
dWxkIGRldGFjaCBpdCBmcm9tIHRoZSBzdGFuZGFyZCBQQ0llIHRyYWNlCmV2ZW50IGhpZXJhcmNo
eSwgd2hpY2ggc2VlbXMgdW5kZXNpcmFibGUuCgpBcyBhIHByYWN0aWNhbCBtaWRkbGUgZ3JvdW5k
LCBJIGltcGxlbWVudCByZWcgYW5kIHVucmVnIHRvIG1haW50YWluIGEKdXNlciBjb3VudCBsaWtl
IHRoaXMgdjQuIEFsbCBkcml2ZXJzIHVzaW5nIHRoaXMgdHJhY2Vwb2ludCB3b3VsZCB0aGVuCnJl
bHkgb24gdGhlIGNvdW50IHRvIGdhdGUgdGhlaXIgd29yayBleGVjdXRpb24sIG1ha2luZyB0aGUg
ZGVsYXllZCB3b3JrCmVzc2VudGlhbGx5IGEgbm8tb3Agd2hlbiB0cmFjaW5nIGlzIGRpc2FibGVk
LgoKQWx0ZXJuYXRpdmVseSwgd2UgY291bGQgc2ltcGx5IHJldmVydCB0byB0aGUgVjMgYXBwcm9h
Y2ggYW5kIHJlbHkKZW50aXJlbHkgb24gdGhlIHRyYWNlX3BjaWVfbHRzc21fc3RhdGVfdHJhbnNp
dGlvbl9lbmFibGVkKCkgc3RhdGljCmJyYW5jaCBjaGVjaywgd2hpY2ggd291bGQgcmVtb3ZlIHRo
ZSBuZWVkIGZvciByZWcgYW5kIHVucmVnIGFsdG9nZXRoZXIuCgpJZiB5b3UgaGF2ZSBiZXR0ZXIg
c3VnZ2VzdGlvbnMgb3IgY2FuIHBvaW50IG1lIHRvIGEgcHJlZmVycmVkIHBhdHRlcm4gCmZvciB0
aGlzLCBJJ2QgYXBwcmVjaWF0ZSB5b3VyIGFkdmljZS4KCj4gLS0gU3RldmUKPiAKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
