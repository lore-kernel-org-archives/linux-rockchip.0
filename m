Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD44DC36002
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Apr 2025 09:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=skvOir/GEiN4wpUV+3RarGTlxeKSgkgiYWFLxZSDs1E=; b=IfKEEcKq2sS4zp
	mdon0KdXstp7eEs68W/ywj2jHiarqgaXnbgsz3ftOv0wLXniYDuD7Sb/JoRPFloF3S+7UfyDCQZlA
	tTngmP2HOuvyJ7CLVwaJtHEQEdkMILx2u51c5zkSM4EuuHrnRfRti0rKbuj/j4dxQsZTYbvIcrurh
	9fp6FxSETvhQ40I8Gs26qI1i/bgyIMoZN08SuI0te4SkWP3q9233HlKBZQ8/yFEZsqiPNxufObr7U
	uHPJsjUYFnAWOxv/1DXn7/Nc2qwjEMajm9Qa/1qgnlVQkR+JbPlbT2gQemWxUd3YRTHeflrsUUJlu
	ELO4RcQHJO74yBkqgexg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2Rwc-00000006jVE-1rWP;
	Wed, 09 Apr 2025 09:42:06 +0000
Received: from mail-m3274.qiye.163.com ([220.197.32.74])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2Rwa-00000006jUE-0jkR
	for linux-rockchip@lists.infradead.org;
	Wed, 09 Apr 2025 09:42:05 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 113968543;
	Wed, 9 Apr 2025 17:41:59 +0800 (GMT+08:00)
Message-ID: <79e65678-d6e3-0336-8052-a8d593a4efb9@rock-chips.com>
Date: Wed, 9 Apr 2025 17:41:42 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Cc: shawn.lin@rock-chips.com, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Remove PCIE_L0S_ENTRY check from
 rockchip_pcie_link_up()
To: Niklas Cassel <cassel@kernel.org>
References: <1744180833-68472-1-git-send-email-shawn.lin@rock-chips.com>
 <Z_YwNt6WUuijKTjt@ryzen>
 <38e69551-cc40-11a9-191f-de9a193c5e51@rock-chips.com>
 <Z_Y7h1vzVCCEiXK6@ryzen>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <Z_Y7h1vzVCCEiXK6@ryzen>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR4aGlZDS0NJHUoaTB4eTB9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9619ed896009cckunm113968543
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NzI6GQw4STJRGjwUPRUoTgMB
	CD4KCiJVSlVKTE9PSkJKTElLTENMVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhDSEg3Bg++
DKIM-Signature: a=rsa-sha256;
	b=Tx60nnQz0SaucqyI97KnjZcXQful9pI9IorFsSozH0sVFJF+eXla9q12Nwi4KuIRdinWLezvoDNec1dLmzKc6bVUKK8N7RfyKDvQqd/0wKRUEZAwN+lMktTvcqd3w4brlNrgGzXyv+LWrrcJDhRev+1HuiTs4BcMDrg/OVH2O2A=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=L+som5XFBFne47xQFx0pWlnLjpeop6UnENj8Zo2lS6c=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250409_024204_708824_B5CA606F 
X-CRM114-Status: GOOD (  18.52  )
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

