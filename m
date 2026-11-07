Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B07B606A32C
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Nov 2026 02:35:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=1nJ6lmin;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=rock-chips.com header.i=@rock-chips.com header.a=rsa-sha256 header.s=default header.b=hvJR7mQK
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Jt/ekc6Q0pverFGhQKhfuVPvLQEf6zDX0/aajn+UHSY=; b=1nJ6lminCf3Re4i171LukKI1KB
	JMKg61Lh2ttKWFGQ3TNbZb/AMcIEOgacFi9PFoQlCQCAPI/pdI0Ib/RopRVTbpDcW/uRDvr4tYgoP
	qeK95uNjiUt7ogPhVRbVBPwXCyiHwhP88Gmaq8sPoTCoU6zRxFIKal2h8f5YpV//Ck+bp1wOCYS56
	QARRc7ag1X75DpJdG2SyG4zO880zFO4FKpOw8JnLoVz3Rv6YqFoz8c3ryyHnLkyHTJX4nU0Dvh0t3
	Jrf2Ota4utZinpF9n44FrepoxPNBJti6S1qKH0GaOt34HelzHikmxTaGj310hX2ItGIl1mCeb6Vtg
	s3j/mKGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPWH2-0000000E54T-4487;
	Sat, 07 Nov 2026 02:35:20 +0000
Received: from mail-m822136198.xmail.ntesmail.com ([8.221.36.198])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPWGy-0000000E52h-394w;
	Sat, 07 Nov 2026 02:35:19 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 53d327815;
	Sat, 7 Nov 2026 10:35:05 +0800 (GMT+08:00)
Message-ID: <6c9adabe-d632-471e-8fc1-aafe62115167@rock-chips.com>
Date: Sat, 7 Nov 2026 10:35:04 +0800
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, =?UTF-8?Q?Enrique_Hern=C3=A1ndez_Bello?=
 <ehbello@gmail.com>, lpieralisi@kernel.org, kwilczynski@kernel.org,
 mani@kernel.org, bhelgaas@google.com, robh@kernel.org, heiko@sntech.de,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH RFC 0/2] PCI: rockchip-host: Retry training and hot-reset
 a JMB585 on RK3399
To: Igor Velkov <iav@iav.lv>
References: <20261024-rockchip-pcie-resume-v1-0-58e54a5cf5f1@iav.lv>
 <4316c1da-f7ff-4fa5-a330-512800474e45@rock-chips.com>
 <20261026-rockchip-pcie-shawn-reply-1@iav.lv>
 <ff204558-dc22-4d38-b0dc-2c727f983f9f@rock-chips.com>
 <20261028173117.3457220-1-ehbello@gmail.com>
 <20261030-rockchip-pcie-s2idle-a53-1@iav.lv>
 <20261106-rockchip-pcie-ltssm-trace-1@iav.lv>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20261106-rockchip-pcie-ltssm-trace-1@iav.lv>
