Return-Path: <SRS0=zRVM=NS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66BDDC432BE
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Aug 2021 01:31:14 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 72C2A60EBD
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Aug 2021 01:31:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 72C2A60EBD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XCAzfiuoC/gw3CaWoIKwR+ziqvLtk4KJXimILcyeqEs=; b=ZAmdwsBHMT0lmbq4IHcMfjLCud
	lEKzSZvvoRJafWsdUL3CMsV0qTlljKYa2om9mDQeUIbuTzySoBnz+Lq9T50QvN0OFYcdXuwKDdwEQ
	ZdYy0Ol0W0W9fANnMdSwFSIaGV08+XKWDLK54Pv5hbSVpNf4habW8pdyJDhHNsGdMvvh0otRSQRK7
	EJ182Kwk/vL56NA45h/SEB3kSmXqwGs8JWNi1FgSROkABv09oa9tetm7CeIzgH84KU5UW4XWggHy9
	D14W4SnPKFTUxNq991bfpXkvAbZTBw+rzKFKmG9ZcRsNhvZzwOOOs9WqBsGxGPNL8xqeuskHqcPRM
	7GXyimcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mJQi4-00BK89-IA; Fri, 27 Aug 2021 01:31:08 +0000
Received: from regular1.263xmail.com ([211.150.70.206])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mJQi0-00BK7k-NE
 for linux-rockchip@lists.infradead.org; Fri, 27 Aug 2021 01:31:06 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id 226A11B6D;
 Fri, 27 Aug 2021 09:30:56 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.19] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P702T139881204397824S1630027855737448_; 
 Fri, 27 Aug 2021 09:30:56 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <5a3fa2c24523a228756e99ae0148fe0c>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: alsa-devel@alsa-project.org
X-RCPT-COUNT: 6
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_v1_6/7=5d_ASoC=3a_dt-bindings=3a_rockchip?=
 =?UTF-8?B?OiBwZG06IERvY3VtZW50IHByb3BlcnR5ICdyb2NrY2hpcCxwYXRoLW1hcCfjgJA=?=
 =?UTF-8?B?6K+35rOo5oSP77yM6YKu5Lu255Sxcm9iaGVycmluZzJAZ21haWwuY29t5Luj5Y+R?=
 =?UTF-8?B?44CR?=
To: Rob Herring <robh@kernel.org>
Cc: broonie@kernel.org, heiko@sntech.de, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, alsa-devel@alsa-project.org
References: <1629791446-13528-1-git-send-email-sugar.zhang@rock-chips.com>
 <1629791656-13698-1-git-send-email-sugar.zhang@rock-chips.com>
 <YSUlPU+yxepPrcvL@robh.at.kernel.org>
From: sugar zhang <sugar.zhang@rock-chips.com>
Message-ID: <8b702562-e0b0-fb4e-14f5-8b5419036a0a@rock-chips.com>
Date: Fri, 27 Aug 2021 09:30:54 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YSUlPU+yxepPrcvL@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210826_183105_047190_FB007109 
X-CRM114-Status: GOOD (  13.53  )
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

