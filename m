Return-Path: <SRS0=zXd4=NQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE97BC4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Aug 2021 09:31:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 47ECC610D0
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Aug 2021 09:31:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 47ECC610D0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IFvFgS1ABSdvO/69Fm39jY3AqPhR13QmsWJ77IqTTcI=; b=E1QN5s8si1gwTw57v1cu4gjOyi
	ZnYZc8jlYj3PnZSpuNoPeVNGW2p4HomnzUqd6Ia+kOGqdNK/O2+0tjQUAq6056RNJP30kqgnzh6Cn
	F6E4F02mcnc2xyNEEhdq+H74c/Gb8QYFduRnHi1SSqzlAUdwq9FwU/91Egv6/DBFJxf21IWKaQ2j1
	8g6gj4WfdkkZOjdpdb5j3fUCfhfyRFrGf9SA69lb+SnbrZ6s0ihdap858//VDbFD85HYsDKQrQn9a
	WQfjGxNL9DBCeQfbHIPcwmQ4pjFn9b7JfQ3elkhqgQyLzNV6nWOeZU44i+FcVpvwytIeTAPdSjCRc
	DTAUsmmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIpFX-0069hK-Hv; Wed, 25 Aug 2021 09:31:11 +0000
Received: from regular1.263xmail.com ([211.150.70.203])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIpFS-0069f6-4a
 for linux-rockchip@lists.infradead.org; Wed, 25 Aug 2021 09:31:10 +0000
Received: from localhost (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id 70121A13;
 Wed, 25 Aug 2021 17:30:27 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.19] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P4269T140595525805824S1629883826350068_; 
 Wed, 25 Aug 2021 17:30:27 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <1de1da1e743f70d276baa9b3dbdfbda5>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: alsa-devel@alsa-project.org
X-RCPT-COUNT: 6
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_v2_10/15=5d_ASoC=3a_dt-bindings=3a_rockchi?=
 =?UTF-8?Q?p=3a_i2s=3a_Document_property_for_playback/capture=e3=80=90?=
 =?UTF-8?B?6K+35rOo5oSP77yM6YKu5Lu255Sxcm9iaGVycmluZzJAZ21haWwuY29t5Luj5Y+R?=
 =?UTF-8?B?44CR?=
To: Rob Herring <robh@kernel.org>
Cc: broonie@kernel.org, heiko@sntech.de, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, alsa-devel@alsa-project.org
References: <1629796561-4025-1-git-send-email-sugar.zhang@rock-chips.com>
 <1629796682-4170-5-git-send-email-sugar.zhang@rock-chips.com>
 <YSUnL4xISXIPLdRv@robh.at.kernel.org>
From: sugar zhang <sugar.zhang@rock-chips.com>
Message-ID: <eceed26d-6d29-17b7-2996-5fe479676a83@rock-chips.com>
Date: Wed, 25 Aug 2021 17:30:26 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <YSUnL4xISXIPLdRv@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210825_023106_475284_6CAF721C 
X-CRM114-Status: GOOD (  13.62  )
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

