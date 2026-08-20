Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1EB9C5DF87
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Aug 2026 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gtLJyTBDXPd08XhBWgac706sjbrTjS9MT5Rjrz0F4Ok=; b=dM84ovDHEnpnR5
	IQ1FKVlynwLsZSfZ87kF8Zs7rkpCPAfoeRNAl17zkYKMn640pdqmCYjVkOGtqXQgJWs9DXr3NLkvt
	72jcIRtL9yZg+GFAAI6wN42kbbatz1jaugPDwGLZpq4MYqOCCiDjz3dTMfas9W+OmA0hO+Ll/648t
	Qnfafy5NqGBzGZr/YRbL3RTKblgGQAqjwXiUs9msMg4Tx3XqQwLjgZdIUndzj7qElVM4aqr03H+OX
	qsIPInvDzqDcILm021k0GcpJw5gksPfU0scuiGLuNHwVo+cPLlr76fDJud2GTaojJyt2NdLLgUjlv
	DtihBjl3H/BeU/TJD0Kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx1ae-0000000BVOo-39KI;
	Thu, 20 Aug 2026 12:09:48 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wx1ad-0000000BVOH-15Hs;
	Thu, 20 Aug 2026 12:09:47 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 5490A434BE;
	Thu, 20 Aug 2026 12:09:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAA881F000E9;
	Thu, 20 Aug 2026 12:09:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1787227786;
	bh=CR7uEG8kWoQ77sl56nrrnB0VpPgSDT1k4hnsHugpPAc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To;
	b=d+lREly2OV2vPADA/rlyw+nzyKw8+0SXCG1FO7Xm6jUIiNXuWBBFpCpqGWUky33kf
	 PBpuZsW2wIFgoRY+6HmNy48iCVE3rvVdVsusxlBC6BbudernkEUhAuYBj/Ji3FHFHi
	 Al81XSbJMSwiPTY2mUHuCddpIP1CzBQ1v6elC1BnEUzbyqHeQntii1FYi0fFWlaFnR
	 K3KQ8nMxIpP09kr4g722md7ELY0QUxEfnPBOHeyZnvBzAqHuQzj3R1IbzjKZxgdr9o
	 Kd8ivVOFBw+FQsPs34gSfHSpMrYr26e2FX6scUSe2fFloYIT1SpSVSKm50jc2BYvRi
	 ufF6b4ddB54cA==
Message-ID: <b7fe0307-1e8b-4260-bfdb-8b29ea71c9ed@kernel.org>
Date: Thu, 20 Aug 2026 14:09:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/25] dt-bindings: reset: Add RV1106 CRU reset
 definitions
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Vladislav Leonov <vlad@zlab.su>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Simon Glass <sjg@chromium.org>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Rob Herring <robh@kernel.org>
References: <20260810121121.210040-1-vlad@zlab.su>
 <20260810121121.210040-2-vlad@zlab.su>
 <20260814-pristine-warthog-of-tolerance-4be5cc@quoll>
 <2506382.tdWV9SEqCh@diego>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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
In-Reply-To: <2506382.tdWV9SEqCh@diego>
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

T24gMjAvMDgvMjAyNiAxNDowMSwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gRnJlaXRhZywg
MTQuIEF1Z3VzdCAyMDI2LCAxMjoxNToyNiBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBz
Y2hyaWViIEtyenlzenRvZiBLb3psb3dza2k6Cj4+IE9uIE1vbiwgQXVnIDEwLCAyMDI2IGF0IDAz
OjEwOjUyUE0gKzAzMDAsIFZsYWRpc2xhdiBMZW9ub3Ygd3JvdGU6Cj4+PiBBZGQgdGhlIHJlc2V0
IElEIGRlZmluaXRpb25zIGZvciB0aGUgUm9ja2NoaXAgUlYxMTA2IGNsb2NrIGFuZAo+Pj4gcmVz
ZXQgdW5pdCAoQ1JVKSwgdG8gYmUgdXNlZCBieSB0aGUgcmVzZXQgY29udHJvbGxlciBkcml2ZXIg
YW5kCj4+PiBkZXZpY2UgdHJlZSBub2Rlcy4KPj4KPj4gVGhpcyBnb2VzIHdpdGggdGhlIGJpbmRp
bmcvY29tcGF0aWJsZSB1c2luZyBpdCwgd2hlcmUgaXMgaXQ/Cj4gCj4gaXQgd2FzIG5vdCBwYXJ0
IG9mIHRoZSBpbml0aWFsIENSVSBzdWJtaXNzaW9uLCBzbyB0aGUgYmluZGluZyBpcyBhdAo+IGh0
dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L25leHQvbGludXgt
bmV4dC5naXQvY29tbWl0Lz9pZD03MTNlNGQ1NGZmNzM2OWI4MTE4ZjkxZTk4YTAwODIyMGQ2MGIy
YTVmCj4gCj4gc2xhdGVkIGZvciB0aGUgbWVyZ2Utd2luZG93LgoKQ29tbWl0IG1zZyBzaG91bGQg
YnJpZWZseSBleHBsYWluIHRoYXQgKGUuZy4gImFkZCBtaXNzaW5nIiBvciB3aGF0ZXZlcgp3b3Jk
aW5nIGVmZmljaWVudGx5IGNsYXJpZmllcyBub24tc3RhbmRhcmQgYXBwcm9hY2gpLgoKQmVzdCBy
ZWdhcmRzLApLcnp5c3p0b2YKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
