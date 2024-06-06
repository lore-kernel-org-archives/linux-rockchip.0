Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF514C27C54
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Jun 2024 19:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=emm5kKrCqryQQqIFrx37qIS8PvVdG8E6+qIs8yPsk/4=; b=GB53j7TCbb+J0g
	e9RTchvTkeGRPJvt9fGngoR1iFRi0d0sEzvTYA0WsdFliumM0mRI/tXfUVCZ7QL4FX82VuOS9fjqN
	US2e6Mj7YxKYjTa3k2JSAi3JqVYlq0FQEtXSd1utzIVjuFdmmIIAjyfV2AXmxrTb842Um+QTXkGek
	IJaGvfZ6wIv4GJvodqfY4ETV8DQzwOr4mqdFtmut2tBkQgD7FCLKUmHKGg9CELoB2zngQwX22aAxw
	DW5bWVzpUcFscVRoro7CZL7cidVlY7RXS5EjlVRlgDwLBwwuQnw2OBRLpelhz2UBA+o9Q6yceae6N
	TeeFMpcaaT8HC8Dw5XwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFIms-0000000B8AB-0Z4B;
	Thu, 06 Jun 2024 19:28:38 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFImo-0000000B895-05oq;
	Thu, 06 Jun 2024 19:28:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717702110;
	bh=Tats7cQ9n79rYoymjeJPyxZK77L8sPmlxk6JKFywVCQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=BnG1Dpbe9oHohbw1N5t4nVvVzvxLSTbolvKwKT0EUopk0UvimpQlxIYlFHj077fA7
	 38ZPi40lmNlvCh439SO88y0HMEDVCnIWYInLVR6bGvWKeQyG6MhVrMWIuWCA6F8WX/
	 cjCE7LIbFT+qQwShUKeBPntFlA8bBi1wGtJWfgkp2ocqomgENsnWtAGOHltyXwmJYm
	 K7jxYCgxm6vuU0mqaeJ5QN9Up/G/akzvxbrKH9gr7RDvYaHcFL+aXZ5OFRPjmJXgS5
	 1QEa2aMWo14llG++xXgIkVQMVy9FaXYQoLl+gu1LVsV2x5r9ovA+ElZX37SO50/ClT
	 ewMLUzhzZjUhA==
Received: from [100.115.223.179] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id D15983781022;
	Thu,  6 Jun 2024 19:28:28 +0000 (UTC)
Message-ID: <7e59f58b-6305-44bd-ad2f-f0ee8ea28387@collabora.com>
Date: Thu, 6 Jun 2024 22:28:28 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/14] dt-bindings: display: rockchip,dw-hdmi: Add
 compatible for RK3588
To: Rob Herring <robh@kernel.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>
References: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
 <20240601-b4-rk3588-bridge-upstream-v1-12-f6203753232b@collabora.com>
 <20240605232206.GA3345910-robh@kernel.org>
 <260aa607-099a-4f65-ae59-c4b6ea2256f1@collabora.com>
 <CAL_JsqKsVE1VgoYGe7qPaAV82dbs5UMGPG843mz26Opv0Y7Hxg@mail.gmail.com>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Content-Language: en-US
In-Reply-To: <CAL_JsqKsVE1VgoYGe7qPaAV82dbs5UMGPG843mz26Opv0Y7Hxg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_122834_231072_55569E9B 
X-CRM114-Status: GOOD (  16.81  )
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

