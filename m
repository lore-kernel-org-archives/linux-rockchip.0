Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F448606A327
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 09:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=eurH16HE;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=lI2iSTbL;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=IgsJAasd
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=fMa8nWRUA12IhKR8Mnn6jtbin1OcMV7JjJiUkajPKTg=; b=eurH16HE+P686C71hgm77remQO
	bwGde8UFhvZLT0uIAjotNr9mNHEKrWZZxxZEp3DQr6CGyuUMyPd4yZ7QlVnDfnxTe7FcQMNqyCT6F
	NFFZFw4ZcU7NJBhDTcu7jbGZOiOs0MpPdCglmiy3PddsBeJJMq9fs4qCgcuLbnYzsPm9znpn5qXwf
	cN2ucVt1Z5dXX1RRtsXx0JYYvz2n0DKp2/Rgf4S7F6GunCV7CvjoyKoGVUOIoRdq4dxu7FSFwqxqb
	OG3/wQPOIogQu/SzvolQv+0NdG1iUGVAOLO4+EZ2mqmiKzz42/y6TDcpTe/XAJJRNjUy6mLUAsiFZ
	3BKjsl6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQIV-00000002ho0-2yWl;
	Mon, 23 Nov 2026 09:25:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQH8-00000002hZy-05VO;
	Mon, 23 Nov 2026 09:23:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=9s01IOL/VfsGnGIqdOhwdDoI7uOEMrcArvSSD1ab7Bk=; b=lI2iSTbLirT7/Ue6rnM79IrN4W
	FvvoYH/c8TIb6CHMk9ok/JEwvzLuv+LWnaVf9iGdVNn7SayiSkzfp3FlSmIZvELwNor+JLsgMf43Q
	Fvv29Eve0XAZjxH2mrU3Vua66yh/2p+D9fh+ZU/IK08xF9W7OHgssTFUBd/otc+Q1qh4kjREzMuMS
	uzYg/pTpkasbY8+2vJsZy4UctCwjtZ3Opgdo8odc21bh+64KN5zk8ENXsjlnfvI89yce5rF+FKx3p
	/Zp+BYNmvl/6U+1tmt/P57cE51ZBSW8OcEPcLnU65ls8u1FJ0z49eKELIreqruOYrPAqRHYtjw/Wq
	8JFC2vBg==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQH0-00000002utc-0u3X;
	Mon, 23 Nov 2026 09:23:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=9s01IOL/VfsGnGIqdOhwdDoI7uOEMrcArvSSD1ab7Bk=; b=IgsJAasdLG82fnozH9SFHpbn7P
	rQN7p6u1BmpqmfCVrfFpMN/CPRVfnjghSvLdu5DNRY9Kx2aBOufpGSPkLjPPtS8/GHRKm5ZntGM8g
	7QHA1Qmo5knPoVIFe8WGG6mRangNs/0gnzzFBRfMZsieglXNU1VL1v2kg8xs1v0KMKNGz0x2jH5T+
	9z1t9OEv2OGKRFD7xefUZmA2NG2M1CyBskRYiKtcZtgaQ9IAdGDKrJpi1ExtuCcP3mBdx92lYzdhH
	f9j2eWYk03aHVkkpRG+lIT+z/rWGv6H4XR0xeKrr6U4ifh/4qj7JafF5dXRdxiZdtTaeQsnNPj2Rd
	HkQaL/Mg==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Xiangyu Zhu <1194781887@qq.com>, Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 0/3] clk: rockchip: rk3506: Add the SAI MCLK output gate clocks
Date: Mon, 23 Nov 2026 10:23:26 +0100
Message-ID: <pWqLoF7FQU26AfZrjX9Cfw@sntech.de>
In-Reply-To: <5176e5e2-72f3-4175-8b29-1dbc64c4e418@rock-chips.com>
References: <tencent_C2AD19EB4A6C91A75AD3DC4089CB875C4005@qq.com>
 <5176e5e2-72f3-4175-8b29-1dbc64c4e418@rock-chips.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_092344_233951_D2864AB0 
X-CRM114-Status: GOOD (  17.78  )
X-Spam-Score: -0.2 (/)
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

