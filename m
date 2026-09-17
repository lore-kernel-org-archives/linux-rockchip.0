Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 237B0C88E72
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Sep 2026 18:38:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G8xwCuEP6R2f2KlDE5ERhknmXNt6MHTCtst/VS2FIVI=; b=IxHnhz2l3KrE5Q
	lCJ3KFdyVXq0Gvzhec2rXTmQCAvVgvQQ5w2bWXl04EPrBmcRQcjpEAQJQJUgKvtKIdrwfN/PUK4wr
	JuOGxFVIkWqi9+sa42ECNNqcrmTdDMzg8M6bE42jeE8Q9w7/fAVXI9gn80CjdW9XWicCyKCVTZ2ly
	UGvDTeiWFYB3ufhgto2Qejwj0gcIewcQVBj3z3LMZH7x/vvrh9RaQxSxA9Ih8WS9lqaZRhG7ftK8I
	0kAc5aL47CpEqSAq3qSSUiAEYGanwywfQsf7i6wDuKAU/FbtMEOGTJz5eZoU5ODgqSRuKAzKxOI3V
	MmQvAkOpPPUcABGVhW/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7H0I-0000000CFfl-02Hw;
	Thu, 17 Sep 2026 18:38:38 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7H06-0000000CFLg-3ulP;
	Thu, 17 Sep 2026 18:38:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 60C6E60209;
	Thu, 17 Sep 2026 18:38:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8754B1F00893;
	Thu, 17 Sep 2026 18:38:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1789670306;
	bh=oKmKsOz0rmPsjSmLJwkcoCz4Udwn6GVMn7bxI6KVIZ8=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=FPWK5qc8ZUfZACfSRpN3e+20j29nrCMV1H2aePYIWBQfBiu/GnECo1fWXjEfE39II
	 dG+JcgvRShPb51sTZDQy3KYaiaMRsO/fQEfMVqr9kA6il98ubGEFopVeIaISBJ7n+7
	 cn3iDXBafqYnoBBizRwr7/zjE0jydr49PqbQDFypuqkeKzJ6r0LINKBnQp708lFr8D
	 u/l12cMd04ujVlhWN9vFLcNwVmGNCeL/frrLY/XrtdXx2SzcWHOU7rjANGCbOdFML4
	 ozXhWTMAXAV7jZK4Ywkyez+kmCZFVpJW5GV6ElzDIrqciwKzUyaeU5GAHjx2uJOUd3
	 nnVCiQwhSW4yA==
Subject: Re: [PATCH net-next v6 10/11] arm64: dts: rockchip:
 rk3568-photonicat: enable SGMII LAN port
From: netdev-bot+sashiko@kernel.org
To: coiaprant@gmail.com
Cc: andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, heiko@sntech.de, vkoul@kernel.org,
 maxime.chevallier@bootlin.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@foss.st.com, prabhakar.mahadev-lad.rj@bp.renesas.com,
 romain.gantois@bootlin.com, hkallweit1@gmail.com, neil.armstrong@linaro.org,
 linux@armlinux.org.uk, shawn.lin@rock-chips.com, david@ixit.cz,
 netdev@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-renesas-soc@vger.kernel.org