T24gNi82LzI0IDU6NTggUE0sIFJvYiBIZXJyaW5nIHdyb3RlOgo+IE9uIFRodSwgSnVuIDYsIDIw
MjQgYXQgNTo1MeKAr0FNIENyaXN0aWFuIENpb2NhbHRlYQo+IDxjcmlzdGlhbi5jaW9jYWx0ZWFA
Y29sbGFib3JhLmNvbT4gd3JvdGU6Cj4+Cj4+IE9uIDYvNi8yNCAyOjIyIEFNLCBSb2IgSGVycmlu
ZyB3cm90ZToKPj4+IE9uIFNhdCwgSnVuIDAxLCAyMDI0IGF0IDA0OjEyOjM0UE0gKzAzMDAsIENy
aXN0aWFuIENpb2NhbHRlYSB3cm90ZToKPj4+PiBEb2N1bWVudCB0aGUgU3lub3BzeXMgRGVzaWdu
V2FyZSBIRE1JIDIuMSBRdWFkLVBpeGVsIChRUCkgVFggY29udHJvbGxlcgo+Pj4+IGZvdW5kIG9u
IFJvY2tjaGlwIFJLMzU4OCBTb0MgZmFtaWx5Lgo+Pj4+Cj4+Pj4gU2luY2UgUkszNTg4IHVzZXMg
ZGlmZmVyZW50IGNsb2NrcyB0aGFuIHByZXZpb3VzIFJvY2tjaGlwIFNvQ3MgYW5kIGFsc28KPj4+
PiByZXF1aXJlcyBhIGNvdXBsZSBvZiByZXNldCBsaW5lcyBhbmQgc29tZSBhZGRpdGlvbmFsIHBy
b3BlcnRpZXMsIHByb3ZpZGUKPj4+PiB0aGUgcmVxdWlyZWQgY2hhbmdlcyBpbiB0aGUgYmluZGlu
ZyB0byBhY2NvbW1vZGF0ZSBhbGwgdmFyaWFudHMuCj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBD
cmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPgo+Pj4+
IC0tLQo+Pj4+ICAuLi4vZGlzcGxheS9yb2NrY2hpcC9yb2NrY2hpcCxkdy1oZG1pLnlhbWwgICAg
ICAgICB8IDEyNyArKysrKysrKysrKysrKystLS0tLS0KPj4+PiAgMSBmaWxlIGNoYW5nZWQsIDkw
IGluc2VydGlvbnMoKyksIDM3IGRlbGV0aW9ucygtKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlw
LGR3LWhkbWkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5
L3JvY2tjaGlwL3JvY2tjaGlwLGR3LWhkbWkueWFtbAo+Pj4+IGluZGV4IDJhYWM2MjIxOWZmNi4u
NjBkNmI4MTUyMjdmIDEwMDY0NAo+Pj4+IC0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9i
aW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tjaGlwLGR3LWhkbWkueWFtbAo+Pj4+ICsrKyBi
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L3JvY2tjaGlwL3JvY2tj
aGlwLGR3LWhkbWkueWFtbAo+Pj4+IEBAIC0xMCwxMiArMTAsMTAgQEAgbWFpbnRhaW5lcnM6Cj4+
Pj4gICAgLSBNYXJrIFlhbyA8bWFya3lhbzA1OTFAZ21haWwuY29tPgo+Pj4+Cj4+Pj4gIGRlc2Ny
aXB0aW9uOiB8Cj4+Pj4gLSAgVGhlIEhETUkgdHJhbnNtaXR0ZXIgaXMgYSBTeW5vcHN5cyBEZXNp
Z25XYXJlIEhETUkgMS40IFRYIGNvbnRyb2xsZXIgSVAKPj4+PiAtICB3aXRoIGEgY29tcGFuaW9u
IFBIWSBJUC4KPj4+PiAtCj4+Pj4gLWFsbE9mOgo+Pj4+IC0gIC0gJHJlZjogLi4vYnJpZGdlL3N5
bm9wc3lzLGR3LWhkbWkueWFtbCMKPj4+PiAtICAtICRyZWY6IC9zY2hlbWFzL3NvdW5kL2RhaS1j
b21tb24ueWFtbCMKPj4+PiArICBGb3IgU29DcyB1cCB0byBSSzM1NjgsIHRoZSBIRE1JIHRyYW5z
bWl0dGVyIGlzIGEgU3lub3BzeXMgRGVzaWduV2FyZQo+Pj4+ICsgIEhETUkgMS40IFRYIGNvbnRy
b2xsZXIgSVAgd2l0aCBhIGNvbXBhbmlvbiBQSFkgSVAuCj4+Pj4gKyAgVGhlIFJLMzU4OCBTb0Mg
aW50ZWdyYXRlcyB0aGUgU3lub3BzeXMgRGVzaWduV2FyZSBIRE1JIDIuMSBRdWFkLVBpeGVsIChR
UCkKPj4+PiArICBUWCBjb250cm9sbGVyIElQIGFuZCBhIEhETUkvZURQIFRYIENvbWJvIFBIWSBi
YXNlZCBvbiBhIFNhbXN1bmcgSVAgYmxvY2suCj4+Pj4KPj4+PiAgcHJvcGVydGllczoKPj4+PiAg
ICBjb21wYXRpYmxlOgo+Pj4+IEBAIC0yNSw2ICsyMyw3IEBAIHByb3BlcnRpZXM6Cj4+Pj4gICAg
ICAgIC0gcm9ja2NoaXAscmszMzI4LWR3LWhkbWkKPj4+PiAgICAgICAgLSByb2NrY2hpcCxyazMz
OTktZHctaGRtaQo+Pj4+ICAgICAgICAtIHJvY2tjaGlwLHJrMzU2OC1kdy1oZG1pCj4+Pj4gKyAg
ICAgIC0gcm9ja2NoaXAscmszNTg4LWR3LWhkbWkKPj4+Pgo+Pj4+ICAgIHJlZy1pby13aWR0aDoK
Pj4+PiAgICAgIGNvbnN0OiA0Cj4+Pj4gQEAgLTQwLDM2ICszOSw2IEBAIHByb3BlcnRpZXM6Cj4+
Pj4gICAgICAgIEEgMS44ViBzdXBwbHkgdGhhdCBwb3dlcnMgdXAgdGhlIFNvQyBpbnRlcm5hbCBj
aXJjdWl0cnkuIFRoZSBwaW4gbmFtZSBvbiB0aGUKPj4+PiAgICAgICAgU29DIHVzdWFsbHkgaXMg
SERNSV9UWF9BVkREXzFWOC4KPj4+Pgo+Pj4+IC0gIGNsb2NrczoKPj4+PiAtICAgIG1pbkl0ZW1z
OiAyCj4+Pj4gLSAgICBpdGVtczoKPj4+PiAtICAgICAgLSB7fQo+Pj4+IC0gICAgICAtIHt9Cj4+
Pj4gLSAgICAgICMgVGhlIG5leHQgdGhyZWUgY2xvY2tzIGFyZSBhbGwgb3B0aW9uYWwsIGJ1dCBz
aGFsbCBiZSBzcGVjaWZpZWQgaW4gdGhpcwo+Pj4+IC0gICAgICAjIG9yZGVyIHdoZW4gcHJlc2Vu
dC4KPj4+PiAtICAgICAgLSBkZXNjcmlwdGlvbjogVGhlIEhETUkgQ0VDIGNvbnRyb2xsZXIgbWFp
biBjbG9jawo+Pj4+IC0gICAgICAtIGRlc2NyaXB0aW9uOiBQb3dlciBmb3IgR1JGIElPCj4+Pj4g
LSAgICAgIC0gZGVzY3JpcHRpb246IEV4dGVybmFsIGNsb2NrIGZvciBzb21lIEhETUkgUEhZIChv
bGQgY2xvY2sgbmFtZSwgZGVwcmVjYXRlZCkKPj4+PiAtICAgICAgLSBkZXNjcmlwdGlvbjogRXh0
ZXJuYWwgY2xvY2sgZm9yIHNvbWUgSERNSSBQSFkgKG5ldyBuYW1lKQo+Pj4+IC0KPj4+PiAtICBj
bG9jay1uYW1lczoKPj4+PiAtICAgIG1pbkl0ZW1zOiAyCj4+Pj4gLSAgICBpdGVtczoKPj4+PiAt
ICAgICAgLSB7fQo+Pj4+IC0gICAgICAtIHt9Cj4+Pj4gLSAgICAgIC0gZW51bToKPj4+PiAtICAg
ICAgICAgIC0gY2VjCj4+Pj4gLSAgICAgICAgICAtIGdyZgo+Pj4+IC0gICAgICAgICAgLSB2cGxs
Cj4+Pj4gLSAgICAgICAgICAtIHJlZgo+Pj4+IC0gICAgICAtIGVudW06Cj4+Pj4gLSAgICAgICAg
ICAtIGdyZgo+Pj4+IC0gICAgICAgICAgLSB2cGxsCj4+Pj4gLSAgICAgICAgICAtIHJlZgo+Pj4+
IC0gICAgICAtIGVudW06Cj4+Pj4gLSAgICAgICAgICAtIHZwbGwKPj4+PiAtICAgICAgICAgIC0g
cmVmCj4+Pj4gLQo+Pj4+ICAgIGRkYy1pMmMtYnVzOgo+Pj4+ICAgICAgJHJlZjogL3NjaGVtYXMv
dHlwZXMueWFtbCMvZGVmaW5pdGlvbnMvcGhhbmRsZQo+Pj4+ICAgICAgZGVzY3JpcHRpb246Cj4+
Pj4gQEAgLTEzMSwxMyArMTAwLDk3IEBAIHByb3BlcnRpZXM6Cj4+Pj4gIHJlcXVpcmVkOgo+Pj4+
ICAgIC0gY29tcGF0aWJsZQo+Pj4+ICAgIC0gcmVnCj4+Pj4gLSAgLSByZWctaW8td2lkdGgKPj4+
PiAgICAtIGNsb2Nrcwo+Pj4+ICAgIC0gY2xvY2stbmFtZXMKPj4+PiAgICAtIGludGVycnVwdHMK
Pj4+PiAgICAtIHBvcnRzCj4+Pj4gICAgLSByb2NrY2hpcCxncmYKPj4+Pgo+Pj4+ICthbGxPZjoK
Pj4+PiArICAtICRyZWY6IC9zY2hlbWFzL3NvdW5kL2RhaS1jb21tb24ueWFtbCMKPj4+PiArICAt
IGlmOgo+Pj4+ICsgICAgICBwcm9wZXJ0aWVzOgo+Pj4+ICsgICAgICAgIGNvbXBhdGlibGU6Cj4+
Pj4gKyAgICAgICAgICBjb250YWluczoKPj4+PiArICAgICAgICAgICAgZW51bToKPj4+PiArICAg
ICAgICAgICAgICAtIHJvY2tjaGlwLHJrMzU4OC1kdy1oZG1pCj4+Pj4gKyAgICB0aGVuOgo+Pj4+
ICsgICAgICBwcm9wZXJ0aWVzOgo+Pj4+ICsgICAgICAgIHJlZzoKPj4+PiArICAgICAgICAgIG1h
eEl0ZW1zOiAxCj4+Pj4gKwo+Pj4+ICsgICAgICAgIGNsb2NrczoKPj4+PiArICAgICAgICAgIG1p
bkl0ZW1zOiAxCj4+Pj4gKyAgICAgICAgICBpdGVtczoKPj4+PiArICAgICAgICAgICAgLSBkZXNj
cmlwdGlvbjogQVBCIHN5c3RlbSBpbnRlcmZhY2UgY2xvY2sKPj4+PiArICAgICAgICAgICAgIyBU
aGUgbmV4dCBjbG9ja3MgYXJlIG9wdGlvbmFsLCBidXQgc2hhbGwgYmUgc3BlY2lmaWVkIGluIHRo
aXMKPj4+PiArICAgICAgICAgICAgIyBvcmRlciB3aGVuIHByZXNlbnQuCj4+Pj4gKyAgICAgICAg
ICAgIC0gZGVzY3JpcHRpb246IFRNRFMvRlJMIGxpbmsgY2xvY2sKPj4+PiArICAgICAgICAgICAg
LSBkZXNjcmlwdGlvbjogRUFSQyBSWCBiaXBoYXNlIGNsb2NrCj4+Pj4gKyAgICAgICAgICAgIC0g
ZGVzY3JpcHRpb246IFJlZmVyZW5jZSBjbG9jawo+Pj4+ICsgICAgICAgICAgICAtIGRlc2NyaXB0
aW9uOiBBdWRpbyBpbnRlcmZhY2UgY2xvY2sKPj4+PiArICAgICAgICAgICAgLSBkZXNjcmlwdGlv
bjogVmlkZW8gZGF0YXBhdGggY2xvY2sKPj4+PiArCj4+Pj4gKyAgICAgICAgY2xvY2stbmFtZXM6
Cj4+Pj4gKyAgICAgICAgICBtaW5JdGVtczogMQo+Pj4+ICsgICAgICAgICAgaXRlbXM6Cj4+Pj4g
KyAgICAgICAgICAgIC0gY29uc3Q6IHBjbGsKPj4+PiArICAgICAgICAgICAgLSBlbnVtOiBbaGRw
LCBlYXJjLCByZWYsIGF1ZCwgaGNsa192bzFdCj4+Pj4gKyAgICAgICAgICAgIC0gZW51bTogW2Vh
cmMsIHJlZiwgYXVkLCBoY2xrX3ZvMV0KPj4+PiArICAgICAgICAgICAgLSBlbnVtOiBbcmVmLCBh
dWQsIGhjbGtfdm8xXQo+Pj4+ICsgICAgICAgICAgICAtIGVudW06IFthdWQsIGhjbGtfdm8xXQo+
Pj4+ICsgICAgICAgICAgICAtIGNvbnN0OiBoY2xrX3ZvMQo+Pj4+ICsKPj4+PiArICAgICAgICBy
ZXNldHM6Cj4+Pj4gKyAgICAgICAgICBtaW5JdGVtczogMgo+Pj4+ICsgICAgICAgICAgbWF4SXRl
bXM6IDIKPj4+PiArCj4+Pj4gKyAgICAgICAgcmVzZXQtbmFtZXM6Cj4+Pj4gKyAgICAgICAgICBp
dGVtczoKPj4+PiArICAgICAgICAgICAgLSBjb25zdDogcmVmCj4+Pj4gKyAgICAgICAgICAgIC0g
Y29uc3Q6IGhkcAo+Pj4+ICsKPj4+PiArICAgICAgICBpbnRlcnJ1cHRzOgo+Pj4+ICsgICAgICAg
ICAgbWluSXRlbXM6IDEKPj4+PiArICAgICAgICAgIG1heEl0ZW1zOiA1Cj4+Pj4gKwo+Pj4+ICsg
ICAgICAgIHJvY2tjaGlwLHZvMV9ncmY6Cj4+Pj4gKyAgICAgICAgICAkcmVmOiAvc2NoZW1hcy90
eXBlcy55YW1sIy9kZWZpbml0aW9ucy9waGFuZGxlCj4+Pj4gKyAgICAgICAgICBkZXNjcmlwdGlv
bjogU29tZSBRUCByZWxhdGVkIGRhdGEgaXMgYWNjZXNzZWQgdGhyb3VnaCBWTzEgR1JGIHJlZ3MK
Pj4+PiArCj4+Pj4gKyAgICAgIHJlcXVpcmVkOgo+Pj4+ICsgICAgICAgIC0gcmVzZXRzCj4+Pj4g
KyAgICAgICAgLSByZXNldC1uYW1lcwo+Pj4+ICsgICAgICAgIC0gcm9ja2NoaXAsdm8xX2dyZgo+
Pj4+ICsKPj4+PiArICAgIGVsc2U6Cj4+Pj4gKyAgICAgICRyZWY6IC4uL2JyaWRnZS9zeW5vcHN5
cyxkdy1oZG1pLnlhbWwjCj4+Pgo+Pj4gVGhpcyBpcyBvZGQuLi4gV2l0aCB0aGlzIHBsdXMgdGhl
IGFtb3VudCBvZiBjb25kaXRpb25hbCBzY2hlbWEsIEkgdGhpbmsKPj4+IHRoaXMgc2hvdWxkIGJl
IGEgbmV3IHNjaGVtYSBkb2MuIERvZXNuJ3QgaGF2ZSB0byBoYXZlIGEgY29tbW9uCj4+PiBzY2hl
bWEuIFlvdSBjYW4gbGV0IHRoZSAybmQgdXNlciBvZiB0aGlzIElQIGJsb2NrIGRvIHRoYXQuCj4+
Cj4+IFllcywgdjIgaXMgZ29pbmcgdG8gYmUgYSBjb21wbGV0ZWx5IHNlcGFyYXRlZCBkcml2ZXIg
aW1wbGVtZW50YXRpb24uCj4gCj4gVGhhdCBhY3R1YWxseSBoYXMgbm90aGluZyB0byBkbyB3aXRo
IHRoZSBkZWNpc2lvbiBoZXJlLiBCaW5kaW5ncyBhcmUKPiBzZXBhcmF0ZSBmcm9tIGRyaXZlcnMu
CgpSaWdodCwgSSBzaG91bGQgaGF2ZSBwcm9wZXJseSBleHBsYWluZWQgdGhhdCBpbml0aWFsbHkg
dGhpcyBRUApjb250cm9sbGVyIGhhcyBiZWVuIGhhbmRsZWQgbW9yZSBsaWtlIGFub3RoZXIgdmFy
aWFudCBvZiB0aG9zZSBmb3VuZCBpbgp0aGUgb2xkZXIgU29DcywgcmF0aGVyIHRoYW4gYSB0b3Rh
bGx5IG5ldyBvbmUuIEl0IGRvZXNuJ3QgcmVhbGx5IGhhdmUKYW55dGhpbmcgaW4gY29tbW9uLCBl
eGNlcHQgdGhhdCB0aGUgSVAgY29tZXMgZnJvbSBTeW5vcHN5cywgaGVuY2UgaXQKbWFrZXMgc2Vu
c2UgdG8gYWxzbyBoYXZlIGEgZGVkaWNhdGVkIHNjaGVtYS4KClRoYW5rcywKQ3Jpc3RpYW4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
