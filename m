Return-Path: <SRS0=+H3Y=GI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A33ADC433E0
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Jan 2021 11:26:43 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4F12422262
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Jan 2021 11:26:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4F12422262
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+KhjliW7aZzBtEf8GPANKtGhigdcMdjjdqSNJiaHuVg=; b=IYYadhTEYrUkenfTUVdAwY1lA
	0XaEBf5gJfComnx4kvQUQDhMx0Km2BMJLEy0ezYLuQn5fg0wtEOHsqqOCoYu2zz0p1NvFQBKgkpYT
	HpXb8e+qeQBCUfYmt5ckqWrsU4v8XKw/sw2Z1GYmAOsI+D9kkUZl5BaA3oiqwWESzEH/bVlOnuICu
	k+Qpu4BAW5ae4pcFYi6O22NgkrMCuo6FNx7e4bCzvO/xU9sF3mVnku69Hvdk5IqACNArfpndyDlOb
	1jOZ3fa9DBhdOOh6VKuPurU/nElSohRLqrITkaSHcN0xU36Xxb76UeNzD7JbFXFi9/Gf37yy2+DKc
	tFMyuwcLw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kwkU2-0005l0-Nn; Tue, 05 Jan 2021 11:26:38 +0000
Received: from regular1.263xmail.com ([211.150.70.200])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kwkTw-0005hR-ND; Tue, 05 Jan 2021 11:26:35 +0000
Received: from localhost (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id C8FBF1D3C;
 Tue,  5 Jan 2021 19:26:17 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.8] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P25764T139971161745152S1609845976148085_; 
 Tue, 05 Jan 2021 19:26:17 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <768ea1c198b2de55ad84ca1b0aefa9c3>
X-RL-SENDER: david.wu@rock-chips.com
X-SENDER: wdc@rock-chips.com
X-LOGIN-NAME: david.wu@rock-chips.com
X-FST-TO: steven.liu@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: =?UTF-8?Q?Re=3a_=5bPATCH_v3_0/7=5d_pwm=3a_rockchip=3a_Eliminate_pot?=
 =?UTF-8?B?ZW50aWFsIHJhY2UgY29uZGl0aW9uIHdoZW4gcHJvYmluZ+OAkOivt+azqOaEjw==?=
 =?UTF-8?B?77yM6YKu5Lu255Sxa2V2ZXIueWFuZ0BnbWFpbC5jb23ku6Plj5HjgJE=?=
To: Kever Yang <kever.yang@rock-chips.com>, Simon South <simon@simonsouth.net>
References: <CAKUh=Ry7=WUmN5OYv5g_E1EHk8jNE-QcOtw_BrMbH+_aP68w8Q@mail.gmail.com>
From: David Wu <david.wu@rock-chips.com>
Message-ID: <fdd2b3c3-5eaf-bcad-ba57-54b13e891f4a@rock-chips.com>
Date: Tue, 5 Jan 2021 19:26:16 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAKUh=Ry7=WUmN5OYv5g_E1EHk8jNE-QcOtw_BrMbH+_aP68w8Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210105_062633_270506_DB0B2277 
X-CRM114-Status: GOOD (  29.69  )
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
Cc: linux-pwm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 bbrezillon@kernel.org, lee.jones@linaro.org, steven.liu@rock-chips.com,
 linux-rockchip@lists.infradead.org, thierry.reding@gmail.com,
 u.kleine-koenig@pengutronix.de, tpiepho@gmail.com,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgU2ltb24sCgpUaGlzIHNlcmllcyBvZiBwYXRjaGVzIGFyZSBva2F5IGZvciBtZSwgc2ltcGxp