Date: Thu, 17 Sep 2026 18:38:24 +0000
Message-ID: <178967030410.22033.9337863064862932142@kernel.org>
In-Reply-To: <20260915123802.1561724-11-coiaprant@gmail.com>
References: <20260915123802.1561724-11-coiaprant@gmail.com>
X-sashiko-severity: Medium
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
MSBwb3RlbnRpYWwKaXNzdWUocykgdG8gY29uc2lkZXI6CgpDcml0aWNhbDogMCDCtyBIaWdoOiAw
IMK3IE1lZGl1bTogMSDCtyBMb3c6IDAKCi0gW01lZGl1bV0gRFQgYmluZGluZyBhbmQgU29DIGR0
c2kgZGlzYWdyZWU6CiAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9wY3Mv
cm9ja2NoaXAscmszNTY4LXhwY3MueWFtbOKApgoKLS0KCmFybTY0OiBkdHM6IHJvY2tjaGlwOiBy
azM1NjgtcGhvdG9uaWNhdDogZW5hYmxlIFNHTUlJIExBTiBwb3J0CgpUaGlzIGVuYWJsZXMgdGhl
IFNHTUlJIExBTiBwb3J0IG9uIHRoZSBBcmlhYm9hcmQgUGhvdG9uaWNhdCBieSB0dXJuaW5nIG9u
CmdtYWMwLCB0aGUgeHBjcyBub2RlIGFuZCBpdHMgcG9ydCAwIHN1Yi1ub2RlLCBhZGRpbmcgdGhl
IFlUODUyMVNDIFBIWSBvbgptZGlvMCwgYW5kIGFkZGluZyBQSFkgTEVEIG5vZGVzIGZvciBib3Ro
IHRoZSBuZXcgYW5kIGV4aXN0aW5nIFBIWXMuCgo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1waG90b25pY2F0LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTY4LXBob3RvbmljYXQuZHRzCj4gaW5kZXggNThjMTA1MmJhOGVmMy4u
ZmRhYTRhMmE0MzI4YiAxMDA2NDQKPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU2OC1waG90b25pY2F0LmR0cwo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTY4LXBob3RvbmljYXQuZHRzCgpbIC4uLiBdCgo+IEBAIC01ODYsMyArNjQ2LDEzIEBA
ICZ4aW4zMmsgewo+ICAJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiAgCXBpbmN0cmwtMCA9
IDwmY2xrMzJrX291dDE+Owo+ICB9Owo+ICsKPiArJnhwY3Mgewo+ICsJcGh5cyA9IDwmY29tYnBo
eTIgUEhZX1RZUEVfU0dNSUk+Owo+ICsJcGh5LW5hbWVzID0gInNlcmRlcyI7Cj4gKwlzdGF0dXMg
PSAib2theSI7Cj4gK307CgpbU2V2ZXJpdHk6IE1lZGl1bV0KClNob3VsZCBwaHlzL3BoeS1uYW1l
cyBsaXZlIGluIHRoZSBib2FyZCBmaWxlIHJhdGhlciB0aGFuIGluIHJrMzU2OC5kdHNpPwoKRG9j
dW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL25ldC9wY3Mvcm9ja2NoaXAscmszNTY4LXhw
Y3MueWFtbCBsaXN0cwpib3RoIG9mIHRoZW0gYXMgbWFuZGF0b3J5OgoKICAgIHJlcXVpcmVkOgog
ICAgICAtIGNvbXBhdGlibGUKICAgICAgLSByZWcKICAgICAgLSAiI2FkZHJlc3MtY2VsbHMiCiAg
ICAgIC0gIiNzaXplLWNlbGxzIgogICAgICAtIGNsb2NrcwogICAgICAtIGNsb2NrLW5hbWVzCiAg
ICAgIC0gcGh5cwogICAgICAtIHBoeS1uYW1lcwogICAgICAtIHBvd2VyLWRvbWFpbnMKCiAgICBh
ZGRpdGlvbmFsUHJvcGVydGllczogZmFsc2UKCkJ1dCB0aGUgU29DIG5vZGUgaW4gYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaSBzdXBwbGllcwpuZWl0aGVyOgoKICAgIHhw
Y3M6IGV0aGVybmV0LXBjc0BmZGEwMDAwMCB7CiAgICAgICAgICAgIGNvbXBhdGlibGUgPSAicm9j
a2NoaXAscmszNTY4LXhwY3MiOwogICAgICAgICAgICAjYWRkcmVzcy1jZWxscyA9IDwxPjsKICAg
ICAgICAgICAgI3NpemUtY2VsbHMgPSA8MD47CiAgICAgICAgICAgIHJlZyA9IDwweDAgMHhmZGEw
MDAwMCAweDAgMHgyMDAwMDA+OwogICAgICAgICAgICBjbG9ja3MgPSA8JmNydSBQQ0xLX1hQQ1M+
LCA8JmNydSBDTEtfWFBDU19FRUU+OwogICAgICAgICAgICBjbG9jay1uYW1lcyA9ICJjc3IiLCAi
ZWVlIjsKICAgICAgICAgICAgcG93ZXItZG9tYWlucyA9IDwmcG93ZXIgUkszNTY4X1BEX1BJUEU+
OwogICAgICAgICAgICBzdGF0dXMgPSAiZGlzYWJsZWQiOwogICAgICAgICAgICAuLi4KICAgIH07
CgpTaW5jZSBkdHNjaGVtYSBzZWxlY3RzIG9uIGNvbXBhdGlibGUgcmVnYXJkbGVzcyBvZiBzdGF0
dXMgPSAiZGlzYWJsZWQiLApkb2Vzbid0IGV2ZXJ5IG90aGVyIHJrMzU2OCBib2FyZCBEVEIgbm93
IGZhaWwgbWFrZSBDSEVDS19EVEJTPTEgd2l0aAoiJ3BoeXMnIGlzIGEgcmVxdWlyZWQgcHJvcGVy
dHkiIGFuZCAiJ3BoeS1uYW1lcycgaXMgYSByZXF1aXJlZCBwcm9wZXJ0eSIsCndpdGggcmszNTY4
LXBob3RvbmljYXQgYmVpbmcgdGhlIG9ubHkgYm9hcmQgdGhhdCBoYXBwZW5zIHRvIHNhdGlzZnkg
dGhlCmJpbmRpbmc/CgpUaGUgU2VyRGVzIGhlcmUgYWxzbyBsb29rcyBTb0MtaW50ZXJuYWwgcmF0
aGVyIHRoYW4gYm9hcmQtc3BlY2lmaWM6IGl0IGlzCmNvbWJwaHkyIGluIFNHTUlJIG1vZGUsIHRo
ZSBnbHVlIGRyaXZlciBhc2tzIGZvciBkZXZtX3BoeV9nZXQoZGV2LAoic2VyZGVzIiksIGFuZCB0
aGUgYmluZGluZydzIG93biBleGFtcGxlIGFscmVhZHkgdXNlcwpwaHlzID0gPCZjb21icGh5MiBQ
SFlfVFlQRV9TR01JST4uCgpXb3VsZCBpdCBiZSBiZXR0ZXIgdG8gcHV0IHBoeXMvcGh5LW5hbWVz
IGluIHJrMzU2OC5kdHNpLCBzbyBib2FyZCBmaWxlcwpvbmx5IGZsaXAgc3RhdHVzIGFuZCBzZXQg
cm9ja2NoaXAsc2dtaWktbWFjLXNlbCwgb3IgYWx0ZXJuYXRpdmVseSB0byBkcm9wCnRoZSB0d28g
cHJvcGVydGllcyBmcm9tIHRoZSBiaW5kaW5nJ3MgcmVxdWlyZWQ6IGxpc3Q/CgpJIGNoZWNrZWQg
dGhlIGZvbGxvd2luZyBjb21taXRzIGluIHRoZSBzZXJpZXMgYW5kIGRpZCBub3QgZmluZCBhIHBh
dGNoIHRoYXQKYWRkcyB0aGVzZSBwcm9wZXJ0aWVzIHRvIHJrMzU2OC5kdHNpIG9yIHJlbGF4ZXMg
dGhlIGJpbmRpbmcsIGFuZCB0aGUKYmFzZWxpbmUgaGFzIG5vIHhwY3Mgbm9kZSBhdCBhbGwsIHNv
IHRoZSBkaXNhZ3JlZW1lbnQgYXBwZWFycyB0byBjb21lIGZyb20KdGhpcyBzZXJpZXMuCgotLSAK
U2FzaGlrbyBBSSByZXZpZXcgwrcgaHR0cHM6Ly9uZXRkZXYtYWkuYm90cy5saW51eC5kZXYvc2Fz
aGlrby8jL3BhdGNoc2V0LzIwMjYwOTE1MTIzODAyLjE1NjE3MjQtMS1jb2lhcHJhbnQlNDBnbWFp
bC5jb20KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
