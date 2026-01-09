Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55305D232DC
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Jan 2026 05:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uccVoOk9RAZyiPQxz/T/rHsi/uRXMoS/8yZNycaEFxQ=; b=06dIbBEN1WQJTK
	ywVViNYoF2GtNuOfcOM1zIg014GuDTIgbIZFBAHIU+NL/5zRCnLAaSU6n6XawxfGPc7m9wbLX5Pyu
	1+UAZJdzCzD6gUzwIBA5qTn7GK1VHRPyotjkl6rO0b09BuVubxQjnOxt9YKTwWSSoT9EjcdMRJzWr
	7MpnBNpAk7mePdZvP1VfXNOu0Ky7wiKJBXoDlvX9Q8ZpeUaUQDY4XZzUH9xRoo3G7jF/41VJV82s2
	cNe1Sz8zjBgMuYPKKDGUcp+GHZA/4ZWcnYItN+OBLhndRXJab+cDqVg///TdiYiU36E/KzWcBI0HX
	425ZpLGTgcuLRAIXpk6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve4u0-00000001PS1-0ce7;
	Fri, 09 Jan 2026 05:19:12 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ve4ty-00000001PRd-3TfU
	for linux-rockchip@lists.infradead.org;
	Fri, 09 Jan 2026 05:19:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id ACAFB60133;
	Fri,  9 Jan 2026 05:19:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE84EC4CEF1;
	Fri,  9 Jan 2026 05:19:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767935949;
	bh=QE+eW1lioXX0IuCt+nHwpU4h82uHQnaRvfgJbPKkX7o=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=JNkXnJudUJDV1z6JVqc2S9K5UxaVQiSyLAnFc6UtdaOqRwrQyTDSXwe8V3ar24iJz
	 9iw+ZJjGg0GsJRw1VBi8ROBj5xoOpOyFFJJyOTUqp8devgICXE4hcqkMoyENRPAeDC
	 NzUw3v5Fo7PQkc1KduHq0v9osYQzQsSAkv5GnsbCtJnJCaILCrPnURPxe4OC22cNil
	 yYgsLgiPblXX2oCBLnj9j3LESKIipeKxaG7H780aZriXuOztQKb8FwDxJZTo0vtHgP
	 sgP72yv9429H/c10Fcfo3vgfCZa7WopgZEw6qvq+QdZ7gjlpSN/3hSNXQ1S69lxg4p
	 Yyv+Tme96j8Yg==
Date: Fri, 9 Jan 2026 10:49:02 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, 
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org, linux-trace-kernel@vger.kernel.org, 
	linux-doc@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v2 2/3] Documentation: tracing: Add PCI controller event
 documentation
Message-ID: <kvdwnbtbk6vac6mt6delxgyowp2g74cmb24kgmn5lqpmrbx66x@vscy2lbgmzj3>
References: <1767929389-143957-1-git-send-email-shawn.lin@rock-chips.com>
 <1767929389-143957-3-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1767929389-143957-3-git-send-email-shawn.lin@rock-chips.com>
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

