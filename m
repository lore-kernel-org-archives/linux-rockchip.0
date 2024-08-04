Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D61BBC3DA7F
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Aug 2024 14:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U7Iu3ADlGGm1rjj3Q6WsF4E4CDBlkQdO0WxtIpcfziw=; b=XQO0Mz4nNivhKR
	HkX7QpWqHFawhw0b/dRVflYobCBw6E/vP1xsEOZs+i/TdfwSYvHudaJrRHxQtQIeKpci7toCDs6uh
	dF+OVlVzW4ZeHPiLbFZbQ2BNYVMXnyLNK2efx5FAAXNdGZoL1r+4YXXK7JbLAOl2LKfQWy+fQsWoj
	ye4CmdKLuo5LI09y1F2ZvTrMiMSSq5VdwiBhCisFG7KBHypWg6Yh5HoJNZUIHdidAoqdP/qS3Ja7W
	ldk/tE4iGV02hoKXCSm9XqnXrv7+bGkdqxtiVpusIc4Bk1KhmFYbCtquSb/3roe363Q10tyZ1839f
	o+sO/8vI73KQ15gB7eUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sabvi-0000000DOeJ-2OX0;
	Sun, 04 Aug 2024 14:09:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sabvC-0000000DOa6-3e10;
	Sun, 04 Aug 2024 14:09:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3707C60A7C;
	Sun,  4 Aug 2024 14:09:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3643EC32786;
	Sun,  4 Aug 2024 14:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722780557;
	bh=o5+7NJb5+y+0KIXGDx9N7TnkkCwXzwrwVaHM98bw1UU=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=CH3vHGlEeUVaOlJQaJveplm61nbcK06xC6MjpzmyO5+0TtRJXiThmnxmtDerAGDZS
	 RktoryuLPoBemsRTD4VC8scnx8K96AxZjPFNtbUYSLSOcK/IGFeh858IZ49Si23b/r
	 6pYE5qH4IZCA7Ltz9Pcj66VmHD9o2kpFMvhsOWfTu2jI+lIlCRk+arx0WLa6sis2EG
	 Ts4LvA8SNXZyQvo7g63g6ZvH5AfZdqFbulEDBRp33us0bteRy3mD55TjupVMkdkjit
	 QHYVMsN4IxHn5iFu/Uwy3k9ze6efZJs7GgdnHqK/nrzcB8AX2Um76DNBDN/D39gvuK
	 qoBwUM5EWJTkA==
Message-ID: <6bba3607-04c6-4d6d-942c-21859bfa9b74@kernel.org>
Date: Sun, 4 Aug 2024 16:09:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/4] arm64: dts: rockchip: Add base DT for rk3528 SoC
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Yao Zi <ziyao@disroot.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Chris Morgan <macromorgan@hotmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>,
 Andy Yan <andyshrk@163.com>, Muhammed Efe Cetin <efectn@protonmail.com>,
 Jagan Teki <jagan@edgeble.ai>, Dragan Simic <dsimic@manjaro.org>,
 Ondrej Jirman <megi@xff.cz>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org
References: <20240803125510.4699-2-ziyao@disroot.org>
 <20240803125510.4699-5-ziyao@disroot.org>
 <56bd1478-ce8c-4c1d-ab16-afe4ad462bf5@kernel.org> <10507028.U7f9L36N0a@diego>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <10507028.U7f9L36N0a@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240804_070919_017499_B2E87282 
X-CRM114-Status: GOOD (  11.69  )
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

T24gMDQvMDgvMjAyNCAxNDo0OSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gCj4+PiArCQljb21w
YXRpYmxlID0gImZpeGVkLWNsb2NrIjsKPj4+ICsJCSNjbG9jay1jZWxscyA9IDwwPjsKPj4+ICsJ
CWNsb2NrLWZyZXF1ZW5jeSA9IDwyNDAwMDAwMD47Cj4+PiArCQljbG9jay1vdXRwdXQtbmFtZXMg
PSAieGluMjRtIjsKPj4+ICsJfTsKPj4+ICsKPj4+ICsJZ2ljOiBpbnRlcnJ1cHQtY29udHJvbGxl
ckBmZWQwMTAwMCB7Cj4+Cj4+IFdoeSB0aGlzIGFsbCBpcyBvdXRzaWRlIG9mIFNvQz8KPiAKPiBJ
IGd1ZXNzIHlvdSBtZWFuIG91dHNpZGUgb2YgYSAic29jIHt9IiBub2RlPwo+IAo+IEhlcmUgdGhl
IHJrMzUyOCBzaW1wbHkgZm9sbG93cyBhbGwgb3RoZXIgUm9ja2NoaXAgU29DcyA6LSkgLgo+IAo+
IERpZ2dpbmcgaW50byB0aGUgaGlzdG9yeSwgdGhlIGZpcnN0IHJrMzA2NmEgYW5kIGluaXRpYWwg
cmszMjg4IHN1Ym1pc3Npb24KPiBkaWQgdXNlIGEgc29jIHt9IG5vZGUsIHdoaWNoIGxhdGVyIGdv
dCByZW1vdmVkIGFzIHN1Z2dlc3RlZCBieSBhcm0tc29jCj4gbWFpbnRhaW5lcnMgYXQgdGhlIHRp
bWUgWzBdLgo+IAo+IEkgZ3Vlc3MgdGhhdCBjaGFuZ2VkIHNpbmNlIHRoZW4/CgpXZWxsLCByZWZl
cmVuY2VkIHBhdGNoIHdhcyBtaXhpbmcgTU1JTyB3aXRoIG5vbi1NTUlPLCBzbyBPbG9mJ3MgY29t
bWVudApjb3VsZCBiZSB1bmRlcnN0b29kIHRoYXQgdGhpcyBpcyBub3QgY29ycmVjdCBhcHByb2Fj
aC4gRXZlbiB0aG91Z2ggRFQKc3BlYyBzaG93cyBleGFtcGxlcyBvZiAic29jIiwgaXQgaXMgbm90
IHJlcXVpcmVkLiBCdXQgdGhlbiBob3cgZG8geW91CmltcGxlbWVudCBhbnkgb3JkZXJpbmc/IEJ5
IG5hbWUgb3IgYnkgdW5pdCBhZGRyZXNzPwoKSU9XLCBJIHRoaW5rIHRoaXMgaXMgdGhlIG9ubHkg
cGxhdGZvcm0gbm90IHVzaW5nICJzb2MiIG5vZGVzLgoKQmVzdCByZWdhcmRzLApLcnp5c3p0b2YK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
