Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 161D5C47258
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Jan 2024 09:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EZ3HLXRvEZsSLJpMRR5h5aUu/IqYpUwTGCDx2o6bnbg=; b=PtHs35WFtYzXKv
	GSmA5SEIgR/ONm+GVSDEez4Pjv0iulvwEwUXYq/+9fBKVxowYy0DGr4NdF8k4CxmO/5/YBGcG+Aro
	q1GV835/dwqm0kEEl70OlDFiycRsokJ0Q6Hk412GoWq898xGt7qZjv7SAsCn/Reh+pADg8/+wyTDc
	FDWx9SA1M6NjMUFA4E0VmCLhegZy7h9GdYnt9PaS2X037Fudm/ZltLXY43h96oVjog1EI3t8QeM9q
	116c5rnDaEoE3Otgn8zjUVipaun8siej+/lwG+zhNQZqF1AjED7BRvDXQF3RCK6tsau8coiHnHJK/
	yatIxtru2ziw1hsV3fZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ2Rk-00F8Nh-2c;
	Wed, 17 Jan 2024 09:42:56 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQ2Rg-00F8MC-1P;
	Wed, 17 Jan 2024 09:42:54 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id C25115C0129;
	Wed, 17 Jan 2024 04:42:51 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute3.internal (MEProxy); Wed, 17 Jan 2024 04:42:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1705484571; x=1705570971; bh=yA6uNuuiweBkY5mRLJUzBnsYGOl08z4i
	FjYHtsbmNT8=; b=Zs/Wx1v0xHGI8TFKOWr9hihmS7/BjYyt8er8PT17jd66P8Yt
	Mi6dC4B7JemNdZZK1moO1LtYHlgnV3zrXjbdDXeimPR1ke0be9JIFgPsCyq2m8tA
	sTEaGexrFTx0h1zy/OwuRlaO/tif8P2AnNtnFZpYnclMq9amMzgvJINcklW4uyxR
	lCoRLHy0enaAcXKNJKW/WPSkLmrHd2attjS/zK55v2I/GMIBF+/30ihZrRuG+gc+
	0/NLcfKHcBVwFybYMkPVQVWuSJaupO/mv1rzLvtYHZJBG6AKEjnZpk7jpZ/gBhuD
	SNXzE8kwfe56CXTOKxLTjA83PkFDxyRa/i1eqA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1705484571; x=
	1705570971; bh=yA6uNuuiweBkY5mRLJUzBnsYGOl08z4iFjYHtsbmNT8=; b=L
	ILT3mFlhRevOz8yHndp9B8RJgbpSyQH7eQdxmrwanUeYIFOlQ5iaDVE6wUz2qYka
	BgWhyuiJOn2rJfM0AAf7IrytLS02hBSURW022wgFezgtsq+/beoaH/k5aC3nOhgR
	i7w9qFvEeqG7f3HQKJMZcr3Wlf69FRDIcjuut9kyiNTTiu8dX15TEowySbsPyh7u
	eoNe6Jh5rrviTs8qM/luRMlKJmd6UMyOela4xWXVU7gZJuUpF7EUVFMb1ZmDmX20
	h8R4kNfgqjDOdiRpUc60P09au3b3D/C5SB9ULwiCcT5vRKMxEzJjZ1LgozBiNJdV
	YkF/pb0qezO6NLHpAw4xw==
X-ME-Sender: <xms:G6GnZRLzbCZztcR577k881FGkkVjiyLHtrvcXCjU77ULZzFemB5rGQ>
    <xme:G6GnZdLGUzeyasjo17f5hZWXms2pBk4v3SQ-rip9k9LU_94RHbAOrU7HNB8RPYsSq
    Onqi24y5A>
X-ME-Received: <xmr:G6GnZZurRDC2jrNIUfsD80lKlckr4pJLpnzSFCB_-IcgICQu94-hk_BGqXYZ7N4e5dudSSAcqYJDRAYSfseIiwxrfhmjfJwkDTXwbw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvdejhedgtdehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtkeertddtvdejnecuhfhrohhmpefvihhm
    ucfnuhhnnhcuoehtihhmsehfvggrthhhvghrthhophdrohhrgheqnecuggftrfgrthhtvg
    hrnhepueegfefgveeuiedtheffgfefveejkeetiefhhfdvjeevlefhueekudeuleeghfek
    necuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhimh
    esfhgvrghthhgvrhhtohhprdhorhhg
