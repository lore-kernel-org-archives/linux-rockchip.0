Return-Path: <SRS0=CMqn=H3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09C91C433DB
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Feb 2021 02:59:58 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6046C64ECB
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Feb 2021 02:59:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6046C64ECB
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FBm1tnn+P7ShY+eh4X05wBCXnFSVFVAnALsvzIPNv5o=; b=pJcbkgMrgrmhg6B0U0gdXQR+f
	IyeRohMevHg9maD5RVTm71isp/AGyyiPtxbwpnn6Zh0mCNpBTXdnE4mCU8yXGkAhU5v2mR8zvT4hM
	+MUB0m5Od2E9SFANaeY+yRvHmz67wp63Q7E6h+Ln/Q9+cO5g0S4cMK/8VoMGIK1P+Zee4VBs10A0o
	6Q2P82JVLfRpxU1sYoupbMM0QX6BoC8mu6kYclfgc5CXpJEWKa0TfomPQCO+F+TWsH//1jwLeolyP
	srsVGeWJ8qdIO5xDT9MpzHgxLLQXxugGIqhjjMuWWWTk4tFLKU404D6zJbydbdk4py4mebKLjjJGC
	PifGrAvyg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lF6sU-0003UO-Bv; Thu, 25 Feb 2021 02:59:46 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lF6sP-0003Ta-UK; Thu, 25 Feb 2021 02:59:43 +0000
Received: from localhost (unknown [192.168.167.139])
 by regular1.263xmail.com (Postfix) with ESMTP id 808E312F4;
 Thu, 25 Feb 2021 10:59:35 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.236] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P26070T139688390141696S1614221972582038_; 
 Thu, 25 Feb 2021 10:59:33 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <a2c3989211289f1cd723bb4fcfcf72a5>
X-RL-SENDER: zhangqing@rock-chips.com
X-SENDER: zhangqing@rock-chips.com
X-LOGIN-NAME: zhangqing@rock-chips.com
X-FST-TO: finley.xiao@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH v1 3/4] clk: rockchip: support more core div setting
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>, sboyd@kernel.org
References: <20210223095352.11544-1-zhangqing@rock-chips.com>
 <20210223095352.11544-4-zhangqing@rock-chips.com> <5312231.BaHzMo0RvP@diego>
