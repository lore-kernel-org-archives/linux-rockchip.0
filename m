Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25576C6FD1C
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Mar 2023 08:10:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Z0Wn/wduXPJ4yCqNdBtQxJfXnEhRYxdj+FMvYOs7+Y=; b=Hxdyw5RcUiVLLs
	8PQr4JoeU6mojqtryYBaTH6vthg0BkehSLCCcXeIkHsyDLkBha+NiG0ecL4ujdYXWXceL27Nbh4tt
	TrT9w+c9Upyjqwf8sra0955VAC9yRy7vXI8sj/hFT8PL1HMEutYYrlMq0XAGgLzSwett/QMU8vKYd
	r+xj2L0Vj2dLcEQ5kUYUtnhnK/8pRMbBF/Dj5lsRDVdM7MeFkmUlJc16IoF6b9eB5tN7V19rTqctE
	6CdgVPXnMopmdJyagvMo5VN76C7jKVAviIOlUOs7zfnbpfVgnS5s/B46G+k6I7EdWipKHJEC4KPMs
	UZRjKNRpNrYvW5ZLmZjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfcVR-003psd-1q;
	Fri, 24 Mar 2023 08:10:37 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfcVO-003psB-2q
	for linux-rockchip@lists.infradead.org;
	Fri, 24 Mar 2023 08:10:36 +0000
Received: from [IPV6:2a01:e0a:120:3210:1cb3:11e4:5834:9d5a] (unknown [IPv6:2a01:e0a:120:3210:1cb3:11e4:5834:9d5a])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: benjamin.gaignard)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 0D3616603101;
	Fri, 24 Mar 2023 08:10:32 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1679645432;
	bh=lJ+hBP3Cg9URGS4sU7aN1R/NGhoudvSbdxIP0xXz8u8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=O2i/iVyff7pQlSOE94VwAALDTwGeZZpQvZmKW6n3IJM5G+JVmRbqrn5GPMLN05UGw
	 f/wm25SSnFPDL/kg3SK3yD5in67rNvMZX21U/Tab8mD5peYzO3v0+OxwgY0PMEb8HC
	 B8pfwJVAjfz2sflzkj1D/D9tkUoZE5Gm9mderLQeBVGjSs6Wz5Xt8ykYnQwfXmfV/j
	 ZGyWxLAyind9wdHrjSO7TjRDecarnghGlbLsWO/dVwBVNFRAb2NFB+8i1ngXz3FVaG
	 Ou+bXR3B/UDL/JQqp4x4q6RBdrKqzZuxiOe950ZRR7lkI3+wFCop5867NJPjtI4mmR
	 oiUE5Re8iXXgw==
Message-ID: <bb638f1a-9d13-7331-9190-7470e98d05f7@collabora.com>
Date: Fri, 24 Mar 2023 09:10:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] media: verisilicon: Simplify error handling in
 tile_buffer_reallocate()
To: Markus Elfring <Markus.Elfring@web.de>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, kernel-janitors@vger.kernel.org
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20230323131704.414281-1-benjamin.gaignard@collabora.com>
 <69159492-dced-a082-5f7e-3d8d0e880f58@web.de>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <69159492-dced-a082-5f7e-3d8d0e880f58@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230324_011035_152614_12351A92 
X-CRM114-Status: UNSURE (   9.15  )
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

CkxlIDI0LzAzLzIwMjMgw6AgMDc6MzcsIE1hcmt1cyBFbGZyaW5nIGEgw6ljcml0wqA6Cj4+IFJl
d29yayBhbGxvY2F0aW9uIGVycm9ycyBjYXNlcyBoYW5kbGluZyB0byBzaW1wbHkgaXQKPj4gYnkg
cmVtb3ZpbmcgdXNlbGVzcyB0ZXN0cy4KPiBIb3cgZG8geW91IHRoaW5rIGFib3V0IHRvIHVzZSBh
IHdvcmRpbmcgbGlrZSDigJxTaW1wbGlmeSBoYW5kbGluZyBvZiBhbGxvY2F0aW9uCj4gZXJyb3Ig
Y2FzZXMgYnkgcmVtb3ZpbmcgdXNlbGVzcyB0ZXN0cy7igJ0gZm9yIHlvdXIgY2hhbmdlIGRlc2Ny
aXB0aW9uPwo+Cj4KPj4gUmVwb3J0ZWQtYnk6IOKApgo+PiAtLS0KPj4gICAuLi4vbWVkaWEvcGxh
dGZvcm0vdmVyaXNpbGljb24vaGFudHJvX2hldmMuYyAgfCAyMyArKysrKysrKy0tLS0tLS0tLS0t
Cj4gV291bGQgeW91IGxpa2UgdG8gYWRkIGFueSBsaW5rcyBmb3IgY29ycmVzcG9uZGluZyBpbmZv
cm1hdGlvbj8KCk5vLCBpdCB3YXMganVzdCB0byBzaG93IHRoYXQgeW91IGhhdmUgcmVwb3J0ZWQg
dGhlIHBvc3NpYmxlIGNsZWFuIHVwCgpSZWdhcmRzLApCZW5qYW1pbgoKPgo+IFJlZ2FyZHMsCj4g
TWFya3VzCj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
