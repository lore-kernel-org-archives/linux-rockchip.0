Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85CCFC27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Jun 2024 09:55:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vxTd9SvV4cRjFb889EDppptqiU6YIG/9BQ5fXlaWC7E=; b=lzXPymwyEisfzh
	M1AJlHUKxyPu1qyF9IFYbQaEbdGQ5H9R7NPIH3bF7+PF2B0tAbcpE7Kvm6VherXxqFLFOWS1VoEr7
	EiC7buXEUq8dQvDXTAgx+UWYuAkYOBibQEq1AijSYPAqFsDvgJMXbmJ9RRRK8ErD2lCXbbx1qKWKE
	SLt9PRjws14ksTmViFVMNLwifo+5+gY7+YnBKaSHSdwQX+o3UStBKVaLxKFTbXu9ISs9xcYqCO0SO
	Y82NNjb0IVE4gn9Yj83hPr4arf0jO1kNsW8NJFAKSnCmwG5A7u2T4VCzTARQg9DcK5LScqZ+nA+n5
	BtyGIjPH3e2rEbhlSE8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNrH3-00000000B9S-0Big;
	Sun, 30 Jun 2024 09:55:09 +0000
Received: from mout.gmx.net ([212.227.17.22])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNrGs-00000000B6K-0NCa;
	Sun, 30 Jun 2024 09:54:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1719741254; x=1720346054; i=wahrenst@gmx.net;
	bh=vlpdb/+H3zch9Ng49zn3tG7OaI4bM4ldo+uRPLJ3wXE=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:Cc:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=Ai/47YDRf5utuBKzfB3ej2YKAzV+lDZYR5XR+Isvq4E0WwKo2U9sKxl6hRw5gMJA
	 6BrTlRB7cZwSYmUSGigwNkYIUj/rrf0K/P2DexizYVFa9LXwZ/CX2s+chSH4CmLYg
	 m2heyiUnmj5eqtOlWEpQfEbTGfF/MyEWn/t7Ni8j4tZB+mvX1yW1g3maPvK5LokXG
	 2lS1SumMnYNAAxkMa8mcxf5U2vh2/v8GLQBpb3wkO7wj1MOdBKtaJiV+K+T3vDAZS
	 qjG0U1eAnGKi6z3ijjV/tMxnEsGX9urMT3xEeqeMmncoHDVhGjkzHFdLfuWUqP8K6
	 mIe2NVfcuTABNojHug==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.127] ([37.4.248.43]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MowGU-1s5p8a1DIs-00ntu2; Sun, 30
 Jun 2024 11:54:14 +0200
Message-ID: <8e44631c-955f-42de-bb2f-f3a32c79f1c1@gmx.net>
Date: Sun, 30 Jun 2024 11:54:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/5] wifi: brcmfmac: Add optional lpo clock enable
 support
To: wens@kernel.org, Jacobe Zang <jacobe.zang@wesion.com>
Cc: "robh@kernel.org" <robh@kernel.org>,
 "krzk+dt@kernel.org" <krzk+dt@kernel.org>, "heiko@sntech.de"
 <heiko@sntech.de>, "kvalo@kernel.org" <kvalo@kernel.org>,
 "davem@davemloft.net" <davem@davemloft.net>,
 "edumazet@google.com" <edumazet@google.com>,
 "kuba@kernel.org" <kuba@kernel.org>, "pabeni@redhat.com"
 <pabeni@redhat.com>, "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "efectn@protonmail.com" <efectn@protonmail.com>,
 "dsimic@manjaro.org" <dsimic@manjaro.org>,
 "jagan@edgeble.ai" <jagan@edgeble.ai>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "arend@broadcom.com" <arend@broadcom.com>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "megi@xff.cz"
 <megi@xff.cz>, "duoming@zju.edu.cn" <duoming@zju.edu.cn>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "minipli@grsecurity.net" <minipli@grsecurity.net>,
 "brcm80211@lists.linux.dev" <brcm80211@lists.linux.dev>,
 "brcm80211-dev-list.pdl@broadcom.com" <brcm80211-dev-list.pdl@broadcom.com>,
 Nick Xie <nick@khadas.com>
References: <20240630073605.2164346-1-jacobe.zang@wesion.com>
 <20240630073605.2164346-5-jacobe.zang@wesion.com>
 <bd661690-1de8-4030-a209-ef26d3559221@gmx.net>
 <TYZPR03MB7001AC28827A86338BF2B77380D22@TYZPR03MB7001.apcprd03.prod.outlook.com>
 <CAGb2v66Vk8SMs1TOs+80Jy5fXumuYqCx59Tzd_N7wJAfyysQcw@mail.gmail.com>
Content-Language: en-US
From: Stefan Wahren <wahrenst@gmx.net>
In-Reply-To: <CAGb2v66Vk8SMs1TOs+80Jy5fXumuYqCx59Tzd_N7wJAfyysQcw@mail.gmail.com>
X-Provags-ID: V03:K1:wgVhvE1mQNGeE2c7GCy2YyHYqkHv0qtOLjU7gMUJRPduSP6aA3d
 C9KM/Dt6TwOjaZ7HiyF3/nZyFDWyyWRIs+ouU39gaTmCUSj+NLjfNKaVbadSY0enNNn20Bq
 WaQNjsTAunVtOYNhLO0pmOsKbTYmidIAghz96D3nAxbl9chvh52l2B2//peoMffCZK/a+Bd
 GAcWy0CtQmHsetg6+4HvQ==
