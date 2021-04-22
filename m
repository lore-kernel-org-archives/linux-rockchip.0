Return-Path: <SRS0=DOys=JT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5947C433ED
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Apr 2021 17:23:57 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F19F1613E1
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Apr 2021 17:23:56 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org F19F1613E1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Date:Cc:To:From:
	Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YTCVlF430DSTlXXU6ZJM1bvwCPaTX8r++lNwAJsxeqY=; b=Q2MPqkkfW1VPU1XgFD8YLFjXj
	+x0wfJW72x350Oj+w6XYdUY6/DSS35bb9ufxVtm/pjleh3Cyd7cmMeQuXQT68MKjxe0590ysL6VWF
	9FVbybYWaEuiltJ39OL5+R+sgldwOHyg0YRWqmg/EXUdO2k/ybbbxZTQzF4/QPR7cDKgBOI0Lpg5L
	8vHePh8GZ0pnL3O3FBwn37+eKU9yL92Iib14qn0obwV7AThsRiSlBMGsiDfSGGM7F0E+uwbDM9W+f
	DSmH0niBpEhx275O6x4LLH7aHMmoy7KuapLR5QAj2bAoFfGFIDoOD5tkUivF0KkfBqzhlebpe1J8C
	6MH1xmb4w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZd3M-00HAxB-Vo; Thu, 22 Apr 2021 17:23:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZd3A-00HAwU-2C; Thu, 22 Apr 2021 17:23:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:
 Message-ID:Sender:Reply-To:Content-ID:Content-Description;
 bh=nzfZ8gMsrY+NNX5qBYPTsLDvEQubcJETHTIuR8PH0xY=; b=2JAXmE4mmSrxXjm/ro7nyc3+dj
 X/ZTKk4JtXMDwF7ho3+V74EVKhrJ1jtKeXz45iJfsk08+oeayXK601Uwh6t9xpRG2JyHnHryCbS18
 s7YtIcIXK++BDNPwFnL4jJ7srY26HgPe783M+m9ObfeTXjaWz3yuJV7izADW0g8z1OdewGhknBk0a
 lGvBwqpU73QTZk2pIT76dpFMJsYlAN61E7BNtMz267DZ3RFMqeOeYKtnTMwafEoP9RMu1bWo40EPF
 fgPlaUhqZ9KnW566+2RqPFEOBRL52Ig5u8nw/5uzx3mEqma7Sn253QByDXoxNiHHdM+Whyq3nLWkE
 mY0pRxXA==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZd32-00DssX-Li; Thu, 22 Apr 2021 17:23:34 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 3EF8B1F4361F
Message-ID: <7d1f197d868ae84a8bc475f1f48178d2737518c1.camel@collabora.com>
Subject: Re: [PATCH v1 4/5] arm64: dts: rockchip: add core dtsi for RK3568 SoC
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>, cl@rock-chips.com
Cc: robh+dt@kernel.org, jagan@amarulasolutions.com, wens@csie.org, 
 uwe@kleine-koenig.org, mail@david-bauer.net, jbx6244@gmail.com, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, jensenhuang@friendlyarm.com, 
 michael@amarulasolutions.com, cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org,  linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com, 
 shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com,  huangtao@rock-chips.com,
 kever.yang@rock-chips.com
Date: Thu, 22 Apr 2021 14:23:15 -0300
In-Reply-To: <11131098.F0gNSz5aLb@diego>
References: <20210421065921.23917-1-cl@rock-chips.com>
 <20210421065921.23917-5-cl@rock-chips.com> <11131098.F0gNSz5aLb@diego>
