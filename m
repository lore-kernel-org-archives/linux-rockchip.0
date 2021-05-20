Return-Path: <SRS0=PymM=KP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1BE15C433B4
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 May 2021 01:28:24 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 574EE611AD
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 May 2021 01:28:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 574EE611AD
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wX7/UtFgAn4ku5ZRNOzVvf90gQGb1qHHW3kY96GsWSk=; b=mkZTXK0PHOCgcvpk2RDKR8vTA
	+iRpPiCckz8brzQITmXN5EdRhtFIU89Lb427m+IlrAEGJo20sDySSzcdbDOA02Xkq0JrfSA1YcynF
	n05tbI3iJNWxJq6Fd2Qht7Cy9AhbptiTXwwxYkyGMbzvkXEc9n9nX593Eo7ppnMd35HupvEx4fgqX
	+Lr2qgXGfqqYHm+JzULLScuFfR0V/4ChYosJiZJrL0hWxtYwHVu7r7RIvcb1Knm2KnfeAWvTM/duE
	aau0eiRtehtjY8lisu/7yXvtZnk/atOd+tUQNqQxfon4HvBtZ4OhxSf/sODfwNnw/1MNDbTSINtuD
	Qb+COtq1g==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljXTx-005YlP-O8; Thu, 20 May 2021 01:28:14 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljXTh-005Yip-86; Thu, 20 May 2021 01:28:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=TfVC9g6tHYHqjkR1KWnhvu+SIwKPLhwkg4SGdq+bDsY=; b=FnZ2F56vM2W7500B5zUaGoki6E
 2dbOokq6JJkx3333voSTxf5Yt45oFEAjkIWK8RZ7RI41fLQnhxh4wCjsPlX/4EEAdHibJF4DzK7qy
 saKl2VkLhAWkhfJT2s0sSK2ekwfoyI2dcdkM0+F9L0pb2Dim5jXRuiiO/HqACNyKL3FdAVWP9X8XC
 VHIqDdIDpWK0Z2R6qByJA3OHoMbWsMLvDGlDak7XnKqhuyChYfxxxcAM0jfe75zdpsRNB4S0eBBt5
 TeQttHXkZx4JlkmMlhncZ6K/u4noKG8RuF43dr8svOsDIKHUDjA0uuHpioqCzd3aq2Qs6T/OSoNfL
 IM5zHrtw==;
Received: from regular1.263xmail.com ([211.150.70.199])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljXTd-00Fsk3-6J; Thu, 20 May 2021 01:27:54 +0000
Received: from localhost (unknown [192.168.167.13])
 by regular1.263xmail.com (Postfix) with ESMTP id 7564612ED;
 Thu, 20 May 2021 09:27:41 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.236] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P32138T140105872516864S1621474013383973_; 
 Thu, 20 May 2021 09:26:59 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6158bed3826150f8b8c821007edef603>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: linux-kernel@vger.kernel.org
X-RCPT-COUNT: 9
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH] clk: rockchip: fix rk3568 cpll clk gate bits
To: Peter Geis <pgwipeout@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>
Cc: linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20210519174149.3691335-1-pgwipeout@gmail.com>
From: "elaine.zhang" <zhangqing@rock-chips.com>
Organization: rockchip
Message-ID: <91fb0c11-1626-4a8c-7e01-2ef71faddc64@rock-chips.com>
Date: Thu, 20 May 2021 09:26:53 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210519174149.3691335-1-pgwipeout@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210519_182753_424395_21DF36E6 
X-CRM114-Status: GOOD (  17.52  )
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

