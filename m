Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B43B0C7618E
	for <linux-rockchip@archiver.kernel.org>; Sat, 22 Apr 2023 15:16:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pYQ1JezsSkdZsSiZu0P+zPXGobP05+OMezyEe3ZZtQc=; b=SZ60/NRMZr6Xl7
	K5D6Wjp/rTKaCXaWNSm+1Ece56GSH7PXYqBjbvhMyHEs6+/vKbpiadsczLDLd4n6M87BF2I7lUcek
	Vj261J9DG5x8Kziygzk0Em/fDmdzUYiQ0/gVwLm4OlzTdixI8qWF0BHS6ftrOelGAcIEXg5PW+nLY
	8s+DW7SluaDRj84g1ybBlJGCUQdxdfjCABJHGwX6F8+3MDYV/YduNT38xd01e+YtQzCZJYG2zi5XX
	dLyeU2LiD60aMbu/aFPNxW44RX760LCX10dD0QFodJcE9B1jgzGPwwqrOWAdXlyBF/SyWMwd+Bziu
	aL7JoWUYAy/U++4Qvggg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pqEy3-00D3Az-19;
	Sat, 22 Apr 2023 15:16:03 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pqExz-00D3A2-1g;
	Sat, 22 Apr 2023 15:16:01 +0000
Received: from [192.168.1.90] (unknown [188.27.34.213])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id D430F6603273;
	Sat, 22 Apr 2023 16:15:53 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1682176554;
	bh=X0mUkWfbzwnY1styVLWorvkjJxYiao2ZcpZFSg7WGBg=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Dk0lIkG1Nxu4OoOc57Mos8kM5WKz6Le9oR0FGuBfBl/8YsoaZEZ4VmF2D8Qw4qTnG
	 24wwzRrzRTnu9lKWsl9MFO1RysppuzJj+emZpRBYwVgtTm5YH7OZxui2W1jv7yPWJx
	 HGpGV9WVZPs4ohtJ8oMI9U2I4B51O7nfFH6EmIvRGinyXXnh7Vnfp27FHDuxdoD3cn
	 V9CZ9SFC/K76uVE5eFB1StC084yIgAX/S07bdXc0PD4sY/g/IdDepyYpuU4WYTnbfi
	 I6q80HOxTO8xC+25Py9ryjyxCHM+NWqrSxllj23cN24cZx75drgKUm2i8SDIp5gDmV
	 zlTdwdc/3BFHw==
Message-ID: <80d23bb9-b55a-57c5-4aa1-d29a919b04ae@collabora.com>
Date: Sat, 22 Apr 2023 18:15:51 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH v3 0/3] Enable rk3588 timer support
Content-Language: en-US
To: Vincent Legoll <vincent.legoll@gmail.com>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Kever Yang <kever.yang@rock-chips.com>, Johan Jonker <jbx6244@gmail.com>,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 kernel@collabora.com
References: <20230419181309.338354-1-cristian.ciocaltea@collabora.com>
 <CAEwRq=o71XMoj6_QU-mKrrrBqz80=C0g4fMwejv7fN-vAop89w@mail.gmail.com>
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <CAEwRq=o71XMoj6_QU-mKrrrBqz80=C0g4fMwejv7fN-vAop89w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230422_081559_712066_3A20EAAC 
X-CRM114-Status: GOOD (  16.93  )
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

