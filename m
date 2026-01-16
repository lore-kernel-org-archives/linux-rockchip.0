Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F563D3CCAB
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Jan 2026 09:44:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pbp4tsJDlKqJR0FAXHsi/vKdvHx+zXKkQ+iKwMbHIKA=; b=SCCxSJdizB0QVW
	Dy+PX4+SMxHuPVc7T9llYFjIUEvYNtwMxNeMBZ8hsc25mY805gXzDZlQVuactoKjkZHXRuPqMuCQt
	QJPhqdvTpKwMTnUI9UmbuM/aHCr+EVHx4dGESg+S5zgYGDQU5MfZ+a6pPF1BqGVA/jv+oyZ7gHmOO
	BoZ6+WeP+wbZTBKnAjUM9vtTICxvaqg95Rx6slsyWYFWeSaPzDWzhywFIxra9ZnadrSJ8X69r+imu
	0uxUA/V85EBP3zF3OxR4EV/T+M1ANMBKX/GvT98Hbj0Sj2W+VEJ642cFxMNnNqX9hrPYpEf6+PCvK
	UvjYGxtgGVA8gkv3sgGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vggNG-0000000DsfG-1qRk;
	Fri, 16 Jan 2026 09:44:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vggNE-0000000Dset-2jMO;
	Fri, 16 Jan 2026 09:44:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=QGCCaGWgIfg2vfdsl9W+Yld60nDB/Iv9Cfq95SmZGJI=; b=X/EKOz3ywJYWTNlqdF9VO9mql5
	4xqoQqvalFKibN2AMQncOi+i9nZUxkoIuPYhvI/FtRsNo66DBdHnsn2ZmwMZWbrE8IoJDy2XZmuNG
	tfYsgLEUU+slhtyaVTt+tpeVhn5ZM8pmMHPoymFb/5qk5v/tUXpchepygjStqoQWSvfpaSeU9sOST
	EcbAMgR6GRYyjFX3guDim1kIMORAtWLZpKTcAazE2T82Jn8BbsikfwlRm8I1fsC1wM0tvyhnGVdVx
	x8zrOWwE7JUtitXUbMgt1xZvks2AYJ5P+sF5DcMYS8Hm+M+V2aF8W42uSzgafMAiEqGLbKpeXowEO
	rlWUq23Q==;
Received: from i53875a97.versanet.de ([83.135.90.151] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vggN5-002bUI-F4; Fri, 16 Jan 2026 10:44:00 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Marco Schirrmeister <mschirrmeister@gmail.com>
Cc: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-rockchip@lists.infradead.org,
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v1 1/3] dt-bindings: mmc: rockchip-dw-mshc: add
 rockchip,disable-runtime-pm
Date: Fri, 16 Jan 2026 10:43:57 +0100
Message-ID: <1791168.izSxrag8PF@diego>
In-Reply-To: <CAGJh8eAWNe0JzC7BdA2Rw5etCYgGq3O5Zdgk9zSzsLNv18k=ag@mail.gmail.com>
References: <20260110010715.1610159-1-mschirrmeister@gmail.com>
 <20260111-melodic-chestnut-coua-73e6ec@quoll>
 <CAGJh8eAWNe0JzC7BdA2Rw5etCYgGq3O5Zdgk9zSzsLNv18k=ag@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_014408_746187_D539B5E6 
X-CRM114-Status: GOOD (  21.05  )
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