SGk6IE1pY2hhZWw6CgpUaGFua3MgZm9yIHlvdXIgcGF0Y2guCgpSZXZpZXdlZC1ieTogRWxhaW5l
IFpoYW5nPHpoYW5ncWluZ0Byb2NrLWNoaXBzLmNvbT4KCtTaIDIwMjEvNS8yMCDJz87nMTo0MSwg
UGV0ZXIgR2VpcyDQtLXAOgo+IFRoZSBjcGxsIGNsayBnYXRlIGJpdHMgaGFkIGFuIG9yZGVyaW5n
IGlzc3VlLiBUaGlzIGxlZCB0byB0aGUgbG9zcyBvZgo+IHRoZSBib290IHNkbW1jIGNvbnRyb2xs
ZXIgd2hlbiB0aGUgZ21hYyB3YXMgc2h1dCBkb3duIHdpdGg6Cj4gYGlwIGxpbmsgc2V0IGV0aDAg
ZG93bmAKPiBhcyB0aGUgY3BsbF8xMDBtIHdhcyBzaHV0IG9mZiBpbnN0ZWFkIG9mIHRoZSBjcGxs
XzYycDUuCj4gY3BsbF82MnA1LCBjcGxsXzUwbSwgY3BsbF8yNW0gd2VyZSBhbGwgb2ZmIGJ5IG9u
ZSB3aXRoIGNwbGxfMTAwbQo+IG1pc3BsYWNlZC4KPgo+IEZpeGVzOiBjZjkxMWQ4OWM0YzUgKCJj
bGs6IHJvY2tjaGlwOiBhZGQgY2xvY2sgY29udHJvbGxlciBmb3IgcmszNTY4IikKPgo+IFNpZ25l
ZC1vZmYtYnk6IFBldGVyIEdlaXMgPHBnd2lwZW91dEBnbWFpbC5jb20+Cj4gLS0tCj4gICBkcml2
ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszNTY4LmMgfCAxMCArKysrKy0tLS0tCj4gICAxIGZpbGUg
Y2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA1IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazM1NjguYyBiL2RyaXZlcnMvY2xrL3JvY2tjaGlw
L2Nsay1yazM1NjguYwo+IGluZGV4IDk0NmVhMmY0NWJmMy4uNzVjYTg1NWU3MjBkIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazM1NjguYwo+ICsrKyBiL2RyaXZlcnMv
Y2xrL3JvY2tjaGlwL2Nsay1yazM1NjguYwo+IEBAIC00NTQsMTcgKzQ1NCwxNyBAQCBzdGF0aWMg
c3RydWN0IHJvY2tjaGlwX2Nsa19icmFuY2ggcmszNTY4X2Nsa19icmFuY2hlc1tdIF9faW5pdGRh
dGEgPSB7Cj4gICAJQ09NUE9TSVRFX05PTVVYKENQTExfMTI1TSwgImNwbGxfMTI1bSIsICJjcGxs
IiwgQ0xLX0lHTk9SRV9VTlVTRUQsCj4gICAJCQlSSzM1NjhfQ0xLU0VMX0NPTig4MCksIDAsIDUs
IERGTEFHUywKPiAgIAkJCVJLMzU2OF9DTEtHQVRFX0NPTigzNSksIDEwLCBHRkxBR1MpLAo+ICsJ
Q09NUE9TSVRFX05PTVVYKENQTExfMTAwTSwgImNwbGxfMTAwbSIsICJjcGxsIiwgQ0xLX0lHTk9S
RV9VTlVTRUQsCj4gKwkJCVJLMzU2OF9DTEtTRUxfQ09OKDgyKSwgMCwgNSwgREZMQUdTLAo+ICsJ
CQlSSzM1NjhfQ0xLR0FURV9DT04oMzUpLCAxMSwgR0ZMQUdTKSwKPiAgIAlDT01QT1NJVEVfTk9N
VVgoQ1BMTF82MlA1TSwgImNwbGxfNjJwNSIsICJjcGxsIiwgQ0xLX0lHTk9SRV9VTlVTRUQsCj4g
ICAJCQlSSzM1NjhfQ0xLU0VMX0NPTig4MCksIDgsIDUsIERGTEFHUywKPiAtCQkJUkszNTY4X0NM
S0dBVEVfQ09OKDM1KSwgMTEsIEdGTEFHUyksCj4gKwkJCVJLMzU2OF9DTEtHQVRFX0NPTigzNSks
IDEyLCBHRkxBR1MpLAo+ICAgCUNPTVBPU0lURV9OT01VWChDUExMXzUwTSwgImNwbGxfNTBtIiwg
ImNwbGwiLCBDTEtfSUdOT1JFX1VOVVNFRCwKPiAgIAkJCVJLMzU2OF9DTEtTRUxfQ09OKDgxKSwg
MCwgNSwgREZMQUdTLAo+IC0JCQlSSzM1NjhfQ0xLR0FURV9DT04oMzUpLCAxMiwgR0ZMQUdTKSwK
PiArCQkJUkszNTY4X0NMS0dBVEVfQ09OKDM1KSwgMTMsIEdGTEFHUyksCj4gICAJQ09NUE9TSVRF
X05PTVVYKENQTExfMjVNLCAiY3BsbF8yNW0iLCAiY3BsbCIsIENMS19JR05PUkVfVU5VU0VELAo+
ICAgCQkJUkszNTY4X0NMS1NFTF9DT04oODEpLCA4LCA2LCBERkxBR1MsCj4gLQkJCVJLMzU2OF9D
TEtHQVRFX0NPTigzNSksIDEzLCBHRkxBR1MpLAo+IC0JQ09NUE9TSVRFX05PTVVYKENQTExfMTAw
TSwgImNwbGxfMTAwbSIsICJjcGxsIiwgQ0xLX0lHTk9SRV9VTlVTRUQsCj4gLQkJCVJLMzU2OF9D
TEtTRUxfQ09OKDgyKSwgMCwgNSwgREZMQUdTLAo+ICAgCQkJUkszNTY4X0NMS0dBVEVfQ09OKDM1
KSwgMTQsIEdGTEFHUyksCj4gICAJQ09NUE9TSVRFX05PTVVYKDAsICJjbGtfb3NjMF9kaXZfNzUw
ayIsICJ4aW4yNG0iLCBDTEtfSUdOT1JFX1VOVVNFRCwKPiAgIAkJCVJLMzU2OF9DTEtTRUxfQ09O
KDgyKSwgOCwgNiwgREZMQUdTLAoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
