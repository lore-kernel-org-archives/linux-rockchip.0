Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E41C5C87FCA
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Jul 2025 11:43:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bx5K7z1SSpFs4NkxVbCc8RXa4+IFgPrWV9yVg6WZEXQ=; b=0TDuk9obeDpWJt
	ajsq27hKrjb01sFzYNJHl8v3dEEQDX6RmU8cXlm4JjjwlG4qF3qGdXE/BZsN+HG4RtQEF8lnmt3Er
	BNQ4zgureQGKlt4rbIGeRYOf83OKqPp+h1nL9saqGJ4R8KA8icYAKrUYYA6glmjspcZfN0ki3VNNv
	p0vPPL81RpRb4ONjwAohMWYUs9pCA54gzENsa9S/Opbfgs4CPHzSfxYIIDt/rOqe4t75ayo+xJdNE
	MkXPPTW0eIajTiTMWyeEdRHe14URzRCFzzaZvJHLvAE2cM8SRi4I7By7TN0YR4ZTVW/K30H9P0sII
	v1uz+SnL2fMNgQhAAaPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufGpI-00000009jz5-0tZ2;
	Fri, 25 Jul 2025 11:43:00 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufGIo-00000009fz4-3R47;
	Fri, 25 Jul 2025 11:09:28 +0000
Received: from ideasonboard.com (unknown [IPv6:2a00:6020:448c:6c00:42d3:9d3c:5909:7714])
	by perceval.ideasonboard.com (Postfix) with UTF8SMTPSA id 35B929CA;
	Fri, 25 Jul 2025 13:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1753441724;
	bh=DD9a8m0nnLeBvtdQn9yRpVCKbVg6ku18qIQ0e2NYX2I=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=Yfra4dTYCpYEurSs1VX9mxKAISYSLd25+1s+GwCAYMqTn76AoJYXfEbtmXtzuTeWZ
	 I7JOnIekZMKHCjgjn36xQWfr9TNV3VE/Su5J+WUnDWTCf0sZrJwW0ol0hkl3xupo4/
	 O2rufElKrQMkQGE/7HCl9k5ZYhEWdFEygTGdKlfY=
MIME-Version: 1.0
In-Reply-To: <m3h5z2vw12.fsf@t19.piap.pl>
References: <m3h5zbxkc6.fsf@t19.piap.pl> <m38qknx939.fsf@t19.piap.pl> <175308758352.3134829.9472501038683860006@localhost> <m31pq9y98z.fsf@t19.piap.pl> <175326599663.2811177.16620980968274114885@localhost> <m3h5z2vw12.fsf@t19.piap.pl>
Subject: Re: FYI: i.MX8MP ISP (RKISP1) MI registers corruption
From: Stefan Klug <stefan.klug@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Heiko Stuebner <heiko@sntech.de>, Paul Elder <paul.elder@ideasonboard.com>, Jacopo Mondi <jacopo.mondi@ideasonboard.com>, Ondrej Jirman <megi@xff.cz>, linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
To: Krzysztof =?utf-8?q?Ha=C5=82asa?= <khalasa@piap.pl>
Date: Fri, 25 Jul 2025 13:09:20 +0200
Message-ID: <175344176070.2811177.10693943493658922992@localhost>
User-Agent: alot/0.12.dev8+g2c003385c862.d20250602
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250725_040926_992741_F3F98C98 
X-CRM114-Status: UNSURE (   9.97  )
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

SGkgS3J6eXN6dG9mLAoKUXVvdGluZyBLcnp5c3p0b2YgSGHFgmFzYSAoMjAyNS0wNy0yNCAxMDoy
MTo0NSkKPiBIaSBTdGVmYW4sCj4gCj4gPiBKdXN0IGEgcXVpY2sgaGVhZHMgdXAuIEkgcmFuIHRo
ZSB0ZXN0ZXIgYW5kIHNvIGZhciBubyB1bmV4cGVjdGVkCj4gPiByZXN1bHRzLiBJJ2xsIHJ1biBp
dCBmcm9tIHRpbWUgdG8gdGltZSBhZnRlciBhIHJlYm9vdCB0byBzZWUgaWYgSSBldmVyCj4gPiBo
aXQgdGhhdCBjb25kaXRpb24uCj4gCj4gSXMgeW91ciBjYW1lcmEocykgY29ubmVjdGVkIHRvIHRo
ZSBmaXJzdCBDU0k/Cj4gSSBjYW5ub3QgcmVwcm9kdWNlIHRoZSBwcm9ibGVtIG9uIGNzaTAsIGl0
IHNlZW1zIG9ubHkgY3NpMSBpcwo+IGFmZmVjdGVkLiBJdCB3b3VsZCBiZSBjb25zaXN0ZW50IHdp
dGggTlhQJ3Mgd29ya2Fyb3VuZCBjb21taXQgdGV4dC4KClllcyBpbiB0aGF0IGNhc2UgaXQgaXMg
Y29ubmVjdGVkIHRvIGNzaTAuIEkgc29tZXRpbWVzIGhhdmUgY2FzZXMgd2hlcmUKb25lIGlzIGNv
bm5lY3RlZCB0byBjc2kxLiBJJ2xsIHJlcnVuIHRoZSB0ZXN0IHdoZW4gSSB1c2UgdGhhIGRldmlj
ZQphZ2Fpbi4KCkJlc3QgcmVnYXJkcywKU3RlZmFuCgo+IC0tIAo+IEtyenlzenRvZiAiQ2hyaXMi
IEhhxYJhc2EKPiAKPiBTaWXEhyBCYWRhd2N6YSDFgXVrYXNpZXdpY3oKPiBQcnplbXlzxYJvd3kg
SW5zdHl0dXQgQXV0b21hdHlraSBpIFBvbWlhcsOzdyBQSUFQCj4gQWwuIEplcm96b2xpbXNraWUg
MjAyLCAwMi00ODYgV2Fyc3phd2EKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
