Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D90B5CA0FF2
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Sep 2025 15:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wQA6YX7PHZbWtRS4xWPjQ+dOBe/gaX+j0090FbG+diQ=; b=eUDH+TrOBs0x9m
	EzFSyJVQK8kHmEK1Vzg0gqJAAslc2OZoGOxCPHltk1Kr5qzz1vNWiA9NmTEEGxCj9S50Yjk1aA/Sh
	aPKzibFZyjlhQUcHposVwHfsjsEpoHFHSAaDWJEqNz82IHZzgl0uKaiWuUKyxX/iRY0JjAKtprn61
	JgsFkwVbQY6sMADvSRiM6mupueQm2qug8we8sGC0qfWHKR95has9nErz+MlwqkwzxVknGlUHO9hN4
	xwv7CIDbeAP5/aa3WVhbcv0+RrAIkUa2dPH+Ndi0ks6wIgbh28I+Vud9y0+ApYVRwItI7yK/eQu9X
	S2nJi5Uod9UWtIhj3Bzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utph7-00000006xgt-25G8;
	Wed, 03 Sep 2025 15:46:45 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1utnBM-00000006VzW-0evz;
	Wed, 03 Sep 2025 13:05:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1756904745;
	bh=65Cy4eE/Dbap4x4XSMPP5MYg4UIWlMJAYB2KAsuUEOM=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=qu4mmDCDhFLO5+ELxckT0gE8rs6NIalQ//oyW76Y1Q12bEdUkmyxERmGtl3gd/5Cb
	 ACWOJ8mwcL5RwYv04uIf4VWQx4M8gzjuUMg2xAu7cwent5z5hZHNyCcZJZjdXGZ6B5
	 Glf7D3k2pwuXHnEPWq/avscUiPDC0ExrnhAsli3I/xv52eXqiBTCOJDcDdcT8JUmNX
	 rWu6x3+kIPa0tfE1yG+4hAlLFHNeUQ5c/e8Eabcqnob+JSr+6zO9yVsUOEYVBX5vNy
	 kAb06ow8nOgQFQ+kk2uAPy7wTkRZ7w+YmGZkVGNYPVt+JQRnZ+J5yXIcFCtB3jsrsc
	 0Xv/mjVBORwdw==
Received: from [192.168.1.90] (unknown [82.79.138.60])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 9FE5517E0FFA;
	Wed,  3 Sep 2025 15:05:44 +0200 (CEST)
Message-ID: <218de818-2063-432d-b61b-4537ea702cd6@collabora.com>
Date: Wed, 3 Sep 2025 16:05:44 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 1/2] drm/rockchip: inno-hdmi: Convert to drm bridge
To: Heiko Stuebner <heiko@sntech.de>, dmitry.baryshkov@oss.qualcomm.com,
 Andy Yan <andyshrk@163.com>
Cc: mripard@kernel.org, neil.armstrong@linaro.org, andrzej.hajda@intel.com,
 jernej.skrabec@gmail.com, jonas@kwiboo.se,
 Laurent.pinchart@ideasonboard.com, maarten.lankhorst@linux.intel.com,
 rfoss@kernel.org, simona@ffwll.ch, tzimmermann@suse.de, knaerzche@gmail.com,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>
References: <20250903110825.776807-1-andyshrk@163.com>
 <20250903110825.776807-2-andyshrk@163.com> <5255838.1BCLMh4Saa@phil>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <5255838.1BCLMh4Saa@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250903_060548_373448_D81C344C 
X-CRM114-Status: GOOD (  13.35  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8gSGVpa28sCgpPbiA5LzMvMjUgMjo1OSBQTSwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4g
SGkgQW5keSwKPiAKPiBBbSBNaXR0d29jaCwgMy4gU2VwdGVtYmVyIDIwMjUsIDEzOjA3OjM4IE1p
dHRlbGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgQW5keSBZYW46Cj4+IEZyb206IEFu
ZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KPj4KPj4gQ29udmVydCBpdCB0byBkcm0g
YnJpZGdlIGRyaXZlciwgaXQgd2lsbCBiZSBjb252ZW5pZW50IGZvciB1cyB0bwo+PiBtaWdyYXRl
IHRoZSBjb25uZWN0b3IgcGFydCB0byB0aGUgZGlzcGxheSBkcml2ZXIgbGF0ZXIuCj4+Cj4+IFNp
Z25lZC1vZmYtYnk6IEFuZHkgWWFuIDxhbmR5LnlhbkByb2NrLWNoaXBzLmNvbT4KPiAKPiBtb3Jl
IGxpa2UgYSBnZW5lcmFsIHJlbWFyaywgdGhpcyBlc3NlbnRpYWxseSBjb25mbGljdHMgd2l0aCB0
aGUKPiBiaWcgaGl3b3JkLWNsZWFudXAgWzBdIHRoYXQgd2FzIG1lcmdlZCB0b2RheSwgYXMgdGhl
IGlubm8taGRtaSBkcml2ZXIKPiAibG9zdCIgaXRzIHNlcGFyYXRlIEhJV09SRF9VUERBVEUgbWFj
cm8gaW4gZmF2b3IgYSBuaWNlciBnZW5lcmljIG9uZS4KPiAKPiBJJ20gbm90IHN1cmUgd2hhdCB0
aGUgYmVzdCB3YXkgdG8gcHJvY2VlZCBpcywgYXBhcnQgZnJvbSB3YWl0aW5nIGZvcgo+IDYuMTgt
cmMxLgoKVGhpcyBpcyBhY3R1YWxseSB3aGF0IEkgYWxzbyBpbnRlbmRlZCB0byBhc2sgeW91LCBh
cyBJJ20gaW4gdGhlIHByb2Nlc3Mgb2YKcmViYXNpbmcgdGhlIEhETUkgQ0VDIHNlcmllcyBvbiB0
b3Agb2YgbmV4dC0yMDI1MDkwMy4KCldvdWxkIGl0IGJlIHBvc3NpYmxlIHRvIGhhdmUgYW4gaW1t
dXRhYmxlIGJyYW5jaCBvZiBiaXRtYXAtZm9yLW5leHQgYW5kIGdldAppdCBtZXJnZWQgdG8gZHJt
LW1pc2MtbmV4dD8KClJlZ2FyZHMsCkNyaXN0aWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