From: "elaine.zhang" <zhangqing@rock-chips.com>
Organization: rockchip
Message-ID: <6759a56c-56d1-da63-5299-0d76966329df@rock-chips.com>
Date: Thu, 25 Feb 2021 10:59:32 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <5312231.BaHzMo0RvP@diego>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210224_215942_472807_A7AF449B 
X-CRM114-Status: GOOD (  21.53  )
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
Cc: huangtao@rock-chips.com, linux-kernel@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 tony.xie@rock-chips.com, finley.xiao@rock-chips.com,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 cl@rock-chips.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksSGVpa286CgrU2iAyMDIxLzIvMjMgz8LO5zY6MjIsIEhlaWtvIFN0qLlibmVyINC0tcA6Cj4g
SGkgRWxhaW5lLAo+Cj4gQW0gRGllbnN0YWcsIDIzLiBGZWJydWFyIDIwMjEsIDEwOjUzOjUxIENF
VCBzY2hyaWViIEVsYWluZSBaaGFuZzoKPj4gQTU1IHN1cHBvcnRzIGVhY2ggY29yZSB0byB3b3Jr
IGF0IGRpZmZlcmVudCBmcmVxdWVuY2llcywgYW5kIGVhY2ggY29yZQo+PiBoYXMgYW4gaW5kZXBl
bmRlbnQgZGl2aWRlciBjb250cm9sLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBFbGFpbmUgWmhhbmcg
PHpoYW5ncWluZ0Byb2NrLWNoaXBzLmNvbT4KPj4gLS0tCj4+ICAgZHJpdmVycy9jbGsvcm9ja2No
aXAvY2xrLWNwdS5jIHwgMjUgKysrKysrKysrKysrKysrKysrKysrKysrKwo+PiAgIGRyaXZlcnMv
Y2xrL3JvY2tjaGlwL2Nsay5oICAgICB8IDE3ICsrKysrKysrKysrKysrKystCj4+ICAgMiBmaWxl
cyBjaGFuZ2VkLCA0MSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstY3B1LmMgYi9kcml2ZXJzL2Nsay9yb2NrY2hp
cC9jbGstY3B1LmMKPj4gaW5kZXggZmE5MDI3ZmIxOTIwLi5jYWMwNmY0Zjc1NzMgMTAwNjQ0Cj4+
IC0tLSBhL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1jcHUuYwo+PiArKysgYi9kcml2ZXJzL2Ns
ay9yb2NrY2hpcC9jbGstY3B1LmMKPj4gQEAgLTE2NCw2ICsxNjQsMTggQEAgc3RhdGljIGludCBy
b2NrY2hpcF9jcHVjbGtfcHJlX3JhdGVfY2hhbmdlKHN0cnVjdCByb2NrY2hpcF9jcHVjbGsgKmNw
dWNsaywKPj4gICAJCQkJICAgICByZWdfZGF0YS0+bXV4X2NvcmVfbWFzaywKPj4gICAJCQkJICAg
ICByZWdfZGF0YS0+bXV4X2NvcmVfc2hpZnQpLAo+PiAgIAkJICAgICAgIGNwdWNsay0+cmVnX2Jh
c2UgKyByZWdfZGF0YS0+Y29yZV9yZWcpOwo+PiArCQlpZiAocmVnX2RhdGEtPmNvcmUxX3JlZykK
Pj4gKwkJCXdyaXRlbChISVdPUkRfVVBEQVRFKGFsdF9kaXYsIHJlZ19kYXRhLT5kaXZfY29yZTFf
bWFzaywKPj4gKwkJCQkJICAgICByZWdfZGF0YS0+ZGl2X2NvcmUxX3NoaWZ0KSwKPj4gKwkJCSAg
ICAgICBjcHVjbGstPnJlZ19iYXNlICsgcmVnX2RhdGEtPmNvcmUxX3JlZyk7Cj4+ICsJCWlmIChy
ZWdfZGF0YS0+Y29yZTJfcmVnKQo+PiArCQkJd3JpdGVsKEhJV09SRF9VUERBVEUoYWx0X2Rpdiwg
cmVnX2RhdGEtPmRpdl9jb3JlMl9tYXNrLAo+PiArCQkJCQkgICAgIHJlZ19kYXRhLT5kaXZfY29y
ZTJfc2hpZnQpLAo+PiArCQkJICAgICAgIGNwdWNsay0+cmVnX2Jhc2UgKyByZWdfZGF0YS0+Y29y
ZTJfcmVnKTsKPj4gKwkJaWYgKHJlZ19kYXRhLT5jb3JlM19yZWcpCj4+ICsJCQl3cml0ZWwoSElX
T1JEX1VQREFURShhbHRfZGl2LCByZWdfZGF0YS0+ZGl2X2NvcmUzX21hc2ssCj4+ICsJCQkJCSAg
ICAgcmVnX2RhdGEtPmRpdl9jb3JlM19zaGlmdCksCj4+ICsJCQkgICAgICAgY3B1Y2xrLT5yZWdf
YmFzZSArIHJlZ19kYXRhLT5jb3JlM19yZWcpOwo+IGZvciAoaSA9IDA7IGkgPCByZWdfZGF0YS0+
bnVtX2NvcmVzOyBpKyspCj4gCXdyaXRlbCguLi4pCj4KPj4gICAJfSBlbHNlIHsKPj4gICAJCS8q
IHNlbGVjdCBhbHRlcm5hdGUgcGFyZW50ICovCj4+ICAgCQl3cml0ZWwoSElXT1JEX1VQREFURShy
ZWdfZGF0YS0+bXV4X2NvcmVfYWx0LAo+PiBAQCAtMjA5LDYgKzIyMSwxOSBAQCBzdGF0aWMgaW50
IHJvY2tjaGlwX2NwdWNsa19wb3N0X3JhdGVfY2hhbmdlKHN0cnVjdCByb2NrY2hpcF9jcHVjbGsg
KmNwdWNsaywKPj4gICAJCQkJcmVnX2RhdGEtPm11eF9jb3JlX3NoaWZ0KSwKPj4gICAJICAgICAg
IGNwdWNsay0+cmVnX2Jhc2UgKyByZWdfZGF0YS0+Y29yZV9yZWcpOwo+PiAgIAo+PiArCWlmIChy
ZWdfZGF0YS0+Y29yZTFfcmVnKQo+PiArCQl3cml0ZWwoSElXT1JEX1VQREFURSgwLCByZWdfZGF0
YS0+ZGl2X2NvcmUxX21hc2ssCj4+ICsJCQkJICAgICByZWdfZGF0YS0+ZGl2X2NvcmUxX3NoaWZ0
KSwKPj4gKwkJICAgICAgIGNwdWNsay0+cmVnX2Jhc2UgKyByZWdfZGF0YS0+Y29yZTFfcmVnKTsK
Pj4gKwlpZiAocmVnX2RhdGEtPmNvcmUyX3JlZykKPj4gKwkJd3JpdGVsKEhJV09SRF9VUERBVEUo
MCwgcmVnX2RhdGEtPmRpdl9jb3JlMl9tYXNrLAo+PiArCQkJCSAgICAgcmVnX2RhdGEtPmRpdl9j
b3JlMl9zaGlmdCksCj4+ICsJCSAgICAgICBjcHVjbGstPnJlZ19iYXNlICsgcmVnX2RhdGEtPmNv
cmUyX3JlZyk7Cj4+ICsJaWYgKHJlZ19kYXRhLT5jb3JlM19yZWcpCj4+ICsJCXdyaXRlbChISVdP
UkRfVVBEQVRFKDAsIHJlZ19kYXRhLT5kaXZfY29yZTNfbWFzaywKPj4gKwkJCQkgICAgIHJlZ19k
YXRhLT5kaXZfY29yZTNfc2hpZnQpLAo+PiArCQkgICAgICAgY3B1Y2xrLT5yZWdfYmFzZSArIHJl
Z19kYXRhLT5jb3JlM19yZWcpOwo+PiArCj4gZm9yIChpID0gMDsgaSA8IHJlZ19kYXRhLT5udW1f
Y29yZXM7IGkrKykKPiAJd3JpdGVsKC4uLikKPgo+PiAgIAlpZiAobmRhdGEtPm9sZF9yYXRlID4g
bmRhdGEtPm5ld19yYXRlKQo+PiAgIAkJcm9ja2NoaXBfY3B1Y2xrX3NldF9kaXZpZGVycyhjcHVj
bGssIHJhdGUpOwo+PiAgIAo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xr
LmggYi9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGsuaAo+PiBpbmRleCAyMjcxYTg0MTI0YjAuLmI0
NmM5M2ZkMGNiNSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLmgKPj4g
KysrIGIvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLmgKPj4gQEAgLTMyMiw3ICszMjIsNyBAQCBz
dHJ1Y3Qgcm9ja2NoaXBfY3B1Y2xrX2Nsa3NlbCB7Cj4+ICAgCXUzMiB2YWw7Cj4+ICAgfTsKPj4g
ICAKPj4gLSNkZWZpbmUgUk9DS0NISVBfQ1BVQ0xLX05VTV9ESVZJREVSUwkyCj4+ICsjZGVmaW5l
IFJPQ0tDSElQX0NQVUNMS19OVU1fRElWSURFUlMJNQo+IHBsZWFzZSBtb3ZlIHRoaXMgaW50byBh
IHNlcGFyYXRlIHBhdGNoLCBhcyB5ZXMgdGhlIHJrMzU2OCBuZWVkcyBtb3JlCj4gZGl2aWRlcnMg
YnV0IHRoYXQgaXNuJ3QgcmVsYXRlZCB0byBhZGRpbmcgc2VwYXJhdGUgY29yZSBkaXZpZGVyIGNv
bnRyb2xzLgo+Cj4gWy4uLl0KPiBhZGQKPgo+ICNkZWZpbmUgUk9DS0NISVBfQ1BVQ0xLX01BWF9D
T1JFUwk0Cj4KPj4gICBzdHJ1Y3Qgcm9ja2NoaXBfY3B1Y2xrX3JhdGVfdGFibGUgewo+PiAgIAl1
bnNpZ25lZCBsb25nIHByYXRlOwo+PiAgIAlzdHJ1Y3Qgcm9ja2NoaXBfY3B1Y2xrX2Nsa3NlbCBk
aXZzW1JPQ0tDSElQX0NQVUNMS19OVU1fRElWSURFUlNdOwo+PiBAQCAtMzMzLDYgKzMzMywxMiBA
QCBzdHJ1Y3Qgcm9ja2NoaXBfY3B1Y2xrX3JhdGVfdGFibGUgewo+PiAgICAqIEBjb3JlX3JlZzoJ
CXJlZ2lzdGVyIG9mZnNldCBvZiB0aGUgY29yZSBzZXR0aW5ncyByZWdpc3Rlcgo+PiAgICAqIEBk
aXZfY29yZV9zaGlmdDoJY29yZSBkaXZpZGVyIG9mZnNldCB1c2VkIHRvIGRpdmlkZSB0aGUgcGxs
IHZhbHVlCj4+ICAgICogQGRpdl9jb3JlX21hc2s6CWNvcmUgZGl2aWRlciBtYXNrCj4+ICsgKiBA
ZGl2X2NvcmUxX3NoaWZ0Ogljb3JlMSBkaXZpZGVyIG9mZnNldCB1c2VkIHRvIGRpdmlkZSB0aGUg
cGxsIHZhbHVlCj4+ICsgKiBAZGl2X2NvcmUxX21hc2s6CWNvcmUxIGRpdmlkZXIgbWFzawo+PiAr
ICogQGRpdl9jb3JlMl9zaGlmdDoJY29yZTIgZGl2aWRlciBvZmZzZXQgdXNlZCB0byBkaXZpZGUg
dGhlIHBsbCB2YWx1ZQo+PiArICogQGRpdl9jb3JlMl9tYXNrOgljb3JlMiBkaXZpZGVyIG1hc2sK
Pj4gKyAqIEBkaXZfY29yZTNfc2hpZnQ6CWNvcmUzIGRpdmlkZXIgb2Zmc2V0IHVzZWQgdG8gZGl2
aWRlIHRoZSBwbGwgdmFsdWUKPj4gKyAqIEBkaXZfY29yZTNfbWFzazoJY29yZTMgZGl2aWRlciBt
YXNrCj4+ICAgICogQG11eF9jb3JlX2FsdDoJbXV4IHZhbHVlIHRvIHNlbGVjdCBhbHRlcm5hdGUg
cGFyZW50Cj4+ICAgICogQG11eF9jb3JlX21haW46CW11eCB2YWx1ZSB0byBzZWxlY3QgbWFpbiBw
YXJlbnQgb2YgY29yZQo+PiAgICAqIEBtdXhfY29yZV9zaGlmdDoJb2Zmc2V0IG9mIHRoZSBjb3Jl
IG11bHRpcGxleGVyCj4+IEBAIC0zNDIsNiArMzQ4LDE1IEBAIHN0cnVjdCByb2NrY2hpcF9jcHVj
bGtfcmVnX2RhdGEgewo+PiAgIAlpbnQJCWNvcmVfcmVnOwo+PiAgIAl1OAkJZGl2X2NvcmVfc2hp
ZnQ7Cj4+ICAgCXUzMgkJZGl2X2NvcmVfbWFzazsKPj4gKwlpbnQJCWNvcmUxX3JlZzsKPj4gKwl1
OAkJZGl2X2NvcmUxX3NoaWZ0Owo+PiArCXUzMgkJZGl2X2NvcmUxX21hc2s7Cj4+ICsJaW50CQlj
b3JlMl9yZWc7Cj4+ICsJdTgJCWRpdl9jb3JlMl9zaGlmdDsKPj4gKwl1MzIJCWRpdl9jb3JlMl9t
YXNrOwo+PiArCWludAkJY29yZTNfcmVnOwo+PiArCXU4CQlkaXZfY29yZTNfc2hpZnQ7Cj4+ICsJ
dTMyCQlkaXZfY29yZTNfbWFzazsKPiBwbGVhc2UgbWFrZSB0aGlzIGluc3RlYWQgbGlrZToKPgo+
IGludAljb3JlX3JlZ1tST0NLQ0hJUF9DUFVDTEtfTUFYX0NPUkVTXTsKPiB1OAlkaXZfY29yZV9z
aGlmdFtST0NLQ0hJUF9DUFVDTEtfTUFYX0NPUkVTXTsKPiB1MzIJZGl2X2NvcmVfbWFza1tST0NL
Q0hJUF9DUFVDTEtfTUFYX0NPUkVTXTsKPiBpbnQJbnVtX2NvcmVzOwpUaGlzIGlzIGFsc28gbXkg
b3JpZ2luYWwgaW50ZW50aW9uLCBidXQgd2l0aCBzdWNoIG1vZGlmaWNhdGlvbiwgb3RoZXIgClNP
Q3Mgb2YgUksgbmVlZCB0byBiZSBtb2RpZmllZCwgb3RoZXJ3aXNlIHRoZXkgY2Fubm90IGJlIGNv
bXBhdGlibGUgd2l0aCAKdGhlIG9sZCBTT0MuCj4KPgo+IFRoYW5rcwo+IEhlaWtvCj4KPgo+PiAg
IAl1OAkJbXV4X2NvcmVfYWx0Owo+PiAgIAl1OAkJbXV4X2NvcmVfbWFpbjsKPj4gICAJdTgJCW11
eF9jb3JlX3NoaWZ0Owo+Pgo+Cj4KPgo+Cj4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
