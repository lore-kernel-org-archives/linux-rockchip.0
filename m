Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F2A3CDE027
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Nov 2025 08:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:From:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c45TyyKemZuaPyjcqJAxP+FoHAhMGlNlddpW1Pzue8E=; b=LQwGG9o37Z4nzZ
	CBfPXHCqmz3TUxL10OgN1WWki4bj75JjQrsS+MKkXzr02x2whP+UeUF2I4xCg/RMy3wSrI6KkpTca
	H5KXzmoS/3IyBXBKrHq1RXnaEgvZCwAOMWHV0bWyBfrXKcUpwrdW/Apy9Rho69ZGjbvEKHKFtzCrA
	YVNqLHdtEK9B4snn9UfRm3LTGJCvy153AT3wxXWhSvtsE9eu+MccyGb8+2M8Y4lORt1GWklE0AjJP
	ROPqgwv7e4RGScY0YHOzkGMQS9yTMFtWRIwySHseMzuXNMS8P5RFf3eHVNyvjKBBfeFPkUY28nuaX
	Aegm2CW/7MzKMn7Bi5Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJp1s-0000000BnaF-3iUO;
	Fri, 14 Nov 2025 08:19:36 +0000
Received: from smtpbgsg1.qq.com ([54.254.200.92])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJp1p-0000000BnZJ-1Gts
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Nov 2025 08:19:35 +0000
X-QQ-mid: zesmtpip2t1763108320td482a376
X-QQ-Originating-IP: /ZjaCL+znD+Tfs4lh+5EA5aACZFZwR4BzKc+TwaSxjk=
Received: from [IPV6:240f:10b:7440:1:1ea:c5f5: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 14 Nov 2025 16:18:36 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 15662952469343122312
Message-ID: <76B8B69932F4AA70+f730dac3-31e2-42b2-88a5-bfebf0ee8e36@radxa.com>
Date: Fri, 14 Nov 2025 17:18:36 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: arm: rockchip: Add Radxa CM5 IO board
From: FUKAUMI Naoki <naoki@radxa.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Joseph Kogut <joseph.kogut@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Steve deRosier <derosier@cal-sierra.com>
References: <174735136138.1544989.11909422896170025756.robh@kernel.org>
 <20250528221823.2974653-1-joseph.kogut@gmail.com>
 <20250528221823.2974653-2-joseph.kogut@gmail.com>
 <20250529-impressive-real-monkey-a7818b@kuoka>
 <6443BD03B4C4F1FE+d20c3903-e2dc-4c2b-8f6e-fac38f242898@radxa.com>
 <2f4e7f94-2921-493c-94fa-45749a060bc0@kernel.org>
 <870075785A1ED2B9+6fb5238e-dc57-406b-acf9-b88b237d8e5b@radxa.com>
 <f12bc562-b5bb-4bdd-b274-23582df8f2d4@kernel.org>
 <E04572034CE4DC35+005c7dd7-cb2f-4f82-9889-ac14733a7647@radxa.com>
Content-Language: en-US
In-Reply-To: <E04572034CE4DC35+005c7dd7-cb2f-4f82-9889-ac14733a7647@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: M5r28j6evhA1it5aR9ahzcVq8U/yUtAakftmU3iLs75Irk39b4YBNxFS
	5RopknbY4p1vC3B4FO4yCBYZtJplAUu/tsV0vQhlPOHhsBYV6WNfVqVswkgVsxHe65upce7
	3XxHRDvZgkXd0yy2RE7+UCY9zLQr1tDq2gxfnP9mJvj4XWNCabtqgVyKu7GxFdQoHIKY0cW
	wIIDax2qoA3dfevoyD4SRXgfHukyRg8PPlQkYIOX/9IvUOUWg386zEr2q/tunyUkt5rbp1e
	R+w6vtFXFmqLywR1UTP9qlyP10Xe0OqBP+vK7BE85Px4ROb4mCDF9R3+asKOnJcMT7c+XJB
	nio7N5Zycoa0L6G22q1VnkIVC5QKY1MGdJ9iM/W5tzoTlVBAnGVC5WqaaQ/7P9bUjTMUjdI
	i6HMpdbA3j5xKZl2sSft1FRuXU3291IcDNCBrFF9YiiejEes1v/BpUhphowBEM2h0EBF/YN
	jUxKahOW9T4Nibxt/pMDwcczUd9bk0E6zvs8W5AfZ9hGUVnR1AzLE6VBeNB8OBX2MeVNh+s
	g9ZPDdX4+5dH26+XePiM4daoK1FN4K8NrWzge6XgI3BzLS5DU+vhd0Z0TAabSEkwaj4qixQ
	5MAXzKXBya2MIRcnNM9Nc/omHMRT1EHK+RIhhOFn4E6DeaXV2ouWBR5TiJAJob6grlha61n
	Yu67PL2RKYJQdPSHMmx/+8h8mFizlysshxFs8vBzkovJr7AblankvwEPUVK4y3lFfe1vcp7
	e8+4MoYThGntUlLrb++DM17srRSAyngLkuY+xVA7m4qBNKWbiryWtSt3uquSwclE7TsDbGz
	golXh9gvCU1lLxhPIqTQ5UE1S4Y0nWUYZoRDs4GunnlG/cEnWUYvb7FuqtAwsQfbNeh2v9I
	psIk74u3SYJ4870Pw8s24paH4s3/CQq74EglVx48afGU3Gn4nXwLIeO+rsy9S9AHHjGN/rM
	wyGHAtpuaVIm6EKJzmS8+54xQ9dtXqsizsyjnzeKgQNDHLu5LxA/2NegPn6chYH/Mmvyeqr
	MtJ14E7LLgrzwvJIBbtnes0LU+WruQ4UkHBBy+rg==
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251114_001933_736424_42C8ACF0 
X-CRM114-Status: GOOD (  14.91  )
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

T24gMTEvNS8yNSAxMDozNywgRlVLQVVNSSBOYW9raSB3cm90ZToKPiBIaSBLcnp5c3p0b2YKPiAK
PiBPbiAxMC8yOC8yNSAxOTo0MSwgS3J6eXN6dG9mIEtvemxvd3NraSB3cm90ZToKPj4gT24gMjgv
MTAvMjAyNSAxMDo0NCwgRlVLQVVNSSBOYW9raSB3cm90ZToKPj4+IEhpIEpvc2VwaAo+Pj4KPj4+
IFlvdXIgcGF0Y2ggc2VlbXMgdG8gYmUgTkFLZWQuCj4+PiBJIHdpbGwgc3VibWl0IG5ldyBwYXRj
aCBzb29uLgo+Pgo+PiBTb3JyeSwgd2hhdD8gRG9uJ3QgaGlqYWNrIG90aGVyIHBlb3BsZSdzIHdv
cmsuCj4gCj4gSSBoYXZlIEpvc2VwaCdzIHBlcm1pc3Npb24gdG8gcG9zdCBteSBwYXRjaC4KPiAK
PiBGdXJ0aGVybW9yZSwgdGhpcyBpcyBub3QgdGhlIGZpcnN0IHRpbWUsIHRvIG15IGtub3dsZWRn
ZSwgdGhhdCBzb21lb25lIAo+IGVsc2UgaGFzIHBvc3RlZCBhbm90aGVyIHBhdGNoIGZvciB0aGUg
c2FtZSBib2FyZC4gKFNlZSBiZWxvdykKPiAKPiAgwqBodHRwczovL2xvcmUua2VybmVsLm9yZy9s
aW51eC1yb2NrY2hpcC8yMDI0MTIyNjAwNTg0NS40NjQ3My0xLSAKPiBuYW9raUByYWR4YS5jb20v
VC8jdQo+ICDCoGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXJvY2tjaGlwLzIwMjUwMzI0
LXJvY2s1YnAtZm9yLXVwc3RyZWFtLSAKPiB2MS0wLTYyMTdlZGYxNWIxOUBrZXJuZWwub3JnL1Qv
I3UKCkNvdWxkIHlvdSBwbGVhc2Ugd3JpdGUgY29uY2lzZSBhbmQgcHJlY2lzZSBhbnN3ZXJzL2Nv
bW1lbnRzIGZvciB0aGUgcGFydCAKeW91IHByZXZpb3VzbHkgc25pcHBlZFsxXT8KClsxXSAKaHR0
cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvODY5MzkwNTYtNzYxNy00NzMwLTk0
NjQtZjdlY2JkMGU0NTM3QGtlcm5lbC5vcmcvCgpCZXN0IHJlZ2FyZHMsCgotLQpGVUtBVU1JIE5h
b2tpClJhZHhhIENvbXB1dGVyIChTaGVuemhlbikgQ28uLCBMdGQuCgo+IEJlc3QgcmVnYXJkcywK
PiAKPiAtLSAKPiBGVUtBVU1JIE5hb2tpCj4gUmFkeGEgQ29tcHV0ZXIgKFNoZW56aGVuKSBDby4s
IEx0ZC4KPiAKPj4+Cj4+PiBCZXN0IHJlZ2FyZHMsCj4+Pgo+Pj4gLS0gCj4+PiBGVUtBVU1JIE5h
b2tpCj4+PiBSYWR4YSBDb21wdXRlciAoU2hlbnpoZW4pIENvLiwgTHRkLgo+Pj4KPj4+IE9uIDEw
LzI4LzI1IDE4OjM3LCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+Pj4+IE9uIDI4LzEwLzIw
MjUgMTA6MzMsIEZVS0FVTUkgTmFva2kgd3JvdGU6Cj4+Pj4+IEhpIEtyenlzenRvZiwKPj4+Pj4K
Pj4+Pj4gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wcm9qZWN0L2xpbnV4LXJvY2tjaGlw
LyAKPj4+Pj4gcGF0Y2gvMjAyNTA1MjgyMjE4MjMuMjk3NDY1My0yLWpvc2VwaC5rb2d1dEBnbWFp
bC5jb20vCj4+Pj4+Cj4+Pj4+IE9uIDUvMjkvMjUgMTg6MTksIEtyenlzenRvZiBLb3psb3dza2kg
d3JvdGU6Cj4+Pj4+PiBPbiBXZWQsIE1heSAyOCwgMjAyNSBhdCAwMzoxODoyMVBNIEdNVCwgSm9z
ZXBoIEtvZ3V0IHdyb3RlOgo+Pj4+Pj4+IEFkZCBkZXZpY2UgdHJlZSBiaW5kaW5nIGZvciB0aGUg
UmFkeGEgQ001IElPIGJvYXJkLgo+Pj4+Pj4+Cj4+Pj4+Pj4gVGhpcyBib2FyZCBpcyBiYXNlZCBv
biB0aGUgcmszNTg4cy4KPj4+Pj4+Cj4+Pj4+PiBEbyBub3QgYXR0YWNoICh0aHJlYWQpIHlvdXIg
cGF0Y2hzZXRzIHRvIHNvbWUgb3RoZXIgdGhyZWFkcyAKPj4+Pj4+ICh1bnJlbGF0ZWQKPj4+Pj4+
IG9yIG9sZGVyIHZlcnNpb25zKS4gVGhpcyBidXJpZXMgdGhlbSBkZWVwIGluIHRoZSBtYWlsYm94
IGFuZCBtaWdodAo+Pj4+Pj4gaW50ZXJmZXJlIHdpdGggYXBwbHlpbmcgZW50aXJlIHNldHMuCj4+
Pj4+Pgo+Pj4+Pj4KPj4+Pj4+IFJldmlld2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5
c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+Cj4+Pj4+IFBsZWFzZSBleHBsYWluIHRoZSBzb3J0
aW5nIHJ1bGUgdXNlZCBmb3IgdGhpcyBmaWxlLiBZb3UgbXVzdCBoYXZlIAo+Pj4+PiBrbm93bgo+
Pj4+PiB0aGUgc29ydGluZyBydWxlOyBvdGhlcndpc2UsIGhvdyBjYW4geW91IGJlIHN1cmUgdGhp
cyBwYXRjaCBpcyAKPj4+Pj4gY29ycmVjdD8KPj4+Pgo+Pj4+IEh1aD8gSSBkb24ndCBoYXZlIGEg
Y2x1ZSBhYm91dCBzb3J0aW5nIHJ1bGUgYnV0IGlmIHlvdSBtb2NrIG15IHJldmlldwo+Pj4+IGxl
dCdzIG1ha2UgaXQgZGlmZmVyZW50Ogo+Pj4+Cj4+Pj4gTkFLCj4+Cj4+Cj4+IEFoLCB5b3Ugd2Vy
ZSBwb2tpbmcgYXJvdW5kIG90aGVyIHBhdGNoPyBJIHNob3VsZCBoYXZlIGlnbm9yZWQgdGhhdCA6
Lwo+Pgo+Pgo+PiBCZXN0IHJlZ2FyZHMsCj4+IEtyenlzenRvZgo+Pgo+IAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
