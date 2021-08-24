Return-Path: <SRS0=/gBD=NP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23AFC4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 01:41:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F2EE06120A
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 01:41:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org F2EE06120A
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A9oKRabdRpR81QhmX8uwsAPblhjNw/0xdtdnTYs6suU=; b=UT/Y8tBRoocZ/r0cqOOuwPLA0L
	qknmWxUe+RHQjwu2Zm7aUSFP7WSZ2P5/A2QKrnmbnHfoAi/f7gCbeZqD0VuVOTiaCeA/xflfREWuj
	cJwhxNnqUUMcFIxXh7RnB8YzFD+9xYeruwM8mOR4t5o9yrle66RKh1fFqJQFi7JEB8Q8KWy9UMveS
	MgY4qRzw6lkJUEi9tt2W3sGlTm3cwFlv6slUgmO1bqKhnOp+qInYLL8n+FyPaU5OqOHsHDWonbDHg
	9FUbCEL8vQQO82m7s6yVvqN80Szuai4YxYd4wgmKnPfA96i2K99rePxW95hB8J5pNdkhEPg31mpiG
	+oGn+gww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mILRY-001BEB-Me; Tue, 24 Aug 2021 01:41:36 +0000
Received: from regular1.263xmail.com ([211.150.70.206])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mILRV-001BCu-6R
 for linux-rockchip@lists.infradead.org; Tue, 24 Aug 2021 01:41:35 +0000
Received: from localhost (unknown [192.168.167.32])
 by regular1.263xmail.com (Postfix) with ESMTP id A09A71B42;
 Tue, 24 Aug 2021 09:41:28 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from [172.16.12.19] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P4269T140595588744960S1629769282126384_; 
 Tue, 24 Aug 2021 09:41:23 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <dfd36154bac7861c5a1b7918fe326a5b>
X-RL-SENDER: sugar.zhang@rock-chips.com
X-SENDER: zxg@rock-chips.com
X-LOGIN-NAME: sugar.zhang@rock-chips.com
X-FST-TO: zhengxing@rock-chips.com
X-RCPT-COUNT: 7
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH 14/15] ASoC: rockchip: i2s: Add support for 'rockchip,
 clk-trcm' property
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, broonie@kernel.org,
 heiko@sntech.de, linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 Xing Zheng <zhengxing@rock-chips.com>
References: <1629715710-21137-1-git-send-email-sugar.zhang@rock-chips.com>
 <1629716076-21465-5-git-send-email-sugar.zhang@rock-chips.com>
 <5017702.Vq9jUBFu5T@archbook>
From: sugar zhang <sugar.zhang@rock-chips.com>
Message-ID: <a17f688f-3219-33e2-bf75-3c5d197ba274@rock-chips.com>
Date: Tue, 24 Aug 2021 09:41:21 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <5017702.Vq9jUBFu5T@archbook>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_184133_804472_2118450B 
X-CRM114-Status: GOOD (  31.55  )
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

