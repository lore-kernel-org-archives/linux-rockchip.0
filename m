Return-Path: <SRS0=C2RB=CM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCF78C433E7
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2020 10:02:47 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 85BA7207EA
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2020 10:02:47 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="oc/Vk4C2"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 85BA7207EA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=28bzE76jbgOwApq1lnzSSogJ9uVB64Nr/OvuE0NCcyg=; b=oc/Vk4C2ZThNu4ay6rB18JRtd
	CJreeri3LWHrL1jDEy4W7yvvAYHvpmgBKp1jDopvfgAdzj667fCdD7tsllQwX9K7LKlgpsejFe3Wq
	uX0OEX2uoMo4WNjNAzzeOEG0UANvddXmEBvnPihDtECjwXcmcbZKT0HxIQxRR6i3KccgrAHr3wgrL
	jaLVJJ4CccJcfJmE79ZOG9dH3sW7bqyQbT7G0HRkr9ZPAk5GRegwLNx47yJKd76z7D7ewzV9MHz9J
	sAgUwZIC8xrKlWsAvEPvTrOIq+pkNw6oP7Fqkyq1ANy0gcUZXBMUKNvhMNtOCILmIS+sXBJsxI3z4
	E8ylGUIpg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDm4q-0001X5-Sc; Thu, 03 Sep 2020 10:02:44 +0000
Received: from regular1.263xmail.com ([211.150.70.202])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDm4o-0001Vs-6y
 for linux-rockchip@lists.infradead.org; Thu, 03 Sep 2020 10:02:43 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id D451046E;
 Thu,  3 Sep 2020 18:02:37 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.120] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P23637T140495628007168S1599127357353308_; 
 Thu, 03 Sep 2020 18:02:38 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <9d5d9546b9483c57ae5a220dcf1449de>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: huangtao@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v2 3/6] clk: rockchip: Export rockchip_register_softrst()
To: Elaine Zhang <zhangqing@rock-chips.com>, heiko@sntech.de
References: <20200903063147.10237-1-zhangqing@rock-chips.com>
 <20200903063147.10237-4-zhangqing@rock-chips.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <44699e71-1b08-919f-ddf3-187aee67b8a0@rock-chips.com>
Date: Thu, 3 Sep 2020 18:02:36 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200903063147.10237-4-zhangqing@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200903_060242_504785_4EBEC8C0 
X-CRM114-Status: GOOD (  17.40  )
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
Cc: huangtao@rock-chips.com, xf@rock-chips.com, sboyd@kernel.org,
 mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 xxx@rock-chips.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Ck9uIDIwMjAvOS8zIOS4i+WNiDI6MzEsIEVsYWluZSBaaGFuZyB3cm90ZToKPiBUaGlzIGlzIHVz
ZWQgYnkgdGhlIFJvY2tjaGlwIGNsayBkcml2ZXIsIGV4cG9ydCBpdCB0byBhbGxvdyB0aGF0Cj4g
ZHJpdmVyIHRvIGJlIGNvbXBpbGVkIGFzIGEgbW9kdWxlLi4KPgo+IFNpZ25lZC1vZmYtYnk6IEVs
YWluZSBaaGFuZyA8emhhbmdxaW5nQHJvY2stY2hpcHMuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9j
bGsvcm9ja2NoaXAvc29mdHJzdC5jIHwgNyArKysrLS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNCBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvY2xr
L3JvY2tjaGlwL3NvZnRyc3QuYyBiL2RyaXZlcnMvY2xrL3JvY2tjaGlwL3NvZnRyc3QuYwo+IGlu
ZGV4IDVmMWZmNWU0N2M0Zi4uY2FiYTkwNTUwOTBiIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvY2xr
L3JvY2tjaGlwL3NvZnRyc3QuYwo+ICsrKyBiL2RyaXZlcnMvY2xrL3JvY2tjaGlwL3NvZnRyc3Qu
Ywo+IEBAIC03Nyw5ICs3Nyw5IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgcmVzZXRfY29udHJvbF9v
cHMgcm9ja2NoaXBfc29mdHJzdF9vcHMgPSB7Cj4gICAJLmRlYXNzZXJ0CT0gcm9ja2NoaXBfc29m
dHJzdF9kZWFzc2VydCwKPiAgIH07Cj4gICAKPiAtdm9pZCBfX2luaXQgcm9ja2NoaXBfcmVnaXN0
ZXJfc29mdHJzdChzdHJ1Y3QgZGV2aWNlX25vZGUgKm5wLAo+IC0JCQkJICAgICAgdW5zaWduZWQg
aW50IG51bV9yZWdzLAo+IC0JCQkJICAgICAgdm9pZCBfX2lvbWVtICpiYXNlLCB1OCBmbGFncykK
PiArdm9pZCByb2NrY2hpcF9yZWdpc3Rlcl9zb2Z0cnN0KHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAs
Cj4gKwkJCSAgICAgICB1bnNpZ25lZCBpbnQgbnVtX3JlZ3MsCj4gKwkJCSAgICAgICB2b2lkIF9f
aW9tZW0gKmJhc2UsIHU4IGZsYWdzKQo+ICAgewo+ICAgCXN0cnVjdCByb2NrY2hpcF9zb2Z0cnN0
ICpzb2Z0cnN0Owo+ICAgCWludCByZXQ7Cj4gQEAgLTEwNywzICsxMDcsNCBAQCB2b2lkIF9faW5p
dCByb2NrY2hpcF9yZWdpc3Rlcl9zb2Z0cnN0KHN0cnVjdCBkZXZpY2Vfbm9kZSAqbnAsCj4gICAJ
CWtmcmVlKHNvZnRyc3QpOwo+ICAgCX0KPiAgIH07Cj4gK0VYUE9SVF9TWU1CT0wocm9ja2NoaXBf
cmVnaXN0ZXJfc29mdHJzdCk7CgpUaGlzIGxvb2tzIGdvb2QgdG8gbWUsIHNvCgpSZXZpZXdlZC1i
eTogS2V2ZXIgWWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKCi0gS2V2
ZXIKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
