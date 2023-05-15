Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 642D7C7EE23
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 May 2023 16:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wu75xuC5vkA3zOc3dUxxLTjZrnI1h8Kf/crl41A2lQc=; b=1516BozJYBdLVb
	XFaE+TWU0+CNl1HfgFvchjtVpWBYQKYB88qEpz/1sHPtBiU31Ctk1ilRLLZd3rhtcYyLOzQVWdQWb
	tS2YISXnyxUi2mZxpvmewGmGYgyMP/byWOND1oJChO97ggMNlRNMo6l18BsVe064RX0MZujAJA1Il
	A8v/VrBi48Kw7LuBFF/yzY4QTYaljcHNoCqkqZw4Tjwu7JiXnAYXMhXMSk80WFxh7pMUedMnFQSfn
	wyul0ZkjQdNygVMQtuQMM7MIFcXtEbLjwJyk4+WRSat3Vu//HtIXbvrbCyPK4n9EHLwjYerqldLR2
	2gT4KNCTDydPwgcbQYqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pybGL-002naV-2p;
	Mon, 15 May 2023 16:41:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pybGK-002nZx-1Q
	for linux-rockchip@bombadil.infradead.org;
	Mon, 15 May 2023 16:41:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=TrTsvRitvkD3mJ8dp3Qj542yKNp3Vs5GfTtThP4CNe0=; b=hot5e9fLE0VVPEJIgoMvWgRt1H
	XRnnc2wEivxL2SLDfMzl7NFN/b700M2JVgA2N43S5O7SOyqKY9GgtVLeGzST712syLWhcLVH4ZkWQ
	/awpDQdV5XSEsM6+3j45co+/zEr6+OypRE26JnD3JVrb7Aw5RQEGFvLZJ/xT0I3rr1JDTPNc+SWLr
	pKvh0Dud1g1jUKAxmctFveJHDe7rC+egtAtQ+8bDmrD9Q6Go3Cpkjyv7585BVwppp8eHhyH+g01AH
	MKJ43fzzk1vT7BbAkUwKiEpO7CKRVOpSLHmYjI1UtoPtmx0WSjZqjSKMINzYdCVxjdTbS1iDi3Z6B
	OYX2CxAQ==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pyZzV-00BVBw-35
	for linux-rockchip@lists.infradead.org;
	Mon, 15 May 2023 15:20:04 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8F6C361EF9;
	Mon, 15 May 2023 15:19:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC257C4339B;
	Mon, 15 May 2023 15:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684163989;
	bh=+9CdGMrVSR4XNVZr7m66okVDKTErq2sdbihqtqeXtqQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Bkk70pAupN616UTiABdQmSL8eEnURH2Zpy/aQe6912TLAn+hJvs+DKPRMlio3TBQL
	 ewNxx4nBF2/BpfIciJVkojY6qxCmcmRUkQtlYNBnDShs5ZGRqItsOQl0kkUJ5BrhcA
	 wXRcpFi448WCHlpdBL7HnqHaTAG3Y1ZkfIZBW45BlR1IlN6Bz4vAFgioX9Y48APNPp
	 SiMCXyfzoSLaq1escDa7ZCvs3Xqu2NzLkJHAFngaJUw3GE27A4MoTc27E9UWHaFjL0
	 hIljqf+eW8caVSqcNlAp/kqcNxiYcRKirDdfK1UgkgXO3ZMjRBA008FijGsXyDjwRI
	 2qiUfcSQhEwGw==
Date: Mon, 15 May 2023 16:19:42 +0100
From: Lee Jones <lee@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alessandro Zummo <a.zummo@towertech.it>,
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, kernel@collabora.com,
	Diederik de Haas <didi.debian@cknow.org>,
	Vincent Legoll <vincent.legoll@gmail.com>
Subject: Re: [PATCH v8 06/14] mfd: rk8xx-i2c: use device_get_match_data
Message-ID: <20230515151942.GR10825@google.com>
References: <20230504173618.142075-1-sebastian.reichel@collabora.com>
 <20230504173618.142075-7-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230504173618.142075-7-sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230515_162002_226609_3B0E01DF 
X-CRM114-Status: GOOD (  12.95  )
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

T24gVGh1LCAwNCBNYXkgMjAyMywgU2ViYXN0aWFuIFJlaWNoZWwgd3JvdGU6Cgo+IFNpbXBsaWZ5
IHRoZSBkZXZpY2UgaWRlbnRpZmljYXRpb24gbG9naWMgYnkgc3VwcGx5aW5nIHRoZSByZWxldmFu
dAo+IGluZm9ybWF0aW9uIHZpYSBvZl9tYXRjaF9kYXRhLiBUaGlzIGFsc28gcmVtb3ZlcyB0aGUg
ZGV2X2luZm8oKQo+IHByaW50aW5nIHRoZSBjaGlwIHZlcnNpb24sIHNpbmNlIHRoYXQncyBzdXBw
bGllZCBieSB0aGUgbWF0Y2ggZGF0YQo+IG5vdy4KPiAKPiBEdWUgdG8gbGFjayBvZiBoYXJkd2Fy
ZSB0aGlzIGNoYW5nZSBpcyBjb21waWxlLXRlc3RlZCBvbmx5Lgo+IAo+IEFja2VkLWZvci1NRkQt
Ynk6IExlZSBKb25lcyA8bGVlQGtlcm5lbC5vcmc+Cj4gVGVzdGVkLWJ5OiBEaWVkZXJpayBkZSBI
YWFzIDxkaWRpLmRlYmlhbkBja25vdy5vcmc+ICMgUm9jazY0LCBRdWFydHo2NCBNb2RlbCBBICsg
Qgo+IFRlc3RlZC1ieTogVmluY2VudCBMZWdvbGwgPHZpbmNlbnQubGVnb2xsQGdtYWlsLmNvbT4g
IyBQaW5lNjQgUXVhcnR6UHJvNjQKPiBTaWduZWQtb2ZmLWJ5OiBTZWJhc3RpYW4gUmVpY2hlbCA8
c2ViYXN0aWFuLnJlaWNoZWxAY29sbGFib3JhLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9tZmQvcms4
eHgtY29yZS5jIHwgIDIgLQo+ICBkcml2ZXJzL21mZC9yazh4eC1pMmMuYyAgfCA4OSArKysrKysr
KysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gIDIgZmlsZXMgY2hhbmdlZCwgMzcg
aW5zZXJ0aW9ucygrKSwgNTQgZGVsZXRpb25zKC0pCgpBcHBsaWVkLCB0aGFua3MKCi0tIApMZWUg
Sm9uZXMgW+adjueQvOaWr10KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
