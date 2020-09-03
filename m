Return-Path: <SRS0=C2RB=CM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D679DC43461
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2020 10:03:17 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 89E4B207EA
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2020 10:03:17 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="acdywSDM"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 89E4B207EA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NxWfniNcap7WLHZcTsfZy6zPuAWt8a2kKIxV7alPqm0=; b=acdywSDM1C2IjhOxGrzPR+0MK
	8M5hApBvci6fdSkO1THjFBxRjIhcnTAwrZ6N3SoXbTlq5y6d6PF5nytHLAe3O4IKbYQ5Sv1UOR/Xb
	9P2wWK4ppqgiflsXdg7tqekV3ogohG3I5GZ3RSX6s07R/lPz/ceklZ+uBHFCtUg5uIVm8loDqq12B
	iK2aZGeY1S+H7eWxsA+I/ZL58OToBzYyGlWcSHEaJscMzoV1M5Ee15/FE8nk69rNQDdOl0AeNitMd
	V4zj0EnYHg9GME32R5jaajk6Hr9gdh8RVk3UNecMXWc2BJTjcG9ThO0GUocuENAiEhF6ll20C4p1Q
	FQTAmLq/A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kDm5L-0001bL-0E; Thu, 03 Sep 2020 10:03:15 +0000
Received: from regular1.263xmail.com ([211.150.70.199])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kDm5I-0001aD-Ln
 for linux-rockchip@lists.infradead.org; Thu, 03 Sep 2020 10:03:14 +0000
Received: from localhost (unknown [192.168.167.235])
 by regular1.263xmail.com (Postfix) with ESMTP id 8116DF03;
 Thu,  3 Sep 2020 18:03:09 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-ANTISPAM-LEVEL: 2