SGkgUm9iLAoKT24gMjAyMS84LzI1IDA6NTgsIFJvYiBIZXJyaW5nIHdyb3RlOgo+IE9uIFR1ZSwg
QXVnIDI0LCAyMDIxIGF0IDAzOjU0OjE1UE0gKzA4MDAsIFN1Z2FyIFpoYW5nIHdyb3RlOgo+PiBU
aGlzIGlzIGFuIG9wdGlvbmFsIHByb3BlcnR5IHRvIGRlc2NyaWJlIGRhdGEgcGF0aCBtYXBwaW5n
Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBTdWdhciBaaGFuZyA8c3VnYXIuemhhbmdAcm9jay1jaGlw
cy5jb20+Cj4+IC0tLQo+Pgo+PiAgIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9z
b3VuZC9yb2NrY2hpcCxwZG0udHh0IHwgMTYgKysrKysrKysrKysrKysrKwo+PiAgIDEgZmlsZSBj
aGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3Mvc291bmQvcm9ja2NoaXAscGRtLnR4dCBiL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb3VuZC9yb2NrY2hpcCxwZG0udHh0Cj4+IGluZGV4IDU0
ZDk0NDM4Li5iMmQ3ZTQ3IDEwMDY0NAo+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3Mvc291bmQvcm9ja2NoaXAscGRtLnR4dAo+PiArKysgYi9Eb2N1bWVudGF0aW9uL2Rl
dmljZXRyZWUvYmluZGluZ3Mvc291bmQvcm9ja2NoaXAscGRtLnR4dAo+PiBAQCAtMjQsNiArMjQs
MjIgQEAgUmVxdWlyZWQgcHJvcGVydGllczoKPj4gICAJICAgICBwaW5jdHJsLW5hbWVzLiBTZWUg
Li4vcGluY3RybC9waW5jdHJsLWJpbmRpbmdzLnR4dAo+PiAgIAkgICAgIGZvciBkZXRhaWxzIG9m
IHRoZSBwcm9wZXJ0eSB2YWx1ZXMuCj4+ICAgCj4+ICtPcHRpb25hbCBwcm9wZXJ0aWVzOgo+PiAr
LSByb2NrY2hpcCxwYXRoLW1hcDogVGhpcyBpcyBhIHZhcmlhYmxlIGxlbmd0aCBhcnJheSwgdGhh
dCBzaG93cyB0aGUgbWFwcGluZwo+IFRoZSBzY2hlbWEgc2F5cyB0aGlzIGlzIGEgZml4ZWQgbGVu
Z3RoIGFycmF5LgoKQWN0dWFsbHksIGl0IHZhcmllcyBkZXBlbmRzIG9uIGRpZmZlcmVudCBjb250
cm9sbGVyIG9yIGFwcGxpY2F0aW9uLiAKY29uc2lkZXJpbmcgdGhlIHNpdHVhdGlvbjoKCmZvciA0
IGNoYW5uZWwsIHdlIHVzZSBwYXRoMC8xLCBhbmQgaHcgd2lyZWQgdG8gc2RpMS8zLiB3ZSBjYW4g
bWFwIHRoZW0gCnRvIHBhdGgwLzEgYXMgZm9sbG93czoKCnJvY2tjaGlwLHBhdGgtbWFwID0gPDEg
Mz47Cgo+Cj4+ICsgIG9mIFNESXggdG8gUEFUSHguIEJ5IGRlZmF1bHQsIHRoZXkgYXJlIG9uZS10
by1vbmUgbWFwcGluZyBhcyBmb2xsb3dzOgo+PiArCj4+ICsgICBwYXRoMCA8LS0gc2RpMAo+PiAr
ICAgcGF0aDEgPC0tIHNkaTEKPj4gKyAgIHBhdGgyIDwtLSBzZGkyCj4+ICsgICBwYXRoMyA8LS0g
c2RpMwo+PiArCj4+ICsgIGUuZy4gInJvY2tjaGlwLHBhdGgtbWFwID0gPDMgMiAxIDA+IiBtZWFu
cyB0aGUgbWFwcGluZyBhcyBmb2xsb3dzOgo+PiArCj4+ICsgICBwYXRoMCA8LS0gc2RpMwo+PiAr
ICAgcGF0aDEgPC0tIHNkaTIKPj4gKyAgIHBhdGgyIDwtLSBzZGkxCj4+ICsgICBwYXRoMyA8LS0g
c2RpMAo+PiArCj4+ICAgRXhhbXBsZSBmb3IgcmszMzI4IFBETSBjb250cm9sbGVyOgo+PiAgIAo+
PiAgIHBkbTogcGRtQGZmMDQwMDAwIHsKPj4gLS0gCj4+IDIuNy40Cj4+Cj4+Cj4+Cj4+Cj4KPgot
LSAKQmVzdCBSZWdhcmRzIQrlvKDlrablub8vU3VnYXIK55Ge6Iqv5b6u55S15a2Q6IKh5Lu95pyJ
6ZmQ5YWs5Y+4ClJvY2tjaGlwIEVsZWN0cm9uaWNzIENvLiwgTHRkLgoKCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
