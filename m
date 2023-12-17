Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FCA8C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Sun, 17 Dec 2023 08:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PCR9M/DMRAMljlz2Woxq7OPN02JyL1soSUBrQInjvok=; b=21TySypypynqsjXEj9+UAxHOlZ
	0IiAJdmkJBcgp79Ub5JYiSHXYoUlQavus/SzWHLK0T8dDNpojk0jBjquoN/9GCsBIRJQaqhEnUBkm
	DhPGtJr/xYvtvLOPEMPhdrGKBnPTg+gQgSpl88mc2Yw/7xxcXLcHH5jMNgOW5Jti5kbvPUV12GTPv
	ircJ/vXLj68OTmyKR8z/on8YQ8rLhBUaTDLVa9lcBgMz++qNHe53VC2F8UvxrWNipn5GtQKXRWtEZ
	XtgiRZHEM5c8GPfI/Q/gRlPcXOgNm/qZQSE/OAPTJIcbEzX0fxpsCycsUUTKdmjQBxyFV0xTbLKUe
	qVXrPTyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rEmyQ-007OJl-1C;
	Sun, 17 Dec 2023 08:58:10 +0000
Received: from mail-m12813.netease.com ([103.209.128.13])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rEmyM-007OJ8-24
	for linux-rockchip@lists.infradead.org;
	Sun, 17 Dec 2023 08:58:08 +0000
DKIM-Signature: a=rsa-sha256;
	b=XHcmZaxAVgdDR+OMyISfkv3ncivEnL4FyIwX2GQ1hRa9RXo9pJw/AiZF4cMvw0J75iIXHDbGFT/SewJWtDDdhsADPZhcSi+vp0mJvDztk93s37gj5SRU7h6G6/O77Zz1jXVvXEBIqZ6zWdv+0OBwkHPpUDVG8Y68EK0mDdi3144=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=4SStZFT9jjpClD+KMFvJdCdiA2BFOJDCoiyM6Ca0ef8=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12779.qiye.163.com (Hmail) with ESMTPA id 13114780169
	for <linux-rockchip@lists.infradead.org>; Sun, 17 Dec 2023 16:58:01 +0800 (CST)
Message-ID: <20cba4e0-9dd3-44df-8ad6-9a544d19b9ba@rock-chips.com>
Date: Sun, 17 Dec 2023 16:58:00 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/rockchip: vop2: Remove the unused variable
 if_dclk_rate
To: linux-rockchip@lists.infradead.org
References: <20231215065733.48895-1-jiapeng.chong@linux.alibaba.com>
Content-Language: en-US
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20231215065733.48895-1-jiapeng.chong@linux.alibaba.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRhLGVZNQksZSB8fSxpPHUJVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5IVUpLS1VKQk
	tLWQY+
X-HM-Tid: 0a8c76ff220fb24fkuuu13114780169
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MSo6EDo5Qjw3CSsVOj43QwI3
	HxUaCg9VSlVKTEtJQ0tIT0NKTUtJVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSEtKTjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231217_005807_228469_9D52A874 
X-CRM114-Status: GOOD (  13.17  )
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

