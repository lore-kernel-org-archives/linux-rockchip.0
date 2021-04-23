Return-Path: <SRS0=DeNp=JU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22D74C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Apr 2021 09:25:28 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0979061004
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Apr 2021 09:25:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0979061004
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y8W8n5/zACVqOw/KbPCz3VFggyS4VgYdArYg0tUfb3I=; b=XWT5yrvpKboQdt/Wp1d5A4RM5
	riuvmW3zvJMk8rQyxSrSTrgOyPRil2Gnc4Ty42zmMHPxtmOhp0Tui9DNyLuhl8MF2RDNsXkzASFSI
	l84vxMzRILMkrUdsm/H+gO+FJ5FEC4eMlJOkiv34Ur/vLr40Y85ooffhJ7zR1m3jzpJGlWyzDB1Mo
	pooo2avVPxx22kTh4VFdSX9U4OeOQ4vTvKhYXSaeLJ5R9A3tzY1bER8y/peloOb/JCuaYxMmlg3Gf
	N4IGNljr6/MLE33G6B9d858ZSYJwbWPRqgysOQs2ejec68FrnT98fJu2THvYtRys2eos9nbH4R9Iz
	l8NET1v7Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZs3u-001AcW-4L; Fri, 23 Apr 2021 09:25:22 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZs3a-001AZr-W0
 for linux-rockchip@desiato.infradead.org; Fri, 23 Apr 2021 09:25:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=a6utSO+Q4iw6VAHqflT0AjCsjWvK+XpYRfgDRM3WkIg=; b=zz0RoTLmv0FHCZJyQTEqzZvZ1l
 TjwHKUmVneZoh1Y2SL69y58BW8rLGMhl7VvIKnl02Bb21j/WJQ2pIv6eOC4XM4g60j78mtqgtmH+Z
 0Dz96b+sEbXMzpJUA6PL+ytzsN5GsbzWMl5vdhRFgiHG/oV15b1kfOKd1mkXRz86GxU0VAa7DYCUk
 K+1oMXU3JXxAROjSmt9NfJc0DlkH0RfP45JcQKIS6uC6zKqj9/gUwpvLkKL5dIob7+nJCGCpBWz7X
 0h8//c6kygoBW5a7BEaVlyHLCWQuV3qtTStjSdH+Vp8wx5Vsx+FZ8rZnzw/B7xNpc75LLlua6YrLx
 qnIymE6w==;
Received: from regular1.263xmail.com ([211.150.70.200])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZs3X-00EHjY-6B
 for linux-rockchip@lists.infradead.org; Fri, 23 Apr 2021 09:25:01 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 8D4001D50;
 Fri, 23 Apr 2021 17:24:52 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.8] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P1751T140588909328128S1619169891555006_; 
 Fri, 23 Apr 2021 17:24:52 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <b461bbc0964960a8c3512ac7df7186b9>
