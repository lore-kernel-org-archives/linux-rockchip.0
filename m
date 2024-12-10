Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97CC5E7717D
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 01:04:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FqbH98TyulkV1P+W94aZ4bwDlXZI/t2f8NZPNBKBJbI=; b=uIqcav+nsmMHxk
	+m8Bzqryz7BlAV+H9ZB72RIftGMppl0AujcCbyLWznM2FJ4FKCh7tD6c2MZ78WTphpEFTGmDQ/pev
	QdxvoGw+XmSWjfDeHX0awKLF8AOkOvc7IKHdJbLoqX4QhxPoY5pyasIeg6Rqg+yPUoyy+S3wysjsW
	uN9ZFueRueCF5lfWjW54TUWIidKYGQbLqjWB+5M2117gQiemirs3ssdepMAFPvpbpm/EBaQumSjCs
	PZWFpfh6H+iCVpTQKsCbibwh4DjD8WPfwzT6KWuCD6n4r6FdBbI01ABWQlv5nmaC0B+nM9IlnNX+f
	WT1Jo55/LjTDnKeOu9Zw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKofu-00000009mVP-0wO8;
	Tue, 10 Dec 2024 01:04:30 +0000
Received: from smtpbg150.qq.com ([18.132.163.193])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKofp-00000009mUC-2yq2
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Dec 2024 01:04:28 +0000
X-QQ-mid: bizesmtpip3t1733792607tdnkr8b
X-QQ-Originating-IP: S0xv3uTVvbNyqbYOtMAphrw8OJ3b0mzGtTRcyQzlrJU=
Received: from [IPV6:240f:10b:7440:1:42fa:d92a ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 10 Dec 2024 09:03:24 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 12074367792504866138
Message-ID: <21A3A011A88AD09C+e896c409-7a51-41a1-a7ca-a0db5796dbea@radxa.com>
Date: Tue, 10 Dec 2024 10:03:23 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 03/12] arm64: dts: rockchip: fix property for pwm-fan
 for Radxa ROCK 5C
To: Alexey Charkov <alchark@gmail.com>
Cc: Dragan Simic <dsimic@manjaro.org>, heiko@sntech.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20241209125131.4101-1-naoki@radxa.com>
 <20241209125131.4101-4-naoki@radxa.com>
 <ae031ff8c8c5d9e5c266c73026d4dfab@manjaro.org>
 <CEFF3F7FDF50046C+6bccd571-3475-46b9-a7b9-e2e8cb94ed91@radxa.com>
 <CABjd4YyV1Pf5RZcwbvd0Ms8UA2kFzq2PuTzq=VVYC+EZtfNrog@mail.gmail.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <CABjd4YyV1Pf5RZcwbvd0Ms8UA2kFzq2PuTzq=VVYC+EZtfNrog@mail.gmail.com>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: Of2cEohDBRJB4EkLmyXqFelVLNVWs8C5oTP/4dBJ0NWMGBdLTgYb1PBS
	1/g9gZKTsCEdbQkPPeeBYL1/8AfjAFVmUhZmtd5Zn6gL7DW/MC/7xZuvE3ZRxlfZjILNGUh
	gm+rq/jr3VGBbOTn5cRSePBY1O7vjFyL224x+iRQLDZNZtBfktxoxE5AJi+1HXImeXRtWW8
	Ccr+CiP970eJedtTPLCJ8t7l2i7Dtp5q028cCsCBuRKxUReRiKo0Eyig6KvctEAL9HJbl2j
	0RvVTQ8929MxcNX3wORFXvCWoqdEirL5XTeqe0xm+E/kIWWiOYoKMF/yK4e5sqb2ufLaVoz
	J7U9TvaIAzcUx5pmKh+i6uGReDy1nOD+5Pa9oUK6G+vgB51kbDfb/DmdMSZ5QpAtzBJLx2J
	zVZ0jFRMd7RnZPql7QlzFRTH8i8Gj2w1beeaf1JKPAAyvlvqDlyH4GvOqykJsUVR4LhR2U3
	kJqalJuPwjvou8eVAXFqY/fCLbVknfpRN54uy5wQnqdtGJY35Lk9ZX5jZbnCm74U8DPpfVY
	kKcWActqZ6D8b8Dkm416SLjV81CsqrVqLL4oMfmB1nUjAWvLbUNea3VhfoxCq5WkWuPkl7m
	LH0AQb+IlXgR6L5jsSjLwxyIpLu23zXK17NX0UyQG2BEPZ5MX8atF8EuYsk1L0tujSXtzFy
	KKYhWSIp3X3o9vNK8ppJ0Gt6TyyPHfEhELQdNvZ4fd/b/Xkg6qN+SXFgcp76WsJVHAS5Mh1
	sLRczUmbtFxRXj293om6UB+RzBtfr62Ca1UBvKuaqN1qAfrsiDHSU0nN7yLbOtUu8XOhkoD
	666iuBbocvKVM8e5pIkNsPWXyKM0raSKao6LmljXeXpWUEvkNE5++HEew5wfyngcPluYmZX
	Xjczpi3HA2Pp9bMggpahVcQ0pffXL9mTpQuw8eP7LafVSRh+IE07aw==
X-QQ-XMRINFO: OD9hHCdaPRBwq3WW+NvGbIU=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_170426_253599_4BF8A7EC 
X-CRM114-Status: GOOD (  16.77  )
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

