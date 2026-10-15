Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3A76CC6B33
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Oct 2026 02:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wiv2JwQKquegw/lqBmx+BDv9bb+lYsx1A0M3uxxl6lk=; b=ICA/DTbzMtBPQw
	+4BZ7aobIj2M9uXZL+Sg9zqepSreMTp8s2zWRy88hpATv3egN235dxn41ViFjn2NliGjh3ejlnW1p
	IAcBNux3ITr25LO56AwQ3pukdLlAt/KwRs9z8VSrAa9QCxLpqI1OaStEbt3GCNpO8XE6k5YLyjXsb
	NpSx44LiAarEPxy6C8mJW8pxgEvZik+1lz6iQvsF+kgUdI0imhFhCVEiq+pY5KGENdMHjRR4BA87s
	/e0tw8NDdnP1kXLO2nusHwhau42M1NeloGx2S2zwJqJH8zFv4aeaAk+MVtaHAU+0sC14zjlI+C4zK
	dk2pY5gF7tg7ffc93usw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHBCQ-0000000GfOm-0h47;
	Thu, 15 Oct 2026 02:28:06 +0000
Received: from mail-m82220.xmail.ntesmail.com ([156.224.82.220])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHBCI-0000000GfNU-0gCv;
	Thu, 15 Oct 2026 02:27:59 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 511900f41;
	Thu, 15 Oct 2026 10:27:53 +0800 (GMT+08:00)
Message-ID: <5b62d754-aedc-407f-b36b-7c4fe54908a9@rock-chips.com>
Date: Thu, 15 Oct 2026 10:27:53 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Diederik de Haas <diederik@cknow-tech.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/9] arm64: dts: rockchip: rk3588s-nanopi: enable
 mmc-hs400 and add supplies
To: joachim.eastwood@gmail.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
References: <20261014-nanopi-m6-improvements-v1-0-e713f71eb4d3@gmail.com>
 <20261014-nanopi-m6-improvements-v1-2-e713f71eb4d3@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261014-nanopi-m6-improvements-v1-2-e713f71eb4d3@gmail.com>
X-HM-Tid: 0aa13d6333c703a4kunmb59026b23a1f60
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDQxkeVkIdTRoYGENLHU9MT1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=gCg1VFET44YTPOVLCAxAgb8ExIvPx7MJBBFRca7F3+ygjpZogrF0wXL3eL34B2LopI7lcrDcemdf7LHtnTuBvIqduRVud0Dcrbdqvpmi2dS5nM8CxzkSwZSEVocUPnyrr2lDGc17uRQC17SwftQKYOSNepen9jbboiWTenInAZc=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=R3XsxM7Raaf9zxJmtajP5sjAF5HH4qDLmz+vLnVBR2Q=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261014_192758_572222_C91CEC09 
X-CRM114-Status: GOOD (  13.05  )
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

5ZyoIDIwMjYvMTAvMTUg5pif5pyf5ZubIDA6MzMsIEpvYWNoaW0gRWFzdHdvb2QgdmlhIEI0IFJl
bGF5IOWGmemBkzoKPiBGcm9tOiBKb2FjaGltIEVhc3R3b29kIDxqb2FjaGltLmVhc3R3b29kQGdt
YWlsLmNvbT4KPiAKPiBUaGUgTmFub1BpIDYgc2VyaWVzIGFsbCBzdXBwb3J0IGVNTUMgNS4xIEhT
NDAwIG1vZGUuIFRoaXMgYWxzbyBtYXRjaGVzCj4gdGhlIHZlbmRvciBkZXZpY2UgdHJlZS4gQWxz
byBhZGQgcG93ZXIgc3VwcGxpZXMgd2hpbGUgYXQgaXQuCj4gCj4gU2lnbmVkLW9mZi1ieTogSm9h
Y2hpbSBFYXN0d29vZCA8am9hY2hpbS5lYXN0d29vZEBnbWFpbC5jb20+CgpSZXZpZXdlZC1ieTog
U2hhd24gTGluIDxTaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cgo+IC0tLQo+ICAgYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLW5hbm9waS5kdHNpIHwgNSArKysrLQo+ICAgMSBm
aWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtbmFub3BpLmR0c2kgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtbmFub3BpLmR0c2kKPiBpbmRleCA4
YzM2MjY4ZTk4NzYuLjhjNzdlZTcxZWJmOCAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OHMtbmFub3BpLmR0c2kKPiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU4OHMtbmFub3BpLmR0c2kKPiBAQCAtMzkwLDcgKzM5MCwxMCBAQCAm
c2RoY2kgewo+ICAgCW5vLXNkaW87Cj4gICAJbm8tc2Q7Cj4gICAJbm9uLXJlbW92YWJsZTsKPiAt
CW1tYy1oczIwMC0xXzh2Owo+ICsJbW1jLWhzNDAwLTFfOHY7Cj4gKwltbWMtaHM0MDAtZW5oYW5j
ZWQtc3Ryb2JlOwo+ICsJdm1tYy1zdXBwbHkgPSA8JnZjY18zdjNfczM+Owo+ICsJdnFtbWMtc3Vw
cGx5ID0gPCZ2Y2NfMXY4X3MzPjsKPiAgIAlzdGF0dXMgPSAib2theSI7Cj4gICB9Owo+ICAgCj4g
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
