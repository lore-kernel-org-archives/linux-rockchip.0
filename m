Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E36E4C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Nov 2022 17:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qtGflz67VqJ3HfJ3Qobn7POHvnciuZp7QqHrpvVs3WQ=; b=qYANek2e/W/iTy
	QzFMC6dOu+2P8MpjS2LZmUSb3dSp5XSexJ5jXZVR2G4iR/jVKj82g/xuUvEhUVT0UdDfqYoa+N8Tm
	CVFNFDhMVb26lPBe4JYIJPEcX+m/Y6MyHTt8S8sTZnMTAuAA/TKqgMQUBIsW846Y5xVedRLFKbRZz
	UJwFIfju0vPC5UFIoLqIhTVioGNl0ubPoI7+hFO3U7+qsiVc+NFKxpHxTyeUXEXyUvd1IicPuTThJ
	/2iUmsC7wyVusN6Fn14XHittdGloeFN3sDbrruUi5JSKrR6hprqx+jCqP5cMn324Wu+3XaFocfVoL
	carxwvimjmHlAibKDeeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otBm1-007t1L-JR; Thu, 10 Nov 2022 17:55:33 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1otBly-007syR-Tj
	for linux-rockchip@lists.infradead.org; Thu, 10 Nov 2022 17:55:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id E7CE6B82237;
	Thu, 10 Nov 2022 17:55:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D35F9C433C1;
	Thu, 10 Nov 2022 17:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668102924;
	bh=FxlrOm3k1oryHGS8jTyN1bWoydexZZtx5/ml5Tk8Jt8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=TtjHb72tvvGFPq90H3q0waSH9dvEw77XAIcmCKcnUj2jDkVPE84Qx9MFwtKJX3NEN
	 oxqrVCkZypwpJkByeVJuf+rqAazMZAEZ6umg3VEsNoqgMVjG9DdbVCCtxaXhVld4cC
	 +iXWH9VdIGoxHLdmhAXL5bkaQkMjeCx9BUBZlmimLNoE/Nuo73s26eWa7If3JNo+Lz
	 DO6uYHJKYObRMbhZn46MW3lHeFG3pVOvjbVO/EcthTPr7G9VFWFLyrPOsFdUUwL83o
	 +aqh5dVe24kwobybD5ZXp58tPB5aj6aVKhMpDIYW0LKV6DgVgm0cUq3AK7IJNSe4Ut
	 e4ujx305fK3PA==
From: Mark Brown <broonie@kernel.org>
To: alsa-devel@alsa-project.org, Cezary Rojewski <cezary.rojewski@intel.com>
Cc: pierre-louis.bossart@linux.intel.com, amadeuszx.slawinski@linux.intel.com, lgirdwood@gmail.com, tiwai@suse.com,
 trevor.wu@mediatek.com, hdegoede@redhat.com, jiaxin.yu@mediatek.com, Vijendar.Mukunda@amd.com, AjitKumar.Pandey@amd.com,
 Syed.SabaKareem@amd.com, linux-rockchip@lists.infradead.org, heiko@sntech.de
In-Reply-To: <20221031160227.2352630-1-cezary.rojewski@intel.com>
References: <20221031160227.2352630-1-cezary.rojewski@intel.com>
Subject: Re: [PATCH 0/7] ASoC: codecs: da7219: Do not export da7219_aad_jack_det()
Message-Id: <166810292154.959181.16010183842881956888.b4-ty@kernel.org>
Date: Thu, 10 Nov 2022 17:55:21 +0000
MIME-Version: 1.0
X-Mailer: b4 0.10.0-dev-fc921
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221110_095531_147632_0257B1F6 
X-CRM114-Status: GOOD (  12.68  )
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

