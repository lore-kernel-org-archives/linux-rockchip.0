Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8451C54756
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 May 2025 08:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kf+RCVIKK3TxqFb/BXNIe+tx64HY+uI8bf9sjmVpTkk=; b=mw3U0m6fooxnXW
	8tJBE4QFWSf8rAe3k7zU/eTgNIgm59pDTtlj0Qy769jnelGFex/CHZgKCHbddb9HbJ/COaO/zrfud
	ZNH+T0qkGJpAkBjPiWEfyLwdl6tEW1qen0IY99a4jYQy4WMz0PVDUGQbb03KVP13resa0qXIzbgYM
	+XoPN78E40GUpJXOS+ByI0Jo+UN7NMRNfge10FD3I95AzM8P4BUe44cBMFUiMLQCXof2qBc86rr15
	92udSeCEFpbrcAdyfMWEuVAH0wP1XZP/sARvE4mODyD4yduSUlBmx8CTx/0fQoiWM6BAKYTppw1M3
	OLjwqr9+nnFZBz2+Vvpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI1hx-00000000NYe-2mxd;
	Thu, 22 May 2025 08:55:21 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI1YB-00000000KuR-0v29;
	Thu, 22 May 2025 08:45:16 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 85FF75C5792;
	Thu, 22 May 2025 08:42:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3374C4CEE4;
	Thu, 22 May 2025 08:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747903514;
	bh=dAKIS/SyGO4EUUI+9Ar6dI0ohAdSrKLFtebg+y8Y55o=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=IPehpjNqislBnS8rCMtBcA2ukVRx3gtn9llVd4hUzKwww4LWcg0Q+ubqahO1cC27M
	 M2KJNHpcv+3bjRrQAhRgSbYzRR7ixFSMc9imuDpg2PAyVMywHRA9/ErWzGklj57uqU
	 XuzLBNVuin36TjgIgx7vajurHIC8wn6x1kdD2+pqmMuwSrt9epjwNtUBkqaa9mRKqk
	 EPLGBabBTt4hT+NmsmCs2tRmrmiFyTcHfhR0horPsKRef8EAzN1yatQUjdhB00oRyC
	 kc9JldCLEoWjddZSxLE+a1HG+OP37GN5sJ8rEIjVMMzlJKR3Wtpz6d8CBvU5A7LHb/
	 zGS5qSHSfqK/A==
Message-ID: <ba9a49d5-132f-4be8-9f64-4904c91e26be@kernel.org>
Date: Thu, 22 May 2025 10:45:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/rockchip: Use dev_err_probe() to simplify code
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 long.yunjian@zte.com.cn, hjc@rock-chips.com
Cc: andy.yan@rock-chips.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 fang.yumeng@zte.com.cn, mou.yi@zte.com.cn, xu.lifeng1@zte.com.cn,
 ouyang.maochun@zte.com.cn
References: <20250515203554564-j1jBXUXR6bdiN6zARicC@zte.com.cn>
 <94e0951b-46e1-439b-9dbc-c2009a78b04b@kernel.org> <2022996.jZfb76A358@diego>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 a/A=
In-Reply-To: <2022996.jZfb76A358@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_014515_345422_64E16306 
X-CRM114-Status: GOOD (  10.75  )
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

T24gMTYvMDUvMjAyNSAxMTo1OCwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gRG9ubmVyc3Rh
ZywgMTUuIE1haSAyMDI1LCAxNzo1NDoyMCBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBz
Y2hyaWViIEtyenlzenRvZiBLb3psb3dza2k6Cj4+IE9uIDE1LzA1LzIwMjUgMTQ6MzUsIGxvbmcu
eXVuamlhbkB6dGUuY29tLmNuIHdyb3RlOgo+Pj4gRnJvbTogWXVtZW5nIEZhbmcgPGZhbmcueXVt
ZW5nQHp0ZS5jb20uY24+Cj4+Pgo+Pj4gSW4gdGhlIHByb2JlIHBhdGgsIGRldl9lcnIoKSBjYW4g
YmUgcmVwbGFjZWQgd2l0aCBkZXZfZXJyX3Byb2JlKCkKPj4KPj4gVGhhdCdzIG5vdCBwcm9iZSBw
YXRoLiBJIGFtIG5vdCBzdXJlIGlmIHlvdSByZWFsbHkgdW5kZXJzdGFuZCB0aGlzIGNvZGUuCj4g
Cj4gSSB0aGluayB0aGF0IGlzIHNvbWV3aGF0IGRlYmF0ZWFibGUuCj4gCj4gZHdfaGRtaV9yb2Nr
Y2hpcF9iaW5kKCkgaXMgcGFydCBvZiB0aGUgcm9ja2NoaXAtZHJtIGNvbXBvbmVudCBkZXZpY2Us
Cj4gc28gcGFydCBvZiBpdHMgcHJvYmUtcGF0aC4gQWxzbyBJIHRoaW5rIGp1c3QgdGhlIHByZXNl
bmNlIG9mIEVQUk9CRV9ERUZFUgo+IHdoaWNoIGNhdXNlcyB0aGUgZGV2aWNlIHRvIHJlLXRyeSBw
cm9iaW5nIGxhdGVyIGlzIGEgbmljZSBpbmRpY2F0b3IgdGhhdCB0aGUKCk5vLCB0aGF0J3Mgbm90
IHRydWUuIFlvdSBjYW4gY2FsbCBldmVyeSBBUEkgbGlrZSByZWd1bGF0b3JfZ2V0IGZyb20gYW55
CmNvbnRleHQgYW5kIHlvdSB3aWxsIGdldCBFUFJPQkVfREVGRVIuIFRoaXMgd2lsbCBub3QgYmUg
YSBwcm9iZSBwYXRoLgpUaGVyZSBhcmUgbXVsdGlwbGUgY2FzZXMgb2Ygc3VjaCBkcml2ZXJzLCBJ
IHNhdyBzdWNoIHBhdGNoIGV2ZW4gZGF5IGFnby4KCj4gY29kZSBpbiBxdWVzdGlvbiBpcyBfYV8g
cHJvYmUgcGF0aC4gKGFuZCB1c2FnZSBvZiBFUFJPQkVfREVGRVIgaXMgYW4KPiBlc3RhYmxpc2hl
ZCBwYXR0ZXJuIHRvIG1ha2UgdGhhdCBjb21wb25lbnQgZGV2aWNlIHJlLXRyeSBwcm9iaW5nIGxh
dGVyKQo+IAo+IEFuZCB0aGUgcGFyc2VfZHQgZnVuY3Rpb24gaXRzZWxmIGlzIHBhcnQgb2YgdGhh
dCBwYXRoIHRvby4KCkkgcXVpY2tseSBnbGFuY2VkIGFuZCB0aGlzIHdhcyBub3Qgb2J2aW91cy4g
VGhlIGNvbW1pdCBtc2cgaXMgcG9vciBoZXJlCmFuZCBkb2VzIG5vdCBleHBsYWluIHRoYXQgY29t
cG9uZW50X2JpbmQgaXMgQUxXQVlTIHByb2JlIHBhdGggKHVubGVzcyBpdAppcyBjbGVhciBmb3Ig
RFJNIGZvbGtzKS4KCgpCZXN0IHJlZ2FyZHMsCktyenlzenRvZgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
