Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59F96D116F3
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Dec 2025 03:43:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:
	Cc:To:Subject:MIME-Version:Date:Message-ID:Content-Type:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YYAyJ568o78ls7PHdJvAYN2h6iSdoJSuAd0nzfuVOzw=; b=bIo+R1mvNKKpU63o+zC9owY063
	Fo4877DWpE6KHQoFFfGcW7mTamV/kJRrLir92OB4qmPI6jL4uBOqg/ZrClmtWN1B+rm0BN7F0BWMH
	CmmksdYQFm1X8eJOpxS2cs4u8NRXkOHeL0sDFS3d+ahYobydAbrDro/tWtXn54K114TxbkfnznY67
	faJG5I7vlk2iEXnfJEuoi8YOFOhSoDceQXV+zPRe8a3ndcUWdmQC25Vcn3gxxitB+EWZ07bfrANYX
	jBnOEu2n9goab4CUxe+RM98vry7usZZRDywfb+OHJ04Rp8/zTYF9y+clbkQhrnM2DIqHe7oWnFmoj
	eMqOReAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQdlx-000000065Qe-2dUR;
	Wed, 03 Dec 2025 03:43:21 +0000
Received: from mail-m1973189.qiye.163.com ([220.197.31.89])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQdlu-000000065Q8-2NaB
	for linux-rockchip@lists.infradead.org;
	Wed, 03 Dec 2025 03:43:20 +0000
Received: from [127.0.0.1] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2bc7112f7;
	Wed, 3 Dec 2025 11:43:13 +0800 (GMT+08:00)
Content-Type: multipart/mixed; boundary="------------ibfxk5uvVnZVZkaj3GgG7APC"
Message-ID: <722dd7f8-f3b9-4877-a70c-57c3f9bb0cd7@rock-chips.com>
Date: Wed, 3 Dec 2025 11:43:10 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v13 3/4] drm/atomic-helper: Re-order bridge chain
 pre-enable and post-disable
To: Aradhya Bhatia <aradhya.bhatia@linux.dev>,
 Vicente Bergas <vicencb@gmail.com>
Cc: Laurent.pinchart@ideasonboard.com, airlied@gmail.com,
 alexander.sverdlin@siemens.com, andrzej.hajda@intel.com, devarsht@ti.com,
 dri-devel <dri-devel@lists.freedesktop.org>, jernej.skrabec@gmail.com,
 Jonas Karlman <jonas@kwiboo.se>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, lumag@kernel.org,
 maarten.lankhorst@linux.intel.com, mripard@kernel.org,
 neil.armstrong@linaro.org, nm@ti.com, rfoss@kernel.org, simona@ffwll.ch,
 tomi.valkeinen@ideasonboard.com, tzimmermann@suse.de, vigneshr@ti.com,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
 Douglas Anderson <dianders@chromium.org>,
 Damon Ding <damon.ding@rock-chips.com>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>, Damon Ding <damon.ding@rock-chips.com>,
 Linus Walleij <linusw@kernel.org>,
 Linux Rockchip Support List <linux-rockchip@lists.infradead.org>
References: <CAAMcf8BfxMJx+5ttEXx0kONP2OYWSLFqEYF6rfVBKoRg5TKZzQ@mail.gmail.com>
 <bea50d14-2311-46ad-bb30-9d60a4c5e3a2@linux.dev>
 <ff21cbd1-dc77-43ae-85a8-dc6a56a1cefa@linux.dev>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <ff21cbd1-dc77-43ae-85a8-dc6a56a1cefa@linux.dev>
X-HM-Tid: 0a9ae24e984403abkunm0adb7a582f9f82
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR5OSFZOQk9NSkgeQkIeSE9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpPSE
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=DxyOpQY1c2S5odERUqbG+ejePkq0NL0KrSp7pDZYTso1murgA41HkrgZ0fHUJFcrzqf893RLFYkWH/ED6MxHe1szCe3s7dz246MdT+kRQXUbyFAkaedgbErkHQJxU6r6qf7m7rJo/6N/eVlCM4ARSCWX97FqJ3YZGTijj95jpnU=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=gt+DfjUCDJfsLBVC0wsJWY5c6P4JYa2JJr1RFC2hgto=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_194319_123854_79734112 
X-CRM114-Status: GOOD (  16.49  )
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
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This is a multi-part message in MIME format.
--------------ibfxk5uvVnZVZkaj3GgG7APC
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Aradhya,

