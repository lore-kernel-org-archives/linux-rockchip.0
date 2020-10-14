Return-Path: <SRS0=XvIT=DV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23F43C433DF
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 00:27:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B528F2078A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 00:27:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="w3myL7Qi"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B528F2078A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+9XhY4ptd1LVoAaljzVwAwGkCRbjgzvXPo9XNTilCm8=; b=w3myL7QiRMBJIml2aOVLg1EQd
	rnJV9CTj2xVS3A5sG9exVX6A2xenNmIk4B34GoITxv7sHNKSgOHCOppoALiwiyrzq87z0wK8/owit
	zj6CwG2y8uk9shiJzQimLtHBVKR1RPdKuTVYmKVn9AoDfjOfM7tYZnrikJO8lHoVzDLaP913kr90y
	M7EnriL+4cYI66juXAH6CKidwVfgD4sl61p6hb3wJ9pHIXlX14mhxBv7C0bBCbQgDXeOc5Em07Adf
	c9SOZm7ox1I0vEbt0R0RnvxUuRYgbSqcI7f8ri2xxeBK90DI3QJRY9nN6/wblACo8mvL1onO9s9bw
	dtg1ookFA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSUdg-0004c6-Vo; Wed, 14 Oct 2020 00:27:33 +0000
Received: from regular1.263xmail.com ([211.150.70.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSUdC-0004Oh-JH; Wed, 14 Oct 2020 00:27:08 +0000
Received: from localhost (unknown [192.168.167.8])
 by regular1.263xmail.com (Postfix) with ESMTP id 5181C7C4;
 Wed, 14 Oct 2020 08:27:00 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.120] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P2450T140206569150208S1602635219176695_; 
 Wed, 14 Oct 2020 08:27:00 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <ef929fe8e4cc1e537cc2cf17bf1f3b56>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: zyf@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v10 4/8] arm64: dts: rockchip: Add NFC node for RK3308 SoC
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>, miquel.raynal@bootlin.com,
 richard@nod.at, vigneshr@ti.com, robh+dt@kernel.org
References: <20200930020710.7394-1-yifeng.zhao@rock-chips.com>
 <20200930020710.7394-5-yifeng.zhao@rock-chips.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <53694a0d-6990-26a6-5e21-19fae9f3321f@rock-chips.com>
Date: Wed, 14 Oct 2020 08:26:58 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200930020710.7394-5-yifeng.zhao@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201013_202702_895138_51E24B75 
X-CRM114-Status: GOOD (  16.06  )
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-mtd@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Yifeng Zhao <zyf@rock-chips.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Ck9uIDIwMjAvOS8zMCDkuIrljYgxMDowNywgWWlmZW5nIFpoYW8gd3JvdGU6Cj4gRnJvbTogWWlm
ZW5nIFpoYW8gPHp5ZkByb2NrLWNoaXBzLmNvbT4KPgo+IEFkZCBOQU5EIEZMQVNIIENvbnRyb2xs
ZXIoTkZDKSBub2RlIGZvciBSSzMzMDggU29DLgo+Cj4gU2lnbmVkLW9mZi1ieTogWWlmZW5nIFpo
YW8gPHp5ZkByb2NrLWNoaXBzLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBZaWZlbmcgWmhhbyA8eWlm
ZW5nLnpoYW9Acm9jay1jaGlwcy5jb20+Cj4gLS0tCj4KPiBDaGFuZ2VzIGluIHYxMDogTm9uZQo+
IENoYW5nZXMgaW4gdjk6IE5vbmUKPiBDaGFuZ2VzIGluIHY4OiBOb25lCj4gQ2hhbmdlcyBpbiB2
NzogTm9uZQo+IENoYW5nZXMgaW4gdjY6IE5vbmUKPiBDaGFuZ2VzIGluIHY1OiBOb25lCj4gQ2hh
bmdlcyBpbiB2NDogTm9uZQo+IENoYW5nZXMgaW4gdjM6IE5vbmUKPiBDaGFuZ2VzIGluIHYyOiBO
b25lCj4KPiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzA4LmR0c2kgfCAxNSAr
KysrKysrKysrKysrKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspCgpMb29r
cyBnb29kIHRvIG1lLAoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmc8a2V2ZXIueWFuZ0Byb2NrLWNo
aXBzLmNvbT4KClRoYW5rcywKLSBLZXZlcgoKPgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzMwOC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazMzMDguZHRzaQo+IGluZGV4IDBjZjk1NDA2MjM4Ny4uZjk4YzY1YzliZDEzIDEwMDY0NAo+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzA4LmR0c2kKPiArKysgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzMwOC5kdHNpCj4gQEAgLTYyOSw2ICs2Mjks
MjEgQEAKPiAgIAkJc3RhdHVzID0gImRpc2FibGVkIjsKPiAgIAl9Owo+ICAgCj4gKwluZmM6IG5h
bmQtY29udHJvbGxlckBmZjRiMDAwMCB7Cj4gKwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMz
MDgtbmZjIiwKPiArCQkJICAgICAicm9ja2NoaXAscnYxMTA4LW5mYyI7Cj4gKwkJcmVnID0gPDB4
MCAweGZmNGIwMDAwIDB4MCAweDQwMDA+Owo+ICsJCWludGVycnVwdHMgPSA8R0lDX1NQSSA4MSBJ
UlFfVFlQRV9MRVZFTF9ISUdIPjsKPiArCQljbG9ja3MgPSA8JmNydSBIQ0xLX05BTkRDPiwgPCZj
cnUgU0NMS19OQU5EQz47Cj4gKwkJY2xvY2stbmFtZXMgPSAiYWhiIiwgIm5mYyI7Cj4gKwkJYXNz
aWduZWQtY2xvY2tzID0gPCZjcnUgU0NMS19OQU5EQz47Cj4gKwkJYXNzaWduZWQtY2xvY2stcmF0
ZXMgPSA8MTUwMDAwMDAwPjsKPiArCQlwaW5jdHJsLTAgPSA8JmZsYXNoX2FsZSAmZmxhc2hfYnVz
OCAmZmxhc2hfY2xlICZmbGFzaF9jc24wCj4gKwkJCSAgICAgJmZsYXNoX3JkbiAmZmxhc2hfcmR5
ICZmbGFzaF93cm4+Owo+ICsJCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gKwkJc3RhdHVz
ID0gImRpc2FibGVkIjsKPiArCX07Cj4gKwo+ICAgCWNydTogY2xvY2stY29udHJvbGxlckBmZjUw
MDAwMCB7Cj4gICAJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszMzA4LWNydSI7Cj4gICAJCXJl
ZyA9IDwweDAgMHhmZjUwMDAwMCAweDAgMHgxMDAwPjsKCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
