Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E1B1D6406C
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Dec 2025 02:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rPE0v6NCROHpx3Gye8nmUwEjajOEQQX/v3jmj2jXkNY=; b=EfZ8MBG98xYQLy
	q5IFYa/6C9hbEU9qkdJBaT5iNQ6jPHylRPar2tfvF+B4reS11eRGAdYhFI1W20HBLWXaOsbll2HcJ
	+gggPbUrEVBacL9zsqu5WMFx/LmKxyyS0Kr/jmA7ZB6QfnEq/0aJ0QxEXx1fdho7yLNKIRtSRRVEp
	qmoTA56Dfw4vSqkeHw4IcqNCq1NQjBLCOGufwbx6Mwnb0Ws8C5N8N43OJTYYvNqMNCvjSXI6rJ5wO
	Ud9R5lvT9QnpgFP1ADnpqb1cgU9eb/tJT8A09BFUkXzVO4OR7+72VpdyFr6o/kh+zwc8MDBv/c7Mm
	RoTCi+mWVqIxJKOLc4qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVhfg-00000006582-2gvK;
	Wed, 17 Dec 2025 02:53:48 +0000
Received: from mail-m25479.xmail.ntesmail.com ([103.129.254.79])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVhfc-0000000657b-0yk7;
	Wed, 17 Dec 2025 02:53:46 +0000
Received: from [172.16.12.43] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2d82b3408;
	Wed, 17 Dec 2025 10:53:29 +0800 (GMT+08:00)
Message-ID: <49580dcf-28ec-47e1-83a0-65e16e3d7cdc@rock-chips.com>
Date: Wed, 17 Dec 2025 10:53:27 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 01/18] drm/display: bridge_connector: Ensure last
 bridge determines EDID/modes detection capabilities
To: Heiko Stuebner <heiko@sntech.de>,
 Luca Ceresoli <luca.ceresoli@bootlin.com>, andrzej.hajda@intel.com,
 neil.armstrong@linaro.org, rfoss@kernel.org
Cc: Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
 jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, inki.dae@samsung.com, sw0312.kim@samsung.com,
 kyungmin.park@samsung.com, krzk@kernel.org, alim.akhtar@samsung.com,
 jingoohan1@gmail.com, p.zabel@pengutronix.de, hjc@rock-chips.com,
 andy.yan@rock-chips.com, dmitry.baryshkov@oss.qualcomm.com,
 dianders@chromium.org, m.szyprowski@samsung.com, jani.nikula@intel.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251021023130.1523707-1-damon.ding@rock-chips.com>
 <DDNXIYL494D2.2N8L1J7XTBT4S@bootlin.com>
 <ff65f453-68a9-41fc-b9e3-02733bba96e3@rock-chips.com>
 <3351986.usQuhbGJ8B@phil>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <3351986.usQuhbGJ8B@phil>
X-HM-Tid: 0a9b2a3a18bd03a3kunmcb0179dc4d924
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0pCT1ZPT0NLHkMZQ01IGkxWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=ApUr7K7j4T/yGlwwgAFrpOxVUqFD/a1yndvUn+XdRj6uUCvdFSb+qUOyjtg4AxNbCr3sfJ5FIcABvkAm3hUXM4VBCtxaeaMuzferaCWkxK+C8uF5Q6QTdk7/uHHjULqNPliiS7WICt3+vT3RMmm0GoRA4TxExa+pe8xL8JlwV0o=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=ORkOGU2sYY0sjXmEYnHmp1Vc7q0DwAfMuZhejaTUoas=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251216_185344_814970_225F1DA6 
X-CRM114-Status: GOOD (  11.22  )
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

