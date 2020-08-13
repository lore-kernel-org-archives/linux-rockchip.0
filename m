Return-Path: <SRS0=31gD=BX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E0D5C433E1
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2020 06:31:46 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1057A20715
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Aug 2020 06:31:46 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="1uFviZjr"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1057A20715
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wZjyTp4hX7WYwymDniWA+pzDBrmbspNw/k838idJync=; b=1uFviZjrZTPAOQtIT9L0oW8Su
	Wm12EN7rDDwKIPbIXPAgPNPjsOCXasc/wQOB9J1as+6USAxmFjI7yopGQI7J7TAup2pDvc985CIYM
	OuudnBc89/w9GMmdJh0HijmS6wXDNYlT8h4E+/dCmatCkzXhG59nv2x/W2Dt1Ec1Npumo3+UWPwzl
	47o/ViHOTCeU/foJ2qPAw7gcTJjrVeLzYH6DUDcTW5NEwYjCHUkpJQJ0N9KqoWByq66EXnYMclwOu
	y6lLwzbH8JokQs3Bw9TBNSV9pu84HF2Q/RoRMI0AO0iwSFzaKdrPSxxgGxx4PM4xkpatFTBKHO53X
	asRM9icfA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k66m0-0004by-6x; Thu, 13 Aug 2020 06:31:36 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k66ls-0004bU-QW
 for linux-rockchip@lists.infradead.org; Thu, 13 Aug 2020 06:31:35 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 087A61177;
 Thu, 13 Aug 2020 14:31:17 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.76] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P28892T140683746662144S1597300276100784_; 
 Thu, 13 Aug 2020 14:31:17 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <649d06a57454f0e656e289273e1861b8>
X-RL-SENDER: hjc@rock-chips.com
X-SENDER: hjc@rock-chips.com
X-LOGIN-NAME: hjc@rock-chips.com
X-FST-TO: hjc@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v2] drm/of: Consider the state in which the ep is disabled
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>
References: <20200707112526.18438-1-hjc@rock-chips.com>
 <3361390.LkKjKlf5PX@phil>
From: Huang Jiachai <hjc@rock-chips.com>
Message-ID: <12d1b648-81d1-df48-4435-b7b88dd72b30@rock-chips.com>
Date: Thu, 13 Aug 2020 14:31:16 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <3361390.LkKjKlf5PX@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200813_023132_639539_AF4C71E0 
X-CRM114-Status: GOOD (  16.26  )
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
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 kever.yang@rock-chips.com, Maxime Ripard <mripard@kernel.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 andy.yan@rock-chips.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

cGluZy4uLgoK1NogMjAyMC83LzIzIDM6MDEsIEhlaWtvIFN0qLlibmVyINC0tcA6Cj4gQW0gRGll
bnN0YWcsIDcuIEp1bGkgMjAyMCwgMTM6MjU6MjYgQ0VTVCBzY2hyaWViIFNhbmR5IEh1YW5nOgo+
PiBkb24ndCBtYXNrIHBvc3NpYmxlX2NydGNzIGlmIHJlbW90ZS1wb2ludCBpcyBkaXNhYmxlZC4K
Pj4KPj4gU2lnbmVkLW9mZi1ieTogU2FuZHkgSHVhbmcgPGhqY0Byb2NrLWNoaXBzLmNvbT4KPiBS
ZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPgo+IGNoYW5nZXMg
aW4gdjI6Cj4gLSBkcm9wIGFkZGl0aW9uYWwgb2Zfbm9kZV9wdXQsIGFzIGVwIHdpbGwgYmUgcHV0
IHdpdGggdGhlIG5leHQKPiAgICBpdGVyYXRpb24gb2YgZm9yX2VhY2hfZW5kcG9pbnRfb2Zfbm9k
ZSgpCj4KPgo+IEFzIHRoaXMgdG91Y2hlcyBhIHByZXR0eSBjZW50cmFsIGZ1bmN0aW9uIGlzIHRo
ZXJlIHNvbWV0aGluZwo+IHRvIGtlZXAgaW4gbWluZCBpbiByZWdhcmRzIHRvIG90aGVyIERSTSBk
cml2ZXJzPwo+IFtxdWVzdGlvbiBmb3IgdGhlIGJyb2FkZXIgYXVkaWVuY2UgOy0pIF0KPgo+IEhl
aWtvCj4KPj4gLS0tCj4+ICAgZHJpdmVycy9ncHUvZHJtL2RybV9vZi5jIHwgMyArKysKPj4gICAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vZHJtX29mLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX29mLmMKPj4gaW5kZXggZmRi
MDVmYmY3MmEwLi41NjVmMDVmNWYxMWIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9k
cm1fb2YuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX29mLmMKPj4gQEAgLTY2LDYgKzY2
LDkgQEAgdWludDMyX3QgZHJtX29mX2ZpbmRfcG9zc2libGVfY3J0Y3Moc3RydWN0IGRybV9kZXZp
Y2UgKmRldiwKPj4gICAJdWludDMyX3QgcG9zc2libGVfY3J0Y3MgPSAwOwo+PiAgIAo+PiAgIAlm
b3JfZWFjaF9lbmRwb2ludF9vZl9ub2RlKHBvcnQsIGVwKSB7Cj4+ICsJCWlmICghb2ZfZGV2aWNl
X2lzX2F2YWlsYWJsZShlcCkpCj4+ICsJCQljb250aW51ZTsKPj4gKwo+PiAgIAkJcmVtb3RlX3Bv
cnQgPSBvZl9ncmFwaF9nZXRfcmVtb3RlX3BvcnQoZXApOwo+PiAgIAkJaWYgKCFyZW1vdGVfcG9y
dCkgewo+PiAgIAkJCW9mX25vZGVfcHV0KGVwKTsKPj4KPgo+Cj4KPgo+Ci0tIApCZXN0IFJlZ2Fy
ZAoKu8a80u7OClNhbmR5IEh1YW5nCkFkZHI6ILij1t3K0LnEwqXH+M2txczCt8jtvP6087XAODm6
xbij1t3I7bz+1LBBx/gyMbrFwqUoMzUwMDAzKQogICAgICAgTm8uIDIxIEJ1aWxkaW5nLCBBIERp
c3RyaWN0LCBOby44OSxzb2Z0d2FyZSBCb3VsZXZhcmQgRnV6aG91LEZ1amlhbixQUkMKVGVso7or
ODYgMDU5MS04Nzg4NDkxOSAgODY5MApFLW1haWyjumhqY0Byb2NrLWNoaXBzLmNvbQoKCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
