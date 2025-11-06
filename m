Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6341CCF9F8
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 05:10:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7eUHKX0U31i0vgsxHz5smf+GFTfd8ptXYlxTHKeFRKU=; b=tQ4Dg6jQfO8Uk9
	KdtVn8ltMz1dRLPzRsc6afaR3KYBH1FROURg5rhSSdsFC0438W+Rt+6F1p2RAj+K5neIjWUwmhPey
	zIxWbZb6EaYXqC1IWgHRg5kwGNLvMG17kKomx53nHXpNz/+JE8hIOn/fEe4mqmxzM3lz4qsa6PCU9
	rx8qcTGl2xq44Ofw1ewNAlyqjZF2ISKeQicBjl00KWvqNEDDrjjvRnmrfaRG6qTtPHemJr8C8zHID
	A5pD605J/AijfS3HEblqbazhtXJj4m/qZDWae8wBCpepY10zNOIwvBLYCJ8VlPe11uBAIR3rTtdBz
	mcLhIK2HEoc3i+QXYcdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGsG5-0000000EsJg-0t9i;
	Thu, 06 Nov 2025 05:10:05 +0000
Received: from smtpbgbr1.qq.com ([54.207.19.206])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGsG0-0000000EsIP-1di2
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Nov 2025 05:10:03 +0000
X-QQ-mid: zesmtpip3t1762405729t0eb36ce5
X-QQ-Originating-IP: J22Kp3bUmr3w/xHa9uyHGXnUOdZUmSU/eZnYd9FtaZQ=
Received: from [IPV6:240f:10b:7440:1:4c9d:dff9 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 06 Nov 2025 13:08:46 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 17265237028341387643
Message-ID: <57F9C541303D73B3+4c84cba4-8378-4b65-8065-46e28217694b@radxa.com>
Date: Thu, 6 Nov 2025 14:08:46 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/3] arm64: dts: rockchip: Add Radxa CM5 IO Board
To: Jimmy Hon <honyuenkwun@gmail.com>, Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, joseph.kogut@gmail.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se,
 kever.yang@rock-chips.com, quentin.schulz@cherry.de, pbrobinson@gmail.com,
 amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20251105051335.17652-1-naoki@radxa.com>
 <20251105051335.17652-4-naoki@radxa.com>
 <CALWfF7KyTfpXSyjVQaFzqtn6KyDxuyZOBpPR8y-jf6sduNxq5A@mail.gmail.com>
 <1EE1A1D9D7C100DA+1b365782-98c4-4ee0-ab96-920990841903@radxa.com>
 <35ff8e6f-dd2b-d909-70c7-b19240e32ccf@manjaro.org>
 <CALWfF7K3zNxSsXVpW8pLc_xWi793HG99OvbshtP-0=764JmPKw@mail.gmail.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <CALWfF7K3zNxSsXVpW8pLc_xWi793HG99OvbshtP-0=764JmPKw@mail.gmail.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4b-0
