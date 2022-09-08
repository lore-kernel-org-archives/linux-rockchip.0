Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DAEE9C38145
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Sep 2022 07:34:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tEE9jBGmY9JH46hkaKhhpDuM9yUlY2JHizn36j3IRh0=; b=ZmyAwDw8xdJVwy
	kqJntDghbj3HlDhhTP5sFjXLskzjINixjTazQOsTOkjZAcSXo53djuV+0b0Xq7QJJBswZV7Bkb+jK
	eTLnhTpnttNvy8Jn9eGDrCKmjVy2jpe9G3mvxxCmIt8620ma4tR/5hdHrAZLin5mKloi9Qeyzu24g
	pg829th79SquXmk2PRCj+muy8ubydZZWY8wRZk8ce0N3QA61MiGZsJIe0rnZZVM7YbAPQQVXHaU3O
	tmRyiAqDpgqNR/kV4Q5UKrszQE4G6mRz2y5jg/xTro31hO5Frjxm0kqmb1ALRTQmdFe4jmUlM0r1w
	TofC9prTUePU4GT6+dBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWC2s-000S4V-D6; Thu, 08 Sep 2022 07:33:54 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWC2h-000S2J-Kc; Thu, 08 Sep 2022 07:33:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 4C567B81D3E;
	Thu,  8 Sep 2022 07:33:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0589DC433D6;
	Thu,  8 Sep 2022 07:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662622421;
	bh=zU4UA0EL+l8ryg5lFDAVWvVzdN2D1vefXFi9G8tQKgo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Npja7rgVSXmte1O3JWvoBHzycpaRVd5tbV6afUB5vPk4N/8bYcazw4siSgEZ3kfx4
	 hrVU1MUBr9wn5lr8+wsy6fzXzNIV5vxyzpEbeEEYCN9DEVAXkO8i+3HmfvJPMYB5Lt
	 P5ZD8+vwciuSMkWu+JPNh3S58a+46Sk/5+auQh+LN+u78RaxcJzL+wIXhk2zMQN08P
	 inWniIU8tfzUOdjPHgbLv6drkLTGkaX7eEHMKLJWOvlrn90fVX0WIqYQPL0Kd1/QC/
	 MyIPX85IF2wF1ck9vjrsAWOpuYZboIrfN6ChgharPSpTnP8bTdoXyw+Zz4kyc8JlF9
	 eR7rgQXhTPZXQ==
Date: Thu, 8 Sep 2022 08:33:35 +0100
From: Lee Jones <lee@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	kernel@collabora.com
Subject: Re: [PATCH 4/6] dt-bindings: mfd: syscon: Add rk3588 QoS register
 compatible
Message-ID: <Yxmaz18lHVRFBDhU@google.com>
References: <20220831182629.79255-1-sebastian.reichel@collabora.com>
 <20220831182629.79255-5-sebastian.reichel@collabora.com>
 <4707456.3daJWjYHZt@diego>
 <YxdqRpysLtPRh02s@google.com>
 <20220906155027.qomo6pt4xo45mli3@mercury.elektranox.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220906155027.qomo6pt4xo45mli3@mercury.elektranox.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_003343_838828_97AE79FE 
X-CRM114-Status: GOOD (  19.49  )
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

T24gVHVlLCAwNiBTZXAgMjAyMiwgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cgo+IEhpIExlZSwK
PiAKPiBPbiBUdWUsIFNlcCAwNiwgMjAyMiBhdCAwNDo0MTo1OFBNICswMTAwLCBMZWUgSm9uZXMg
d3JvdGU6Cj4gPiBPbiBNb24sIDA1IFNlcCAyMDIyLCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiA+
ID4gSGkgU2ViYXN0aWFuLAo+ID4gPiAKPiA+ID4gQW0gTWl0dHdvY2gsIDMxLiBBdWd1c3QgMjAy
MiwgMjA6MjY6MjcgQ0VTVCBzY2hyaWViIFNlYmFzdGlhbiBSZWljaGVsOgo+ID4gPiA+IERvY3Vt
ZW50IHJrMzU4OCBjb21wYXRpYmxlIGZvciBRb1MgcmVnaXN0ZXJzLgo+ID4gPiA+IAo+ID4gPiA+
IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xs
YWJvcmEuY29tPgo+ID4gPiAKPiA+ID4gY2hhbmdlIGxvb2tzIGdvb2QsIGJ1dCB0aGlzIGlzIGEg
bWZkLWJpbmRpbmcuIFNvIHdoaWxlIHRoZSByZXN0IGlzIGZvciBtZQo+ID4gPiB0byBhcHBseSwg
Zm9yIHRoZSBtZmQgc3lzY29uIHdlIG5lZWQgZWl0aGVyIExlZSB0byBhcHBseSBpdCwgb3IgYW4g
QWNrCj4gPiA+IGZyb20gaGltIGZvciBtZSB0byBwaWNrIGl0IHVwLgo+ID4gCj4gPiBUaGlzIHBh
dGNoIGlzIG5vdCBpbiBteSBpbmJveC4KPiAKPiBZZXMsIEkgbWlzc2VkIENDJ2luZyB5b3UsIHNv
cnJ5Lgo+IAo+ID4gV291bGQgeW91IG1pbmQgcmVzZW5kaW5nIGl0IHRvIHRoaXMgaW5ib3ggcGxl
YXNlPwo+IAo+IEkgc2VudCBQQVRDSHYzIGZvciB0aGlzIHNlcmllcyBzb21lIG1pbnV0ZXMgYWdv
LiBZb3Ugc2hvdWxkIGhhdmUKPiByZWNlaXZlZCB0aGUgZnVsbCBzZXJpZXMgbm93Ogo+IAo+IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDIyMDkwNjE0MzgyNS4xOTkwODktNS1zZWJhc3Rp
YW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tLwoKSSBoYXZlIGl0IG5vdywgdGhhbmtzLgoKLS0gCkxl
ZSBKb25lcyBb5p2O55C85pavXQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