X-RL-SENDER: david.wu@rock-chips.com
X-SENDER: wdc@rock-chips.com
X-LOGIN-NAME: david.wu@rock-chips.com
X-FST-TO: kernel@collabora.com
X-RCPT-COUNT: 10
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH v2 net-next 0/3] net: stmmac: RK3566
To: Ezequiel Garcia <ezequiel@collabora.com>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: Jose Abreu <joabreu@synopsys.com>, Heiko Stuebner <heiko@sntech.de>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 kernel@collabora.com
References: <20210421203409.40717-1-ezequiel@collabora.com>
From: David Wu <david.wu@rock-chips.com>
Message-ID: <ae524a70-7886-27a0-1289-0c3a1c7371bb@rock-chips.com>
Date: Fri, 23 Apr 2021 17:24:51 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210421203409.40717-1-ezequiel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210423_022459_580571_8CEDF68D 
X-CRM114-Status: GOOD (  18.90  )
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
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRXplcXVpZWwsCgrU2iAyMDIxLzQvMjIgyc/O5zQ6MzQsIEV6ZXF1aWVsIEdhcmNpYSDQtLXA
Ogo+IE5vdyB0aGF0IFJLMzU2OCBTb0MgZGV2aWNldHJlZSB1cHN0cmVhbWluZyBpcyBoYXBwZW5p
bmcgWzFdLAo+IGhlcmUncyBhbm90aGVyIHJvdW5kIGZvciB0aGUgUkszNTY2IGR3bWFjLiBUaGVy
ZSB3YXNuJ3QgYW55IGNsZWFyCj4gY29uc2Vuc3VzIG9uIGhvdyB0byBpbXBsZW1lbnQgdGhlIHR3
byBpbnRlcmZhY2VzIHByZXNlbnQKPiBvbiBSSzM1NjgsIHNvIEkgZGVjaWRlZCB0byBkcm9wIHRo
YXQgYW5kIGp1c3Qgc3VibWl0IFJLMzU2NiBmb3Igbm93Lgo+IAo+IFRoaXMgaGFzIGJlZW4gdGVz
dGVkIG9uIGEgUGluZTY0IFJLMzU2NiBRdWFydHo2NCBNb2RlbCBCIGJvYXJkLAo+IERIQ1AgYW5k
IGlwZXJmIGFyZSBsb29raW5nIGdvb2QuCj4gCj4gRm9yIGFsbCB0aGUgcGVvcGxlIHRlc3Rpbmcs
IGhlcmUncyBRdWFydHogNjQgTW9kZWwgQiBkZXZpY2UgdHJlZQo+IHNuaXBwZXQ6Cj4gCj4gICAg
ICAgICAgZ21hYzE6IGV0aGVybmV0QGZlMDEwMDAwIHsKPiAgICAgICAgICAgICAgICAgIGNvbXBh
dGlibGUgPSAicm9ja2NoaXAscmszNTY2LWdtYWMiLCAic25wcyxkd21hYy00LjIwYSI7CgpJdCBp
cyBiZXR0ZXIgdG8gdXNlICJyb2NrY2hpcCxyazM1NjgtZ21hYyIgaGVyZSwgInJvY2tjaGlwLHJr
MzU2Ni1nbWFjIiAKaXMgbm90IGNvbXBhdGlibGUsIDM1NjggaGFzIHR3byBnbWFjcywgd2hpY2gg
YXJlIGNvbXBhdGlibGUgd2l0aCAzNTY2LgoKSWYgdGhlcmUgaXMgbm8gYmV0dGVyIHdheSwgdXNp
bmcgYnVzX2lkIGZyb20gYWxpYXMgaXMgZ29vZCwgaXQgaXMgYSAKZml4ZWQgaWQsIGFuZCBVLUJv
b3QgYWxzbyB1c2UgdGhlIGlkIHRvIHdyaXRlIE1BQyBhZGRyZXNzIGludG8ga2VybmVsIERUQi4K
CnBsYXQtPmJ1c19pZCA9IG9mX2FsaWFzX2dldF9pZChucCwgImV0aGVybmV0Iik7Cgo+ICAgICAg
ICAgICAgICAgICAgcmVnID0gPDB4MCAweGZlMDEwMDAwIDB4MCAweDEwMDAwPjsKPiAgICAgICAg
ICAgICAgICAgIGludGVycnVwdHMgPSA8R0lDX1NQSSAzMiBJUlFfVFlQRV9MRVZFTF9ISUdIPiwK
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8R0lDX1NQSSAyOSBJUlFfVFlQRV9MRVZF
TF9ISUdIPjsKPiAgICAgICAgICAgICAgICAgIGludGVycnVwdC1uYW1lcyA9ICJtYWNpcnEiLCAi
ZXRoX3dha2VfaXJxIjsKPiAgICAgICAgICAgICAgICAgIHJvY2tjaGlwLGdyZiA9IDwmZ3JmPjsK
PiAgICAgICAgICAgICAgICAgIGNsb2NrcyA9IDwmY3J1IFNDTEtfR01BQzE+LCA8JmNydSBTQ0xL
X0dNQUMxX1JYX1RYPiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgIDwmY3J1IFNDTEtfR01B
QzFfUlhfVFg+LCA8JmNydSBDTEtfTUFDMV9SRUZPVVQ+LAo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgPCZjcnUgQUNMS19HTUFDMT4sIDwmY3J1IFBDTEtfR01BQzE+LAo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgPCZjcnUgU0NMS19HTUFDMV9SWF9UWD4sIDwmY3J1IENMS19HTUFDMV9Q
VFBfUkVGPjsKPiAgICAgICAgICAgICAgICAgIGNsb2NrLW5hbWVzID0gInN0bW1hY2V0aCIsICJt
YWNfY2xrX3J4IiwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIm1hY19jbGtfdHgi
LCAiY2xrX21hY19yZWZvdXQiLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiYWNs
a19tYWMiLCAicGNsa19tYWMiLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAiY2xr
X21hY19zcGVlZCIsICJwdHBfcmVmIjsKPiAgICAgICAgICAgICAgICAgIHJlc2V0cyA9IDwmY3J1
IFNSU1RfQV9HTUFDMT47Cj4gICAgICAgICAgICAgICAgICByZXNldC1uYW1lcyA9ICJzdG1tYWNl
dGgiOwo+IAo+ICAgICAgICAgICAgICAgICAgc25wcyxtaXhlZC1idXJzdDsKPiAgICAgICAgICAg
ICAgICAgIHNucHMsdHNvOwo+IAo+ICAgICAgICAgICAgICAgICAgc25wcyxheGktY29uZmlnID0g
PCZnbWFjMV9zdG1tYWNfYXhpX3NldHVwPjsKPiAgICAgICAgICAgICAgICAgIHNucHMsbXRsLXJ4
LWNvbmZpZyA9IDwmZ21hYzFfbXRsX3J4X3NldHVwPjsKPiAgICAgICAgICAgICAgICAgIHNucHMs
bXRsLXR4LWNvbmZpZyA9IDwmZ21hYzFfbXRsX3R4X3NldHVwPjsKPiAgICAgICAgICAgICAgICAg
IHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gCj4gICAgICAgICAgICAgICAgICBtZGlvMTogbWRpbyB7
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGlibGUgPSAic25wcyxkd21hYy1tZGlv
IjsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MHgxPjsKPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgI3NpemUtY2VsbHMgPSA8MHgwPjsKPiAgICAgICAgICAg
ICAgICAgIH07Cj4gCj4gICAgICAgICAgICAgICAgICBnbWFjMV9zdG1tYWNfYXhpX3NldHVwOiBz
dG1tYWMtYXhpLWNvbmZpZyB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgIHNucHMsd3Jfb3Ny
X2xtdCA9IDw0PjsKPiAgICAgICAgICAgICAgICAgICAgICAgICAgc25wcyxyZF9vc3JfbG10ID0g
PDg+Owo+ICAgICAgICAgICAgICAgICAgICAgICAgICBzbnBzLGJsZW4gPSA8MCAwIDAgMCAxNiA4
IDQ+Owo+ICAgICAgICAgICAgICAgICAgfTsKPiAKPiAgICAgICAgICAgICAgICAgIGdtYWMxX210
bF9yeF9zZXR1cDogcngtcXVldWVzLWNvbmZpZyB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAg
IHNucHMscngtcXVldWVzLXRvLXVzZSA9IDwxPjsKPiAgICAgICAgICAgICAgICAgICAgICAgICAg
cXVldWUwIHt9Owo+ICAgICAgICAgICAgICAgICAgfTsKPiAKPiAgICAgICAgICAgICAgICAgIGdt
YWMxX210bF90eF9zZXR1cDogdHgtcXVldWVzLWNvbmZpZyB7Cj4gICAgICAgICAgICAgICAgICAg
ICAgICAgIHNucHMsdHgtcXVldWVzLXRvLXVzZSA9IDwxPjsKPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgcXVldWUwIHt9Owo+ICAgICAgICAgICAgICAgICAgfTsKPiAgICAgICAgICB9Owo+IAo+
IFdoaWxlIGhlcmUsIEknbSBhZGRpbmcgYSBzbWFsbCBwYXRjaCBmcm9tIERhdmlkIFd1LCBmb3Ig
c29tZQo+IHNhbml0eSBjaGVja3MgZm9yIGR3bWFjLXJvY2tjaGlwLXNwZWNpZmljIG5vbi1OVUxM
IG9wcy4KPiAKPiBUaGFua3MhCj4gCj4gWzFdIGh0dHA6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDIx
MDQyMTA2NTkyMS4yMzkxNy0xLWNsQHJvY2stY2hpcHMuY29tCj4gCj4gRGF2aWQgV3UgKDIpOgo+
ICAgIG5ldDogc3RtbWFjOiBkd21hYy1yazogQ2hlY2sgcGxhdGZvcm0tc3BlY2lmaWMgb3BzCj4g
ICAgbmV0OiBzdG1tYWM6IEFkZCBSSzM1NjYgU29DIHN1cHBvcnQKPiAKPiBFemVxdWllbCBHYXJj
aWEgKDEpOgo+ICAgIG5ldDogc3RtbWFjOiBEb24ndCBzZXQgaGFzX2dtYWMgaWYgaGFzX2dtYWM0
IGlzIHNldAo+IAo+ICAgLi4uL2JpbmRpbmdzL25ldC9yb2NrY2hpcC1kd21hYy50eHQgICAgICAg
ICAgIHwgICAxICsKPiAgIC4uLi9uZXQvZXRoZXJuZXQvc3RtaWNyby9zdG1tYWMvZHdtYWMtcmsu
YyAgICB8IDEyNiArKysrKysrKysrKysrKysrKy0KPiAgIDIgZmlsZXMgY2hhbmdlZCwgMTI0IGlu
c2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gCgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