SGkgSmlhcGVuZzoKClRoYW5rcyBmb3IgeW91IHBhdGNoLCBzb21ldGhpbmcgZGlzY3VzcyBpbmxp
bmU6CgpPbiAxMi8xNS8yMyAxNDo1NywgSmlhcGVuZyBDaG9uZyB3cm90ZToKPiBWYXJpYWJsZSBp
Zl9kY2xrX3JhdGUgaXMgbm90IGVmZmVjdGl2ZWx5IHVzZWQsIHNvIGRlbGV0ZSBpdC4KPiAKPiBk
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYzoxNjg4OjE2OiB3YXJu
aW5nOiB2YXJpYWJsZSDigJhpZl9kY2xrX3JhdGXigJkgc2V0IGJ1dCBub3QgdXNlZC4KPiAKPiBS
ZXBvcnRlZC1ieTogQWJhY2kgUm9ib3QgPGFiYWNpQGxpbnV4LmFsaWJhYmEuY29tPgo+IENsb3Nl
czogaHR0cHM6Ly9idWd6aWxsYS5vcGVuYW5vbGlzLmNuL3Nob3dfYnVnLmNnaT9pZD03NzUwCj4g
U2lnbmVkLW9mZi1ieTogSmlhcGVuZyBDaG9uZyA8amlhcGVuZy5jaG9uZ0BsaW51eC5hbGliYWJh
LmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9w
Mi5jIHwgNCAtLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNCBkZWxldGlvbnMoLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmMgYi9k
cml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwo+IGluZGV4IDQ0NTA4
YzJkZDYxNC4uYjRlN2NkZGFmMjVhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2Nr
Y2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L3JvY2tjaGlwX2RybV92b3AyLmMKPiBAQCAtMTY4NSwxMyArMTY4NSwxMSBAQCBzdGF0aWMgdW5z
aWduZWQgbG9uZyByazM1ODhfY2FsY19jcnVfY2ZnKHN0cnVjdCB2b3AyX3ZpZGVvX3BvcnQgKnZw
LCBpbnQgaWQsCj4gICAJdW5zaWduZWQgbG9uZyBkY2xrX2NvcmVfcmF0ZSA9IHZfcGl4Y2xrID4+
IDI7Cj4gICAJdW5zaWduZWQgbG9uZyBkY2xrX3JhdGUgPSB2X3BpeGNsazsKPiAgIAl1bnNpZ25l
ZCBsb25nIGRjbGtfb3V0X3JhdGU7Cj4gLQl1bnNpZ25lZCBsb25nIGlmX2RjbGtfcmF0ZTsKClRo
aXMgY2FuIGJlIHJlbW92ZWQsIGJ1dCB0aGUgY29kZSBiZWxsb3cgaW4gY29tbWVudHMgYXJlYSBJ
IHdvdWxkIGxpa2UgdG8gYmVlIGtlZXAgaXQgYXMgaXQgaXMuCj4gICAJdW5zaWduZWQgbG9uZyBp
Zl9waXhjbGtfcmF0ZTsKPiAgIAlpbnQgSyA9IDE7Cj4gICAKPiAgIAlpZiAodm9wMl9vdXRwdXRf
aWZfaXNfaGRtaShpZCkpIHsKPiAgIAkJLyoKPiAtCQkgKiBLID0gMjogZGNsa19jb3JlID0gaWZf
cGl4Y2xrX3JhdGUgPiBpZl9kY2xrX3JhdGUKClRoaXMgaXMgYSBjb21tZW50IHRvIGV4cGxhaW4g
aG93IHdlIGNhbGN1bGF0ZSB0aGUgZGl2IGJlbGxvdywgcGxlYXNlIGtlZXAgaXQuCj4gICAJCSAq
IEsgPSAxOiBkY2xrX2NvcmUgPSBoZG1pZV9lZHBfZGNsayA+IGlmX3BpeGNsa19yYXRlCj4gICAJ
CSAqLwo+ICAgCQlpZiAob3V0cHV0X21vZGUgPT0gUk9DS0NISVBfT1VUX01PREVfWVVWNDIwKSB7
Cj4gQEAgLTE3MDAsMTAgKzE2OTgsOCBAQCBzdGF0aWMgdW5zaWduZWQgbG9uZyByazM1ODhfY2Fs
Y19jcnVfY2ZnKHN0cnVjdCB2b3AyX3ZpZGVvX3BvcnQgKnZwLCBpbnQgaWQsCj4gICAJCX0KPiAg
IAo+ICAgCQlpZl9waXhjbGtfcmF0ZSA9IChkY2xrX2NvcmVfcmF0ZSA8PCAxKSAvIEs7Cj4gLQkJ
aWZfZGNsa19yYXRlID0gZGNsa19jb3JlX3JhdGUgLyBLOwoKSSB3b3VsZCBsaWtlIG1vdmUgaXQg
dG8gY29tbWVudCBhcmVhLgo+ICAgCQkvKgo+ICAgCQkgKiAqaWZfcGl4Y2xrX2RpdiA9IGRjbGtf
cmF0ZSAvIGlmX3BpeGNsa19yYXRlOwo+IC0JCSAqICppZl9kY2xrX2RpdiA9IGRjbGtfcmF0ZSAv
IGlmX2RjbGtfcmF0ZTsKClBsZWFzZSBrZWVwIGl0Lgo+ICAgCQkgKi8KPiAgIAkJICppZl9waXhj
bGtfZGl2ID0gMjsKPiAgIAkJICppZl9kY2xrX2RpdiA9IDQ7CgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QK
TGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
