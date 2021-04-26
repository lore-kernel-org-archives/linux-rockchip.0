Return-Path: <SRS0=k14b=JX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 372B4C433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Apr 2021 09:50:10 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 247EC610A5
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Apr 2021 09:50:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 247EC610A5
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z3amPQfztfNfZ2dBZsrIgCxRdNUXpShFd3t5SYuMUdc=; b=AWqeJkT1ZSAPFBlaINqtM/GSj
	OUx0AfdSOId8qGfZpyZ/tJcmBAQFCevWBJSxuOOX9XsZE+MwEJCz6aR9fIjTz+6Ue9cno/Lkkx96i
	ofnNRYWA8zBth5C1NAUbHT8Wi/x5wREY9akL2Zacy0jUKjhKkz5iGmwbS+WnyKOGNeXGyw439Ypdm
	8nW7fGbw78pP/s54Z211SnnvVSXzJnAi2fGZybPS/IrFXm+QB+Etz2ya0Pl4FptT7iMX5vP8Q6flT
	p+RqGv9ckokik+1fG+jlJlZp0ByQK1o452ljb8HGy4uz1+ECsxcQSDbxulJGb/3f9Wau9+innyAPQ
	ctmJ3tuDA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1laxsR-007LyH-1o; Mon, 26 Apr 2021 09:50:03 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laxsN-007LxO-94
 for linux-rockchip@desiato.infradead.org; Mon, 26 Apr 2021 09:49:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=tzNkCWctIcEo0RR9uRdEJD1CrYAO2Bmi53TFjSfOAww=; b=hN6QCSe2cnAMwWh/lAeM8SMhHV
 sai8k/0W0IKee2FqFZ75Bi1NImQs5566CoRpdgr3IKLIoPum9votIuZmKu6eWssHReIrwDv5Z2VCo
 UFkm30t84rNWAEHEuBtXTgbT84Iq5UkgGglIUqRe8jZ996GZ+oGMrqrgqN2JF+7TS7uHY6C4bb7LX
 nnBP7fmrLcjg9UiFte0B1LH/ey9MXqtE3XOeeKrmUFsA4cZcLTe6UP7mrwxYzo4YbpKlCg/ZOE87R
 kt1igd9/zvKeFqbfd/1l0dq7NDL4alkDWnuYpEDAze5SVJov6m+eGxah5WPn293/l5TeuRfuf2aRs
 qclgyoyg==;
Received: from regular1.263xmail.com ([211.150.70.198])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laxsJ-00FsPW-0K
 for linux-rockchip@lists.infradead.org; Mon, 26 Apr 2021 09:49:56 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id 1C056760;
 Mon, 26 Apr 2021 17:49:49 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.8] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P19994T140046592108288S1619430587182149_; 
 Mon, 26 Apr 2021 17:49:48 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <e95a8b415f5e16b8e0881a892c3347bd>
X-RL-SENDER: david.wu@rock-chips.com
X-SENDER: wdc@rock-chips.com
X-LOGIN-NAME: david.wu@rock-chips.com
X-FST-TO: kernel@collabora.com
X-RCPT-COUNT: 13
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH 2/3] dt-bindings: net: dwmac: Add Rockchip DWMAC support
To: Ezequiel Garcia <ezequiel@collabora.com>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Cc: Jose Abreu <joabreu@synopsys.com>, Heiko Stuebner <heiko@sntech.de>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 kernel@collabora.com
References: <20210426024118.18717-1-ezequiel@collabora.com>
 <20210426024118.18717-2-ezequiel@collabora.com>
From: David Wu <david.wu@rock-chips.com>
Message-ID: <c82d5147-3545-03d5-47cc-cc93161d3414@rock-chips.com>
Date: Mon, 26 Apr 2021 17:49:47 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210426024118.18717-2-ezequiel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210426_024955_249600_2B9C6986 
X-CRM114-Status: GOOD (  15.60  )
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

