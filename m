Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A46ABC54E49
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Feb 2024 10:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LfCDJRqtFphbQpTITgtR+uysvmme6dP2ki8Ej/xo9rk=; b=H15p8aEL7fE0TT
	yzv6ThsHSC64BiG42aU9LEtPeOLb4M3Oz/xSP/DeTd68Qldn7vw7lVCH0V3IDtQqcKY82AxhP92Tv
	ug1LOi7Ggp+QasfKTePSoudt6cYKQD1aziz7+vFY+yDWZDOgaZ0ceq1RrcbEglxyRPGShVEMFMq/K
	vAk0XNGSR/ZMe9ohLkbg17EHAq7xYGSvvP1yy+6X98Kx6M79ZoHulYkoijvtpXGv+BKq/FGb18Fq6
	yCYiwykC2GBnChAVg+aTBkwcYblkife1kaZOVq5SHeP7YJ8ah4Tb/qhJG9Oxz6dk3m3YWozMtZHCB
	2v/nH26kTlJH8QrzzlEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reYSv-000000008xS-1UfA;
	Mon, 26 Feb 2024 10:44:09 +0000
Received: from fanzine2.igalia.com ([213.97.179.56])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1reYSK-000000008S4-0AZY;
	Mon, 26 Feb 2024 10:43:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com;
	s=20170329; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=gZztgXP/XSLJSI+YL5JFai2EuuNwO+NB7lZeeMFJEPQ=; b=WP/aWXGjWHvv7r+76mUvjC+pNG
	Si+HOXvuTb++8b/QJahf1MKBLR9QPxkDIkH8wozJPUWSv629/vmwalEISB2FUf+227amdVqJfPDim
	bkWNliZ8viS+J2xAVmaN6dIRm9gb7ERyqyJSzIy52YIqDoqpRJtW2mdq89vGagLGJvWy1LvpPJQw9
	gTYpLLaUxpDsGysaVb1HT17ZDQIHmWeFoNFSuFB952jU/Lxd8tRgwQwW7mbXZaJcmj+ulCA1HOjhZ
	LIb00js8kAwls6kMQu/8KDwI5Va7opouVigUWCcKPHnOwqE9Akv7IlJgrFVspx3EMQIeb+UkTCNH/
	cbdN8SKg==;
Received: from [177.34.169.255] (helo=[192.168.0.139])
	by fanzine2.igalia.com with esmtpsa 
	(Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
	id 1reYRV-003X0t-2A; Mon, 26 Feb 2024 11:42:41 +0100
Message-ID: <fc45b4c9-40e8-4335-b669-9307cc7325ad@igalia.com>
Date: Mon, 26 Feb 2024 07:42:31 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 01/36] drm/tests: helpers: Include missing drm_drv
 header
Content-Language: en-US
To: Maxime Ripard <mripard@kernel.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, Jonathan Corbet <corbet@lwn.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>,
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>,
 Sebastian Wick <sebastian.wick@redhat.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-sunxi@lists.linux.dev
References: <20240222-kms-hdmi-connector-state-v7-0-8f4af575fce2@kernel.org>
 <20240222-kms-hdmi-connector-state-v7-1-8f4af575fce2@kernel.org>
From: =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>
Autocrypt: addr=mcanal@igalia.com; keydata=
 xjMEZIsaeRYJKwYBBAHaRw8BAQdAGU6aY8oojw61KS5rGGMrlcilFqR6p6ID45IZ6ovX0h3N
 H01haXJhIENhbmFsIDxtY2FuYWxAaWdhbGlhLmNvbT7CjwQTFggANxYhBDMCqFtIvFKVRJZQ
 hDSPnHLaGFVuBQJkixp5BQkFo5qAAhsDBAsJCAcFFQgJCgsFFgIDAQAACgkQNI+cctoYVW5u
 GAEAwpaC5rI3wD8zqETKwGVoXd6+AbmGfZuVD40xepy7z/8BAM5w95/oyPsHUqOsg/xUTlNp
 rlbhA+WWoaOXA3XgR+wCzjgEZIsaeRIKKwYBBAGXVQEFAQEHQGoOK0jgh0IorMAacx6WUUWb
 s3RLiJYWUU6iNrk5wWUbAwEIB8J+BBgWCAAmFiEEMwKoW0i8UpVEllCENI+cctoYVW4FAmSL
 GnkFCQWjmoACGwwACgkQNI+cctoYVW6cqwD/Q9R98msvkhgRvi18fzUPFDwwogn+F+gQJJ6o
 pwpgFkAA/R2zOfla3IT6G3SBoV5ucdpdCpnIXFpQLbmfHK7dXsAC
