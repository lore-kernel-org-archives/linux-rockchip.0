Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3FB87CFB43F
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 13:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XrtKPGF/o6FxB0xgPZZN68HfDpfOTgf2/aynV9izEKE=; b=0aB66p9uUyRflo
	OPxbgpq5Yru+sBqTSyCTTWgIZPnJ9w/yzy5Gdhmd1eT+ab9vX+1sDCDG/jqnkmUq5tziakyp2IR/2
	YB/WhJB7Fqq126/PKk8RxrX6txrbrkKaYiLg+ZTQIaSuE7In8C4bWqG2NQxu8QjImFafQu60bKral
	vgcTWXhfvF3l2S+GEO/yHVRu+LDjbCSxD7icEKJ/0mUP5htZCwI7BfhA80axLGhjvoPbxGyX6w6+n
	0RYUV7Yr30k2Z9FmHiHTIe096nnCKuXf0rt+sqf1Ctey6HKLyKS07I3fVoBnH/SMxCb8Ydaiw5MBD
	Xxvoj4uGLFH29lqHXG3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxoFc-00000002bAx-26Iu;
	Mon, 07 Oct 2024 13:58:16 +0000
Received: from omta40.uswest2.a.cloudfilter.net ([35.89.44.39])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxoEn-00000002b1k-1uUa
	for linux-rockchip@lists.infradead.org;
	Mon, 07 Oct 2024 13:58:14 +0000
Received: from eig-obgw-5004a.ext.cloudfilter.net ([10.0.29.221])
	by cmsmtp with ESMTPS
	id xULBswPeNvH7lxoEWskjrX; Mon, 07 Oct 2024 13:57:09 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id xoETsTzjxWvXpxoEUszFCe; Mon, 07 Oct 2024 13:57:07 +0000
X-Authority-Analysis: v=2.4 cv=LtdZyWdc c=1 sm=1 tr=0 ts=6703e8b3
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=DAUX931o1VcA:10 a=-pn6D5nKLtMA:10 a=vU9dKmh3AAAA:8
 a=KpWdpyGzixcpRlYuMWcA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=rsP06fVo5MYu2ilr0aT5:22 a=ZCPYImcxYIQFgLOT52_G:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:References:
	Cc:To:From:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=Off8ca3Q8QoJ3XNFUGaDvWVL6Usji4QPjLFIyyxfzWQ=; b=lgJdqFNPc5I3BQUntvm/jLl8CC
	LEM1XeCTXgDIcoW0wm/IhAE6kVF4k0HW0Ez4oG80HvZsNCQvdJfrlBNXzEYRRCPCUfwRRagCZV6hJ
	YzO4AY/jYqeoI8J3eu8HrxwmqviF1OuxbLazzZ1CLUD+PGztUC4lUWaX+ECIuHwGv1kTsYmFf/4V4
	Q6I3mjQM1v2/zZmsQeEaNhxKT1W6l7V47RYOoKgV8O2w5A9v/N1TvNGcOvykt5hKCj6F+kN6i7OCe
	d6Y2mG2rd8/GLpP6vJXl1fp9mIUTQ1dGdDToGf/OZJaYjIYE0woskmqXabCEuo1JUEekzhwKPdsK5
	sXmoxyVQ==;
Received: from [122.165.245.213] (port=56716 helo=[192.168.1.106])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <karthikeyan@linumiz.com>)
	id 1sxoER-003Hi5-01;
	Mon, 07 Oct 2024 19:27:03 +0530
Message-ID: <37e26b46-2f6a-4db4-b003-59088ef1dcc1@linumiz.com>
Date: Mon, 7 Oct 2024 19:26:58 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/6] dt-bindings: watchdog: rockchip: Add
 rockchip,rv1126-wdt string
From: karthikeyan <karthikeyan@linumiz.com>
To: Heiko Stuebner <heiko@sntech.de>, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, alexandre.belloni@bootlin.com, wim@linux-watchdog.org,
 linux@roeck-us.net
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rtc@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20240912142451.2952633-1-karthikeyan@linumiz.com>
 <20240912142451.2952633-2-karthikeyan@linumiz.com> <2206048.Mh6RI2rZIc@phil>
 <ddca4051-0e83-4d39-8654-12210ffa5685@linumiz.com>
Content-Language: en-US
In-Reply-To: <ddca4051-0e83-4d39-8654-12210ffa5685@linumiz.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1sxoER-003Hi5-01
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.106]) [122.165.245.213]:56716
X-Source-Auth: karthikeyan@linumiz.com
X-Email-Count: 4
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfJOye2PBdt0bUn6+aCpJWu3TyAzAWq/YX0+s8gXJTg9/aj3Ow8a1uYUqyhEvX2P+JEQbRathlpuxzk0Gciga2ztTcpDqercfuKg20tXVjIp/hU0tzph+
 ck6s3hVs3xT1V7RYqJ8mLKSATM9nMA2rZJ989wJI3rjbssQ9JoKY0LPW+sKYHa/6jnH/fwefyzNILWfqLZa7DmS/8fYqykhLnHoddMuXnUp8tTbuZ/7/SJjj
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241007_065725_731360_6A61BE80 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
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

