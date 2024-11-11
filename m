Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B76FDD3ABF1
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Nov 2024 19:02:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Cc:From:References:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HGzjo7HCFojtCZkjglqcA6OcWZm2XbCyiQEo6lzJgYM=; b=WVor/KTeaopKEe
	RJm02Y5+qNb1Pu2RhtCrPyQkbJ3gg15jkbaI7urxHSBIB8TDpDadmqiTi1H9ibIpkzg9qqahbgLJQ
	jPnxCDtiA1H6X1uCYN8gz5CkRiCqYfVhQ+6Q+J2cMtfgEkqY9FrKzwueIsOMQmkj1NJPEoF61/Hyo
	gk6MxUNjiatSo/vuJ6P5QcC07QcPP+DH1Udy0zj7htta8tm5UJBg3dusgcQb94nFY44ygcUJ/uWqM
	qmgL+f8LU92GkJx4wkYsmFpyjcDT0P7/vSpZR++9/ZTAAmU5POqo7OHIVMnWonqWeTqN/cEK87RQK
	CxAdMaek5Nvk0W8/qcQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAZgK-00000000zd6-0fQ8;
	Mon, 11 Nov 2024 19:02:36 +0000
Received: from smtp.forwardemail.net ([207.246.76.47])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAZeV-00000000zFm-1TV5
	for linux-rockchip@lists.infradead.org;
	Mon, 11 Nov 2024 19:00:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: Cc: From:
 References: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1731351608;
 bh=CMsuVaCWcGbn+PNUEsDJOg5Je/VIwxR3vM5XvB5rDGk=;
 b=wjEnW+dPyV8k2P+3CBh7Ltj4le8kHlTqFdSeaSBOH2HJd6/7dSRDsUnBdRpPhx5uSnoR8n8a6
 CquRSd9JzlX5gHK9FRamWJFBfGZyPQNbPuFkAN3J1IwK3z4rAdFqLxxQO8f388Maw+PLf+vI+Ax
 o8WjTmD3D6kXetL8UGtbHwl7AIo3cvMPFcpsZPAapG5IgaB917oqAp+raRHLa1cpW+KK2K90iuq
 cM/sbyzX2q8g/nOaSUenRRZ3b+FSVsUFWvgkkTJHJPhqyUXTp3LES6wcHGtHBcvZLUeU3lhYKVR
 8H8tOalRiKcfTUojUUtvUdT0LnCb3DcFHDBOy+jqNjSQ==
Message-ID: <c89c2f16-ffb0-4b61-a962-9705f9f1e0e2@kwiboo.se>
Date: Mon, 11 Nov 2024 20:00:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Add supported UHS-I rates to
 sdmmc0 on rock-3b
To: =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@linux.com>
References: <20241111181807.13211-1-tszucs@linux.com>
 <20241111181807.13211-2-tszucs@linux.com>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>,
 Chukun Pan <amadeus@jmu.edu.cn>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
In-Reply-To: <20241111181807.13211-2-tszucs@linux.com>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 207.246.76.47
X-ForwardEmail-ID: 673254361b4710f318d5ef3b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241111_110043_664957_F579EF84 
X-CRM114-Status: GOOD (  11.78  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgVGFtw6FzLAoKT24gMjAyNC0xMS0xMSAxOToxNywgVGFtw6FzIFN6xbFjcyB3cm90ZToKPiBB
ZGQgYWxsIHN1cHBvcnRlZCBVSFMtSSByYXRlcyB0byBzZG1tYzAgYW5kIGFsbG93IDIwMCBNSHog
bWF4aW11bSBjbG9jayB0bwo+IGJlbmVmaXQgbW9kZXJuIFNEIGNhcmRzLgo+IAo+IFNpZ25lZC1v
ZmYtYnk6IFRhbcOhcyBTesWxY3MgPHRzenVjc0BsaW51eC5jb20+Cj4gLS0tCj4gIGFyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXJvY2stM2IuZHRzIHwgNiArKysrKysKPiAgMSBm
aWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTY4LXJvY2stM2IuZHRzCj4gaW5kZXggM2QwYzFjY2ZhYTc5Li4yNDJh
ZjUzMzdjZGYgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
Njgtcm9jay0zYi5kdHMKPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2
OC1yb2NrLTNiLmR0cwo+IEBAIC02NzAsOCArNjcwLDE0IEBAICZzZG1tYzAgewo+ICAJYnVzLXdp
ZHRoID0gPDQ+Owo+ICAJY2FwLXNkLWhpZ2hzcGVlZDsKPiAgCWRpc2FibGUtd3A7Cj4gKwltYXgt
ZnJlcXVlbmN5ID0gPDIwMDAwMDAwMD47Cj4gIAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+
ICAJcGluY3RybC0wID0gPCZzZG1tYzBfYnVzNCAmc2RtbWMwX2NsayAmc2RtbWMwX2NtZCAmc2Rt
bWMwX2RldD47Cj4gKwlzZC11aHMtc2RyMTI7Cj4gKwlzZC11aHMtc2RyMjU7Cj4gKwlzZC11aHMt
c2RyNTA7Cj4gKwlzZC11aHMtc2RyMTA0Owo+ICsJc2QtdWhzLWRkcjUwOwoKVGhlcmUgaXMgYW4g
aXNzdWUgd2l0aCBpby1kb21haW4gZHJpdmVyIG5vdCBhbHdheXMgYmVpbmcgcHJvYmVkIGJlZm9y
ZQptbWMgZHJpdmVyLCB0aGlzIHR5cGljYWxseSByZXN1bHQgaW4gaW8tZG9tYWluIGJlaW5nIGNv
bmZpZ3VyZWQgd3JvbmcsCmFuZCBtbWMgdHVuaW5nIGhhcHBlbiBiZWZvcmUgaW8tZG9tYWluIGlz
IGNvcnJlY3RseSBjb25maWd1cmVkLgoKWW91IGNhbiB1c3VhbGx5IG9ic2VydmUgdGhpcyBieSBs
b29raW5nIGF0IHRoZSB0dW5pbmcgdmFsdWUgZHVyaW5nIGJvb3QKYW5kIGNvbXBhcmluZyBpdCB0
byB0aGUgdHVuaW5nIHZhbHVlIGFmdGVyIHJlbW92aW5nIGFuZCByZS1pbnNlcmluZyBhCnNkLWNh
cmQuCgpCZWNhdXNlIG9mIHRoaXMgdWhzIG1vZGVzIHdhcyBsZWZ0IG91dCBmcm9tIGluaXRpYWwg
RFQgc3VibWlzc2lvbiwgc29tZQpjYXJkcyB3aWxsIHdvcmsgb3RoZXJzIHdvbnQsIHNkLXVocy1z
ZHI1MCBpcyBrbm93biB0byBiZSB3b3JraW5nIHdpdGgKbW9zdCBjYXJkcyBldmVuIHdpdGggdGhl
IHByb2JlIG9yZGVyIGlzc3VlLgoKQWxzbyBJIHRob3VnaHQgdGhhdCBsb3dlciBzcGVlZHMgd2hl
cmUgaW1wbGllZD8KClJlZ2FyZHMsCkpvbmFzCgo+ICAJdm1tYy1zdXBwbHkgPSA8JnZjYzN2M19z
ZD47Cj4gIAl2cW1tYy1zdXBwbHkgPSA8JnZjY2lvX3NkPjsKPiAgCXN0YXR1cyA9ICJva2F5IjsK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
