Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0520CA5FED
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Oct 2026 06:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=18UE1W33oqSHGxPG4Ckdj2PI9gL/TrK7ELIsD39tiAM=; b=iUyW34ROnU2JLG
	QF4A4yyBRs3zJN7plG0GEdMM3E+nkRWcNwLGC48Pzv6m+4XGxFhYnJPKpeBUOW1s8HVLe7PLDeBiS
	BVH0ihkMUHWxpieSm4ukIPX5uZEou8w2elMyTUK0IM32nwniGUvs8awIULbIoSMiECuPDR6R2lEEw
	ps1Lh5Fs74maHbnEzl8cqgPyiFugZz3nYrYrB6ix1ZXrvCLtvQKANFyy9jp5yK63JlCKPkcMEDObo
	z9BFS6jxpRrvWRXTpkNmkOLP+tJxtE4t2Yeh9/WhOFoCwxmoPfN64LRSBKWY67Ty2Oc5Qi1N5FZqb
	S2zZuyQQO3EY1UdU9kvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF4Za-00000005fpv-0ml3;
	Fri, 09 Oct 2026 06:59:18 +0000
Received: from mail-m118211.qiye.163.com ([115.236.118.211])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xF4ZW-00000005foL-071Q;
	Fri, 09 Oct 2026 06:59:17 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5069e789a;
	Fri, 9 Oct 2026 14:59:05 +0800 (GMT+08:00)
Message-ID: <3bd9f6e1-c670-42f5-b2ea-2b4848e37468@rock-chips.com>
Date: Fri, 9 Oct 2026 14:59:04 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 0/3] PCI: rockchip: 5.0 GT/s speed discouraged by
 Rockchip
To: Geraldo Nascimento <geraldogabriel@gmail.com>,
 Dragan Simic <dsimic@manjaro.org>
References: <cover.1781622998.git.geraldogabriel@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <cover.1781622998.git.geraldogabriel@gmail.com>
X-HM-Tid: 0aa11f75548d03a4kunm5c17223adff550
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDSRoZVhlOTx5KTxoZHUsdGFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQkxVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=cDLPDS8AfQJiV6enNljTDbaVs83pRqqyPjzVSyPDn0THv9O+K0X69w04Y6ECaYO9MGQ6Dn1RSvFwIjN1Ls1H3KCbz6HHT6NoaSI+8cSso45CIxF/uzDASquN9AJHY2Ja50uAj9Bp/vWNLysrNFLhAVhLvtzMFEoHcxGxEFD4MzI=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=C7hpZuYgfofdrhjchTCVySwUHHelguJs02x7Rdk3AgE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_235914_598188_09CA0A93 
X-CRM114-Status: GOOD (  15.36  )
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

