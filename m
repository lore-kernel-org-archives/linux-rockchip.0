Return-Path: <SRS0=XvIT=DV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B72F1C433DF
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 00:24:11 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 98D742078A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 00:24:10 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="MEUz5Ccj"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 98D742078A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jzP3Ijm7RKaHB5W72TU7qqpWjbnxQykCBiU85GmhSOQ=; b=MEUz5CcjoGF2VMKCGcxwVw8i9
	ahAqN5Y/6/mLQ8dNgxfH4rpFdnyN1q8buTCeKEDFUJmSct4sy5Rw/arQ65PU7l45mWmekJsNoDcXx
	a17zjV3QPUODeNjy0QqfjX75Y9hdGwGXZL6xYaDsbLIENQerBfq+3oQ1uP1We4uEAR4CcGOllTuic
	IMuHcifv+SbDnqZIQ47/4MH97GqXmVf2EjPRdCdFNTVj7RnXqVrS5ELfeeF18BgM8VAOahCAVGds9
	N8vSsyZbKfYEq8YFCQR5wFmp0CaAxJTLDonGoxGWGlUtMC8Lu5s1s3kZcmPHAnpQWvI/zkpNByOIo
	mMK17tJbA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSUaK-0003it-R7; Wed, 14 Oct 2020 00:24:04 +0000
Received: from regular1.263xmail.com ([211.150.70.204])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSUaH-0003hC-M7
 for linux-rockchip@lists.infradead.org; Wed, 14 Oct 2020 00:24:02 +0000
Received: from localhost (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id 01DA9252;
 Wed, 14 Oct 2020 08:23:58 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.120] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P19667T139951075981056S1602635036600792_; 
 Wed, 14 Oct 2020 08:23:57 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <e672a64380c6425723da0e7b6f339ffd>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: linux-rockchip@lists.infradead.org
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_v3_2/3=5d_pinctrl=3a_rockchip=3a_enable_gp?=
 =?UTF-8?B?aW8gcGNsayBmb3Igcm9ja2NoaXBfZ3Bpb190b19pcnHjgJDor7fms6jmhI/vvIw=?=
 =?UTF-8?B?6YKu5Lu255SxbGludXgtcm9ja2NoaXAtYm91bmNlcytrZXZlci55YW5nPXJvY2st?=
 =?UTF-8?B?Y2hpcHMuY29tQGxpc3RzLmluZnJhZGVhZC5vcmfku6Plj5HjgJE=?=
To: Jianqun Xu <jay.xu@rock-chips.com>, linus.walleij@linaro.org,
 heiko@sntech.de
References: <20201013063731.3618-1-jay.xu@rock-chips.com>
 <20201013063731.3618-3-jay.xu@rock-chips.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <75c48986-1f4c-67a3-1943-5ce51e33bbfd@rock-chips.com>
Date: Wed, 14 Oct 2020 08:23:56 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201013063731.3618-3-jay.xu@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201013_202402_047508_6B8339D8 
X-CRM114-Status: GOOD (  14.93  )
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Ck9uIDIwMjAvMTAvMTMg5LiL5Y2IMjozNywgSmlhbnF1biBYdSB3cm90ZToKPiBUaGVyZSBuZWVk
IHRvIGVuYWJsZSBwY2xrX2dwaW8gd2hlbiBkbyBpcnFfY3JlYXRlX21hcHBpbmcsIHNpbmNlIGl0
IHdpbGwKPiBkbyBhY2Nlc3MgdG8gZ3BpbyBjb250cm9sbGVyLgo+Cj4gUmV2aWV3ZWQtYnk6IEhl
aWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+Cj4gU2lnbmVkLW9mZi1ieTogSmlhbnF1biBY
dSA8amF5Lnh1QHJvY2stY2hpcHMuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9waW5jdHJsL3BpbmN0
cmwtcm9ja2NoaXAuYyB8IDIgKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykK
Pgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1yb2NrY2hpcC5jIGIvZHJp
dmVycy9waW5jdHJsL3BpbmN0cmwtcm9ja2NoaXAuYwo+IGluZGV4IDkyN2QxMzJkNjcxNi4uYTJm
MzYxYWE2ZDA1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvcGluY3RybC9waW5jdHJsLXJvY2tjaGlw
LmMKPiArKysgYi9kcml2ZXJzL3BpbmN0cmwvcGluY3RybC1yb2NrY2hpcC5jCj4gQEAgLTMxNTcs
NyArMzE1Nyw5IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfZ3Bpb190b19pcnEoc3RydWN0IGdwaW9f
Y2hpcCAqZ2MsIHVuc2lnbmVkIG9mZnNldCkKPiAgIAlpZiAoIWJhbmstPmRvbWFpbikKPiAgIAkJ
cmV0dXJuIC1FTlhJTzsKPiAgIAo+ICsJY2xrX2VuYWJsZShiYW5rLT5jbGspOwo+ICAgCXZpcnEg
PSBpcnFfY3JlYXRlX21hcHBpbmcoYmFuay0+ZG9tYWluLCBvZmZzZXQpOwo+ICsJY2xrX2Rpc2Fi
bGUoYmFuay0+Y2xrKTsKPiAgIAo+ICAgCXJldHVybiAodmlycSkgPyA6IC1FTlhJTzsKPiAgIH0K
CgpMb29rcyBnb29kIHRvIG1lLAoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmc8a2V2ZXIueWFuZ0By
b2NrLWNoaXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgoKCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
