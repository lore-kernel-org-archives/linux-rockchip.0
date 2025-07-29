Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 290E3C87FC9
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Jul 2025 09:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:Cc:References:Message-Id
	:Date:Subject:Mime-Version:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=niKADzZp/AMSRkioK2+L0+FmNmmSbHvUC1HE6WqPWtU=; b=il2cYAean+6YVV
	4n4z121YfZKoeBkPyeeaFikO83IaIyvVhZ42yfZjTOaYwVTeObcCVvBw0KX081GchInIVG0g91SgB
	FzmO9oYokrzf/CiZHT8AHP0xYF7oarCDw1XlnPpiZwfeMydLHo/Ar5pdy5Srv5R6u8mhfQglM//ZV
	HbisI7/NDZkTJ0mpX4xxf62gMF5nCp5wrjyD3xLAwRtPqKLngG2Xqg6HeFKgtZQ/DkzIM0G8sgQz1
	+UiMbFJHaXWdCmHXzhn53CA5Hvr352KmKwocHrkDQrucr6GTWYv3pn/O7zMbco9S9swa/K4DDzCix
	4smZqPOMyvzCDqw/xLgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uggoO-0000000GQ7l-3sYy;
	Tue, 29 Jul 2025 09:39:56 +0000
Received: from chumsalmon.baetis.net ([209.222.21.150])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uggVL-0000000GNRR-1Zue;
	Tue, 29 Jul 2025 09:20:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tahomasoft.com;
	s=default; t=1753780813;
	bh=SL47x8RSPgb9O9GPSLVDnHkRq6js7JXYM272pZ+IYJ4=;
	h=From:Subject:Date:References:Cc:In-Reply-To:To:From;
	b=EFcSmrnQQ8ni8XA9Or5AqCO4mhm5tLNtScnVIinhQinQ1XeA23f2/+eyTbEe1U0zO
	 fTBXZqqfAfaIofhZnpPu2L8zkC5Oql8rxLJMgtbNqvmn6AZRey5ipVsIaIkxmTxSWX
	 htcc33V1Hv51luA9appWghQ35Jj5d9GiExox+S8CKh501JJDfKuhjYq4+kgtAIHYec
	 fSL0GeLljntcRhfnx4iAG4ATtjAFkKZKlnXuHa0slY7Y2If4AUf2q9p28fcQ85vOrE
	 aUyLf9k5r3cwBgDlaoy5PoXbcrcFKFTVfqbjyBjvsJptI8cMMB54g+mbYbmgY80fcS
	 nuJtonwhT7IGg==
Received: from smtpclient.apple (unknown [IPv6:2600:4040:50b7:b604:2ca9:1ceb:f1ef:b736])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by chumsalmon.baetis.net (Postfix) with ESMTPSA id 4C83B27E434;
	Tue, 29 Jul 2025 09:20:13 +0000 (UTC)
From: Erik Beck <xunil@tahomasoft.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH v5 0/2] Add Support for LinkStar H68K board: ARM64 and RK3568: dts and dt-bindings.
Date: Tue, 29 Jul 2025 05:20:02 -0400
Message-Id: <1283435E-EC3D-492E-8369-E51CBFE5E636@tahomasoft.com>
References: <20250729-poised-proud-ibex-5ab838@kuoka>
Cc: Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250729-poised-proud-ibex-5ab838@kuoka>
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: iPhone Mail (22F76)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_022015_607375_4DC4108C 
X-CRM114-Status: GOOD (  10.45  )
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

Cgo+IE9uIEp1bCAyOSwgMjAyNSwgYXQgMDQ6NTYsIEtyenlzenRvZiBLb3psb3dza2kgPGtyemtA
a2VybmVsLm9yZz4gd3JvdGU6Cj4gCj4g77u/T24gTW9uLCBKdWwgMjgsIDIwMjUgYXQgMTE6MDc6
MzVBTSAtMDQwMCwgRXJpayBCZWNrIHdyb3RlOgo+IHY1Ogo+PiAgLSBSZXNwb25zaXZlIHRvIGNv
bW1lbnRzIHJlY2VpdmVkIGZyb20gIEtyenlzenRvZiBLb3psb3dza2kgPGtyemsrZHRAa2VybmVs
Lm9yZz4KPj4gICAgLSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNTA3MjgtZGFzaGlu
Zy1kaXNjZXJuaW5nLXJvYWRydW5uZXItYmM4Yjg3QGt1b2thLwo+PiAgICAtIGh0dHBzOi8vbG9y
ZS5rZXJuZWwub3JnL2FsbC85M2MzOWIzNi0wN2M4LTQ4ODMtYmQyMy03ZDAxOTRjNTBhN2FAa2Vy
bmVsLm9yZy8KPj4gICAgLSBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvNjQyZGYxZWUtNWU5
Mi00ZjBhLWJjZGYtN2UxMGRiYzBkNTliQGtlcm5lbC5vcmcvCj4+ICAgIC0gaHR0cHM6Ly9sb3Jl
Lmtlcm5lbC5vcmcvYWxsLzllYmQ5Nzk3LThkOTItNDc5OS1iYjhkLTU5YTc5NmU2MDQzY0BsaW5h
cm8ub3JnLwo+PiAKPj4gIC0gQ2hhbmdlcyBtYWRlIGFyZToKPj4gICAgLSBSZXZpc2lvbnMgdG8g
Y29tbWl0IG1lc3NhZ2VzOgo+PiAgICAgICAgLSBSZW1vdmVkIG5vdGVzIG9uIGJhc2UgY29tbWl0
Owo+PiAgICAtIEZpeGVkIGNoZWNrcGF0Y2ggd2FybmluZzsKPj4gICAgLSBSZW1vdmVkIG5vdGVz
IG9uIGRldmljZSBoaXN0b3J5Owo+PiAgICAtIEZsZXNoZWQgb3V0IHRoZSB0b3AtbGluZSBzdW1t
YXJ5IG9mIHRoZSBkdHMgcGF0Y2g7Cj4gCj4gWW91IGRpZCBtb3JlIC0gYWxzbyBjaGFuZ2VkIG9y
ZGVyIG9mIHBhdGNoZXMuCgoKT29wcywgc29ycnkgYWJvdXQgdGhhdDsgSSBzdHJ1Z2dsZWQgYSBi
aXQgd2l0aCBiNC4KCldoaWNoIG9yZGVyIGRvIHlvdSBwcmVmZXI/CgpUaGFua3MsCgpFcmlrCgoK
PiAKPiBCZXN0IHJlZ2FyZHMsCj4gS3J6eXN6dG9mCj4gCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
