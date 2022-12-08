Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 044DAC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Dec 2022 06:11:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:CC:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NoEZJiPoweRuhR4pp4FCoP86s8CiRlGy731zHaDJ3e4=; b=VjF0F49Cb6dZyM
	mpGCqhGV1MVOCovZ57C6UnodyknTAA2wIAQQo0xC9A+D906VKaPCdw4DQcSY1YaDJbk6uMC1q57vT
	hVmMurOWSguljTCKDXddJQZE69qH+xqg8MirLldH33mCaMgYn33i+7RhO5MkONOovr4QjK8PkmnBA
	a8J8MrX8mHHUfKlx3Sbei6UlNVN26EymovjYG4m+ZqiE4XqKNJmJ2VBWIBrvwWAFNil/Q2+msLjxS
	WPV8wFQepSWPa82rJIhPpQvqYfJVkjLo752ExGyL3UatJ5jFsXnYd6ptp6ukGvByXGw+aS8NTghOl
	UTsym0i6XrhpwBckKRwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3A7x-0036rB-4x; Thu, 08 Dec 2022 06:11:25 +0000
Received: from szxga01-in.huawei.com ([45.249.212.187])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p3A7e-0035Ld-DX; Thu, 08 Dec 2022 06:11:10 +0000
Received: from kwepemm600017.china.huawei.com (unknown [172.30.72.56])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4NSNzg4g81zmWLC;
	Thu,  8 Dec 2022 14:10:07 +0800 (CST)
Received: from [10.174.176.131] (10.174.176.131) by
 kwepemm600017.china.huawei.com (7.193.23.234) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 8 Dec 2022 14:10:57 +0800
Message-ID: <803c31e1-5e33-2a96-835c-420815a6e7a5@huawei.com>
Date: Thu, 8 Dec 2022 14:10:57 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH] ASoC: rockchip: spdif: Add missing
 clk_disable_unprepare() in rockchip_pdm_runtime_resume()
To: Mark Brown <broonie@kernel.org>
CC: <lgirdwood@gmail.com>, <perex@perex.cz>, <tiwai@suse.com>,
	<heiko@sntech.de>, <sugar.zhang@rock-chips.com>,
	<alsa-devel@alsa-project.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
References: <20221205024317.2422223-1-wangjingjin1@huawei.com>
 <Y5Cb/1kRQVOrOT0Q@sirena.org.uk>
From: "Wangjingjin(KERNEL)" <wangjingjin1@huawei.com>
In-Reply-To: <Y5Cb/1kRQVOrOT0Q@sirena.org.uk>
X-Originating-IP: [10.174.176.131]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 kwepemm600017.china.huawei.com (7.193.23.234)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221207_221106_674128_CD52CAEE 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
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

UmlnaHTvvIx3aWxsIGZpeCBpbiB2MgpUaGFua3MgZm9yIHJldmlldy4KCuWcqCAyMDIyLzEyLzcg
MjE6NTgsIE1hcmsgQnJvd24g5YaZ6YGTOgo+IE9uIE1vbiwgRGVjIDA1LCAyMDIyIGF0IDEwOjQz
OjE3QU0gKzA4MDAsIFdhbmcgSmluZ2ppbiB3cm90ZToKPj4gVGhlIGNsa19kaXNhYmxlX3VucHJl
cGFyZSgpIHNob3VsZCBiZSBjYWxsZWQgaW4gdGhlIGVycm9yIGhhbmRsaW5nIG9mCj4+IHJvY2tj
aGlwX3BkbV9ydW50aW1lX3Jlc3VtZSgpLgo+Pgo+PiBGaXhlczogZmMwNWE1YjIyMjUzICgiQVNv
Qzogcm9ja2NoaXA6IGFkZCBzdXBwb3J0IGZvciBwZG0gY29udHJvbGxlciIpCj4+IFNpZ25lZC1v
ZmYtYnk6IFdhbmcgSmluZ2ppbiA8d2FuZ2ppbmdqaW4xQGh1YXdlaS5jb20+Cj4+IC0tLQo+PiAg
IHNvdW5kL3NvYy9yb2NrY2hpcC9yb2NrY2hpcF9wZG0uYyB8IDEgKwo+PiAgIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKQo+IAo+IFRoZSBzdWJqZWN0IGxpbmUgc2F5cyB0aGlzIGlzIGEg
Zml4IGZvciB0aGUgUy9QRElGIGRyaXZlciBidXQgdGhlIHBhdGNoCj4gaXMgZm9yIHRoZSBQRE0g
ZHJpdmVyIGFuZCBJIHNlZSB5b3Ugc2VudCBhIHNlcGFyYXRlIGZpeCBmb3IgdGhlIFBETQo+IGRy
aXZlci4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