SGkgUm9iLAoKT24gMjAyMS84LzI1IDE6MDYsIFJvYiBIZXJyaW5nIHdyb3RlOgo+IE9uIFR1ZSwg
QXVnIDI0LCAyMDIxIGF0IDA1OjE3OjU3UE0gKzA4MDAsIFN1Z2FyIFpoYW5nIHdyb3RlOgo+PiBU
aGlzIHBhdGNoIGRvY3VtZW50cyBwcm9wZXJ0eSBmb3IgcGxheWJhY2stb25seSBhbmQgY2FwdHVy
ZS1vbmx5Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBTdWdhciBaaGFuZyA8c3VnYXIuemhhbmdAcm9j
ay1jaGlwcy5jb20+Cj4+IC0tLQo+Pgo+PiBDaGFuZ2VzIGluIHYyOiBOb25lCj4+Cj4+ICAgRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvdW5kL3JvY2tjaGlwLWkycy55YW1sIHwg
MTAgKysrKysrKysrKwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspCj4+Cj4+
IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc291bmQvcm9j
a2NoaXAtaTJzLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvc291bmQv
cm9ja2NoaXAtaTJzLnlhbWwKPj4gaW5kZXggOWY5Y2M0OC4uMDA1YjZlNiAxMDA2NDQKPj4gLS0t
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NvdW5kL3JvY2tjaGlwLWkycy55
YW1sCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9zb3VuZC9yb2Nr
Y2hpcC1pMnMueWFtbAo+PiBAQCAtODEsNiArODEsMTYgQEAgcHJvcGVydGllczoKPj4gICAgICAg
ZGVzY3JpcHRpb246Cj4+ICAgICAgICAgTWF4IHBsYXliYWNrIGNoYW5uZWxzLCBpZiBub3Qgc2V0
LCA4IGNoYW5uZWxzIGRlZmF1bHQuCj4+ICAgCj4+ICsgIHJvY2tjaGlwLGNhcHR1cmUtb25seToK
Pj4gKyAgICB0eXBlOiBib29sZWFuCj4+ICsgICAgZGVzY3JpcHRpb246Cj4+ICsgICAgICBTcGVj
aWZ5IHRoYXQgdGhlIGNvbnRyb2xsZXIgaGFzIGNhcHR1cmUgb25seSBjYXBhYmlsaXR5Lgo+PiAr
Cj4+ICsgIHJvY2tjaGlwLHBsYXliYWNrLW9ubHk6Cj4+ICsgICAgdHlwZTogYm9vbGVhbgo+PiAr
ICAgIGRlc2NyaXB0aW9uOgo+PiArICAgICAgU3BlY2lmeSB0aGF0IHRoZSBjb250cm9sbGVyIGhh
cyBwbGF5YmFjayBvbmx5IGNhcGFiaWxpdHkuCj4gSW4gdGhlIFJvY2tjaGlwIFRETS1JMlMgYmlu
ZGluZ1sxXSwgdGhlc2Ugd2VyZSBkcm9wcGVkLiBQZXJoYXBzIGNvbW1lbnQKPiB0aGVyZSB3aHkg
dGhleSBhcmUgbmVlZGVkLgoKSXQgd2FzIHVzZWQgdG8gc3BlY2lmeSB0aGUgY29udHJvbGxlciBj
YXBhdGlibGl0eSwgc29tZSBjb250cm9sbGVyIGhhcyAKY2FwdHVyZSBvciBwbGF5YmFjayBvbmx5
LgoKbWF5YmUgd2UgY2FuIGltcGxlbWVudCBpdCBieSBqdWRnZSBwcm9wZXJ0eSAnZG1hLW5hbWVz
Jy7CoCBzdWNoIGFzOgoKb2ZfcHJvcGVydHlfZm9yX2VhY2hfc3RyaW5nKG5wLCAiZG1hLW5hbWVz
IiwgZG1hX25hbWVzLCBuYW1lKQoKaWYgKCFzdHJjbXAobmFtZSwgInR4IikpCgogwqDCoMKgIGhh
cyBjYXB0dXJlIGNhcGFiaWxpdHkuLi4KCmlmICghc3RyY21wKG5hbWUsICJyeCIpKQoKIMKgwqDC
oCBoYXMgY2FwdHVyZSBjYXBhYmlsaXR5Li4uCgp3aWxsIGRvIGluIHYzLgoKPgo+IFJvYgo+Cj4g
WzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xrbWwvMjAyMTA4MjAxODI3MzEuMjkzNzAtMS1m
cmF0dGFyb2xpLm5pY29sYXNAZ21haWwuY29tLwo+Cj4KPgotLSAKQmVzdCBSZWdhcmRzIQrlvKDl
rablub8vU3VnYXIK55Ge6Iqv5b6u55S15a2Q6IKh5Lu95pyJ6ZmQ5YWs5Y+4ClJvY2tjaGlwIEVs
ZWN0cm9uaWNzIENvLiwgTHRkLgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
