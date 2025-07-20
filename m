Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBBA3C83F22
	for <linux-rockchip@archiver.kernel.org>; Sun, 20 Jul 2025 10:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OP5lEt+khy0T5nYDsNNZlk7I9XUMQKFNm0l5O7ewqrI=; b=gsDFYZqxFbLD4t
	CZQqn03+sHNt7wmGnqM/ac+gpw9cEy5D/M1kJQagaenfrZHJui9KHnRfnZjQMOphuxb+zFOilv9og
	t/K/mssicfn9mEBEUT3ekX4neiCN17Cp+Wr8G04feT84XH4yWMM+6r8Y0x/3vv16lCCaTobA9MMgF
	DKPIjsBbmVhV1sbCnBUnWK6PnZzxzOxvR2JUpoPQbFfqZRv4vxT2x0gaoa7Od26CvLyndBsY0+TSy
	A4alOyLNRSLXf66EO/qqR78P1+5JgZKP4+izNcaeeopVjyH8LnR+cnDZgamMyFFUvXxpGlJHunFF9
	lSH9coR5XRozVyTuv/iA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udQth-0000000F7Kb-2QyS;
	Sun, 20 Jul 2025 10:03:57 +0000
Received: from smtpbgeu1.qq.com ([52.59.177.22])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udQrA-0000000F7Ej-3xTW;
	Sun, 20 Jul 2025 10:01:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1753005618;
	bh=+1tA8E6tSEi8pgyo2l3+8V+xZmJstOXrEmGOQAE1ENI=;
	h=Message-ID:Date:MIME-Version:Subject:To:From;
	b=cYgkGmLOW5UXXgi77aCRniusISuzdZqJNdJG+0P6z4awB+K1aZqw0Y9yragh+RTCe
	 tcP5l+wSVqFVAOvEBoFPflV8ErZKTw+J755pRmNzdAqUaywK/FrFdOb3KYJaqJKADZ
	 +nMuTFef2T+lascapQxXJrAV96+8vHn1aGxJlX6o=
X-QQ-mid: zesmtpgz4t1753005609tc12dd885
X-QQ-Originating-IP: S7vlnT4f2Oeduz39Y0mGFUhDJP76sxEqA7iKr+yzmUg=
Received: from [192.168.0.103] ( [117.25.58.172])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Sun, 20 Jul 2025 18:00:05 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 13950434152620915006
Message-ID: <E5C0D340064F22D9+c44656c5-6c20-4662-b331-40fc943e30b3@airkyi.com>
Date: Sun, 20 Jul 2025 18:00:03 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] arm64: dts: rockchip: rk3399-evb-ind: Add support
 for DisplayPort
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andy Yan <andy.yan@rock-chips.com>,
 Yubing Zhang <yubing.zhang@rock-chips.com>,
 Frank Wang <frank.wang@rock-chips.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Amit Sunil Dhamne <amitsd@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chaoyi Chen <chaoyi.chen@rock-chips.com>, Dragan Simic <dsimic@manjaro.org>,
 Johan Jonker <jbx6244@gmail.com>, Diederik de Haas <didi.debian@cknow.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
References: <20250718062619.99-1-kernel@airkyi.com>
 <20250718062619.99-6-kernel@airkyi.com>
 <skvceiwrg77ysx74bmywp6buk6yp6dlllrwpkfea4brposrveh@2rqtawpiaikk>
