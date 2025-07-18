Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 686BBC83F1A
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jul 2025 03:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r+ealYVQ+Nb+K4wjh9x4lOfnYlB7kSTrstINwf+GT54=; b=AFzUl7N30+4BqO
	UX+N16QmawLf7YY7hvhSALWwQETznYnB/esVWiJa/7KJRlRYe7NR55e5YiMcuWe/4Cikm5A1IE7De
	S28i+X+xSWKGmp0/yS4b4SAe6p4M5/CZCvgYVgu6AGUpmJ2D55DwQjnOEwtSwZiBaRWEi6PfX8Auc
	Ps3TvdLfxyBAtAaouvOoqixbRu4aWhOw5piUGUIeB38VeS84zfmLS/65JJhDNDbXkji1/uH2VVcPQ
	w/ZltI5VxLhHbCeHO7zzU6BRwIKYYANp3XT0ZNelhNaNZupuk8ckjlszhd5sZQbCMJ3v1lJwH3OAN
	6wH8AVeEeHXSmK3BjJTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucc3r-0000000BcE6-32V7;
	Fri, 18 Jul 2025 03:47:03 +0000
Received: from mail-m19731118.qiye.163.com ([220.197.31.118])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucc3o-0000000BcCi-1QRc;
	Fri, 18 Jul 2025 03:47:02 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1c6eff80b;
	Fri, 18 Jul 2025 11:46:42 +0800 (GMT+08:00)
Message-ID: <067e1833-8527-4c66-90f5-d284f7d2ca5c@rock-chips.com>
Date: Fri, 18 Jul 2025 11:46:33 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Hugh Cole-Baker <sigmaris@gmail.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [RFC PATCH v3 2/3] PCI: rockchip-host: Retry link training on
 failure without PERST#
To: Geraldo Nascimento <geraldogabriel@gmail.com>
References: <cover.1749582046.git.geraldogabriel@gmail.com>
 <b7c09279b4a7dbdba92543db9b9af169776bd90c.1749582046.git.geraldogabriel@gmail.com>
 <ac48d142-7aec-4fdd-92a4-6f9bc10a7928@rock-chips.com>
 <aHnAcbXuFqcMXy_5@geday>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <aHnAcbXuFqcMXy_5@geday>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQhgdTVZDTBlKHUoaSB9MT09WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a981ba430bd09cckunm6356e98e1fd4594
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OS46FAw4AjE4M1YKNDcBKgMu
	OEwKCk1VSlVKTE5JQ0pLT0tITkxCVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU9JT0I3Bg++
DKIM-Signature: a=rsa-sha256;
	b=hogjkqICVDrRageskiwzn6+yGseT8QcNqZBVNH6DKYgPt1bTvPWF0EL4YFgvxFZDCUTkLfrPHhj+4nVKFbYlZ6NxPSDL8CIQSY9YbPsW1bRv9jWhGSCOeXn8PhMHs/JmrrLMyX/CRLKidBSv7XNHHuO6MKKbL6Ktiuh03Wz3bO4=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=tAEW8nh82M3n6oKElIg12pDpIa7tqdkjZDGaRgfT/xk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250717_204700_876164_EF5ACBE2 
X-CRM114-Status: GOOD (  26.95  )
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

