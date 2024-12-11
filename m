Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1736EE7717D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 09:17:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c/XoeuoG+sHS8GZwTMcIInC4x8l3lENm4tVfYNLbuuc=; b=V/qwlhCXKRQ8Lp
	gbkIJYjQwVTNn1/O35d3xCa1SQtKmDRjcC404fJPTeQ+Gty7vk5ppcxukDkh8olsqgG3+NdzZG3Ek
	vZjsdZM5SI0ySoRCXKM4nmyKMRZqNggKC4zXR/ltNasCL5MXpOK/83Bgfm8q+GJEa/kgACgFMQNav
	JF1h+KQm8E+vhTb90RktzSi4zuiEP+9qUbBH48YIk5hDOQskSec0HEQOVfLlW7rY5ScSs0SPlGXRv
	Pmez1jNW6KI3eyiZqq5fqmRnBDk01UTDmBqZ/rPg2xHWBhVe/OIX97RvoMRq5JumTByQfQUigM3T4
	BOv+T+/56R7Bke4hLsAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLIqS-0000000ENSz-3HuJ;
	Wed, 11 Dec 2024 09:17:24 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLIpO-0000000ENFv-1XPo;
	Wed, 11 Dec 2024 09:16:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1733908575;
	bh=Pbr8TFnAH68Uxd3BnYtQuKKBAuRerzWhYOPBr/hv+kI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=OGH+62ObJppBdxcPFolFdTnI9ixx/WRUjU6WB3rUcDMneG/sUIK7N55TJ6AkuBQS5
	 tlDAI5hnXQdgtmMlDnP6UJHk1SA5LoyUJCROujtY4S4NNQ/PwYklz8Hgsp/ufsQcer
	 WwqA/gQDa7TzXEGECnjEAG2Toq35f5jZtuqzhlzfqOfk1rnrU9CaAeTBlq4lCk2Ghj
	 AWp2DkhXbKO9yeBWi99t13YGayFkL+qqNhVYGhE7hqSLlqVuNlUx85ex6UuDT3N+WE
	 Cuuur/HxdxyI/MyRtKYQgkNu7iPVq5YNyLWhAQ80DGjVgB5PlgQS+loZpNno/7n8+t
	 WBLnqLjYI8iIA==
Received: from [192.168.1.90] (unknown [188.27.48.199])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 21E4A17E35CF;
	Wed, 11 Dec 2024 10:16:15 +0100 (CET)
Message-ID: <43ae0fc5-d775-49d7-80cd-af111ff8fb25@collabora.com>
Date: Wed, 11 Dec 2024 11:16:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/4] Add support for HDMI1 output on RK3588 SoC
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Alexandre ARNOUD <aarnoud@me.com>, kernel@collabora.com,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20241211-rk3588-hdmi1-v2-0-02cdca22ff68@collabora.com>
 <12942826.iMDcRRXYNz@diego>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <12942826.iMDcRRXYNz@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_011618_561799_D0D34671 
X-CRM114-Status: GOOD (  13.69  )
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

SGkgSGVpa28sCgpPbiAxMi8xMS8yNCAxMDo0NiBBTSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4g
SGkgQ3Jpc3RpYW4sCj4gCj4gQW0gTWl0dHdvY2gsIDExLiBEZXplbWJlciAyMDI0LCAwMDowNjox
MyBDRVQgc2NocmllYiBDcmlzdGlhbiBDaW9jYWx0ZWE6Cj4+IFRoZSBwYXRjaGVzIHByb3ZpZGUg
dGhlIGJhc2ljIHN1cHBvcnQgdG8gaGFuZGxlIHRoZSBzZWNvbmQgSERNSSBvdXRwdXQKPj4gcG9y
dCBmb3VuZCBvbiBSb2NrY2hpcCBSSzM1ODggU29DLgo+Pgo+PiBGb3Igbm93IEkgZW5hYmxlZCBp
dCBvbiBSYWR4YSBST0NLIDVCIG9ubHksIHRoZSBib2FyZCBJJ3ZlIGJlZW4gdXNpbmcgdG8KPj4g
dmFsaWRhdGUgdGhpcy4KPj4KPj4gKiogSU1QT1JUQU5UICoqCj4+Cj4+IFRoZSBzZXJpZXMgaGFz
IGEgcnVudGltZSBkZXBlbmRlbmN5IG9uICJwaHk6IHBoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4
Ogo+PiBEb24ndCB1c2UgZHQgYWxpYXNlcyB0byBkZXRlcm1pbmUgcGh5LWlkIiwgYSBwYXRjaCBz
dWJtaXR0ZWQgcmVjZW50bHkgYnkKPj4gSGVpa28gWzFdLiAgV2l0aG91dCBhcHBseWluZyBpdCwg
dGhlIGZ1bmN0aW9uYWxpdHkgb24gYm90aCBIRE1JIFRYIHBvcnRzCj4+IHdpbGwgYnJlYWsuCj4g
Cj4gTG9va2luZyBhdCB0aGUgZHJtL3JvY2tjaGlwIHBhdGNoLCB0aGF0IHNob3VsZCBub3QgY2F1
c2UgZGlzcnVwdGlvbnMgb24KPiBpdHMgb3duLCByaWdodD8KPiAKPiBPbmx5IHdpdGggdGhlIGR0
cy1wYXJ0cyBlbmFibGVkIHdvdWxkIHdlIHJ1biBpbnRvIHBoeS1pc3N1ZS4KPiAoQXNraW5nLCBi
ZWNhdXNlIHRoaW5ncyBnbyB0aHJvdWdoIGRpZmZlcmVudCB0cmVlcyBhbmQgdGhlIGRybQo+IHBh
cnQgbG9va3MgcmVhZHkpCgpUaGF0J3MgcmlnaHQsIEkgc2hvdWxkIGhhdmUgYmV0dGVyIGV4cGxh
aW5lZCB0aGlzIC0gYWxsIHBhdGNoZXMgZXhjZXB0CnRoZSBsYXN0IG9uZSAodGhhdCBpcyBhY3R1
YWxseSBlbmFibGluZyBIRE1JMSBvbiBhIHNwZWNpZmljIGJvYXJkKSBjYW4KYmUgc2FmZWx5IGFw
cGxpZWQuCgpUaGFua3MsCkNyaXN0aWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
