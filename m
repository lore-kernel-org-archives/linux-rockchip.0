Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45C86CD5BA4
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 May 2026 09:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9DkkvBDFlnOZbV0eM6keowKiIBia1mQ4RUWr0nSzfQ0=; b=111wiPB/PBJwUp
	ykqcs1nlmcqzdeYDIvgdMe6l52uxzHxTF5q/DWZwoB6/s8oz95Y5/isfiULccrT5dF2Lw5JOpzK4X
	kv2s1gsAwNuMeGSWWV2bdOscx9YUf4xdaajgac2UoBXdjGl0vkaffz3v1R3Lq5W34Gnm8tASVr7wa
	13AGEV9g5jk98ehxC/8d/l6QKfWO+sIJi1emXKGUROtzg9nt489PW3I7ROviqhno6J8NnKBBFggh2
	RnkbkEffNcdjSGNXTNdrsbQLTl/eS2PUkfOvormMpHiV3Y9tK+Y1xjI68dTL3reu448oAXMlaxElB
	InEDpMmIpPuHBhDmOpUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPzQY-00000007GHG-1dpk;
	Thu, 21 May 2026 09:10:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPzQW-00000007GGO-0nNO;
	Thu, 21 May 2026 09:10:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=WPIPD1BGr2Dw7vziqVwt5eCDNK/gCvwcla72fV+D2yg=; b=n4AGgQv/3ZavNsA63rM333XACz
	fHeXMoXEM4eBFG1LP0Ys0BRitcArnY8IAgN2epsQB4cNX3/yCN97sX9MlCGTZOGqFcNSdibj3YZ5h
	6WViB5qjiers9mTvUqHimV+B86SbXZ9kOakAAg7ENnauDqFcmiGGW5Toh+XVJWJAwD+KkNkpP8nlQ
	E5CAWpVRuTPHJQp61w1J6AdHuXauVYWK4xtlPnnOjyFSzBcX0AubmQ/BWMJdiWO7+JF5GfWOKKS3l
	QZwplLMC9HPhmAE68RKTYe48TwJfceAqc+JkS708NXveJ1jSQOt5P+R/TF1h1xFATp5iG2iNpwHEE
	U4vNICHA==;
From: Heiko Stuebner <heiko@sntech.de>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
 Jonas Karlman <jonas@kwiboo.se>
Cc: linux-phy@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH v4 1/2] phy: rockchip: inno-hdmi: Add configure() and validate()
 ops
Date: Thu, 21 May 2026 11:10:45 +0200
Message-ID: <4136874.Dhsi8hcfAM@phil>
In-Reply-To: <20260518180722.2480799-2-jonas@kwiboo.se>
References: <20260518180722.2480799-1-jonas@kwiboo.se>
 <20260518180722.2480799-2-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_021048_230328_951A2C2A 
X-CRM114-Status: GOOD (  10.04  )
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

