Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB41210ED66E
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Mar 2026 12:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vP1mZOP1DE5/aNuCvJL1SMICWVcXQvm+FXjbzyJiXck=; b=GGh6TNjXQuphlS
	14HHPfyio7X5nOxqZrUBGIhQ9wjg4Gzf5vIMDnkdOsLz/LOAh09MewRnfGk8s1bQFNCGtYlVNxAKf
	VtgovD3CchvSFUmwDGXsz8MvPCxKA0pCZd/6fR3ecvSDpvqwNIZzRIZGvTX4DE//k4NC8I+ptrfnA
	8y7edPOi9aCaNKYs1VzfYYAUeRO4jtNAxRy6h66J5YvVt3YQIvI/YZ1JxbQ2m3bWdKNTnyjAhnFJ+
	TaVoA4WJqO9DuFM6qSAOXo2tL6jUSqkwx9WFDgXjU04qexDZTkIpIBAlTav24UcSE6o9H4rWzj1IZ
	drpVq/XedQyn6eBvBD1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w66fH-00000007N0Y-36Gd;
	Fri, 27 Mar 2026 12:51:51 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w66fE-00000007MzW-303h;
	Fri, 27 Mar 2026 12:51:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1774615904;
	bh=+CLD7N/xs5jrp+gBJvL7KeuM5R0Wm9A5tOiDhEWnQiQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=GrVG6KQ3t5hCut9XXlE4yEKNlD9EE7f2zXD8SXKt5k1CyGL4BKYGEftfjbOXj2Pqf
	 etbaQ07g2cCAjT7HqbxY+GBTx+16RHZQwQWH99vA8e0TE9HgT7PGi1mYI/1HI1EeO8
	 9k6jfrkwEopTQMUa4rRszityVb+SpSXJfXDKyDLcYfThtc6D8kCC2rF9eOweFXKWj7
	 n7xJIUAowB1mVJ8Nz14xx0T2UPyyEMGv7rrjJ5+NktKraudt+ll0LX3yO5UDFsZyp3
	 9pE7Ija3/997BqehoBNexfTvyXyUZEEVBO9RX6ZHkm1EOPak/Ca6+34ohCx3syNiID
	 40u7HH5rG8lig==
Received: from [192.168.1.90] (unknown [86.123.23.225])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id B9C4F17E5A72;
	Fri, 27 Mar 2026 13:51:43 +0100 (CET)
Message-ID: <87f08459-740e-4fbf-b933-110182bc8918@collabora.com>
Date: Fri, 27 Mar 2026 14:51:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/4] arm64: dts: rockchip: Fix vdec register blocks
 order on RK3576/RK3588
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Detlev Casanova <detlev.casanova@collabora.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Hans Verkuil <hverkuil@kernel.org>
Cc: kernel@collabora.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Conor Dooley <conor.dooley@microchip.com>,
 linux-media@vger.kernel.org, Conor Dooley <conor@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
References: <20260304-vdec-reg-order-rk3576-v5-0-7006fad42c3a@collabora.com>
 <4358847.1IzOArtZ34@phil>
Content-Language: en-US
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
In-Reply-To: <4358847.1IzOArtZ34@phil>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260327_055148_921074_14BFFF74 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
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

T24gMy8xMC8yNiAxMDo0NCBBTSwgSGVpa28gU3R1ZWJuZXIgd3JvdGU6Cj4gQW0gTWl0dHdvY2gs
IDQuIE3DpHJ6IDIwMjYsIDIyOjAwOjM5IE1pdHRlbGV1cm9ww6Rpc2NoZSBOb3JtYWx6ZWl0IHNj
aHJpZWIgQ3Jpc3RpYW4gQ2lvY2FsdGVhOgo+PiBXaGVuIGJ1aWxkaW5nIGRldmljZSB0cmVlcyBm
b3IgdGhlIFJLMzU3NiBiYXNlZCBib2FyZHMsIERUQyBzaG93cyB0aGUKPj4gZm9sbG93aW5nIGNv
bXBsYWludDoKPj4KPj4gICByazM1NzYuZHRzaToxMjgyLjMwLTEzMDQuNTogV2FybmluZyAoc2lt
cGxlX2J1c19yZWcpOiAvc29jL3ZpZGVvLWNvZGVjQDI3YjAwMDAwOiBzaW1wbGUtYnVzIHVuaXQg
YWRkcmVzcyBmb3JtYXQgZXJyb3IsIGV4cGVjdGVkICIyN2IwMDEwMCIKPiAKPiBbLi4uXQo+IAo+
PiBDcmlzdGlhbiBDaW9jYWx0ZWEgKDQpOgo+PiAgICAgICBtZWRpYTogZHQtYmluZGluZ3M6IHJv
Y2tjaGlwLHZkZWM6IE1hcmsgcmVnLW5hbWVzIHJlcXVpcmVkIGZvciBSSzM1ezc2LDg4fQo+PiAg
ICAgICBtZWRpYTogZHQtYmluZGluZ3M6IHJvY2tjaGlwLHZkZWM6IEFkZCBhbHRlcm5hdGl2ZSBy
ZWctbmFtZXMgb3JkZXIgZm9yIFJLMzV7NzYsODh9Cj4gCj4gZHVlIHRvIG1lZGlhICJhcHBsaWVk
IiBtZXNzYWdlcyBtb3N0IG9mIHRoZSB0aW1lIG5vdCByZWFjaGluZyBhbGwgQ2MnZWQKPiByZWNp
cGllbnRzLCBwbGVhc2UgdGVsbCBtZSBvbmNlIHRoZSBiaW5kaW5nIHBhdGNoZXMgbGFuZGVkIHNv
bWV3aGVyZS4KClllYWgsIHNhZGx5IEkgYWxzbyBoYXZlbid0IHJlY2VpdmVkIGFueSBub3RpZmlj
YXRpb24gc28gZmFyLCBidXQganVzdCBub3RpY2VkCnRoZSBiaW5kaW5nIHBhdGNoZXMgYXJlIG5v
dyBpbiBuZXh0LTIwMjYwMzI2LCBhcyBhIHJlc3VsdCBvZiBtZXJnaW5nIGJyYW5jaAonbmV4dCcg
b2YgaHR0cHM6Ly9naXQubGludXh0di5vcmcvbWVkaWEtY2kvbWVkaWEtcGVuZGluZy5naXQ6Cgph
MTFkYjhkOGI0MDMgKCJtZWRpYTogZHQtYmluZGluZ3M6IHJvY2tjaGlwLHZkZWM6IE1hcmsgcmVn
LW5hbWVzIHJlcXVpcmVkIGZvciBSSzM1ezc2LDg4fSIpCjM1YzgxNzhlZDJiZCAoIm1lZGlhOiBk
dC1iaW5kaW5nczogcm9ja2NoaXAsdmRlYzogQWRkIGFsdGVybmF0aXZlIHJlZy1uYW1lcyBvcmRl
ciBmb3IgUkszNXs3Niw4OH0iKQoKVGhhbmtzLApDcmlzdGlhbgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
