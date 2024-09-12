Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3CC00EEE26A
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Sep 2024 21:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tdUPwVIdc8pOlIS22rHaxmBhGO6ecepcPk/6HRMAgME=; b=U2bwQ3v1/7Py+v
	sfxi73eUwWd4RyXXKkfu/ozYrOHslgcUfQLLuNYl2OF/UdtwYoBJxWzQEoMbXSh0itDcK2TIxL7ah
	dSWI+5xXvsC3DkGWrClvoa4eHJpQRe/F2nNEy+/35/ATuNDAMHH7EryB47gs4uZ0J9sE4JCb1h0jS
	wbNG0wqQuhZJa6diuuQsB5KyeghYcrVTkLLLcQ7NQdcyWX6l1+GVEWvFyxFGqSA576MFjRETJfT4z
	aE3Vr55P/g15oi9rJitbwXl2yChbHfj5kHmzjUe0XDmpw8EyMlgTUoJrM0yURJojk1IW3D3nj8TbL
	oY2CZAEuH9+fpXfeTyeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sorPr-0000000EHzH-0wbO;
	Thu, 12 Sep 2024 21:31:51 +0000
Received: from smtpbguseast2.qq.com ([54.204.34.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sorPn-0000000EHx4-49rd
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Sep 2024 21:31:50 +0000
X-QQ-mid: bizesmtp78t1726176685tlpqw3py
X-QQ-Originating-IP: GmNawWs+b7OTO1Hrci3yU1nyJC7GTzPTbC8ePAyA8xk=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 13 Sep 2024 05:31:23 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 9426337802108849229
Message-ID: <0D24B2506EEED9F3+f6e21f29-6694-4c4a-90ee-39803e9699a7@radxa.com>
Date: Fri, 13 Sep 2024 06:31:22 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] Revert "arm64: dts: rockchip: remove redundant
 cd-gpios from rk3588 sdmmc nodes"
To: Kever Yang <kever.yang@rock-chips.com>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240611120645.457-1-naoki@radxa.com>
 <20240613001757.1350-1-naoki@radxa.com>
 <e534f0b2-8d30-4175-9616-105e53d25811@rock-chips.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <e534f0b2-8d30-4175-9616-105e53d25811@rock-chips.com>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_143148_518268_8FA069BF 
X-CRM114-Status: GOOD (  15.37  )
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

aGkKCk9uIDkvMTIvMjQgMTk6MjYsIEtldmVyIFlhbmcgd3JvdGU6Cj4gSGkgTmFva2ksIEhlaWtv
LAo+IAo+IE9uIDIwMjQvNi8xMyAwODoxNywgRlVLQVVNSSBOYW9raSB3cm90ZToKPj4gVGhpcyBy
ZXZlcnRzIGNvbW1pdCBkODU5YWQzMDVlZDE5ZDlhNzdkOGM4ZWNkMjI0NTliNzNkYTM2YmE2Lgo+
Pgo+PiBJbnNlcnRpbmcgYW5kIHJlbW92aW5nIG1pY3JvU0QgY2FyZCBpcyBub3QgZGV0ZWN0ZWQg
c2luY2UgYWJvdmUgY29tbWl0Lgo+PiBSZXZlcnRpbmcgaXQgZml4ZXMgdGhpcyBwcm9ibGVtLgo+
Pgo+PiBUaGlzIGlzIHByb2JhYmx5IHRoZSBzYW1lIHRoaW5nIGFzIDUgeWVhcnMgYWdvIG9uIHJr
MzM5OQo+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMDYwODU5OWQ0ODUxMTdhOWQ5OWY1
ZmIyNzRmYmIxYjU1ZjZiYTlmNy4xNTQ3NDY2MDAzLmdpdC5yb2Jpbi5tdXJwaHlAYXJtLmNvbS8K
PiAKPiBTb3JyeSBmb3IgZGlkbid0IG5vdGljZSB0aGlzIHBhdGNoLgoKdGhhbmsgeW91IGZvciB5
b3VyIGluZm9ybWF0aW9uIQoKPiBUaGUgU0QgY2FyZCBob3RwbHVnIGNhbiBub3Qgd29yayBiZWNh
dXNlIHRoZSBjb250cm9sbGVyIGlzIGdldHRpbmcgaW50byAKPiBydW50aW1lIGxvdyBwb3dlciBt
b2RlLAo+IAo+IHNvIHdlIG5lZWQgdGhlIGZpeCBpbiBtbWMgZHJpdmVyIHRvIG1ha2UgdGhlIENE
IGZ1bmN0aW9uIHdvcmsgYXMgYmVsb3c6Cj4gCj4gaHR0cHM6Ly9sa21sLm9yZy9sa21sLzIwMjQv
OS8xMi8zMjMKCkhlaWtvLAoKanVzdCBGWUksIHRoaXMgZG9lc24ndCBmaXggYSBwcm9ibGVtIGJl
bG93CgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2NrY2hpcC8yMDI0MDkwMzA4NTU1
MS41NjgtMS1uYW9raUByYWR4YS5jb20vdC8jdQoKQmVzdCByZWdhcmRzLAoKLS0KRlVLQVVNSSBO
YW9raQpSYWR4YSBDb21wdXRlciAoU2hlbnpoZW4pIENvLiwgTHRkLgoKPiBUaGFua3MsCj4gLSBL
ZXZlcgo+Pgo+PiBTbyB3ZSdsbCBnbyBiYWNrIHRvIGNkLWdwaW9zIGZvciBub3cuCj4+Cj4+IHRo
aXMgcGF0Y2ggaXMgdGVzdGVkIG9uIFJhZHhhIFJPQ0sgNUEgYW5kIDVCLgo+Pgo+PiBGaXhlczog
ZDg1OWFkMzA1ZWQxICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IHJlbW92ZSByZWR1bmRhbnQgY2Qt
Z3Bpb3MgCj4+IGZyb20gcmszNTg4IHNkbW1jIG5vZGVzIikKPj4gU2lnbmVkLW9mZi1ieTogRlVL
QVVNSSBOYW9raSA8bmFva2lAcmFkeGEuY29tPgo+Pgo+PiBDaGFuZ2VzIGluIHYyOgo+PiAtIHJl
d29yZCBjb21taXQgbWVzc2FnZQo+PiAtIHJlbW92ZSBlbXB0eSBsaW5lCj4+IC0tLQo+PiDCoCBh
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01LXBsdXMuZHRzIHwg
MSArCj4+IMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXF1YXJ0enBybzY0
LmR0c8KgwqDCoMKgIHwgMSArCj4+IMKgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTg4LXJvY2stNWIuZHRzwqDCoMKgwqDCoMKgwqDCoCB8IDEgKwo+PiDCoCBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtcm9jay01YS5kdHPCoMKgwqDCoMKgwqDCoCB8IDEgKwo+
PiDCoCA0IGZpbGVzIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtb3JhbmdlcGktNS1wbHVzLmR0cyAK
Pj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01LXBsdXMu
ZHRzCj4+IGluZGV4IDFhNjA0NDI5ZmIyNi4uZTc0ODcxNDkxZWY1IDEwMDY0NAo+PiAtLS0gYS9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01LXBsdXMuZHRzCj4+
ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LW9yYW5nZXBpLTUtcGx1
cy5kdHMKPj4gQEAgLTQ0NCw2ICs0NDQsNyBAQCAmc2RoY2kgewo+PiDCoCAmc2RtbWMgewo+PiDC
oMKgwqDCoMKgIGJ1cy13aWR0aCA9IDw0PjsKPj4gwqDCoMKgwqDCoCBjYXAtc2QtaGlnaHNwZWVk
Owo+PiArwqDCoMKgIGNkLWdwaW9zID0gPCZncGlvMCBSS19QQTQgR1BJT19BQ1RJVkVfTE9XPjsK
Pj4gwqDCoMKgwqDCoCBkaXNhYmxlLXdwOwo+PiDCoMKgwqDCoMKgIG1heC1mcmVxdWVuY3kgPSA8
MTUwMDAwMDAwPjsKPj4gwqDCoMKgwqDCoCBuby1zZGlvOwo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcXVhcnR6cHJvNjQuZHRzIAo+PiBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXF1YXJ0enBybzY0LmR0cwo+PiBpbmRleCBi
NGYyMmQ5NWFjMGUuLmU4MGNhYTM2ZjhlNCAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1ODgtcXVhcnR6cHJvNjQuZHRzCj4+ICsrKyBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXF1YXJ0enBybzY0LmR0cwo+PiBAQCAtNDM1LDYgKzQz
NSw3IEBAICZzZGhjaSB7Cj4+IMKgICZzZG1tYyB7Cj4+IMKgwqDCoMKgwqAgYnVzLXdpZHRoID0g
PDQ+Owo+PiDCoMKgwqDCoMKgIGNhcC1zZC1oaWdoc3BlZWQ7Cj4+ICvCoMKgwqAgY2QtZ3Bpb3Mg
PSA8JmdwaW8wIFJLX1BBNCBHUElPX0FDVElWRV9MT1c+Owo+PiDCoMKgwqDCoMKgIGRpc2FibGUt
d3A7Cj4+IMKgwqDCoMKgwqAgbWF4LWZyZXF1ZW5jeSA9IDwxNTAwMDAwMDA+Owo+PiDCoMKgwqDC
oMKgIG5vLXNkaW87Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU4OC1yb2NrLTViLmR0cyAKPj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU4OC1yb2NrLTViLmR0cwo+PiBpbmRleCA0ZTJiZjRlYWVmMmIuLmRmODQ1OTI5YjA4NCAxMDA2
NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5k
dHMKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5k
dHMKPj4gQEAgLTM5MCw2ICszOTAsNyBAQCAmc2RtbWMgewo+PiDCoMKgwqDCoMKgIGJ1cy13aWR0
aCA9IDw0PjsKPj4gwqDCoMKgwqDCoCBjYXAtbW1jLWhpZ2hzcGVlZDsKPj4gwqDCoMKgwqDCoCBj
YXAtc2QtaGlnaHNwZWVkOwo+PiArwqDCoMKgIGNkLWdwaW9zID0gPCZncGlvMCBSS19QQTQgR1BJ
T19BQ1RJVkVfTE9XPjsKPj4gwqDCoMKgwqDCoCBkaXNhYmxlLXdwOwo+PiDCoMKgwqDCoMKgIHNk
LXVocy1zZHIxMDQ7Cj4+IMKgwqDCoMKgwqAgdm1tYy1zdXBwbHkgPSA8JnZjY18zdjNfczM+Owo+
PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJvY2st
NWEuZHRzIAo+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1yb2NrLTVh
LmR0cwo+PiBpbmRleCA4ZTJhMDc2MTJkMTcuLmIwNzA5NTU2MjdiZSAxMDA2NDQKPj4gLS0tIGEv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJvY2stNWEuZHRzCj4+ICsrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1yb2NrLTVhLmR0cwo+PiBAQCAt
MzY2LDYgKzM2Niw3IEBAICZzZG1tYyB7Cj4+IMKgwqDCoMKgwqAgYnVzLXdpZHRoID0gPDQ+Owo+
PiDCoMKgwqDCoMKgIGNhcC1tbWMtaGlnaHNwZWVkOwo+PiDCoMKgwqDCoMKgIGNhcC1zZC1oaWdo
c3BlZWQ7Cj4+ICvCoMKgwqAgY2QtZ3Bpb3MgPSA8JmdwaW8wIFJLX1BBNCBHUElPX0FDVElWRV9M
T1c+Owo+PiDCoMKgwqDCoMKgIGRpc2FibGUtd3A7Cj4+IMKgwqDCoMKgwqAgbWF4LWZyZXF1ZW5j
eSA9IDwxNTAwMDAwMDA+Owo+PiDCoMKgwqDCoMKgIG5vLXNkaW87Cj4gCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
