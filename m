Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6A71C624A4
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 08:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dCJ19BbXWW5C7sVBlzFeDje7j3p673QGocmVhJc5sIU=; b=v63HdZoIztl57A
	VCCUetlYQ3SM/B4B/VkdYSsJezFMdofUnZYRYs/f3oPTyIKsEAS3XEjt2/kyTM3M8emc3PfIR/5iv
	k8ocVg1LVLbzCig1vicP+B6sOTsrqS5ihCtYH0oE+W0Elw3rJP/V7+FyeGWr0aP5qY5Daky9GciFc
	xT9nzKtDCcS3CqCXa4+evYbF4jwn+BdvUHnNBzXJ/lmeh58zaPmadir1Hc+oEWwIToo9EtuzGi6PN
	oEVBAEeAnF/az6tI308s9/xyic7oofnX3NA67VbcM5rqNakl758jpJdhhO1PdFHwEmetTuDlgp+kA
	ypPppwXqSBqBEoHZ6mIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x22Sg-0000000Gk7R-2z9V;
	Thu, 03 Sep 2026 08:06:18 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x22Se-0000000Gk6S-2E4r;
	Thu, 03 Sep 2026 08:06:18 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id C61B91A1983;
	Thu,  3 Sep 2026 08:06:13 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 97DCF602B8;
	Thu,  3 Sep 2026 08:06:13 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 1907411C79B6F;
	Thu,  3 Sep 2026 10:06:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1788422772; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=TfEMK0a33NS2jaUvlauAHM7l7SnnnIidRASqMeaGC3E=;
	b=B3MGEt7o91rWgG+OB/jZ1KGIDkbGvXO5at21Ffhuhwy1BLzE7/eEvyCrcrZCz3B6PmJYwI
	c2Kbsow6FPwqH6sYJflF0L917opYPsrVJEsRKMdIc0/3e2Wv1Ze0laRume828yiEgzxFVN
	UBPjeyIziLfZJv7MggpfPWQIVKVKHgUxSlXqAL5vD2/yNgtNGXMvQ+IJJavF6S0cn4A6pT
	4xolGMxPMlR0m/S4/mpwcwUThfNmj1pykbu5gApMlog13rrejTdvNibxWewkwdVg/avr4Z
	mV9svE0JBMYT05Gj0Ay4yAPcbTPABP4VJyLxL8rZRhcelcHfjOubopJnlJClAA==
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Alexey Charkov <alchark@flipper.net>
Cc: Srinivas Kandagatla <srini@kernel.org>,  Rob Herring <robh@kernel.org>,
  Krzysztof Kozlowski <krzk+dt@kernel.org>,  Conor Dooley
 <conor+dt@kernel.org>,  Heiko Stuebner <heiko@sntech.de>,  Michael Walle
 <michael@walle.cc>,  Finley Xiao <finley.xiao@rock-chips.com>,  Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,  devicetree@vger.kernel.org,
  linux-kernel@vger.kernel.org,  linux-rockchip@lists.infradead.org,
  linux-arm-kernel@lists.infradead.org,  stable@vger.kernel.org
Subject: Re: [PATCH 1/4] nvmem: rockchip-otp: Serialize reads
In-Reply-To: <CAKTNdwF_wY8JSoQs=auK_9YNGT+hwQ=dAhcRVsf1E1CVvFs-XA@mail.gmail.com>
	(Alexey Charkov's message of "Wed, 2 Sep 2026 16:40:16 +0400")
References: <20260901-rk3576-otp-cpuid-mac-v1-0-ea9135270fc2@flipper.net>
	<20260901-rk3576-otp-cpuid-mac-v1-1-ea9135270fc2@flipper.net>
	<87ecfc81e9.fsf@bootlin.com>
	<CAKTNdwH5S3MxgR=5s2LXPquCFRXE-61LTTsZoHP9+YmXo_P4Ag@mail.gmail.com>
	<87y0dk6jpn.fsf@bootlin.com>
	<CAKTNdwF_wY8JSoQs=auK_9YNGT+hwQ=dAhcRVsf1E1CVvFs-XA@mail.gmail.com>
User-Agent: mu4e 1.12.12; emacs 30.2
Date: Thu, 03 Sep 2026 10:06:08 +0200
Message-ID: <87bjae7o9b.fsf@bootlin.com>
MIME-Version: 1.0
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_010616_703248_C6AB54FC 
X-CRM114-Status: UNSURE (   9.08  )
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

SGkgQWxleGV5LAoKPj4gSSBoYXZlbid0IHNlZW4gU2FzaGlrbydzIGFuc3dlciBidXQgaXNuJ3Qg
dGhlIGdvYWwgb2YgZ3VhcmRzIHRvIGp1c3QgYmUKPj4gcmVsZWFzZWQgd2hhdGV2ZXIgdGhlIGFj
dHVhbCByZXR1cm4gcGF0aD8KPgo+IEkgYmVsaWV2ZSBpdCdzIGJhc2VkIG9uIHRoZSBndWlkYW5j
ZSBpbiBbMV0uIEluIHRoaXMgcGFydGljdWxhciBjYXNlLAo+IGdvdG9zIGRvbid0IGp1bXAgb3V0
c2lkZSB0aGUgc2NvcGUgd2hlcmUgSSBwdXQgdGhlIGd1YXJkLCBzbyB0aGUKPiBzY29wZS1iYXNl
ZCBndWFyZCBpcyBzdGlsbCBjb3JyZWN0LiBIb3dldmVyLCBzdHlsaXN0aWNhbGx5LCBpdCBpcwo+
IGluZGVlZCB1bmNvbW1vbiB0byBzZWUgc2NvcGUtYmFzZWQgZ3VhcmRzIGluIGZ1bmN0aW9ucyB1
c2luZyBnb3Rvcy4KPiBFeHBsaWNpdCBsb2NrL3VubG9jayBpcyBlYXN5IGluIHRoaXMgY2FzZSwg
YW55d2F5Lgo+Cj4gWzFdIGh0dHBzOi8vZWxpeGlyLmJvb3RsaW4uY29tL2xpbnV4L3Y3LjIuMi9z
b3VyY2UvaW5jbHVkZS9saW51eC9jbGVhbnVwLmgjTDE0OC1MMTUzCgpJIG5ldmVyIHJlYWQgdGhh
dCBwYXJhZ3JhcGggYmVmb3JlLCBidXQgb2theSwgbWFrZXMgc2Vuc2UuCgpUaGFua3MsCk1pcXXD
qGwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