SGkgTmljb2xhcywKCk9uIDIwMjEvOC8yMyAxOTo0NywgTmljb2xhcyBGcmF0dGFyb2xpIHdyb3Rl
Ogo+IE9uIE1vbnRhZywgMjMuIEF1Z3VzdCAyMDIxIDEyOjU0OjM1IENFU1QgU3VnYXIgWmhhbmcg
d3JvdGU6Cj4+IEZyb206IFhpbmcgWmhlbmcgPHpoZW5neGluZ0Byb2NrLWNoaXBzLmNvbT4KPj4K
Pj4gSWYgdGhlcmUgaXMgb25seSBvbmUgbHJjayAodHggb3IgcngpIGJ5IGhhcmR3YXJlLCB3ZSBu
ZWVkIHRvCj4+IHVzZSAncm9ja2NoaXAsY2xrLXRyY20nIHRvIHNwZWNpZnkgd2hpY2ggbHJjayBj
YW4gYmUgdXNlZC4KPj4KPj4gQ2hhbmdlLUlkOiBJM2JmOGQ4N2E2YmM4YzQ1ZTE4MzA0MDAxMmQ4
N2Q4YmUyMWE0YzEzMwo+PiBTaWduZWQtb2ZmLWJ5OiBYaW5nIFpoZW5nIDx6aGVuZ3hpbmdAcm9j
ay1jaGlwcy5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IFN1Z2FyIFpoYW5nIDxzdWdhci56aGFuZ0By
b2NrLWNoaXBzLmNvbT4KPj4gLS0tCj4+ICAgc291bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlwX2ky
cy5jIHwgMjIgKysrKysrKysrKysrKy0tLS0tLS0tLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxMyBp
bnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvc291bmQvc29j
L3JvY2tjaGlwL3JvY2tjaGlwX2kycy5jCj4+IGIvc291bmQvc29jL3JvY2tjaGlwL3JvY2tjaGlw
X2kycy5jIGluZGV4IDZjY2I2MmUuLmI5ZDljODggMTAwNjQ0Cj4+IC0tLSBhL3NvdW5kL3NvYy9y
b2NrY2hpcC9yb2NrY2hpcF9pMnMuYwo+PiArKysgYi9zb3VuZC9zb2Mvcm9ja2NoaXAvcm9ja2No
aXBfaTJzLmMKPj4gQEAgLTU0LDYgKzU0LDcgQEAgc3RydWN0IHJrX2kyc19kZXYgewo+PiAgIAli
b29sIGlzX21hc3Rlcl9tb2RlOwo+PiAgIAljb25zdCBzdHJ1Y3QgcmtfaTJzX3BpbnMgKnBpbnM7
Cj4+ICAgCXVuc2lnbmVkIGludCBiY2xrX3JhdGlvOwo+PiArCXVuc2lnbmVkIGludCBjbGtfdHJj
bTsKPj4gICB9Owo+Pgo+PiAgIC8qIHR4L3J4IGN0cmwgbG9jayAqLwo+PiBAQCAtMzIxLDcgKzMy
Miw2IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfaTJzX2h3X3BhcmFtcyhzdHJ1Y3QKPj4gc25kX3Bj
bV9zdWJzdHJlYW0gKnN1YnN0cmVhbSwgc3RydWN0IHNuZF9zb2NfZGFpICpkYWkpCj4+ICAgewo+
PiAgIAlzdHJ1Y3QgcmtfaTJzX2RldiAqaTJzID0gdG9faW5mbyhkYWkpOwo+PiAtCXN0cnVjdCBz
bmRfc29jX3BjbV9ydW50aW1lICpydGQgPSBhc29jX3N1YnN0cmVhbV90b19ydGQoc3Vic3RyZWFt
KTsKPj4gICAJdW5zaWduZWQgaW50IHZhbCA9IDA7Cj4+ICAgCXVuc2lnbmVkIGludCBtY2xrX3Jh
dGUsIGJjbGtfcmF0ZSwgZGl2X2JjbGssIGRpdl9scmNrOwo+Pgo+PiBAQCAtNDIxLDEzICs0MjEs
NiBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX2kyc19od19wYXJhbXMoc3RydWN0Cj4+IHNuZF9wY21f
c3Vic3RyZWFtICpzdWJzdHJlYW0sIHJlZ21hcF91cGRhdGVfYml0cyhpMnMtPnJlZ21hcCwgSTJT
X0RNQUNSLAo+PiBJMlNfRE1BQ1JfUkRMX01BU0ssCj4+ICAgCQkJICAgSTJTX0RNQUNSX1JETCgx
NikpOwo+Pgo+PiAtCXZhbCA9IEkyU19DS1JfVFJDTV9UWFJYOwo+PiAtCWlmIChkYWktPmRyaXZl
ci0+c3ltbWV0cmljX3JhdGUgJiYgcnRkLT5kYWlfbGluay0+c3ltbWV0cmljX3JhdGUpCj4+IC0J
CXZhbCA9IEkyU19DS1JfVFJDTV9UWE9OTFk7Cj4+IC0KPj4gLQlyZWdtYXBfdXBkYXRlX2JpdHMo
aTJzLT5yZWdtYXAsIEkyU19DS1IsCj4+IC0JCQkgICBJMlNfQ0tSX1RSQ01fTUFTSywKPj4gLQkJ
CSAgIHZhbCk7Cj4+ICAgCXJldHVybiAwOwo+PiAgIH0KPj4KPj4gQEAgLTUzMSw3ICs1MjQsNiBA
QCBzdGF0aWMgc3RydWN0IHNuZF9zb2NfZGFpX2RyaXZlciByb2NrY2hpcF9pMnNfZGFpID0gewo+
PiAgIAkJCSAgICBTTkRSVl9QQ01fRk1UQklUX1MzMl9MRSksCj4+ICAgCX0sCj4+ICAgCS5vcHMg
PSAmcm9ja2NoaXBfaTJzX2RhaV9vcHMsCj4+IC0JLnN5bW1ldHJpY19yYXRlID0gMSwKPj4gICB9
Owo+Pgo+PiAgIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgc25kX3NvY19jb21wb25lbnRfZHJpdmVyIHJv
Y2tjaGlwX2kyc19jb21wb25lbnQgPSB7Cj4+IEBAIC03NTAsNiArNzQyLDE4IEBAIHN0YXRpYyBp
bnQgcm9ja2NoaXBfaTJzX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UKPj4gKnBkZXYpIGVs
c2UgaWYgKG9mX3Byb3BlcnR5X3JlYWRfYm9vbChub2RlLCAicm9ja2NoaXAsY2FwdHVyZS1vbmx5
IikpCj4+ICAgCQlzb2NfZGFpLT5wbGF5YmFjay5jaGFubmVsc19taW4gPSAwOwo+Pgo+PiArCWky
cy0+Y2xrX3RyY20gPSBJMlNfQ0tSX1RSQ01fVFhSWDsKPj4gKwlpZiAoIW9mX3Byb3BlcnR5X3Jl
YWRfdTMyKG5vZGUsICJyb2NrY2hpcCxjbGstdHJjbSIsICZ2YWwpKSB7Cj4+ICsJCWlmICh2YWwg
Pj0gMCAmJiB2YWwgPD0gMikgewo+PiArCQkJaTJzLT5jbGtfdHJjbSA9IHZhbCA8PCBJMlNfQ0tS
X1RSQ01fU0hJRlQ7Cj4+ICsJCQlpZiAoaTJzLT5jbGtfdHJjbSkKPj4gKwkJCQlzb2NfZGFpLT5z
eW1tZXRyaWNfcmF0ZSA9IDE7Cj4+ICsJCX0KPj4gKwl9Cj4+ICsKPj4gKwlyZWdtYXBfdXBkYXRl
X2JpdHMoaTJzLT5yZWdtYXAsIEkyU19DS1IsCj4+ICsJCQkgICBJMlNfQ0tSX1RSQ01fTUFTSywg
aTJzLT5jbGtfdHJjbSk7Cj4+ICsKPj4gICAJcmV0ID0gZGV2bV9zbmRfc29jX3JlZ2lzdGVyX2Nv
bXBvbmVudCgmcGRldi0+ZGV2LAo+PiAgIAkJCQkJICAgICAgJnJvY2tjaGlwX2kyc19jb21wb25l
bnQsCj4+ICAgCQkJCQkgICAgICBzb2NfZGFpLCAxKTsKPiBIZWxsbywKPgo+IEkgcmVjb21tZW5k
IGRvaW5nIHRoZSBzYW1lIHRoaW5nIHdpdGggY2xrLXRyY20gdGhhdCBJJ20gZ29pbmcgdG8gZG8g
aW4gdjMgb2YKPiBteSBpMnMtdGRtIGRyaXZlciwgYXMgcGVyIFJvYmluIE11cnBoeSdzIHN1Z2dl
c3Rpb246Cj4KPiBIYXZlIHR4LW9ubHkgYW5kIHJ4LW9ubHkgYmUgdHdvIGJvb2xlYW4gcHJvcGVy
dGllcy4gSSBuYW1lZCB0aGVtCj4gcm9ja2NoaXAsdHJjbS1zeW5jLXR4LW9ubHkgYW5kIHJvY2tj
aGlwLHRyY20tc3luYy1yeC1vbmx5Lgo+Cj4gSSBhbHNvIHJlY29tbWVuZCBvbmx5IHNoaWZ0aW5n
IHRoZSB2YWx1ZSB3aGVuIHdyaXRpbmcgaXQgdG8gcmVnaXN0ZXJzLCBhbmQKPiBzdG9yaW5nIGl0
IGluIGl0cyB1bnNoaWZ0ZWQgc3RhdGUgZm9yIGRlYnVnIHJlYXNvbnMuCm9rYXksIHdpbGwgZG8g
aW4gdjIuCj4gTXkgcHJvYmUgZnVuY3Rpb24gbG9va3MgbGlrZSB0aGlzOgo+Cj4gCWkyc190ZG0t
PmNsa190cmNtID0gVFJDTV9UWFJYOwo+IAlpZiAob2ZfcHJvcGVydHlfcmVhZF9ib29sKG5vZGUs
ICJyb2NrY2hpcCx0cmNtLXN5bmMtdHgtb25seSIpKQo+IAkJaTJzX3RkbS0+Y2xrX3RyY20gPSBU
UkNNX1RYOwo+IAlpZiAob2ZfcHJvcGVydHlfcmVhZF9ib29sKG5vZGUsICJyb2NrY2hpcCx0cmNt
LXN5bmMtcngtb25seSIpKSB7Cj4gCQlpZiAoaTJzX3RkbS0+Y2xrX3RyY20pIHsKPiAJCQlkZXZf
ZXJyKGkyc190ZG0tPmRldiwgImludmFsaWQgdHJjbS1zeW5jCj4gY29uZmlndXJhdGlvblxuIik7
Cj4gCQkJcmV0dXJuIC1FSU5WQUw7Cj4gCQl9Cj4gCQlpMnNfdGRtLT5jbGtfdHJjbSA9IFRSQ01f
Ulg7Cj4gCX0KPiAJaWYgKGkyc190ZG0tPmNsa190cmNtICE9IFRSQ01fVFhSWCkKPiAJCWkyc190
ZG1fZGFpLnN5bW1ldHJpY19yYXRlID0gMTsKPgo+IFdoZW4gd3JpdGluZyBjbGtfdHJjbSB0byBh
IHJlZ2lzdGVyLCBJIHRoZW4ganVzdCBkbzoKPgo+IAlyZWdtYXBfdXBkYXRlX2JpdHMoaTJzX3Rk
bS0+cmVnbWFwLCBJMlNfQ0tSLCBJMlNfQ0tSX1RSQ01fTUFTSywKPiAJCQkgICBpMnNfdGRtLT5j
bGtfdHJjbSA8PCBJMlNfQ0tSX1RSQ01fU0hJRlQpOwo+Cj4gVGhpcyB3YXkgaWYgSSBuZWVkIHRv
IGFkZCBhbiBlcnJvciBtZXNzYWdlIG9yIGRlYnVnIHByaW50IHNvbWV3aGVyZSwgdGhlbgo+IGNs
a190cmNtIGlzIHN0aWxsIGVpdGhlciAwLCAxIG9yIDIuCj4KPiBJbiBnZW5lcmFsLCB3ZSBzaG91
bGQgbG9vayBpbnRvIHN1cHBvcnRpbmcgYm90aCBpMnMgYW5kIGkycy10ZG0gY29udHJvbGxlcnMg
aW4KPiB0aGUgc2FtZSBkcml2ZXIgaWYgcG9zc2libGUuIFRoaXMgd2F5IHdlIGRvbid0IG5lZWQg
dG8gZHVwbGljYXRlIHdvcmsgbGlrZQo+IHRoaXMuIERvIHlvdSB0aGluayB0aGlzIGlzIGZlYXNp
YmxlIHRvIGRvPyBXaGVuIEkgbG9va2VkIGF0IHRoZSByZWdpc3RlciBtYXBzCj4gSSBzYXcgdGhh
dCB0aGUgYml0cyBJMlMvVERNIHVzZXMgd2VyZSByZXNlcnZlZCBpbiB0aGUgSTJTIHZlcnNpb24g
b2YgdGhlCj4gY29udHJvbGxlciwgc28gSSB0aGluayBpdCBzaG91bGQgd29yay4KCkl0J3MgcG9z
c2libGUsIGJ1dCB3aWxsIG1ha2UgdGhlIGRyaXZlciBtdWNoIG1vcmUgY29tcGxpY2F0ZShhIGxv
dCBvZiAKJ2lmLi4uZWxzZS4uLicpLgoKVGhvdWdoIHRoZSByZWdpc3RlcnMgd2VyZSBjb21wYXRp
YmxlLCBidXQgdGhlIGRlc2lnbiBpcyB0b3RhbGx5IApkaWZmZXJlbnQsIHN1Y2ggYXMgY2xrcywg
cmVzZXQgc2lnbmFsLMKgIHBpbnMgYW5kIGNvcmUgbG9naWMuCgpzbywgc3BsaXQgaW50byB0d28g
ZHJpdmVycyB0byBzdXBwb3J0IG9sZCBjb250cm9sbGVyIGFuZCBuZXcgb25lLgoKPiBSZWdhcmRz
LAo+IE5pY29sYXMgRnJhdHRhcm9saQo+Cj4KPgo+Cj4KLS0gCkJlc3QgUmVnYXJkcyEK5byg5a2m
5bm/L1N1Z2FyCueRnuiKr+W+rueUteWtkOiCoeS7veaciemZkOWFrOWPuApSb2NrY2hpcCBFbGVj
dHJvbmljcyBDby4sIEx0ZC4KCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