In-Reply-To: <20240222-kms-hdmi-connector-state-v7-1-8f4af575fce2@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_024333_215411_3B440487 
X-CRM114-Status: GOOD (  12.13  )
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

T24gMi8yMi8yNCAxNToxMywgTWF4aW1lIFJpcGFyZCB3cm90ZToKPiBXZSBoYXZlIGEgZmV3IGZ1
bmN0aW9ucyBkZWNsYXJlZCBpbiBvdXIga3VuaXQgaGVscGVycyBoZWFkZXIsIHNvbWUgb2YKPiB0
aGVtIGRlcmVmZXJlbmNpbmcgdGhlIHN0cnVjdCBkcm1fZHJpdmVyLgo+IAo+IEhvd2V2ZXIsIHdl
IGRvbid0IGluY2x1ZGUgdGhlIGRybV9kcnYuaCBoZWFkZXIgZmlsZSBkZWZpbmluZyB0aGF0Cj4g
c3RydWN0dXJlLCBsZWFkaW5nIHRvIGNvbXBpbGF0aW9uIGVycm9ycyBpZiB3ZSBkb24ndCBpbmNs
dWRlIGJvdGgKPiBoZWFkZXJzLgo+IAo+IEZpeGVzOiBkOTg3ODAzMTA3MTkgKCJkcm0vdGVzdHM6
IGhlbHBlcnM6IEFsbG93IHRvIHBhc3MgYSBjdXN0b20gZHJtX2RyaXZlciIpCj4gU2lnbmVkLW9m
Zi1ieTogTWF4aW1lIFJpcGFyZCA8bXJpcGFyZEBrZXJuZWwub3JnPgoKUmV2aWV3ZWQtYnk6IE1h
w61yYSBDYW5hbCA8bWNhbmFsQGlnYWxpYS5jb20+CgpCZXN0IFJlZ2FyZHMsCi0gTWHDrXJhCgo+
IC0tLQo+ICAgaW5jbHVkZS9kcm0vZHJtX2t1bml0X2hlbHBlcnMuaCB8IDIgKysKPiAgIDEgZmls
ZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0v
ZHJtX2t1bml0X2hlbHBlcnMuaCBiL2luY2x1ZGUvZHJtL2RybV9rdW5pdF9oZWxwZXJzLmgKPiBp
bmRleCBiYTQ4M2M4N2YwZTcuLjNhZTE5ODkyMjI5ZCAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2Ry
bS9kcm1fa3VuaXRfaGVscGVycy5oCj4gKysrIGIvaW5jbHVkZS9kcm0vZHJtX2t1bml0X2hlbHBl
cnMuaAo+IEBAIC0zLDYgKzMsOCBAQAo+ICAgI2lmbmRlZiBEUk1fS1VOSVRfSEVMUEVSU19IXwo+
ICAgI2RlZmluZSBEUk1fS1VOSVRfSEVMUEVSU19IXwo+ICAgCj4gKyNpbmNsdWRlIDxkcm0vZHJt
X2Rydi5oPgo+ICsKPiAgICNpbmNsdWRlIDxsaW51eC9kZXZpY2UuaD4KPiAgIAo+ICAgI2luY2x1
ZGUgPGt1bml0L3Rlc3QuaD4KPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