QW0gTW9udGFnLCAxOC4gTWFpIDIwMjYsIDIwOjA3OjIwIE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21t
ZXJ6ZWl0IHNjaHJpZWIgSm9uYXMgS2FybG1hbjoKPiBUaGUgY29tbWl0IDEwZWQzNGQ2ZWFhZiAo
InBoeTogQWRkIEhETUkgY29uZmlndXJhdGlvbiBvcHRpb25zIikKPiBpbnRyb2R1Y2VkIGEgd2F5
IGZvciBIRE1JIFBIWXMgdG8gYmUgY29uZmlndXJlZCB0aHJvdWdoIHRoZSBnZW5lcmljCj4gcGh5
X2NvbmZpZ3VyZSgpIGZ1bmN0aW9uLgo+IAo+IFRoaXMgZHJpdmVyIGRlcml2ZXMgdGhlIFRNRFMg
Y2hhcmFjdGVyIHJhdGUgZnJvbSB0aGUgcGl4ZWwgY2xvY2sgYW5kIHRoZQo+IFBIWSBidXMgd2lk
dGggc2V0dGluZy4gSG93ZXZlciwgbm8gaW4tdHJlZSBjb25zdW1lciBvZiB0aGlzIFBIWSBoYXMg
ZXZlcgo+IGNhbGxlZCBwaHlfc2V0X2J1c193aWR0aCgpIHRvIGNoYW5nZSB0aGUgVE1EUyBjaGFy
YWN0ZXIgcmF0ZSBhcyBvbmx5Cj4gOC1iaXQgUkdCIG91dHB1dCBpcyBzdXBwb3J0ZWQgYnkgdGhl
IEhETUkgZGlzcGxheSBkcml2ZXIuCj4gCj4gQWRkIGNvbmZpZ3VyZSgpIGFuZCB2YWxpZGF0ZSgp
IG9wcyB0byBhbGxvdyBjb25zdW1lcnMgdG8gY29uZmlndXJlIHRoZQo+IFRNRFMgY2hhcmFjdGVy
IHJhdGUgdXNpbmcgcGh5X2NvbmZpZ3VyZSgpLiBGYWxsYmFjayB0byB0aGUgZGVwcmVjYXRlZAo+
IHdheSBvZiB1c2luZyB0aGUgUEhZIGJ1cyB3aWR0aCB0byBjb25maWd1cmUgdGhlIFRNRFMgY2hh
cmFjdGVyIHJhdGUuCj4gCj4gQSB0eXBpY2FsIGNhbGwgY2hhaW4gZHVyaW5nIERSTSBtb2Rlc2V0
IG9uIGEgUkszMzI4IGRldmljZToKPiAKPiAgIGR3X2hkbWlfcm9ja2NoaXBfZW5jb2Rlcl9hdG9t
aWNfY2hlY2soKToKPiAgIC0gaW5ub19oZG1pX3BoeV92YWxpZGF0ZSgpOiBwaXhjbG9jayAxNDg1
MDAwMDAgdG1kc2Nsb2NrIDU5NDAwMDAwMAo+IAo+ICAgZHdfaGRtaV9yb2NrY2hpcF9lbmNvZGVy
X2F0b21pY19tb2RlX3NldCgpOgo+ICAgLSBpbm5vX2hkbWlfcGh5X2NvbmZpZ3VyZSgpOiBwaXhj
bG9jayAxNDg1MDAwMDAKPiAgICAgLSBpbm5vX2hkbWlfcGh5X3ZhbGlkYXRlKCk6IHBpeGNsb2Nr
IDE0ODUwMDAwMCB0bWRzY2xvY2sgNTk0MDAwMDAwCj4gCj4gICB2b3BfY3J0Y19hdG9taWNfZW5h
YmxlKCk6Cj4gICAtIGlubm9faGRtaV9waHlfcmszMzI4X2Nsa19zZXRfcmF0ZSgpOiByYXRlIDU5
NDAwMDAwMCB0bWRzY2xrIDU5NDAwMDAwMAo+ICAgICBpbm5vX2hkbWlfcGh5X3JrMzMyOF9jbGtf
c2V0X3JhdGUoKTogcGl4Y2xvY2sgNTk0MDAwMDAwIHRtZHNjbG9jayA1OTQwMDAwMDAKPiAgIC0g
aW5ub19oZG1pX3BoeV9yazMzMjhfY2xrX3JlY2FsY19yYXRlKCk6IHBpeGNsb2NrIDU5NDAwMDAw
MCB2Y28gNTk0MDAwMDAwCj4gCj4gICBkd19oZG1pX3JvY2tjaGlwX2VuY29kZXJfZW5hYmxlKCk6
Cj4gICAtIGlubm9faGRtaV9waHlfcG93ZXJfb24oKTogSW5ubyBIRE1JIFBIWSBQb3dlciBPbgo+
ICAgICAtIGlubm9faGRtaV9waHlfcmszMzI4X2Nsa19zZXRfcmF0ZSgpOiByYXRlIDU5NDAwMDAw
MCB0bWRzY2xrIDU5NDAwMDAwMAo+IAo+IFNpZ25lZC1vZmYtYnk6IEpvbmFzIEthcmxtYW4gPGpv
bmFzQGt3aWJvby5zZT4KClJldmlld2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNo
LmRlPgpUZXN0ZWQtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrb0BzbnRlY2guZGU+ICNyazMzMjgK
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
