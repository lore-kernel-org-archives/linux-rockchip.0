Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4426FCA5FF1
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Oct 2026 01:42:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	References:In-Reply-To:Cc:To:Subject:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b+LZ3qdRoZWB4rSXvOp5D/kFI/Z372pJZbL1R+8mJ6U=; b=07DU1+qNLakNE1
	0N4zk/1EyVdMwltLempE7eOzIWbls023a2nGAvm4YbQ9y4bbhH+nOiy60pcsFXzahOkRkNxP1UmHe
	u+5LWvnT6TxFfI8dcAVuBm1hY7ow1bFNacwsIr26Pxtfhk1v7ierdDyGPTMguFOAozMwG862sidVB
	53RRPdJtGO2NLlrpihwowAJPrt4SFWxXyNFr+QaCsRoVB3Q7iqfTa/GkXNTpBHmKlvUkdwMQe7uBS
	7pE61ObqTAUUoCOJU+fpfSnEBXcVD3ZZo0VE2KlFn3SV7CyDJFYaNobuNQc54rgLiIqTOSKpBnwwS
	mCTTu5AYKzpeFfLeoSUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDXiL-0000000FaG8-0eVw;
	Mon, 05 Oct 2026 01:42:01 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xDXiJ-0000000FaFf-28l1;
	Mon, 05 Oct 2026 01:41:59 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id DCC9E60515;
	Mon,  5 Oct 2026 01:41:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD56B1F000FF;
	Mon,  5 Oct 2026 01:41:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1791164516;
	bh=YMRdMPBRQIrUX61rqc5mlDXTRBhO1/an+eTx2/A0kFU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IDVHcEngx0Tjvw7z0pduHY8+I+Ev0IaX397LvhXDxAmF4HfroZIl3RbZ6k2LC/PJn
	 O8yt4kiShPFUmXnha4+IZDdmEG8sxUz8GV2AnI6Zo8OVrFybxPy5yrZ82ofe2hP/UX
	 xLo1IP7YNu2xFLTO+bqRKmdGkp/tMP8QTvfIQ+miXFC3h2QMUIiPscf3JFQc+k2o2x
	 5ULUmqCOLNZG9KfWvGAuQ9AyEdyUc1eSkcSg1CE9UBja0th+4/rgT6rQ3dro0fP6Jp
	 J4EOTbl5fMsKg5XDUUqSQCIfdqTk4zhB+92r17tELBDIB/vl2POaseI1dWmY5+WF2I
	 kp5/nP/1fYMHw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC] genirq/kexec: Do not take the bus lock of an
 interrupt chip on the crash path
To: "Thomas Gleixner" <tglx@kernel.org>, "Igor Velkov" <iav@iav.lv>
Cc: "Will Deacon" <will@kernel.org>, "Marc Zyngier" <maz@kernel.org>, "Radu
 Rendec" <radu@rendec.net>, "Baoquan He" <baoquan.he@linux.dev>, "Heiko
 Stuebner" <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, "Eliav
 Farber" <farbere@amazon.com>, kexec@lists.infradead.org, "Catalin Marinas" <catalin.marinas@arm.com>, "Mark
 Rutland" <mark.rutland@arm.com>