ZnkgdG8gcmVhZCBwd20KcmVnaXN0ZXIgdG8gY2hlY2sgcHdtIHdoZXRoZXIgaXQgaXMgZW5hYmxl
ZC4gU28sCgpSZXZpZWRlZC1ieTogRGF2aWQgV3UgPGRhdmlkLnd1QHJvY2stY2hpcHMuY29tPgoK
5ZyoIDIwMjAvMTIvMjUg5LiL5Y2IMzoxMCwgS2V2ZXIgWWFuZyDlhpnpgZM6Cj4gKyBEYXZpZCBh
bmQgU3RldmVuLAo+IAo+IEhpIFN0ZXZlbiwKPiAgwqAgwqAgcGxlYXNlIGhlbHAgdG8gcmV2aWV3
IHRoaXMgcGF0Y2ggc2V0Lgo+IAo+IFRoYW5rcwo+IC0gS2V2ZXIKPiBTaW1vbiBTb3V0aCA8c2lt
b25Ac2ltb25zb3V0aC5uZXQgPG1haWx0bzpzaW1vbkBzaW1vbnNvdXRoLm5ldD4+IOS6jjIwMjAg
Cj4g5bm0MTLmnIgyNOaXpeWRqOWbmyDkuIrljYgxMjowMeWGmemBk++8mgo+IAo+ICAgICBUaGlz
IHBhdGNoIHNlcmllcyBhaW1zIHRvIGVsaW1pbmF0ZSB0aGUgcmFjZSBjb25kaXRpb24gVHJlbnQg
UGllcGhvCj4gICAgIGlkZW50aWZpZWRbMF0gaW4gdGhlIFJvY2tjaGlwIFBXTSBkcml2ZXIncyBy
b2NrY2hpcF9wd21fcHJvYmUoKQo+ICAgICBmdW5jdGlvbiwgYnkgbW92aW5nIGNvZGUgdGhhdCBj
aGVja3Mgd2hldGhlciBhIGRldmljZSBpcyBlbmFibGVkIGFoZWFkCj4gICAgIG9mIHRoZSBjb2Rl
IHRoYXQgcmVnaXN0ZXJzIGl0IHZpYSBwd21jaGlwX2FkZCgpLgo+IAo+ICAgICBJdCBoYXMgZ3Jv
d24gdG8gaW5jbHVkZSBhIG51bWJlciBvZiBvdGhlciBzbWFsbCBmaXhlcyBhbmQgaW1wcm92ZW1l
bnRzCj4gICAgIHRvIHRoZSBkcml2ZXIuIEl0IG5vdyBhbHNvCj4gCj4gICAgIC0gRml4ZXMgYSBw
b3RlbnRpYWwga2VybmVsIGhhbmcgaW50cm9kdWNlZCBieSBteSBlYXJsaWVyIGNvbW1pdAo+ICAg
ICAgwqAgNDU3Zjc0YWJiZWQwICgicHdtOiByb2NrY2hpcDogS2VlcCBlbmFibGVkIFBXTXMgcnVu
bmluZyB3aGlsZQo+ICAgICAgwqAgcHJvYmluZyIpIGJ5IGVuc3VyaW5nIGEgZGV2aWNlJ3MgQVBC
IGNsb2NrIGlzIGVuYWJsZWQgYmVmb3JlIGl0cwo+ICAgICAgwqAgcmVnaXN0ZXJzIGFyZSBhY2Nl
c3NlZDsKPiAKPiAgICAgLSBSZW1vdmVzIGEgc3VwZXJmbHVvdXMgY2FsbCB0byBjbGtfdW5wcmVw
YXJlKCkgdGhhdCBjb3VsZCByZXN1bHQgaW4KPiAgICAgIMKgIHdhcm5pbmdzIGZyb20gdGhlIGtl
cm5lbDsKPiAKPiAgICAgLSBDbGFyaWZpZXMgdGhlIGRyaXZlcidzIGVycm9yIG1lc3NhZ2VzIGJ5
IHJlcGxhY2luZyAiYnVzIGNsayIgd2l0aAo+ICAgICAgwqAgIlBXTSBjbGsiOwo+IAo+ICAgICAt
IFJlbW92ZXMgdGhlIG5vdy11bm5lZWRlZCBnb3RvIHRhcmdldHMgZnJvbSByb2NrY2hpcF9wd21f
cHJvYmUoKTsKPiAKPiAgICAgLSBUcmllcyB0byBpbXByb3ZlIHJvY2tjaGlwX3B3bV9wcm9iZSgp
IGJ5IGhhdmluZyBpdCBlbmFibGUgdGhlIHNpZ25hbAo+ICAgICAgwqAgY2xvY2sgb2Ygb25seSBQ
V00gZGV2aWNlcyB0aGF0IGFyZSBhbHJlYWR5IHJ1bm5pbmc7IGFuZAo+IAo+ICAgICAtIEVuc3Vy
ZXMgdGhlIGRyaXZlciBlbmFibGVzIGEgY2xvY2sgYmVmb3JlIHF1ZXJ5aW5nIGl0cyByYXRlIHdp
dGgKPiAgICAgIMKgIGNsa19nZXRfcmF0ZSgpLCBhcyBzdGF0ZWQgYXMgYSByZXF1aXJlbWVudCBp
biB0aGF0IGZ1bmN0aW9uJ3MKPiAgICAgIMKgIGRvY3VtZW50YXRpb24uCj4gCj4gICAgIFRoZSBm
aXJzdCBwYXRjaCAoIkVuYWJsZSBBUEIgY2xvY2suLi4iKSBpcyB1bmNoYW5nZWQgZnJvbSB2ZXJz
aW9uIDIuCj4gCj4gICAgIE5ldyBpbiB2ZXJzaW9uIDMgYXJlCj4gCj4gICAgIC0gRmluZXIgcGF0
Y2ggZ3JhbnVsYXJpdHksIHdpdGggcGF0Y2hlcyAyIGFuZCA1IGFkZGVkIHRvIGNsYXJpZnkKPiAg
ICAgIMKgIGNoYW5nZXMgaW5jbHVkZWQgd2l0aCBvdGhlcnMgaW4gdjI7Cj4gCj4gICAgIC0gQSBy
ZXdyaXR0ZW4gcGF0Y2ggNiAoIkVuYWJsZSBQV00gY2xvY2suLi4iKSB3aXRoIGEgc21hbGxlciBj
aGFuZ2UKPiAgICAgIMKgIGFuZCB0aGUgdXNlIG9mIGlmLi4uZWxzZSBpbiBwbGFjZSBvZiBhIHRl
cm5hcnkgb3BlcmF0b3I7Cj4gCj4gICAgIC0gUGF0Y2hlcyAzIGFuZCA3IHdpdGggZml4ZXMgc3Vn
Z2VzdGVkIGJ5IFJvYmluIE11cnBoeSBhbmQgVXdlCj4gICAgICDCoCBLbGVpbmUtS8O2bmlnOyBh
bmQKPiAKPiAgICAgLSBSZXdyaXR0ZW4gYW5kIChob3BlZnVsbHkpIG1vcmUgYWNjdXJhdGUgY29t
bWl0IG1lc3NhZ2VzLgo+IAo+ICAgICBJJ3ZlIHRlc3RlZCB0aGVzZSBjaGFuZ2VzIG9uIG15IChS
SzMzOTktYmFzZWQpIFBpbmVib29rIFBybyB3aXRoIGl0cwo+ICAgICBzY3JlZW4gYmFja2xpZ2h0
IGVuYWJsZWQgYnkgVS1Cb290IGFuZCBlYWNoIG9uZSBhcHBlYXJzIHRvIHdvcmsgZmluZS4KPiAK
PiAgICAgSSdkIChzdGlsbCkgYmUgZ3JhdGVmdWwgZm9yIGhlbHAgd2l0aCB0ZXN0aW5nIG9uIG90
aGVyIGRldmljZXMsCj4gICAgIHBhcnRpY3VsYXJseSB0aG9zZSB3aXRoIFNvQ3MgbGlrZSB0aGUg
UkszMzI4IHRoYXQgdXNlIHNlcGFyYXRlIGJ1cyBhbmQKPiAgICAgc2lnbmFsIGNsb2NrcyBmb3Ig
dGhlaXIgUFdNIGRldmljZXMuIChNeSBST0NLNjQgdXNlcyBpdHMgUFdNLW91dHB1dAo+ICAgICBw
aW5zIGZvciBvdGhlciBwdXJwb3NlcyBhbmQgd2Fzbid0IG9mIGhlbHAgaGVyZS4pCj4gCj4gICAg
IFswXSBodHRwczovL3d3dy5zcGluaWNzLm5ldC9saXN0cy9saW51eC1wd20vbXNnMTQ2MTEuaHRt
bAo+IAo+ICAgICAtLQo+ICAgICBTaW1vbiBTb3V0aAo+ICAgICBzaW1vbkBzaW1vbnNvdXRoLm5l
dCA8bWFpbHRvOnNpbW9uQHNpbW9uc291dGgubmV0Pgo+IAo+IAo+ICAgICBTaW1vbiBTb3V0aCAo
Nyk6Cj4gICAgICDCoCBwd206IHJvY2tjaGlwOiBFbmFibGUgQVBCIGNsb2NrIGR1cmluZyByZWdp
c3RlciBhY2Nlc3Mgd2hpbGUgcHJvYmluZwo+ICAgICAgwqAgcHdtOiByb2NrY2hpcDogcm9ja2No
aXBfcHdtX3Byb2JlKCk6IFJlbW92ZSBzdXBlcmZsdW91cwo+ICAgICAgwqAgwqAgY2xrX3VucHJl
cGFyZSgpCj4gICAgICDCoCBwd206IHJvY2tjaGlwOiBSZXBsYWNlICJidXMgY2xrIiB3aXRoICJQ
V00gY2xrIgo+ICAgICAgwqAgcHdtOiByb2NrY2hpcDogRWxpbWluYXRlIHBvdGVudGlhbCByYWNl
IGNvbmRpdGlvbiB3aGVuIHByb2JpbmcKPiAgICAgIMKgIHB3bTogcm9ja2NoaXA6IHJvY2tjaGlw
X3B3bV9wcm9iZSgpOiBSZW1vdmUgdW5uZWVkZWQgZ290byB0YXJnZXQKPiAgICAgIMKgIHB3bTog
cm9ja2NoaXA6IEVuYWJsZSBQV00gY2xvY2sgb2YgcHJvYmVkIGRldmljZSBvbmx5IGlmIHJ1bm5p
bmcKPiAgICAgIMKgIHB3bTogcm9ja2NoaXA6IEVuYWJsZSBjbG9jayBiZWZvcmUgY2FsbGluZyBj
bGtfZ2V0X3JhdGUoKQo+IAo+ICAgICAgwqBkcml2ZXJzL3B3bS9wd20tcm9ja2NoaXAuYyB8IDY0
ICsrKysrKysrKysrKysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tCj4gICAgICDCoDEgZmlsZSBj
aGFuZ2VkLCA0MCBpbnNlcnRpb25zKCspLCAyNCBkZWxldGlvbnMoLSkKPiAKPiAgICAgLS0gCj4g
ICAgIDIuMjkuMgo+IAo+IAo+ICAgICBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+ICAgICBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiAgICAgTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ICAgICA8bWFpbHRvOkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmc+Cj4gICAgIGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKPiAKCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
