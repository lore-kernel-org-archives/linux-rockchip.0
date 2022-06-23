Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E483C43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jun 2022 16:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G+ouMs4TrvXKTqsz4taekWFz5BcsQQuHX+0GZrS/+bE=; b=fdkO4j1DIJDgI9
	u2H4WRKU8ucfRnN4TyK7G5R5jOH3YeKHLdv2CEYdbH38xnnLqBClmLfmRuiGh+WonkHLpu+SqjSZb
	lHKbtW0PJFnJYygyfTiCCOl790O5SYdGmci0dRjUvO5sndVO4lQWCHOaLPskwfQjrtbZrjEBki72x
	G+/rlC5SCartP2n2tEFZjI3KcbvlT+RK8lVdpCbyNOZIWvqV/Z8PRPHQkEiu8aEA0TdDNSC9W5K5B
	Bqifo5cYRQpvF6Dq7Ikm4CPPxGdeaFuq9WZ2GFaj3RzYD61xciq74lZXOIPKRDgsDK7MooGaxGMZE
	breatj7ZbhYoW6i8mjLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4PgN-00Fsne-Kv; Thu, 23 Jun 2022 16:27:51 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4Pg8-00FsjT-Sq; Thu, 23 Jun 2022 16:27:38 +0000
Received: from [IPv6:2a00:23c7:6883:e501:cf51:f3a2:10b5:accf] (unknown [IPv6:2a00:23c7:6883:e501:cf51:f3a2:10b5:accf])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 7743D66017DF;
	Thu, 23 Jun 2022 17:27:35 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1656001655;
	bh=NOXLDQQY6Qn46K8ua35Qrcynf4RZ6XTgqmLQiP/tZug=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=jxIe5hH63c4ixjHF1Fb4jD9WAMxdBVpKG/VAckQVzflbokqt0Yr9XRpRpLUq9hql5
	 nrf+BW6g2ApHq8033G5a6GXH4ttFVnykgK9qNnlYu/hJ9s6ydQFyqEeII6TblSqCD5
	 9fTFZszKby9bvldzd6brdP9uIAds7lyxN3J6ojllAVClGbVLserC9yvFU9cGbyve74
	 NqfTECT9KS6SYa9oWvcgo/q92iCuwK0LZKbpvFvAsP3wlIP46jMaDYayzI9x9gxpq1
	 SwlvPpdbTxFZxKqQx6gcIXF/CaJU4U6Raf1WE1/wbAwc+CAC33e/poRcpbmAPVOrFc
	 TxT05X6Lr2Iog==
Message-ID: <04dbb1c6451c2baef84c48d5aa812039c94593d1.camel@collabora.com>
Subject: Re: [PATCH 4/6] dt-bindings: mfd: syscon: Add rk3388 QoS register
 compatible
From: Christopher Obbard <chris.obbard@collabora.com>
To: Sebastian Reichel <sebastian.reichel@collabora.com>, Heiko Stuebner
	 <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>,  linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,  devicetree@vger.kernel.org,
 kernel@collabora.com
Date: Thu, 23 Jun 2022 17:27:31 +0100
In-Reply-To: <20220623162309.243766-5-sebastian.reichel@collabora.com>
References: <20220623162309.243766-1-sebastian.reichel@collabora.com>
	 <20220623162309.243766-5-sebastian.reichel@collabora.com>
User-Agent: Evolution 3.44.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_092737_106864_1AF528C8 
X-CRM114-Status: GOOD (  11.11  )
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

T24gVGh1LCAyMDIyLTA2LTIzIGF0IDE4OjIzICswMjAwLCBTZWJhc3RpYW4gUmVpY2hlbCB3cm90
ZToKPiBEb2N1bWVudCByazMzNjggY29tcGF0aWJsZSBmb3IgUW9TIHJlZ2lzdGVycy4KCkhleSBT
ZWJhc3RpYW4sCgpMb29rcyBsaWtlIHRoaXMgKGFuZCB0aGUgcGF0Y2ggc3ViamVjdCkgc2hvdWxk
IGluc3RlYWQgcmVmZXIgdG8gdGhlCnJrMzU4OCA/CgpUaGFua3MhCkNocmlzCgo+IAo+IFNpZ25l
ZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEu
Y29tPgo+IC0tLQo+IMKgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9zeXNj
b24ueWFtbCB8IDEgKwo+IMKgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCj4gCj4gZGlm
ZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvc3lzY29uLnlh
bWwKPiBiL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9tZmQvc3lzY29uLnlhbWwK
PiBpbmRleCBmYjc4NDA0NTAxM2YuLmZmMWE3YWFlMzNmMiAxMDA2NDQKPiAtLS0gYS9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3N5c2Nvbi55YW1sCj4gKysrIGIvRG9jdW1l
bnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL21mZC9zeXNjb24ueWFtbAo+IEBAIC01OSw2ICs1
OSw3IEBAIHByb3BlcnRpZXM6Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHJvY2tj
aGlwLHJrMzM2OC1xb3MKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcm9ja2NoaXAs
cmszMzk5LXFvcwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSByb2NrY2hpcCxyazM1
NjgtcW9zCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gcm9ja2NoaXAscmszNTg4LXFv
cwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgLSBzYW1zdW5nLGV4eW5vczMtc3lzcmVn
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIHNhbXN1bmcsZXh5bm9zNC1zeXNyZWcK
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gc2Ftc3VuZyxleHlub3M1LXN5c3JlZwo+
IC0tIAo+IDIuMzUuMQo+IAo+IApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
