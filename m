Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7771ECD4F5B
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 08:50:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=askb3hKjE64+hKx4hcqX9TdBVh5Zs6g4XbRAjxmWAXI=; b=aZFVyQKphSi4sD
	7CBNJEBFzDJVg46LfzREZ9Iuen0sLCsZntQiGAtAqHTyZnvO5UELW2sFdYu2ETVs5wqgEDI4n3xx2
	68dgNY5FNQoVqciVrlQdgqqMZ0UztsdDNYDkYM/C6rqWcnOH2sc4vVo1WyZiaW8oKX0Wch4/DGLMY
	tkFGqHWwXY+g6FD4y6lx1LTqN3u52VKwvgYEjRWJGBF0n32daHTTfndi2FU6/vibXfvTm1Q8UaGQk
	PefpUedcRSn7TyVAM6ZhuH2vRIOvZi0gcijjm0DfA4hwS2bKYbRtm73TWVRpBsOyDk22Y2hS7M28R
	DOguvpuudWe3w0XL3RVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sm8CG-00000007eJY-3tNm;
	Thu, 05 Sep 2024 08:50:32 +0000
Received: from smtpbguseast1.qq.com ([54.204.34.129])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sm8Bj-00000007eBI-1kVX
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Sep 2024 08:50:01 +0000
X-QQ-mid: bizesmtp85t1725526176th4h94u4
X-QQ-Originating-IP: GMGCXnh/legm14+u/wRZG0WFLyUgyTzBbdWH2LSRADs=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 05 Sep 2024 16:49:34 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 2532169041983144253
Message-ID: <FBA39154A9B06490+417ac1f9-5d9c-48a4-a35f-ceb90aea954c@radxa.com>
Date: Thu, 5 Sep 2024 17:49:34 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: add workaround for microSD card
 detection on Radxa ROCK 3A
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: michael.riesch@wolfvision.net, linux-rockchip@lists.infradead.org
References: <20240903085551.568-1-naoki@radxa.com> <2471069.n97fhnxGW3@diego>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <2471069.n97fhnxGW3@diego>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_015000_042173_5A556250 
X-CRM114-Status: GOOD (  18.26  )
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

