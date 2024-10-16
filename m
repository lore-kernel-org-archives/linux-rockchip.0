Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26F21D2A559
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 20:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+00m7+fMBt8ng6ODPXmYMaNjBqtm+n3+kx+CgFLk/wM=; b=UhNl7Wgg8Avn/m
	FdneOg5rJPbkLJ6/unbm+w96fY/Z/abDuBezbk3iIfRWLqQVxqYCg6x0z8il51htD68mLT8FXqY11
	NtOuK/vWW0Th5p1ibzWHgmDXxWRI/WTfyHawmry+f7N7r5wKaLCIEITEAZwJm6PEbpCQKggVMyaYy
	4YBbxBlRW7CEB5bMjfwfJEQhcGClMQvyA9VgIplBo3j5R6zuXt0C+C00ZSBr8xJVx5/UXvNnr0mzT
	VjaJFdOv1WHLkBGxK8mWVEo2ztNiNBqXtctvBdKZ8L8cu4oyTBMca1GTpfekK1eBiwUkYV1/qd2MD
	wE92XzexlT3CTuPHMEng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1ASk-0000000CvHb-1sEp;
	Wed, 16 Oct 2024 20:17:42 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1ANQ-0000000CuWd-0MB5;
	Wed, 16 Oct 2024 20:12:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=CDCZ5wUmxUolTRt2iGeJFdMDLr/idfKmo2WKXC6DSns=; b=XM05eW1FWKejgzkeEKmtjw91Oq
	O3YFPuyQ3NuLtWlK1pdl0VyQDVtjyZq/zL9tZX+4Pnty7ord6oBlTPJbMVHIv2VxXEajRXuec9sK+
	H5RL1be0Ri96TwjHXzw693C6bN+1Ecm45x7MQJrASl04xoY8+aptcxdlq29hq5EYLoqDytWSqhWCa
	7y1zVkjlk2LHgMDp+hgSPBvadMsSYBvIrrA8AyIvhAUEct9SDOlZdV+ofN/VvWNvkoyk+pcueS19y
	SMbJAoxvAOsZw5gfulND7Z4ocDW5NZTDK+wA8XYS10ctVVJYXS01kJDsWWHr+/5466A9Ic2k+iaP1
	pMo7Gf1A==;
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1ANJ-00000006tj5-3hfw;
	Wed, 16 Oct 2024 20:12:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1729109515;
	bh=wMMMSBEtO//hNRrqnvuJxHE7i3VytWAet/SFOjJlcPg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=GQUKy8HHXHg7k/uaFBtaX446bbWo/EEXU6VejI+SL02D40oY3f7hd8BrPBJneJ49n
	 nIqJEy+sYkmmtf7b1az/b7AqehAGL7655wy8z9kKk8mFlswhgOVESkCcB9hlYIPxKt
	 UNo2Y/MYZq/OniClYOj+6fyg0U7ZR4wXwaSJjEExoyZRgNcLklnlTqwsDVGe/hFHfW
	 uoCc5Q2knfDiTQU93gJipKttIHVonkViRijZ854hekKLuMg0hSJ8IWae4vj0pxSGrF
	 kMEP+25j9Ezqu3ryUSSoy0YQR/TyNzCqPMnaHC+uV2QLPLLgUuyzUWZU9IytQ05024
	 NvbjuwNpSueUg==
Received: from [192.168.1.90] (unknown [188.24.146.62])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id F1F5D17E36CA;
	Wed, 16 Oct 2024 22:11:53 +0200 (CEST)
Message-ID: <e5f1d4ea-4b8d-4f42-9025-5291baddf7e5@collabora.com>
Date: Wed, 16 Oct 2024 23:11:53 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 3/3] drm/rockchip: Add basic RK3588 HDMI output support
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Simona Vetter <simona@ffwll.ch>,
 Simona Vetter <simona.vetter@ffwll.ch>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>,
 Luis de Arquer <ldearquer@gmail.com>, Algea Cao <algea.cao@rock-chips.com>
References: <20241010-b4-rk3588-bridge-upstream-v9-0-68c47dde0410@collabora.com>
 <20241010-b4-rk3588-bridge-upstream-v9-3-68c47dde0410@collabora.com>
 <3wjk75z2ozz2lg7qx6by3phjoe2brov6rz4jezpowrreedjua6@wt2js5hzqqdi>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <3wjk75z2ozz2lg7qx6by3phjoe2brov6rz4jezpowrreedjua6@wt2js5hzqqdi>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_211207_551869_2F5BE96C 
X-CRM114-Status: GOOD (  10.09  )
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

SGksCgpPbiAxMC8xNi8yNCAxMjoyNyBQTSwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cj4gSGVs
bG8sCj4gCj4gT24gVGh1LCBPY3QgMTAsIDIwMjQgYXQgMDE6NDA6NTFBTSArMDMwMCwgQ3Jpc3Rp
YW4gQ2lvY2FsdGVhIHdyb3RlOgo+PiArc3RydWN0IHBsYXRmb3JtX2RyaXZlciBkd19oZG1pX3Fw
X3JvY2tjaGlwX3BsdGZtX2RyaXZlciA9IHsKPj4gKwkucHJvYmUgID0gZHdfaGRtaV9xcF9yb2Nr
Y2hpcF9wcm9iZSwKPj4gKwkucmVtb3ZlX25ldyA9IGR3X2hkbWlfcXBfcm9ja2NoaXBfcmVtb3Zl
LAo+PiArCS5kcml2ZXIgPSB7Cj4+ICsJCS5uYW1lID0gImR3aGRtaXFwLXJvY2tjaGlwIiwKPj4g
KwkJLnBtID0gJmR3X2hkbWlfcXBfcm9ja2NoaXBfcG0sCj4+ICsJCS5vZl9tYXRjaF90YWJsZSA9
IGR3X2hkbWlfcXBfcm9ja2NoaXBfZHRfaWRzLAo+PiArCX0sCj4+ICt9Owo+IAo+IEFmdGVyIGNv
bW1pdCAwZWRiNTU1YTY1ZDEgKCJwbGF0Zm9ybTogTWFrZSBwbGF0Zm9ybV9kcml2ZXI6OnJlbW92
ZSgpCj4gcmV0dXJuIHZvaWQiKSAucmVtb3ZlKCkgaXMgKGFnYWluKSB0aGUgcmlnaHQgY2FsbGJh
Y2sgdG8gaW1wbGVtZW50IGZvcgo+IHBsYXRmb3JtIGRyaXZlcnMuIFBsZWFzZSBqdXN0IGRyb3Ag
Il9uZXciLgo+IAo+IEFkZGl0aW9uYWxseSBJIHN1Z2dlc3QgdG8gZHJvcCBvbmUgb2YgdGhlIHdo
aXRlIHNwYWNlcyBiZXR3ZWVuIC5wcm9iZQo+IGFuZCA9LgoKSGFuZGxlZCBib3RoIGluIHYxMCBb
MV0uCgpUaGFua3MsCkNyaXN0aWFuCgpbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIw
MjQxMDE2LWI0LXJrMzU4OC1icmlkZ2UtdXBzdHJlYW0tdjEwLTAtODdlZjkyYTZkMTRlQGNvbGxh
Ym9yYS5jb20vCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXJvY2tjaGlwCg==