X-HM-Tid: 0aa1b3dc0c7703a4kunm35aff5ba43fb5c
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlCH05IVkodTkMdQ0MaQ05DQ1YVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=hvJR7mQKfA7FUkt0VirpverykUfmFAKCqEGfnoaFE19hYtPSjIDT+bQoNAzsni6ZjJ95cow7WggmSs3Gwjfm/stmx3uITTnBYv6AeFs0jQ/stl/IBgUbjN5LMFgjxQuqQuh+G7tvz2bLzeP3wYkGUl53+ShdslJ2whRbz7l7gWA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Z8Cc7N+D8LwMYtORpVehAaXnRfBR/5w4HT9eKf1jaIE=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_183517_776742_EA86C17C 
X-CRM114-Status: GOOD (  22.78  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

5ZyoIDIwMjYvMTEvMDYg5pif5pyf5LqUIDEzOjA5LCBJZ29yIFZlbGtvdiDlhpnpgZM6Cj4gSGkg
U2hhd24sCj4gCj4gSSB0cmFjZWQgdGhlIExUU1NNIG9uIHRoZSBIZWxpb3M2NCAoUkszMzk5ICsg
Sk1CNTg1LCB4MiwgMi41IEdUL3MpIGJ5Cj4gcG9sbGluZyBQQ0lFX0NMSUVOVF9ERUJVR19PVVRf
MCBhYm91dCBldmVyeSAyIHVzIGR1cmluZyBsaW5rIHRyYWluaW5nCj4gYW5kIHRoZSB3YWl0cyBh
ZnRlciBpdC4gVGhpcyBjaGFuZ2VzIHdoYXQgdGhlIFJGQyBzYWlkLCBzbyBoZXJlIGFyZSB0aGUK
PiBkYXRhIGFuZCBhIHF1ZXN0aW9uLgo+IAo+IEEgZmFpbGluZyBsaW5rIGJyaW5nLXVwIGxvb2tz
IGxpa2UgdGhpczoKPiAKPiAtIHRoZSBMVFNTTSByZWFjaGVzIEwwIGFzIGZhc3QgYXMgaW4gYSBn
b29kIG9uZTsKPiAtIHRoZW4gaXQgbGVhdmVzIEwwIGZvciBSZWNvdmVyeSAoUmN2ckxvY2svUmN2
ckNmZy9JZGxlLCBhYm91dCA1IHVzKQo+ICAgIGV2ZXJ5IDE5OS4uMjA0IHVzLCBmb3IgYXMgbG9u
ZyBhcyBJIHdhdGNoOiA0ODggdGltZXMgcGVyIDEwMCBtczsKPiAtIGxpbmtfc3QgaW4gQkFTSUNf
U1RBVFVTMSBiZWNvbWVzIDMgb25seSAxNS4uNDcgbXMgYWZ0ZXIgdHJhaW5pbmcKPiAgICBzdGFy
dHMsIG9yIG5vdCB3aXRoaW4gNzAwIG1zOyB0aGUgbGF0dGVyIGlzIHRoZSAibGluayB0cmFpbmlu
ZyBnZW4xCj4gICAgdGltZW91dCIgd2l0aCBMVFNTTSAweDEwOwo+IC0gdGhlIFJDIHNob3dzIG5v
dGhpbmc6IEFFUiBhbmQgdGhlIGRldmljZSBzdGF0dXMgYXJlIGNsZWFyLCBhbmQgYSBkdW1wCj4g
ICAgb2YgdGhlIGNsaWVudCwgY29yZSBtYW5hZ2VtZW50IGFuZCByb290IHBvcnQgY29uZmlnIHJl
Z2lzdGVycyBpcwo+ICAgIGlkZW50aWNhbCB0byBhIGdvb2QgYnJpbmctdXAuCj4gCj4gQSBnb29k
IGJyaW5nLXVwIGhhcyBubyBSZWNvdmVyeSBlbnRyeSBhZnRlciBMMC4gQSBjb25maWcgcmVhZCBv
biBhIGJhZAo+IGxpbmsgZ2V0cyBubyBjb21wbGV0aW9uOyB0aGF0IGlzIHRoZSBhYm9ydCBJIHJl
cG9ydGVkLiAyMDAgdXMgaXMgdGhlCj4gb3B0aW9uYWwgRmxvdyBDb250cm9sIFVwZGF0ZSB0aW1l
b3V0LCBzbyBJIHN1c3BlY3QgdGhhdCBvbmUgc2lkZSBkb2VzCj4gbm90IHNlZSB0aGUgRExMUHMg
b2YgdGhlIG90aGVyLgo+IAo+IFRoZSBzdGF0ZSBzdXJ2aXZlcyBSZWNvdmVyeSBidXQgbm90IERl
dGVjdDogYSBwb3J0IHJlLWluaXQgb3IgYSBob3QKPiByZXNldCBpcyBqdXN0IG9uZSBtb3JlIGJy
aW5nLXVwLCB3aXRoIHRoZSBzYW1lIG9kZHMuIFNvIHRoZSBob3QgcmVzZXQKPiBvZiBwYXRjaCAy
LzIgZG9lcyBub3QgY3VyZSBhbnl0aGluZywgYW5kIHRoZSB0aW1lIHRoZSBsaW5rIHRha2VzIHRv
Cj4gcmV0dXJuIGlzIG5vdCBhIHJlbGlhYmxlIHNpZ24gZWl0aGVyLgo+IAo+IFVuYmluZC9iaW5k
IGN5Y2xlcyB3aXRoIGEgYmFkIGJyaW5nLXVwIChhIGN5Y2xlIGlzIG9uZSB0cmFpbmluZyBwbHVz
Cj4gb25lIGhvdCByZXNldCk6Cj4gCj4gICAgSGVsaW9zNjQsIEpNQjU4NSwgeDIgICAgICAgICAg
ICAgICAgICAgICA2IG9mIDEwNAo+ICAgIHNhbWUsIFBIWSByZWZjbGsgMTAwIE1IeiBmcm9tIE5Q
TEwgICAgICAgNCBvZiAzMwo+ICAgIHNhbWUsIG51bS1sYW5lcyA9IDwxPiAgICAgICAgICAgICAg
ICAgICAgMCBvZiAxMDQKPiAgICBST0NLIFBpIDRBLCBXRCBTTjc3MCBOVk1lLCB4NCAgICAgICAg
ICAgIDAgb2YgMTAwCj4gICAgc2FtZSwgbnVtLWxhbmVzID0gPDI+ICAgICAgICAgICAgICAgICAg
ICAwIG9mIDEwMAo+IAo+IFNvIGl0IHRha2VzIGJvdGggbGFuZXMgYW5kIHRoZSBKTUI1ODUuCj4g
Cj4gSXMgYW55dGhpbmcgbGlrZSB0aGlzIGtub3duIGZvciB0aGUgUkszMzk5IHdpdGggYSB0d28t
bGFuZSBlbmRwb2ludCwKPiBmb3IgZXhhbXBsZSBsYW5lLXRvLWxhbmUgc2tldyBvZiB0aGUgdHJh
bnNtaXR0ZXIsIG9yIGEgUEhZIHNldHRpbmcgdGhhdAoKSSBkaWRuJ3Qga25vdyBhbiBpc3N1ZSBs
aWtlIHRoaXMuIEJ1dCB5ZXMsIHRoZXJlIGlzIGFuIG9wdGlvbiB0byBkaXNhYmxlCnRoZSBhdXRv
bWF0aWMgZGVza2V3IGFkanVzdGluZyBhbGdvcml0aG0gYnk6CnBoeV93cl9jZmcocmtfcGh5LCAw
eDYsIEJJVCgxKSk7IC8vIGRpcyBhdXRvIGRlc2tldwpwaHlfd3JfY2ZnKHJrX3BoeSwgMHg0LCBk
ZXNrZXcgdHJpbSB2YWx1ZSk7IC8vIGRlc2tldyB2YWx1ZSwgMHgwIDwtPiAweGYKcGh5X3dyX2Nm
Zyhya19waHksIDB4YiwgZGVza2V3IG1hZ25pdHVkZSB2YWxlKTsgLy9EZWZhdWx0IDAwIGlzIDJ4
LCAwMQppcyAxeCwgMTEgaXMgM3ggYW5kIDEwIHR1cm5zIGl0IG9mZgoKCj4gYWZmZWN0cyBpdD8g
QW5kIGlzIHRoZXJlIGEgYml0IGluIERFQlVHX09VVF8wLzEgdGhhdCB0ZWxscyB3aGljaCBzaWRl
Cj4gZGlyZWN0cyB0aGUgUmVjb3Zlcnk/Cj4gCgpUaGVzZSBkZWJ1ZyBzZWN0aW9uIGxpZXMgb24g
IEFwcGVuZGl4IHNlY3Rpb24gb2YgUENJZSBjaGFucHRlciwgUkszMzk5ClRSTS4gWW91IGNvdWxk
IHRyeSB0byBmaW5kIHNvbWUgY2x1ZSBieSBkdW1waW5nIERFQlVHX0RBVEFfT1VUIGluZm8uCk1v
c3Qga2luZHMgb2YgdGhlc2UgcHJvYmxlbXMgc2hvdWxkIGJlIG9idmlvdXMgdG8gdGhlIFBDSWUg
YW5hbHl6ZXIKYnV0IG1pZ2h0IG5vdCBiZSBlYXN5IHRvIGNoZWNrIGZyb20gdGhlIHJlZ2lzdGVy
IElNTy4KCj4gQm90aCBib2FyZHMgcmFuIHRoZSBzYW1lIGJ1aWxkOiB2Ny4zLjEgd2l0aCB0aGUg
QXJtYmlhbiBwYXRjaGVzIGFuZCB0aGUKPiB0cmFjaW5nLiBUaGUgSGVsaW9zNjQgRFQgaGFzIG5v
IGVwLWdwaW9zIHRoZXJlLCB0aGUgUk9DSyBQaSA0QSBEVCBoYXMuCj4gCj4gVGhhbmtzLAo+IEln
b3IKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