On 10/6/2025 11:30 PM, Aradhya Bhatia wrote:
> +rockchip maintainers
> 
> Hi Vicente, all,
> 
> 
> I went through the drivers and the affected areas in the gru-kevin
> chromebook pipeline last week, but nothing has stood out.
> 
> 
> Pipeline:
> 
> rockchip,display-subsystem / rk3399-vop (Big/Lite) (CRTC) ->
> rk3399-edp (Encoder) -> analogix_dp_core (Bridge) ->
> sharp,lq123p (edp-panel)
> 
> I am unable to debug this further since I do not have the hardware.
> 
> I could use some help, especially from folks who understand the hardware
> requirements better.
> 
>

Sorry for late reply. Could you please try the patch in the
attachment? I think this should work without PSR. Thank you.

-- 
Best, 
Chaoyi
--------------ibfxk5uvVnZVZkaj3GgG7APC
Content-Type: text/plain; charset=UTF-8;
 name="0001-drm-bridge-analogix_dp-Force-prepare-drm-panel-in-pr.patch"
Content-Disposition: attachment;
 filename*0="0001-drm-bridge-analogix_dp-Force-prepare-drm-panel-in-pr.pa";
 filename*1="tch"
Content-Transfer-Encoding: base64

RnJvbSBhZTJmNjJmMWU3MzhiMjJkNmYwNzI0ZTNkZDE0ZGYzZmRlNWFlNDM0IE1vbiBTZXAg
MTcgMDA6MDA6MDAgMjAwMQpGcm9tOiBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1j
aGlwcy5jb20+CkRhdGU6IFdlZCwgMyBEZWMgMjAyNSAxMToyOTo0MyArMDgwMApTdWJqZWN0
OiBbUEFUQ0hdIGRybS9icmlkZ2U6IGFuYWxvZ2l4X2RwOiBGb3JjZSBwcmVwYXJlIGRybSBw
YW5lbCBpbgogcHJlX2VuYWJsZQoKU2lnbmVkLW9mZi1ieTogQ2hhb3lpIENoZW4gPGNoYW95
aS5jaGVuQHJvY2stY2hpcHMuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2UvYW5h
bG9naXgvYW5hbG9naXhfZHBfY29yZS5jIHwgMTEgLS0tLS0tLS0tLS0KIDEgZmlsZSBjaGFu
Z2VkLCAxMSBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYnJp
ZGdlL2FuYWxvZ2l4L2FuYWxvZ2l4X2RwX2NvcmUuYyBiL2RyaXZlcnMvZ3B1L2RybS9icmlk
Z2UvYW5hbG9naXgvYW5hbG9naXhfZHBfY29yZS5jCmluZGV4IGVmZTUzNDk3N2QxMi4uMmM0
NDE1ZmMxZTZlIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxvZ2l4
L2FuYWxvZ2l4X2RwX2NvcmUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL2FuYWxv
Z2l4L2FuYWxvZ2l4X2RwX2NvcmUuYwpAQCAtMTEyNiwxNyArMTEyNiw2IEBAIHN0YXRpYyB2
b2lkIGFuYWxvZ2l4X2RwX2JyaWRnZV9hdG9taWNfcHJlX2VuYWJsZShzdHJ1Y3QgZHJtX2Jy
aWRnZSAqYnJpZGdlLAogCQkJCQkJIHN0cnVjdCBkcm1fYXRvbWljX3N0YXRlICpvbGRfc3Rh
dGUpCiB7CiAJc3RydWN0IGFuYWxvZ2l4X2RwX2RldmljZSAqZHAgPSB0b19kcChicmlkZ2Up
OwotCXN0cnVjdCBkcm1fY3J0YyAqY3J0YzsKLQlzdHJ1Y3QgZHJtX2NydGNfc3RhdGUgKm9s
ZF9jcnRjX3N0YXRlOwotCi0JY3J0YyA9IGFuYWxvZ2l4X2RwX2dldF9uZXdfY3J0YyhkcCwg
b2xkX3N0YXRlKTsKLQlpZiAoIWNydGMpCi0JCXJldHVybjsKLQotCW9sZF9jcnRjX3N0YXRl
ID0gZHJtX2F0b21pY19nZXRfb2xkX2NydGNfc3RhdGUob2xkX3N0YXRlLCBjcnRjKTsKLQkv
KiBEb24ndCB0b3VjaCB0aGUgcGFuZWwgaWYgd2UncmUgY29taW5nIGJhY2sgZnJvbSBQU1Ig
Ki8KLQlpZiAob2xkX2NydGNfc3RhdGUgJiYgb2xkX2NydGNfc3RhdGUtPnNlbGZfcmVmcmVz
aF9hY3RpdmUpCi0JCXJldHVybjsKIAogCWRybV9wYW5lbF9wcmVwYXJlKGRwLT5wbGF0X2Rh
dGEtPnBhbmVsKTsKIH0KLS0gCjIuNTEuMQoK

--------------ibfxk5uvVnZVZkaj3GgG7APC
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--------------ibfxk5uvVnZVZkaj3GgG7APC--

