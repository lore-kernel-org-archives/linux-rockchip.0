Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF32606A88C
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 05:51:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=BVfgNIqT;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=lkNi0WJe
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Cc:To:From:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=f8WdvARV0Dr3JQV3KIfOdIymonRTwUTEillIZivNZ/0=; b=BVfgNIqTQDiB6VwU5h6RI9S9J1
	yip6JeXERwYKMPVZf5l8YfaoUEZOnUsqkhcc1obVEe0xzughSRMkvl3HJYGZZ7zGY1oaf9FT1oi3R
	absTfrEz7ghaiOAHUTPn06zV/O3PTBNFbGuxy0u0FGd1jkcOZ5u74KF3axRjo4zWZu4M0Yk0DmcPA
	n1bGu75KfpUmUKqPEhQ6TaXbfZslWxaSlknSWIYIVeVrJRJ4kCp8cTPslDKQF6vPRvw0D4RXW0v/x
	j5rewYH/gm9momc8f7leo4cHhZPAkALCfsMHNd8vxQqRIoEJb+xTWulcrDVsexoYANJJrkZIxt7zf
	vY2Hve8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRkC9-0000000Bisr-1GU0;
	Fri, 13 Nov 2026 05:51:29 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRkC7-0000000BisE-3NWg;
	Fri, 13 Nov 2026 05:51:27 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 8DB6D61404;
	Fri, 13 Nov 2026 05:51:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 117941F000C8;
	Fri, 13 Nov 2026 05:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794549086;
	bh=GjFNdrxT3EZFR3J6YnNd1f/Z2k934t/npf1oL+Xxd74=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=lkNi0WJeOwuHsOONt4kswun2pDApIBs0KFMSAwcGgXveBRLLWwsWzxZiBA+wmzVRm
	 aDXJz5A/WG+ht+rX6gAiKuUcIys5pvIHz/8YRLkgVnR+d3vXeNdO9ly1lcAzmvoUgL
	 750MWv3GfoMcL1A8aFvgbMO35MyG+jKdssBcJW0K2XqbPyWTYPVtro3PedEkB7txfa
	 S+csPzK/tfaFktsR9fkycsF0Zo3imP1STx+9L4YL1z22Jib8n8p1qrSdWZ3MRr2KBU
	 qjsVvgzJnMahByMt1sTaQD+OGz89baO2mADlxNS28Fg8/Mx5bQzrvn+ATWEROOYk/V
	 QT4rDzwwq0AbQ==
Subject: Re: [PATCH net v5 1/4] net: phy: move irq_suspended and irq_rerun out
 of the bitfield
From: netdev-bot+sashiko@kernel.org
To: iav@iav.lv
Cc: andrew@lunn.ch, hkallweit1@gmail.com, linux@armlinux.org.uk,
 davem@davemloft.net, edumazet@kernel.org, kuba@kernel.org, pabeni@redhat.com,
 maxime.chevallier@bootlin.com, lukas@wunner.de, rafael.j.wysocki@intel.com,
 wei.fang@nxp.com, niklas.soderlund@ragnatech.se, paul@pbarker.dev,
 florian.fainelli@broadcom.com, opendmb@gmail.com, Thangaraj.S@microchip.com,
 shenwei.wang@nxp.com, Haoning.CHENG@cn.bosch.com, netdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Date: Fri, 13 Nov 2026 05:51:24 +0000
Message-ID: <179454908461.2199510.508928890759611464@kernel.org>
In-Reply-To: <20261111-b4-phylib-mac-pm-irq-v3-v5-1-bbfdb5afb7d3@iav.lv>
References: <20261111-b4-phylib-mac-pm-irq-v3-v5-1-bbfdb5afb7d3@iav.lv>
X-sashiko-severity: Low
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

