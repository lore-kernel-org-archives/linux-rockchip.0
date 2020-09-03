Return-Path: <SRS0=C2RB=CM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BEB3C433E7
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2020 10:03:05 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 160032071B
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2020 10:03:05 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="jlnSHx5p"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 160032071B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7UfypdiTlcJ/xutpikX+cOxR+s1dCgyUL50pjgGPuEM=; b=jlnSHx5pLkwiSX8t9uPX/MRdX
	wKICtP02+HpiaQvS+8mtcJAH+4e6dAUBsi4t6vLA4pvFYwuEVd68LBsPPhYhGaMQ6H0DksXu9YMAO
	zO6Ui0ZT4U1EMOireNyQM3Og2GSZnJWbiJvUa+0lXORQGq4BF3B/0cp9cUlBatfYeiKi+NuPFSY56
	zGT45GgY0WFDrbfkQIxy1V0rdvL9AfwrKYmAZaNgh4yal2YMMk1e7K4WHSGbsLyDa9f3FDPglZKc4
	YGeRhJVHR/u0hT99FpvdEOcBYcxo4dDKvvvJtH9XqJbTDFD7irkm2ck683gguYSJDEmDwsn1ReS5M
	zqmuiBbpQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDm58-0001ZI-Ah; Thu, 03 Sep 2020 10:03:02 +0000
Received: from regular1.263xmail.com ([211.150.70.198])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDm56-0001Yb-7i
 for linux-rockchip@lists.infradead.org; Thu, 03 Sep 2020 10:03:01 +0000
Received: from localhost (unknown [192.168.167.235])
 by regular1.263xmail.com (Postfix) with ESMTP id 2421469D;
 Thu,  3 Sep 2020 18:02:56 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.120] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P22906T140608907769600S1599127375479297_; 
 Thu, 03 Sep 2020 18:02:56 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <6bb291034bbe847a99370295b139c33b>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: huangtao@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v2 4/6] clk: rockchip: Export some clock common APIs for
 module drivers
To: Elaine Zhang <zhangqing@rock-chips.com>, heiko@sntech.de
References: <20200903063147.10237-1-zhangqing@rock-chips.com>
 <20200903063147.10237-5-zhangqing@rock-chips.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <ee161596-0e21-63a6-8ed9-4ef85f237bfa@rock-chips.com>
