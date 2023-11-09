Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6841C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 09:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=poG6q550rd+JYuBKLRr+S4GUEzbsgAuKWoj2lk0Bb1o=; b=gTMT9NvPavSeLa
	R3AOXrpI6RctSiB7Q8yhQgumvmmOO1LDiQmku7hpO6pT76IuhWBN6oyGkkaSoGzcu+DViUdXevZMD
	7R+K3tggKkaj5UqHUsh+Msl8pjdFJkDug8nURoYfSs5o9oRRBJ/+rfWfae8c5tm5S5MsItTCWPmkJ
	2FUghOshUiApaYNKz4kXUzy+7pG/+JQ01+E5B4a5Sdw4pZxCeNhamW7CbHLl8nz2Nd3jtpGLlpn7z
	6nQKw76do9onCsGA/vSV0AbabesL/JivlT+8BpQHp/4hJ686uXXwbKdkAupIF2kGn16MObgEUdpgN
	c5KnIsJtad+29I1cxAYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r11ge-005pWR-0j;
	Thu, 09 Nov 2023 09:50:56 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r11ga-005pV8-0U;
	Thu, 09 Nov 2023 09:50:53 +0000
Received: from [100.116.125.19] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: andrzej.p)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 4BDE56607410;
	Thu,  9 Nov 2023 09:50:49 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699523450;
	bh=wHz7BSLit9iJCz9Rq7LuGR5W9A9QLTf6UvjPIsXnOb4=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=f5os2KkBrMxX7fKenpnv0S5pHDaJXkA071okahwLyfpXWIStY7bRsAF0CUa32phoX
	 8AHY53GexYwfCna9GKDz1KqAMNkk8NYWLVLbY70mI9Fbea7AU6wshtA7WPKHoFIM97
	 W0UOUcQiDQvQByogIiE39S0vAeZ+DBZCVxFeSZ/r00GOXZZBRDGJe5K1X2clGmzSwk
	 abZsQVkbsElbTHwhBMz0A5TrbFKMzUd8Nnr1lUkcnd18lIyxs0hknHz6Ew4gbEH0Ov
	 I4cKg3/FgYk5ijEx3i35e5TUbwsbYGjhMRPhq/gvXFdz+GdVl/UlYfHVyosmmkj9JQ
	 E9Daww0PvlHvA==
Message-ID: <fc11c361-7d5b-493f-96c8-8495293f2544@collabora.com>
Date: Thu, 9 Nov 2023 10:50:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 19/56] media: dvb-core: Do not initialize twice queue
 num_buffer field
Content-Language: en-US
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, mchehab@kernel.org,
 tfiga@chromium.org, m.szyprowski@samsung.com, ming.qian@nxp.com,
 ezequiel@vanguardiasur.com.ar, p.zabel@pengutronix.de,
 gregkh@linuxfoundation.org, hverkuil-cisco@xs4all.nl,
 nicolas.dufresne@collabora.com
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev, kernel@collabora.com
References: <20231031163104.112469-1-benjamin.gaignard@collabora.com>
 <20231031163104.112469-20-benjamin.gaignard@collabora.com>
From: Andrzej Pietrasiewicz <andrzej.p@collabora.com>
In-Reply-To: <20231031163104.112469-20-benjamin.gaignard@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_015052_323149_89707AD5 
X-CRM114-Status: GOOD (  12.27  )
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

SGkgQmVuamFtaW4sCgpXIGRuaXUgMzEuMTAuMjAyMyBvwqAxNzozMCwgQmVuamFtaW4gR2FpZ25h
cmQgcGlzemU6Cj4gVGhlIGFib3ZlIG1lbXNldCBhbHJlYWR5IHplcm9lZCBhbGwgdGhlIGN0eCBm
aWVsZHMsIGl0IGlzIHVzZWxlc3MKPiB0byBkbyBpdCBoZXJlIGFnYWluLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29t
Pgo+IC0tLQo+ICAgZHJpdmVycy9tZWRpYS9kdmItY29yZS9kdmJfdmIyLmMgfCAxIC0KPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVk
aWEvZHZiLWNvcmUvZHZiX3ZiMi5jIGIvZHJpdmVycy9tZWRpYS9kdmItY29yZS9kdmJfdmIyLmMK
PiBpbmRleCAzYTk2NmZkZjgxNGMuLmE3MzFiNzU1YTBiOSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJz
L21lZGlhL2R2Yi1jb3JlL2R2Yl92YjIuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvZHZiLWNvcmUv
ZHZiX3ZiMi5jCj4gQEAgLTE3Nyw3ICsxNzcsNiBAQCBpbnQgZHZiX3ZiMl9pbml0KHN0cnVjdCBk
dmJfdmIyX2N0eCAqY3R4LCBjb25zdCBjaGFyICpuYW1lLCBpbnQgbm9uYmxvY2tpbmcpCj4gICAJ
cS0+b3BzID0gJmR2Yl92YjJfcW9wczsKPiAgIAlxLT5tZW1fb3BzID0gJnZiMl92bWFsbG9jX21l
bW9wczsKPiAgIAlxLT5idWZfb3BzID0gJmR2Yl92YjJfYnVmX29wczsKPiAtCXEtPm51bV9idWZm
ZXJzID0gMDsKCkEgZmV3IGxpbmVzIGFib3ZlIHRoaXMgb25lIGlzIHRoaXM6CgoJcS0+aXNfb3V0
cHV0ID0gMDsKCkNhbiB0aGlzIGFsc28gYmUgaW5jbHVkZWQgaW4gdGhpcyAoY2xlYW51cCkgcGF0
Y2g/CgpSZWdhcmRzLAoKQW5kcnplagoKPiAgIAlyZXQgPSB2YjJfY29yZV9xdWV1ZV9pbml0KHEp
Owo+ICAgCWlmIChyZXQpIHsKPiAgIAkJY3R4LT5zdGF0ZSA9IERWQl9WQjJfU1RBVEVfTk9ORTsK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
