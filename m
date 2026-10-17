Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68D2ACCA46C
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Oct 2026 01:01:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T/pEuSMi/q/S+DhDhw7EPzvgBXWO0c86db6RuaTQgtc=; b=v3LguHSBfmSkk5
	B8lKHDbYos5Lbz+YzAELouHYjGj/PEaMZO8Y7rcZqrMPx6+9V6q3WS4jcEfOFliXhZUj3y6OfZQFA
	Oh7X2UN9fx1YEzw8OIPTr9mcTpY9an+weIAlSXwinRIHdOOVDlUaAOTMnX4KM6pUYXB0NkxFsSqkF
	+s8Z4IT4IJIyTatuPO46Am2ZYnx+AqgvBfOIoI1medC8Eo0OYU306oXuYZfn1ioPTHVszx3ZChoEv
	dLrdcEyy9YthhKGBOaMt+mxRfaJ86fV1DaHB33Wqy+q395jOF9SRK4T3rC+gNmiJiFUF8Pm0/wSeL
	1daau/ECJ68FgQpfqVpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHsn5-00000004Hj7-0c8D;
	Sat, 17 Oct 2026 01:00:51 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHsmy-00000004HhJ-3LFj;
	Sat, 17 Oct 2026 01:00:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 31B6E43CAB;
	Sat, 17 Oct 2026 01:00:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 651501F000C5;
	Sat, 17 Oct 2026 01:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792198844;
	bh=WLKAVyMVSmQOjN6SHuX6n9xWSw2+Rtn3bZHkHCgeQho=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=E12KcGjtaayPBL4g8g1vaqI+AYz5jzQd2vvaGZfmQO9jAH7CMQmjOnIolCfAkHqKP
	 gAcLN6YgxgpzwDmt6ICy7g1Ip1Q3Bzfx7n81wgeurXwnrsiQgBW3W4y+qv2S5BNmTp
	 O21bWfMBEzENvmA3HvTomx3tlNWexxx7vCFy+dB58txADDbUj8o6XBXxif9lSa0eGQ
	 g/hG2iBs4IQvp3HfSbB+nUUjk5+tyYi4ff1lMSVkDzA+mxahYZPz892midFdmEAJpo
	 72GNwCnfuvuUN4yPnmdR9iX3dW4RA++3kxDea/DLzZ4SWNjfXNKoLGSMiOrESkyJMq
	 eIwQCdpvd9sVQ==
Subject: Re: [PATCH net v5 2/6] can: dev: add close_candev_cancel_restart_sync()
From: netdev-bot+sashiko@kernel.org
To: 1579567540@qq.com
Cc: mkl@pengutronix.de, mailhol@kernel.org, heiko@sntech.de,
 davem@davemloft.net, wg@grandegger.com, socketcan@hartkopp.net,
 kernel@pengutronix.de, linux-can@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, stable@vger.kernel.org, kuba@kernel.org
