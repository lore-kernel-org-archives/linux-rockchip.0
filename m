Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8DB62D31A03
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 02:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MEBcY+3ojT7bqKWd3eUSdAuZO2ViujxJnQw9aqbKnlg=; b=qr9K70nac5xOAo
	gaQLMfTsrlnP8E43XEBK8gmXpDYuISItRshk9Yag64UAxfr/7Z4HUNcxnMLYh9K/nNc3HYzL1OcUT
	0rX8VNtzLMWU757Ay+naZ6QGdEXAaUkYH+QvGkto2SJkWg7G4Jyx7c8UfwodDepVaoYI8n2P2sBfv
	VgWe5joS9pSkBvy/6ynKUVASuaEd76lCZCvHz6IRd2pMUxmhRZr8Nfa53R/XuQfYTqZwfccWcipSk
	UH513wa3jXhYi57cDZllMt1UJOww9jAOQaLTlWXyZi7CcwjMioqEbzM3E2G6k4qU62nuu9FBOwBBt
	YgfxBhYZ5l0LXgHO4RDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfqCD-00000007yFF-2cec;
	Wed, 14 Jan 2026 02:01:17 +0000
Received: from mail-m1973199.qiye.163.com ([220.197.31.99])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfqC9-00000007yEY-3X1q
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Jan 2026 02:01:16 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 308cc1bf2;
	Wed, 14 Jan 2026 10:01:09 +0800 (GMT+08:00)
Message-ID: <05979948-1bc2-4bc0-ad2f-b0c3cd1c367f@rock-chips.com>
Date: Wed, 14 Jan 2026 10:01:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 FUKAUMI Naoki <naoki@radxa.com>, John Clark <inindev@gmail.com>,
 Tianling Shen <cnsztl@gmail.com>,
 Detlev Casanova <detlev.casanova@collabora.com>
Subject: Re: [PATCH v2 0/3] Fix sd card support for RK3576
To: Marco Schirrmeister <mschirrmeister@gmail.com>
References: <1768267105-127385-1-git-send-email-shawn.lin@rock-chips.com>
 <CAGJh8eAXC+CAMfjxOP8LUwR-xcQGgbwyxFkNLgAujFiP6c2hOg@mail.gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <CAGJh8eAXC+CAMfjxOP8LUwR-xcQGgbwyxFkNLgAujFiP6c2hOg@mail.gmail.com>
X-HM-Tid: 0a9bba3c3f7a09cckunm945f63b942b5c2
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkxCSVZKHUhDSB0eTkkfHk1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=UDwBVrXCaVtqIYVs6qzI0xGX+D3JfSbP920C/M75WdA7On08Lv2/H2J4GegQvhiSKNmjlIijqL0GPWOKX0lw46JGodAMW7WkNoqfWkyHAsMPAjLmnpQhftX2gFLbLS/DWwwmoUHeGA1coHqNr07vuOIbJF6NOTShbQMN616owZc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=vbBSKZDRjU8UtCXxv4OwpYCJNOYxh2lr4Kodtylvbj0=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_180114_418170_6775FD7B 
X-CRM114-Status: GOOD (  12.11  )
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

5ZyoIDIwMjYvMDEvMTQg5pif5pyf5LiJIDQ6MzUsIE1hcmNvIFNjaGlycm1laXN0ZXIg5YaZ6YGT
Ogo+IEhpIFNoYXduLAo+IAo+IE9uIFR1ZSwgSmFuIDEzLCAyMDI2IGF0IDI6MTnigK9BTSBTaGF3
biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4gd3JvdGU6Cj4+Cj4+IFRoaXMgc2VyaWVz
IGZpeGVzIHRoaXMgbWVzcyBidXQgb25seSBhZGRzIHNsb3QtZ3BpbyBzdXBwb3J0IGZvciBSSzM1
NzYtRVZCMS4KPj4gT3RoZXIgYm9hcmRzIGFyZSBhbHNvIG1pc3Npbmcgc2xvdC1ncGlvIHN1cHBv
cnQsIGJ1dCBmb2xrcyBhcmUgYWxsIGNjZWQgZm9yCj4+IGNoZWNraW5nIHRoZSBib2FyZHMgdGhl
eSBhcmUgdXNpbmcuCj4+Cj4+IFBsZWFzZSByZXZpZXcgYW5kIHRlc3QKPiAKPiBJIHRlc3RlZCB0
aGlzIHNlcmllcyBvbiB0aGUgRnJpZW5kbHlFbGVjIE5hbm9QaSBSNzZTLgo+IFdpdGggdGhlIGFk
ZGl0aW9uIG9mICdjZC1ncGlvcyA9IDwmZ3BpbzAgUktfUEE3IEdQSU9fQUNUSVZFX0xPVz47Jwo+
IGluIHRoZSBib2FyZCBEVFMsIHRoZSDCtVNEIGhvdC1wbHVnIG5vdyB3b3JrcyBjb3JyZWN0bHku
Cj4gCgpUaGFua3MgZm9yIHRlc3RpbmcuCgo+IEhvd2V2ZXIsIGV2ZW4gd2l0aCB0aGlzIGZpeCwg
dGhlIE5hbm9QaSBSNzZTIHN0aWxsIHN1ZmZlcnMgZnJvbSB0aGUKPiBjb25zdGFudCA0MDBrSHog
cmV0dW5pbmcgbG9vcCB3aGVuIHJ1bnRpbWUgUE0gaXMgZW5hYmxlZC4gSSB3aWxsIHNlbmQKPiBh
IHYyIG9mIG15IGRyaXZlciBxdWlyayB0byBhZGRyZXNzIHRoaXMgYm9hcmQtc3BlY2lmaWMgaW5z
dGFiaWxpdHkuCj4gCgpXaGVuIHRhbGtpbmcgYWJvdXQgYm9hcmQtc3BlY2lmaWMgaW5zdGFiaWxp
dHkgb2YgU0Qgc3VwcG9ydCwgdGhlCmludHVpdGl2ZSByZWFjdGlvbiBpcyBidXMgbW9yZSBvciBm
cmVxdWVuY3kgcmVsYXRlZC4gSSBuZXZlciBjYW1lCmFjcm9zcyB0aGlzIGtpbmQgb2YgcHJvYmxl
bSB3aGljaCBjYXVzZWQgYnkgcnVudGltZSBQTSBzdXBwb3J0LiBUaGF0CmJlaW5nIHNhaWQsIHRo
ZXJlIGlzIHBvdGVudGlhbCB1bnZlaWxlZCBwcm9ibGVtcyBmb3IgeW91ciBib2FyZHMuCkkgd2ls
bCBjb21tZW50IHlvdXIgdjIgdG8gc2VlIGlmIHdlIGNvdWxkIHNvcnQgdGhlbSBvdXQuCgo+IExp
bmsgdG8gdjE6IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2MDExMDAxMDcxNS4xNjEw
MTU5LTEtbXNjaGlycm1laXN0ZXJAZ21haWwuY29tL1QvI3QKPiAKPiBUZXN0ZWQtYnk6IE1hcmNv
IFNjaGlycm1laXN0ZXIgPG1zY2hpcnJtZWlzdGVyQGdtYWlsLmNvbT4KPiAKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
