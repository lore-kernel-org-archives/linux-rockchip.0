Return-Path: <SRS0=+3Ix=ID=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1F13FC433DB
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 01:41:55 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 36E4065004
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Mar 2021 01:41:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 36E4065004
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6haJ+MOROPLM9aG7ZZk1wsLQ03NGJMarGk4Ty94j/x8=; b=nYh6Je/dgJCt5qAvMlJR3hXqi
	wIirNzi7CZaKxGjtlxpBTquYarUc3rj6w5T75TxVRv92Cai3g6lnvWZ/ysD+Xr32QDCa+8ObrTnEA
	kXJ6B9n4RsvivYIH1krRp/hQwcwPKXXO7RLUO42zcIQOptTO7LeZKUdCUe3Mo82ktZotspeR3DOYu
	P5euYd7V0wxpRP+z0Mp4aURz1looiuuRZg5aXsQZJa/Y7ey8+SY5oV8Cqrvzo8LA66EX8nE8CPHe1
	0of/33InoLTfLWleBpxaiLxFzLKQnMp1rcuSlw4I7Eg5wEutWuM185NC9/aHZyHNi6xA0kV2doPAn
	mPvSZsmqA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHzTR-00BOrv-CP; Fri, 05 Mar 2021 01:41:49 +0000
Received: from regular1.263xmail.com ([211.150.70.195])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHzTD-00BOjd-SZ; Fri, 05 Mar 2021 01:41:39 +0000
Received: from localhost (unknown [192.168.167.16])
 by regular1.263xmail.com (Postfix) with ESMTP id 3D5101CB9;
 Fri,  5 Mar 2021 09:41:29 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [192.168.60.65] (unknown [103.29.142.67])
 by smtp.263.net (postfix) whith ESMTP id
 P32477T140679609587456S1614908485904547_; 
 Fri, 05 Mar 2021 09:41:29 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <eff9c719a74490addbfecb5f059ec3c5>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: finley.xiao@rock-chips.com
X-SENDER-IP: 103.29.142.67
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
Subject: Re: [PATCH v3 1/4] dt-binding: clock: Document rockchip,rk3568-cru
 bindings
To: Elaine Zhang <zhangqing@rock-chips.com>, mturquette@baylibre.com,
 robh+dt@kernel.org, sboyd@kernel.org, heiko@sntech.de
Cc: devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, cl@rock-chips.com, huangtao@rock-chips.com,
 tony.xie@rock-chips.com, finley.xiao@rock-chips.com
References: <20210301064749.10392-1-zhangqing@rock-chips.com>
 <20210301064749.10392-2-zhangqing@rock-chips.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <db38c068-651e-edd6-fb3f-4768fab91ad7@rock-chips.com>
Date: Fri, 5 Mar 2021 09:41:24 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210301064749.10392-2-zhangqing@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210305_014136_441233_5FBB285C 
X-CRM114-Status: GOOD (  19.73  )
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

