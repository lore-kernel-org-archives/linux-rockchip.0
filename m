Return-Path: <SRS0=k14b=JX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0EDF3C433B4
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Apr 2021 09:44:09 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 31CEF6103E
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Apr 2021 09:44:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 31CEF6103E
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8wG3TGK8moeB5gFGy8affudju40fJF7T0B0DfADkwr0=; b=jK5LWQzYzyEYhu4wSKP2cXqGk
	JwScfRb/Va6IyISUVt0r2t8oULJiTWUkFmEKPFbjGYD0Ut30eTHIBgeZj9RfhWtlkx/Q71sZLo6Z5
	DYjJxCgSFPNuYkj9w9zJs4D+Co8qhkZOtPK/tdCa1GnkkJCWdBO+9SgOotDlsWuRZe+HHwxZAh3d+
	5GKdKQCN/KXN8GbxNkXwYCjGgAp6jxZbVIjN9L6dSj/XPNZzgMv6GNW+ruSnQeLX/wYJykgW53Ms9
	LPixNrbcg860dCuVf75LpPjXkaXyi8aHenDRrFzPS+MaJfKZ0DgIaYlJXvS88q4gwNu/DJZkbHtnT
	8l9FAhm8Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1laxmc-007LNg-Sn; Mon, 26 Apr 2021 09:44:02 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laxmb-007LNV-K3
 for linux-rockchip@desiato.infradead.org; Mon, 26 Apr 2021 09:44:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=jJ3swJAc5Ifv/xeRc+Y1oExas5jvAtWMsWVf4Qnn3pk=; b=Qu42Cwj+TlgYF/a2lslJRDMLKB
 4hfFMk4vn9LV+sOMr9qpa3eQ1KIZ0OFXatjBuCyW+assugQJqYm5RB14KE54EdhYmYjeNN+R1dR+B
 WYHDV30Dk99UYMzhBIAe/M1wUHFJa/p7wWkjoghQPxKY+PoBhS3OgR9z+n9r4aK7liY6s975MTjfw
 5oillbLyHWdzE/gdg4GUn9g0CnszC2ppjlgoUmXNzFqvJ90HLVHE1orGAxZt6wyOc395w3yBXrVal
 xHsVll1cKUpAB2jqJM9EcQlYNgHsyuk8OtTmfRXYmqGtuBYyf2E0iYnoveMUnBD4qk+We0yP2YKt7
 7NsS/ykQ==;
Received: from regular1.263xmail.com ([211.150.70.204])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1laxmY-00FsFO-UW
 for linux-rockchip@lists.infradead.org; Mon, 26 Apr 2021 09:44:00 +0000
Received: from localhost (unknown [192.168.167.69])
 by regular1.263xmail.com (Postfix) with ESMTP id 3CBAC5F0;
 Mon, 26 Apr 2021 17:43:52 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.8] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P19994T140047258068736S1619430229000270_; 
 Mon, 26 Apr 2021 17:43:49 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <961b36582c8993df6ca2161b3cb0b89a>
X-RL-SENDER: david.wu@rock-chips.com
X-SENDER: wdc@rock-chips.com
X-LOGIN-NAME: david.wu@rock-chips.com
X-FST-TO: kernel@collabora.com
X-RCPT-COUNT: 13
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Remove unnecessary reset in
 rk3328.dtsi
To: Ezequiel Garcia <ezequiel@collabora.com>, netdev@vger.kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Cc: Jose Abreu <joabreu@synopsys.com>, Heiko Stuebner <heiko@sntech.de>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Peter Geis <pgwipeout@gmail.com>, Kever Yang <kever.yang@rock-chips.com>,
 Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 kernel@collabora.com
References: <20210426024118.18717-1-ezequiel@collabora.com>
From: David Wu <david.wu@rock-chips.com>
Message-ID: <6051db67-d662-77f5-2fd9-2460c6abbe51@rock-chips.com>
Date: Mon, 26 Apr 2021 17:43:49 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210426024118.18717-1-ezequiel@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210426_024359_159564_DE7C06F1 
X-CRM114-Status: GOOD (  15.56  )
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

SGkgRXplcXVpZWwsCgrU2iAyMDIxLzQvMjYgyc/O5zEwOjQxLCBFemVxdWllbCBHYXJjaWEg0LS1
wDoKPiBSb2NrY2hpcCBEV01BQyBnbHVlIGRyaXZlciB1c2VzIHRoZSBwaHkgbm9kZSAocGh5LWhh
bmRsZSkKPiByZXNldCBzcGVjaWZpZXIsIGFuZCBub3QgYSAibWFjLXBoeSIgcmVzZXQgc3BlY2lm
aWVyLgo+IAo+IFJlbW92ZSBpdC4KPiAKCldlbGwgZG9uZSwgdGhlICJtYWMtcGh5IiByZXNldCBp
cyBub3QgcGFydCBvZiB0aGUgY29udHJvbGxlci4gU28KClJldmlld2VkLWJ5OiBEYXZpZCBXdSA8
ZGF2aWQud3VAcm9jay1jaGlwcy5jb20+Cgo+IFNpZ25lZC1vZmYtYnk6IEV6ZXF1aWVsIEdhcmNp
YSA8ZXplcXVpZWxAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzI4LmR0c2kgfCA0ICsrLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2Vy
dGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzI4LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzMyOC5kdHNpCj4gaW5kZXggNWJhYjYxNzg0NzM1Li4zZWQ2OWVjYmNmM2MgMTAwNjQ0Cj4g
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzMjguZHRzaQo+ICsrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzI4LmR0c2kKPiBAQCAtOTE2LDggKzkxNiw4
IEBAIGdtYWMycGh5OiBldGhlcm5ldEBmZjU1MDAwMCB7Cj4gICAJCQkgICAgICAibWFjX2Nsa190
eCIsICJjbGtfbWFjX3JlZiIsCj4gICAJCQkgICAgICAiYWNsa19tYWMiLCAicGNsa19tYWMiLAo+
ICAgCQkJICAgICAgImNsa19tYWNwaHkiOwo+IC0JCXJlc2V0cyA9IDwmY3J1IFNSU1RfR01BQzJQ
SFlfQT4sIDwmY3J1IFNSU1RfTUFDUEhZPjsKPiAtCQlyZXNldC1uYW1lcyA9ICJzdG1tYWNldGgi
LCAibWFjLXBoeSI7Cj4gKwkJcmVzZXRzID0gPCZjcnUgU1JTVF9HTUFDMlBIWV9BPjsKPiArCQly
ZXNldC1uYW1lcyA9ICJzdG1tYWNldGgiOwo+ICAgCQlwaHktbW9kZSA9ICJybWlpIjsKPiAgIAkJ
cGh5LWhhbmRsZSA9IDwmcGh5PjsKPiAgIAkJc25wcyx0eHBibCA9IDwweDQ+Owo+IAoKCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hp
cCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