T24gTW9uLCAzMSBPY3QgMjAyMiAxNzowMjoyMCArMDEwMCwgQ2V6YXJ5IFJvamV3c2tpIHdyb3Rl
Ogo+IEdvYWwgb2YgdGhlIHNlcmllcyBpcyB0byBkcm9wIGFueSB1c2FnZSBvZiB0aGUgaW50ZXJu
YWwgZnVuY3Rpb24uCj4gCj4gRmlyc3QsIHVwZGF0ZSBhbGwgdXNlcnMgdG8gdXRpbGl6ZSBjb21w
b25lbnQtPnNldF9qYWNrKCkgYW5kIHRoZW4gcmVtb3ZlCj4gdGhlIHJlbGV2YW50IEVYUE9SVF9T
WU1CT0xfR1BMLgo+IAo+IEFtYWRldXN6IFPFgmF3acWEc2tpICgyKToKPiAgIEFTb0M6IGNvZGVj
czogZGE3MjE5OiBJbnRyb2R1Y2Ugc2V0X2phY2soKSBjYWxsYmFjawo+ICAgQVNvQzogY29kZWNz
OiBkYTcyMTk6IERvIG5vdCBleHBvcnQgaW50ZXJuYWwgc3ltYm9scwo+IAo+IFsuLi5dCgpBcHBs
aWVkIHRvCgogICBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dp
dC9icm9vbmllL3NvdW5kLmdpdCBmb3ItbmV4dAoKVGhhbmtzIQoKWzEvN10gQVNvQzogY29kZWNz
OiBkYTcyMTk6IEludHJvZHVjZSBzZXRfamFjaygpIGNhbGxiYWNrCiAgICAgIGNvbW1pdDogNDM2
NmI3Y2E4OGYwNDIzN2FlNjU0ODQ2MTY3ZGI5OTNkYmUzNzM5NwpbMi83XSBBU29DOiBJbnRlbDog
RHJvcCBkYTcyMTlfYWFkX2phY2tfZGV0KCkgdXNhZ2UKICAgICAgY29tbWl0OiA5YTFmZTc5ZGFk
ZGJkYzU3MzA3YmQ3ZGQ5YTI5ZWYwNmFhN2I1ZjM0ClszLzddIEFTb0M6IG1lZGlhdGVrOiBEcm9w
IGRhNzIxOV9hYWRfamFja19kZXQoKSB1c2FnZQogICAgICBjb21taXQ6IDkyMmE1ZTVhNjM4OWRh
NDZiNTEwNzUzMDE0NDBkMDdlNTNjNjAwZWEKWzQvN10gQVNvQzogcm9ja2NoaXA6IERyb3AgZGE3
MjE5X2FhZF9qYWNrX2RldCgpIHVzYWdlCiAgICAgIGNvbW1pdDogZWJlNjJkZjdjNTBlNjNkMTFj
N2ZkZmJkZmY3MDE1ODNjZDRmMWYzYQpbNS83XSBBU29DOiBhbWQ6IERyb3AgZGE3MjE5X2FhZF9q
YWNrX2RldCgpIHVzYWdlCiAgICAgIGNvbW1pdDogYmE1NGRhMzJlYzY4MzY5MmVkNjlmZmJlZDVi
NGFmYjQxNGRlZjdkMgpbNi83XSBBU29DOiBJbnRlbDogYXZzOiBEcm9wIGRhNzIxOV9hYWRfamFj
a19kZXQoKSB1c2FnZQogICAgICBjb21taXQ6IDdhZjFjYTViYjVlM2MyZTQ3MmEwNDBmOGI1MjM4
MmNjYzU3YmIwMWEKWzcvN10gQVNvQzogY29kZWNzOiBkYTcyMTk6IERvIG5vdCBleHBvcnQgaW50
ZXJuYWwgc3ltYm9scwogICAgICBjb21taXQ6IGMwNWRmZjM4ZDIxNTU2YzUzMjAzMmY2MzMzMDI3
MWI5NjI2NWQ0NDgKCkFsbCBiZWluZyB3ZWxsIHRoaXMgbWVhbnMgdGhhdCBpdCB3aWxsIGJlIGlu
dGVncmF0ZWQgaW50byB0aGUgbGludXgtbmV4dAp0cmVlICh1c3VhbGx5IHNvbWV0aW1lIGluIHRo
ZSBuZXh0IDI0IGhvdXJzKSBhbmQgc2VudCB0byBMaW51cyBkdXJpbmcKdGhlIG5leHQgbWVyZ2Ug
d2luZG93IChvciBzb29uZXIgaWYgaXQgaXMgYSBidWcgZml4KSwgaG93ZXZlciBpZgpwcm9ibGVt
cyBhcmUgZGlzY292ZXJlZCB0aGVuIHRoZSBwYXRjaCBtYXkgYmUgZHJvcHBlZCBvciByZXZlcnRl
ZC4KCllvdSBtYXkgZ2V0IGZ1cnRoZXIgZS1tYWlscyByZXN1bHRpbmcgZnJvbSBhdXRvbWF0ZWQg
b3IgbWFudWFsIHRlc3RpbmcKYW5kIHJldmlldyBvZiB0aGUgdHJlZSwgcGxlYXNlIGVuZ2FnZSB3
aXRoIHBlb3BsZSByZXBvcnRpbmcgcHJvYmxlbXMgYW5kCnNlbmQgZm9sbG93dXAgcGF0Y2hlcyBh
ZGRyZXNzaW5nIGFueSBpc3N1ZXMgdGhhdCBhcmUgcmVwb3J0ZWQgaWYgbmVlZGVkLgoKSWYgYW55
IHVwZGF0ZXMgYXJlIHJlcXVpcmVkIG9yIHlvdSBhcmUgc3VibWl0dGluZyBmdXJ0aGVyIGNoYW5n
ZXMgdGhleQpzaG91bGQgYmUgc2VudCBhcyBpbmNyZW1lbnRhbCB1cGRhdGVzIGFnYWluc3QgY3Vy
cmVudCBnaXQsIGV4aXN0aW5nCnBhdGNoZXMgd2lsbCBub3QgYmUgcmVwbGFjZWQuCgpQbGVhc2Ug
YWRkIGFueSByZWxldmFudCBsaXN0cyBhbmQgbWFpbnRhaW5lcnMgdG8gdGhlIENDcyB3aGVuIHJl
cGx5aW5nCnRvIHRoaXMgbWFpbC4KClRoYW5rcywKTWFyawoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
