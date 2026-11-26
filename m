Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456AB606A321
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Nov 2026 01:56:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=DdS8BEmH;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=MytotL2R
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=xBmz/xceVSLlcV7pziAWhexUBNMsa/T12sDNuTyKdCQ=; b=DdS8BEmHx4U/XRed6tFTn5x2+p
	bvKtyGtaqbkdP9JxSzShqEQuJRo5tkb6hVz1UPR0XXM2BPDYtCBuTXndUgL7eAYuzXSAXhbQSdihf
	56bzFYN5ee1bxLyw0awxsiY3XizMtLwwkU5vGQNYcoETeoruT6vAKyhh090ScMjy32uIMvDtv9Fpm
	SmGp7uH3WF43ZPa/+//ARFhmISUYuE4/Q3AKCpirYhhdUfIspsIfNTFJXot5eRDRmJgAcPZUP7J32
	Kwd0Wl1aS9ue1w18s1BL7uyGxaSXNjX81HtgqMXN5fC5TEI4YQJwRt9kDiItItwt4hgHZlxMi0U/m
	3XNcdZ9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWOil-0000000Bq0i-1xyT;
	Thu, 26 Nov 2026 01:56:23 +0000
Received: from mail-m12793.qiye.163.com ([115.236.127.93])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWOii-0000000BpzN-03xK;
	Thu, 26 Nov 2026 01:56:22 +0000
Received: from [127.0.0.1] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 5608936e4;
	Thu, 26 Nov 2026 09:51:03 +0800 (GMT+08:00)
Message-ID: <962182b2-6fa0-4aaa-a47a-f78339b5d89e@rock-chips.com>
Date: Thu, 26 Nov 2026 09:50:56 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: power: rockchip: Allow
 post-init-providers for domains
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Midgy Balon <midgy971@gmail.com>,
 Diederik de Haas <diederik@cknow-tech.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Freimut Diener <f.diener@pengutronix.de>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20261125-rock5t-regulator-deps-v1-0-6a3470ad1855@pengutronix.de>
 <20261125-rock5t-regulator-deps-v1-1-6a3470ad1855@pengutronix.de>
 <oJj2NKd1Svmsn320H8YWrg@sntech.de>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <oJj2NKd1Svmsn320H8YWrg@sntech.de>
X-HM-Tid: 0aa2158c924b03a7kunm45f8827fed3801
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZGk5JVh1ISk1MHhkYTU1LSlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=MytotL2RABnbZ7kXKpcgJJfOfMZqqLOZu0eLKudmYI89t89SNQugmLgZi/eApkau5sbmpblihOSnLYLQimqZHDIMdd4wPMbHyTHpARTdbV5fgHpZOR9tnHJIFVyVBzki9SsoXmlRXEG2JzPbDiNVmJxrfFXwNRl64BUOSFBbxpo=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=SfN9tjE1qMNBgqH3WtTiy9LIb6nxDFA36oFjP6dk48c=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_175620_288321_1D819822 
X-CRM114-Status: GOOD (  15.56  )
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
X-Spam-Status: No, score=-20.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