aGksCgpPbiA5LzUvMjQgMDM6MzIsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEhpLAo+IAo+IEFt
IERpZW5zdGFnLCAzLiBTZXB0ZW1iZXIgMjAyNCwgMTA6NTU6NTAgQ0VTVCBzY2hyaWViIEZVS0FV
TUkgTmFva2k6Cj4+IFJhZHhhIFJPQ0sgM0EgZG9lc24ndCBkZXRlY3QgbWljcm9TRCBjYXJkIGlu
c2VydGlvbi9yZW1vdmFsIGNvcnJlY3RseS4KPj4gaXQgaGFwcGVucyBmcm9tIExpbnV4IHY1LjE5
IHRvIHY2LjExLXJjNi4KPj4KPj4gYWRkIHdvcmthcm91bmQgKGJyb2tlbi1jZCBwcm9wZXJ0eSkg
dG8gbWFrZSBDRCB3b3JrLgo+Pgo+PiBGaXhlczogMjJhNDQyZTY1ODZjICgiYXJtNjQ6IGR0czog
cm9ja2NoaXA6IGFkZCBiYXNpYyBkdHMgZm9yIHRoZSByYWR4YSByb2NrMyBtb2RlbCBhIikKPj4g
U2lnbmVkLW9mZi1ieTogRlVLQVVNSSBOYW9raSA8bmFva2lAcmFkeGEuY29tPgo+IAo+IGJlZm9y
ZSBnb2luZyBmb3Igc3VjaCBkcmFzdGljIG1lYXN1cmVzIGFzIGJyb2tlbi1jZCwgY2FuIHlvdSBk
ZXNjcmliZSBob3cKPiB5b3UgY2hlY2tlZCB0aGUgY2FyZCBpbnNlcnQvcmVtb3ZhbCA/CgpiYXNp
Y2FsbHksIGRtZXNnLgoKPiBJLmUuIGluIHRoZSBkdHMgbm9kZSBiZWxvdyB3ZSBoYXZlIGJvdGgg
Y2QtZ3Bpb3MgYXMgd2VsbCBhcyB0aGUgc2RtbWMwX2RldAo+IHBpbmN0cmwgd2hpY2ggd291bGQg
c2V0IHRoZSBwaW5mdW5jIDEgLi4uIHRoZSBody1iYXNlZCBjYXJkIGRldGVjdCBhbmQKPiBwb3Nz
aWJseSBvdmVycmlkZSB0aGUgY2QtZ3Bpb3M/Cj4gCj4gV2hhdCBoYXBwZW5zIGlmIHlvdSBqdXN0
IHJlbW92ZSB0aGUgc2RtbWMwX2RldCBhbmQga2VlcCB0aGUgY2QtZ3Bpb3MKPiBwcm9wZXJ0eT8K
Cm5vdGhpbmcgaXMgY2hhbmdlZCBpZiBwaW5mdW5jIGlzIDAgb3IgMSAsIGkuZS4gQ0QgaXMgbm90
IHdvcmtpbmcgYm90aCAKY29uZmlndXJhdGlvbi4KCj4gQWxzbywgd2hhdCBkb2VzIGNhdCAvc3lz
L2tlcm5lbC9kZWJ1Zy9ncGlvIHJlcG9ydCBhZnRlciB0aGF0IGNoYW5nZQo+IHdpdGggaW5zZXJ0
ZWQgYW5kIHJlbW92ZWQgY2FyZHM/CgppdCdzIGFsd2F5cyAiaGkiLgoKJCBzdWRvIGdyZXAgJ2dw
aW8tNCAnIC9zeXMva2VybmVsL2RlYnVnL2dwaW8KICBncGlvLTQgICAoICAgICAgICAgICAgICAg
ICAgICB8Y2QgICAgICAgICAgICAgICAgICApIGluICBoaSBJUlEgQUNUSVZFIExPVwoKLS0tLQoK
SSBmb3Jnb3QgdG8gZXhwbGFpbiBhYm91dCBleGNlcHRpb24uIG9ubHkgaWYgbWljcm9TRCBjYXJk
IGlzIGluc2VydGVkIApiZWZvcmUga2VybmVsIGJvb3QsIGNhcmQgaXMgcmVjb2duaXplZCBhbmQg
YWNjZXNzaWJsZS4KaW4gdGhpcyBjYXNlLCBncGlvLTQgaXMgImxvIiB0aWxsIGNhcmQgaXMgcmVt
b3ZlZC4Kd2hlbiBjYXJkIGlzIHJlbW92ZWQsIGdwaW8tNCBnb2VzICJoaSIsIGRtZXNnIHNob3dz
ICJtbWMxOiBjYXJkIDEyMzQgCnJlbW92ZWQiLgphZnRlciB0aGF0LCBldmVuIGlmIGNhcmQgaXMg
aW5zZXJ0ZWQgYWdhaW4sIGdwaW8tNCBuZXZlciBnb2VzICJsbyIsIGNhcmQgCmlzIG5ldmVyIGRl
dGVjdGVkLgoKYnR3LCBJIHVzdWFsbHkgcHV0IGJvb3Rsb2FkZXIgb24gbWljcm9TRCBjYXJkLiAo
a2VybmVsIGFuZCB1c2VybGFuZCBhcmUgCm9uIFVTQi1TU0QpCnRoaXMgdGltZSwgSSB0cmllZCAi
Ym9vdCBmcm9tIFNQSSBmbGFzaCIsIGJ1dCBub3RoaW5nIGlzIGNoYW5nZWQuCgoKSSB1bmRlcnN0
YW5kIHRoaXMgaXMgdmVyeSBzdHJhbmdlLCBJJ20gb2theSBpZiB0aGlzIHBhdGNoIGlzIHJlamVj
dGVkLgpJIHdhbnQgdG8ga25vdyBtb3JlIGluZm9ybWF0aW9uIGZyb20gb3RoZXIgdXNlcnMgdG8g
ZmluZCBvdXQgcmVhbCBzb2x1dGlvbi4KCkJlc3QgcmVnYXJkcywKCi0tCkZVS0FVTUkgTmFva2kK
UmFkeGEgQ29tcHV0ZXIgKFNoZW56aGVuKSBDby4sIEx0ZC4KCj4gSGVpa28KPiAKPj4gLS0tCj4+
ICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYS5kdHMgfCA0ICsr
LS0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+
Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9j
ay0zYS5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNhLmR0
cwo+PiBpbmRleCA1OWYxNDAzYjRmYTUuLjg5NTk5MjU4ZWY5YyAxMDA2NDQKPj4gLS0tIGEvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYS5kdHMKPj4gKysrIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYS5kdHMKPj4gQEAgLTcyMiwx
MiArNzIyLDEyIEBAICZzZGhjaSB7Cj4+ICAgfTsKPj4gICAKPj4gICAmc2RtbWMwIHsKPj4gKwli
cm9rZW4tY2Q7Cj4+ICAgCWJ1cy13aWR0aCA9IDw0PjsKPj4gICAJY2FwLXNkLWhpZ2hzcGVlZDsK
Pj4gLQljZC1ncGlvcyA9IDwmZ3BpbzAgUktfUEE0IEdQSU9fQUNUSVZFX0xPVz47Cj4+ICAgCWRp
c2FibGUtd3A7Cj4+ICAgCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+IC0JcGluY3RybC0w
ID0gPCZzZG1tYzBfYnVzNCAmc2RtbWMwX2NsayAmc2RtbWMwX2NtZCAmc2RtbWMwX2RldD47Cj4+
ICsJcGluY3RybC0wID0gPCZzZG1tYzBfYnVzNCAmc2RtbWMwX2NsayAmc2RtbWMwX2NtZD47Cj4+
ICAgCXNkLXVocy1zZHI1MDsKPj4gICAJdm1tYy1zdXBwbHkgPSA8JnZjYzN2M19zZD47Cj4+ICAg
CXZxbW1jLXN1cHBseSA9IDwmdmNjaW9fc2Q+Owo+Pgo+IAo+IAo+IAo+IAo+IAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
