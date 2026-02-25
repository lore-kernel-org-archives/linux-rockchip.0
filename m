Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AA63F55434
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Feb 2026 01:25:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2dnrBJ0jzPgZB4iEtiTZn2Fs5FlCmqCQ8m8KiaFgQNI=; b=ClQqzoDNAXLRbMPF1nJ6DL+VWG
	AUVLs+h7fsjQMsqZlpW6M6Dw7mOWwDC6M2iHVhk8YxHcycC8akEsc/RALYcbv7QlPTGNxqyuQWjNN
	1CH9kIYN64nae01IiXorYMF+a/IW2kFEktvEvGuOvk/Y0hD7VZacfCn1pEBTGWSsy4P4ct3mKa3lP
	6HrRsx1/nMdW8cFTjZU3OQk3FHnWqmzRidhbq58UoC1MTdxg8blU+i7Eiu5+On36RshNxmz94wkqB
	4a+Xiji1Iohjx3P8GgjV5mB5J3cb07HS6ISjzhKaVSOMumhin4JLAWIshZ7AaJzPT72ux48qTSz7B
	ebthICcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv3eh-000000032GP-0oAc;
	Wed, 25 Feb 2026 01:25:35 +0000
Received: from mail-m32107.qiye.163.com ([220.197.32.107])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vv3ee-000000032G0-3ilv
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Feb 2026 01:25:34 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 34da72a41;
	Wed, 25 Feb 2026 09:25:19 +0800 (GMT+08:00)
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
Message-ID: <6177ba1f-c89e-486a-fdb5-9344c6551d72@rock-chips.com>
Date: Wed, 25 Feb 2026 09:25:16 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20260224091601.48a7b3c0@fedora>
X-HM-Tid: 0a9c92668ac109cckunmeceb3770aa21f8
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGklLH1YaTk8aTEoeHx5PTxlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=RiMeCrvRtgt2dVUqWRNBLAEdv/gUkM8HUNynK7JgMxgcbJgnI6ZKCOOx73UIwBa1xRky8AyaFrhrH9CDX8pr5HST31qHk2zWxCEZGGMYFnnbVr5zTq+YlNDlYdI5XB3g7ro7PPjsgC0GPfHPxC1n9BdiS+07+yxSACr+MNIAboE=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=0CtRRU86YFrtubdwShhQPgmlG8739fPgSVh2JLGIN0w=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_172533_431036_EBF2E0E8 
X-CRM114-Status: GOOD (  19.75  )
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
IDxyb3N0ZWR0QGdvb2RtaXMub3JnPiB3cm90ZToKPiAKPj4+ICsjaWZkZWYgQ09ORklHX1RSQUNJ
TkcKPj4+ICtzdGF0aWMgdm9pZCByb2NrY2hpcF9wY2llX2x0c3NtX3RyYWNlX3dvcmsoc3RydWN0
IHdvcmtfc3RydWN0ICp3b3JrKQo+Pj4gK3sKPj4+ICsJc3RydWN0IHJvY2tjaGlwX3BjaWUgKnJv
Y2tjaGlwID0gY29udGFpbmVyX29mKHdvcmssCj4+PiArCQkJCQkJc3RydWN0IHJvY2tjaGlwX3Bj
aWUsCj4+PiArCQkJCQkJdHJhY2Vfd29yay53b3JrKTsKPj4+ICsJc3RydWN0IGR3X3BjaWUgKnBj
aSA9ICZyb2NrY2hpcC0+cGNpOwo+Pj4gKwllbnVtIGR3X3BjaWVfbHRzc20gc3RhdGU7Cj4+PiAr
CXUzMiBpLCBsMXNzLCBwcmV2X3ZhbCA9IERXX1BDSUVfTFRTU01fVU5LTk9XTiwgcmF0ZSwgdmFs
Owo+Pj4gKwo+Pj4gKwlpZiAoIXBjaV9sdHNzbV90cF9lbmFibGVkKCkpCj4+PiArCQlnb3RvIHNr
aXBfdHJhY2U7Cj4+Cj4+IFlvdSBjYW4gdXNlOgo+Pgo+PiAJaWYgKCF0cmFjZV9wY2llX2x0c3Nt
X3N0YXRlX3RyYW5zaXRpb25fZW5hYmxlZCgpKQo+PiAJCWdvdG8gc2tpcF90cmFjZTsKPj4KPj4g
VGhlIGFib3ZlIGlzIGEgc3RhdGljIGJyYW5jaC4gVGhhdCBtZWFucyB3aGVuIHRyYWNpbmcgaXMg
ZGlzYWJsZWQsIGl0IGlzCj4+IGJhc2ljYWxseToKPj4KPj4gCWdvdG8gc2tpcF90cmFjZTsKPj4K
Pj4gYW5kIHdoZW4gdHJhY2luZyBpcyBlbmFibGVkIGl0IGlzIGEgbm9wLgoKSSBtdXN0IGFkbWl0
IEkgYm9ycm93IGl0IGZyb20gYXJjaC9wb3dlcnBjL2luY2x1ZGUvYXNtL3RyYWNlLmggYW5kCmlu
Y2x1ZGUvdHJhY2UvZXZlbnRzL2kyYy5oIGZvciByZWZlcmVuY2UsIHdoZXJlIHRoZSByZWcgYW5k
IHVucmVnCmp1c3QgaW5jcmVhc2UgYW5kIGRlY3JlYXNlIHRoZSByZWYgY291bnQgdG8gaW5kaWNh
dGUgaWYgdGhlIHRwCnNob3VsZCBiZSBjb250aW51ZWQuIFN1cmUsIHRoZSBzdGF0aWMgYnJhbmNo
IGNvdWxkIGJlIHVzZWQgaW5zdGVhZCwKZXZlbiB3aXRob3V0IHJlZyBhbmQgdW5yZWcgaW1wbGVt
ZW50YXRpb24uCgo+PgoKLi4KCj4+PiArfQo+Pj4gKwo+IAo+IEhtbSwgc28gYmFzaWNhbGx5IHlv
dSBvbmx5IHdhbnQgdG8gY2FsbCB0aGUgd29yayB3aGVuIHRyYWNpbmcgaXMKPiBlbmFibGVkPyBU
aGF0J3Mgd2hhdCBJIHdhcyB0aGlua2luZyBzaG91bGQgYmUgZW5hYmxlZCBieSB0aGUgcmVnIGFu
ZAo+IHVucmVnIGZ1bmN0aW9ucy4gVGhhdCBpcywgdGhlIHJlZyBzaG91bGQgZW5hYmxlZCB0aGUg
ZGVsYXllZCB3b3JrLCBhbmQKPiB0aGUgdW5yZWcgc2hvdWxkIGRpc2FibGUgaXQgZnJvbSBiZWlu
ZyBjYWxsZWQuCj4gCj4gVGhpcyBsb29rcyBsaWtlIGl0IGNhbGxzIHRoZSB3b3JrIHJlZ2FyZGxl
c3Mgb2YgaWYgdHJhY2luZyBpcyBlbmFibGVkCj4gb3Igbm90LiBXaHkgd2FzdGUgdGhlIGN5Y2xl
cyB3aGVuIHRyYWNpbmcgaXMgZGlzYWJsZWQ/CgpJIGxvb2tlZCBpbnRvIGltcGxlbWVudGluZyBy
ZWcgYW5kIHVucmVnIGNhbGxiYWNrcyB0byBkaXJlY3RseSBzY2hlZHVsZQphbmQgY2FuY2VsIHRo
ZSBkZWxheWVkIHdvcmsuIFRoZSBjaGFsbGVuZ2UgaXMgdGhhdCB0aGlzIHRyYWNlcG9pbnQKYmVs
b25ncyB0byB0aGUgc2hhcmVkIFBDSSBzdWJzeXN0ZW0gdHJhY2UgaGllcmFyY2h5LCB3aGlsZSB0
aGUgcG9sbGluZwp3b3JrIGl0c2VsZiBpcyBwZXItY29udHJvbGxlci4gSSBoYXZlbid0IGZvdW5k
IGEgY2xlYW4gd2F5IHRvIHJlZ2lzdGVyCnBlci1kcml2ZXIgY2FsbGJhY2tzIGluIHRoaXMgY29t
bW9uIGNvbnRleHQuCgpDcmVhdGluZyBhIHNlcGFyYXRlIFJvY2tjaGlwLXNwZWNpZmljIHRyYWNl
cG9pbnQgdmlhCnRyYWNlcG9pbnRfcHJvYmVfcmVnaXN0ZXIoKSB3b3VsZCBkZXRhY2ggaXQgZnJv
bSB0aGUgc3RhbmRhcmQgUENJZSB0cmFjZQpldmVudCBoaWVyYXJjaHksIHdoaWNoIHNlZW1zIHVu
ZGVzaXJhYmxlLgoKQXMgYSBwcmFjdGljYWwgbWlkZGxlIGdyb3VuZCwgSSBpbXBsZW1lbnQgcmVn
IGFuZCB1bnJlZyB0byBtYWludGFpbiBhCnVzZXIgY291bnQgbGlrZSB0aGlzIHY0LiBBbGwgZHJp
dmVycyB1c2luZyB0aGlzIHRyYWNlcG9pbnQgd291bGQgdGhlbgpyZWx5IG9uIHRoZSBjb3VudCB0
byBnYXRlIHRoZWlyIHdvcmsgZXhlY3V0aW9uLCBtYWtpbmcgdGhlIGRlbGF5ZWQgd29yawplc3Nl
bnRpYWxseSBhIG5vLW9wIHdoZW4gdHJhY2luZyBpcyBkaXNhYmxlZC4KCkFsdGVybmF0aXZlbHks
IHdlIGNvdWxkIHNpbXBseSByZXZlcnQgdG8gdGhlIFYzIGFwcHJvYWNoIGFuZCByZWx5CmVudGly
ZWx5IG9uIHRoZSB0cmFjZV9wY2llX2x0c3NtX3N0YXRlX3RyYW5zaXRpb25fZW5hYmxlZCgpIHN0
YXRpYwpicmFuY2ggY2hlY2ssIHdoaWNoIHdvdWxkIHJlbW92ZSB0aGUgbmVlZCBmb3IgcmVnIGFu
ZCB1bnJlZyBhbHRvZ2V0aGVyLgoKSWYgeW91IGhhdmUgYmV0dGVyIHN1Z2dlc3Rpb25zIG9yIGNh
biBwb2ludCBtZSB0byBhIHByZWZlcnJlZCBwYXR0ZXJuIApmb3IgdGhpcywgSSdkIGFwcHJlY2lh
dGUgeW91ciBhZHZpY2UuCgo+IAo+IC0tIFN0ZXZlCj4gCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