SGkgQWxleGV5LAoKT24gMTIvMTAvMjQgMDk6NDAsIEFsZXhleSBDaGFya292IHdyb3RlOgo+IEhp
IE5hb2tpLAo+IAo+IE9uIFR1ZSwgRGVjIDEwLCAyMDI0IGF0IDM6MzDigK9BTSBGVUtBVU1JIE5h
b2tpIDxuYW9raUByYWR4YS5jb20+IHdyb3RlOgo+Pgo+PiBIaSwKPj4KPj4gVGhhbmtzIGZvciB5
b3VyIHJldmlldyEKPj4KPj4gT24gMTIvMTAvMjQgMDE6MzIsIERyYWdhbiBTaW1pYyB3cm90ZToK
Pj4+IEhlbGxvIEZ1a2F1bWksCj4+Pgo+Pj4gT24gMjAyNC0xMi0wOSAxMzo1MSwgRlVLQVVNSSBO
YW9raSB3cm90ZToKPj4+PiBmaXggcHdtIHBlcmlvZCB0byBtYXRjaCB3aXRoIHZlbmRvciBrZXJu
ZWxbMV0uCj4+Pgo+Pj4gSW5zdGVhZCBvZiBzaW1wbHkgcmVmZXJyaW5nIHRvIHRoZSBkb3duc3Ry
ZWFtIHZlbmRvciBrZXJuZWwsIGluIHRoaXMKPj4+IHNwZWNpZmljIGNhc2UgdGhlIHJlYXNvbnMg
Zm9yIGFkanVzdGluZyB0aGUgZmFuIFBXTSBwYXJhbWV0ZXJzIHNob3VsZAo+Pj4gYmUgZXhwbGFp
bmVkIGJ5IHJlZmVycmluZyB0byB0aGUgYWN0dWFsIGZhbiBzZXR1cCB5b3UncmUgdXNpbmcsIHRo
ZQo+Pj4gb2JzZXJ2ZWQgZmFuIFJQTSBiZWhhdmlvciwgZXRjLgo+Pgo+PiBvcmlnaW5hbCBjb21t
aXQgbWVzc2FnZSBpczoKPj4KPj4gfCBhcm02NDogZHRzOiByb2NrY2hpcDogbW9kaWZ5IGZhbiBw
d20gcGVyaW9kIHRvIDYwdXMKPj4gfCBSZWR1Y2UgcHdtIGZyZXF1ZW5jeSB0byAxNi42IEtIeiBm
b3IgYSBsYXJnZXIgYWRqdXN0YWJsZSByYW5nZSBvZgo+PiBBTzM0MTYgbW9zZmV0Lgo+Pgo+PiBJ
IGhhdmUgbm8ga25vd2xlZGdlIGFib3V0IHRoaXMga2luZCBvZiB0aGluZ3MuIElzIHF1b3Rpbmcg
dGhpcyBtZXNzYWdlCj4+IGVub3VnaD8KPiAKPiBJIHRoaW5rIGl0IHdvdWxkIGJlIGJldHRlciB0
byBleHBhbmQgYSBiaXQgdG8gbWFrZSBzdXJlIHRoZSBjb21taXQKPiBtZXNzYWdlIGV4cGxhaW5z
IHRoZSB3aG9sZSByYXRpb25hbGUgd2l0aG91dCB0b28gbXVjaCBleHRyYSBkaWdnaW5nLgo+IFNv
bWV0aGluZyBsaWtlIHRoaXM6Cj4gCj4gYXJtNjQ6IGR0czogcm9ja2NoaXA6IFVzZSBhIGxvbmdl
ciBQV00gcGVyaW9kIGZvciB0aGUgZmFuIG9uIFJhZHhhIFJPQ0sgNUMKPiAKPiBUaGUgZmFuIG9u
IFJhZHhhIFJPQ0sgNUMgaXMgZHJpdmVuIHZpYSBhbiBBTzM0MTYgTU9TRkVULCB3aGljaCBoYXMg
YQo+IHRvdGFsIHN3aXRjaC1vbiB0aW1lIG9mIDAsNnVzIGFuZCBhIHRvdGFsIHN3aXRjaC1vZmYg
dGltZSBvZiA2dXMgWzFdLAo+IG1lYW5pbmcgdGhhdCB0aGUgY3VycmVudCBQV00gcGVyaW9kIG9m
IGp1c3QgMTB1cyBpcyB0b28gc2hvcnQgZm9yCj4gZmluZS1ncmFpbmVkIGZhbiBzcGVlZCBjb250
cm9sLiBJbmNyZWFzZSB0aGUgUFdNIHBlcmlvZCB0byA2MHVzLCBzbwo+IHRoYXQgdGhlIHN3aXRj
aC1vbiBhbmQgc3dpdGNoLW9mZiB0aW1lIG9mIHRoZSBNT1NGRVQgZmFsbCB3aXRoaW4gYQo+IG1v
cmUgcmVhc29uYWJsZSB+MTAlIG9mIHRoZSBmdWxsIHBlcmlvZCwgdGh1cyBtYWtpbmcgbG93ZXIg
UFdNIGR1dHkKPiBjeWNsZXMgbWVhbmluZ2Z1bC4KPiAKPiBbMV0gaHR0cHM6Ly93d3cuYW9zbWQu
Y29tL3BkZnMvZGF0YXNoZWV0L0FPMzQxNi5wZGYKClRoYW5rIHlvdSBzbyBtdWNoIQoKQmVzdCBy
ZWdhcmRzLAoKLS0KRlVLQVVNSSBOYW9raQpSYWR4YSBDb21wdXRlciAoU2hlbnpoZW4pIENvLiwg
THRkLgoKPiBCZXN0IHJlZ2FyZHMsCj4gQWxleGV5Cj4gCgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