X-QQ-XMAILINFO: Mh0xRtMdhgZRp2g6EgECwRtwC9r+dXJ6FfKha+gaR+wYZkbZf24xxD/C
	vHNTf1hPb88JXTmLTbVgGcBSEUZgUlApCUPj+l8Kkkfew3Cm/QDR0UCTQg1MbrEEteZjSeK
	J7nRdd18pztC8+X4Bu8vCB6I6XJef71hQ0Jap9Dyah6YfRzb95QgyA3A3GVLWiyohRlY5RH
	IIKCtEOgCQfJS6IT1P3S1ElcfTYRp4T3gCZznktgz9Le6Cs9QY3PZn7HkYtOJYLh8xFPv9D
	xVdWvNGfgNszOLjt6thGgi5dqlVw0s6zgrh/8QDtCj+wBHLC9UHNIl7g1tt1rOInmW1oTla
	in7+wKdugkS2LoF9rbg9oV4X2uMKw6z6/SfFqmrkS2BKrd0ptwKtcG6l3Du7uVsZhpcfCIT
	NnFU+EvfEq5zK53sazyumKXmNfsow/K+0c5RTxaagE6aVLmLFmww8veLnxHzxxTodG0Chgg
	CK1MREIvcg2R8GpepXAzM3OiZze+8zjPCbk69Hx7NHBtn4BWSheXyk1xOB0F+4+fVAKcdlY
	V4Ve0gpXRgVJqXQvsoAADhup/cyigVD1iEN21/+BMjZ/ErkD2T5sR9sks6AVn0/SFhG9lfg
	JipyP7kEt51DQsTkxrkGFStjkxUI+uivFq93dn+MopqKlMALyZzf8iVOqOsBcafRIbqUFGA
	s0AwY4/uz0ntDtzX+k0VOR9wTeqP+LXZsu5sLXDNhvXUCjv1LUKrAvDCGPPJPYNO0fGcg2Q
	GjuQR+RKDP5DB5kufwWtf1A9+moTWQixgjPqSyQmKOIVNPvp6ZN4TMdmA5FfE67Z49Jb4BN
	kIATWNhzOAYHjtAHp5WDl2++YTP3g7kYHsFTHgXsWWRRQSh2j6t69Pl2s/0jr58czE79giw
	1C8X67NTjIPa5mPrM7lbOFQVvFTtfYAjFmcZj67h5tzguOxbEzG2yH2HXsL8wIH/I4iIJIM
	LDX5ByAAvd1FEdIB/VmnPPJubbHn7zlukn5Nd/ysoxhPuH9rASNYsyAVkfDfUe8f77RY=
X-QQ-XMRINFO: Nq+8W0+stu50PRdwbJxPCL0=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_211001_283179_5BC66598 
X-CRM114-Status: GOOD (  20.59  )
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

