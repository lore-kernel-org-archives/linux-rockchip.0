Return-Path: <SRS0=3L0h=CL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 399FEC433E2
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 11:56:18 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CAB16206E7
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Sep 2020 11:56:17 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="cDGr1vqQ"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CAB16206E7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/TFW8bur71QvQzUbQ8Fd0SwJdPrSwhuqzYyy9UpmNO4=; b=cDGr1vqQzqKwGtSCgLg4vCuXM
	rf1Z3gJN409css2X5wyE0C9bhyIJw9RjRz+5/I99/3TQ+0MwpcMOKx1MKGz8uQcyEbiOBBbBoUU3r
	J6b6U+IuLCS3Xq2+v9Y1fgwuuihYU7XkHHMzqun79B66EpSsMZKuqbCTYrmw3KXiF1M8ii4KS69nq
	rmcQ/PW9A3UUH7Oif+pmmwvLIypGPIXmBnZ9Rbi0j1AG4kL3HImbrwCTOe7JokoFGcTdtSM0bSZ6V
	tdRnJkpwFLTcX4gZjfThOD4Iy/bCGSnvzENWDhqFebEo7/xhi/RCeF1lPRZBWC3Wmmh6OUmxdxgOn
	VvlSUSBag==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDRN7-0006j3-Ip; Wed, 02 Sep 2020 11:56:13 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDRN4-0006iC-SB
 for linux-rockchip@lists.infradead.org; Wed, 02 Sep 2020 11:56:12 +0000
Received: from localhost (unknown [192.168.167.235])
 by regular1.263xmail.com (Postfix) with ESMTP id 85710F1D;
 Wed,  2 Sep 2020 19:56:03 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.76] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P22908T140609325295360S1599047762080218_; 
 Wed, 02 Sep 2020 19:56:03 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a9124768c8cbdf58211f153dc645d451>
X-RL-SENDER: hjc@rock-chips.com
X-SENDER: hjc@rock-chips.com
X-LOGIN-NAME: hjc@rock-chips.com
X-FST-TO: hjc@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v2] drm/of: Consider the state in which the ep is disabled
From: Huang Jiachai <hjc@rock-chips.com>
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>
References: <20200707112526.18438-1-hjc@rock-chips.com>
 <3361390.LkKjKlf5PX@phil>
 <12d1b648-81d1-df48-4435-b7b88dd72b30@rock-chips.com>
