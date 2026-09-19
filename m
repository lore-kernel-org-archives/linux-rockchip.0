Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50947C982CC
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2026 09:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mde+D2F+rfYwGKpPZkK1HIcLgf+MFdRIrKPBQMb+3h4=; b=TyfMnxT+4hDsDI
	shSiQ/uORsktIM/57qZiK2aGkacdqsZGZ+3zUF4//jNhTnc5Di6w+2+NpHj5o3SvNRxEXy7Go50Oy
	aikPt4k9NmBZJzYoiuxU9BUwx3/3gtek/ib+x4PRxunKDm03OhbfrKAYHqqopaR4WnrzlKn8u7L/3
	O/G7R5ciuFLKgr3akXuk7T3Nl4Cvh334g4i+UzFkTRQoMeIp3xQV0wAbQb1CyAo0q8oGj8wtPjjo7
	XompQ1nxE6EgNPIelKB6cpu8Yk79llCNvXunv1SDa9bZmaiy/CrFOKi7O/SH6k3ovC3MO1My/8juJ
	n1p/d8JRrn12UhbMGwXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7rWi-0000000G8gm-0bBC;
	Sat, 19 Sep 2026 09:38:32 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7rWf-0000000G8gA-4172
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Sep 2026 09:38:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1789810709;
 bh=zGrl5lrYdWqS+T79tPrrdFjy8nze0T9cQfR/nAnT4sY=;
 b=lvdnWLZiXsUnok3HsY92yDN8eteeHavH5V/DIGXq8ymQAd7SCZZLMcp9hfyh645j3xtQSBkLM
 yN7p/H+ThvZXIIv/vCN+evU/7QIl0lCssq33Bv8Ntujo1Ouly8EhgNMTngHPjXIGn2QYe3URhT9
 8zpMxx0c9Ndz1hAb2MJ1RVZ4ffw9HSX5qoa8rOKKJi6RwdsLXetZcPoz2ZpNk17vVdh/TwbgBQ9
 ylTyKoWnNyZaPQbRo37HFDUg5Q/p/zrwT7fIuOrQY/xnQExCDwtXvGhdF5qr4jAMErSvqJAqhCA
 w6bNFvvl4NH2xWzJPjZyoT0v4xk2+ApvAUybW9aHoWqA==
X-Forward-Email-ID: 6aae5808a917c0722b3828d9
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 2.14.2
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <a558ca88-6981-428c-943d-6fd904d8ef2b@kwiboo.se>
Date: Sat, 19 Sep 2026 11:38:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 1/3] dt-bindings: arm: rockchip: Add FriendlyElec
 NanoPi R28S
To: HystericalDragons@proton.me
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Chukun Pan <amadeus@jmu.edu.cn>, jensen <jensenhuang@friendlyarm.com>,
 Andrey Korshunov <razor1702@gmail.com>,
 Diederik de Haas <diederik@cknow-tech.com>,
 Conor Dooley <conor.dooley@microchip.com>
References: <20260914-r28s-upstream-v6-0-ea9edd75c126@proton.me>
 <20260914-r28s-upstream-v6-1-ea9edd75c126@proton.me>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20260914-r28s-upstream-v6-1-ea9edd75c126@proton.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260919_023829_993000_4088DBAF 
X-CRM114-Status: GOOD (  12.89  )
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