T24gMTEvMjYvMjAyNiA0OjM3IEFNLCBIZWlrbyBTdHVlYm5lciB3cm90ZToKPiBBbSBNaXR0d29j
aCwgMjUuIE5vdmVtYmVyIDIwMjYsIDExOjMzOjU3IE1pdHRlbGV1cm9ww6Rpc2NoZSBOb3JtYWx6
ZWl0IHNjaHJpZWIgRnJlaW11dCBEaWVuZXI6Cj4+IEEgUm9ja2NoaXAgcG93ZXIgZG9tYWluIGNh
biBoYXZlIGEgc3VwcGx5IHRoYXQgaXMgcmVxdWlyZWQgd2hlbgo+PiBwb3dlcmluZyBvbiB0aGUg
ZG9tYWluIGJ1dCBpcyBub3QgcmVxdWlyZWQgdG8gaW5pdGlhbGl6ZSB0aGUgcG93ZXIKPj4gY29u
dHJvbGxlci4KPj4KPj4gQWxsb3cgcG9zdC1pbml0LXByb3ZpZGVycyBvbiBwb3dlci1kb21haW4g
Y2hpbGQgbm9kZXMgdG8gZGVzY3JpYmUKPj4gc3VjaCBkZXBlbmRlbmNpZXMuCj4+Cj4+IFNpZ25l
ZC1vZmYtYnk6IEZyZWltdXQgRGllbmVyIDxmLmRpZW5lckBwZW5ndXRyb25peC5kZT4KPiAKPiBJ
bnRlcmVzdGluZyB0aGF0IHRoaXMgZXhpc3RzIHNpbmNlIDIwMjQgYW5kIHRoaXMgd2lsbCBiZSB0
aGUgZmlyc3QKPiB1c2VyIGl0IHNlZW1zLgo+IAo+IEkndmUgbG9va2VkIGF0IHRoZSBkdHNjaGVt
YSBmb3IgaXQsIGFuZCB0aGlzIGxvb2tzIHJlYWxseSBncmVhdCBmb3IgdGhpcy4KPiAKPiBSZXZp
ZXdlZC1ieTogSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KPiAKClRoYXQncyBleGFj
dGx5IHdoYXQgd2Ugd2FudC4gOikKCkkgZ3Vlc3MgaXQncyBiZWNhdXNlIHRoZSBrZXJuZWwgZG9l
c24ndCBpbmNsdWRlIHRoaXMgcGFydCBvZiB0aGUKYmluZGluZywgYW5kIGl0J3Mgb25seSBpbmNs
dWRlZCBpbiB0aGUgZHQtc2NoZW1hIHJlcG9zaXRvcnksIApzbyBub2JvZHkgbm90aWNlZCBpdD8K
Cmh0dHBzOi8vZ2l0aHViLmNvbS9kZXZpY2V0cmVlLW9yZy9kdC1zY2hlbWEvYmxvYi9tYWluL2R0
c2NoZW1hL3NjaGVtYXMvcG9zdC1pbml0LXByb3ZpZGVycy55YW1sCgpSZXZpZXdlZC1ieTogQ2hh
b3lpIENoZW4gPGNoYW95aS5jaGVuQHJvY2stY2hpcHMuY29tPgoKPiAKPj4gLS0tCj4+ICBEb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvcG93ZXIvcm9ja2NoaXAscG93ZXItY29udHJv
bGxlci55YW1sIHwgMyArKysKPj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKykKPj4K
Pj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9wb3dlci9y
b2NrY2hpcCxwb3dlci1jb250cm9sbGVyLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUv
YmluZGluZ3MvcG93ZXIvcm9ja2NoaXAscG93ZXItY29udHJvbGxlci55YW1sCj4+IGluZGV4IGI0
MWRiNTc2Zjk1ZGUuLmQyYjUxMmRkOTVmNjMgMTAwNjQ0Cj4+IC0tLSBhL0RvY3VtZW50YXRpb24v
ZGV2aWNldHJlZS9iaW5kaW5ncy9wb3dlci9yb2NrY2hpcCxwb3dlci1jb250cm9sbGVyLnlhbWwK
Pj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3Bvd2VyL3JvY2tjaGlw
LHBvd2VyLWNvbnRyb2xsZXIueWFtbAo+PiBAQCAtMTQ3LDYgKzE0Nyw5IEBAICRkZWZzOgo+PiAg
ICAgICAgICAgIEEgbnVtYmVyIG9mIHBoYW5kbGVzIHRvIHFvcyBibG9ja3Mgd2hpY2ggbmVlZCB0
byBiZSBzYXZlZCBhbmQgcmVzdG9yZWQKPj4gICAgICAgICAgICB3aGlsZSBwb3dlciBkb21haW4g
c3dpdGNoZXMgc3RhdGUuCj4+ICAKPj4gKyAgICAgIHBvc3QtaW5pdC1wcm92aWRlcnM6Cj4+ICsg
ICAgICAgICRyZWY6IC9zY2hlbWFzL3Bvc3QtaW5pdC1wcm92aWRlcnMueWFtbCMvcHJvcGVydGll
cy9wb3N0LWluaXQtcHJvdmlkZXJzCj4+ICsKPj4gICAgICAgICIjcG93ZXItZG9tYWluLWNlbGxz
IjoKPj4gICAgICAgICAgZW51bTogWzAsIDFdCj4+ICAgICAgICAgIGRlc2NyaXB0aW9uOgo+Pgo+
Pgo+IAoKLS0gCkJlc3QsIApDaGFveWkKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