From: air windows <kernel@airkyi.com>
In-Reply-To: <skvceiwrg77ysx74bmywp6buk6yp6dlllrwpkfea4brposrveh@2rqtawpiaikk>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpgz:airkyi.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: OBlwWD/GWDEo8CT5u5pNZbXQyZ+EIDb92U6uNdnIJyJ1KIkFp/AHRxsX
	GWLPATpYIwQgPVzS/pAlyYHtJ/klWKaQcFOKVukx1JL4FTMe4QMlcpRTTIFaecxrq6d1qMR
	lgqzlfmSpOgbn3CGtJVneYxDWgvuw4qh2fHk/mmLm1ADUX4F0ytd2bzwU6ZSfr2me2qjjAr
	zdySvyxoc0SHNbVkLJXqH6FWqYRTH1NptJAhLBdGlh6IPIyj4UxPWxc4zKaTzb+Nb3KhUXs
	kUW3W3dn9VAObdIXceTAmcXzGm0ar1Wv9ftof/o4DGPj2hwFGE6Czjv0FuVkEEi3U6cuDgC
	D8kGPnznO3JqqXBBs3j8O+ubx8pklHjZVb8bxtj+uqcVwrKR4vugacc5VRbqOtmLj77efDZ
	RsgMz69eCouYaS1wlSNsjTbrl4lR+e3hKPjo1fxqMmRj+++fwoGcWk+yPp96YAPirgVt+pG
	8Q6yZdkk/hzs7uB/Lvt5OtzY2NbbiztX0wQFBRVfbKX2+miMOHBNJp+hx/rLYdV0sqWf/Qj
	yW5SAcsvbd/4JKbJAraN/wo7+DHlLpXlL0TeluAT2MwJ3sY6vq+bsdTEPKr/Qk/YQe/gAKB
	HNmY3RW29GBLkMGQLOdop7kGwKxPzwr8QfOt0U2LL/SL48XLztO9Pts85NlSlKhmZJ9L+lz
	okhGP1wA4M0J4HMGqsBvfQoGUf4xA2RZorlUAQ5YzE6LbN7HvgjdpZlJD1S2gIatEsEeD9F
	gLDXd/BO4HOU+k0kxakDLIsyyzUmnQH6ahLOWA8PMcwAg1U+JbTu5ACkTgAtyC3QgrFrj5+
	ci6EffEMjbG1HEny9mkSFkDjS0De8yz7pJEQQPommY4xu2bCo2woO6fmSnGy7raFqCzui8C
	3aKUJl0dRgoFH/iUeijHfYKK+yvOjxdkw68khx7/FcliavI8BUJQgIcAtWdTVd4E2m6U8Jk
	1TlZS2Sv0qaVVNbTAh4Yn2U/UeySbY0jW3k8=
X-QQ-XMRINFO: OWPUhxQsoeAVDbp3OJHYyFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_030121_441579_A9CA02AA 
X-CRM114-Status: GOOD (  17.35  )
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

