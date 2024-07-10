Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DA9CC3DA41
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Jul 2024 23:21:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9361xH+9HBo9WCGnOXrpdoZw+lpkKK6DOY6kzZdb6wc=; b=v0cJoHghM+cvVb
	O/6+mPnGY4LePGel9ohWmRgbjFt/9OBsRLXesiy0Jz8v8sk9rsXzyNENRUrfYpCdRSiY/jybOyFrt
	O3y/X7V8zQbYYM36AQtKE+HfQG6wCF7ufbv6s7DxE/hXvS5FAR8QsOh3VS5M3sRBSb2fwzsPWI5Ap
	Gynfq6hmnGetnHcle65BTUfb/dgoVRVFEa8z1pCmZe5cTGyBKRAuv3erdUTcFZCCIB2IWNrxzrl/J
	JfrSto90597a6ceWWEzVcgj9knd5MWxudj2OQJQZod1RbBrDVAy+OP70AbuD4QeTaqgbTlR58YtSg
	YLQVluZ/yyi/kygwuGCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRgcz-0000000C4IV-0xDM;
	Wed, 10 Jul 2024 23:21:37 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sRgch-0000000C4EX-2WAE;
	Wed, 10 Jul 2024 23:21:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 75A00619F9;
	Wed, 10 Jul 2024 23:21:18 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BCC8C32781;
	Wed, 10 Jul 2024 23:21:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720653678;
	bh=eCaFT3/kRTqxtksiSHjtW7/iheSU9qRWbGpJZIcucMY=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=hwyqFvL3uSKjrmCdyQQa4cq13kGOEJSEy2fkv2CKEDlZ5UMFNwKLgGMVZsgYHeYu9
	 bBi8O03DbNfXd5Xid+5FjPy7cdpiYU2WKD1qoumUyhQTkMuIXMeb3nj0lK6aihOE5z
	 2uZhahCucrQX9GuuXBymgbs5n7Gri8ly1kAIES4843NAlsfrFFvBtdJxOS1gLCl4iL
	 oNcYTZtywrjftE5tJlqNIPWIOPHic2VmbhVgb4d7j728FUWe7fJnbokE3l3JEu1OVP
	 99JoOsaBQoWiQsZlGA2nGl72MvoscnAHqoaikGe8rVqKF4t871gCC1ukaPGn/yJuIf
	 0tFBwbzjAvA8w==
Message-ID: <68f6dc44a8202fd83792e58aea137632.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <21244242.0c2gjJ1VT2@diego>
References: <20240709123121.1452394-1-heiko@sntech.de> <20240709123121.1452394-2-heiko@sntech.de> <12478313.O9o76ZdvQC@steina-w> <21244242.0c2gjJ1VT2@diego>
Subject: Re:  Re: [PATCH 1/6] dt-bindings: clocks: add binding for generic clock-generators
From: Stephen Boyd <sboyd@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, quentin.schulz@cherry.de, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
To: Alexander Stein <alexander.stein@ew.tq-group.com>, Heiko =?utf-8?q?St=C3=BCbner?= <heiko@sntech.de>, mturquette@baylibre.com
Date: Wed, 10 Jul 2024 16:21:15 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240710_162119_724204_8D0A08EE 
X-CRM114-Status: GOOD (  13.74  )
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

UXVvdGluZyBIZWlrbyBTdMO8Ym5lciAoMjAyNC0wNy0xMCAwMDo0NToxNykKPiBBbSBNaXR0d29j
aCwgMTAuIEp1bGkgMjAyNCwgMDk6MDI6MzQgQ0VTVCBzY2hyaWViIEFsZXhhbmRlciBTdGVpbjoK
PiA+IAo+ID4gU28gZXNzZW50aWFsbHkgb25seSBlbmFibGUtZ3Bpb3MgYW5kIHZkZC1zdXBwbHkg
aXMgYWRkZWQgaW4gY29tcGFyaXNvbiB0bwo+ID4gZml4ZWQtY2xvY2suIERvZXMgaXQgbWFrZSBz
ZW5zZSB0byBhZGQgdGhhdCB0byB0aGUgZml4ZWQtY2xvY2tzIGluc3RlYWQ/Cj4gPiBTaW1pbGFy
IHRvIGZpeGVkLXJlZ3VsYXRvci4KPiAKPiBJIHdhc24ndCB0aGF0IHN1cmUgd2hpY2ggd2F5IHRv
IGdvIGluIHRoZSBmaXJzdCBwbGFjZS4KPiBUaGUgZGVjaWRpbmcgcG9pbnQgd2FzIHJlYWRpbmcg
dGhhdCBsaW5lIGFib3V0IHRoZSBmaXhlZCBjbG9jayBub3QKPiBiZWluZyBnYXRlYWJsZSwgc28g
SSBvcHRlZCB0byBub3QgdG91Y2ggdGhlIGZpeGVkLWNsb2NrLgo+IAo+IEJ1dCB5b3UncmUgZGVm
aW5pdGx5IHJpZ2h0LCB0aGlzIF9jb3VsZF8gbGl2ZSBpbnNpZGUgdGhlIGZpeGVkLWNsb2NrCj4g
YXMgd2VsbCwgaWYgd2UgZGVjaWRlIHRvIGdldCByaWQgb2YgdGhlIG5vdC1nYXRlYWJsZSB0aGlu
ZyBhYm92ZS4KCkl0J3MgcHJvYmFibHkgbW9yZSBjb21wbGljYXRlZCB0byBjb21iaW5lIGl0IHdp
dGggdGhlIGZpeGVkLWNsb2NrCmJpbmRpbmcgYWZ0ZXIgbWFraW5nIHByb3BlcnRpZXMgcmVxdWly
ZWQgbGlrZSB2ZGQtc3VwcGx5LiBJJ2QganVzdCBtYWtlCmEgbmV3IGJpbmRpbmcgYW5kIGxvb2sg
YXQgY29tYmluaW5nIGxhdGVyLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