5ZyoIDIwMjUvMDcvMTgg5pif5pyf5LqUIDExOjMzLCBHZXJhbGRvIE5hc2NpbWVudG8g5YaZ6YGT
Ogo+IE9uIEZyaSwgSnVsIDE4LCAyMDI1IGF0IDA5OjU1OjQyQU0gKzA4MDAsIFNoYXduIExpbiB3
cm90ZToKPj4gSGkgR2VyYWxkbywKPj4KPj4g5ZyoIDIwMjUvMDYvMTEg5pif5pyf5LiJIDM6MDUs
IEdlcmFsZG8gTmFzY2ltZW50byDlhpnpgZM6Cj4+PiBBZnRlciBhbG1vc3QgMzAgZGF5cyBvZiBi
YXR0bGluZyB3aXRoIFJLMzM5OSBidWdneSBQQ0llIG9uIG15IFJvY2sgUGkKPj4+IE4xMCB0aHJv
dWdoIHRyaWFsLWFuZC1lcnJvciBkZWJ1Z2dpbmcsIEkgZmluYWxseSBnb3QgcG9zaXRpdmUgcmVz
dWx0cwo+Pj4gd2l0aCBlbnVtZXJhdGlvbiBvbiB0aGUgUENJIGJ1cyBmb3IgYm90aCBhIFJlYWx0
ZWsgODExMUUgTklDIGFuZCBhCj4+PiBTYW1zdW5nIFBNOTgxYSBTU0QuCj4+Pgo+Pj4gVGhlIE5J
QyB3YXMgY29ubmVjdGVkIHRvIGEgTS4yLT5QQ0llIHg0IHJpc2VyIGNhcmQgYW5kIGl0IHdvdWxk
IGdldAo+Pj4gc3R1Y2sgb24gUG9sbGluZy5Db21wbGlhbmNlLCB3aXRob3V0IGJyZWFraW5nIGVs
ZWN0cmljYWwgaWRsZSBvbiB0aGUKPj4+IEhvc3QgUlggc2lkZS4gVGhlIFNhbXN1bmcgUE05ODFh
IFNTRCBpcyBkaXJlY3RseSBjb25uZWN0ZWQgdG8gTS4yCj4+PiBjb25uZWN0b3IgYW5kIHRoYXQg
U1NEIGlzIGtub3duIHRvIGJlIHF1aXJreSAoT0VNLi4uIG5vIHN1cHBvcnQpCj4+PiBhbmQgbm9u
LWZ1bmN0aW9uYWwgb24gdGhlIFJLMzM5OSBwbGF0Zm9ybS4KPj4+Cj4+PiBUaGUgU2Ftc3VuZyBT
U0Qgd2FzIGV2ZW4gd29yc2UgdGhhbiB0aGUgTklDIC0gaXQgd291bGQgZ2V0IHN0dWNrIG9uCj4+
PiBEZXRlY3QuQWN0aXZlIGxpa2UgYSBicmlja2VkIGNhcmQsIGV2ZW4gdGhvdWdoIGl0IHdhcyBm
dWxseSBmdW5jdGlvbmFsCj4+PiB2aWEgVVNCIGFkYXB0ZXIuCj4+Pgo+Pj4gSXQgc2VlbXMgYm90
aCBkZXZpY2VzIGJlbmVmaXQgZnJvbSByZXRyeWluZyBMaW5rIFRyYWluaW5nIGlmIC0gYmlnIGlm
Cj4+PiBoZXJlIC0gUEVSU1QjIGlzIG5vdCB0b2dnbGVkIGR1cmluZyByZXRyeS4KPj4+Cj4+Cj4+
IEkgZGlkbid0IHNlZSB0aGlzIGVycm9yIGJlZm9yZSBlc3BlY2lhbGx5IGdpdmVuIFJUTDgxMTEg
TklDIGlzIHdpZGVsbHkKPj4gdXNlZCBieSBjdXN0b21lcnMuCj4gCj4gSGkgU2hhd24sIGdyZWF0
IHRvIGhlYXIgZnJvbSB5b3UhCj4gCj4gTm90aWNlIHRoYXQgbXkgYm9hcmQgZXhwb3NlcyBQQ0ll
IG9ubHkgdmlhIE5WTWUgY29ubmVjdG9yLCBhbmQgbm90Cj4gZGlyZWN0bHkgdmlhIGEgcHJvcGVy
IFBDSWUgY29ubmVjdG9yLCBzbyBpdCBpcyBuZWNlc3NhcnkgZm9yIG1lIHRvCj4gYWRhcHQgd2l0
aCBpbmV4cGVuc2l2ZSByaXNlciBjYXJkIHRoYXQgZXhwb3NlcyBwcm9wZXIgUENJZSBjb25uZWN0
b3IuCj4gCj4gSSBzYXkgdGhpcyBiZWNhdXNlIHdoaWxlIEkgZG9uJ3QgZG91YnQgdGhhdCB0aGUg
UlRMODExMSBOSUMgd29ya3MKPiBvdXQtb2YtdGhlLWJveCBmb3IgYm9hcmRzIHRoYXQgZGlyZWN0
bHkgZXhwb3NlIFBDSWUgY29ubmVjdG9yLCB0aGUKPiBjb21iaW5hdGlvbiBvZiByaXNlciBjYXJk
IHBsdXMgTklDIGhhcyBhIHNpbWlsYXIgZWZmZWN0IC0gdGhvdWdoIG5vdAo+IGVudGlyZWx5IGVx
dWFsLCBhcyBkZXNjcmliZWQgYWJvdmUgLSBvZiBjb25uZWN0aW5nIGtub3duIGdvb2QgU1NEcwo+
IHRoYXQgc2ltcGx5IHJlZnVzZSB0byB3b3JrIHdpdGggUm9ja2NoaXAtSVAgUENJZS4KPiAKPiBJ
IGFkbWl0IHRoYXQgcGF0Y2ggMSBsb29rcyBhIGxpdHRsZSBjcmF6eSwgYnV0IGlzIGhhcyB0aGUg
ZWZmZWN0IG9mCj4gZW5hYmxpbmcgdXNlIG9mIHByZXNlbnRseSBub24td29ya2luZyBkZXZpY2Vz
IG9yIGNvbWJpbmF0aW9uIG9mIGRldmljZXMKPiBvbiB0aGlzIElQLCBhdCBsZWFzdCBvbiB0aGUg
Ym9hcmQgSSBoYXZlIGFjY2VzcyB0by4KPiAKPj4KPj4gQ291bGQgeW91IGhlbHAgdHJpZWQgdGhp
cz8KPj4gWzFdIGFwcGx5IHlvdXIgcGF0Y2ggMyBmaXJzdAo+IAo+IFN1cmUsIEknbSBhbHdheXMg
b3BlbiBmb3IgdGVzdGluZywgYnV0IGNvdWxkIHlvdSBjbGFyaWZ5IHRoZSBwYXRjaCAzCj4gcGFy
dD8gQUZBSUsgdGhpcyBzZXJpZXMgb2YgbWluZSBvbmx5IGhhcyAyIHBhdGNoZXMsIHNvIEknbSBh
IGxpdHRsZQo+IGNvbmZ1c2VkIGFib3V0IGV4YWN0bHkgd2hpY2ggcGF0Y2ggdG8gYXBwbHkgYXMg
YSBwcmVsaW1pbmFyeSBzdGVwLgoKUGF0Y2ggMyByZWZlcnMgdG8gImFybTY0OiBkdHM6IHJvY2tj
aGlwOiBkcm9wIFBDSWUgM3YzIGFsd2F5cy1vbiBhbmQKYm9vdC1vbiIgd2hpY2ggbGV0IGtlcm5l
bCBmdWxseSBjb250cm9sbGVyIHRoZSBwb3dlciBpbiBjYXNlIGZpcm13YXJlCmRpZCBpdCBpbiBh
ZHZhbmNlZC4KCj4gCj4gQWxzbywgc2luY2UgeW91J3JlIGFza2luZyBtZSB0byB0ZXN0IHNvbWUg
Y29kZSwgSSB0aGluayBpdCBpcyBvbmx5IGZhaXIKPiBpZiBJIGFzayB5b3UgdG8gdGVzdCBteSBj
b2RlLCB0b28uIEl0IHNob3VsZG4ndCBiZSB0b28gaGFyZCBmb3IgeW91IHRvCj4gZmluZCBhIG90
aGVyd2lzZSB3b3JraW5nIE5WTWUgU1NEIHRoYXQgcmVmdXNlcyB0byBjb21wbGV0ZSBsaW5rIHRy
YWluaW5nCj4gd2l0aCBjdXJyZW50IGNvZGUuIENvbm5lY3QgdGhpcyBTU0QgcGxlYXNlIHRvIGEg
UkszMzk5IGJvYXJkIGFuZCBsZXQgdXMKPiBrbm93IGlmIG15IHByb3Bvc2VkIGNvZGUgY2hhbmdl
IGRvZXMgYW55dGhpbmcgdG8gYW1lbGlvcmF0ZSB0aGUKPiBsb25nLXN0YW5kaW5nIGlzc3VlIG9m
IFNTRCB0aGF0IHJlZnVzZXMgdG8gY29vcGVyYXRlLgoKU3VyZSwgSSBkb24ndCBoYXZlIFNhbXN1
bmcgUE05ODFhIFNTRCBub3csIGJ1dCBJIGNvdWxkIHRyeSB0byB0ZXN0IGFsbApteSBTU0RzIHRv
IGZpbmQgaWYgSSBjb3VsZCBwaWNrIHVwIG9uZSB0aGF0IHdvbid0IHdvcmsuCgo+IAo+IFRoYW5r
IHlvdSwKPiBHZXJhbGRvIE5hc2NpbWVudG8KPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