Organization: Collabora
User-Agent: Evolution 3.38.2-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210422_102328_863373_B974F533 
X-CRM114-Status: GOOD (  22.53  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

SGkgTGlhbmcsCgpJJ20gdmVyeSBpbXByZXNzZWQgUm9ja2NoaXAgaXMgcHVzaGluZyBwYXRjaGVz
IHNvIGVhcmx5LCB0aGFua3MgYSBsb3QhCgpTZWUgYmVsb3cuCgpPbiBXZWQsIDIwMjEtMDQtMjEg
YXQgMTE6MTMgKzAyMDAsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEhpIExpYW5nLAo+IAo+IEFt
IE1pdHR3b2NoLCAyMS4gQXByaWwgMjAyMSwgMDg6NTk6MjAgQ0VTVCBzY2hyaWViIGNsQHJvY2st
Y2hpcHMuY29tOgo+ID4gRnJvbTogTGlhbmcgQ2hlbiA8Y2xAcm9jay1jaGlwcy5jb20+Cj4gPiAK
PiA+IFJLMzU2OCBpcyBhIGhpZ2gtcGVyZm9ybWFuY2UgYW5kIGxvdyBwb3dlciBxdWFkLWNvcmUg
YXBwbGljYXRpb24gcHJvY2Vzc29yCj4gPiBkZXNpZ25lZCBmb3IgcGVyc29uYWwgbW9iaWxlIGlu
dGVybmV0IGRldmljZSBhbmQgQUlvVCBlcXVpcG1lbnRzLgo+ID4gCj4gPiBUaGlzIHBhdGNoIGFk
ZCBiYXNpYyBjb3JlIGR0c2kgZmlsZSBmb3IgaXQuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IExp
YW5nIENoZW4gPGNsQHJvY2stY2hpcHMuY29tPgo+IAo+IHRoaXMgaXMgYSBmaXJzdCByb3VuZCBv
ZiBiYXNpYyBzdHVmZiA6LSkgLgo+IAo+IEZpcnN0IG9mIGFsbCwgSSByZWFsbHkgbGlrZSB0aGUg
bW92ZSBvZiBtb3ZpbmcgdGhlIHByZXR0eSBzdGFuZGFyZGl6ZWQKPiBwaW5jb25maWcgZW50cmll
cyB0byB0aGUgcm9ja2NoaXAtcGluY29uZi5kdHNpIC4KPiAKPiAoMSkgQnV0IHBsZWFzZSBtb3Zl
IHRoaXMgaW50byBhIHNlcGFyYXRlIHBhdGNoIHRvIG1ha2UgdGhhdCBtb3JlIHZpc2libGUKPiBh
bmQgbWF5YmUgZXZlbiBjb252ZXJ0IF9zb21lXyBvciBhbGwgYXJtNjQgUm9ja2NoaXAgc29jcyB0
byB1c2UgdGhhdAo+IGFzIHdlbGwKPiAKPiAiYXJtNjQ6IGR0czogcm9ja2NoaXA6IGFkZCBnZW5l
cmljIHBpbmNvbmZpZyBzZXR0aW5ncyB1c2VkIGJ5IG1vc3QgUm9ja2NoaXAgc29jcwo+IAo+IFRo
ZSBwaW5jb25maWcgc2V0dGluZ3MgZm9yIFJvY2tjaGlwIFNvQ3MgYXJlIHByZXR0eSBzaW1pbGFy
IG9uIGFsbCBzb2NzLAo+IHNvIG1vdmUgdGhlbSB0byBhIHNoYXJlZCBkdHNpIHRvIGJlIGluY2x1
ZGVkLCBpbnN0ZWFkIG9mIHJlZGVmaW5pbmcgdGhlbQo+IGZvciBlYWNoIHNvYyIKPiAKPiAoMikg
SSBhbHNvIGxpa2UgdGhlIGV4dGVybmFsIHJrMzU2OC1waW5jdHJsIGFwcHJvYWNoIHdpdGggdGhl
IGR0c2kgZ2V0dGluZwo+IGF1dG8tZ2VuZXJhdGVkLiBUaGlzIHdpbGwgcHJvYmFibHkgaGVscCB1
cyBpbiBrZWVwaW5nIHBpbmN0cmwgc2V0dGluZ3MKPiBzeW5jaHJvbm91cyBiZXR3ZWVuIG1haW5s
aW5lIGFuZCB0aGUgdmVuZG9yIGtlcm5lbC4KPiAKPiAoMykgRnJvbSBteSBiYXNpYyB1bmRlcnN0
YW5kaW5nIHRoZSByazM1NjggaXMgYmFzaWNhbGx5IGEgcmszNTY2ICsgbW9yZQo+IHBlcmlwaGVy
YWxzLCBzbyBpZGVhbGx5IHRoZXkgd291bGQgc2hhcmUgdGhlIGJhc2ljIG9uZXMgaW4gYSByazM1
NjYuZHRzaQo+IHdoaWNoIHRoZSByazM1NjguZHRzaSB0aGVuIGNvdWxkIGluY2x1ZGUgYW5kIGV4
dGVuZCB3aXRoIGl0cyBhZGRpdGlvbmFsCj4gcGVyaXBoZXJhbHMuCj4gCj4gV2l0aCBhdCBsZWFz
dCB0aGUgcGluZTY0IGJvYXJkcyBiZWluZyBiYXNlZCBvbiB0aGUgcmszNTY2LCB0aGVyZSBwcm9i
YWJseQo+IHdpbGwgYmUgcXVpdGUgYSBtYWlubGluZSB1c2Ugb2YgaXQgYXMgd2VsbC4KPiAKPiBP
ciBpcyB0aGVyZSBzb21ldGhpbmcgdGhhdCB3b3VsZCBwcmV2ZW50IHRoaXM/Cj4gCgpJIGFncmVl
IHdpdGggaGF2aW5nIGEgcmszNTY2LmR0c2ksIGFuZCByazM1NjguZHRzaSBvbiB0b3AsIGluc3Rl
YWQgb2YgdGhlCm90aGVyIHdheSBhcm91bmQuIFdlIGhhdmUgc29tZSBSSzM1NjYgYm9hcmRzIGhl
cmUsIHNvIHdlIGNhbiBzdXJlbHkgdGVzdAp0aGUgUkszNTY2LmR0c2kgcGF0Y2hlcyB2ZXJ5IHF1
aWNrbHkuCgpBbHNvLCBpdCdzIGZpbmUgaWYgeW91IHdhbnQgdG8gc2VuZCB2MiB3aXRoIGp1c3Qg
dGhlc2UgbWluaW1hbCBwZXJpcGhlcmFscy4KSG93ZXZlciwgSSB0aGluayB5b3UgY291bGQgaW5j
bHVkZSBHTUFDIGFuZCBUUy1BREM6CgpodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1yb2Nr
Y2hpcC8zMWMyZTUzMS05NmQwLWExYzEtNjQ0Yy0yOGM2MGViNDBjZjRAZ21haWwuY29tL1QvI3QK
aHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgtcm9ja2NoaXAvMjAyMTA0MjEyMDM0MDkuNDA3
MTctMS1lemVxdWllbEBjb2xsYWJvcmEuY29tL1QvI3QKClRoZXNlIHNob3VsZCB3b3JrIHJpZ2h0
IG91dCBvZiB0aGUgYm94IQoKVGhhbmtzIQpFemVxdWllbAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
