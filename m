Return-Path: <SRS0=kO9o=EG=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12E1EC00A89
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Oct 2020 02:42:38 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4F94F20665
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Oct 2020 02:42:36 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="DoIBkueB"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4F94F20665
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=huawei.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UB4X2gLBYycdSakNkvF1hED86O0dwSBSEi/MwZSa03I=; b=DoIBkueB3xCfSOQOczzFHYfyG
	CPT8vvFdW6fxQP7Q5sKMkARW4cFv5eLRC6jfIg0usscl/YLCGifzzVvn70/XZzHMmtwaPCeU8nyaU
	TK9MnIcOdWOpM39nR91JP2z7xXVG63Lf04RtwAwvB/nK6Utv9DaXm1pO5J9FLEPCHbQeCGgqswp8P
	V2IfGyI4qczMRJ0XhR5tVOrqwR/Y2KDaL2V2I7VOdYKpU7Fk8HyVAomz5d7txo04Ji94bfVNWqDXJ
	7tknDe2Vz9ahw65rnqaryHa2gjb4P8D89dEW1HJK62JKsTj26/OICcRum1YDhPhKwiym1IXaRYVTh
	Dp2fhAIMw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kYgqZ-0003ed-GJ; Sat, 31 Oct 2020 02:42:27 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kYgqV-0003cx-J9; Sat, 31 Oct 2020 02:42:25 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.59])
 by szxga04-in.huawei.com (SkyGuard) with ESMTP id 4CNNk70yFHz15NwZ;
 Sat, 31 Oct 2020 10:42:07 +0800 (CST)
Received: from [10.174.176.180] (10.174.176.180) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.487.0; Sat, 31 Oct 2020 10:42:05 +0800
Subject: Re: [PATCH -next] drm/rockchip: cdn-dp: Mark
 cdn_dp_core_suspend/resume __maybe_unused
To: <hjc@rock-chips.com>, <heiko@sntech.de>, <airlied@linux.ie>,
 <daniel@ffwll.ch>
References: <20200811021225.50296-1-yuehaibing@huawei.com>
From: Yuehaibing <yuehaibing@huawei.com>
Message-ID: <4fa1e3fe-c254-6924-ed3b-a6fd4ca88e41@huawei.com>
Date: Sat, 31 Oct 2020 10:42:04 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <20200811021225.50296-1-yuehaibing@huawei.com>
X-Originating-IP: [10.174.176.180]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201030_224223_872131_FD6849FD 
X-CRM114-Status: GOOD (  15.68  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

cGluZy4uLgoKT24gMjAyMC84LzExIDEwOjEyLCBZdWVIYWliaW5nIHdyb3RlOgo+IElmIENPTkZJ
R19QTSBpcyBub3Qgc2V0LCBnY2Mgd2FybnM6Cj4gCj4gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlw
L2Nkbi1kcC1jb3JlLmM6MTEyNDoxMjoKPiAgd2FybmluZzog4oCYY2RuX2RwX3Jlc3VtZeKAmSBk
ZWZpbmVkIGJ1dCBub3QgdXNlZCBbLVd1bnVzZWQtZnVuY3Rpb25dCj4gCj4gTWFyayB0aGVtIF9f
bWF5YmVfdW51c2VkIHRvIGZpeCB0aGlzLgo+IAo+IFJlcG9ydGVkLWJ5OiBIdWxrIFJvYm90IDxo
dWxrY2lAaHVhd2VpLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBZdWVIYWliaW5nIDx5dWVoYWliaW5n
QGh1YXdlaS5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAtY29y
ZS5jIHwgNCArKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRp
b25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9jZG4tZHAt
Y29yZS5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2Nkbi1kcC1jb3JlLmMKPiBpbmRleCBh
NGE0NWRhZjkzZjIuLjQxM2IwZTkwZjEwZiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
cm9ja2NoaXAvY2RuLWRwLWNvcmUuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9j
ZG4tZHAtY29yZS5jCj4gQEAgLTExMDcsNyArMTEwNyw3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qg
Y29tcG9uZW50X29wcyBjZG5fZHBfY29tcG9uZW50X29wcyA9IHsKPiAgCS51bmJpbmQgPSBjZG5f
ZHBfdW5iaW5kLAo+ICB9Owo+ICAKPiAtc3RhdGljIGludCBjZG5fZHBfc3VzcGVuZChzdHJ1Y3Qg
ZGV2aWNlICpkZXYpCj4gK3N0YXRpYyBfX21heWJlX3VudXNlZCBpbnQgY2RuX2RwX3N1c3BlbmQo
c3RydWN0IGRldmljZSAqZGV2KQo+ICB7Cj4gIAlzdHJ1Y3QgY2RuX2RwX2RldmljZSAqZHAgPSBk
ZXZfZ2V0X2RydmRhdGEoZGV2KTsKPiAgCWludCByZXQgPSAwOwo+IEBAIC0xMTIxLDcgKzExMjEs
NyBAQCBzdGF0aWMgaW50IGNkbl9kcF9zdXNwZW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiAgCXJl
dHVybiByZXQ7Cj4gIH0KPiAgCj4gLXN0YXRpYyBpbnQgY2RuX2RwX3Jlc3VtZShzdHJ1Y3QgZGV2
aWNlICpkZXYpCj4gK3N0YXRpYyBfX21heWJlX3VudXNlZCBpbnQgY2RuX2RwX3Jlc3VtZShzdHJ1
Y3QgZGV2aWNlICpkZXYpCj4gIHsKPiAgCXN0cnVjdCBjZG5fZHBfZGV2aWNlICpkcCA9IGRldl9n
ZXRfZHJ2ZGF0YShkZXYpOwo+ICAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