Date: Thu, 3 Sep 2020 18:02:55 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200903063147.10237-5-zhangqing@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200903_060300_788481_26231F33 
X-CRM114-Status: GOOD (  22.29  )
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
ZHJpdmVyIHRvIGJlIGNvbXBpbGVkIGFzIGEgbW9kdWxlLgo+Cj4gU2lnbmVkLW9mZi1ieTogRWxh
aW5lIFpoYW5nIDx6aGFuZ3FpbmdAcm9jay1jaGlwcy5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2Ns
ay9yb2NrY2hpcC9jbGsuYyB8IDUyICsrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0t
LS0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMzAgaW5zZXJ0aW9ucygrKSwgMjIgZGVsZXRpb25zKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvY2xrLmMgYi9kcml2ZXJzL2Ns
ay9yb2NrY2hpcC9jbGsuYwo+IGluZGV4IGI1MWYzMjBlNTczMy4uYjc2NjQyMjRlNjRhIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay5jCj4gKysrIGIvZHJpdmVycy9jbGsv
cm9ja2NoaXAvY2xrLmMKPiBAQCAtMzU5LDggKzM1OSw5IEBAIHN0YXRpYyBzdHJ1Y3QgY2xrICpy
b2NrY2hpcF9jbGtfcmVnaXN0ZXJfZmFjdG9yX2JyYW5jaChjb25zdCBjaGFyICpuYW1lLAo+ICAg
CXJldHVybiBody0+Y2xrOwo+ICAgfQo+ICAgCj4gLXN0cnVjdCByb2NrY2hpcF9jbGtfcHJvdmlk
ZXIgKiBfX2luaXQgcm9ja2NoaXBfY2xrX2luaXQoc3RydWN0IGRldmljZV9ub2RlICpucCwKPiAt
CQkJdm9pZCBfX2lvbWVtICpiYXNlLCB1bnNpZ25lZCBsb25nIG5yX2Nsa3MpCj4gK3N0cnVjdCBy
b2NrY2hpcF9jbGtfcHJvdmlkZXIgKnJvY2tjaGlwX2Nsa19pbml0KHN0cnVjdCBkZXZpY2Vfbm9k
ZSAqbnAsCj4gKwkJCQkJCXZvaWQgX19pb21lbSAqYmFzZSwKPiArCQkJCQkJdW5zaWduZWQgbG9u
ZyBucl9jbGtzKQo+ICAgewo+ICAgCXN0cnVjdCByb2NrY2hpcF9jbGtfcHJvdmlkZXIgKmN0eDsK
PiAgIAlzdHJ1Y3QgY2xrICoqY2xrX3RhYmxlOwo+IEBAIC0zOTIsMTQgKzM5MywxNiBAQCBzdHJ1
Y3Qgcm9ja2NoaXBfY2xrX3Byb3ZpZGVyICogX19pbml0IHJvY2tjaGlwX2Nsa19pbml0KHN0cnVj
dCBkZXZpY2Vfbm9kZSAqbnAsCj4gICAJa2ZyZWUoY3R4KTsKPiAgIAlyZXR1cm4gRVJSX1BUUigt
RU5PTUVNKTsKPiAgIH0KPiArRVhQT1JUX1NZTUJPTChyb2NrY2hpcF9jbGtfaW5pdCk7Cj4gICAK
PiAtdm9pZCBfX2luaXQgcm9ja2NoaXBfY2xrX29mX2FkZF9wcm92aWRlcihzdHJ1Y3QgZGV2aWNl
X25vZGUgKm5wLAo+IC0JCQkJc3RydWN0IHJvY2tjaGlwX2Nsa19wcm92aWRlciAqY3R4KQo+ICt2
b2lkIHJvY2tjaGlwX2Nsa19vZl9hZGRfcHJvdmlkZXIoc3RydWN0IGRldmljZV9ub2RlICpucCwK
PiArCQkJCSAgc3RydWN0IHJvY2tjaGlwX2Nsa19wcm92aWRlciAqY3R4KQo+ICAgewo+ICAgCWlm
IChvZl9jbGtfYWRkX3Byb3ZpZGVyKG5wLCBvZl9jbGtfc3JjX29uZWNlbGxfZ2V0LAo+ICAgCQkJ
CSZjdHgtPmNsa19kYXRhKSkKPiAgIAkJcHJfZXJyKCIlczogY291bGQgbm90IHJlZ2lzdGVyIGNs
ayBwcm92aWRlclxuIiwgX19mdW5jX18pOwo+ICAgfQo+ICtFWFBPUlRfU1lNQk9MKHJvY2tjaGlw
X2Nsa19vZl9hZGRfcHJvdmlkZXIpOwo+ICAgCj4gICB2b2lkIHJvY2tjaGlwX2Nsa19hZGRfbG9v
a3VwKHN0cnVjdCByb2NrY2hpcF9jbGtfcHJvdmlkZXIgKmN0eCwKPiAgIAkJCSAgICAgc3RydWN0
IGNsayAqY2xrLCB1bnNpZ25lZCBpbnQgaWQpCj4gQEAgLTQwNyw4ICs0MTAsOSBAQCB2b2lkIHJv
Y2tjaGlwX2Nsa19hZGRfbG9va3VwKHN0cnVjdCByb2NrY2hpcF9jbGtfcHJvdmlkZXIgKmN0eCwK
PiAgIAlpZiAoY3R4LT5jbGtfZGF0YS5jbGtzICYmIGlkKQo+ICAgCQljdHgtPmNsa19kYXRhLmNs
a3NbaWRdID0gY2xrOwo+ICAgfQo+ICtFWFBPUlRfU1lNQk9MKHJvY2tjaGlwX2Nsa19hZGRfbG9v
a3VwKTsKPiAgIAo+IC12b2lkIF9faW5pdCByb2NrY2hpcF9jbGtfcmVnaXN0ZXJfcGxscyhzdHJ1
Y3Qgcm9ja2NoaXBfY2xrX3Byb3ZpZGVyICpjdHgsCj4gK3ZvaWQgcm9ja2NoaXBfY2xrX3JlZ2lz
dGVyX3BsbHMoc3RydWN0IHJvY2tjaGlwX2Nsa19wcm92aWRlciAqY3R4LAo+ICAgCQkJCXN0cnVj
dCByb2NrY2hpcF9wbGxfY2xvY2sgKmxpc3QsCj4gICAJCQkJdW5zaWduZWQgaW50IG5yX3BsbCwg
aW50IGdyZl9sb2NrX29mZnNldCkKPiAgIHsKPiBAQCAtNDMxLDExICs0MzUsMTEgQEAgdm9pZCBf
X2luaXQgcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX3BsbHMoc3RydWN0IHJvY2tjaGlwX2Nsa19wcm92
aWRlciAqY3R4LAo+ICAgCQlyb2NrY2hpcF9jbGtfYWRkX2xvb2t1cChjdHgsIGNsaywgbGlzdC0+
aWQpOwo+ICAgCX0KPiAgIH0KPiArRVhQT1JUX1NZTUJPTChyb2NrY2hpcF9jbGtfcmVnaXN0ZXJf
cGxscyk7Cj4gICAKPiAtdm9pZCBfX2luaXQgcm9ja2NoaXBfY2xrX3JlZ2lzdGVyX2JyYW5jaGVz
KAo+IC0JCQkJICAgICAgc3RydWN0IHJvY2tjaGlwX2Nsa19wcm92aWRlciAqY3R4LAo+IC0JCQkJ
ICAgICAgc3RydWN0IHJvY2tjaGlwX2Nsa19icmFuY2ggKmxpc3QsCj4gLQkJCQkgICAgICB1bnNp
Z25lZCBpbnQgbnJfY2xrKQo+ICt2b2lkIHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlcyhz
dHJ1Y3Qgcm9ja2NoaXBfY2xrX3Byb3ZpZGVyICpjdHgsCj4gKwkJCQkgICAgc3RydWN0IHJvY2tj
aGlwX2Nsa19icmFuY2ggKmxpc3QsCj4gKwkJCQkgICAgdW5zaWduZWQgaW50IG5yX2NsaykKPiAg
IHsKPiAgIAlzdHJ1Y3QgY2xrICpjbGsgPSBOVUxMOwo+ICAgCXVuc2lnbmVkIGludCBpZHg7Cj4g
QEAgLTU2NCwxNCArNTY4LDE1IEBAIHZvaWQgX19pbml0IHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9i
cmFuY2hlcygKPiAgIAkJcm9ja2NoaXBfY2xrX2FkZF9sb29rdXAoY3R4LCBjbGssIGxpc3QtPmlk
KTsKPiAgIAl9Cj4gICB9Cj4gLQo+IC12b2lkIF9faW5pdCByb2NrY2hpcF9jbGtfcmVnaXN0ZXJf
YXJtY2xrKHN0cnVjdCByb2NrY2hpcF9jbGtfcHJvdmlkZXIgKmN0eCwKPiAtCQkJdW5zaWduZWQg
aW50IGxvb2t1cF9pZCwKPiAtCQkJY29uc3QgY2hhciAqbmFtZSwgY29uc3QgY2hhciAqY29uc3Qg
KnBhcmVudF9uYW1lcywKPiAtCQkJdTggbnVtX3BhcmVudHMsCj4gLQkJCWNvbnN0IHN0cnVjdCBy
b2NrY2hpcF9jcHVjbGtfcmVnX2RhdGEgKnJlZ19kYXRhLAo+IC0JCQljb25zdCBzdHJ1Y3Qgcm9j
a2NoaXBfY3B1Y2xrX3JhdGVfdGFibGUgKnJhdGVzLAo+IC0JCQlpbnQgbnJhdGVzKQo+ICtFWFBP
UlRfU1lNQk9MKHJvY2tjaGlwX2Nsa19yZWdpc3Rlcl9icmFuY2hlcyk7Cj4gKwo+ICt2b2lkIHJv
Y2tjaGlwX2Nsa19yZWdpc3Rlcl9hcm1jbGsoc3RydWN0IHJvY2tjaGlwX2Nsa19wcm92aWRlciAq
Y3R4LAo+ICsJCQkJICB1bnNpZ25lZCBpbnQgbG9va3VwX2lkLAo+ICsJCQkJICBjb25zdCBjaGFy
ICpuYW1lLCBjb25zdCBjaGFyICpjb25zdCAqcGFyZW50X25hbWVzLAo+ICsJCQkJICB1OCBudW1f
cGFyZW50cywKPiArCQkJCSAgY29uc3Qgc3RydWN0IHJvY2tjaGlwX2NwdWNsa19yZWdfZGF0YSAq
cmVnX2RhdGEsCj4gKwkJCQkgIGNvbnN0IHN0cnVjdCByb2NrY2hpcF9jcHVjbGtfcmF0ZV90YWJs
ZSAqcmF0ZXMsCj4gKwkJCQkgIGludCBucmF0ZXMpCj4gICB7Cj4gICAJc3RydWN0IGNsayAqY2xr
Owo+ICAgCj4gQEAgLTU4Niw5ICs1OTEsMTAgQEAgdm9pZCBfX2luaXQgcm9ja2NoaXBfY2xrX3Jl
Z2lzdGVyX2FybWNsayhzdHJ1Y3Qgcm9ja2NoaXBfY2xrX3Byb3ZpZGVyICpjdHgsCj4gICAKPiAg
IAlyb2NrY2hpcF9jbGtfYWRkX2xvb2t1cChjdHgsIGNsaywgbG9va3VwX2lkKTsKPiAgIH0KPiAr
RVhQT1JUX1NZTUJPTChyb2NrY2hpcF9jbGtfcmVnaXN0ZXJfYXJtY2xrKTsKPiAgIAo+IC12b2lk
IF9faW5pdCByb2NrY2hpcF9jbGtfcHJvdGVjdF9jcml0aWNhbChjb25zdCBjaGFyICpjb25zdCBj
bG9ja3NbXSwKPiAtCQkJCQkgIGludCBuY2xvY2tzKQo+ICt2b2lkIHJvY2tjaGlwX2Nsa19wcm90
ZWN0X2NyaXRpY2FsKGNvbnN0IGNoYXIgKmNvbnN0IGNsb2Nrc1tdLAo+ICsJCQkJICAgaW50IG5j
bG9ja3MpCj4gICB7Cj4gICAJaW50IGk7Cj4gICAKPiBAQCAtNjAwLDYgKzYwNiw3IEBAIHZvaWQg
X19pbml0IHJvY2tjaGlwX2Nsa19wcm90ZWN0X2NyaXRpY2FsKGNvbnN0IGNoYXIgKmNvbnN0IGNs
b2Nrc1tdLAo+ICAgCQkJY2xrX3ByZXBhcmVfZW5hYmxlKGNsayk7Cj4gICAJfQo+ICAgfQo+ICtF
WFBPUlRfU1lNQk9MKHJvY2tjaGlwX2Nsa19wcm90ZWN0X2NyaXRpY2FsKTsKPiAgIAo+ICAgc3Rh
dGljIHZvaWQgX19pb21lbSAqcnN0X2Jhc2U7Cj4gICBzdGF0aWMgdW5zaWduZWQgaW50IHJlZ19y
ZXN0YXJ0Owo+IEBAIC02MTksMTAgKzYyNiwxMCBAQCBzdGF0aWMgc3RydWN0IG5vdGlmaWVyX2Js
b2NrIHJvY2tjaGlwX3Jlc3RhcnRfaGFuZGxlciA9IHsKPiAgIAkucHJpb3JpdHkgPSAxMjgsCj4g
ICB9Owo+ICAgCj4gLXZvaWQgX19pbml0Cj4gK3ZvaWQKPiAgIHJvY2tjaGlwX3JlZ2lzdGVyX3Jl
c3RhcnRfbm90aWZpZXIoc3RydWN0IHJvY2tjaGlwX2Nsa19wcm92aWRlciAqY3R4LAo+IC0JCQkJ
CSAgICAgICB1bnNpZ25lZCBpbnQgcmVnLAo+IC0JCQkJCSAgICAgICB2b2lkICgqY2IpKHZvaWQp
KQo+ICsJCQkJICAgdW5zaWduZWQgaW50IHJlZywKPiArCQkJCSAgIHZvaWQgKCpjYikodm9pZCkp
Cj4gICB7Cj4gICAJaW50IHJldDsKPiAgIAo+IEBAIC02MzQsMyArNjQxLDQgQEAgcm9ja2NoaXBf
cmVnaXN0ZXJfcmVzdGFydF9ub3RpZmllcihzdHJ1Y3Qgcm9ja2NoaXBfY2xrX3Byb3ZpZGVyICpj
dHgsCj4gICAJCXByX2VycigiJXM6IGNhbm5vdCByZWdpc3RlciByZXN0YXJ0IGhhbmRsZXIsICVk
XG4iLAo+ICAgCQkgICAgICAgX19mdW5jX18sIHJldCk7Cj4gICB9Cj4gK0VYUE9SVF9TWU1CT0wo
cm9ja2NoaXBfcmVnaXN0ZXJfcmVzdGFydF9ub3RpZmllcik7CgoKVGhpcyBsb29rcyBnb29kIHRv
IG1lLCBzbwoKUmV2aWV3ZWQtYnk6IEtldmVyIFlhbmcgPGtldmVyLnlhbmdAcm9jay1jaGlwcy5j
b20+CgpUaGFua3MsCgotIEtldmVyCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