SGkgR2VyYWxkbwoK5ZyoIDIwMjYvMDYvMTYg5pif5pyf5LqMIDIzOjI0LCBHZXJhbGRvIE5hc2Np
bWVudG8g5YaZ6YGTOgo+IERyYWdhbiBTaW1pYyBhbHJlYWR5IGhhZCB3YXJuZWQgbWUgb2YgcG90
ZW50aWFsIGlzc3VlcyB3aXRoIDUuMCBHVC9zCj4gc3BlZWQgb3BlcmF0aW9uIGluIFJvY2tjaGlw
IFBDSWUuIEhvd2V2ZXIsIGluIHJlY2VudCBpbnRlcmFjdGlvbnMKPiB3aXRoIFNoYXduIExpbiBm
cm9tIFJvY2tjaGlwIGl0IGNhbWUgdG8gbXkgYXR0ZW50aW9uIHRoZXJlJ3MgZ3JhdmUKPiBkYW5n
ZXIgaW4gdGhlIHVua25vd24gZXJyYXRhIHJlZ2FyZGluZyA1LjAgR1QvcyBvcGVyYXRpb25hbCBz
cGVlZAo+IG9mIHRoZWlyIFBDSWUgY29yZSwgaW5jbHVkaW5nIGRhdGEgbG9zcy4KPiAKPiBEcm9w
IGFsbCBjb2RlIHJlbGF0ZWQgdG8gNS4wIEdUL3Mgb3BlcmF0aW9uYWwgc3BlZWQgZnJvbSB0aGlz
IGRyaXZlci4KPiAKCkFwb2xvZ2llcyBmb3IgdGhlIHZlcnkgbGF0ZSBub3RpY2UgdGhhdCB0aGlz
IHNlcmllcyBpcyBzdGlsbCBwZW5kaW5nLgpGV0lXLApSZXZpZXdlZC1ieTogU2hhd24gTGluIDxz
aGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cgo+IEVuZHBvaW50IE1vZGUgZHJpdmVyIHdhcyBub3Qg
dGVzdGVkLgo+IAo+IENoYW5nZXMgaW4gdjc6Cj4gLSBJbiBwY2llLXJvY2tjaGlwLmMgKFBBVENI
IDMpIGRyb3AgdW5yZWFjaGFibGUgY29kZQo+IC0gTGluayB0byB2NjogaHR0cHM6Ly9sb3JlLmtl
cm5lbC5vcmcvYWxsL2NvdmVyLjE3ODEyMDc0NzQuZ2l0LmdlcmFsZG9nYWJyaWVsQGdtYWlsLmNv
bS9ULwo+IAo+IENoYW5nZXMgaW4gdjY6Cj4gLSBTcXVhc2hlZCBwYXRjaGVzIDMgJiA0IHRvZ2V0
aGVyIGFzIHN1Z2dlc3RlZCBieSBNYW5pCj4gLSBNb3JlIGZvcm1hbCB3YXJuaW5nIG1lc3NhZ2Ug
YXMgc3VnZ2VzdGVkIGJ5IERyYWdhbgo+IC0gU2V0IHRoZSAyLjUgR1QvcyBiaXQgcmVnYXJkbGVz
cyBvZiBpZiBsaW5rLXNwZWVkIGlzIHNldCB0byAyCj4gLSBMaW5rIHRvIHY1OiBodHRwczovL2xv
cmUua2VybmVsLm9yZy9hbGwvY292ZXIuMTc3MjIzOTU5OC5naXQuZ2VyYWxkb2dhYnJpZWxAZ21h
aWwuY29tL1QvCj4gCj4gQ2hhbmdlcyBpbiB2NToKPiAtIENoYW5nZWQgY29tbWl0IG9yZGVyIHRv
IG5vdCBicmVhayBidWlsZHMgYW5kIGFkanVzdGVkIGNvcHkgcGFzdGVkCj4gICAgY29tbWl0IG1l
c3NhZ2UuICh0aGFua3MgQ2hhcmFsYW1wb3MhKQo+IC0gUmVpbnRyb2R1Y2VkIGJlaGF2aW9yIHRv
IGZvcmNlIDIuNSBHVC9zIGluIGNhc2UgdGhlcmUncyBzb21ldGhpbmcKPiAgICBub24tZGVmYXVs
dCBpbiB0aGUgRFQuICh0aGFua3MgRHJhZ2FuISkKPiAtIExpbmsgdG8gdjQ6IGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwL2NvdmVyLjE3NzIxNjk5OTguZ2l0LmdlcmFsZG9n
YWJyaWVsQGdtYWlsLmNvbS9ULwo+IAo+IENoYW5nZXMgaW4gdjQ6Cj4gLSBJbmNvcnBvcmF0ZSBz
dWdnZXN0aW9uIGJ5IEJqb3JuIGFuZCByZWZpbmVkIGJ5IERyYWdhbiB0byBkcm9wIHRoZQo+ICAg
ICJjYXRhc3Ryb3BoaWMiIGNvZGUKPiAtIExpbmsgdG8gdjM6IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2xpbnV4LXJvY2tjaGlwL2NvdmVyLjE3NzIwNTc3OTkuZ2l0LmdlcmFsZG9nYWJyaWVsQGdt
YWlsLmNvbS9ULwo+IAo+IENoYW5nZXMgaW4gdjM6Cj4gLSBDbGFyaWZ5IHdhcm5pbmcgbWVzc2Fn
ZSBldmVuIHRob3VnaCBSb2NrY2hpcCB3b24ndCBkaXNjbG9zZSBkZXRhaWxzCj4gLSBEcm9wIERU
IGNoYW5nZXMgYXMgdGhleSB3ZXJlIGFwcGxpZWQgYXMgc3Vic2V0IGJ5IEhlaWtvCj4gLSBMaW5r
IHRvIHYyOiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvY292ZXIuMTc2MzQxNTcwNS5naXQu
Z2VyYWxkb2dhYnJpZWxAZ21haWwuY29tL1QvCj4gCj4gQ2hhbmdlcyBpbiB2MjoKPiAtIGhhcmQg
bGltaXQgdG8gMi41IEdUL3MsIG5vdCBqdXN0IHdhcm4KPiAtIGFkZCBSZXBvcnRlZC1ieTogYW5k
IFJldmlld2VkLWJ5OiBEcmFnYW4gU2ltaWMKPiAtIHJlbW92ZSByZWR1bmRhbnQgZGVjbGFyYXRp
b24gb2YgbWF4LWxpbmstc3BlZWQgZnJvbSBoZWxpb3M2NCBkdHMKPiAtIGZpeCBMaW5rOiBvZiBo
ZWxpb3M2NCBwYXRjaAo+IC0gc2ltcGxpZnkgUkMgbW9kZSBjb21tZW50Cj4gLSBMaW5rIHRvIHYx
OiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvYVJoUjc5dTVCUHRSUkZ3M0BnZWRheS9ULwo+
IAo+IEdlcmFsZG8gTmFzY2ltZW50byAoMyk6Cj4gICAgUENJOiByb2NrY2hpcC1lcDogZG8gbm90
IGF0dGVtcHQgNS4wIEdUL3MgcmV0cmFpbmluZwo+ICAgIFBDSTogcm9ja2NoaXAtaG9zdDogZG8g
bm90IGF0dGVtcHQgNS4wIEdUL3MgcmV0cmFpbmluZwo+ICAgIFBDSTogcm9ja2NoaXA6IGRyaXZl
IGF0IDIuNSBHVC9zLCBlcnJvciBvdGhlciBzcGVlZHMKPiAKPiAgIGRyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5jICAgfCAxMyAtLS0tLS0tLS0tLS0tCj4gICBkcml2ZXJz
L3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtaG9zdC5jIHwgMjAgLS0tLS0tLS0tLS0tLS0t
LS0tLS0KPiAgIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5jICAgICAgfCAx
NCArKysrKystLS0tLS0tLQo+ICAgZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlw
LmggICAgICB8ICAzIC0tLQo+ICAgNCBmaWxlcyBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDQ0
IGRlbGV0aW9ucygtKQo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