SGkgSGVpa28sCgpPbiAxMi8xNi8yMDI1IDk6NDggUE0sIEhlaWtvIFN0dWVibmVyIHdyb3RlOgo+
IEFtIE1pdHR3b2NoLCAyMi4gT2t0b2JlciAyMDI1LCAwMzoxNTo1MiBNaXR0ZWxldXJvcMOkaXNj
aGUgTm9ybWFsemVpdCBzY2hyaWViIERhbW9uIERpbmc6Cj4+IEhpIEx1Y2EsCj4+Cj4+IE9uIDEw
LzIxLzIwMjUgNjozMSBQTSwgTHVjYSBDZXJlc29saSB3cm90ZToKPj4+IEhlbGxvIERhbW9uLAo+
Pj4KPj4+IE9uIFR1ZSBPY3QgMjEsIDIwMjUgYXQgNDozMSBBTSBDRVNULCBEYW1vbiBEaW5nIHdy
b3RlOgo+IAo+Pj4KPj4+IFRoaXMgZG9lcyBub3QgYXBwbHkgb24gY3VycmVudCBkcm0tbWlzYy1u
ZXh0LCBkdWUgdG8gdGhlIHBhdGNoIEkgbWVudGlvbmVkCj4+PiBpbiBhIHByZXZpb3VzIGl0ZXJh
dGlvbiwgbm93IGFwcGxpZWQgYXMgY29tbWl0IDJiZTMwMGY5YTBiNiAoImRybS9kaXNwbGF5Ogo+
Pj4gYnJpZGdlX2Nvbm5lY3RvcjogZ2V0L3B1dCB0aGUgc3RvcmVkIGJyaWRnZXMiKS4KPj4+Cj4+
PiBIb3dldmVyIEknbSBzb3JyeSBJIGhhdmUgdG8gbWVudGlvbiB0aGF0IHBhdGNoIHR1cm5lZCBv
dXQgYmVpbmcgYnVnZ3ksIHNvCj4+PiBJJ3ZlIHNlbnQgYSBzZXJpZXMgdG8gYXBwbHkgYSBjb3Jy
ZWN0ZWQgdmVyc2lvbiBbMF0uIEkgc3VnZ2VzdCB3YXRjaGluZyB0aGUKPj4+IGRpc3Vjc3Npb24g
YWJvdXQgdGhlIGZpeCBzZXJpZXMsIGFuZCBpZiB0aGF0IGdldHMgYXBwcm92ZWQgcmViYXNlIG9u
IHRvcCBvZgo+Pj4gdGhhdCBhbmQgYWRhcHQgeW91ciBjaGFuZ2VzLgo+Pj4KPj4+IFNvcnJ5IGFi
b3V0IHRoZSBtZXNzLiA6KAo+Pj4KPj4+IFswXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9yLzIw
MjUxMDE3LWRybS1icmlkZ2UtYWxsb2MtZ2V0cHV0LWJyaWRnZS1jb25uZWN0b3ItZml4LWhkbWlf
Y2VjLXYyLTAtNjY3YWJmNmQ0N2MwQGJvb3RsaW4uY29tCj4+Pgo+Pj4KPj4KPj4gSSBzYXcgeW91
ciBmaXggcGF0Y2hlcyBiZWZvcmUgc2VuZGluZyB0aGlzIHNlcmllcy4gSSB0aGluayB5b3VyIHBh
dGNoZXMKPj4gd2lsbCBsaWtlbHkgYmUgbWVyZ2VkIHJlbGF0aXZlbHkgcXVpY2tseSwgc28gSSBw
bGFuIHRvIHdhaXQgdW50aWwgdGhlCj4+IG90aGVyIHBhdGNoZXMgaW4gbXkgcGF0Y2ggc2VyaWVz
IGFyZSBjb25maXJtZWQgdG8gYmUgZmluZSwgdGhlbiBzdWJtaXQKPj4gdjggdmVyc2lvbiBiYXNl
ZCBvbiB0aGUgbGF0ZXN0IGJyaWRnZV9jb25uZWN0b3IgZHJpdmVyLiA6LSkKPiAKPiBJIHRoaW5r
IHdpdGggNi4xOS1yYzEgb3V0LCBub3cgaXMgYSBncmVhdCB0aW1lIGZvciB2OD8gOi0pCj4gCgpB
Z3JlZWQhIEx1Y2EncyBwYXRjaGVzIGhhdmUgYmVlbiBtZXJnZWQuIEkgd2lsbCByZWNvbmZpcm0g
dGhlc2UgY29tbWl0cyAKb24gdGhlIGxhdGVzdCBicmFuY2ggYW5kIHVwZGF0ZSB2OCBpbiBhIGZl
dyBkYXkuIDotKQoKQmVzdCByZWdhcmRzLApEYW1vbgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