5ZyoIDIwMjUvNy8xOSAxODo1MCwgRG1pdHJ5IEJhcnlzaGtvdiDlhpnpgZM6Cgo+IE9uIEZyaSwg
SnVsIDE4LCAyMDI1IGF0IDAyOjI2OjE5UE0gKzA4MDAsIENoYW95aSBDaGVuIHdyb3RlOgo+PiBG
cm9tOiBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5jb20+Cj4+Cj4+IFRoZSBS
SzMzOTkgRVZCIElORCBib2FyZCBoYXMgYSBUeXBlLUMgaW50ZXJmYWNlIERpc3BsYXlQb3J0Lgo+
PiBJdCB1c2UgZnVzYjMwMiBjaGlwIGFzIFR5cGUtQyBjb250cm9sbGVyLgo+Pgo+PiBmdXNiMzAy
IGNoaXAgLS0tPiBVU0IvRFAgUEhZMCA8LS0tLT4gQ0ROLURQIGNvbnRyb2xsZXIKPj4KPj4gU2ln
bmVkLW9mZi1ieTogQ2hhb3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29tPgo+PiAt
LS0KPj4KPj4gQ2hhbmdlcyBpbiB2MjoKPj4gLSBBZGQgZW5kcG9pbnQgdG8gbGluayBEUCBQSFkg
YW5kIERQIGNvbnRyb2xsZXIuCj4+IC0gRml4IGRldmljZXRyZWUgY29kaW5nIHN0eWxlLgo+Pgo+
PiAgIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktZXZiLWluZC5kdHMgICAgICB8IDEzMyAr
KysrKysrKysrKysrKysrKysKPj4gICAxIGZpbGUgY2hhbmdlZCwgMTMzIGluc2VydGlvbnMoKykK
Pj4KPj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWV2
Yi1pbmQuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktZXZiLWluZC5k
dHMKPj4gaW5kZXggNzBhZWUxYWI5MDRjLi45OTdiODIyYTU3ZmYgMTAwNjQ0Cj4+IC0tLSBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWV2Yi1pbmQuZHRzCj4+ICsrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LWV2Yi1pbmQuZHRzCj4+IEBAIC00LDYg
KzQsNyBAQAo+PiAgICAqLwo+PiAgIAo+PiAgIC9kdHMtdjEvOwo+PiArI2luY2x1ZGUgPGR0LWJp
bmRpbmdzL3VzYi9wZC5oPgo+PiAgICNpbmNsdWRlICJyazMzOTkuZHRzaSIKPj4gICAKPj4gICAv
IHsKPj4gQEAgLTE5LDYgKzIwLDIxIEBAIGNob3NlbiB7Cj4+ICAgCQlzdGRvdXQtcGF0aCA9ICJz
ZXJpYWwyOjE1MDAwMDBuOCI7Cj4+ICAgCX07Cj4+ICAgCj4+ICsJc291bmQ6IHNvdW5kIHsKPj4g
KwkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTktZ3J1LXNvdW5kIjsKPj4gKwkJcm9ja2No
aXAsY3B1ID0gPCZpMnMwICZzcGRpZj47Cj4+ICsJfTsKPj4gKwo+PiArCXZidXNfdHlwZWM6IHJl
Z3VsYXRvci12YnVzLXR5cGVjIHsKPj4gKwkJY29tcGF0aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQi
Owo+PiArCQllbmFibGUtYWN0aXZlLWhpZ2g7Cj4+ICsJCWdwaW8gPSA8JmdwaW8xIFJLX1BDMiBH
UElPX0FDVElWRV9ISUdIPjsKPj4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4gKwkJ
cGluY3RybC0wID0gPCZ2Y2M1djBfdHlwZWMwX2VuPjsKPj4gKwkJcmVndWxhdG9yLW5hbWUgPSAi
dmJ1c190eXBlYyI7Cj4+ICsJCXZpbi1zdXBwbHkgPSA8JnZjYzV2MF9zeXM+Owo+PiArCX07Cj4+
ICsKPj4gICAJdmNjNXYwX3N5czogcmVndWxhdG9yLXZjYzV2MC1zeXMgewo+PiAgIAkJY29tcGF0
aWJsZSA9ICJyZWd1bGF0b3ItZml4ZWQiOwo+PiAgIAkJZW5hYmxlLWFjdGl2ZS1oaWdoOwo+PiBA
QCAtMzEsNiArNDcsMTEgQEAgdmNjNXYwX3N5czogcmVndWxhdG9yLXZjYzV2MC1zeXMgewo+PiAg
IAl9Owo+PiAgIH07Cj4+ICAgCj4+ICsmY2RuX2RwIHsKPj4gKwlwaHlzID0gPCZ0Y3BoeTBfZHA+
Owo+PiArCXN0YXR1cyA9ICJva2F5IjsKPj4gK307Cj4+ICsKPj4gICAmY3B1X2IwIHsKPj4gICAJ
Y3B1LXN1cHBseSA9IDwmdmRkX2NwdV9iPjsKPj4gICB9Owo+PiBAQCAtNTUsNiArNzYsMTIgQEAg
JmNwdV9sMyB7Cj4+ICAgCWNwdS1zdXBwbHkgPSA8JnZkZF9jcHVfbD47Cj4+ICAgfTsKPj4gICAK
Pj4gKyZkcF9vdXQgewo+PiArCWRwX2NvbnRyb2xsZXJfb3V0cHV0OiBlbmRwb2ludCB7Cj4+ICsJ
CXJlbW90ZS1lbmRwb2ludCA9IDwmZHBfcGh5X2luPjsKPj4gKwl9Owo+PiArfTsKPj4gKwo+PiAg
ICZlbW1jX3BoeSB7Cj4+ICAgCXN0YXR1cyA9ICJva2F5IjsKPj4gICB9Owo+PiBAQCAtMzQxLDYg
KzM2OCw2MyBAQCByZWd1bGF0b3Itc3RhdGUtbWVtIHsKPj4gICAJfTsKPj4gICB9Owo+PiAgIAo+
PiArJmkyYzQgewo+PiArCWkyYy1zY2wtcmlzaW5nLXRpbWUtbnMgPSA8NDc1PjsKPj4gKwlpMmMt
c2NsLWZhbGxpbmctdGltZS1ucyA9IDwyNj47Cj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+PiArCj4+
ICsJdXNiYzA6IHR5cGVjLXBvcnRjQDIyIHsKPj4gKwkJY29tcGF0aWJsZSA9ICJmY3MsZnVzYjMw
MiI7Cj4+ICsJCXJlZyA9IDwweDIyPjsKPj4gKwkJaW50ZXJydXB0LXBhcmVudCA9IDwmZ3BpbzE+
Owo+PiArCQlpbnRlcnJ1cHRzID0gPFJLX1BBMiBJUlFfVFlQRV9MRVZFTF9MT1c+Owo+PiArCQlw
aW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+PiArCQlwaW5jdHJsLTAgPSA8JnVzYmMwX2ludD47
Cj4+ICsJCXZidXMtc3VwcGx5ID0gPCZ2YnVzX3R5cGVjPjsKPj4gKwo+PiArCQl1c2JfY29uOiBj
b25uZWN0b3Igewo+PiArCQkJY29tcGF0aWJsZSA9ICJ1c2ItYy1jb25uZWN0b3IiOwo+PiArCQkJ
bGFiZWwgPSAiVVNCLUMiOwo+PiArCQkJZGF0YS1yb2xlID0gImR1YWwiOwo+PiArCQkJcG93ZXIt
cm9sZSA9ICJkdWFsIjsKPj4gKwkJCXRyeS1wb3dlci1yb2xlID0gInNpbmsiOwo+PiArCQkJb3At
c2luay1taWNyb3dhdHQgPSA8MTAwMDAwMD47Cj4+ICsJCQlzaW5rLXBkb3MgPQo+PiArCQkJCTxQ
RE9fRklYRUQoNTAwMCwgMjUwMCwgUERPX0ZJWEVEX1VTQl9DT01NKT47Cj4+ICsJCQlzb3VyY2Ut
cGRvcyA9Cj4+ICsJCQkJPFBET19GSVhFRCg1MDAwLCAxNTAwLCBQRE9fRklYRURfVVNCX0NPTU0p
PjsKPj4gKwo+PiArCQkJYWx0bW9kZXMgewo+PiArCQkJCWRpc3BsYXlwb3J0IHsKPj4gKwkJCQkJ
c3ZpZCA9IC9iaXRzLyAxNiA8MHhmZjAxPjsKPj4gKwkJCQkJdmRvID0gPDB4ZmZmZmZmZmY+Owo+
IEkgZG9uJ3QgdGhpbmsgdGhhdCB0aGlzIFZETyBpcyBjb3JyZWN0LiBQbGVhc2UgYWRqdXN0IGl0
IGFjY29yZGluZyB0bwo+IHRoZSBzcGVjLgoKV2lsbCBmaXggaW4gdjMuCgoKPgo+PiArCQkJCX07
Cj4+ICsJCQl9Owo+PiArCj4+ICsJCQlwb3J0cyB7Cj4+ICsJCQkJI2FkZHJlc3MtY2VsbHMgPSA8
MT47Cj4+ICsJCQkJI3NpemUtY2VsbHMgPSA8MD47Cj4+ICsKPj4gKwkJCQlwb3J0QDAgewo+PiAr
CQkJCQlyZWcgPSA8MD47Cj4+ICsKPj4gKwkJCQkJdXNiYzBfb3JpZW5fc3c6IGVuZHBvaW50IHsK
Pj4gKwkJCQkJCXJlbW90ZS1lbmRwb2ludCA9IDwmdGNwaHkwX29yaWVudGF0aW9uX3N3aXRjaD47
Cj4+ICsJCQkJCX07Cj4+ICsJCQkJfTsKPj4gKwo+PiArCQkJCXBvcnRAMSB7Cj4+ICsJCQkJCXJl
ZyA9IDwxPjsKPj4gKwo+PiArCQkJCQlkcF9tb2RlX3N3OiBlbmRwb2ludCB7Cj4+ICsJCQkJCQly
ZW1vdGUtZW5kcG9pbnQgPSA8JnRjcGh5X2RwX2FsdG1vZGVfc3dpdGNoPjsKPj4gKwkJCQkJfTsK
Pj4gKwkJCQl9Owo+PiArCQkJfTsKPj4gKwkJfTsKPj4gKwl9Owo+PiArfTsKPj4gKwo+PiAgICZp
MnMyIHsKPj4gICAJc3RhdHVzID0gIm9rYXkiOwo+PiAgIH07Cj4+IEBAIC0zNTQsNiArNDM4LDE2
IEBAICZpb19kb21haW5zIHsKPj4gICB9Owo+PiAgIAo+PiAgICZwaW5jdHJsIHsKPj4gKwl1c2It
dHlwZWMgewo+PiArCQl1c2JjMF9pbnQ6IHVzYmMwLWludCB7Cj4+ICsJCQlyb2NrY2hpcCxwaW5z
ID0gPDEgUktfUEEyIFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX3VwPjsKPj4gKwkJfTsKPj4gKwo+
PiArCQl2Y2M1djBfdHlwZWMwX2VuOiB2Y2M1djAtdHlwZWMwLWVuIHsKPj4gKwkJCXJvY2tjaGlw
LHBpbnMgPSA8MSBSS19QQzIgUktfRlVOQ19HUElPICZwY2ZnX3B1bGxfbm9uZT47Cj4+ICsJCX07
Cj4+ICsJfTsKPj4gKwo+PiAgIAlwbWljIHsKPj4gICAJCXBtaWNfaW50X2w6IHBtaWMtaW50LWwg
ewo+PiAgIAkJCXJvY2tjaGlwLHBpbnMgPSA8MSBSS19QQzUgUktfRlVOQ19HUElPICZwY2ZnX3B1
bGxfdXA+Owo+PiBAQCAtNDAwLDEwICs0OTQsNDggQEAgJnNkbW1jIHsKPj4gICAJc3RhdHVzID0g
Im9rYXkiOwo+PiAgIH07Cj4+ICAgCj4+ICsmc291bmQgewo+PiArCXJvY2tjaGlwLGNvZGVjID0g
PCZjZG5fZHA+Owo+PiArCXN0YXR1cyA9ICJva2F5IjsKPj4gK307Cj4+ICsKPj4gKyZzcGRpZiB7
Cj4+ICsJc3RhdHVzID0gIm9rYXkiOwo+PiArfTsKPj4gKwo+PiAgICZ0Y3BoeTAgewo+PiAgIAlz
dGF0dXMgPSAib2theSI7Cj4+ICAgfTsKPj4gICAKPj4gKyZ0Y3BoeTBfZHAgewo+PiArCW1vZGUt
c3dpdGNoOwo+IEJ1dCBub3QgYW4gb3JpZW50YXRpb24tc3dpdGNoPyBTaG91bGRuJ3QgaXQgYWxz
byBub3RlIHRoZSBTQlUgcGlucwo+IG9yaWVudGF0aW9uPyBPciBEUCBsYW5lcyBvcmllbnRhdGlv
bj8KCkFoLCB5b3Ugd2lsbCBmaW5kIGl0IGluIHRjcGh5MF91c2IzLiBZZXMgdGhpcyBzaG91bGQg
YWxzbyBhcHBseSB0byBEUCwgaXQncyBjb21ibyBQSFkuCgoKPgo+PiArCj4+ICsJcG9ydCB7Cj4+
ICsJCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+PiArCQkjc2l6ZS1jZWxscyA9IDwwPjsKPj4gKwo+
PiArCQl0Y3BoeV9kcF9hbHRtb2RlX3N3aXRjaDogZW5kcG9pbnRAMCB7Cj4+ICsJCQlyZWcgPSA8
MD47Cj4+ICsJCQlyZW1vdGUtZW5kcG9pbnQgPSA8JmRwX21vZGVfc3c+Owo+PiArCQl9Owo+PiAr
Cj4+ICsJCWRwX3BoeV9pbjogZW5kcG9pbnRAMSB7Cj4+ICsJCQlyZWcgPSA8MT47Cj4+ICsJCQly
ZW1vdGUtZW5kcG9pbnQgPSA8JmRwX2NvbnRyb2xsZXJfb3V0cHV0PjsKPj4gKwkJfTsKPj4gKwl9
Owo+PiArfTsKPj4gKwo+PiArJnRjcGh5MF91c2IzIHsKPj4gKwlvcmllbnRhdGlvbi1zd2l0Y2g7
Cj4KPiBIbW1tLgoKV2VsbCwgSSBwdXQgaXQgdW5kZXIgJnRjcF9waHkwIGF0IGZpcnN0LCBidXQg
aXQgbG9va3MgbGlrZSBzb21lb25lIGhhcyBhbHJlYWR5IGFkZGVkIHRoaXMgaW4gb3RoZXIgZHRz
aS4gU28gSSBwdXQgdGhlIHR3byBwcm9wIHVuZGVyIGVhY2ggImNoaWxkIiBwaHkuLi4KCgo+Cj4+
ICsKPj4gKwlwb3J0IHsKPj4gKwkJdGNwaHkwX29yaWVudGF0aW9uX3N3aXRjaDogZW5kcG9pbnQg
ewo+PiArCQkJcmVtb3RlLWVuZHBvaW50ID0gPCZ1c2JjMF9vcmllbl9zdz47Cj4+ICsJCX07Cj4+
ICsJfTsKPj4gK307Cj4+ICsKPj4gICAmdGNwaHkxIHsKPj4gICAJc3RhdHVzID0gIm9rYXkiOwo+
PiAgIH07Cj4+IEBAIC00NjEsNiArNTkzLDcgQEAgJnVzYl9ob3N0MV9vaGNpIHsKPj4gICB9Owo+
PiAgIAo+PiAgICZ1c2JkcmRfZHdjM18wIHsKPj4gKwl1c2Itcm9sZS1zd2l0Y2g7Cj4gVGhpcyBp
cyBhbiBTb0MtbGV2ZWwgcHJvcGVydHkuCgpXaWxsIGZpeCBpbiB2My4KCgo+Cj4+ICAgCXN0YXR1
cyA9ICJva2F5IjsKPj4gICB9Owo+PiAgIAo+PiAtLSAKPj4gMi40OS4wCj4+Cj4+CgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
