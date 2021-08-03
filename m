Return-Path: <SRS0=H/Xe=M2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 880B1C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Aug 2021 03:10:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 891DB60EEA
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Aug 2021 03:10:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 891DB60EEA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TJwbzwnmcCrJf41iA+MvRLE5CK6hfI89zlbTgim5WMk=; b=qN5zqwDx+RLzLVXV5PnBtPQUjs
	BGQt/0L/x3W9WaWNTaseZX2CICno+kNFBrgieE9WOUNOqVJ2jOb8PCnRpQI8tPIejv+1ytXtiN2Ft
	i5tY+b9xGjGzoYAFBOoMpr3kNL54NVMxPozk/zQZt3Np91Y6VAVexM2Cs3uQmZudh2ioNBqmdX6vA
	yDS4ACdrckpF4KgUMlTYIeVXhjanybgGT5Y9Nf6V96KPvavqI9gL692smjXMwPseETSYNqVJREkTA
	cxG+dvuJuDyzF2zKXHHAJYrQ/DVrMwrUa2s1i9OGNHM31dc3oEhUVNvCiS5wW9A+zEh+Q/8YSPw/g
	vPCSzHfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAkoe-000u34-OL; Tue, 03 Aug 2021 03:10:04 +0000
Received: from regular1.263xmail.com ([211.150.70.205])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAkoY-000u2V-Lx
 for linux-rockchip@lists.infradead.org; Tue, 03 Aug 2021 03:10:01 +0000
Received: from localhost (unknown [192.168.167.70])
 by regular1.263xmail.com (Postfix) with ESMTP id B2FEA947;
 Tue,  3 Aug 2021 11:09:48 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.8] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P4991T139770963339008S1627960187187438_; 
 Tue, 03 Aug 2021 11:09:47 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <65d4135603dfef771ba2a7a9f4dcf93d>
X-RL-SENDER: david.wu@rock-chips.com
X-SENDER: wdc@rock-chips.com
X-LOGIN-NAME: david.wu@rock-chips.com
X-FST-TO: linux-iio@vger.kernel.org
X-RCPT-COUNT: 11
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH] iio: adc: rockchip_saradc: just get referenced voltage
 once at probe
To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>,
 Simon Xue <xxm@rock-chips.com>
Cc: Jonathan Cameron <jic23@kernel.org>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org,
 Johan Jonker <jbx6244@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org
References: <20210802090929.37970-1-xxm@rock-chips.com>
 <20210802114222.00004f3d@Huawei.com>
From: David Wu <david.wu@rock-chips.com>
Message-ID: <36f6284f-6bc9-d5a4-aac8-5db8b1ecaae1@rock-chips.com>
Date: Tue, 3 Aug 2021 11:09:47 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210802114222.00004f3d@Huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210802_200959_260201_01AFFBA1 
X-CRM114-Status: GOOD (  25.96  )
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

