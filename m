Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 28374EEB57F
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Sep 2023 04:06:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rnFM5CkBZKxF+sPtOr2PYOCqE2RV1FeASKZI4bFsAiQ=; b=e8f4YibyWnByLs
	wR4MrQgRsTWYVJAS23kuKbgguRBycj+Ivl0KpnTVNUnfLU5a1uZatcTRUTfd+ptM2LjZ5BXWygse8
	6PJJ1Ma2K+AmRpD/JYou4wxuSdVJsy8z0B9GWpeCDJ1SqmJmHznhtIFwnsbAXC6/+2HYtH+Ig0ovf
	rikWdQkmlIWT+w9QlQFZAFZA/ZN5pkhFO6tUEj7ZlYsrW94wSnpi0ZCEPxwjs9trQOvrhFWBcrx9L
	7dpsbKw0YPpBgII4e4Jcwdly6nBwq1Ma42JFQ7OmuloidnMnNKi1W6gS4R6ySLhjM4SSgVm7l7W+q
	s7YNF/1YH6OGwzoD3z4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qepEw-00EyTh-28;
	Sat, 09 Sep 2023 04:06:34 +0000
Received: from mail-m25470.xmail.ntesmail.com ([103.129.254.70])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qepEs-00EyS2-0c
	for linux-rockchip@lists.infradead.org;
	Sat, 09 Sep 2023 04:06:33 +0000
DKIM-Signature: a=rsa-sha256;
	b=Y9T09Ba3aDJmf/t9nRe28WFU3HTYA0M4yUY0ZPSc1KaH9+fCUt0R1GLPvr5Od612vVEMwJoj1t7livYkSUeVy9jDLQ4BD/A5L+fxW0kB3Z1ChJrMyRWDMpsniFxBcob7XvURgwbLQ05EUTrVtEttfWA/5hX5zoDnFKhorp2UPYY=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=WuNKHkVsHNP86Di5GRNLcvWVzu0r7U61O+1vXD2vASo=;
	h=date:mime-version:subject:message-id:from;
Received: from [192.168.60.65] (unknown [103.29.142.67])
	by mail-m127102.qiye.163.com (Hmail) with ESMTPA id 5E4B06C01C6;
	Sat,  9 Sep 2023 12:06:19 +0800 (CST)
Message-ID: <468e55f2-f3d7-1340-dac9-1d6763d996cb@rock-chips.com>
Date: Sat, 9 Sep 2023 12:06:13 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [RESEND PATCH v1] clk: clk-fractional-divider: Export
 clk_fractional_divider_general_approximation API
Content-Language: en-US
To: Elaine Zhang <zhangqing@rock-chips.com>, mturquette@baylibre.com,
 sboyd@kernel.org, heiko@sntech.de
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, huangtao@rock-chips.com
References: <20230801081456.2551-1-zhangqing@rock-chips.com>
From: Kever Yang <kever.yang@rock-chips.com>
In-Reply-To: <20230801081456.2551-1-zhangqing@rock-chips.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaH0NMVhlLSh9NQhhOHUgeSVUTARMWGhIXJBQOD1
	lXWRgSC1lBWUpLSFVJQlVKT0lVTUxZV1kWGg8SFR0UWUFZT0tIVUpNT0hNTFVKS0tVSkJLS1kG
X-HM-Tid: 0a8a781e81efb280kuuu5e4b06c01c6
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pi46Tjo4HD1RARAhPjw3M0sK
	GDYwCzpVSlVKTUJPSUhJSENLT0tLVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlKS0hVSUJVSk9JVU1MWVdZCAFZQUlOQk83Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230908_210630_833875_48006263 
X-CRM114-Status: GOOD (  11.44  )
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

SGkgTWljaGFlbCBhbmQgU3RlcGhlbiwKCiDCoMKgwqAgQ291bGQgdGhpcyBwYXRjaCBiZSBsYW5k
IHRvIGNvbW1vbiBjbG9jaz8KCk9uIDIwMjMvOC8xIDE2OjE0LCBFbGFpbmUgWmhhbmcgd3JvdGU6
Cj4gVGhpcyBpcyB1c2VkIGJ5IHRoZSBSb2NrY2hpcCBjbGsgZHJpdmVyLCBleHBvcnQgaXQgdG8g
YWxsb3cgdGhhdAo+IGRyaXZlciB0byBiZSBjb21waWxlZCBhcyBhIG1vZHVsZS4KPgo+IFNpZ25l
ZC1vZmYtYnk6IEVsYWluZSBaaGFuZyA8emhhbmdxaW5nQHJvY2stY2hpcHMuY29tPgoKTG9va3Mg
T0sgdG8gbWUsCgpSZXZpZXdlZC1ieTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBz
LmNvbT4KClRoYW5rcywKLSBLZXZlcgoKPiAtLS0KPiAgIGRyaXZlcnMvY2xrL2Nsay1mcmFjdGlv
bmFsLWRpdmlkZXIuYyB8IDEgKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvY2xrLWZyYWN0aW9uYWwtZGl2aWRlci5jIGIvZHJp
dmVycy9jbGsvY2xrLWZyYWN0aW9uYWwtZGl2aWRlci5jCj4gaW5kZXggNDc5Mjk3NzYzZTcwLi40
NGJmMjFjOTcwMzQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9jbGsvY2xrLWZyYWN0aW9uYWwtZGl2
aWRlci5jCj4gKysrIGIvZHJpdmVycy9jbGsvY2xrLWZyYWN0aW9uYWwtZGl2aWRlci5jCj4gQEAg
LTE0Miw2ICsxNDIsNyBAQCB2b2lkIGNsa19mcmFjdGlvbmFsX2RpdmlkZXJfZ2VuZXJhbF9hcHBy
b3hpbWF0aW9uKHN0cnVjdCBjbGtfaHcgKmh3LAo+ICAgCQkJR0VOTUFTSyhmZC0+bXdpZHRoIC0g
MSwgMCksIEdFTk1BU0soZmQtPm53aWR0aCAtIDEsIDApLAo+ICAgCQkJbSwgbik7Cj4gICB9Cj4g
K0VYUE9SVF9TWU1CT0xfR1BMKGNsa19mcmFjdGlvbmFsX2RpdmlkZXJfZ2VuZXJhbF9hcHByb3hp
bWF0aW9uKTsKPiAgIAo+ICAgc3RhdGljIGxvbmcgY2xrX2ZkX3JvdW5kX3JhdGUoc3RydWN0IGNs
a19odyAqaHcsIHVuc2lnbmVkIGxvbmcgcmF0ZSwKPiAgIAkJCSAgICAgIHVuc2lnbmVkIGxvbmcg
KnBhcmVudF9yYXRlKQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
