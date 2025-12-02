Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4489CFD376
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 Dec 2025 08:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b0AV4d0HNnJXFNrJMozOJR7rsICKgu3ohZmsXwBTX/M=; b=Rk/gp1ZyXua5No
	+vnR9miW6jx3MmGAhsNkxXZTtdItGJZOdG0nzoZge8unKRApfVhe67yPvNg+Kw1f4jVGyr9mqOdNg
	EH1nBrTD0I1a6bhlwA8xcr1KuFLrq6PnblqMG5yn92OCVKARlHE8IsAQ5h4ZB6bZoisDKzrP75n3n
	rQ2E4h4M0i0AwmzZkvy3e+imTZrsrDYfp0ym95tHpZGhChEvrvFIoEb8rEeCFHWz3Eehdw+KTeDfG
	ULiIjLddAGpexHtaEY/bCG1e6M5VCg5PihYwJb/HvxFQWrcCEEQmKcOcKxjWzxSDBU6rsdCeoxjqi
	EfyW0LE28Yr5DrEsPtuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQLuY-000000053vf-0BSP;
	Tue, 02 Dec 2025 08:39:02 +0000
Received: from smtpbguseast1.qq.com ([54.204.34.129])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQLuV-000000053ua-19Y1
	for linux-rockchip@lists.infradead.org;
	Tue, 02 Dec 2025 08:39:01 +0000
X-QQ-mid: zesmtpip4t1764664668t3725c885
X-QQ-Originating-IP: qHSl1Yl2slirFGRTqNTrStmEkXBqkUSw3ZOxNOPAMrA=
Received: from [IPV6:240f:10b:7440:1:a68f:7233 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 02 Dec 2025 16:37:45 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16993972051535158119
Message-ID: <852EA51CD6BBC1AD+2613d6c1-d999-47c1-9842-ef6ce3ddd1f3@radxa.com>
Date: Tue, 2 Dec 2025 17:37:44 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND PATCH v5 3/3] arm64: dts: rockchip: Add support for CM5
 IO carrier
To: Michael Opdenacker <michael.opdenacker@rootcommit.com>, heiko@sntech.de
Cc: joseph.kogut@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, quentin.schulz@cherry.de, jonas@kwiboo.se,
 kever.yang@rock-chips.com, i@next.chainsx.cn, honyuenkwun@gmail.com,
 inindev@gmail.com, dsimic@manjaro.org, pbrobinson@gmail.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251202052702.155523-1-naoki@radxa.com>
 <20251202052702.155523-4-naoki@radxa.com>
 <39d3d988-f436-4b31-a130-c65dc292c469@rootcommit.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <39d3d988-f436-4b31-a130-c65dc292c469@rootcommit.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: N/Ph2bJENH2/htY4pOZ6h340t0Waraojdd/x6Yks2rLw6wFr4NorXhlZ
	ymJ49yVAfNO1o3ORY3qG3cJkbCuqZME+iYulVv8VMnGRny5FPR8f0mebHz5JCOCfG0xKMeJ
	j/8pzaiu1UBBjxuGn6PGni9QImv5SJa+GJ0REnew4C5LLdAJo3eQuiwjqjOxtumudZzRtQe
	OT8YqQcMrMO+zYlVGXNu4eCdIlmIHtd8HbJJVmxw6gCdKXzgvAMzQymm0Sf3ueyQ6bTnsJK
	hxrdRPvY2QHjuZJPRwWuWqsAZxAY0TsKPKteIr9JPMnIjJ4VbAPh4ZdTZFIikO7Mb8zWEWG
	KVVfIsH5ntp+tCaKVzXBthosjLiQwy+3Jz+3aHp2eh0gLITBCZKJk4FMAVZ4eulUVB8XG5q
	GLGLXkf1b5ZZyYjJsczSD50xuwAV7WeAYAq0WFomfrNmre2IOx8RVv6J3ZkSbF8SxvTGDSA
	gTCM/p4qeNLTfPCxotTlrFoN8SUE/SKWCJSYeStffbYlYPxb2M/sTPGRkSEBO4My+3/Jgd0
	HV0MFLRpvZfcKgS/eFvUcYhLPgIO4aTnUaukYYv+NrusvsL8E/7IaEbb2LRZnXnVwPldOZA
	wDIycWZMW8voE5PXZ2wlFnZ1nw9DqMWQNwY7oNElBEe2O7fZY43aMhyH4q70X2UtGPPZxmn
	ixycH7vT/92bFIXWUri71+AS2dfp8O2luq1GjrIE+qBt7ovMiRm5/LB7KD9AXeMQrmoCd4F
	2BFBXMh7eMA5kZyVTUfdnVSc4l2Bm7ZECgpIbew1hRW4ojvGMv7UQxcxY2la56gWzzU1DkE
	HohFN9tIbbVSEkVq7r4GDXN6CfaXf+0v1BQf4UKhED3pGL5UlRmk562eUTqyi/zuRZUrKYx
	aKGWWIqP3KCGBFexzyHqkPgfcfxzBfMYU1R3jVfMeTUcgfNv3LF3hXxdIVKQCj/WOGeR8oG
	y7C9FRQUs3UG6GeK0YGpfJeFx52HvA6c76u3rWFv8rqSJMT65cnkqxSOekorfECmOghKcPz
	oAVB1sNCNcNa28cLwWvDPG/4B5tVI=