5ZyoIDIwMjUvMDQvMDkg5pif5pyf5LiJIDE3OjE5LCBOaWtsYXMgQ2Fzc2VsIOWGmemBkzoKPiBI
ZWxsbyBTaGF3biwKPiAKPiBPbiBXZWQsIEFwciAwOSwgMjAyNSBhdCAwNTowOTozOFBNICswODAw
LCBTaGF3biBMaW4gd3JvdGU6Cj4+IOWcqCAyMDI1LzA0LzA5IOaYn+acn+S4iSAxNjozMCwgTmlr
bGFzIENhc3NlbCDlhpnpgZM6Cj4+PiBPbiBXZWQsIEFwciAwOSwgMjAyNSBhdCAwMjo0MDozM1BN
ICswODAwLCBTaGF3biBMaW4gd3JvdGU6Cj4+Pgo+Pj4gSXMgdGhlcmUgYW55IGFkdmFudGFnZSBv
ZiB1c2luZyBhIHJvY2tjaGlwIHNwZWNpZmljIHdheSB0byByZWFkIGxpbmsgdXAsCj4+PiByYXRo
ZXIgdGhhbiBqdXN0IHJlYWRpbmcgbGluayB1cCB2aWEgdGhlIERXQyBQQ0lFX1BPUlRfREVCVUcx
IHJlZ2lzdGVyPwo+Pgo+PiBUaGlzIGlzIGEgdmVyeSBnb29kIHF1ZXN0aW9uIHdoaWNoIHdlIHRy
aWVkIGJ1dCBtYWRlIHJlYWwgcHJvZHVjdHMKPj4gc3VmZmVyIGZyb20gaXQgZm9yIGEgbG9uZyB0
aW1lLCBhbmQgZmluYWxseSB3ZSBmb3VuZCB0aGUgcmVhc29uIGFuZAo+PiBkaXNjYXJkZWQgaXQu
Cj4+Cj4+IFF1b3RlZCBmcm9tIERXQyBkYXRhYm9vaywgc2VjdGlvbiA4LjIuMyBBWEkgQnJpZGdl
IEluaXRpYWxpemF0aW9uLAo+PiBDbG9ja2luZyBhbmQgUmVzZXQ6Cj4+Cj4+ICJJbiBSQyBNb2Rl
LCB5b3VyIEFYSSBhcHBsaWNhdGlvbiBtdXN0IG5vdCBnZW5lcmF0ZSBhbnkgTUVNIG9yIEkvTwo+
PiByZXF1ZXN0cywgdW50aWwgdGhlIGhvc3Qgc29mdHdhcmUgaGFzIGVuYWJsZWQgdGhlIE1lbW9y
eSBTcGFjZSBFbmFibGUKPj4gKE1TRSksIGFuZCBJTyBTcGFjZSBFbmFibGUgKElTRSkgYml0cyBy
ZXNwZWN0aXZlbHkuIFlvdXIgUkMgYXBwbGljYXRpb24KPj4gc2hvdWxkIG5vdCBnZW5lcmF0ZSBD
RkcgcmVxdWVzdHMgdW50aWwgaXQgaGFzIGNvbmZpcm1lZCB0aGF0IHRoZSBsaW5rIGlzCj4+IHVw
IGJ5IHNhbXBsaW5nIHRoZSBzbWxoX2xpbmtfdXAgYW5kIHJkbGhfbGlua191cCBvdXRwdXRzLiIK
Pj4KPj4gUXVvdGVkIGZyb20gRFdDIGRhdGFib29rLCBzZWN0aW9uIDUuNTAgU0lJOiBEZWJ1ZyBT
aWduYWxzCj4+ICJbMzZdOiBzbWxoX2xpbmtfdXA6IExUU1NNIHJlcG9ydHMgUEhZIGxpbmsgdXAg
b3IgTFRTU00gaXMgaW4KPj4gTG9vcGJhY2suQWN0aXZlIGZvciBMb29wYmFjayBNYXN0ZXIiIHdo
aWNoIHJlZmVycyB0bwo+PiBQQ0lFX1BPUlRfREVCVUcxX0xJTktfVVAgcGVyIGNvZGUuCj4+Cj4+
IFRoZSB0aW1pbmcgaW4gZHdjIGNvcmUgaXMgZHJ2aW5nIHNtbGhfbGlua191cC0+TDAtPnJkbGhf
bGlua191cC0+RkMKPj4gaW5pdChhIGZpeGVkIGRlbGF5KSBmcm9tIElDIHNpbXVsYXRpb24gd2hl
biBsaW5raW5nIHVwLgo+Pgo+PiBUaGUgZHdfcGNpZV9saW5rX3VwKCkgd2Fzbid0IHJlbGlhYmx5
IHdvcmsgYXMgZXhwZWN0ZWQgYnkgbWFzc2l2ZSB0ZXN0Lgo+PiBUaGUgcHJvYmxlbSBpcyBjbGVh
ciBmcm9tIG91ciBBU0lDIHZpZXcsIHRoYXQgY3hwbF9kZWJ1Z19pbmZvIGZyb20gRFdDCj4+IGNv
cmUgaXMgbWlzc2luZyByZGxoX2xpbmtfdXAuIGN4cGxfZGVidWdfaW5mb1szMjo2M10gaXMgaW5k
ZW50aWNhbCB0bwo+PiBQQ0lFX1BPUlRfREVCVUcxLCBTbyByZWFkaW5nIFBDSUVfUE9SVF9ERUJV
RzEgYW5kIGNoZWNrCj4+IHNtbGhfbGlua191cCBpc24ndCBlbm91Z2guCj4+Cj4+IFRoZSBwcm9i
bGVtIHdhcyBpbnRyb2R1Y2VkIGJ5IGNvbW1pdCAxIGFuZCBmaXhlZCBieSBjb21taXQgMiBidXQg
bm90IHRvCj4+IHRoZSBlbmQuIEFuZCBmaW5hbGx5IGNvbW1pdCAzIHJlbmFtZSB0aGUgcmVnaXN0
ZXIgYnV0IG5vdCBmaXggYW55dGhpbmcuCj4+Cj4+IEl0IHdhcyBicm9rZW4gZnJvbSB0aGUgZmly
c3QgdGltZS4gQW55IGR3YyBjb250cm9sbGVycyBzaG91bGQgbm90IGJlIHVzZQo+PiB0aGUgYnVn
Z3kgZGVmYXVsdCBtZXRob2QgdG8gY2hlY2sgbGluayB1cCBzdGF0ZSBmcm9tIG91ciB2aWV3Lgo+
PiBTbyB0aGlzJ3MgdGhlIHdob2xlIHN0b3J5IGZvciBpdCwgd2hpY2ggbWF5IGhlbHAgeW91IHVu
ZGVyc3RhbmQgdGhlCj4+IGluZGVlZCBwcm9ibGVtIGFuZCB3aHkgd2UgcmVpbnZlbnQgcm9ja2No
aXBfcGNpZV9saW5rX3VwKCkgaGVyZS4KPj4KPj4gWzFdLiBjb21taXQgZGFjMjllNmM1NDYwICgi
UENJOiBkZXNpZ253YXJlOiBBZGQgZGVmYXVsdCBsaW5rIHVwIGNoZWNrIGlmCj4+ICAgICAgc3Vi
LWRyaXZlciBkb2Vzbid0IG92ZXJyaWRlIikKPj4KPj4gWzJdLiBjb21taXQgMDFjMDc2NzMyZTgy
ICgiUENJOiBkZXNpZ253YXJlOiBDaGVjayBMVFNTTSB0cmFpbmluZyBiaXQKPj4gICAgICBiZWZv
cmUgZGVjaWRpbmcgbGluayBpcyB1cCIpCj4+Cj4+IFszXS4gY29tbWl0IDYwZWY0YjA3MmJhMCAo
IlBDSTogZHdjOiBpbXg2OiBTaGFyZSBQSFkgZGVidWcgcmVnaXN0ZXIKPj4gICAgICBkZWZpbml0
aW9ucyIpCj4gCj4gVGhhbmsgeW91IGZvciB0aGUgZGV0YWlsZWQgYW5zd2VyLgo+IAo+IEl0IHNl
ZW1zIGxpa2Ugd2Ugc2hvdWxkIHJlYWxseSBhZGQgYSB3YXJuaW5nIGFuZCBhIGNvbW1lbnQgaW4K
PiBkd19wY2llX2xpbmtfdXAoKSwgc28gdGhhdCBvdGhlcnMgZG9uJ3QgZ2V0IGhpdCBieSB0aGlz
IGhhcmQgdG8gZGVidWcgaXNzdWUhCj4gCj4gKEVzcGVjaWFsbHkgc2luY2UgZHdfcGNpZV9saW5r
X3VwKCkgd2FzIGFkZGVkIGJ5IHNvbWVvbmUgd2l0aCBhIEBzeW5vcHN5cy5jb20KPiBlbWFpbCku
Cj4gCgpZZXAsIHdpbGwgZG8gaXQgd2l0aCBhbm90aGVyIHBhdGNoLgoKPiAKPiBLaW5kIHJlZ2Fy
ZHMsCj4gTmlrbGFzCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