Date: Sat, 17 Oct 2026 01:00:43 +0000
Message-ID: <179219884300.1406898.17794218418731765550@kernel.org>
In-Reply-To: <20261015-rockchip-canfd-restart-close-v5-2-ae77327037c9@qq.com>
References: <20261015-rockchip-canfd-restart-close-v5-2-ae77327037c9@qq.com>
X-sashiko-severity: Low
MIME-Version: 1.0
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

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
bW9yZSBzZXZlcmUKaXNzdWUocykgaW4gb3RoZXIgcGF0Y2hlcyBvZiB0aGlzIHNlcmllcy4gVGhp
cyBtYWlsIGlzIG9ubHkgYW4gRllJLCBpbiBjYXNlCnlvdSB3YW50IHRvIGFkZHJlc3MgdGhlIG5p
dCBwaWNrcyBiZWxvdyB3aGVuIHlvdSByZXNwaW4uCgpMb3cgcHJpb3JpdHkgLyBuaXQgcGlja3Mg
Zm9yIHlvdXIgY29uc2lkZXJhdGlvbjoKCi0gW0xvd10gQ29uY2VybjogY2xvc2VfY2FuZGV2X2Nh
bmNlbF9yZXN0YXJ0X3N5bmMoKSBpcyBhZGRlZCB0bwogIGluY2x1ZGUvbGludXgvY2FuL2Rldi5o
LCBidXQgdGhlIG9ubHkgY2FsbCBzaXRlIGlzIGEgbm8tb3AgcmVmYWN0b3IgaW7igKYKLSBbTG93
XSBDb25jZXJuOiB0aGUgY29tbWl0IGhhcyAnQ2M6IHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmcnIGJ1
dCBubwogIEZpeGVzOiB0YWcgYW5kIG5vICcjIHByZXJlcXVpc2l0ZSBmb3IgLi4uJyBub3RlLCB3
aGlsZSBiZWluZyBhIG5vLW9w4oCmCgotLQoKY2FuOiBkZXY6IGFkZCBjbG9zZV9jYW5kZXZfY2Fu
Y2VsX3Jlc3RhcnRfc3luYygpCgpUaGlzIGFkZHMgYW4gaW5saW5lIGhlbHBlciwgY2xvc2VfY2Fu
ZGV2X2NhbmNlbF9yZXN0YXJ0X3N5bmMoKSwgdG8KaW5jbHVkZS9saW51eC9jYW4vZGV2LmguIEl0
IG9ubHkgY2FuY2VscyB0aGUgYnVzLW9mZiByZXN0YXJ0IHdvcmssIHNvCmRyaXZlcnMgY2FuIGNh
bmNlbCBpdCBiZWZvcmUgdGVhcmluZyBkb3duIElSUSBhbmQgaGFyZHdhcmUgcmVzb3VyY2VzLgpj
bG9zZV9jYW5kZXYoKSBub3cgdXNlcyB0aGUgaGVscGVyIGFuZCBrZWVwcyBpdHMgZXhpc3Rpbmcg
b3JkZXI6IGNhbmNlbAp0aGUgcmVzdGFydCB3b3JrLCB0aGVuIGZsdXNoIHRoZSBlY2hvIHNrYnMu
Cgo+IFVzZSB0aGUgaGVscGVyIGluIGNsb3NlX2NhbmRldigpLCBwcmVzZXJ2aW5nIGl0cyBleGlz
dGluZyBjYW5jZWxsYXRpb24KPiBhbmQgZWNobyBjbGVhbnVwIG9yZGVyLgo+Cj4gQ2M6IHN0YWJs
ZUB2Z2VyLmtlcm5lbC5vcmcKCltTZXZlcml0eTogTG93XQpUaGlzIGlzbid0IGEgYnVnLCBidXQg
Y291bGQgdGhlIGNvbW1pdCBtZXNzYWdlIHNheSB3aHkgdGhpcyBpcyBnb2luZyB0bwpzdGFibGU/
CgpPbiBpdHMgb3duLCB0aGUgcGF0Y2ggaXMgYSBuby1vcCByZWZhY3RvciBvZiBjbG9zZV9jYW5k
ZXYoKSBwbHVzIGEgbmV3CmhlbHBlci4gSXQgaGFzIG5vIEZpeGVzOiB0YWcgYW5kIG5vICIjIHBy
ZXJlcXVpc2l0ZSBmb3IgLi4uIiBhbm5vdGF0aW9uLgoKVGhlIG9ubHkgbmV3IHVzZXIgc2VlbXMg
dG8gYmUgdGhlIG5leHQgcGF0Y2ggaW4gdGhlIHNlcmllcywgImNhbjoKcm9ja2NoaXBfY2FuZmQ6
IGNhbmNlbCBidXMtb2ZmIHJlc3RhcnQgYmVmb3JlIGNsb3NpbmcgdGhlIGRldmljZSIuIFRoYXQK
cGF0Y2ggaGFzIGl0cyBvd24gRml4ZXM6IGZmNjBiZmJhZjY3ZiBhbmQgQ2M6IHN0YWJsZS4KCldv
dWxkIGl0IGhlbHAgYmFja3BvcnRlcnMgdG8gbWFyayB0aGlzIHBhdGNoIGFzIGEgcHJlcmVxdWlz
aXRlIGZvciB0aGF0CmZpeD8gSWYgdGhlIHJvY2tjaGlwIGZpeCB3ZXJlIHBpY2tlZCB3aXRob3V0
IGl0LCB0aGUgYnVpbGQgd291bGQgZmFpbApyYXRoZXIgdGhhbiB0aGUgY29kZSBtaXNiZWhhdmlu
Zywgc28gdGhpcyBvbmx5IGFmZmVjdHMgY29tbWl0IG1ldGFkYXRhLgoKPiBkaWZmIC0tZ2l0IGEv
aW5jbHVkZS9saW51eC9jYW4vZGV2LmggYi9pbmNsdWRlL2xpbnV4L2Nhbi9kZXYuaAo+IGluZGV4
IDZkMDcxMGQ2ZjU3MWQuLmEyNzdkMTIzMzJmMTUgMTAwNjQ0Cj4gLS0tIGEvaW5jbHVkZS9saW51
eC9jYW4vZGV2LmgKPiArKysgYi9pbmNsdWRlL2xpbnV4L2Nhbi9kZXYuaAoKWyAuLi4gXQoKPiBA
QCAtMTE1LDYgKzExNiwxNyBAQCBzdHJ1Y3QgY2FuX3ByaXYgKnNhZmVfY2FuZGV2X3ByaXYoc3Ry
dWN0IG5ldF9kZXZpY2UgKmRldik7Cj4gIAo+ICBpbnQgb3Blbl9jYW5kZXYoc3RydWN0IG5ldF9k
ZXZpY2UgKmRldik7Cj4gIHZvaWQgY2xvc2VfY2FuZGV2KHN0cnVjdCBuZXRfZGV2aWNlICpkZXYp
Owo+ICsKPiArLyogQ2FuY2VsIGJ1cy1vZmYgcmVzdGFydCBiZWZvcmUgdGVhcmluZyBkb3duIHJl
c291cmNlcyB1c2VkIGJ5IHRoZSByZXN0YXJ0Cj4gKyAqIGNhbGxiYWNrLiBUaGUgZHJpdmVyIG11
c3Qgc3RpbGwgY2FsbCBjbG9zZV9jYW5kZXYoKSBmb3IgdGhlIGZpbmFsIGNsZWFudXAuCj4gKyAq
Lwo+ICtzdGF0aWMgaW5saW5lIHZvaWQgY2xvc2VfY2FuZGV2X2NhbmNlbF9yZXN0YXJ0X3N5bmMo
c3RydWN0IG5ldF9kZXZpY2UgKmRldikKPiArewo+ICsJc3RydWN0IGNhbl9wcml2ICpwcml2ID0g
bmV0ZGV2X3ByaXYoZGV2KTsKPiArCj4gKwljYW5jZWxfZGVsYXllZF93b3JrX3N5bmMoJnByaXYt
PnJlc3RhcnRfd29yayk7Cj4gK30KCltTZXZlcml0eTogTG93XQpJbiB0aGlzIHBhdGNoLCB0aGUg
b25seSBjYWxsZXIgb2YgY2xvc2VfY2FuZGV2X2NhbmNlbF9yZXN0YXJ0X3N5bmMoKSBpcwpjbG9z
ZV9jYW5kZXYoKSBpbiBkcml2ZXJzL25ldC9jYW4vZGV2L2Rldi5jLCBhbmQgdGhhdCBjb252ZXJz
aW9uIGtlZXBzCnRoZSBvbGQgYmVoYXZpb3VyLiBBcyBhIHJlc3VsdCwgbm8gZHJpdmVyJ3MgbmRv
X3N0b3AgZ2V0cyB0aGUgZWFybHkKY2FuY2VsbGF0aW9uIHRoYXQgdGhlIGNvbW1pdCBtZXNzYWdl
IGRlc2NyaWJlcy4KCklzIHRoZSBoZWxwZXIgbWVhbnQgdG8gYmUgdXNlZCBvbmx5IGJ5IGxhdGVy
IHBhdGNoZXM/CgpUaGlzIGxvb2tzIHJlc29sdmVkIGxhdGVyIGluIHRoZSBzZXJpZXMuIEluICJj
YW46IHJvY2tjaGlwX2NhbmZkOiBjYW5jZWwKYnVzLW9mZiByZXN0YXJ0IGJlZm9yZSBjbG9zaW5n
IHRoZSBkZXZpY2UiLCBya2NhbmZkX3N0b3AoKSBjYWxscyB0aGUKaGVscGVyIGZpcnN0OgoKCWNs
b3NlX2NhbmRldl9jYW5jZWxfcmVzdGFydF9zeW5jKG5kZXYpOwoJcmtjYW5mZF90eF9kaXNhYmxl
KHByaXYpOwoKCXJrY2FuZmRfY2hpcF9pbnRlcnJ1cHRzX2Rpc2FibGUocHJpdik7CglmcmVlX2ly
cShuZGV2LT5pcnEsIHByaXYpOwoKSXQgdGhlbiBjYWxscyBjbG9zZV9jYW5kZXYoKSBhZnRlciB0
aGUgSVJRIHRlYXJkb3duLgoKQ291bGQgdGhlIGNvbW1pdCBtZXNzYWdlIG1lbnRpb24gdGhhdCB1
c2VyLCBzbyB0aGUgaGVscGVyIGRvZXNuJ3QgbG9vawp1bnVzZWQgd2hlbiB0aGlzIHBhdGNoIGlz
IHJldmlld2VkIGFsb25lPwoKLS0gClNhc2hpa28gQUkgcmV2aWV3IMK3IGh0dHBzOi8vbmV0ZGV2
LWFpLmJvdHMubGludXguZGV2L3Nhc2hpa28vIy9wYXRjaHNldC8yMDI2MTAxNS1yb2NrY2hpcC1j
YW5mZC1yZXN0YXJ0LWNsb3NlLXY1LTAtYWU3NzMyNzAzN2M5JTQwcXEuY29tCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
