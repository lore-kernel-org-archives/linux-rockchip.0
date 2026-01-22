Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B3380D625F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Jan 2026 08:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uvWfST4BaRr8gNQxcL+hodCTr7dZsAlZ5TWR1WjBJAw=; b=rt2Hm3Ej/0aGur
	AH3Xei9aXSbXXdGii3rQf9AWmAGQ7ybLdXtwdjiZs0X9AJzp/RVlrTSvg4lNsWG8P2BVaITE4J85Y
	BpI1X/8jJTjtxzvR0AnjZFVIxkHTqLYFed7dzwAX7YAEwzhaZeWnCSv9OBDkUM/ac9K9HifZ0U3fo
	qUl9OM3jl09JCj987Pp7MP6wgXGyJ7k/Qd4ZuhJugOXYCpW67FIVU1A8Pf5hN7rJrmyVL4jciaBil
	njhydOyROZJ4h1go41Sx2K9Qr3y/Xv/JIeeCLokb9jJJIiacoU8+kRVAhtPXnbIMQb5Zn870OsfBp
	iNXdjgS9w8vftEfSEbdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viq6z-00000006eOA-0XHR;
	Thu, 22 Jan 2026 08:32:17 +0000
Received: from m16.mail.163.com ([117.135.210.5])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viq6w-00000006eNU-16f3;
	Thu, 22 Jan 2026 08:32:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=QNluXzU5ZLXVii/ZpNfflC2JtTB2lituAsOqSh4woUM=; b=S
	QtN+SpGoedsnVaaCNB37XfJnRywaw7rzwNQJpfwezDRML2l5dPLsY9lGKBQNnipP
	nNMe/k16r4TzSNmHXWwWQ5PePum2lSx0hS0bNpKwWV0nNBvBMmwlkvQ0XyzPCOVI
	ggav7e4BDEyVKzYX/edpo7eY7oFRZOZZrbYWZPRE5U=
Received: from andyshrk$163.com ( [110.83.51.2] ) by
 ajax-webmail-wmsvr-40-107 (Coremail) ; Thu, 22 Jan 2026 16:31:07 +0800
 (CST)
X-Originating-IP: [110.83.51.2]
Date: Thu, 22 Jan 2026 16:31:07 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Nicolas Frattaroli" <nicolas.frattaroli@collabora.com>
Cc: "Harry Wentland" <harry.wentland@amd.com>, "Leo Li" <sunpeng.li@amd.com>,
	"Rodrigo Siqueira" <siqueira@igalia.com>,
	"Alex Deucher" <alexander.deucher@amd.com>,
	=?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
	"David Airlie" <airlied@gmail.com>,
	"Simona Vetter" <simona@ffwll.ch>,
	"Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>,
	"Maxime Ripard" <mripard@kernel.org>,
	"Thomas Zimmermann" <tzimmermann@suse.de>,
	"Andrzej Hajda" <andrzej.hajda@intel.com>,
	"Neil Armstrong" <neil.armstrong@linaro.org>,
	"Robert Foss" <rfoss@kernel.org>,
	"Laurent Pinchart" <Laurent.pinchart@ideasonboard.com>,
	"Jonas Karlman" <jonas@kwiboo.se>,
	"Jernej Skrabec" <jernej.skrabec@gmail.com>,
	"Sandy Huang" <hjc@rock-chips.com>,
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
	"Andy Yan" <andy.yan@rock-chips.com>,
	"Jani Nikula" <jani.nikula@linux.intel.com>,
	"Rodrigo Vivi" <rodrigo.vivi@intel.com>,
	"Joonas Lahtinen" <joonas.lahtinen@linux.intel.com>,
	"Tvrtko Ursulin" <tursulin@ursulin.net>,
	"Dmitry Baryshkov" <lumag@kernel.org>,
	"Sascha Hauer" <s.hauer@pengutronix.de>,
	"Rob Herring" <robh@kernel.org>, "Jonathan Corbet" <corbet@lwn.net>,
	kernel@collabora.com, amd-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org, linux-doc@vger.kernel.org
Subject: Re:[PATCH v7 11/22] drm/rockchip: vop2: Add RK3576 to the RG swap
 special case
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2023.4-cmXT build
 20251222(83accb85) Copyright (c) 2002-2026 www.mailtech.cn 163com
In-Reply-To: <20260121-color-format-v7-11-ef790dae780c@collabora.com>
References: <20260121-color-format-v7-0-ef790dae780c@collabora.com>
 <20260121-color-format-v7-11-ef790dae780c@collabora.com>
