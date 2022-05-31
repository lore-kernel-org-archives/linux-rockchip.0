Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3285BC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 May 2022 08:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Message-ID:Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Date:From:To:Subject:
	Content-Description:Mime-Version:Cc:Content-ID:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Nya9VN10aAuW0LHv9Gq8nQeG2y+xEaRfxj3srgVIOJM=; b=IADsf54Dx6h2lP
	c4BvecExVaBi6u9fh4HKk48Z6AjlAhlPa5MCuMFfY15A7Zw/8eh/fWYNaPAybiufvNTBLE8dcxS+O
	4tEDDSP5gjHfFn2peypcLuEfaclwoHjDxPBdlqx6xeTiceWTKUsQFYiXpfO/bDmbsQHWvjPtgVAHb
	D4qgvs6e47NXaA0QOzAYWHwRxLB5N/2QpjZKxRuHsz5O1rKrAEAJ4UBceirT3yxOZiC2Bs87nYJcJ
	bw0RZ1qDzylrslHAI7hlCgrsBuM1Djp5OmX6rfpQu0G5gNtUVLrUURNwkocyuOR/w45EzguoxiYBY
	U99dRI8E5nP6LZ76D8bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvxX6-009t8g-Vr; Tue, 31 May 2022 08:47:21 +0000
Received: from [45.66.248.76] (helo=host.hosttoname.com)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvxX3-009t6Q-Di
	for linux-rockchip@lists.infradead.org; Tue, 31 May 2022 08:47:19 +0000
Received: from [193.70.26.62] (ip62.ip-193-70-26.eu [193.70.26.62])
	by host.hosttoname.com (Postfix) with ESMTPA id 02E6623C58
	for <linux-rockchip@lists.infradead.org>; Tue, 31 May 2022 08:30:48 +0000 (UTC)
Mime-Version: 1.0
Content-Description: Mail message body
Subject: Your kind attention
To: linux-rockchip@lists.infradead.org
From: mathej200@proton.me
Date: Tue, 31 May 2022 01:30:44 -0700
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_014717_544302_C3F8E060 
X-CRM114-Status: SPAM  (  -5.58  )
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
Reply-To: mathew@mjsconsortium.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Message-ID: <E1nvxX6-009t8g-Vr@bombadil.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8gdGhlcmUsCgpNeSBuYW1lcyBhcmUgTWF0aGV3IEpvaG5zb24sIEkgYW0gcmVwcmVzZW50
aW5nIHRoZSBpbnRlcmVzdCBvZiBhIGNlcnRhaW4gcG9saXRpY2FsbHkgZXhwb3NlZCBwZXJzb24s
IHdlIGFyZSBsb29raW5nIGZvciBwYXJ0bmVycyBvdmVyc2VhcyB0aGF0IGNhbiBtYW5hZ2UgaGln
aC12YWx1ZSBmdW5kcyBmb3IgYSBwZXJpb2Qgb2YgNS0xMCB5ZWFycywgdGhlIGZ1bmRzIGhhdmUg
YmVlbiBhY2NydWVkIGJ5IHRoZSBpbmZsdWVuY2Ugb2YgdGhlIHBvd2VyIG9mIG15IGJlbmVmYWN0
b3LigJlzIG9mZmljZS4KClBsZWFzZSBkbyBjb250YWN0IG1lIGlmIHlvdSBhcmUgaW50ZXJlc3Rl
ZCBhbmQgSSB3aWxsIGV4cGxhaW4gdGhlIGJ1c2luZXNzIHRvIHlvdSBpbiBkZXRhaWwgZm9yIHlv
dSB0byBiZXR0ZXIgdW5kZXJzdGFuZCB0aGUgdHJhbnNhY3Rpb24sIEkgY2FuIGFzc3VyZSB5b3Ug
dGhhdCB0aGlzIHdpbGwgYmUgb2YgbXV0dWFsIGJlbmVmaXQgdG8gYWxsLgoKWW91IGNhbiByZXNw
b25kIHRvIG1lIGFuZCBpIHdpbGwgc2VuZCB5b3UgYSBkZXRhaWxlZCBleHBsYW5hdGlvbgoKWW91
cnMuCgpNYXRoZXcgSm9obnNvbi4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