SGksCgpPbiA5LzE0LzIwMjYgMzozNSBQTSwg5a6J5a65IHZpYSBCNCBSZWxheSB3cm90ZToKPiBG
cm9tOiDlronlrrkgPEh5c3RlcmljYWxEcmFnb25zQHByb3Rvbi5tZT4KPiAKPiBUaGUgTmFub1Bp
IFIyOFMgaXMgYSBkdWFsIGdpZ2FiaXQgRXRoZXJuZXQgcm91dGVyIGJvYXJkIGJhc2VkIG9uIHRo
ZQo+IFJvY2tjaGlwIFJLMzUyOCBTb0MuIEl0IHNoYXJlcyBpdHMgYmFzZSBkZXZpY2V0cmVlIHdp
dGggdGhlIE5hbm9QaQo+IFplcm8yLCBzbyBsaXN0IGJvdGggYm9hcmRzIGluIGEgc2luZ2xlIGVu
dHJ5Lgo+IAo+IEFja2VkLWJ5OiBDb25vciBEb29sZXkgPGNvbm9yLmRvb2xleUBtaWNyb2NoaXAu
Y29tPgo+IFNpZ25lZC1vZmYtYnk6IOWuieWuuSA8SHlzdGVyaWNhbERyYWdvbnNAcHJvdG9uLm1l
Pgo+IC0tLQo+ICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlw
LnlhbWwgfCAxMiArKysrKysrLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygr
KSwgNSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVl
L2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCj4gaW5kZXggODE3NDRmYmVlOS4uZGMwNDk0NmRi
MCAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3Jv
Y2tjaGlwLnlhbWwKPiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJt
L3JvY2tjaGlwLnlhbWwKPiBAQCAtMzQ3LDYgKzM0NywxMyBAQCBwcm9wZXJ0aWVzOgo+ICAgICAg
ICAgICAgICAgIC0gZnJpZW5kbHlhcm0sbmFub3BpLXIycy1wbHVzCj4gICAgICAgICAgICAtIGNv
bnN0OiByb2NrY2hpcCxyazMzMjgKPiAgCj4gKyAgICAgIC0gZGVzY3JpcHRpb246IEZyaWVuZGx5
RWxlYyBOYW5vUGkgUjI4Uy9aZXJvMgoKTWF5YmUgbmFtZSB0aGlzIHNvbWV0aGluZyBsaWtlICdG
cmllbmRseUVsZWMgTmFub1BpIFJLMzUyOCBzZXJpZXMgYm9hcmRzJwp0byBjbG9zZXIgbWF0Y2gg
b3RoZXIgTmFub1BpL1BDIGVudHJpZXM/IFRoYXQgd291bGQgYWxzbyBwcmV2ZW50cwpyZS1vcmRl
cmluZyBvbmNlIG1vcmUgd2hlbiBOYW5vUGkgTkVPMyBQbHVzIGlzIGFkZGVkLgoKUmVnYXJkcywK
Sm9uYXMKCj4gKyAgICAgICAgaXRlbXM6Cj4gKyAgICAgICAgICAtIGVudW06Cj4gKyAgICAgICAg
ICAgICAgLSBmcmllbmRseWFybSxuYW5vcGktcjI4cwo+ICsgICAgICAgICAgICAgIC0gZnJpZW5k
bHlhcm0sbmFub3BpLXplcm8yCj4gKyAgICAgICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazM1MjgK
PiArCj4gICAgICAgIC0gZGVzY3JpcHRpb246IEZyaWVuZGx5RWxlYyBOYW5vUGkgUjNTCj4gICAg
ICAgICAgaXRlbXM6Cj4gICAgICAgICAgICAtIGNvbnN0OiBmcmllbmRseWFybSxuYW5vcGktcjNz
Cj4gQEAgLTM4OCwxMSArMzk1LDYgQEAgcHJvcGVydGllczoKPiAgICAgICAgICAgIC0gY29uc3Q6
IGZyaWVuZGx5YXJtLG5hbm9waS1yNzZzCj4gICAgICAgICAgICAtIGNvbnN0OiByb2NrY2hpcCxy
azM1NzYKPiAgCj4gLSAgICAgIC0gZGVzY3JpcHRpb246IEZyaWVuZGx5RWxlYyBOYW5vUGkgWmVy
bzIKPiAtICAgICAgICBpdGVtczoKPiAtICAgICAgICAgIC0gY29uc3Q6IGZyaWVuZGx5YXJtLG5h
bm9waS16ZXJvMgo+IC0gICAgICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszNTI4Cj4gLQo+ICAg
ICAgICAtIGRlc2NyaXB0aW9uOiBGcmllbmRseUVsZWMgTmFub1BDIFQ2IHNlcmllcyBib2FyZHMK
PiAgICAgICAgICBpdGVtczoKPiAgICAgICAgICAgIC0gZW51bToKPiAKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