X-QQ-XMRINFO: MPJ6Tf5t3I/ycC2BItcBVIA=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_003859_922027_62CDBFC4 
X-CRM114-Status: GOOD (  11.20  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
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

SGkgTWljaGFlbCwKCk9uIDEyLzIvMjUgMTc6MzAsIE1pY2hhZWwgT3BkZW5hY2tlciB3cm90ZToK
PiBIaSBOYW9raSwKPiAKPiBUaGFua3MgZm9yIHRoZSBwYXRjaCB1cGRhdGUhCj4gCj4gT24gMTIv
Mi8yNSAwNjoyNywgRlVLQVVNSSBOYW9raSB3cm90ZToKPj4gRnJvbTogSm9zZXBoIEtvZ3V0IDxq
b3NlcGgua29ndXRAZ21haWwuY29tPgo+Pgo+PiBGcm9tOiBKb3NlcGggS29ndXQgPGpvc2VwaC5r
b2d1dEBnbWFpbC5jb20+Cj4+Cj4+IFNwZWNpZmljYXRpb246Cj4+IC0gMXggSERNSQo+PiAtIDJ4
IE1JUEkgRFNJCj4+IC0gMnggTUlQSSBDU0kKPj4gLSAxeCBlRFAKPj4gLSAxeCBNLjIgRSBrZXkK
Pj4gLSAxeCBVU0IgMy4wIEhvc3QKPj4gLSAxeCBVU0IgMy4wIE9URwo+PiAtIDJ4IFVTQiAyLjAg
SG9zdAo+PiAtIEhlYWRwaG9uZSBqYWNrIHcvIG1pY3JvcGhvbmUKPj4gLSBHaWdhYml0IEV0aGVy
bmV0IHcvIFBvRQo+PiAtIG1pY3JvU0Qgc2xvdAo+PiAtIDQwLXBpbiBleHBhbnNpb24gaGVhZGVy
Cj4+IC0gMTJWIERDCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEpvc2VwaCBLb2d1dCA8am9zZXBoLmtv
Z3V0QGdtYWlsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogRlVLQVVNSSBOYW9raSA8bmFva2lAcmFk
eGEuY29tPgo+PiAtLS0KPj4gUmViYXNlZCBvbiBsaW51eC1uZXh0IDIwMjUxMjAxLCBubyBjaGFu
Z2UuCj4+IC0tLQo+PiDCoCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxlwqDC
oMKgwqDCoMKgwqDCoCB8wqDCoCAxICsKPj4gwqAgLi4uL2R0cy9yb2NrY2hpcC9yazM1ODhzLXJh
ZHhhLWNtNS1pby5kdHPCoMKgwqDCoCB8IDQ4NiArKysrKysrKysrKysrKysrKysKPj4gwqAgMiBm
aWxlcyBjaGFuZ2VkLCA0ODcgaW5zZXJ0aW9ucygrKQo+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQg
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJhZHhhLWNtNS0gCj4+IGlvLmR0
cwo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9NYWtlZmls
ZSBiL2FyY2gvYXJtNjQvYm9vdC8gCj4+IGR0cy9yb2NrY2hpcC9NYWtlZmlsZQo+PiBpbmRleCBk
YmRkYTk3ODNlOTMuLjY5NzgwOGI1NDRkOCAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9NYWtlZmlsZQo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL01ha2VmaWxlCj4+IEBAIC0yMTAsNiArMjEwLDcgQEAgZHRiLSQoQ09ORklHX0FSQ0hfUk9D
S0NISVApICs9IHJrMzU4OHMtb2Ryb2lkLW0yLmR0Ygo+PiDCoCBkdGItJChDT05GSUdfQVJDSF9S
T0NLQ0hJUCkgKz0gcmszNTg4cy1vcmFuZ2VwaS01LmR0Ygo+PiDCoCBkdGItJChDT05GSUdfQVJD
SF9ST0NLQ0hJUCkgKz0gcmszNTg4cy1vcmFuZ2VwaS01Yi5kdGIKPj4gwqAgZHRiLSQoQ09ORklH
X0FSQ0hfUk9DS0NISVApICs9IHJrMzU4OHMtcm9jLXBjLmR0Ygo+PiArZHRiLSQoQ09ORklHX0FS
Q0hfUk9DS0NISVApICs9IHJrMzU4OHMtcmFkeGEtY201LWlvLmR0Ygo+PiDCoCBkdGItJChDT05G
SUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4cy1yb2NrLTVhLmR0Ygo+PiDCoCBkdGItJChDT05G
SUdfQVJDSF9ST0NLQ0hJUCkgKz0gcmszNTg4cy1yb2NrLTVjLmR0Ygo+IAo+IFNtYWxsIG5pdHBp
Y2suLi4KPiBUaGUgZmlsZSBuYW1lcyBhcmUgYWxwaGFudW1lcmljYWxseSBvcmRlcmVkIGluIHRo
aXMgZmlsZS4KPiBZb3Ugc2hvdWxkIGhhdmUgcmszNTg4cy1yYWR4YS1jbTUtaW8uZHRiIGJlZm9y
ZSByazM1ODhzLXJvYy1wYy5kdGIuCgpTb3JyeSwgaXQgd2FzIG15IG1pc3Rha2Ugd2hpbGUgcmVi
YXNpbmcgdG8gbGludXgtbmV4dC4gSSdsbCByZXNlbmQgdGhpcyAKcGF0Y2ggc2VyaWVzIHdpdGgg
dGhpcyBjb3JyZWN0aW9uLgoKQmVzdCByZWdhcmRzLAoKLS0KRlVLQVVNSSBOYW9raQpSYWR4YSBD
b21wdXRlciAoU2hlbnpoZW4pIENvLiwgTHRkLgoKPiBDaGVlcnMKPiBNaWNoYWVsLgo+IAoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2Nr
Y2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