UI-OutboundReport: notjunk:1;M01:P0:z2UQengSf74=;8/TGaodA/VNt91yVVeHooACI4JX
 AzSwAjWjUMX6+Ac/4FM0k8j4gxdcmVxIiqpvF79mx4rXhSZUwNIjN6GV6Qx7ifdfqfErXGrxG
 WkkrxACr+fmANXQGN6Nip/TmqNAVyXbRNAZXXDEqIF2zi/rgVMZTzOIqYUyWfFcSVWMSByOiY
 VXJkX7JQmNw+PZGjSay+HsCQSLQAnHx9wmb6au+lPs31TdRdlQqJe6gw5W39XNv/UvGcwu/h3
 TozVXJipA67N829fKDVAYkH4V3OY0z1pGTdXRVaj0AjK3LRdW1QwFt0urT9RSKQX4ZufV/2Ez
 NhTpNPSg9+c0cEfYVpYQlVY+bT3AIXv5Tw3TqBVBILYYNrOdi/CVD6Eg9TqUV2SEB7Wr+FfwT
 kjDPFx6mS8fIJE/OKFBmAqbrPeo1cLxF0GDg7/DxctNutdH08J4btOKBSAMSu8WmklrKIPOcs
 MqB3PCdsaduEjMOfzDHha4tGJsHQ4x7pX1tsi1Jlmou2RaRSqc70mglwnphmOvi1viEXPWHGb
 Wfhj5MMOYuRDwi1TBdrfzCdg6Gfn7aL5cQN54KnXm7cXg/BfVGBUqm8gbeK8tIEB7vnN1CIfK
 XFUeMkxSjzp9JYUE09fTl1N9M9LHzOutBez5h7ELJEe0b2Eng5gOK1Z0HqduecgXIRHxdmNcE
 cG56KXSC4n4+QrTcH/mTC1X4kcr/04BLWokrFoxJ6jdoVNUHpepbdh0Ephgus8JmON4jPutyC
 pc2+2m8aaCqtg1XKQO0khCU3uY0S8ff1u2tYDV/e6vAdeIQO0oXvet5RYByOJKkxrVlaWRjIN
 TepscKIdm7O0fKhT7fim6wwg9Tn71VIgEdT/VQbRLAIY0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240630_025458_442481_52D36BC6 
X-CRM114-Status: GOOD (  13.15  )
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

QW0gMzAuMDYuMjQgdW0gMTE6MTUgc2NocmllYiBDaGVuLVl1IFRzYWk6Cj4gT24gU3VuLCBKdW4g
MzAsIDIwMjQgYXQgNToxMOKAr1BNIEphY29iZSBaYW5nIDxqYWNvYmUuemFuZ0B3ZXNpb24uY29t
PiB3cm90ZToKPj4gSGkgU3RlZmFuLAo+Pgo+Pj4+IFdpRmkgbW9kdWxlcyBvZnRlbiByZXF1aXJl
IDMya0h6IGNsb2NrIHRvIGZ1bmN0aW9uLiBBZGQgc3VwcG9ydCB0bwo+Pj4+IGVuYWJsZSB0aGUg
Y2xvY2sgdG8gUENJZSBkcml2ZXIuCj4+PiB0aGUgbG93IHBvd2VyIGNsb2NrIGlzIGluZGVwZW5k
ZW50IGZyb20gdGhlIGhvc3QgaW50ZXJmYWNlIGxpa2UgUENJZS4gU28KPj4+IHRoZSBjbG9jayBo
YW5kbGluZyBzaG91bGQgbW92ZSB0byB0aGUgY29tbW9uIGNvZGUuIFNvcnJ5LCBub3QgaSBjYW5u
b3QKPj4+IGdpdmUgYSBnb29kIHN1Z2dlc3Rpb24sIHdoYXQncyB0aGUgYmVzdCBwbGFjZSBmb3Ig
dGhpcy4KPj4gSSB0aGluayB0aGUgY2xvY2sgaXMgdXNlZCBieSB0aGUgUENJZSBkZXZpY2Ugc28g
ZW5hYmxlIGl0IGluIHRoaXMgZmlsZS4gQWxzbyBJIGNoZWNrZWQKPj4gdXNlIG9mIGNsb2NrIHdo
aWNoIGluIHNwaVswXSBvciBzZGlvWzBdIGRldmljZSB3YXMgZW5hYmxlZCBzaW1pbGFybHkgdG8g
dGhpcy4KPj4KPj4gWzBdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIxMDgwNjA4MTIy
OS43MjE3MzEtNC1jbGF1ZGl1LmJlem5lYUBtaWNyb2NoaXAuY29tLwo+IFlvdSdyZSBsb29raW5n
IGF0IHRoZSB3cm9uZyBkcml2ZXIuIEZvciBicmNtZm1hYywgdGhlIGxwbyBjbG9jayBpcyB0b2dn
bGVkCj4gYnkgdGhlIE1NQyBwd3JzZXEgY29kZS4gQW5kIGZvciB0aGUgQmx1ZXRvb3RoIHNpZGUg
KHdoZXJlIGl0IHJlYWxseSBtYXR0ZXJzKQo+IGZvciBVQVJUcywgaXQgaXMgaW4gZHJpdmVycy9i
bHVldG9vdGgvaGNpX2JjbS5jLiBhbmQgZG9jdW1lbnRlZCBpbiB0aGUKPiBiaW5kaW5nIERvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9uZXQvYnJvYWRjb20tYmx1ZXRvb3RoLnlhbWwK
VGhhbmtzIGZvciBjbGFyaWZ5aW5nLiBTbyB0aGlzIGNoYW5nZSBoYW5kbGVzIHRoZSBQQ0llIGNh
c2Ugd2l0aG91dApibHVldG9vdGguIEZvciBVU0IgdGhlIGNsb2NrIGNvbnRyb2wgZG9lc24ndCBt
YWtlIHNlbnNlLgoKU29ycnkgZm9yIHRoZSBub2lzZQo+Cj4KPiBDaGVuWXUKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