T24gNC8yMi8yMyAxNjoxNywgVmluY2VudCBMZWdvbGwgd3JvdGU6Cj4gSGVsbG8sCj4gCj4gT24g
V2VkLCBBcHIgMTksIDIwMjMgYXQgNjoxM+KAr1BNIENyaXN0aWFuIENpb2NhbHRlYQo+IDxjcmlz
dGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4gd3JvdGU6Cj4+IFRoaXMgcGF0Y2hzZXQgZW5h
YmxlcyBSb2NrY2hpcCBSSzM1ODgvUkszNTg4UyBTb0MgdGltZXIgc3VwcG9ydC4KPj4gV2hpbGUg
aGVyZSwgaXQgYWxzbyBoYW5kbGVzIGEgbWlub3IgRFQgYmluZGluZyBpc3N1ZSByZWxhdGVkIHRv
IFJLMzI4OC4KPiAKPiBJIHRlc3RlZCB0aGlzIG9uIGEgUXVhcnR6UHJvNjQgZGV2IGJvYXJkLCBJ
IGFwcGxpZWQgeW91ciBzZXJpZXMgdG9wIG9mIG15IHRyZWU6Cj4gQ29sbGFib3JhJ3MgcmszNTg4
ICsgc29tZSBEVCBwYXRjaGVzIHRvIGFkZCBzdXBwb3J0IGZvciB0aGUgcXA2NCBib2FyZC4KPiAK
PiBIZXJlIGlzIHRoZSBvdXRwdXQgZnJvbSB0aGUgY29tbWFuZHMgeW91IHRvbGQgbWUgdG8gdHJ5
Ogo+IAo+IGJhc2gtNS4xIyBncmVwIHJrX3RpbWVyIC9zeXMvYnVzL2Nsb2NrZXZlbnRzL2Rldmlj
ZXMvKi9jdXJyZW50X2RldmljZQo+IC9zeXMvYnVzL2Nsb2NrZXZlbnRzL2RldmljZXMvYnJvYWRj
YXN0L2N1cnJlbnRfZGV2aWNlOnJrX3RpbWVyCj4gCj4gYmFzaC01LjEjIGdyZXAgLUIzIC1BMTQg
J0RldmljZTogcmtfdGltZXInIC9wcm9jL3RpbWVyX2xpc3QKPiAKPiBUaWNrIERldmljZTogbW9k
ZTogICAgIDEKPiBCcm9hZGNhc3QgZGV2aWNlCj4gQ2xvY2sgRXZlbnQgRGV2aWNlOiBya190aW1l
cgo+ICBtYXhfZGVsdGFfbnM6ICAgMTc4OTU2OTY5MDcwCj4gIG1pbl9kZWx0YV9uczogICAxMDAw
Cj4gIG11bHQ6ICAgICAgICAgICA1MTUzOTYwOAo+ICBzaGlmdDogICAgICAgICAgMzEKPiAgbW9k
ZTogICAgICAgICAgIDMKPiAgbmV4dF9ldmVudDogICAgIDE1MDk0NDAwMDAwMCBuc2Vjcwo+ICBz
ZXRfbmV4dF9ldmVudDogcmtfdGltZXJfc2V0X25leHRfZXZlbnQKPiAgc2h1dGRvd246ICAgICAg
IHJrX3RpbWVyX3NodXRkb3duCj4gIHBlcmlvZGljOiAgICAgICBya190aW1lcl9zZXRfcGVyaW9k
aWMKPiAgZXZlbnRfaGFuZGxlcjogIHRpY2tfaGFuZGxlX29uZXNob3RfYnJvYWRjYXN0Cj4gCj4g
IHJldHJpZXM6ICAgICAgICAwCj4gCj4gdGlja19icm9hZGNhc3RfbWFzazogZmYKPiAKPiBiYXNo
LTUuMSMgaGVhZCAtMSAvcHJvYy9pbnRlcnJ1cHRzIDsgZ3JlcCBya190aW1lciAvcHJvYy9pbnRl
cnJ1cHRzOwo+IHNsZWVwIDEwOyBncmVwIHJrX3RpbWVyIC9wcm9jL2ludGVycnVwdHMKPiAgICAg
ICAgICAgIENQVTAgICAgICAgQ1BVMSAgICAgICBDUFUyICAgICAgIENQVTMgICAgICAgQ1BVNCAg
ICAgICBDUFU1Cj4gICAgICAgQ1BVNiAgICAgICBDUFU3Cj4gIDI1OiAgICAgICAgNzQyICAgICAg
ICAyMTAgICAgICAgICA1MiAgICAgICAgIDQ5ICAgICAgIDIxOTcgICAgICAgMTY0MAo+ICAgICAg
IDEwODkgICAgICAgMjM0MSAgICAgR0lDdjMgMzIxIExldmVsICAgICBya190aW1lcgo+ICAyNTog
ICAgICAgIDc1NCAgICAgICAgMjIyICAgICAgICAgNTIgICAgICAgICA0OSAgICAgICAyMjUyICAg
ICAgIDE3MjcKPiAgICAgICAxMTQ2ICAgICAgIDI0MDQgICAgIEdJQ3YzIDMyMSBMZXZlbCAgICAg
cmtfdGltZXIKPiAKPiBTbyBpdCBsb29rcyBsaWtlIHRoaXMgaXMgd29ya2luZy4KPiAKPiBUaGFu
a3MgZm9yIHlvdXIgd29yay4KPiAKPiBZb3UgY2FuIGFkZCBteToKPiAKPiBUZXN0ZWQtYnk6IFZp
bmNlbnQgTGVnb2xsIDx2aW5jZW50LmxlZ29sbEBnbWFpbC5jb20+CgpUaGFua3MgZm9yIHRha2lu
ZyB0aGUgdGltZSB0byB0ZXN0IHRoaXMhCgpSZWdhcmRzLApDcmlzdGlhbgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGlu
ZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