SGkgSm9uYXRoYW4sCgrU2iAyMDIxLzgvMiDPws7nNjo0MiwgSm9uYXRoYW4gQ2FtZXJvbiDQtLXA
Ogo+IE9uIE1vbiwgMiBBdWcgMjAyMSAxNzowOToyOSArMDgwMAo+IFNpbW9uIFh1ZSA8eHhtQHJv
Y2stY2hpcHMuY29tPiB3cm90ZToKPiAKPj4gRnJvbTogRGF2aWQgV3UgPGRhdmlkLnd1QHJvY2st
Y2hpcHMuY29tPgo+Pgo+PiBUaGUgcmVmZXJlbmNlZCB2b2x0YWdlIGlzIG5vdCBjaGFuZ2VkIGFm
dGVyIGluaXRpYXRpb24sIHNvIGp1c3Qgb25seQo+PiBnZXQgcmVmZXJlbmNlZCB2b2x0YWdlIG9u
Y2UuCj4gSGkgRGF2aWQsCj4gCj4gSXNuJ3QgdGhpcyBhbiBleHRlcm5hbCByZWZlcmVuY2Ugdm9s
dGFnZT8gIElmIHNvIGhvdyBkbyB5b3Uga25vdwo+IGl0IGlzIG5vdCBjaGFuZ2VkIGF0IHJ1bnRp
bWU/ICBJdCBtaWdodCBiZSB1bmxpa2VseSBhbmQgbm90IGhhcHBlbgo+IG9uIHBhcnRpY3VsYXIg
cGxhdGZvcm1zLCBidXQgdGhhdCdzIG5vdCBoZSBzYW1lIGFzIHNheWluZyBpdCBjYW4gbmV2ZXIK
PiBoYXBwZW4uICBDbGVhcmx5IGl0J3MgcmFjZXkgYW55d2F5IGlmIHRoYXQgZG9lcyBoYXBwZW4s
IGJ1dCB3ZSBkZWZpbml0ZWx5Cj4gZG9uJ3QgZXhwZWN0IGZyZXF1ZW50IHZvbHRhZ2UgY2hhbmdl
cy4KPiAKClRoZSBjdXJyZW50IHJlZ3VsYXRvciBpcyBub3QgY2hhbmdlZCBhbmQgbm90IHN1Ympl
Y3QgdG8gZXh0ZXJuYWwgCmNoYW5nZXMsIHRoaXMgY2FuIHJlZHVjZSB0aGUgZ2V0dGluZyB2b2x0
YWdlLiBBc3N1bWluZyB0aGF0IHRoZXJlIHdpbGwgCmJlIGNoYW5nZXMgaW4gdGhlIGZ1dHVyZSwg
d2UgdGhlbiBhZGQgdGhlIG5vdGlmeSBvZiB0aGUgcmVndWxhdG9yLCBzbyAKdGhhdCB0aGUgdm9s
dGFnZSBjaGFuZ2UgY2FuIGJlIG9idGFpbmVkLgoKPiBKb25hdGhhbgo+IAo+Pgo+PiBTaWduZWQt
b2ZmLWJ5OiBTaW1vbiBYdWUgPHh4bUByb2NrLWNoaXBzLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTog
RGF2aWQgV3UgPGRhdmlkLnd1QHJvY2stY2hpcHMuY29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL2lp
by9hZGMvcm9ja2NoaXBfc2FyYWRjLmMgfCAxNiArKysrKysrKystLS0tLS0tCj4+ICAgMSBmaWxl
IGNoYW5nZWQsIDkgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkKPj4KPj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvaWlvL2FkYy9yb2NrY2hpcF9zYXJhZGMuYyBiL2RyaXZlcnMvaWlvL2FkYy9y
b2NrY2hpcF9zYXJhZGMuYwo+PiBpbmRleCBmM2ViOGQyZTUwZGMuLmNkMzNjMGI5ZDNlYiAxMDA2
NDQKPj4gLS0tIGEvZHJpdmVycy9paW8vYWRjL3JvY2tjaGlwX3NhcmFkYy5jCj4+ICsrKyBiL2Ry
aXZlcnMvaWlvL2FkYy9yb2NrY2hpcF9zYXJhZGMuYwo+PiBAQCAtNDksNiArNDksNyBAQCBzdHJ1
Y3Qgcm9ja2NoaXBfc2FyYWRjIHsKPj4gICAJc3RydWN0IGNsawkJKmNsazsKPj4gICAJc3RydWN0
IGNvbXBsZXRpb24JY29tcGxldGlvbjsKPj4gICAJc3RydWN0IHJlZ3VsYXRvcgkqdnJlZjsKPj4g
KwlpbnQJCQl1dl92cmVmOwo+PiAgIAlzdHJ1Y3QgcmVzZXRfY29udHJvbAkqcmVzZXQ7Cj4+ICAg
CWNvbnN0IHN0cnVjdCByb2NrY2hpcF9zYXJhZGNfZGF0YSAqZGF0YTsKPj4gICAJdTE2CQkJbGFz
dF92YWw7Cj4+IEBAIC0xMDUsMTMgKzEwNiw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfc2FyYWRj
X3JlYWRfcmF3KHN0cnVjdCBpaW9fZGV2ICppbmRpb19kZXYsCj4+ICAgCQltdXRleF91bmxvY2so
JmluZGlvX2Rldi0+bWxvY2spOwo+PiAgIAkJcmV0dXJuIElJT19WQUxfSU5UOwo+PiAgIAljYXNl
IElJT19DSEFOX0lORk9fU0NBTEU6Cj4+IC0JCXJldCA9IHJlZ3VsYXRvcl9nZXRfdm9sdGFnZShp
bmZvLT52cmVmKTsKPj4gLQkJaWYgKHJldCA8IDApIHsKPj4gLQkJCWRldl9lcnIoJmluZGlvX2Rl
di0+ZGV2LCAiZmFpbGVkIHRvIGdldCB2b2x0YWdlXG4iKTsKPj4gLQkJCXJldHVybiByZXQ7Cj4+
IC0JCX0KPj4gLQo+PiAtCQkqdmFsID0gcmV0IC8gMTAwMDsKPj4gKwkJKnZhbCA9IGluZm8tPnV2
X3ZyZWYgLyAxMDAwOwo+PiAgIAkJKnZhbDIgPSBjaGFuLT5zY2FuX3R5cGUucmVhbGJpdHM7Cj4+
ICAgCQlyZXR1cm4gSUlPX1ZBTF9GUkFDVElPTkFMX0xPRzI7Cj4+ICAgCWRlZmF1bHQ6Cj4+IEBA
IC00MTAsNiArNDA1LDEzIEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfc2FyYWRjX3Byb2JlKHN0cnVj
dCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4+ICAgCQlyZXR1cm4gcmV0Owo+PiAgIAl9Cj4+ICAg
Cj4+ICsJaW5mby0+dXZfdnJlZiA9IHJlZ3VsYXRvcl9nZXRfdm9sdGFnZShpbmZvLT52cmVmKTsK
Pj4gKwlpZiAoaW5mby0+dXZfdnJlZiA8IDApIHsKPj4gKwkJZGV2X2VycigmcGRldi0+ZGV2LCAi
ZmFpbGVkIHRvIGdldCB2b2x0YWdlXG4iKTsKPj4gKwkJcmV0ID0gaW5mby0+dXZfdnJlZjsKPj4g
KwkJcmV0dXJuIHJldDsKPj4gKwl9Cj4+ICsKPj4gICAJcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxl
KGluZm8tPnBjbGspOwo+PiAgIAlpZiAocmV0IDwgMCkgewo+PiAgIAkJZGV2X2VycigmcGRldi0+
ZGV2LCAiZmFpbGVkIHRvIGVuYWJsZSBwY2xrXG4iKTsKPiAKPiAKPiAKPiAKCgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