CgpPbiA5LzE4LzI0IDEyOjU5LCBrYXJ0aGlrZXlhbiB3cm90ZToKPiAKPiAKPiBPbiA5LzE4LzI0
IDA0OjQ2LCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPj4gSGV5LAo+Pgo+PiBBbSBEb25uZXJzdGFn
LCAxMi4gU2VwdGVtYmVyIDIwMjQsIDE2OjI0OjQ2IENFU1Qgc2NocmllYiBLYXJ0aGlrZXlhbiAK
Pj4gS3Jpc2huYXNhbXk6Cj4+PiBBZGQgcm9ja2NoaXAscnYxMTI2LXdkdCBjb21wYXRpYmxlIHN0
cmluZy4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBLYXJ0aGlrZXlhbiBLcmlzaG5hc2FteSA8a2Fy
dGhpa2V5YW5AbGludW1pei5jb20+Cj4+Cj4+IEkgdGhpbmsgdGhpcyBwYXRjaCBtaXNzZXMgc29t
ZSByZWNpcGllbnRzIGJlY2F1c2UgbmVpdGhlcgo+PiB0aGUgd2F0Y2hkb2cgbWFpbnRhaW5lcnMg
bm9yIHRoZSB3YXRjaGRvZyBsaXN0IGlzIGluY2x1ZGVkLgo+Pgo+PiBXZSdsbCBuZWVkIGZvciB0
aGVtIHRvIGF0IGxlYXN0IEFjayB0aGlzIHBhdGNoLCBzbyB0aGV5J2xsCj4+IG5lZWQgdG8gYmUg
aW5jbHVkZWQuIFBsZWFzZSBjaGVjayB5b3VyIHNjcmlwdHMvZ2V0X21haW50YWluZXIucGwKPj4g
Y2FsbAo+Pgo+Pgo+PiBUaGFua3MKPj4gSGVpa28KPj4KPiBBcG9sb2dpZXMgZm9yIG1pc3Npbmcg
dGhlbS4gQWRkaW5nIHRoZW0gaW4gdGhpcyByZXBseSBtYWlsLgo+Pj4gLS0tCj4+Pgo+Pj4gTm90
ZXM6Cj4+PiDCoMKgwqDCoCB2MzoKPj4+IMKgwqDCoMKgIC0gYWRkIHdhdGNoZG9nIGNvbXBhdGli
bGUgc3RyaW5nCj4+Pgo+Pj4gwqAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dh
dGNoZG9nL3NucHMsZHctd2R0LnlhbWwgfCAxICsKPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxIGlu
c2VydGlvbigrKQo+Pj4KPj4+IGRpZmYgLS1naXQgCj4+PiBhL0RvY3VtZW50YXRpb24vZGV2aWNl
dHJlZS9iaW5kaW5ncy93YXRjaGRvZy9zbnBzLGR3LXdkdC55YW1sIAo+Pj4gYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvd2F0Y2hkb2cvc25wcyxkdy13ZHQueWFtbAo+Pj4gaW5k
ZXggYzdhYWIwNDE4YTMyLi5iY2NkMjdhMWU0NzAgMTAwNjQ0Cj4+PiAtLS0gYS9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3Mvd2F0Y2hkb2cvc25wcyxkdy13ZHQueWFtbAo+Pj4gKysr
IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3dhdGNoZG9nL3NucHMsZHctd2R0
LnlhbWwKPj4+IEBAIC0zMSw2ICszMSw3IEBAIHByb3BlcnRpZXM6Cj4+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgLSByb2NrY2hpcCxyazM1Njgtd2R0Cj4+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgLSByb2NrY2hpcCxyazM1ODgtd2R0Cj4+PiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgLSByb2NrY2hpcCxydjExMDgtd2R0Cj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgLSByb2NrY2hpcCxydjExMjYtd2R0Cj4+PiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIC0gY29uc3Q6IHNucHMsZHctd2R0Cj4+PiDCoMKgwqAgcmVnOgo+Pj4KPj4KPj4KPj4K
Pj4KPiAKPiBCZXN0IFJlZ2FyZHMsCj4gS2FydGhpa2V5YW4KCkdlbnRsZSByZW1haW5kZXIuCgpC
ZXN0IFJlZ2FyZHMsCkthcnRoaWtleWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