X-CM-CTRLMSGS: cqZSfXBsdXM9MTc2OTA3MDY2NjU0Ml81N2E2ZjYzM2VlZWJiOTA0MThhMzQwM
 jhiYjQ5ZTYxZQ==
X-NTES-SC: AL_Qu2dC/ycv04t4SSeZ+kfmUgWjuw/WsG1v/Ul1YBSP556jCHp1zA+YHtOI0XuzsGkOiqykTu2XSVH2/VTe6Bkepsbmp04n5ya3owmfms/IzFGIw==
MIME-Version: 1.0
Message-ID: <4e851a3d.75f3.19be4d426d0.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: aygvCgDnjxFL4HFpB6tcAA--.14921W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbC7QsBX2lx4EvkPwAA3Q
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260122_003214_679466_6A74281C 
X-CRM114-Status: UNSURE (   5.32  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGVsbG8gTmljb2xhc++8jAoKQXQgMjAyNi0wMS0yMSAyMjo0NToxOCwgIk5pY29sYXMgRnJhdHRh
cm9saSIgPG5pY29sYXMuZnJhdHRhcm9saUBjb2xsYWJvcmEuY29tPiB3cm90ZToKPk11Y2ggbGlr
ZSBSSzM1ODgsIFJLMzU3NiByZXF1aXJlcyBhbiBSRyBzd2FwIHRvIGJlIHBlcmZvcm1lZCBmb3Ig
WVVWNDQ0Cj44LWJpdCBhbmQgWVVWNDQ0IDEwLWJpdCBidXMgZm9ybWF0cy4KPgo+QWRkIGl0cyB2
ZXJzaW9uIHRvIHRoZSBhbHJlYWR5IGV4aXN0aW5nIGNoZWNrIGZvciBSSzM1ODgsIHNvIHRoYXQg
WVVWNDQ0Cj5vdXRwdXQgaXMgY29ycmVjdCBvbiB0aGlzIHBsYXRmb3JtLgo+Cj5GaXhlczogOTQ0
NzU3YTRjYmE2ICgiZHJtL3JvY2tjaGlwOiB2b3AyOiBBZGQgc3VwcG9ydCBmb3IgcmszNTc2IikK
PlNpZ25lZC1vZmYtYnk6IE5pY29sYXMgRnJhdHRhcm9saSA8bmljb2xhcy5mcmF0dGFyb2xpQGNv
bGxhYm9yYS5jb20+CgoKICAgUmV2aWV3ZWQtYnk6IEFuZHkgWWFuIDxhbmR5c2hya0AxNjMuY29t
PgoKPi0tLQo+IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jIHwg
MyArKy0KPiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4K
PmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIu
YyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj5pbmRleCA0
NjljNjNkZDk3ZDUuLmYyMWVmYmNhNDJlNiAxMDA2NDQKPi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9y
b2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4rKysgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwo+QEAgLTM1NCw3ICszNTQsOCBAQCBzdGF0aWMgYm9vbCB2
b3AyX291dHB1dF91dl9zd2FwKHUzMiBidXNfZm9ybWF0LCB1MzIgb3V0cHV0X21vZGUpCj4gCj4g
c3RhdGljIGJvb2wgdm9wMl9vdXRwdXRfcmdfc3dhcChzdHJ1Y3Qgdm9wMiAqdm9wMiwgdTMyIGJ1
c19mb3JtYXQpCj4gewo+LQlpZiAodm9wMi0+dmVyc2lvbiA9PSBWT1BfVkVSU0lPTl9SSzM1ODgp
IHsKPisJaWYgKHZvcDItPnZlcnNpb24gPT0gVk9QX1ZFUlNJT05fUkszNTg4IHx8Cj4rCSAgICB2
b3AyLT52ZXJzaW9uID09IFZPUF9WRVJTSU9OX1JLMzU3Nikgewo+IAkJaWYgKGJ1c19mb3JtYXQg
PT0gTUVESUFfQlVTX0ZNVF9ZVVY4XzFYMjQgfHwKPiAJCSAgICBidXNfZm9ybWF0ID09IE1FRElB
X0JVU19GTVRfWVVWMTBfMVgzMCkKPiAJCQlyZXR1cm4gdHJ1ZTsKPgo+LS0gCj4yLjUyLjAKPgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
