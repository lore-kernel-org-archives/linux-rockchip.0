Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E9195C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 08:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hvIFhtRRdh+2rlvIx0yGlc8f5sV6MDtN1ipyz2qyhSY=; b=1viFOoS4xRDmVp
	SK9+rwmAuoZojLSh9v8rWE4BE8ZyxY7Eb4GhcSh6jVnCUlYQZ/yiiaVgHATiPahb17mq81Myz92Sa
	t8qFO5/xig9GyZFD8+WzhPiuPl1ytqfqKDCi6ch5nsWLv5mvekWaeB8Wnf0BIBgaPvzSj1sYuU2L6
	kkPS6kNV5k8jq0uQqMuH1gVyXQ7R+7JJ63WrXiPLc0ziSfoAfcgdTPC4HNXYkZOmMMcllj2MP2wwf
	hYOe2YQQdfJv7xNR3efwNjvKBo1+TQjGESozyfIG0DFVM3uxjxJ1h0hkZ3M/dUBx9rNpRZdijGY8X
	Hp97b65x2YjOkT1GNTVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7t59-004UWA-2S;
	Tue, 28 Nov 2023 08:04:35 +0000
Received: from mail-m49218.qiye.163.com ([45.254.49.218])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7t55-004UUg-2z
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Nov 2023 08:04:33 +0000
DKIM-Signature: a=rsa-sha256;
	b=HAm8BYCe9hC7NPROBosIMFj9wasb0u+eJOzr6lpMGIMOAg26fKmaMpCkzi9ZRHDPSYlqMJvaTT0l8bHr4NV2vppOqf5wngABHhxCx8bC3YkshxgK479gp0RBsaUgHQ6aqsz+LfRiAV5V6VoiaJzWKoWbOx+VPmz9kwlUAH9AHD0=;
	s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=l5YDICzpqBFa88znUPxe1seE4a0/hNlDkTMuGOSDKdU=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.141] (unknown [58.22.7.114])
	by mail-m12762.qiye.163.com (Hmail) with ESMTPA id 01F355C0371;
	Tue, 28 Nov 2023 16:03:46 +0800 (CST)
Message-ID: <ebe46d19-954d-4dbb-82ba-a443058e9f4e@rock-chips.com>
Date: Tue, 28 Nov 2023 16:03:46 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/12] drm/rockchip: vop2: clear afbc en and transform
 bit for cluster window at linear mode
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 kever.yang@rock-chips.com, chris.obbard@collabora.com, s.hauer@pengutronix.de
References: <20231122125316.3454268-1-andyshrk@163.com>
 <20231122125425.3454549-1-andyshrk@163.com> <3927498.QCnGb9OGeP@diego>
From: Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <3927498.QCnGb9OGeP@diego>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxhCT1ZCSEkYTU1PSR9ISktVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8c14f4a803b229kuuu01f355c0371
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Myo6Lww5Qzw9Sx5MEBY3Ej8I
	AzcKCQ5VSlVKTEtKSk5DTUlDS0tPVTMWGhIXVRoVHwJVAhoVOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSEtKTTcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_000432_119049_97157B89 
X-CRM114-Status: GOOD (  10.34  )
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

SGkgSGVpa286CgpPbiAxMS8yNy8yMyAyMzowMiwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0g
TWl0dHdvY2gsIDIyLiBOb3ZlbWJlciAyMDIzLCAxMzo1NDoyNSBDRVQgc2NocmllYiBBbmR5IFlh
bjoKPj4gRnJvbTogQW5keSBZYW4gPGFuZHkueWFuQHJvY2stY2hpcHMuY29tPgo+Pgo+PiBUaGUg
ZW5hYmxlIGJpdCBhbmQgdHJhbnNmb3JtIG9mZnNldCBvZiBjbHVzdGVyIHdpbmRvd3Mgc2hvdWxk
IGJlCj4+IGNsZWFyZWQgd2hlbiBpdCB3b3JrIGF0IGxpbmVhciBtb2RlLCBvciB3ZSBtYXkgaGF2
ZSBhIGlvbW11IGZhdWx0Cj4+IGlzc3VlLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBBbmR5IFlhbiA8
YW5keS55YW5Acm9jay1jaGlwcy5jb20+Cj4gSSBndWVzcyBzYW1lIGhlcmU/Cj4KPiBGaXhlczog
NjA0YmU4NTU0N2NlICgiZHJtL3JvY2tjaGlwOiBBZGQgVk9QMiBkcml2ZXIiKQoKCkknbSBub3Qg
c3VyZSBpZiB3ZSBuZWVkIGEgRml4ZXMgdGFnIGhlcmUswqAgaW4gZmFjdCB0aGlzIGlzc3VlIG5l
dmVyIGhhcHBlbnMgb24KCnJrMzU2Ni84ICwgYmVjYXVzZSB0aGUgY2x1c3RlciB3aW5kb3dzIG9m
IHJrMzU2eCBvbmx5IHN1cHBvcnQgYWZiYyBmb3JtYXQsCgp0aGV5IGRvbid0IGhhdmUgYSBjaGFu
Y2UgdG8gc3dpdGNoIGJldHdlZW4gYWZiYyBhbmQgbGluZWFyIG1vZGUuCgpPZiBjb3Vyc2UsIHRo
ZSBsYWNrIHN1cHBvcnQgb2YgbGluZWFyIG1vZGUgb2YgcmszNTZ4IGNsdXN0ZXIgd2luZG93cyBp
cyBhIHRob3VnaHRsZXNzCgpvZiBJQyBkZXNpZ24sIGlmIGl0IHJlYWxseSBzdXBwb3J0IGJvdGgg
YWZiYyBhbmQgbGluZWFyIGZvcm1hdCwgd2UgaW5kZWVkIG5lZWQgdGhpcyBmaXguCgpUaGUgc2l0
dWF0aW9uIGlzIHRoZSBzYW1lIGFzIHBhdGNoIDAzLzEyLgoKU28gSSBob3BlIGZvbGxvdyB5b3Vy
IGFkdmljZSwgaWYgaXQgbmVlZCBhIEZpeGVzIHRhZyBoZXJlLgoKPgo+Cj4KPgo+IF9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0Cj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