VGhhbmsgeW91IGZvciB5b3VyIGNvbnRyaWJ1dGlvbiEgU2FzaGlrbyBBSSByZXZpZXcgZm91bmQg
bW9yZSBzZXZlcmUKaXNzdWUocykgaW4gb3RoZXIgcGF0Y2hlcyBvZiB0aGlzIHNlcmllcy4gVGhp
cyBtYWlsIGlzIG9ubHkgYW4gRllJLCBpbiBjYXNlCnlvdSB3YW50IHRvIGFkZHJlc3MgdGhlIG5p
dCBwaWNrcyBiZWxvdyB3aGVuIHlvdSByZXNwaW4uCgpMb3cgcHJpb3JpdHkgLyBuaXQgcGlja3Mg
Zm9yIHlvdXIgY29uc2lkZXJhdGlvbjoKCi0gW0xvd10gVGhlIHBhdGNoIGFkZHMgdGhlIGNvbW1l
bnQgIi8qIFdyaXR0ZW4gd2l0aG91dCBwaHlkZXYtPmxvY2ssIHNvCiAgbm90IGJpdGZpZWxkcyAq
LyIgYWJvdmUgaXJxX3N1c3BlbmRlZCBhbmQgaXJxX3JlcnVuIGluIHN0cnVjdOKApgoKLS0KCm5l
dDogcGh5OiBtb3ZlIGlycV9zdXNwZW5kZWQgYW5kIGlycV9yZXJ1biBvdXQgb2YgdGhlIGJpdGZp
ZWxkCgpUaGlzIGNvbW1pdCB0dXJucyBpcnFfc3VzcGVuZGVkIGFuZCBpcnFfcmVydW4gaW4gc3Ry
dWN0IHBoeV9kZXZpY2UgZnJvbQoxLWJpdCBiaXRmaWVsZHMgaW50byBib29scy4gcGh5X2ludGVy
cnVwdCgpIHNldHMgaXJxX3JlcnVuIHdpdGhvdXQKcGh5ZGV2LT5sb2NrLCBhbmQgdGhhdCB3cml0
ZSBjb3VsZCBsb3NlIGFuIHVwZGF0ZSB0byBsaW5rIGFuZAphdXRvbmVnX2NvbXBsZXRlLCB3aGlj
aCBzaGFyZSB0aGUgc2FtZSB3b3JkLiBBZnRlciB0aGlzIGNoYW5nZSB0aGUgdHdvCmZsYWdzIGFy
ZSBzZXBhcmF0ZSBtZW1vcnkgbG9jYXRpb25zLgoKPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9saW51
eC9waHkuaCBiL2luY2x1ZGUvbGludXgvcGh5LmgKPiBpbmRleCAyMWFmYzIwODJiMTc0Li5iYmUy
OGZmOTdlNTFjIDEwMDY0NAo+IC0tLSBhL2luY2x1ZGUvbGludXgvcGh5LmgKPiArKysgYi9pbmNs
dWRlL2xpbnV4L3BoeS5oCj4gQEAgLTcyNiw4ICs3MjYsOSBAQCBzdHJ1Y3QgcGh5X2RldmljZSB7
Cj4gIAo+ICAJLyogSW50ZXJydXB0cyBhcmUgZW5hYmxlZCAqLwo+ICAJdW5zaWduZWQgaW50ZXJy
dXB0czoxOwo+IC0JdW5zaWduZWQgaXJxX3N1c3BlbmRlZDoxOwo+IC0JdW5zaWduZWQgaXJxX3Jl
cnVuOjE7Cj4gKwkvKiBXcml0dGVuIHdpdGhvdXQgcGh5ZGV2LT5sb2NrLCBzbyBub3QgYml0Zmll
bGRzICovCgpbU2V2ZXJpdHk6IExvd10KVGhpcyBpc24ndCBhIGJ1ZywgYnV0IHRoZSBuZXcgY29t
bWVudCBzdGF0ZXMgYSBydWxlIHRoYXQgdGhlCm5laWdoYm91cmluZyBmaWVsZHMgZG9uJ3QgZm9s
bG93LiBTZXZlcmFsIG9mIHRoZW0gYXJlIHdyaXR0ZW4gd2l0aG91dApwaHlkZXYtPmxvY2suIFRo
ZXkgYXJlIHN0aWxsIDEtYml0IGJpdGZpZWxkcyBpbiB0aGUgc2FtZSBydW4gYXMgbGluawphbmQg
YXV0b25lZ19jb21wbGV0ZSwgYW5kIHRoZSBzdGF0ZSBtYWNoaW5lIHdyaXRlcyB0aG9zZSB0d28g
dW5kZXIgdGhlCmxvY2suCgppbnRlcnJ1cHRzLCB0aGUgZmllbGQganVzdCBhYm92ZSwgaXMgd3Jp
dHRlbiBpbiBwaHlfY29uZmlnX2ludGVycnVwdCgpOgoKZHJpdmVycy9uZXQvcGh5L3BoeS5jOnBo
eV9jb25maWdfaW50ZXJydXB0KCkgewogICAgLi4uCglwaHlkZXYtPmludGVycnVwdHMgPSBpbnRl
cnJ1cHRzID8gMSA6IDA7CiAgICAuLi4KfQoKVGhpcyBpcyByZWFjaGVkIGZyb20gcGh5X3JlcXVl
c3RfaW50ZXJydXB0KCkvcGh5X2ZyZWVfaW50ZXJydXB0KCkuIFNvbWUKUEhZIGRyaXZlcnMgYWxz
byBzZXQgaXQgaW4gdGhlaXIgc3VzcGVuZC9yZXN1bWUgcGF0aHMgKGRwODM4NjcsIG1pY3JlbCwK
bWFydmVsbC04OHEyeHh4KS4KCnBoeV9zdXNwZW5kKCkgd3JpdGVzIHdvbF9lbmFibGVkIGFuZCBz
dXNwZW5kZWQ6Cgpkcml2ZXJzL25ldC9waHkvcGh5X2RldmljZS5jOnBoeV9zdXNwZW5kKCkgewog
ICAgLi4uCglwaHlkZXYtPndvbF9lbmFibGVkID0gcGh5X21heV93YWtldXAocGh5ZGV2KSB8fAog
ICAgLi4uCgkJcGh5ZGV2LT5zdXNwZW5kZWQgPSB0cnVlOwogICAgLi4uCn0KCm1kaW9fYnVzX3Bo
eV9zdXNwZW5kKCkgYW5kIG1kaW9fYnVzX3BoeV9yZXN1bWUoKSB3cml0ZQpzdXNwZW5kZWRfYnlf
bWRpb19idXM6CgoJcGh5ZGV2LT5zdXNwZW5kZWRfYnlfbWRpb19idXMgPSAxOwoKVGhlIGNvbW1p
dCBtZXNzYWdlIGl0c2VsZiBuYW1lcyB0aGVzZSB1bmxvY2tlZCB3cml0ZXJzIG9mIHRoZSBzYW1l
IHdvcmQuCgpMYXRlciBpbiB0aGUgc2VyaWVzLCAibmV0OiBwaHk6IHBvc3Rwb25lIFBIWSBpbnRl
cnJ1cHRzIGR1cmluZyBzbGVlcAp3aXRoIE1BQy1tYW5hZ2VkIFBNIiBhZGRzIGFub3RoZXIgYml0
ZmllbGQgdG8gdGhpcyB3b3JkLCB3b2xfcGh5OjEuCnBoeV9zdXNwZW5kKCkgd3JpdGVzIGl0IHdp
dGhvdXQgcGh5ZGV2LT5sb2NrLCBhbmQgcGh5X2lycV93YWtlX3NvdXJjZSgpCnJlYWRzIGl0LgoK
Q291bGQgdGhlIGNvbW1lbnQgc2F5IHRoYXQgdGhlc2UgdHdvIGZpZWxkcyBhcmUgc3BsaXQgb3V0
IGJlY2F1c2UKcGh5X2ludGVycnVwdCgpIHdyaXRlcyB0aGVtIGZyb20gdGhlIElSUSB0aHJlYWQ/
IEFzIHdyaXR0ZW4sIGEgcmVhZGVyCmNvdWxkIGFzc3VtZSB0aGUgcmVtYWluaW5nIGJpdGZpZWxk
cyBhcmUgYWxsIGxvY2stcHJvdGVjdGVkLgoKSWYgYW55IG9mIHRob3NlIHVubG9ja2VkIHdyaXRl
cnMgY2FuIHJ1biBhdCB0aGUgc2FtZSB0aW1lIGFzIGVhY2gKb3RoZXIsIG9yIGFzIHRoZSBsb2Nr
ZWQgbGluay9hdXRvbmVnX2NvbXBsZXRlIHdyaXRlcnMsIHRoZSBsb3N0LXVwZGF0ZQpwcm9ibGVt
IHRoaXMgY29tbWl0IGRlc2NyaWJlcyB3b3VsZCBzdGlsbCBhcHBseSB0byB0aGVtLiBJIGhhdmVu
J3QKc2hvd24gdGhhdCBjb25jdXJyZW5jeSBoZXJlLgoKPiArCWJvb2wgaXJxX3N1c3BlbmRlZDsK
PiArCWJvb2wgaXJxX3JlcnVuOwo+ICAKPiAgCXVuc2lnbmVkIGRlZmF1bHRfdGltZXN0YW1wOjE7
Cj4KCi0tIApTYXNoaWtvIEFJIHJldmlldyDCtyBodHRwczovL25ldGRldi1haS5ib3RzLmxpbnV4
LmRldi9zYXNoaWtvLyMvcGF0Y2hzZXQvMjAyNjExMTEtYjQtcGh5bGliLW1hYy1wbS1pcnEtdjMt
djUtMC1iYmZkYjVhZmI3ZDMlNDBpYXYubHYKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2Nr
Y2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