SGkgSmltbXksCgpPbiAxMS82LzI1IDEzOjUzLCBKaW1teSBIb24gd3JvdGU6Cj4gT24gV2VkLCBO
b3YgNSwgMjAyNSBhdCA5OjMx4oCvUE0gRHJhZ2FuIFNpbWljIDxkc2ltaWNAbWFuamFyby5vcmc+
IHdyb3RlOgo+IAo+IFsgc25pcCBdCj4gCj4+Cj4+IFdpdGggYWxsIHRoYXQgaW4gbWluZCwgd2Ug
c2hvdWxkIHNwZWNpZnkgIm5vLW1tYyIgaGVyZSwgYmVjYXVzZQo+PiB3ZSdyZSBkZXNjcmliaW5n
IGEgbWljcm9TRCBzbG90LCBpbnN0ZWFkIG9mIGRlc2NyaWJpbmcgc29tZSBoeWJyaWQKPj4gTU1D
L21pY3JvU0Qgc2xvdC4gIFRoYXQgYWxzbyBleHBsYWlucyB3aHkgdGhlIGFkYXB0ZXIgc29sZCBi
eSBSYWR4YQo+PiBpcyBkZXNjcmliZWQgYXMgbm90IHRvIGJlIHVzZWQgd2l0aCBtaWNyb1NEIGNh
cmQgc2xvdHMgb24gU0JDcy4gIEknZAo+PiBhbHNvIGxpa2UgdG8gaGVhciBpcyB0aGlzIGFkYXB0
ZXIvZU1NQyBjaGlwIGNvbWJvIHJlY29nbml6ZWQgYnkgdGhlCj4+IGtlcm5lbCB3aGVuICJuby1t
bWMiIGlzIHNwZWNpZmllZDsgaXQgc2hvdWxkIGZhaWwuCj4+Cj4+IEFjdHVhbGx5LCBub3Qgc3Bl
Y2lmeWluZyAibm8tbW1jIiBoZXJlIG1heSByZXN1bHQgaW4gc29tZSB1bmZvcmVzZWVuCj4+IGlz
c3VlcyB3aXRoIHNvbWUgKG9yIHBlcmhhcHMgbWFueT8pIG1pY3JvU0QgY2FyZHMsIGJlY2F1c2Ug
dGhlIE1NQwo+PiBkcml2ZXJzIHdpbGwgdHJlYXQgdGhlbSBhcyBNTUMtY2FwYWJsZSBkZXZpY2Vz
IGFuZCB0cnkgdG8gaW5pdGlhbGl6ZQo+PiB0aGVtIGFzIHN1Y2gsIHdoaWNoIG1heSBjYXVzZSBh
bGwga2luZHMgb2YgaXNzdWVzLiAgSW4gZmFjdCwgSSdtIG5vdAo+PiByZWFsbHkgc3VyZSB0aGF0
IHRoZSBNTUMgZHJpdmVycyBhcmUgYWN0dWFsbHkgaW1wbGVtZW50ZWQgaW4gYSB3YXkKPj4gdGhh
dCBhdm9pZHMgYWxsIHBvc3NpYmxlIGlzc3VlcyB3aXRoIHRoZSBzdG9yYWdlIGNvbnRyb2xsZXJz
IHRoYXQKPj4gYXJlIGNhcGFibGUgb2YgYm90aCBTRCBhbmQgTU1DIG1vZGVzIHdoZW4gbmVpdGhl
ciBvZiAibm8tc2QiIGFuZAo+PiAibm8tbW1jIiBpcyBzcGVjaWZpZWQgaW4gdGhlaXIgRFQgbm9k
ZXMuCj4gCj4gSHlicmlkIE1NQyBhbmQgU0Qgc2xvdHMgYXJlIHByZXR0eSBub3JtYWwgb24gVVNC
IGNhcmQgcmVhZGVycy4gU28gaXQncwo+IG5vcm1hbCBmb3IgdGhlIGhvc3QgY29udHJvbGxlciB0
byBmaWd1cmUgb3V0IHdoYXQga2luZCBvZiBjYXJkIGlzIGluCj4gdGhlIHNsb3QuCj4gaHR0cHM6
Ly91ZGl0YWdhcndhbC5pbi91bmRlcnN0YW5kaW5nLXNkLXNkaW8tYW5kLW1tYy1pbnRlcmZhY2Uv
Cj4gCj4gaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvdG9y
dmFsZHMvbGludXguZ2l0L2NvbW1pdC8/aWQ9NmFlM2U1MzdlYWI5ZjU2MGI1MTZiMDAxZWI4OWYw
Y2Q1NjhiZGNlZAo+IHdhcyB0aGUgY29tbWl0IHRoYXQgaW50cm9kdWNlZCB0aGUgZGV2aWNlIHRy
ZWUgcHJvcGVydGllcy4gQnkgdGhlCj4gd29yZGluZyBvZiB0aGUgY29tbWl0IG1lc3NhZ2UsIHRo
ZXNlIGRldmljZSB0cmVlIHByb3BlcnRpZXMgYXJlIHVzZWQKPiB0byBpbmRpY2F0ZSB0byB0aGUg
ZHJpdmVyIGlmIHRoZSBob3N0IGNvbnRyb2xsZXIgaGFyZHdhcmUgaXMgY2FwYWJsZQo+IG9mIE1N
QyBpbml0aWFsaXphdGlvbiBvciBTRCBpbml0aWFsaXphdGlvbi4KPiAKPiBTaW5jZSB0aGUgaG9z
dCBjb250cm9sbGVyIGluIHRoZSBSSzM1ODggaXMgY2FwYWJsZSBvZiBhbGwgdGhlIG1vZGVzLAo+
IHRoZXNlIHByb3BlcnRpZXMgZG8gbm90IG5lZWQgdG8gYmUgc3BlY2lmaWVkLgo+IAo+IFNpbmNl
IFJhZHhhIGhhcyB0aGUgZU1NQyB0byB1U0QgYWRhcHRlciwgaXQgbWFrZXMgc2Vuc2UgUmFkeGEg
d291bGQKPiB3YW50IHRvIGNvbmZpZ3VyZSB0aGVpciBtaWNyb1NEIGNhcmQgc2xvdCBvbiB0aGVp
ciBib2FyZHMgdG8gYmUgYQo+IGh5YnJpZCBTRC9NTUMgc2xvdC4KPiAKPiBOb3csIHRoZSBtb3Jl
IGZ1biBxdWVzdGlvbiBpcyBpZiB0aGUgYWRhcHRlciBjYW4gaGFuZGxlIGVNTUMgSFMyMDAKPiB1
c2luZyB0aGUgNC1iaXQgYnVzPwoKSSBhZGRlZAogIG1tYy1oczIwMC0xXzh2OwoKSSBnb3QKClsg
IDIyNi4wOTk1MTBdIG1tY19ob3N0IG1tYzE6IEJ1cyBzcGVlZCAoc2xvdCAwKSA9IDQwMDAwMEh6
IChzbG90IHJlcSAKNDAwMDAwSHosIGFjdHVhbCA0MDAwMDBIWiBkaXYgPSAwKQpbICAyMjYuNTQ2
MjQ2XSBtbWNfaG9zdCBtbWMxOiBCdXMgc3BlZWQgKHNsb3QgMCkgPSA0OTUwMDAwMEh6IChzbG90
IHJlcSAKNTIwMDAwMDBIeiwgYWN0dWFsIDQ5NTAwMDAwSFogZGl2ID0gMCkKWyAgMjI2LjU0NjM3
MV0gbW1jX2hvc3QgbW1jMTogQnVzIHNwZWVkIChzbG90IDApID0gMTk4MDAwMDAwSHogKHNsb3Qg
cmVxIAoyMDAwMDAwMDBIeiwgYWN0dWFsIDE5ODAwMDAwMEhaIGRpdiA9IDApClsgIDIyNi42NTY4
NTNdIGR3bW1jX3JvY2tjaGlwIGZlMmMwMDAwLm1tYzogU3VjY2Vzc2Z1bGx5IHR1bmVkIHBoYXNl
IHRvIDc2ClsgIDIyNi42NTcwMTFdIG1tYzE6IGVycm9yIC0xMTAgd2hpbHN0IGluaXRpYWxpc2lu
ZyBNTUMgY2FyZApbICAyMjYuNjcxNDY5XSBtbWNfaG9zdCBtbWMxOiBCdXMgc3BlZWQgKHNsb3Qg
MCkgPSAzMDAwMDBIeiAoc2xvdCByZXEgCjMwMDAwMEh6LCBhY3R1YWwgMzAwMDAwSFogZGl2ID0g
MCkKWyAgMjI2Ljc5MzczM10gbW1jMTogc3dpdGNoIHRvIGJ1cyB3aWR0aCA0IGZhaWxlZApbICAy
MjYuNzk4OTE1XSBtbWMxOiBtbWNfc2VsZWN0X2hzMjAwIGZhaWxlZCwgZXJyb3IgLTExMApbICAy
MjYuNzk5MzkwXSBtbWMxOiBlcnJvciAtMTEwIHdoaWxzdCBpbml0aWFsaXNpbmcgTU1DIGNhcmQK
WyAgMjI2LjgxMTU0OV0gbW1jX2hvc3QgbW1jMTogQnVzIHNwZWVkIChzbG90IDApID0gMjAwMDAw
SHogKHNsb3QgcmVxIAoyMDAwMDBIeiwgYWN0dWFsIDIwMDAwMEhaIGRpdiA9IDApClsgIDIyNi45
NDc1MThdIG1tYzE6IHN3aXRjaCB0byBidXMgd2lkdGggNCBmYWlsZWQKWyAgMjI2Ljk1NDk3OF0g
bW1jMTogbW1jX3NlbGVjdF9oczIwMCBmYWlsZWQsIGVycm9yIC0xMTAKWyAgMjI2Ljk1NTQ1NF0g
bW1jMTogZXJyb3IgLTExMCB3aGlsc3QgaW5pdGlhbGlzaW5nIE1NQyBjYXJkCgpJIGRvbid0IGtu
b3cgaWYgdGhpcyBpcyBib2FyZC1kZXBlbmRlbnQuCgpCZXN0IHJlZ2FyZHMsCgotLQpGVUtBVU1J
IE5hb2tpClJhZHhhIENvbXB1dGVyIChTaGVuemhlbikgQ28uLCBMdGQuCgo+IEppbW15Cj4gCgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