In-Reply-To: <20261005-kexec-irq-bus-lock-v1-1-09f6b5323460@iav.lv>
References: <20261005-kexec-irq-bus-lock-v1-1-09f6b5323460@iav.lv>
Date: Mon, 05 Oct 2026 01:41:55 +0000
Message-Id: <20261005014155.BD56B1F000FF@smtp.kernel.org>
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
Reply-To: sashiko-reviews@lists.linux.dev
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
MSBwb3RlbnRpYWwgaXNzdWUocykgdG8gY29uc2lkZXI6Ci0gW01lZGl1bV0gaXJxL2tleGVjOiBp
bmNvbXBsZXRlIHNsb3cgYnVzIGNoZWNrIGFsbG93cyBoYW5nIHZpYSBpcnFfYnVzX3N5bmNfdW5s
b2NrCi0tCgpjb21taXQgYTEyMzQzMTU2ODI3YjkwMzVhZjZlMzk4MmFjNjViMzQzNzkyMTUwMgpB
dXRob3I6IElnb3IgVmVsa292IDxpYXZAaWF2Lmx2PgoKZ2VuaXJxL2tleGVjOiBEbyBub3QgdGFr
ZSB0aGUgYnVzIGxvY2sgb2YgYW4gaW50ZXJydXB0IGNoaXAgb24gdGhlIGNyYXNoIHBhdGgKCm1h
Y2hpbmVfa2V4ZWNfbWFza19pbnRlcnJ1cHRzKCkgY2FsbHMgaXJxX3NldF9pcnFjaGlwX3N0YXRl
KCkgZm9yIGV2ZXJ5CnN0YXJ0ZWQgaW50ZXJydXB0LiBUaGF0IGZ1bmN0aW9uIHRha2VzIHRoZSBi
dXMgbG9jayBvZiB0aGUgaW50ZXJydXB0CmNoaXAgYW5kIHN5bmNzIHRoZSBjaGlwIHdoZW4gaXQg
ZHJvcHMgdGhlIGxvY2suIE9uIHRoZSBjcmFzaCBwYXRoCmludGVycnVwdHMgYXJlIG9mZiBhbmQg
dGhlIG90aGVyIENQVXMgYXJlIHN0b3BwZWQsIHNvIGEgY2hpcCB0aGF0IG5lZWRzCml0cyBidXMg
Zm9yIHRoZSBzeW5jIG5ldmVyIHJldHVybnMuCgo+IGRpZmYgLS1naXQgYS9rZXJuZWwvaXJxL2tl
eGVjLmMgYi9rZXJuZWwvaXJxL2tleGVjLmMKPiBpbmRleCAxYTNkZWZmZTZiNWI2Li5jNmM3NDVj
Yzc2YTI1IDEwMDY0NAo+IC0tLSBhL2tlcm5lbC9pcnEva2V4ZWMuYwo+ICsrKyBiL2tlcm5lbC9p
cnEva2V4ZWMuYwo+IEBAIC0yMCw3ICsyMCwxMSBAQCB2b2lkIG1hY2hpbmVfa2V4ZWNfbWFza19p
bnRlcnJ1cHRzKHZvaWQpCj4gIAkJaWYgKCFjaGlwIHx8ICFpcnFkX2lzX3N0YXJ0ZWQoJmRlc2Mt
PmlycV9kYXRhKSkKPiAgCQkJY29udGludWU7Cj4gIAo+IC0JCWlmIChJU19FTkFCTEVEKENPTkZJ
R19HRU5FUklDX0lSUV9LRVhFQ19DTEVBUl9WTV9GT1JXQVJEKSkgewo+ICsJCS8qCj4gKwkJICog
aXJxX3NldF9pcnFjaGlwX3N0YXRlKCkgdGFrZXMgdGhlIGJ1cyBsb2NrLCBhbmQgYSBjaGlwIHRo
YXQKPiArCQkgKiBoYXMgb25lIG1heSBzbGVlcCBvciB0YWxrIHRvIGl0cyBidXMgd2hlbiB0aGUg
bG9jayBpcyBkcm9wcGVkLgo+ICsJCSAqLwo+ICsJCWlmIChJU19FTkFCTEVEKENPTkZJR19HRU5F
UklDX0lSUV9LRVhFQ19DTEVBUl9WTV9GT1JXQVJEKSAmJiAhY2hpcC0+aXJxX2J1c19sb2NrKSB7
CgpbU2V2ZXJpdHk6IE1lZGl1bV0KRG9lcyB0aGlzIGNoZWNrIGNvbXByZWhlbnNpdmVseSBwcm90
ZWN0IGFnYWluc3Qgc2xvdyBidXMgY2hpcHM/CgpJZiBhbiBpcnFjaGlwIGltcGxlbWVudHMgaXJx
X2J1c19zeW5jX3VubG9jayBidXQgb21pdHMgaXJxX2J1c19sb2NrLCB0aGlzCmNvbmRpdGlvbiBl
dmFsdWF0ZXMgdG8gdHJ1ZSBhbmQgaXJxX3NldF9pcnFjaGlwX3N0YXRlKCkgaXMgY2FsbGVkLgpT
aW5jZSBpcnFfc2V0X2lycWNoaXBfc3RhdGUoKSB1bHRpbWF0ZWx5IHVubG9ja3MgdGhlIGRlc2Ny
aXB0b3IgdmlhCl9faXJxX3B1dF9kZXNjX3VubG9jaygpLCBpdCB1bmNvbmRpdGlvbmFsbHkgaW52
b2tlcyB0aGUgc3luYyBjYWxsYmFjazoKCmtlcm5lbC9pcnEvaXJxZGVzYy5jOl9faXJxX3B1dF9k
ZXNjX3VubG9jaygpIHsKICAgIC4uLgogICAgaWYgKGJ1cykKICAgICAgICBjaGlwX2J1c19zeW5j
X3VubG9jayhkZXNjKTsKICAgIC4uLgp9CgpFeGVjdXRpbmcgdGhlIHN5bmMgY2FsbGJhY2sgb24g
dGhlIGNyYXNoIHBhdGggd2l0aG91dCBpbnRlcnJ1cHRzIGNvdWxkIGhhbmcgdGhlCnN5c3RlbSwg
ZGVmZWF0aW5nIHRoZSBwdXJwb3NlIG9mIHRoaXMgcGF0Y2guCgpPdGhlciBwbGFjZXMgaW4gdGhl
IHN1YnN5c3RlbSBjaGVjayBmb3IgYm90aCBjYWxsYmFja3MgdG8gaWRlbnRpZnkgc2xvdyBidXMK
bG9ja2luZy9zeW5jaW5nLCBmb3IgaW5zdGFuY2U6CgprZXJuZWwvaXJxL21hbmFnZS5jOmlycV9z
dXBwb3J0c19ubWkoKSB7CiAgICAuLi4KICAgIGlmIChkLT5jaGlwLT5pcnFfYnVzX2xvY2sgfHwg
ZC0+Y2hpcC0+aXJxX2J1c19zeW5jX3VubG9jaykKICAgICAgICByZXR1cm4gZmFsc2U7CiAgICAu
Li4KfQoKU2hvdWxkIHRoaXMgY2hlY2sgYWxzbyBlbnN1cmUgIWNoaXAtPmlycV9idXNfc3luY191
bmxvY2s/Cgo+ICAJCQkvKgo+ICAJCQkgKiBGaXJzdCB0cnkgdG8gcmVtb3ZlIHRoZSBhY3RpdmUg
c3RhdGUgZnJvbSBhbiBpbnRlcnJ1cHQgd2hpY2ggaXMgZm9yd2FyZGVkCj4gIAkJCSAqIHRvIGEg
Vk0uIElmIHRoZSBpbnRlcnJ1cHQgaXMgbm90IGZvcndhcmRlZCwgdHJ5IHRvIEVPSSB0aGUgaW50
ZXJydXB0LgoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vc2FzaGlrby5kZXYvIy9w
YXRjaHNldC8yMDI2MTAwNS1rZXhlYy1pcnEtYnVzLWxvY2stdjEtMS0wOWY2YjUzMjM0NjBAaWF2
Lmx2P3BhcnQ9MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
