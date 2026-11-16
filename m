Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA4B606A31C
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Nov 2026 09:32:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=lK3pBaNJ;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=CjC+uwo8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Z11WmI6tdwcbCVqoJrw3AdBRenQj7BW75whWm129e/U=; b=lK3pBaNJ+yyvRRhaGIEU/TswvW
	vbzT3h3fiWucKCrEf9VoNtjEX/svFXpDe6ZRH3k2dJYfgHNSJzrvZPhQZCur3/kQi9K5WcZb21R1v
	grRBaPZ+QSSL1Gj3fu3WD5nbtZyvvqJYRUHirPc3GpSuKkHUZDSxL48w4zl4Cv1VwFBHRgOpklnE0
	i19c9Y4aXV72qSbUnQzEeGVxHi/6tYvvfdUO2n+HIbWL5d+O/ZTbU5Vl1gaXLwRuB5QANl0Gfe/Ay
	xuN7mPkuoygxeFLrLuKFQ6+xE9kykGfhCXbWGUWvzladLGQDRHDyg+7+fqpWYhOMrbw0NbXpMHHCS
	n0//8jTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSt4M-00000001mcW-17UG;
	Mon, 16 Nov 2026 09:32:10 +0000
Received: from mail-m12894.netease.com ([103.209.128.94])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSt4J-00000001maU-2iCX;
	Mon, 16 Nov 2026 09:32:09 +0000
Received: from [172.16.12.90] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 54d4748f7;
	Mon, 16 Nov 2026 17:31:54 +0800 (GMT+08:00)
Message-ID: <9f3252b6-7f60-449b-bd69-23edf2616f04@rock-chips.com>
Date: Mon, 16 Nov 2026 17:31:53 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] MAINTAINERS: Add two reviewers to the Rockchip DRM entry
To: Heiko Stuebner <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, hjc@rock-chips.com, andyshrk@163.com,
 damon.ding@rock-chips.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de
References: <20261110101554.1809467-1-heiko@sntech.de>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <20261110101554.1809467-1-heiko@sntech.de>
X-HM-Tid: 0aa1e3b2e68103a7kunmaed757ed40d12b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1kYFggdWUFKV1ktWUFJV1kPCRoVCBIfWUFZQ0NIS1ZNSh8fSh4fTR
	5DHUhWFRQJFhoXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0
	tIVUpLSU9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=CjC+uwo8Rwy8hZKTdryKZwzTX989KQ+E8N+m7SaMIJ0k5PL53QO3WMYHqSknOPHGDG4g/gcMVelfHxUTqRc1Zv0O4BcJM1wbZd1Hz1+DeyJJjY71L1TDKPOYjjTZ89uko9qgT+s0E5G/wWtIR9ys5LBdfKe8GiuuKInl65BkIGo=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=MLeOwJjv+/uluOjkQHQQ89/FgHix7fE7jGoDf7goFoA=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_013208_225342_B8A3F2D5 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTEvMTAvMjAyNiA2OjE1IFBNLCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiBDaGFveWkgQ2hl
biBhbmQgRGFtb24gRGluZyB2b2x1bnRlZXJlZCB0byBiZWNvbWUgcmV2aWV3ZXJzIGZvciB0aGUK
PiBSb2NrY2hpcCBEUk0gZHJpdmVycywgc28gYWRkIHRoZW0gdG8gdGhlIE1BSU5UQUlORVJTIGVu
dHJ5Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+
Cj4gLS0tCj4gIE1BSU5UQUlORVJTIHwgMiArKwo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL01BSU5UQUlORVJTIGIvTUFJTlRBSU5FUlMKPiBpbmRl
eCA5M2FiYmIzMTUwNjUuLjk5MTQyYTkxMTM1MCAxMDA2NDQKPiAtLS0gYS9NQUlOVEFJTkVSUwo+
ICsrKyBiL01BSU5UQUlORVJTCj4gQEAgLTkxMzksNiArOTEzOSw4IEBAIERSTSBEUklWRVJTIEZP
UiBST0NLQ0hJUAo+ICBNOglTYW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMuY29tPgo+ICBNOglI
ZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPgo+ICBNOglBbmR5IFlhbiA8YW5keXNocmtA
MTYzLmNvbT4KPiArUjoJQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29tPgo+
ICtSOglEYW1vbiBEaW5nIDxkYW1vbi5kaW5nQHJvY2stY2hpcHMuY29tPgo+ICBMOglkcmktZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gIEw6CWxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKPiAgUzoJTWFpbnRhaW5lZAoKUmV2aWV3ZWQtYnk6IENoYW95aSBDaGVuIDxjaGFv
eWkuY2hlbkByb2NrLWNoaXBzLmNvbT4KCi0tIApCZXN0LCAKQ2hhb3lpCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
