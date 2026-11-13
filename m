Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4084606A31C
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 09:48:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=keGl2AWf;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=pengutronix.de header.i=@pengutronix.de header.a=rsa-sha256 header.s=20260414 header.b=FqvcFHOA
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=BwHf5xy7H6G2BwH0IeJcaoOazW8BwmEU/GHXkcDmbCw=; b=keGl2AWfD7XGs8YGNS6+G4s9hg
	H8CbJcY46EzLqOiX49UVykytrtlUZSxOBOby2aE205b6yGYn60FeI3Civt3Q+/P0kwuaku+w0bHHc
	DQnZUZTPSL3rckG1p6A8mQyzUSYgSo6CVkvsgdlmphJWx0O/Ggg7QYaiu86GOnVsJz5EBw6jzE3BI
	fhNVKXl7IMovIrOvlMnAg35LjQxjKwVeHT0aMTe/BzfSDIezecjVeKxFotbHtXa0Rx/MYbyAMgjlY
	8EOhfTdPHaQsTUQToe6ryCOzZFf/NX5+15ExjUj54dcC9m3J8Ny1PdFsbgwYGz0EVBfNJ2WWDDglR
	Li9g4p3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRntH-0000000CFwe-3tRo;
	Fri, 13 Nov 2026 09:48:15 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRntD-0000000CFvq-3n9g;
	Fri, 13 Nov 2026 09:48:14 +0000