T24gRnJpLCBKYW4gMDksIDIwMjYgYXQgMTE6Mjk6NDhBTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IFRoZSBhdmFpbGFibGUgdHJhY2Vwb2ludCwgcGNpZV9sdHNzbV9zdGF0ZV90cmFuc2l0aW9u
LCBtb25pdG9ycyB0aGUgTFRTU00gc3RhdGUKPiB0cmFuc2lzdGlvbiBmb3IgZGVidWdnaW5nIHB1
cnBvc2UuIEFkZCBkZXNjcmlwdGlvbiBhYm91dCBpdC4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTaGF3
biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPiAtLS0KPiAKPiBDaGFuZ2VzIGluIHYy
OiBOb25lCj4gCj4gIERvY3VtZW50YXRpb24vdHJhY2UvZXZlbnRzLXBjaS1jb25vdHJvbGxlci5y
c3QgfCA0MSArKysrKysrKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNDEg
aW5zZXJ0aW9ucygrKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi90cmFjZS9l
dmVudHMtcGNpLWNvbm90cm9sbGVyLnJzdAo+IAo+IGRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9u
L3RyYWNlL2V2ZW50cy1wY2ktY29ub3Ryb2xsZXIucnN0IGIvRG9jdW1lbnRhdGlvbi90cmFjZS9l
dmVudHMtcGNpLWNvbm90cm9sbGVyLnJzdAo+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gaW5kZXgg
MDAwMDAwMC4uODI1M2QwMAo+IC0tLSAvZGV2L251bGwKPiArKysgYi9Eb2N1bWVudGF0aW9uL3Ry
YWNlL2V2ZW50cy1wY2ktY29ub3Ryb2xsZXIucnN0Cj4gQEAgLTAsMCArMSw0MSBAQAo+ICsuLiBT
UERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+ICsKPiArPT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT0KPiArU3Vic3lzdGVtIFRyYWNlIFBvaW50czogUENJIENvbnRy
b2xsZXIKPiArPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiArCj4gK092
ZXJ2aWV3Cj4gKz09PT09PT09Cj4gK1RoZSBQQ0kgY29udHJvbGxlciB0cmFjaW5nIHN5c3RlbSBw
cm92aWRlcyB0cmFjZXBvaW50cyB0byBtb25pdG9yIGNvbnRyb2xsZXIgbGV2ZWwKPiAraW5mb3Jt
YXRpb24gZm9yIGRlYnVnZ2luZyBwdXJwb3NlLiBUaGUgZXZlbnRzIG5vcm1hbGx5IHNob3cgdXAg
aGVyZToKPiArdXAgaGVyZToKPiArCj4gKwkvc3lzL2tlcm5lbC90cmFjaW5nL2V2ZW50cy9wY2lf
Y29udHJvbGxlcgo+ICsKPiArQ2YuIGluY2x1ZGUvdHJhY2UvZXZlbnRzL3BjaV9jb250cm9sbGVy
LmggZm9yIHRoZSBldmVudHMgZGVmaW5pdGlvbnMuCj4gKwo+ICtBdmFpbGFibGUgVHJhY2Vwb2lu
dHMKPiArPT09PT09PT09PT09PT09PT09PT09Cj4gKwo+ICtwY2llX2x0c3NtX3N0YXRlX3RyYW5z
aXRpb24KPiArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiArCj4gK01vbml0b3JzIFBDSWUgTFRT
U00gc3RhdGUgdHJhbnNpdGlvbiBpbmNsdWRpbmcgc3RhdGUgYW5kIHJhdGUgaW5mb3JtYXRpb24K
PiArOjoKPiArCj4gKyAgICBwY2llX2x0c3NtX3N0YXRlX3RyYW5zaXRpb24gICJkZXY6ICVzIHN0
YXRlOiAlcyByYXRlOiAlc1xuIgo+ICsKPiArKipQYXJhbWV0ZXJzKio6Cj4gKwo+ICsqIGBgZGV2
YGAgLSBQQ0llIHJvb3QgcG9ydCBuYW1lCgonUENJZSBjb250cm9sbGVyIGluc3RhbmNlJwoKPiAr
KiBgYHN0YXRlYGAgLSBQQ0llIExUU1NNIHN0YXRlCj4gKyogYGByYXRlYGAgLSBQQ0llIGJ1cyBz
cGVlZAoKJ1BDSWUgZGF0YSByYXRlJwoKPiArCj4gKyoqRXhhbXBsZSBVc2FnZSoqOgo+ICsKPiAr
ICAgICMgRW5hYmxlIHRoZSB0cmFjZXBvaW50Cj4gKyAgICBlY2hvIDEgPiAvc3lzL2tlcm5lbC9k
ZWJ1Zy90cmFjaW5nL2V2ZW50cy9wY2kvcGNpZV9sdHNzbV9zdGF0ZV90cmFuc2l0aW9uL2VuYWJs
ZQoKL3N5cy9rZXJuZWwvZGVidWcvdHJhY2luZy9ldmVudHMvcGNpX2NvbnRyb2xsZXIvcGNpZV9s
dHNzbV9zdGF0ZV90cmFuc2l0aW9uL2VuYWJsZQoKLSBNYW5pCgotLSAK4K6u4K6j4K6/4K614K6j
4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