QW0gTW9udGFnLCAyMy4gTm92ZW1iZXIgMjAyNiwgMDI6NTE6MzIgTWl0dGVsZXVyb3DDpGlzY2hl
IE5vcm1hbHplaXQgc2NocmllYiBDaGFveWkgQ2hlbjoKPiBIaSBYaWFuZ3l1LAo+IAo+IE9uIDEx
LzIzLzIwMjYgODozOCBBTSwgWGlhbmd5dSBaaHUgd3JvdGU6Cj4gPiBUaGUgUkszNTA2IGhhcyBm
b3VyIFNBSSBNQ0xLIG91dHB1dCBnYXRlczogU0FJMCBhbmQgU0FJMSBhcmUgY29udHJvbGxlZAo+
ID4gYnkgYml0cyBpbiB0aGUgUE1VIEdSRiwgU0FJMiBhbmQgU0FJMyBieSBiaXRzIGluIHRoZSBz
eXN0ZW0gR1JGLiAgTW9kZWwKPiA+IHRoZW0gYXMgR1JGIGdhdGUgY2xvY2tzIHNvIHRoZSBTQUkg
TUNMSyBwaW4gZGlyZWN0aW9uIGNhbiBiZSBjb250cm9sbGVkCj4gPiB0aHJvdWdoIHRoZSBjbG9j
ayBmcmFtZXdvcmsuCj4gPiAKPiA+IFRoaXMgaXMgdjQgb2YgdGhlIGVhcmxpZXIgInJvY2tjaGlw
LGNsay1vdXQiIGJpbmRpbmcvZHJpdmVyIHN1Ym1pc3Npb24uCj4gPiBUaGF0IG9uZSBpbnRyb2R1
Y2VkIGEgZ2VuZXJpYyAicm9ja2NoaXAsY2xrLW91dCIgY29tcGF0aWJsZSBwbHVzIGEKPiA+IHN0
YW5kYWxvbmUgZHJpdmVyLCB3aGljaCBpcyBub3QgYWNjZXB0YWJsZTogdXBzdHJlYW0gYWxyZWFk
eSBoYXMgZ2VuZXJpYwo+ID4gR1JGIGdhdGUgc3VwcG9ydCAoYnJhbmNoX2dyZl9nYXRlIHRvZ2V0
aGVyIHdpdGggcm9ja2NoaXBfY2xrX2FkZF9ncmYoKSksCj4gPiBhbmQgUkszNTc2IGFuZCBSSzM1
ODggcmVnaXN0ZXIgdGhlaXIgU0FJL0kyUyBNQ0xLIG91dHB1dCBnYXRlcyB3aXRoIGl0Lgo+ID4g
Tm8gZGV2aWNlIHRyZWUgY2hhbmdlcyBhcmUgaW5jbHVkZWQuCj4gCj4gUGxlYXNlIHNsb3cgZG93
biB0aGUgcGFjZSBhdCB3aGljaCB5b3Ugc2VuZCBwYXRjaGVzIHNvIHRoYXQgcGVvcGxlIGhhdmUK
PiB0aW1lIHRvIHJlYWQgdGhlbS4gRG9uJ3Qgc2VuZCB5b3VyIHBhdGNoZXMgd2l0aGluIDI0IGhv
dXJzLgo+IAo+IEluIGFkZGl0aW9uLCB5b3VyIE1lc3NhZ2UtSUQgc2VlbXMgdG8gaGF2ZSBiZWVu
IG1vZGlmaWVkIGJ5IHlvdXIgZW1haWwKPiBwcm92aWRlcjoKPiAKPiBNZXNzYWdlLUlEOiA8dGVu
Y2VudF9DNEM3MTVDOTYyNjEzNTk3Rjk4MjEyOTM4Rjg5NDA2MzMzMDZAcXEuY29tPgo+IAo+IFBs
ZWFzZSB0cnkgdGhlIGRvd25ncmFkZSB0aGUgZ2l0IHZlcnNpb25bMF0geW91IHVzZSBmb3IKPiBn
aXQgc2VuZC1lbWFpbCwgb3Igc3dpdGNoIHRvIGEgZGlmZmVyZW50IGVtYWlsIHByb3ZpZGVyLgo+
IAo+IFswXTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzg3NzE3MTRCODQ4QzNBOUYrOWY2
NGEzMDktZmY3MC00NjZmLThkMjktMTU5NTAzMThiNzI4QGFpcmt5aS5jb20vCgp0ZW5jZW50IGlz
IG5vdG9yaW91cyBmb3IgbWFuZ2xpbmcgbWVzc2FnZS1pZHMgKGFkZGluZyB0aGF0ICJ0ZW5jZW50
XyIKaW4gZnJvbnQuIFRoaXMgd2lsbCBsaWtlbHkgaGFwcGVuIHdpdGggYWxsIGdpdCB2ZXJzaW9u
cy4KCkkgdGhpbmsgdGhlIGJlc3Qgd2F5IGZvcndhcmQgaXMgd2hhdCBtb3N0ICJxcSIgdXNlcnMg
ZG8gbm93YWRheXMKdG8gdXNlICJiNCIgYW5kIHVzZSBpdCB3ZWItc3VibWlzc2lvbiBvcHRpb24g
WzBdCgoKSGVpa28KClswXSBodHRwczovL2I0LmRvY3Mua2VybmVsLm9yZy9lbi9sYXRlc3QvY29u
dHJpYnV0b3Ivc2VuZC5odG1sCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