Received: from [IPv6:2a0a:edc0:0:900:1d::4e] (lupine.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::4e])
	(Authenticated sender: pza@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 980D3202266;
	Fri, 13 Nov 2026 10:48:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794563289;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6H6K3uHq6NldMYMP3YlBlDnoWedZJbrPijCyuvU5TUk=;
	b=FqvcFHOAeaCHKc//EX4Sn8K3WgWUE9ly8lTAA/ubhgL1zyUhcTU49NYaJcy03/u2t82L2W
	UX6G9VcHfqnXq0mqWRNwteHo5xJBoP6Tx5BSLYqxtyEKWVOyKTrpB7xn/rSkr58/b1ho0M
	JWeoMnt1LU/QDcnnf7HcGVahrSiJf5eJWCif3ai//637c9+QsqtaIjPJh7owV9WMyK5ZQv
	Zsrk/Pm6XkdQf2tzoEi+C+QJWgvhy0nb/X5hq1t10P3gzd43rYDbd05at58VOHz4FYSE2m
	8hO6tH3vsmEcF087cew6LcawDaV5ueVfjeJm2N97h2mBzD2mWh4UttExg9DaIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794563289;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6H6K3uHq6NldMYMP3YlBlDnoWedZJbrPijCyuvU5TUk=;
	b=F07za/cfOIcBUy3W+xv3VFmG0ykRp8tVU87RsKSyxqY1Z5RAwqaSKdOzAwj1nUT5I4Auaz
	1FiIIWP7NXflJyjVgGZlm6TsW+021zI7asuteUQUvTYP0SCvyeQCrVQT6rWK7+E3ODml5z
	L6FtPBs1/ytxW9zd+KS8kKZZ2TZaCbFHzmb6WzEwP6Ryp1L4uzTS5vZhmo+Y1Wks1A+WKL
	IQMN9NEhy4uFTCu6oOqcE8Tfx0NQlJnfCPiFqwqIkzYz9EV1V5c1r59r/mqTE3EI9FRrEz
	w5EXvwLFlS8IjRBQHzCJBQEEOC66XBFattdrbfPOWjN2Mm9uS4N463WBsTc56g==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794563289; a=rsa-sha256;
	cv=none;
	b=DATszqC5RkaNaiZF3N020sjUU8Dt3zypTQz316EJeMEzE20YJJfUYsbGms8dgsEOH+0FTR
	0cuFWWXTi9H4nm9W66UQxLfGxRADGU+tgQZ/51DV+Dfpx8e4Sn74JcF32JCuDXslkLjKF5
	v+pnIT4/mhmfb0TEpcwwXIGIQwrwCJLDWGEoMEHDulMxaqszKhLbHGc7XEKlnVv5yGL9+S
	iBPXCJszLfz7yjoISZd0P6vmS2s2WaNYP4ay++qtT+8WTKLvsMQpCIc1MXQOUBNt1CfiHo
	GfKNzWN0sxP8v6b3JGt8u51d/JlSwOQKbio8i08p6Uk0XPjH10ZKbuU1pkoSyQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=pza@pengutronix.de smtp.mailfrom=p.zabel@pengutronix.de
Message-ID: <b3fa092ec9390cf5bfe2f4338af68327be70e6e1.camel@pengutronix.de>
Subject: Re: [PATCH v2 2/6] media: verisilicon: Don't hold the VPU in reset
 after remove
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Arun Iyengar <aiyengar1990@gmail.com>, Benjamin Gaignard
	 <benjamin.gaignard@collabora.com>
Cc: Nicolas Dufresne <nicolas.dufresne@collabora.com>, Mauro Carvalho Chehab
	 <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof Kozlowski	
 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner	
 <heiko@sntech.de>, Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Hans Verkuil	 <hverkuil@kernel.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, 	linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, 	devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, 	linux-kernel@vger.kernel.org, Sergei
 Khomenkov <shomenkow@gmail.com>, Tharit Tangkijwanichakul
 <tharitt97@gmail.com>, stable@vger.kernel.org
Date: Fri, 13 Nov 2026 10:48:09 +0100
In-Reply-To: <CAEy9hNU2ox76TFKtdisqUHDxZ=3gPVBDBcjz_W8RtCpCpK5d7g@mail.gmail.com>
References: <20261112-hantro-robust-v2-0-18561fd48838@gmail.com>
	 <20261112-hantro-robust-v2-2-18561fd48838@gmail.com>
	 <c97eef1ba88daf83d231d2ecc78b47fcf524385c.camel@pengutronix.de>
	 <f212840b-92fd-4d97-a6a7-2768a55483f7@collabora.com>
	 <CAEy9hNU2ox76TFKtdisqUHDxZ=3gPVBDBcjz_W8RtCpCpK5d7g@mail.gmail.com>
User-Agent: Evolution 3.56.2-0+deb13u1 
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_014813_042571_A83511D1 
X-CRM114-Status: GOOD (  10.38  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gRG8sIDIwMjYtMTEtMTIgYXQgMjM6NTQgLTA4MDAsIEFydW4gSXllbmdhciB3cm90ZToKPiA+
IExlIDEyLzExLzIwMjYgw6AgMTE6MTksIFBoaWxpcHAgWmFiZWwgYSDDqWNyaXQgOgo+ID4gPiBJ
ZiB2c2ktaW9tbXUgYWNjZXNzZXMgcmVxdWlyZSB0aGVzZSBidXMgaW50ZXJmYWNlIHJlc2V0cyB0
byBiZQo+ID4gPiBkZWFzc2VydGVkIGF0IGNlcnRhaW4gcG9pbnRzLCB3aHkgZG9lc24ndCBpdCBy
ZXF1ZXN0IGl0cyBvd24gcmVzZXQKPiA+ID4gY29udHJvbHM/Cj4gPiA+IAo+ID4gPiBEZXBlbmRp
bmcgb24gaW1wbGljaXQgYXNzdW1wdGlvbnMgbGlrZSBhbm90aGVyIGRyaXZlciBub3QgYXNzZXJ0
aW5nIGl0cwo+ID4gPiBleGNsdXNpdmVseSBjb250cm9sbGVkIHJlc2V0cyBzZWVtcyBmcmFnaWxl
Lgo+IAo+IFRoZSBBVjEgbm9kZSBsaXN0cyB0aGVzZSByZXNldHMgZm9yIGhhbnRybyBvbmx5Lgo+
IHZzaS1pb21tdSB3b3VsZCBuZWVkIHRoZW0gaW4gaXRzIG93biBub2RlIGFuZCBiaW5kaW5nLAoK
V291bGQgdGhhdCBtb3JlIGNvcnJlY3RseSBkZXNjcmliZSB0aGUgaGFyZHdhcmUgdGhvdWdoPwoK
PiBhbmQgYm90aCBkcml2ZXJzIHdvdWxkIGhhdmUgdG8gbW92ZSB0byBzaGFyZWQgcmVzZXQgY29u
dHJvbHMuCgpXb3JzZSwgc2hhcmVkIHJlc2V0IGNvbnRyb2xzIGRvbid0IHdvcmsgaWYgb25lIHBh
cnR5IHRlbXBvcmFyaWx5IG5lZWRzCmZ1bGwgY29udHJvbCwgZm9yIGV4YW1wbGUgdG8gaXNzdWUg
YSByZXNldCBwdWxzZSBhZnRlciB0aW1lb3V0LgpTbyB0aGlzIGxpa2VseSB3b3VsZCByZXF1aXJl
IGV4Y2x1c2l2ZSByZXNldCBjb250cm9scyB3aXRoCmFjcXVpcmUvcmVsZWFzZS4KCnJlZ2FyZHMK
UGhpbGlwcAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