SGkgRXplcXVpZWwsCgpHb29kIHdvcmssICB0aGlzIGlzIHdoYXQgSSBwbGFuIHRvIGRvLgpUaGFu
ayB5b3UuCgpSZXZpZXdlZC1ieTogRGF2aWQgV3UgPGRhdmlkLnd1QHJvY2stY2hpcHMuY29tPgoK
1NogMjAyMS80LzI2IMnPzucxMDo0MSwgRXplcXVpZWwgR2FyY2lhINC0tcA6Cj4gQWRkIFJvY2tj
aGlwIERXTUFDIGNvbnRyb2xsZXJzLCB3aGljaCBhcmUgYmFzZWQgb24gc25wcyxkd21hYy4KPiBT
b21lIG9mIHRoZSBTb0NzIHJlcXVpcmUgdXAgdG8gZWlnaHQgY2xvY2tzLCBzbyBtYXhJdGVtcwo+
IGZvciBjbG9ja3MgYW5kIGNsb2NrLW5hbWVzIG5lZWQgdG8gYmUgaW5jcmVhc2VkLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IEV6ZXF1aWVsIEdhcmNpYSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4KPiAt
LS0KPiAgIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9zbnBzLGR3bWFjLnlhbWwgICAgICAg
ICB8IDEzICsrKysrKysrKysrLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvbmV0L3NucHMsZHdtYWMueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9uZXQvc25wcyxkd21hYy55YW1sCj4gaW5kZXggMDY0MmIwZjU5NDkxLi4yZWRk
OGJlYTk5M2UgMTAwNjQ0Cj4gLS0tIGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L25ldC9zbnBzLGR3bWFjLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmlu
ZGluZ3MvbmV0L3NucHMsZHdtYWMueWFtbAo+IEBAIC01Niw2ICs1NiwxNSBAQCBwcm9wZXJ0aWVz
Ogo+ICAgICAgICAgICAtIGFtbG9naWMsbWVzb244bTItZHdtYWMKPiAgICAgICAgICAgLSBhbWxv
Z2ljLG1lc29uLWd4YmItZHdtYWMKPiAgICAgICAgICAgLSBhbWxvZ2ljLG1lc29uLWF4Zy1kd21h
Ywo+ICsgICAgICAgIC0gcm9ja2NoaXAscHgzMC1nbWFjCj4gKyAgICAgICAgLSByb2NrY2hpcCxy
azMxMjgtZ21hYwo+ICsgICAgICAgIC0gcm9ja2NoaXAscmszMjI4LWdtYWMKPiArICAgICAgICAt
IHJvY2tjaGlwLHJrMzI4OC1nbWFjCj4gKyAgICAgICAgLSByb2NrY2hpcCxyazMzMjgtZ21hYwo+
ICsgICAgICAgIC0gcm9ja2NoaXAscmszMzY2LWdtYWMKPiArICAgICAgICAtIHJvY2tjaGlwLHJr
MzM2OC1nbWFjCj4gKyAgICAgICAgLSByb2NrY2hpcCxyazMzOTktZ21hYwo+ICsgICAgICAgIC0g
cm9ja2NoaXAscnYxMTA4LWdtYWMKPiAgICAgICAgICAgLSBzbnBzLGR3bWFjCj4gICAgICAgICAg
IC0gc25wcyxkd21hYy0zLjUwYQo+ICAgICAgICAgICAtIHNucHMsZHdtYWMtMy42MTAKPiBAQCAt
ODksNyArOTgsNyBAQCBwcm9wZXJ0aWVzOgo+ICAgCj4gICAgIGNsb2NrczoKPiAgICAgICBtaW5J
dGVtczogMQo+IC0gICAgbWF4SXRlbXM6IDUKPiArICAgIG1heEl0ZW1zOiA4Cj4gICAgICAgYWRk
aXRpb25hbEl0ZW1zOiB0cnVlCj4gICAgICAgaXRlbXM6Cj4gICAgICAgICAtIGRlc2NyaXB0aW9u
OiBHTUFDIG1haW4gY2xvY2sKPiBAQCAtMTAxLDcgKzExMCw3IEBAIHByb3BlcnRpZXM6Cj4gICAK
PiAgICAgY2xvY2stbmFtZXM6Cj4gICAgICAgbWluSXRlbXM6IDEKPiAtICAgIG1heEl0ZW1zOiA1
Cj4gKyAgICBtYXhJdGVtczogOAo+ICAgICAgIGFkZGl0aW9uYWxJdGVtczogdHJ1ZQo+ICAgICAg
IGNvbnRhaW5zOgo+ICAgICAgICAgZW51bToKPiAKCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