Ck9uIDIwMjEvMy8xIOS4i+WNiDI6NDcsIEVsYWluZSBaaGFuZyB3cm90ZToKPiBEb2N1bWVudCB0
aGUgZGV2aWNlIHRyZWUgYmluZGluZ3Mgb2YgdGhlIHJvY2tjaGlwIFJrMzU2OCBTb0MKPiBjbG9j
ayBkcml2ZXIgaW4gRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL3JvY2tj
aGlwLHJrMzU2OC1jcnUueWFtbC4KPgo+IFNpZ25lZC1vZmYtYnk6IEVsYWluZSBaaGFuZyA8emhh
bmdxaW5nQHJvY2stY2hpcHMuY29tPgoKUGF0Y2ggbG9va3MgZ29vZCB0byBtZS4KClJldmlld2Vk
LWJ5OiBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJvY2stY2hpcHMuY29tIAo8bWFpbHRvOmtldmVy
LnlhbmdAcm9jay1jaGlwcy5jb20+PgoKVGhhbmtzLAotIEtldmVyCj4gLS0tCj4gICAuLi4vYmlu
ZGluZ3MvY2xvY2svcm9ja2NoaXAscmszNTY4LWNydS55YW1sICAgfCA2MCArKysrKysrKysrKysr
KysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgNjAgaW5zZXJ0aW9ucygrKQo+ICAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9jbG9jay9yb2NrY2hp
cCxyazM1NjgtY3J1LnlhbWwKPgo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvY2xvY2svcm9ja2NoaXAscmszNTY4LWNydS55YW1sIGIvRG9jdW1lbnRhdGlv
bi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Nsb2NrL3JvY2tjaGlwLHJrMzU2OC1jcnUueWFtbAo+IG5l
dyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAwMDAwMDAwMDAwLi5iMmMyNjA5NzgyN2YKPiAt
LS0gL2Rldi9udWxsCj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Ns
b2NrL3JvY2tjaGlwLHJrMzU2OC1jcnUueWFtbAo+IEBAIC0wLDAgKzEsNjAgQEAKPiArIyBTUERY
LUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5IE9SIEJTRC0yLUNsYXVzZQo+ICslWUFN
TCAxLjIKPiArLS0tCj4gKyRpZDogaHR0cDovL2RldmljZXRyZWUub3JnL3NjaGVtYXMvY2xvY2sv
cm9ja2NoaXAscmszNTY4LWNydS55YW1sIwo+ICskc2NoZW1hOiBodHRwOi8vZGV2aWNldHJlZS5v
cmcvbWV0YS1zY2hlbWFzL2NvcmUueWFtbCMKPiArCj4gK3RpdGxlOiBST0NLQ0hJUCByazM1Njgg
RmFtaWx5IENsb2NrIENvbnRyb2wgTW9kdWxlIEJpbmRpbmcKPiArCj4gK21haW50YWluZXJzOgo+
ICsgIC0gRWxhaW5lIFpoYW5nIDx6aGFuZ3FpbmdAcm9jay1jaGlwcy5jb20+Cj4gKyAgLSBIZWlr
byBTdHVlYm5lciA8aGVpa29Ac250ZWNoLmRlPgo+ICsKPiArZGVzY3JpcHRpb246IHwKPiArICBU
aGUgUkszNTY4IGNsb2NrIGNvbnRyb2xsZXIgZ2VuZXJhdGVzIHRoZSBjbG9jayBhbmQgYWxzbyBp
bXBsZW1lbnRzIGEKPiArICByZXNldCBjb250cm9sbGVyIGZvciBTb0MgcGVyaXBoZXJhbHMuCj4g
KyAgKGV4YW1wbGVzOiBwcm92aWRlIFNDTEtfVUFSVDFcUENMS19VQVJUMSBhbmQgU1JTVF9QX1VB
UlQxXFNSU1RfU19VQVJUMSBmb3IgVUFSVCBtb2R1bGUpCj4gKyAgRWFjaCBjbG9jayBpcyBhc3Np
Z25lZCBhbiBpZGVudGlmaWVyIGFuZCBjbGllbnQgbm9kZXMgY2FuIHVzZSB0aGlzIGlkZW50aWZp
ZXIKPiArICB0byBzcGVjaWZ5IHRoZSBjbG9jayB3aGljaCB0aGV5IGNvbnN1bWUuIEFsbCBhdmFp
bGFibGUgY2xvY2tzIGFyZSBkZWZpbmVkIGFzCj4gKyAgcHJlcHJvY2Vzc29yIG1hY3JvcyBpbiB0
aGUgZHQtYmluZGluZ3MvY2xvY2svcmszNTY4LWNydS5oIGhlYWRlcnMgYW5kIGNhbiBiZQo+ICsg
IHVzZWQgaW4gZGV2aWNlIHRyZWUgc291cmNlcy4KPiArCj4gK3Byb3BlcnRpZXM6Cj4gKyAgY29t
cGF0aWJsZToKPiArICAgIGVudW06Cj4gKyAgICAgIC0gcm9ja2NoaXAscmszNTY4LWNydQo+ICsg
ICAgICAtIHJvY2tjaGlwLHJrMzU2OC1wbXVjcnUKPiArCj4gKyAgcmVnOgo+ICsgICAgbWF4SXRl
bXM6IDEKPiArCj4gKyAgIiNjbG9jay1jZWxscyI6Cj4gKyAgICBjb25zdDogMQo+ICsKPiArICAi
I3Jlc2V0LWNlbGxzIjoKPiArICAgIGNvbnN0OiAxCj4gKwo+ICtyZXF1aXJlZDoKPiArICAtIGNv
bXBhdGlibGUKPiArICAtIHJlZwo+ICsgIC0gIiNjbG9jay1jZWxscyIKPiArICAtICIjcmVzZXQt
Y2VsbHMiCj4gKwo+ICthZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKPiArCj4gK2V4YW1wbGVz
Ogo+ICsgICMgQ2xvY2sgQ29udHJvbCBNb2R1bGUgbm9kZToKPiArICAtIHwKPiArICAgIHBtdWNy
dTogY2xvY2stY29udHJvbGxlckBmZGQwMDAwMCB7Cj4gKyAgICAgIGNvbXBhdGlibGUgPSAicm9j
a2NoaXAscmszNTY4LXBtdWNydSI7Cj4gKyAgICAgIHJlZyA9IDwweGZkZDAwMDAwIDB4MTAwMD47
Cj4gKyAgICAgICNjbG9jay1jZWxscyA9IDwxPjsKPiArICAgICAgI3Jlc2V0LWNlbGxzID0gPDE+
Owo+ICsgICAgfTsKPiArICAtIHwKPiArICAgIGNydTogY2xvY2stY29udHJvbGxlckBmZGQyMDAw
MCB7Cj4gKyAgICAgIGNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTY4LWNydSI7Cj4gKyAgICAg
IHJlZyA9IDwweGZkZDIwMDAwIDB4MTAwMD47Cj4gKyAgICAgICNjbG9jay1jZWxscyA9IDwxPjsK
PiArICAgICAgI3Jlc2V0LWNlbGxzID0gPDE+Owo+ICsgICAgfTsKCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
