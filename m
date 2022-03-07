Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 90A72C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Mar 2022 12:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hTm4O2NU9/7p/yNPZOSRTh5T1IYcVAFGWI60LpUmIZs=; b=3ZfLDp2T+9DOd0
	4C/DYryJfqD8VJYaStxjhU9xk1xEJWfyWIUA9pnsjqRJIm+3HpxF0ziQtsk0bEifqc9+fMpIszQar
	ca0bitaCYvwB/IaHp2DlrVBqRyZ6zK7sKFQ42ahmJg3w7DwNk5NN52w8RAb/u9qmvz+drSTnWKJPt
	1Sr4MzhgTTLAs5IBTj9sig/3MHzljM8Ut1e2RGgd8uSN2x3KbLPza7SyDv25Io1JtXrqgesfIwKQO
	D4OAz0gjZffcmDb7+da3JQuJKix4N1At4wOcp/UvyYliV3o/KYiLNEbBSmFmnAz3plIHfExk5nYVU
	QhXDoiyJMwauhhl396VA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRCBo-00HTEZ-Jw; Mon, 07 Mar 2022 12:10:12 +0000
Received: from mail-m121144.qiye.163.com ([115.236.121.144])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRC80-00HRCL-8X; Mon, 07 Mar 2022 12:06:18 +0000
Received: from [172.16.12.141] (unknown [58.22.7.114])
 by mail-m121144.qiye.163.com (Hmail) with ESMTPA id 1C9D7AC0245;
 Mon,  7 Mar 2022 20:06:11 +0800 (CST)
Message-ID: <1483d5c1-1a4b-615c-b7c0-41da51b5f38c@rock-chips.com>
Date: Mon, 7 Mar 2022 20:06:10 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v7 15/24] drm/rockchip: dw_hdmi: add default 594Mhz clk
 for 4K@60hz
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 Nickey Yang <nickey.yang@rock-chips.com>
References: <20220225075150.2729401-1-s.hauer@pengutronix.de>
 <20220225075150.2729401-16-s.hauer@pengutronix.de>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20220225075150.2729401-16-s.hauer@pengutronix.de>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZCBgUCR5ZQVlLVUtZV1
 kWDxoPAgseWUFZKDYvK1lXWShZQUlKS0tKN1dZLVlBSVdZDwkaFQgSH1lBWRoeTxlWH0xKHRpJHx
 5IQk4aVRMBExYaEhckFA4PWVdZFhoPEhUdFFlBWU9LSFVKSktISkNVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NTI6Khw4Aj4MKzMxKEgPPygj
 HzBPCgxVSlVKTU9NTU5PTExKTUhMVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
 WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSElOSzcG
X-HM-Tid: 0a7f6445d0eeb039kuuu1c9d7ac0245
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220307_040616_491680_90477C7B 
X-CRM114-Status: GOOD (  12.59  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGk6CgogwqBJIGhhdmUgYSB0ZXN0IHdpdGggdGhlIDI0IHBhdGNoZXMgYXBwbGllZCBvbiBMaW51
eC01LjE3LXJjNSBvbiAKcmszNTY4LWV2YjEtdjEwIGJvYXJkIHdpdGggU29ueSBYUi03NXo5asKg
IEhETUkgVFYsCgo0SyBkb24ndCB3b3JrLCB0aGUgdHYgc2hvd3Mgbm8gc2lnbmFsLgoKMTA4MFAg
Y2FuIHdvcmsuCgpPbiAyLzI1LzIyIDE1OjUxLCBTYXNjaGEgSGF1ZXIgd3JvdGU6Cj4gRnJvbTog
Tmlja2V5IFlhbmcgPG5pY2tleS55YW5nQHJvY2stY2hpcHMuY29tPgo+Cj4gYWRkIDU5NE1oeiBj
b25maWd1cmF0aW9uIHBhcmFtZXRlcnMgaW4gcm9ja2NoaXBfcGh5X2NvbmZpZwo+Cj4gU2lnbmVk
LW9mZi1ieTogTmlja2V5IFlhbmcgPG5pY2tleS55YW5nQHJvY2stY2hpcHMuY29tPgo+IFNpZ25l
ZC1vZmYtYnk6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5ndXRyb25peC5kZT4KPiAtLS0KPgo+
IE5vdGVzOgo+ICAgICAgQ2hhbmdlcyBzaW5jZSB2MzoKPiAgICAgIC0gbmV3IHBhdGNoCj4KPiAg
IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1pLXJvY2tjaGlwLmMgfCAxICsKPiAgIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9yb2NrY2hpcC9kd19oZG1pLXJvY2tjaGlwLmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2No
aXAvZHdfaGRtaS1yb2NrY2hpcC5jCj4gaW5kZXggZTk3YmEwNzJhMDk3Yi4uMDNjZGE3MjI5ZTU1
OSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaS1yb2NrY2hp
cC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWktcm9ja2NoaXAuYwo+
IEBAIC0xOTIsNiArMTkyLDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBkd19oZG1pX3BoeV9jb25m
aWcgcm9ja2NoaXBfcGh5X2NvbmZpZ1tdID0gewo+ICAgCXsgNzQyNTAwMDAsICAweDgwMDksIDB4
MDAwNCwgMHgwMjcyfSwKPiAgIAl7IDE0ODUwMDAwMCwgMHg4MDJiLCAweDAwMDQsIDB4MDI4ZH0s
Cj4gICAJeyAyOTcwMDAwMDAsIDB4ODAzOSwgMHgwMDA1LCAweDAyOGR9LAo+ICsJeyA1OTQwMDAw
MDAsIDB4ODAzOSwgMHgwMDAwLCAweDAxOWR9LAo+ICAgCXsgfjBVTCwJICAgICAweDAwMDAsIDB4
MDAwMCwgMHgwMDAwfQo+ICAgfTsKPiAgIAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