X-ME-Proxy: <xmx:G6GnZSa_MSHU8yHzdXTd0md3lkRXwSE_7E3Bm5MIrAMWdFhIT8rL8A>
    <xmx:G6GnZYZLNjvAEOchyJcJ9lC5OLuOo0u7s34npFb84AC-Oqgle-eImg>
    <xmx:G6GnZWAoZ1KBE6HNQiNigBVktM1UsR2ZbwhH-nbx6hqW0krnosimpg>
    <xmx:G6GnZWn1bMtEdEee9wQUIqK9aRp9MyVlvKTOJZdvu_XFSzA73StjgA>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 17 Jan 2024 04:42:47 -0500 (EST)
Message-ID: <79565cd6-4874-447a-b51f-774c312a02fc@feathertop.org>
Date: Wed, 17 Jan 2024 20:42:45 +1100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] dt-bindings: rockchip: Add support for rk809 audio
 codec
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Chris Zhong <zyw@rock-chips.com>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Lee Jones <lee@kernel.org>, Zhang Qing <zhangqing@rock-chips.com>,
 linux-kernel@vger.kernel.org
References: <20240116132102.3272682-1-tim@feathertop.org>
 <20240116195246.GA306579-robh@kernel.org>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <20240116195246.GA306579-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240117_014252_537770_2A28858B 
X-CRM114-Status: GOOD (  10.79  )
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

Ck9uIDEvMTcvMjQgMDY6NTIsIFJvYiBIZXJyaW5nIHdyb3RlOgo+IE9uIFdlZCwgSmFuIDE3LCAy
MDI0IGF0IDEyOjIwOjU5QU0gKzExMDAsIFRpbSBMdW5uIHdyb3RlOgo+PiBSb2NrY2hpcCBSSzgw
OSBzaGFyZXMgdGhlIHNhbWUgYXVkaW8gY29kZWMgYXMgdGhlIHJrODE3IG1mZCwgaXQgaXMgYWxz
bwo+PiB1c2luZyB0aGUgc2FtZSByazgxN19jb2RlYyBkcml2ZXIuIEhvd2V2ZXIgaXQgaXMgbWlz
c2luZyBmcm9tIHRoZQo+PiBiaW5kaW5ncy4KPj4KPj4gVGhpcyBzZXJpZXMgZG9jdW1lbnRzIHRo
ZSBhdWRpbyBjb2RlYyBwcm9wZXJ0aWVzIGluIHJvY2tjaGlwLHJrODA5LnlhbWwKPj4gYmluZGlu
Z3MgYW5kIHVwZGF0ZXMgZXhhbXBsZS4KPj4KPj4gQ2hhbmdlcyBpbiB2MjoKPj4gLSBGaXggdmNj
LXN1cHBseSB3YXJuaW5nIGRldGVjdGVkIGJ5IGR0X2JpbmRpbmcgYm90Cj4+IC0gRml4IG1pc3Np
bmcgaW5jbHVkZSBhbmQgcGluY3RybCBmb3IgY29kZWMgZXhhbXBsZQo+IEkganVzdCByZXZpZXdl
ZCB2MS4gUGxlYXNlIGFwcGx5IHRob3NlIGNvbW1lbnRzLiBBbmQgd2FpdCBhIGJpdCBiZXR3ZWVu
Cj4gc2VuZGluZyBuZXcgdmVyc2lvbnMuCj4KU29ycnkgYWJvdXQgdGhhdCwgZmlyc3Qgc2VyaWVz
IHdhcyBicm9rZW4gYXMgcGVyIGJvdCByZXNwb25zZSwgYnV0IHdpbGwgCndhaXQgbG9uZ2VyIGlu
IGZ1dHVyZS4KClJlZ2FyZHMKIMKgwqAgVGltCj4KPiBSb2IKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
