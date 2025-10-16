Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7ACECCCD199
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Oct 2025 16:06:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Any99E0AwDesLYysi1M1501Qtj9+0AXCHfG7XKDSXlA=; b=WgRILNJezVcaMl
	uxUIVIohKAgS07pZvfq/MpaJ8ZYb1U6Aiz6KC9Q096JMDedep9ZT9YQHch6GELOymTgnGFwcocK3r
	/g+6qhTd7MxMNmqcQiAcbTP5dZtefRzU06DCEsa8WD51wrfs+tV326Cu314nSZ+LU2evp7ly5OnNh
	0JNubL+KbScC1zxONl2RTyK8BDAAGIVBBzszqJEMy5d2vFdja6WX4MuuJAhc0tN7NN6nPMQBDZJIR
	RpuXUZ0g0p4HRm4H51LR6091J5vFksspRpmiquca3CIn6y1WPU8yb8K/P0kB7mwFGx50ymeIj2Zgp
	vpTFJbRnWByh34U5JBPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9QUy-00000005MCz-3VNA;
	Thu, 16 Oct 2025 16:06:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9QUw-00000005MBt-0n0H;
	Thu, 16 Oct 2025 16:06:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=0UZ7TBAFRv9QMlrqmMJIgxKTa7jBW8b6E1/jAgXuGlo=; b=oH1YeVeSPwxjgB8BReleokluBW
	L/YnmwycCEwtNdpHcaBTwVY3Tm9/XPKUrNPDFuG3WIrNi/M4Uuw+n0u2lbe46vaUffCTxRLOXma0I
	5NXXmX3pmYQz5/iJG1ydP6SMjzlcVAVBA+padkoun6JAu0J18FI51rgrDutbd2RsxuKoMGVK476nw
	pOm9ONwUz6l3KAwHZpkS7sNnH0hT7hwhRkVwVR3qi6uPB/f254hK9NIpR5Cr1fhXoxx0XUE52HcPj
	FMAdlGqWvmyCNl1BJ1kGJqHrJsMniM79TuJSp8QIWXdUSCXU13/bRTGViV2aggt03Npm8pEIYIPcj
	q4CY1Emg==;
Received: from i53875b4f.versanet.de ([83.135.91.79] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1v9QUt-0001JG-IO; Thu, 16 Oct 2025 18:06:35 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Finley Xiao <finley.xiao@rock-chips.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 ulf.hansson@linaro.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 finley.xiao@rock-chips.com, zhangqing@rock-chips.com,
 sugar.zhang@rock-chips.com, huangtao@rock-chips.com
Subject: Re: [PATCH v1 1/2] dt-bindings: power: rockchip: Add support for RV1126B
Date: Thu, 16 Oct 2025 18:06:34 +0200
Message-ID: <24800526.ouqheUzb2q@diego>
In-Reply-To: <20251016134103.294636-2-finley.xiao@rock-chips.com>
References: <20251016134103.294636-1-finley.xiao@rock-chips.com>
 <20251016134103.294636-2-finley.xiao@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251016_090638_223988_D6EE904B 
X-CRM114-Status: GOOD (  13.22  )
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

SGkgRmlubGV5LAoKQW0gRG9ubmVyc3RhZywgMTYuIE9rdG9iZXIgMjAyNSwgMTU6NDE6MDIgTWl0
dGVsZXVyb3DDpGlzY2hlIFNvbW1lcnplaXQgc2NocmllYiBGaW5sZXkgWGlhbzoKPiBBZGQgdGhl
IGNvbXBhdGlibGUgc3RyaW5nIGFuZCBwb3dlciBkb21haW4gSURzIGZvciBSVjExMjZCIFNvQy4K
PiAKPiBzaWduZWQtb2ZmLWJ5OiBGaW5sZXkgWGlhbyA8ZmlubGV5LnhpYW9Acm9jay1jaGlwcy5j
b20+Cj4gLS0tCgpbLi4uXQoKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kdC1iaW5kaW5ncy9wb3dl
ci9yb2NrY2hpcCxydjExMjZiLXBvd2VyLmggYi9pbmNsdWRlL2R0LWJpbmRpbmdzL3Bvd2VyL3Jv
Y2tjaGlwLHJ2MTEyNmItcG93ZXIuaAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXggMDAw
MDAwMDAwMDAwLi4wYTQxOGYxNmU0ZWEKPiAtLS0gL2Rldi9udWxsCj4gKysrIGIvaW5jbHVkZS9k
dC1iaW5kaW5ncy9wb3dlci9yb2NrY2hpcCxydjExMjZiLXBvd2VyLmgKPiBAQCAtMCwwICsxLDE3
IEBACj4gKy8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiAoR1BMLTIuMCsgT1IgTUlUKSAqLwo+
ICsvKgo+ICsgKiBDb3B5cmlnaHQgKGMpIDIwMjQgUm9ja2NoaXAgRWxlY3Ryb25pY3MgQ28uLCBM
dGQuCj4gKyAqIEF1dGhvcjogRmlubGV5IFhpYW8gPGZpbmxleS54aWFvQHJvY2stY2hpcHMuY29t
Pgo+ICsgKi8KPiArCj4gKyNpZm5kZWYgX19EVF9CSU5ESU5HU19QT1dFUl9SVjExMjZCX1BPV0VS
X0hfXwo+ICsjZGVmaW5lIF9fRFRfQklORElOR1NfUE9XRVJfUlYxMTI2Ql9QT1dFUl9IX18KPiAr
Cj4gKy8qIFZEX05QVSAqLwo+ICsjZGVmaW5lIFJWMTEyNkJfUERfTlBVCQkwCj4gKwo+ICsvKiBW
RF9MT0dJQyAqLwo+ICsjZGVmaW5lIFJWMTEyNkJfUERfVkRPCQkxCj4gKyNkZWZpbmUgUlYxMTI2
Ql9QRF9BSVNQCQkyCgppcyB0aGlzIG1pc3NpbmcgYSAybmQgImkiID8gLi4uIFRoZSBUUk0gY2Fs
bHMgdGhpcyBhaWlzcCAoZm9yIGFpLWlzcCBtYXliZT8pCgpIZWlrbwoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