X-SKE-CHECKED: 1
X-ABS-CHECKED: 1
Received: from [172.16.12.120] (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P22906T140608763062016S1599127388444849_; 
 Thu, 03 Sep 2020 18:03:09 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <d3018c1042ed8c5abd5c98892315d0c2>
X-RL-SENDER: kever.yang@rock-chips.com
X-SENDER: yk@rock-chips.com
X-LOGIN-NAME: kever.yang@rock-chips.com
X-FST-TO: huangtao@rock-chips.com
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-DNS-TYPE: 0
X-System-Flag: 0
Subject: Re: [PATCH v2 5/6] clk: rockchip: fix the clk config to support
 module build
To: Elaine Zhang <zhangqing@rock-chips.com>, heiko@sntech.de
References: <20200903063147.10237-1-zhangqing@rock-chips.com>
 <20200903063221.10500-1-zhangqing@rock-chips.com>
From: Kever Yang <kever.yang@rock-chips.com>
Message-ID: <2ee0e288-ae7f-5c6a-a5d4-5cee33a05e9e@rock-chips.com>
Date: Thu, 3 Sep 2020 18:03:08 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200903063221.10500-1-zhangqing@rock-chips.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200903_060313_175320_2C909721 
X-CRM114-Status: GOOD (  18.88  )
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

Ck9uIDIwMjAvOS8zIOS4i+WNiDI6MzIsIEVsYWluZSBaaGFuZyB3cm90ZToKPiB1c2UgQ09ORklH
X0NPTU1PTl9DTEtfUk9DS0NISVAgZm9yIFJrIGNvbW1vbiBjbGsgZHJpdmVycy4KPiB1c2UgQ09O
RklHX0NMS19SS1hYIGZvciBSayBzb2MgY2xrIGRyaXZlci4KPiBNYXJrIGNvbmZpZ3VyYXRpb24g
dG8gInRyaXN0YXRlIiwKPiB0byBzdXBwb3J0IGJ1aWxkaW5nIFJrIFNvQ3MgY2xvY2sgZHJpdmVy
IGFzIG1vZHVsZS4KPgo+IFNpZ25lZC1vZmYtYnk6IEVsYWluZSBaaGFuZyA8emhhbmdxaW5nQHJv
Y2stY2hpcHMuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9jbGsvS2NvbmZpZyAgICAgICAgICAgfCAg
MSArCj4gICBkcml2ZXJzL2Nsay9yb2NrY2hpcC9LY29uZmlnICB8IDc4ICsrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrCj4gICBkcml2ZXJzL2Nsay9yb2NrY2hpcC9NYWtlZmlsZSB8
IDQyICsrKysrKysrKystLS0tLS0tLS0KPiAgIDMgZmlsZXMgY2hhbmdlZCwgMTAxIGluc2VydGlv
bnMoKyksIDIwIGRlbGV0aW9ucygtKQo+ICAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvY2xr
L3JvY2tjaGlwL0tjb25maWcKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2Nsay9LY29uZmlnIGIv
ZHJpdmVycy9jbGsvS2NvbmZpZwo+IGluZGV4IDQwMjZmYWM5ZmFjMy4uYjQxYWFlZDliZDUxIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvY2xrL0tjb25maWcKPiArKysgYi9kcml2ZXJzL2Nsay9LY29u
ZmlnCj4gQEAgLTM3Myw2ICszNzMsNyBAQCBzb3VyY2UgImRyaXZlcnMvY2xrL21lc29uL0tjb25m
aWciCj4gICBzb3VyY2UgImRyaXZlcnMvY2xrL212ZWJ1L0tjb25maWciCj4gICBzb3VyY2UgImRy
aXZlcnMvY2xrL3Fjb20vS2NvbmZpZyIKPiAgIHNvdXJjZSAiZHJpdmVycy9jbGsvcmVuZXNhcy9L
Y29uZmlnIgo+ICtzb3VyY2UgImRyaXZlcnMvY2xrL3JvY2tjaGlwL0tjb25maWciCj4gICBzb3Vy
Y2UgImRyaXZlcnMvY2xrL3NhbXN1bmcvS2NvbmZpZyIKPiAgIHNvdXJjZSAiZHJpdmVycy9jbGsv
c2lmaXZlL0tjb25maWciCj4gICBzb3VyY2UgImRyaXZlcnMvY2xrL3NwcmQvS2NvbmZpZyIKPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvS2NvbmZpZyBiL2RyaXZlcnMvY2xrL3Jv
Y2tjaGlwL0tjb25maWcKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAw
MC4uNTNhNDQzOTZiYzM1Cj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvY2xrL3JvY2tj
aGlwL0tjb25maWcKPiBAQCAtMCwwICsxLDc4IEBACj4gKyMgU1BEWC1MaWNlbnNlLUlkZW50aWZp
ZXI6IEdQTC0yLjAKPiArIyBjb21tb24gY2xvY2sgc3VwcG9ydCBmb3IgUk9DS0NISVAgU29DIGZh
bWlseS4KPiArCj4gK2NvbmZpZyBDT01NT05fQ0xLX1JPQ0tDSElQCj4gKwl0cmlzdGF0ZSAiUm9j
a2NoaXAgY2xvY2sgY29udHJvbGxlciBjb21tb24gc3VwcG9ydCIKPiArCWRlcGVuZHMgb24gQVJD
SF9ST0NLQ0hJUAo+ICsJZGVmYXVsdCBBUkNIX1JPQ0tDSElQCj4gKwloZWxwCj4gKwkgIFNheSB5
IGhlcmUgdG8gZW5hYmxlIGNvbW1vbiBjbG9jayBjb250cm9sbGVyLgo+ICsKPiAraWYgQ09NTU9O
X0NMS19ST0NLQ0hJUAo+ICtjb25maWcgQ0xLX1BYMzAKPiArCXRyaXN0YXRlICJSb2NrY2hpcCBQ
eDMwIGNsb2NrIGNvbnRyb2xsZXIgc3VwcG9ydCIKPiArCWRlZmF1bHQgeQo+ICsJaGVscAo+ICsJ
ICBCdWlsZCB0aGUgZHJpdmVyIGZvciBQeDMwIENsb2NrIERyaXZlci4KPiArCj4gK2NvbmZpZyBD
TEtfUlYxMTBYCj4gKwl0cmlzdGF0ZSAiUm9ja2NoaXAgUnYxMTB4IGNsb2NrIGNvbnRyb2xsZXIg
c3VwcG9ydCIKPiArCWRlZmF1bHQgeQo+ICsJaGVscAo+ICsJICBCdWlsZCB0aGUgZHJpdmVyIGZv
ciBSdjExMHggQ2xvY2sgRHJpdmVyLgo+ICsKPiArY29uZmlnIENMS19SSzMwMzYKPiArCXRyaXN0
YXRlICJSb2NrY2hpcCBSazMwMzYgY2xvY2sgY29udHJvbGxlciBzdXBwb3J0Igo+ICsJZGVmYXVs
dCB5Cj4gKwloZWxwCj4gKwkgIEJ1aWxkIHRoZSBkcml2ZXIgZm9yIFJrMzAzNiBDbG9jayBEcml2
ZXIuCj4gKwo+ICtjb25maWcgQ0xLX1JLMzEyWAo+ICsJdHJpc3RhdGUgIlJvY2tjaGlwIFJrMzEy
eCBjbG9jayBjb250cm9sbGVyIHN1cHBvcnQiCj4gKwlkZWZhdWx0IHkKPiArCWhlbHAKPiArCSAg
QnVpbGQgdGhlIGRyaXZlciBmb3IgUmszMTJ4IENsb2NrIERyaXZlci4KPiArCj4gK2NvbmZpZyBD
TEtfUkszMTg4Cj4gKwl0cmlzdGF0ZSAiUm9ja2NoaXAgUmszMTg4IGNsb2NrIGNvbnRyb2xsZXIg
c3VwcG9ydCIKPiArCWRlZmF1bHQgeQo+ICsJaGVscAo+ICsJICBCdWlsZCB0aGUgZHJpdmVyIGZv
ciBSazMxODggQ2xvY2sgRHJpdmVyLgo+ICsKPiArY29uZmlnIENMS19SSzMyMlgKPiArCXRyaXN0
YXRlICJSb2NrY2hpcCBSazMyMnggY2xvY2sgY29udHJvbGxlciBzdXBwb3J0Igo+ICsJZGVmYXVs
dCB5Cj4gKwloZWxwCj4gKwkgIEJ1aWxkIHRoZSBkcml2ZXIgZm9yIFJrMzIyeCBDbG9jayBEcml2
ZXIuCj4gKwo+ICtjb25maWcgQ0xLX1JLMzI4OAo+ICsJdHJpc3RhdGUgIlJvY2tjaGlwIFJrMzI4
OCBjbG9jayBjb250cm9sbGVyIHN1cHBvcnQiCj4gKwlkZXBlbmRzIG9uIEFSTQo+ICsJZGVmYXVs
dCB5Cj4gKwloZWxwCj4gKwkgIEJ1aWxkIHRoZSBkcml2ZXIgZm9yIFJrMzI4OCBDbG9jayBEcml2
ZXIuCj4gKwo+ICtjb25maWcgQ0xLX1JLMzMwOAo+ICsJdHJpc3RhdGUgIlJvY2tjaGlwIFJrMzMw
OCBjbG9jayBjb250cm9sbGVyIHN1cHBvcnQiCj4gKwlkZWZhdWx0IHkKPiArCWhlbHAKPiArCSAg
QnVpbGQgdGhlIGRyaXZlciBmb3IgUmszMzA4IENsb2NrIERyaXZlci4KPiArCj4gK2NvbmZpZyBD
TEtfUkszMzI4Cj4gKwl0cmlzdGF0ZSAiUm9ja2NoaXAgUmszMzI4IGNsb2NrIGNvbnRyb2xsZXIg
c3VwcG9ydCIKPiArCWRlZmF1bHQgeQo+ICsJaGVscAo+ICsJICBCdWlsZCB0aGUgZHJpdmVyIGZv
ciBSazMzMjggQ2xvY2sgRHJpdmVyLgo+ICsKPiArY29uZmlnIENMS19SSzMzNjgKPiArCXRyaXN0
YXRlICJSb2NrY2hpcCBSazMzNjggY2xvY2sgY29udHJvbGxlciBzdXBwb3J0Igo+ICsJZGVmYXVs
dCB5Cj4gKwloZWxwCj4gKwkgIEJ1aWxkIHRoZSBkcml2ZXIgZm9yIFJrMzM2OCBDbG9jayBEcml2
ZXIuCj4gKwo+ICtjb25maWcgQ0xLX1JLMzM5OQo+ICsJdHJpc3RhdGUgIlJvY2tjaGlwIFJrMzM5
OSBjbG9jayBjb250cm9sbGVyIHN1cHBvcnQiCj4gKwlkZWZhdWx0IHkKPiArCWhlbHAKPiArCSAg
QnVpbGQgdGhlIGRyaXZlciBmb3IgUmszMzk5IENsb2NrIERyaXZlci4KPiArZW5kaWYKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9jbGsvcm9ja2NoaXAvTWFrZWZpbGUgYi9kcml2ZXJzL2Nsay9yb2Nr
Y2hpcC9NYWtlZmlsZQo+IGluZGV4IDdjNWI1ODEzYTg3Yy4uYTk5ZTRkOWJiYWUxIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvY2xrL3JvY2tjaGlwL01ha2VmaWxlCj4gKysrIGIvZHJpdmVycy9jbGsv
cm9ja2NoaXAvTWFrZWZpbGUKPiBAQCAtMywyNCArMywyNiBAQAo+ICAgIyBSb2NrY2hpcCBDbG9j
ayBzcGVjaWZpYyBNYWtlZmlsZQo+ICAgIwo+ICAgCj4gLW9iai15CSs9IGNsay5vCj4gLW9iai15
CSs9IGNsay1wbGwubwo+IC1vYmoteQkrPSBjbGstY3B1Lm8KPiAtb2JqLXkJKz0gY2xrLWhhbGYt
ZGl2aWRlci5vCj4gLW9iai15CSs9IGNsay1pbnZlcnRlci5vCj4gLW9iai15CSs9IGNsay1tbWMt
cGhhc2Uubwo+IC1vYmoteQkrPSBjbGstbXV4Z3JmLm8KPiAtb2JqLXkJKz0gY2xrLWRkci5vCj4g
LW9iai0kKENPTkZJR19SRVNFVF9DT05UUk9MTEVSKQkrPSBzb2Z0cnN0Lm8KPiArb2JqLSQoQ09O
RklHX0NPTU1PTl9DTEtfUk9DS0NISVApICs9IGNsay1yb2NrY2hpcC5vCj4gICAKPiAtb2JqLXkJ
Kz0gY2xrLXB4MzAubwo+IC1vYmoteQkrPSBjbGstcnYxMTA4Lm8KPiAtb2JqLXkJKz0gY2xrLXJr
MzAzNi5vCj4gLW9iai15CSs9IGNsay1yazMxMjgubwo+IC1vYmoteQkrPSBjbGstcmszMTg4Lm8K
PiAtb2JqLXkJKz0gY2xrLXJrMzIyOC5vCj4gLW9iai15CSs9IGNsay1yazMyODgubwo+IC1vYmot
eQkrPSBjbGstcmszMzA4Lm8KPiAtb2JqLXkJKz0gY2xrLXJrMzMyOC5vCj4gLW9iai15CSs9IGNs
ay1yazMzNjgubwo+IC1vYmoteQkrPSBjbGstcmszMzk5Lm8KPiArY2xrLXJvY2tjaGlwLXkgKz0g
Y2xrLm8KPiArY2xrLXJvY2tjaGlwLXkgKz0gY2xrLXBsbC5vCj4gK2Nsay1yb2NrY2hpcC15ICs9
IGNsay1jcHUubwo+ICtjbGstcm9ja2NoaXAteSArPSBjbGstaGFsZi1kaXZpZGVyLm8KPiArY2xr
LXJvY2tjaGlwLXkgKz0gY2xrLWludmVydGVyLm8KPiArY2xrLXJvY2tjaGlwLXkgKz0gY2xrLW1t
Yy1waGFzZS5vCj4gK2Nsay1yb2NrY2hpcC15ICs9IGNsay1tdXhncmYubwo+ICtjbGstcm9ja2No
aXAteSArPSBjbGstZGRyLm8KPiArY2xrLXJvY2tjaGlwLSQoQ09ORklHX1JFU0VUX0NPTlRST0xM
RVIpICs9IHNvZnRyc3Qubwo+ICsKPiArb2JqLSQoQ09ORklHX0NMS19QWDMwKSAgICAgICAgICAr
PSBjbGstcHgzMC5vCj4gK29iai0kKENPTkZJR19DTEtfUlYxMTBYKSAgICAgICAgKz0gY2xrLXJ2
MTEwOC5vCj4gK29iai0kKENPTkZJR19DTEtfUkszMDM2KSAgICAgICAgKz0gY2xrLXJrMzAzNi5v
Cj4gK29iai0kKENPTkZJR19DTEtfUkszMTJYKSAgICAgICAgKz0gY2xrLXJrMzEyOC5vCj4gK29i
ai0kKENPTkZJR19DTEtfUkszMTg4KSAgICAgICAgKz0gY2xrLXJrMzE4OC5vCj4gK29iai0kKENP
TkZJR19DTEtfUkszMjJYKSAgICAgICAgKz0gY2xrLXJrMzIyOC5vCj4gK29iai0kKENPTkZJR19D
TEtfUkszMjg4KSAgICAgICAgKz0gY2xrLXJrMzI4OC5vCj4gK29iai0kKENPTkZJR19DTEtfUksz
MzA4KSAgICAgICAgKz0gY2xrLXJrMzMwOC5vCj4gK29iai0kKENPTkZJR19DTEtfUkszMzI4KSAg
ICAgICAgKz0gY2xrLXJrMzMyOC5vCj4gK29iai0kKENPTkZJR19DTEtfUkszMzY4KSAgICAgICAg
Kz0gY2xrLXJrMzM2OC5vCj4gK29iai0kKENPTkZJR19DTEtfUkszMzk5KSAgICAgICAgKz0gY2xr
LXJrMzM5OS5vCgpUaGlzIGxvb2tzIGdvb2QgdG8gbWUsIHNvCgpSZXZpZXdlZC1ieTogS2V2ZXIg
WWFuZyA8a2V2ZXIueWFuZ0Byb2NrLWNoaXBzLmNvbT4KClRoYW5rcywKCi0gS2V2ZXIKCgoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