SGkgTWFyY28sCgpBbSBNb250YWcsIDEyLiBKYW51YXIgMjAyNiwgMDA6NTE6MjQgTWl0dGVsZXVy
b3DDpGlzY2hlIE5vcm1hbHplaXQgc2NocmllYiBNYXJjbyBTY2hpcnJtZWlzdGVyOgo+IE9uIFN1
biwgSmFuIDExLCAyMDI2IGF0IDEwOjQx4oCvQU0gS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0Br
ZXJuZWwub3JnPiB3cm90ZToKPiA+ID4gKyAgcm9ja2NoaXAsZGlzYWJsZS1ydW50aW1lLXBtOgo+
ID4gPiArICAgIHR5cGU6IGJvb2xlYW4KPiA+ID4gKyAgICBkZXNjcmlwdGlvbjoKPiA+ID4gKyAg
ICAgIEluaGliaXQgcnVudGltZSBwb3dlciBtYW5hZ2VtZW50LiBUaGlzIGlzIHJlcXVpcmVkIGZv
ciBib2FyZHMKPiA+Cj4gPiBXaGF0IGlzIHJ1bnRpbWUgcG93ZXIgbWFuYWdlbWVudD8gTGlrZSBM
aW51eCBQTT8gSWYgYW55dGhpbmcgcGhyYXNlZAo+ID4gbGlrZSB0aGF0IGlzIGl0IGlzIGEgY2xl
YXIgbm8gZ28uIEJpbmRpbmdzIGRlc2NyaWJlIGhhcmR3YXJlLgo+IAo+IFlvdSBhcmUgcmlnaHQu
IFRoaXMgcmVmZXJzIHRvIHRoZSBMaW51eCBQTSBzdWJzeXN0ZW0gYW5kIGRlc2NyaWJlcwo+IHNv
ZnR3YXJlIGJlaGF2aW9yLgo+IAo+ID4gPiArICAgICAgd2hlcmUgdGhlIGJ1cyB0aW1pbmcgYmVj
b21lcyB1bnN0YWJsZSBpZiB0aGUgY29udHJvbGxlciBpcwo+ID4gPiArICAgICAgcnVudGltZS1z
dXNwZW5kZWQuCj4gPgo+ID4gWW91IGRlc2NyaWJlZCB0aGUgZGVzaXJlZCBMaW51eCBmZWF0dXJl
IG9yIGJlaGF2aW9yLCBub3QgdGhlIGFjdHVhbAo+ID4gaGFyZHdhcmUuIFRoZSBiaW5kaW5ncyBh
cmUgYWJvdXQgdGhlIGxhdHRlciwgc28gaW5zdGVhZCB5b3UgbmVlZCB0bwo+ID4gcmVwaHJhc2Ug
dGhlIHByb3BlcnR5IGFuZCBpdHMgZGVzY3JpcHRpb24gdG8gbWF0Y2ggYWN0dWFsIGhhcmR3YXJl
Cj4gPiBjYXBhYmlsaXRpZXMvZmVhdHVyZXMvY29uZmlndXJhdGlvbiBldGMuCj4gCj4gT24gdGhp
cyBib2FyZCwgdGhlIGJ1cyB0aW1pbmcgYmVjb21lcyB1bnN0YWJsZSB3aGVuIHdha2luZyB1cCBm
cm9tCj4gYSBsb3ctcG93ZXIgc3RhdGUuIFRoaXMgY2F1c2VzIGEgY29uc3RhbnQgcmV0cmFpbmlu
ZyBsb29wLgoKQXMgeW91IGRlc2NyaWJlIGl0IGhlcmUsIGl0IGRvZXMgc291bmQgbGlrZSBhIHJl
YWwgaGFyZHdhcmUgcXVpcmsgKHdoaWNoCndvdWxkIGJlIGEgZHQtdGhpbmcpIC4uLiBpdCdzIGp1
c3QgdGhhdCB0aGUgcHJldmlvdXMgd29yZGluZyBkZXNjcmliZXMgaXQKaW4gYSBub24taGFyZHdh
cmUgd2F5IC0gYXMgS3J6eXN6dG9mIHBvaW50ZWQgb3V0IGluIGhpcyByZXBseS4KCgo+IEkgd2ls
bCBtb3ZlIHRoaXMgbG9naWMgaW50byB0aGUgZHJpdmVyIGFuZCBoYW5kbGUgaXQgYXMgYSBib2Fy
ZCBzcGVjaWZpYwo+IHF1aXJrIHVzaW5nIG9mX21hY2hpbmVfaXNfY29tcGF0aWJsZSgiZnJpZW5k
bHlhcm0sbmFub3BpLXI3NnMiKQo+IGluc3RlYWQuIEkgd2lsbCBzZW5kIGEgdjIuCgpUaGlzIHdv
bid0IGZseSBJIHRoaW5rLiBXZSBjYW4ndCByZWFsbHkgaGF2ZSBhIChwb3NzaWJseSBsb25nKSBs
aXN0IG9mCgpJZiAoYm9hcmRBKSBmb28oKTsKaWYgKGJvYXJkQikgYmFyKCk7CmlmIChib2FyZEMp
IGJhcygpOwoKVGhhdCByZWFsbHkgaXMgbm90IHN1c3RhaW5hYmxlIGFuZCBtb3N0IGxpa2VseSB3
b24ndCBnZXQgYWNjZXB0ZWQuCgpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