Message-ID: <fc4aab7b-c1e5-4469-8ccd-4529055e05a1@rock-chips.com>
Date: Wed, 2 Sep 2020 19:56:01 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <12d1b648-81d1-df48-4435-b7b88dd72b30@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200902_075611_153161_FA5FBD21 
X-CRM114-Status: GOOD (  12.23  )
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
Cc: huangtao@rock-chips.com, Thomas Zimmermann <tzimmermann@suse.de>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 kever.yang@rock-chips.com, Maxime Ripard <mripard@kernel.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 andy.yan@rock-chips.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRGF2aWQgQWlybGll77yMCgogwqDCoMKgIFBsZWFzZSBoZWxwIHRvIGNvbmZpcm0gd2hldGhl
ciB0aGlzIG1vZGlmaWNhdGlvbiBpcyByZWFzb25hYmxlIHdoZW4gCnlvdSBhcmUgZnJlZSwgdGhh
bmtzLgoKCuWcqCAyMDIwLzgvMTMgMTQ6MzEsIEh1YW5nIEppYWNoYWkg5YaZ6YGTOgo+IHBpbmcu
Li4KPgo+IOWcqCAyMDIwLzcvMjMgMzowMSwgSGVpa28gU3TDvGJuZXIg5YaZ6YGTOgo+PiBBbSBE
aWVuc3RhZywgNy4gSnVsaSAyMDIwLCAxMzoyNToyNiBDRVNUIHNjaHJpZWIgU2FuZHkgSHVhbmc6
Cj4+PiBkb24ndCBtYXNrIHBvc3NpYmxlX2NydGNzIGlmIHJlbW90ZS1wb2ludCBpcyBkaXNhYmxl
ZC4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBTYW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMuY29t
Pgo+PiBSZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPj4KPj4g
Y2hhbmdlcyBpbiB2MjoKPj4gLSBkcm9wIGFkZGl0aW9uYWwgb2Zfbm9kZV9wdXQsIGFzIGVwIHdp
bGwgYmUgcHV0IHdpdGggdGhlIG5leHQKPj4gwqDCoCBpdGVyYXRpb24gb2YgZm9yX2VhY2hfZW5k
cG9pbnRfb2Zfbm9kZSgpCj4+Cj4+Cj4+IEFzIHRoaXMgdG91Y2hlcyBhIHByZXR0eSBjZW50cmFs
IGZ1bmN0aW9uIGlzIHRoZXJlIHNvbWV0aGluZwo+PiB0byBrZWVwIGluIG1pbmQgaW4gcmVnYXJk
cyB0byBvdGhlciBEUk0gZHJpdmVycz8KPj4gW3F1ZXN0aW9uIGZvciB0aGUgYnJvYWRlciBhdWRp
ZW5jZSA7LSkgXQo+Pgo+PiBIZWlrbwo+Pgo+Pj4gLS0tCj4+PiDCoCBkcml2ZXJzL2dwdS9kcm0v
ZHJtX29mLmMgfCAzICsrKwo+Pj4gwqAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+
Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vZHJtX29mLmMgYi9kcml2ZXJzL2dw
dS9kcm0vZHJtX29mLmMKPj4+IGluZGV4IGZkYjA1ZmJmNzJhMC4uNTY1ZjA1ZjVmMTFiIDEwMDY0
NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2RybV9vZi5jCj4+PiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vZHJtX29mLmMKPj4+IEBAIC02Niw2ICs2Niw5IEBAIHVpbnQzMl90IGRybV9vZl9maW5k
X3Bvc3NpYmxlX2NydGNzKHN0cnVjdCAKPj4+IGRybV9kZXZpY2UgKmRldiwKPj4+IMKgwqDCoMKg
wqAgdWludDMyX3QgcG9zc2libGVfY3J0Y3MgPSAwOwo+Pj4gwqAgwqDCoMKgwqDCoCBmb3JfZWFj
aF9lbmRwb2ludF9vZl9ub2RlKHBvcnQsIGVwKSB7Cj4+PiArwqDCoMKgwqDCoMKgwqAgaWYgKCFv
Zl9kZXZpY2VfaXNfYXZhaWxhYmxlKGVwKSkKPj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNv
bnRpbnVlOwo+Pj4gKwo+Pj4gwqDCoMKgwqDCoMKgwqDCoMKgIHJlbW90ZV9wb3J0ID0gb2ZfZ3Jh
cGhfZ2V0X3JlbW90ZV9wb3J0KGVwKTsKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAoIXJlbW90
ZV9wb3J0KSB7Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBvZl9ub2RlX3B1dChlcCk7
Cj4+Pgo+Pgo+Pgo+Pgo+Pgo+PgotLSAKQmVzdCBSZWdhcmQKCum7hOWutumSlwpTYW5keSBIdWFu
ZwpBZGRyOiDnpo/lt57luILpvJPmpbzljLrpk5znm5jot6/ova/ku7blpKfpgZM4OeWPt+emj+W3
nui9r+S7tuWbrUHljLoyMeWPt+alvCgzNTAwMDMpCiAgICAgICBOby4gMjEgQnVpbGRpbmcsIEEg
RGlzdHJpY3QsIE5vLjg5LHNvZnR3YXJlIEJvdWxldmFyZCBGdXpob3UsRnVqaWFuLFBSQwpUZWzv
vJorODYgMDU5MS04Nzg4NDkxOSAgODY5MApFLW1haWzvvJpoamNAcm9jay1jaGlwcy5jb20KCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
